;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;mova
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	.h8300sx
	.text
	.global _start
_start:
    mova/b.c @(0x1234:16,r3l.b),er1              ;7A891234
    mova/b.c @(0x1234:16,r3.w),er1              ;7A991234
    mova/w.c @(0x1234:16,r3l.b),er1           ;7AA91234
    mova/w.c @(0x1234:16,r3.w),er1           ;7AB91234
    mova/l.c @(0x1234:16,r3l.b),er1           ;7AC91234
    mova/l.c @(0x1234:16,r3.w),er1           ;7AD91234
    mova/b.c @(0x12345678:32,r3l.b),er1              ;7A8112345678
    mova/b.c @(0x12345678:32,r3.w),er1              ;7A9112345678
    mova/w.c @(0x12345678:32,r3l.b),er1           ;7AA112345678
    mova/w.c @(0x12345678:32,r3.w),er1           ;7AB112345678
    mova/l.c @(0x12345678:32,r3l.b),er1           ;7AC112345678
    mova/l.c @(0x12345678:32,r3.w),er1           ;7AD112345678

    mova/b.l @(0x1234:16,r3l.b),er1              ;78B87A891234
    mova/b.l @(0x1234:16,r3.w),er1              ;78397A991234
    mova/w.l @(0x1234:16,r3l.b),er1           ;78B87AA91234
    mova/w.l @(0x1234:16,r3.w),er1           ;78397AB91234
    mova/l.l @(0x1234:16,r3l.b),er1           ;78B87AC91234
    mova/l.l @(0x1234:16,r3.w),er1           ;78397AD91234
    mova/b.l @(0x12345678:32,r3l.b),er1              ;78B87A8112345678
    mova/b.l @(0x12345678:32,r3.w),er1              ;78397A9112345678
    mova/w.l @(0x12345678:32,r3l.b),er1           ;78B87AA112345678
    mova/w.l @(0x12345678:32,r3.w),er1           ;78397AB112345678
    mova/l.l @(0x12345678:32,r3l.b),er1           ;78B87AC112345678
    mova/l.l @(0x12345678:32,r3.w),er1           ;78397AD112345678

    mova/b.l @(0x1234:16,@er2.b),er1              ;017F02811234
    mova/b.l @(0x1234:16,@(0x1:2,er2).b),er1       ;017F12811234
    mova/b.l @(0x1234:16,@er2+.b),er1             ;017F82811234
    mova/b.l @(0x1234:16,@-er2.b),er1             ;017FB2811234
    mova/b.l @(0x1234:16,@+er2.b),er1             ;017F92811234
    mova/b.l @(0x1234:16,@er2-.b),er1             ;017FA2811234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,er2).b),er1      ;017FC2819ABC1234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,er2).b),er1      ;017FCA819ABCDEF01234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,r2L.b).b),er1    ;017FD2819ABC1234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,r2.w).b),er1    ;017FE2819ABC1234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,er2.l).b),er1    ;017FF2819ABC1234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,r2L.b).b),er1    ;017FDA819ABCDEF01234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,r2.w).b),er1    ;017FEA819ABCDEF01234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,er2.l).b),er1    ;017FFA819ABCDEF01234
    mova/b.l @(0x1234:16,@0xFFFF9ABC:16.b),er1            ;017F40819ABC1234
    mova/b.l @(0x1234:16,@0x9ABCDEF0:32.b),er1            ;017F48819ABCDEF01234

    mova/b.l @(0x1234:16,@er2.w),er1              ;015F02911234
    mova/b.l @(0x1234:16,@(0x2:2,er2).w),er1    ;015F12911234
    mova/b.l @(0x1234:16,@er2+.w),er1             ;015F82911234
    mova/b.l @(0x1234:16,@-er2.w),er1             ;015FB2911234
    mova/b.l @(0x1234:16,@+er2.w),er1             ;015F92911234
    mova/b.l @(0x1234:16,@er2-.w),er1             ;015FA2911234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,er2).w),er1      ;015FC2919ABC1234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,er2).w),er1      ;015FCA919ABCDEF01234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,r2L.b).w),er1    ;015FD2919ABC1234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,r2.w).w),er1    ;015FE2919ABC1234
    mova/b.l @(0x1234:16,@(0xFFFF9ABC:16,er2.l).w),er1    ;015FF2919ABC1234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,r2L.b).w),er1    ;015FDA919ABCDEF01234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,r2.w).w),er1    ;015FEA919ABCDEF01234
    mova/b.l @(0x1234:16,@(0x9ABCDEF0:32,er2.l).w),er1    ;015FFA919ABCDEF01234
    mova/b.l @(0x1234:16,@0xFFFF9ABC:16.w),er1            ;015F40919ABC1234
    mova/b.l @(0x1234:16,@0x9ABCDEF0:32.w),er1            ;015F48919ABCDEF01234

    mova/w.l @(0x1234:16,@er2.b),er1           ;017F02A11234
    mova/w.l @(0x1234:16,@(0x1:2,er2).b),er1    ;017F12A11234
    mova/w.l @(0x1234:16,@er2+.b),er1          ;017F82A11234
    mova/w.l @(0x1234:16,@-er2.b),er1          ;017FB2A11234
    mova/w.l @(0x1234:16,@+er2.b),er1          ;017F92A11234
    mova/w.l @(0x1234:16,@er2-.b),er1          ;017FA2A11234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,er2).b),er1   ;017FC2A19ABC1234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,er2).b),er1   ;017FCAA19ABCDEF01234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,r2L.b).b),er1 ;017FD2A19ABC1234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,r2.w).b),er1 ;017FE2A19ABC1234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,er2.l).b),er1 ;017FF2A19ABC1234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,r2L.b).b),er1 ;017FDAA19ABCDEF01234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,r2.w).b),er1 ;017FEAA19ABCDEF01234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,er2.l).b),er1 ;017FFAA19ABCDEF01234
    mova/w.l @(0x1234:16,@0xFFFF9ABC:16.b),er1         ;017F40A19ABC1234
    mova/w.l @(0x1234:16,@0x9ABCDEF0:32.b),er1         ;017F48A19ABCDEF01234

    mova/w.l @(0x1234:16,@er2.w),er1           ;015F02B11234
    mova/w.l @(0x1234:16,@(0x2:2,er2).w),er1 ;015F12B11234
    mova/w.l @(0x1234:16,@er2+.w),er1          ;015F82B11234
    mova/w.l @(0x1234:16,@-er2.w),er1          ;015FB2B11234
    mova/w.l @(0x1234:16,@+er2.w),er1          ;015F92B11234
    mova/w.l @(0x1234:16,@er2-.w),er1          ;015FA2B11234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,er2).w),er1   ;015FC2B19ABC1234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,er2).w),er1   ;015FCAB19ABCDEF01234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,r2L.b).w),er1 ;015FD2B19ABC1234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,r2.w).w),er1 ;015FE2B19ABC1234
    mova/w.l @(0x1234:16,@(0xFFFF9ABC:16,er2.l).w),er1 ;015FF2B19ABC1234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,r2L.b).w),er1 ;015FDAB19ABCDEF01234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,r2.w).w),er1 ;015FEAB19ABCDEF01234
    mova/w.l @(0x1234:16,@(0x9ABCDEF0:32,er2.l).w),er1 ;015FFAB19ABCDEF01234
    mova/w.l @(0x1234:16,@0xFFFF9ABC:16.w),er1         ;015F40B19ABC1234
    mova/w.l @(0x1234:16,@0x9ABCDEF0:32.w),er1         ;015F48B19ABCDEF01234

    mova/l.l @(0x1234:16,@er2.b),er1           ;017F02C11234
    mova/l.l @(0x1234:16,@(0x1:2,er2).b),er1    ;017F12C11234
    mova/l.l @(0x1234:16,@er2+.b),er1          ;017F82C11234
    mova/l.l @(0x1234:16,@-er2.b),er1          ;017FB2C11234
    mova/l.l @(0x1234:16,@+er2.b),er1          ;017F92C11234
    mova/l.l @(0x1234:16,@er2-.b),er1          ;017FA2C11234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,er2).b),er1   ;017FC2C19ABC1234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,er2).b),er1   ;017FCAC19ABCDEF01234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,r2L.b).b),er1 ;017FD2C19ABC1234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,r2.w).b),er1 ;017FE2C19ABC1234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,er2.l).b),er1 ;017FF2C19ABC1234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,r2L.b).b),er1 ;017FDAC19ABCDEF01234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,r2.w).b),er1 ;017FEAC19ABCDEF01234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,er2.l).b),er1 ;017FFAC19ABCDEF01234
    mova/l.l @(0x1234:16,@0xFFFF9ABC:16.b),er1         ;017F40C19ABC1234
    mova/l.l @(0x1234:16,@0x9ABCDEF0:32.b),er1         ;017F48C19ABCDEF01234

    mova/l.l @(0x1234:16,@er2.w),er1           ;015F02D11234
    mova/l.l @(0x1234:16,@(0x2:2,er2).w),er1   ;015F12D11234
    mova/l.l @(0x1234:16,@er2+.w),er1          ;015F82D11234
    mova/l.l @(0x1234:16,@-er2.w),er1          ;015FB2D11234
    mova/l.l @(0x1234:16,@+er2.w),er1          ;015F92D11234
    mova/l.l @(0x1234:16,@er2-.w),er1          ;015FA2D11234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,er2).w),er1   ;015FC2D19ABC1234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,er2).w),er1   ;015FCAD19ABCDEF01234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,r2L.b).w),er1 ;015FD2D19ABC1234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,r2.w).w),er1 ;015FE2D19ABC1234
    mova/l.l @(0x1234:16,@(0xFFFF9ABC:16,er2.l).w),er1 ;015FF2D19ABC1234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,r2L.b).w),er1 ;015FDAD19ABCDEF01234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,r2.w).w),er1 ;015FEAD19ABCDEF01234
    mova/l.l @(0x1234:16,@(0x9ABCDEF0:32,er2.l).w),er1 ;015FFAD19ABCDEF01234
    mova/l.l @(0x1234:16,@0xFFFF9ABC:16.w),er1         ;015F40D19ABC1234
    mova/l.l @(0x1234:16,@0x9ABCDEF0:32.w),er1         ;015F48D19ABCDEF01234

    mova/b.l @(0x12345678:32,@er2.b),er1              ;017F028912345678
    mova/b.l @(0x12345678:32,@(0x1:2,er2).b),er1       ;017F128912345678
    mova/b.l @(0x12345678:32,@er2+.b),er1             ;017F828912345678
    mova/b.l @(0x12345678:32,@-er2.b),er1             ;017FB28912345678
    mova/b.l @(0x12345678:32,@+er2.b),er1             ;017F928912345678
    mova/b.l @(0x12345678:32,@er2-.b),er1             ;017FA28912345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,er2).b),er1      ;017FC2899ABC12345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,er2).b),er1      ;017FCA899ABCDEF012345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,r2L.b).b),er1    ;017FD2899ABC12345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,r2.w).b),er1    ;017FE2899ABC12345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,er2.l).b),er1    ;017FF2899ABC12345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,r2L.b).b),er1    ;017FDA899ABCDEF012345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,r2.w).b),er1    ;017FEA899ABCDEF012345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,er2.l).b),er1    ;017FFA899ABCDEF012345678
    mova/b.l @(0x12345678:32,@0xFFFF9ABC:16.b),er1            ;017F40899ABC12345678
    mova/b.l @(0x12345678:32,@0x9ABCDEF0:32.b),er1            ;017F48899ABCDEF012345678

    mova/b.l @(0x12345678:32,@er2.w),er1              ;015F029912345678
    mova/b.l @(0x12345678:32,@(0x2:2,er2).w),er1      ;015F129912345678
    mova/b.l @(0x12345678:32,@er2+.w),er1             ;015F829912345678
    mova/b.l @(0x12345678:32,@-er2.w),er1             ;015FB29912345678
    mova/b.l @(0x12345678:32,@+er2.w),er1             ;015F929912345678
    mova/b.l @(0x12345678:32,@er2-.w),er1             ;015FA29912345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,er2).w),er1      ;015FC2999ABC12345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,er2).w),er1      ;015FCA999ABCDEF012345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,r2L.b).w),er1    ;015FD2999ABC12345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,r2.w).w),er1    ;015FE2999ABC12345678
    mova/b.l @(0x12345678:32,@(0xFFFF9ABC:16,er2.l).w),er1    ;015FF2999ABC12345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,r2L.b).w),er1    ;015FDA999ABCDEF012345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,r2.w).w),er1    ;015FEA999ABCDEF012345678
    mova/b.l @(0x12345678:32,@(0x9ABCDEF0:32,er2.l).w),er1    ;015FFA999ABCDEF012345678
    mova/b.l @(0x12345678:32,@0xFFFF9ABC:16.w),er1            ;015F40999ABC12345678
    mova/b.l @(0x12345678:32,@0x9ABCDEF0:32.w),er1            ;015F48999ABCDEF012345678

    mova/w.l @(0x12345678:32,@er2.b),er1           ;017F02A912345678
    mova/w.l @(0x12345678:32,@(0x1:2,er2).b),er1   ;017F12A912345678
    mova/w.l @(0x12345678:32,@er2+.b),er1          ;017F82A912345678
    mova/w.l @(0x12345678:32,@-er2.b),er1          ;017FB2A912345678
    mova/w.l @(0x12345678:32,@+er2.b),er1          ;017F92A912345678
    mova/w.l @(0x12345678:32,@er2-.b),er1          ;017FA2A912345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,er2).b),er1   ;017FC2A99ABC12345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,er2).b),er1   ;017FCAA99ABCDEF012345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,r2L.b).b),er1 ;017FD2A99ABC12345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,r2.w).b),er1 ;017FE2A99ABC12345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,er2.l).b),er1 ;017FF2A99ABC12345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,r2L.b).b),er1 ;017FDAA99ABCDEF012345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,r2.w).b),er1 ;017FEAA99ABCDEF012345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,er2.l).b),er1 ;017FFAA99ABCDEF012345678
    mova/w.l @(0x12345678:32,@0xFFFF9ABC:16.b),er1         ;017F40A99ABC12345678
    mova/w.l @(0x12345678:32,@0x9ABCDEF0:32.b),er1         ;017F48A99ABCDEF012345678

    mova/w.l @(0x12345678:32,@er2.w),er1           ;015F02B912345678
    mova/w.l @(0x12345678:32,@(0x2:2,er2).w),er1   ;015F12B912345678
    mova/w.l @(0x12345678:32,@er2+.w),er1          ;015F82B912345678
    mova/w.l @(0x12345678:32,@-er2.w),er1          ;015FB2B912345678
    mova/w.l @(0x12345678:32,@+er2.w),er1          ;015F92B912345678
    mova/w.l @(0x12345678:32,@er2-.w),er1          ;015FA2B912345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,er2).w),er1   ;015FC2B99ABC12345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,er2).w),er1   ;015FCAB99ABCDEF012345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,r2L.b).w),er1 ;015FD2B99ABC12345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,r2.w).w),er1 ;015FE2B99ABC12345678
    mova/w.l @(0x12345678:32,@(0xFFFF9ABC:16,er2.l).w),er1 ;015FF2B99ABC12345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,r2L.b).w),er1 ;015FDAB99ABCDEF012345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,r2.w).w),er1 ;015FEAB99ABCDEF012345678
    mova/w.l @(0x12345678:32,@(0x9ABCDEF0:32,er2.l).w),er1 ;015FFAB99ABCDEF012345678
    mova/w.l @(0x12345678:32,@0xFFFF9ABC:16.w),er1         ;015F40B99ABC12345678
    mova/w.l @(0x12345678:32,@0x9ABCDEF0:32.w),er1         ;015F48B99ABCDEF012345678

    mova/l.l @(0x12345678:32,@er2.b),er1           ;017F02C912345678
    mova/l.l @(0x12345678:32,@(0x1:2,er2).b),er1   ;017F12C912345678
    mova/l.l @(0x12345678:32,@er2+.b),er1          ;017F82C912345678
    mova/l.l @(0x12345678:32,@-er2.b),er1          ;017FB2C912345678
    mova/l.l @(0x12345678:32,@+er2.b),er1          ;017F92C912345678
    mova/l.l @(0x12345678:32,@er2-.b),er1          ;017FA2C912345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,er2).b),er1   ;017FC2C99ABC12345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,er2).b),er1   ;017FCAC99ABCDEF012345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,r2L.b).b),er1 ;017FD2C99ABC12345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,r2.w).b),er1 ;017FE2C99ABC12345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,er2.l).b),er1 ;017FF2C99ABC12345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,r2L.b).b),er1 ;017FDAC99ABCDEF012345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,r2.w).b),er1 ;017FEAC99ABCDEF012345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,er2.l).b),er1 ;017FFAC99ABCDEF012345678
    mova/l.l @(0x12345678:32,@0xFFFF9ABC:16.b),er1         ;017F40C99ABC12345678
    mova/l.l @(0x12345678:32,@0x9ABCDEF0:32.b),er1         ;017F48C99ABCDEF012345678

    mova/l.l @(0x12345678:32,@er2.w),er1           ;015F02D912345678
    mova/l.l @(0x12345678:32,@(0x2:2,er2).w),er1 ;015F12D912345678
    mova/l.l @(0x12345678:32,@er2+.w),er1          ;015F82D912345678
    mova/l.l @(0x12345678:32,@-er2.w),er1          ;015FB2D912345678
    mova/l.l @(0x12345678:32,@+er2.w),er1          ;015F92D912345678
    mova/l.l @(0x12345678:32,@er2-.w),er1          ;015FA2D912345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,er2).w),er1   ;015FC2D99ABC12345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,er2).w),er1   ;015FCAD99ABCDEF012345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,r2L.b).w),er1 ;015FD2D99ABC12345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,r2.w).w),er1 ;015FE2D99ABC12345678
    mova/l.l @(0x12345678:32,@(0xFFFF9ABC:16,er2.l).w),er1 ;015FF2D99ABC12345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,r2L.b).w),er1 ;015FDAD99ABCDEF012345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,r2.w).w),er1 ;015FEAD99ABCDEF012345678
    mova/l.l @(0x12345678:32,@(0x9ABCDEF0:32,er2.l).w),er1 ;015FFAD99ABCDEF012345678
    mova/l.l @(0x12345678:32,@0xFFFF9ABC:16.w),er1         ;015F40D99ABC12345678
    mova/l.l @(0x12345678:32,@0x9ABCDEF0:32.w),er1         ;015F48D99ABCDEF012345678

	.end
