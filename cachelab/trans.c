/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
	//
	int b, c;
	if (M == 32 && N == 32) {
		b = 8; c = 1; // case 1 
	} else if (M == 64 && N == 64) {
		b = 8; c = 2;// case 2
	}	else {
	 	b = 8; c = 3; // case 3
	}
	
	if (c == 1 || c == 3) {
		for (int bi = 0; bi < N; bi += b) {
			for (int bj = 0; bj < M; bj += b) {
				for (int i = bi; (i < bi + b) && (i < N); ++i) {
					for (int j = bj; (j < bj + b) && (j < M); ++j) {
						if (i == j) continue;
						B[j][i] = A[i][j];
					}
					if (bi == bj) {
						B[i][i] = A[i][i];
					}
				}
			}
		}
	}

	if (c == 2) {
		//int t1, t2, t3, t4, t5, t6, t7, t8;
		for (int bi = 0; bi < N; bi += b) {
			for (int bj = 0; bj < M; bj += b) {
				// clockwise from the perspective of A
				// block 1
				//if (bi != bj)
				for (int i = bi; (i < bi + b/2) && (i < N); ++i) {
					for (int j = bj; (j < bj + b/2) && (j < M); ++j) {
						if (i == j) continue;
						B[j][i] = A[i][j];
					}
					if (bi == bj) {
						B[i][i] = A[i][i];
					}
				}
				// block 2
				for (int i = bi; (i < bi + b/2) && (i < N); ++i) {
					for (int j = bj + b/2; (j < bj + b) && (j < M); ++j) {
						if ((i == j - b/2) && (bi == bj)) continue;
						B[j][i] = A[i][j];
					}
					if (bi == bj) {
						B[i + b/2][i] = A[i][i + b/2];
					}
				}
				// block 3
				//if (bi != bj)
				for (int i = bi + b/2; (i < bi + b) && (i < N); ++i) {
					for (int j = bj + b/2; (j < bj + b) && (j < M); ++j) {
						if (i == j) continue;
						B[j][i] = A[i][j];
					}
					if (bi == bj) {
						B[i][i] = A[i][i];
					}
				}
				// block 4
				for (int i = bi + b/2; (i < bi + b) && (i < N); ++i) {
					for (int j = bj; (j < bj + b/2) && (j < M); ++j) {
						if ((i - b/2 == j) & (bi == bj)) continue;
						B[j][i] = A[i][j];
					}
					if (bi == bj) {
						B[i - b/2][i] = A[i][i - b/2];
					}
				}
				/*
				if (bi == bj) { // handle diagonal case for block 1 & 3
					t1 = A[bi][bj];
					t2 = A[bi][bj + 1];
					t3 = A[bi][bj + 2];
					t4 = A[bi][bj + 3];
					t5 = A[bi + 1][bj];
					t6 = A[bi + 1][bj + 1];
					t7 = A[bi + 1][bj + 2];
					t8 = A[bi + 1][bj + 3];
					B[bj][bi] = t1;
					B[bj + 1][bi] = t2;
					B[bj + 2][bi] = t3;
					B[bj + 3][bi] = t4;
					B[bj][bi + 1] = t5;
					B[bj + 1][bi + 1] = t6;
					B[bj + 2][bi + 1] = t7;
					B[bj + 3][bi + 1] = t8;

					t1 = A[bi + 2][bj];
					t2 = A[bi + 2][bj + 1];
					t3 = A[bi + 2][bj + 2];
					t4 = A[bi + 2][bj + 3];
					t5 = A[bi + 3][bj];
					t6 = A[bi + 3][bj + 1];
					t7 = A[bi + 3][bj + 2];
					t8 = A[bi + 3][bj + 3];
					B[bj][bi + 2] = t1;
					B[bj + 1][bi + 2] = t2;
					B[bj + 2][bi + 2] = t3;
					B[bj + 3][bi + 2] = t4;
					B[bj][bi + 3] = t5;
					B[bj + 1][bi + 3] = t6;
					B[bj + 2][bi + 3] = t7;
					B[bj + 3][bi + 3] = t8;

					t1 = A[bi + 4][bj + 4];
					t2 = A[bi + 4][bj + 5];
					t3 = A[bi + 4][bj + 6];
					t4 = A[bi + 4][bj + 7];
					t5 = A[bi + 5][bj + 4];
					t6 = A[bi + 5][bj + 5];
					t7 = A[bi + 5][bj + 6];
					t8 = A[bi + 5][bj + 7];
					B[bj + 4][bi + 4] = t1;
					B[bj + 5][bi + 4] = t2;
					B[bj + 6][bi + 4] = t3;
					B[bj + 7][bi + 4] = t4;
					B[bj + 4][bi + 5] = t5;
					B[bj + 5][bi + 5] = t6;
					B[bj + 6][bi + 5] = t7;
					B[bj + 7][bi + 5] = t8;

					t1 = A[bi + 6][bj + 4];
					t2 = A[bi + 6][bj + 5];
					t3 = A[bi + 6][bj + 6];
					t4 = A[bi + 6][bj + 7];
					t5 = A[bi + 7][bj + 4];
					t6 = A[bi + 7][bj + 5];
					t7 = A[bi + 7][bj + 6];
					t8 = A[bi + 7][bj + 7];
					B[bj + 4][bi + 6] = t1;
					B[bj + 5][bi + 6] = t2;
					B[bj + 6][bi + 6] = t3;
					B[bj + 7][bi + 6] = t4;
					B[bj + 4][bi + 7] = t5;
					B[bj + 5][bi + 7] = t6;
					B[bj + 6][bi + 7] = t7;
					B[bj + 7][bi + 7] = t8;

				}*/
			}
		}
	}

}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    //registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

