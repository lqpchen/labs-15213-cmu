#include <stdio.h>

// for the getopt function
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>

#include <stdint.h>

#include "cachelab.h"

typedef struct results {
	int hit, miss, evic;
} results;

// cache line with a set is organized as a doubly linked queue
// each node contains a tag and two pointers to its neighbours
typedef struct cache_line {
	uint64_t tag;
  struct cache_line *prev;
  struct cache_line *next;
} cache_line;

// a set contains a pointer to the head of the queue of caches
// and a count of number of lines filled
typedef struct set {
	cache_line *recent_lines; // points to the head of the cache line queue
	int cnt; // number of lines filled
} set;

//
int memopt(int s, int E, int b, char *ops_fn, int vb);

int main(int argc, char *argv[])
{
	int opt;
	int s, E, b, vb = 0;
	char * input_fn;

	while (-1 != (opt = getopt(argc, argv, "vs:E:b:t:"))) {
		switch (opt) {
			case 'v':
				vb = 1;
				break;
			case 's':
				s = atoi(optarg);
				break;
			case 'E':
				E = atoi(optarg);
				break;
			case 'b':
				b = atoi(optarg);
				break;
			case 't':
				input_fn = optarg;
				break;
			default:
				fprintf(stderr, "wrong argument!\n");
				break;
		}
	}

	//printf("s: %d, E: %d, b: %d, input_file: %s\n",
	//			s, E, b, input_fn);
	
	memopt(s, E, b, input_fn, vb);

  //	printSummary(0, 0, 0);  
 	return 0;
}

int cache_init(set **sets, int S) {
	/* creates a logical cache system */
	*sets = (set *) calloc(S, sizeof(set));
	if (*sets == NULL) {
		return -1;
	}
	for (int i = 0; i < S; ++i) { // initializes cold cache lines
		(*sets)[i].cnt = 0; 
		(*sets)[i].recent_lines = NULL;
	}
	return 0;
}

int cache_free(set *sets, int S) {
	for (int i = 0; i < S; ++i) {
		cache_line *cur_line = sets[i].recent_lines, *next_line;
		while (cur_line) {
			next_line = cur_line->next;
			free(cur_line);
			cur_line = next_line;
		}
	}
	free(sets);
	return 0;
}

int cache_hit(set *sets, int sid, 
		cache_line *line) {
	// set the hit cache line to be the most recent one
	if (line == sets[sid].recent_lines) return 0;
	cache_line *most_recent = line;
	line->prev->next = line->next;
	if (line->next) line->next->prev = line->prev;
	most_recent->prev = NULL;
	most_recent->next = sets[sid].recent_lines;
	sets[sid].recent_lines->prev = most_recent;
	sets[sid].recent_lines = most_recent;

	return 0;
}

int get_block(set *sets, int sid, int tag) {
	cache_line *new_line = (cache_line *) malloc(sizeof(cache_line));
	new_line->next = sets[sid].recent_lines;
	new_line->prev = NULL;
	new_line->tag = tag;
	if (sets[sid].recent_lines) {
		sets[sid].recent_lines->prev = new_line;
	}
	sets[sid].recent_lines = new_line;
	sets[sid].cnt++;
	return 0;
}

int cache_fetch(char opr, uint64_t mem_addr, int acc_size,
	 	set *sets, int s, int E, int b, results *res, int vb) {
	if (opr == 'I') return 0; // ignore instructions
	int tag = mem_addr >> (s + b);
	int sid = (mem_addr >> b) & (~(~0 << s));
 	
	// look for the cache line with the same tag
	cache_line * cur_line = sets[sid].recent_lines;
	while (cur_line) {
		if (cur_line->tag == tag) {
			cache_hit(sets, sid, cur_line);
			res->hit += 1 + (opr == 'M');
			if (vb)
				printf("%c %lx, %d hit\n", opr, mem_addr, acc_size);

			return 0;
		}
		if (!cur_line->next) break; // so that cur_line points to the last line
		cur_line = cur_line->next;
	}
	
	// begins to handle the cache miss
	res->miss++;
	if (sets[sid].cnt < E) { // empty cache line available
		get_block(sets, sid, tag);
		if (vb)
			printf("%c %lx, %d miss%s\n", 
					opr, mem_addr, acc_size, opr == 'M' ? " hit" : "");
	} else { // handle eviction
		res->evic++;
		if (cur_line->prev) cur_line->prev->next = NULL;
		else sets[sid].recent_lines = NULL;
		free(cur_line); cur_line = NULL;
		get_block(sets, sid, tag);
		if (vb) 
			printf("%c %lx, %d miss eviction%s\n", 
					opr, mem_addr, acc_size, opr == 'M' ? " hit" : "");
	}
	res->hit += (opr == 'M');

	return 0;
}

int memopt(int s, int E, int b, char *ops_fn, int vb) {
	FILE * fp;
	
	int r; // return value from fscanf
	char opr;
	uint64_t mem_addr;
	int acc_size;
	
	results *res = (results *) malloc(sizeof(results));
	res->hit = res->miss = res->evic = 0;

	int S = 1 << s;
	if((fp = fopen(ops_fn, "r")) == NULL) {
		fprintf(stderr, "file doesn't exisit!\n");
		exit(1);
	}

	set *sets; // points to an array of sets
	cache_init(&sets, S);

	r = fscanf(fp, "%1s %lx,%d", &opr, &mem_addr, &acc_size);
	while (r != EOF) {
		// printf("%c %lx, %d\n", opr, mem_addr, acc_size);
		
		/* simulates the interaction with cache and memory */
		cache_fetch(opr, mem_addr, acc_size, sets, s, E, b, res, vb);

		r = fscanf(fp, "%1s %lx,%d", &opr, &mem_addr, &acc_size);		
	}
	// printf("done read!\n");

	printSummary(res->hit, res->miss, res->evic);
	
	/* distroy the logical cache system */
	free(sets);
	free(res);

	return 0;
}

