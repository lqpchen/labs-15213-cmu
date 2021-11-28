
bomb:     file format elf64-x86-64
bomb
architecture: i386:x86-64, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x0000000000400c90

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000400040 paddr 0x0000000000400040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r-x
  INTERP off    0x0000000000000238 vaddr 0x0000000000400238 paddr 0x0000000000400238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000400000 paddr 0x0000000000400000 align 2**21
         filesz 0x0000000000002cf4 memsz 0x0000000000002cf4 flags r-x
    LOAD off    0x0000000000002df8 vaddr 0x0000000000602df8 paddr 0x0000000000602df8 align 2**21
         filesz 0x0000000000000948 memsz 0x0000000000001018 flags rw-
 DYNAMIC off    0x0000000000002e10 vaddr 0x0000000000602e10 paddr 0x0000000000602e10 align 2**3
         filesz 0x00000000000001d0 memsz 0x00000000000001d0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000400254 paddr 0x0000000000400254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x0000000000002798 vaddr 0x0000000000402798 paddr 0x0000000000402798 align 2**2
         filesz 0x0000000000000104 memsz 0x0000000000000104 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**3
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000002df8 vaddr 0x0000000000602df8 paddr 0x0000000000602df8 align 2**0
         filesz 0x0000000000000208 memsz 0x0000000000000208 flags r--

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x0000000000400ac0
  FINI                 0x00000000004022a4
  INIT_ARRAY           0x0000000000602df8
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000602e00
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000400298
  STRTAB               0x00000000004005c8
  SYMTAB               0x00000000004002c8
  STRSZ                0x000000000000016d
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000602fe8
  PLTRELSZ             0x0000000000000288
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000400838
  RELA                 0x00000000004007d8
  RELASZ               0x0000000000000060
  RELAENT              0x0000000000000018
  VERNEED              0x0000000000400778
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x0000000000400736

Version References:
  required from libc.so.6:
    0x0d696913 0x00 06 GLIBC_2.3
    0x0d696917 0x00 05 GLIBC_2.7
    0x09691974 0x00 04 GLIBC_2.3.4
    0x0d696914 0x00 03 GLIBC_2.4
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000400238  0000000000400238  00000238  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  0000000000400254  0000000000400254  00000254  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000400274  0000000000400274  00000274  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     00000030  0000000000400298  0000000000400298  00000298  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       00000300  00000000004002c8  00000000004002c8  000002c8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       0000016d  00000000004005c8  00000000004005c8  000005c8  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  00000040  0000000000400736  0000000000400736  00000736  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000060  0000000000400778  0000000000400778  00000778  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     00000060  00000000004007d8  00000000004007d8  000007d8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.plt     00000288  0000000000400838  0000000000400838  00000838  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         0000000e  0000000000400ac0  0000000000400ac0  00000ac0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          000001c0  0000000000400ad0  0000000000400ad0  00000ad0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .text         00001614  0000000000400c90  0000000000400c90  00000c90  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .fini         00000009  00000000004022a4  00000000004022a4  000022a4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .rodata       000004e5  00000000004022b0  00000000004022b0  000022b0  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 15 .eh_frame_hdr 00000104  0000000000402798  0000000000402798  00002798  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame     00000454  00000000004028a0  00000000004028a0  000028a0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .init_array   00000008  0000000000602df8  0000000000602df8  00002df8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 18 .fini_array   00000008  0000000000602e00  0000000000602e00  00002e00  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .jcr          00000008  0000000000602e08  0000000000602e08  00002e08  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000001d0  0000000000602e10  0000000000602e10  00002e10  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000008  0000000000602fe0  0000000000602fe0  00002fe0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .got.plt      000000f0  0000000000602fe8  0000000000602fe8  00002fe8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .data         00000660  00000000006030e0  00000000006030e0  000030e0  2**5
                  CONTENTS, ALLOC, LOAD, DATA
 24 .bss          000006d0  0000000000603740  0000000000603740  00003740  2**5
                  ALLOC
 25 .comment      00000053  0000000000000000  0000000000000000  00003740  2**0
                  CONTENTS, READONLY
 26 .debug_aranges 00000030  0000000000000000  0000000000000000  00003793  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 27 .debug_info   000007a3  0000000000000000  0000000000000000  000037c3  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 28 .debug_abbrev 0000021f  0000000000000000  0000000000000000  00003f66  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 29 .debug_line   00000161  0000000000000000  0000000000000000  00004185  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 30 .debug_str    000002f3  0000000000000000  0000000000000000  000042e6  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 31 .debug_loc    00000188  0000000000000000  0000000000000000  000045d9  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
SYMBOL TABLE:
0000000000400238 l    d  .interp	0000000000000000              .interp
0000000000400254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000400274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000400298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000004002c8 l    d  .dynsym	0000000000000000              .dynsym
00000000004005c8 l    d  .dynstr	0000000000000000              .dynstr
0000000000400736 l    d  .gnu.version	0000000000000000              .gnu.version
0000000000400778 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
00000000004007d8 l    d  .rela.dyn	0000000000000000              .rela.dyn
0000000000400838 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000400ac0 l    d  .init	0000000000000000              .init
0000000000400ad0 l    d  .plt	0000000000000000              .plt
0000000000400c90 l    d  .text	0000000000000000              .text
00000000004022a4 l    d  .fini	0000000000000000              .fini
00000000004022b0 l    d  .rodata	0000000000000000              .rodata
0000000000402798 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
00000000004028a0 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000602df8 l    d  .init_array	0000000000000000              .init_array
0000000000602e00 l    d  .fini_array	0000000000000000              .fini_array
0000000000602e08 l    d  .jcr	0000000000000000              .jcr
0000000000602e10 l    d  .dynamic	0000000000000000              .dynamic
0000000000602fe0 l    d  .got	0000000000000000              .got
0000000000602fe8 l    d  .got.plt	0000000000000000              .got.plt
00000000006030e0 l    d  .data	0000000000000000              .data
0000000000603740 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    d  .debug_aranges	0000000000000000              .debug_aranges
0000000000000000 l    d  .debug_info	0000000000000000              .debug_info
0000000000000000 l    d  .debug_abbrev	0000000000000000              .debug_abbrev
0000000000000000 l    d  .debug_line	0000000000000000              .debug_line
0000000000000000 l    d  .debug_str	0000000000000000              .debug_str
0000000000000000 l    d  .debug_loc	0000000000000000              .debug_loc
0000000000400cbc l     F .text	0000000000000000              call_gmon_start
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000602e08 l     O .jcr	0000000000000000              __JCR_LIST__
0000000000400ce0 l     F .text	0000000000000000              deregister_tm_clones
0000000000400d10 l     F .text	0000000000000000              register_tm_clones
0000000000400d50 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000603758 l     O .bss	0000000000000001              completed.6976
0000000000602e00 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000400d70 l     F .text	0000000000000000              frame_dummy
0000000000602df8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              bomb.c
0000000000000000 l    df *ABS*	0000000000000000              phases.c
00000000004024b0 l     O .rodata	0000000000000010              array.3449
0000000000000000 l    df *ABS*	0000000000000000              support.c
00000000004012a0 l     F .text	0000000000000056              sig_handler
0000000000000000 l    df *ABS*	0000000000000000              driverlib.c
000000000040168e l     F .text	000000000000011e              rio_readlineb
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000402cf0 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000602e08 l     O .jcr	0000000000000000              __JCR_END__
0000000000602e00 l       .init_array	0000000000000000              __init_array_end
0000000000602e10 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000602df8 l       .init_array	0000000000000000              __init_array_start
0000000000602fe8 l     O .got.plt	0000000000000000              _GLOBAL_OFFSET_TABLE_
00000000004022a0 g     F .text	0000000000000002              __libc_csu_fini
00000000004013f9 g     F .text	0000000000000041              skip
0000000000000000       F *UND*	0000000000000000              getenv@@GLIBC_2.2.5
00000000004015c4 g     F .text	0000000000000095              phase_defused
0000000000603190 g     O .data	0000000000000018              n31
0000000000000000       F *UND*	0000000000000000              __errno_location@@GLIBC_2.2.5
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000603740 g     O .bss	0000000000000008              stdout@@GLIBC_2.2.5
00000000006030e0  w      .data	0000000000000000              data_start
0000000000603780 g     O .bss	0000000000000640              input_strings
0000000000000000       F *UND*	0000000000000000              strcpy@@GLIBC_2.2.5
0000000000603170 g     O .data	0000000000000018              n33
0000000000000000       F *UND*	0000000000000000              puts@@GLIBC_2.2.5
0000000000603748 g     O .bss	0000000000000008              stdin@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              write@@GLIBC_2.2.5
0000000000603740 g       *ABS*	0000000000000000              _edata
0000000000603230 g     O .data	0000000000000018              n44
0000000000603290 g     O .data	0000000000000018              n46
0000000000603250 g     O .data	0000000000000018              n42
00000000006032b0 g     O .data	0000000000000018              n48
00000000004022a4 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              __stack_chk_fail@@GLIBC_2.4
0000000000603760 g     O .bss	0000000000000004              num_input_strings
0000000000401062 g     F .text	0000000000000092              phase_5
00000000004013ba g     F .text	0000000000000002              initialize_bomb_solve
00000000004013bc g     F .text	000000000000003d              blank_line
00000000004017ac g     F .text	00000000000007e5              submitr
0000000000400f43 g     F .text	000000000000008b              phase_3
0000000000400ee0 g     F .text	000000000000001c              phase_1
00000000004012f6 g     F .text	0000000000000025              invalid_phase
0000000000401fb8 g     F .text	00000000000001d5              init_driver
0000000000000000       F *UND*	0000000000000000              alarm@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              close@@GLIBC_2.2.5
00000000006032f0 g     O .data	0000000000000010              node3
0000000000000000       F *UND*	0000000000000000              read@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              fgets@@GLIBC_2.2.5
000000000040143a g     F .text	0000000000000022              explode_bomb
00000000006032d0 g     O .data	0000000000000010              node1
00000000006030e0 g       .data	0000000000000000              __data_start
0000000000000000       F *UND*	0000000000000000              signal@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              gethostbyname@@GLIBC_2.2.5
0000000000603310 g     O .data	0000000000000010              node5
0000000000000000       F *UND*	0000000000000000              __memmove_chk@@GLIBC_2.3.4
0000000000000000       F *UND*	0000000000000000              __memcpy_chk@@GLIBC_2.3.4
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000000000       F *UND*	0000000000000000              strtol@@GLIBC_2.2.5
0000000000401204 g     F .text	000000000000003e              fun7
00000000006030e8 g     O .data	0000000000000000              .hidden __dso_handle
00000000004022b0 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000603130 g     O .data	0000000000000018              n22
0000000000603340 g     O .data	0000000000000400              host_table
0000000000400fce g     F .text	000000000000003e              func4
00000000006030f0 g     O .data	0000000000000018              n1
000000000040131b g     F .text	000000000000001d              string_length
0000000000402210 g     F .text	0000000000000089              __libc_csu_init
0000000000000000       F *UND*	0000000000000000              fflush@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              __isoc99_sscanf@@GLIBC_2.7
00000000006031b0 g     O .data	0000000000000018              n34
0000000000603150 g     O .data	0000000000000018              n32
0000000000603e10 g       *ABS*	0000000000000000              _end
0000000000400c90 g     F .text	0000000000000000              _start
0000000000401242 g     F .text	0000000000000051              secret_phase
0000000000603768 g     O .bss	0000000000000008              infile
0000000000401660 g     F .text	000000000000002e              sigalrm_handler
0000000000401f91 g     F .text	0000000000000027              init_timeout
0000000000603740 g       *ABS*	0000000000000000              __bss_start
0000000000400da0 g     F .text	0000000000000137              main
0000000000000000       F *UND*	0000000000000000              __printf_chk@@GLIBC_2.3.4
0000000000603210 g     O .data	0000000000000018              n47
0000000000603270 g     O .data	0000000000000018              n43
00000000006031f0 g     O .data	0000000000000018              n41
000000000040149e g     F .text	0000000000000126              read_line
00000000006031d0 g     O .data	0000000000000018              n45
0000000000401338 g     F .text	000000000000006a              strings_not_equal
000000000040100c g     F .text	0000000000000056              phase_4
0000000000000000       F *UND*	0000000000000000              fopen@@GLIBC_2.2.5
00000000004010f4 g     F .text	0000000000000110              phase_6
0000000000603dc0 g     O .bss	0000000000000050              scratch
0000000000000000  w      *UND*	0000000000000000              _Jv_RegisterClasses
000000000040218d g     F .text	0000000000000077              driver_post
0000000000400efc g     F .text	0000000000000047              phase_2
0000000000000000       F *UND*	0000000000000000              exit@@GLIBC_2.2.5
000000000060375c g     O .bss	0000000000000004              bomb_id
0000000000000000       F *UND*	0000000000000000              connect@@GLIBC_2.2.5
0000000000603740 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000       F *UND*	0000000000000000              __fprintf_chk@@GLIBC_2.3.4
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
00000000006032e0 g     O .data	0000000000000010              node2
0000000000603300 g     O .data	0000000000000010              node4
0000000000000000       F *UND*	0000000000000000              sleep@@GLIBC_2.2.5
0000000000603320 g     O .data	0000000000000010              node6
0000000000400ac0 g     F .init	0000000000000000              _init
000000000040145c g     F .text	0000000000000042              read_six_numbers
0000000000603110 g     O .data	0000000000000018              n21
00000000004013a2 g     F .text	0000000000000018              initialize_bomb
0000000000000000       F *UND*	0000000000000000              __ctype_b_loc@@GLIBC_2.3
0000000000603750 g     O .bss	0000000000000008              stderr@@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              __sprintf_chk@@GLIBC_2.3.4
0000000000000000       F *UND*	0000000000000000              socket@@GLIBC_2.2.5


