; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_compat.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/compat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.id3_compat = type { ptr, ptr, ptr }
%struct.id3_frame = type { [5 x i8], ptr, i32, i32, i32, i32, ptr, i64, i64, i32, ptr }
%union.id3_field = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr, i64 }

@id3_compat_lookup.wordlist = internal constant [73 x %struct.id3_compat] [%struct.id3_compat { ptr @.str, ptr @.str.1, ptr null }, %struct.id3_compat { ptr @.str.2, ptr @.str.3, ptr null }, %struct.id3_compat { ptr @.str.4, ptr @.str.5, ptr null }, %struct.id3_compat { ptr @.str.6, ptr @.str.7, ptr null }, %struct.id3_compat { ptr @.str.8, ptr @.str.9, ptr null }, %struct.id3_compat { ptr @.str.10, ptr @.str.11, ptr null }, %struct.id3_compat { ptr @.str.12, ptr @.str.13, ptr null }, %struct.id3_compat { ptr @.str.14, ptr @.str.15, ptr null }, %struct.id3_compat { ptr @.str.16, ptr @.str.17, ptr null }, %struct.id3_compat { ptr @.str.18, ptr @.str.19, ptr null }, %struct.id3_compat { ptr @.str.20, ptr @.str.21, ptr null }, %struct.id3_compat { ptr @.str.22, ptr @.str.23, ptr null }, %struct.id3_compat { ptr @.str.24, ptr @.str.25, ptr @translate_TCON }, %struct.id3_compat { ptr @.str.26, ptr @.str.27, ptr null }, %struct.id3_compat { ptr @.str.28, ptr @.str.29, ptr null }, %struct.id3_compat { ptr @.str.30, ptr @.str.31, ptr null }, %struct.id3_compat { ptr @.str.32, ptr @.str.33, ptr null }, %struct.id3_compat { ptr @.str.34, ptr @.str.35, ptr null }, %struct.id3_compat { ptr @.str.25, ptr @.str.25, ptr @translate_TCON }, %struct.id3_compat { ptr @.str.36, ptr @.str.37, ptr null }, %struct.id3_compat { ptr @.str.38, ptr @.str.39, ptr null }, %struct.id3_compat { ptr @.str.40, ptr null, ptr null }, %struct.id3_compat { ptr @.str.41, ptr @.str.42, ptr null }, %struct.id3_compat { ptr @.str.43, ptr @.str.44, ptr null }, %struct.id3_compat { ptr @.str.45, ptr @.str.46, ptr null }, %struct.id3_compat { ptr @.str.47, ptr @.str.48, ptr null }, %struct.id3_compat { ptr @.str.49, ptr @.str.50, ptr null }, %struct.id3_compat { ptr @.str.51, ptr @.str.52, ptr null }, %struct.id3_compat { ptr @.str.53, ptr @.str.54, ptr null }, %struct.id3_compat { ptr @.str.55, ptr @.str.13, ptr null }, %struct.id3_compat { ptr @.str.56, ptr @.str.57, ptr null }, %struct.id3_compat { ptr @.str.58, ptr @.str.59, ptr null }, %struct.id3_compat { ptr @.str.60, ptr @.str.61, ptr null }, %struct.id3_compat { ptr @.str.62, ptr @.str.63, ptr null }, %struct.id3_compat { ptr @.str.64, ptr @.str.65, ptr null }, %struct.id3_compat { ptr @.str.66, ptr @.str.67, ptr null }, %struct.id3_compat { ptr @.str.68, ptr @.str.69, ptr null }, %struct.id3_compat { ptr @.str.70, ptr @.str.71, ptr null }, %struct.id3_compat { ptr @.str.72, ptr @.str.73, ptr null }, %struct.id3_compat { ptr @.str.74, ptr @.str.75, ptr null }, %struct.id3_compat { ptr @.str.76, ptr @.str.77, ptr null }, %struct.id3_compat { ptr @.str.78, ptr @.str.79, ptr null }, %struct.id3_compat { ptr @.str.80, ptr null, ptr null }, %struct.id3_compat { ptr @.str.81, ptr null, ptr null }, %struct.id3_compat { ptr @.str.82, ptr @.str.83, ptr null }, %struct.id3_compat { ptr @.str.84, ptr @.str.85, ptr null }, %struct.id3_compat { ptr @.str.86, ptr @.str.87, ptr null }, %struct.id3_compat { ptr @.str.88, ptr @.str.89, ptr null }, %struct.id3_compat { ptr @.str.90, ptr null, ptr null }, %struct.id3_compat { ptr @.str.91, ptr @.str.92, ptr null }, %struct.id3_compat { ptr @.str.93, ptr null, ptr null }, %struct.id3_compat { ptr @.str.94, ptr null, ptr null }, %struct.id3_compat { ptr @.str.95, ptr @.str.96, ptr null }, %struct.id3_compat { ptr @.str.97, ptr @.str.98, ptr null }, %struct.id3_compat { ptr @.str.99, ptr null, ptr null }, %struct.id3_compat { ptr @.str.100, ptr @.str.101, ptr null }, %struct.id3_compat { ptr @.str.102, ptr @.str.103, ptr null }, %struct.id3_compat { ptr @.str.104, ptr @.str.61, ptr null }, %struct.id3_compat { ptr @.str.105, ptr null, ptr null }, %struct.id3_compat { ptr @.str.106, ptr null, ptr null }, %struct.id3_compat { ptr @.str.107, ptr @.str.108, ptr null }, %struct.id3_compat { ptr @.str.109, ptr @.str.110, ptr null }, %struct.id3_compat { ptr @.str.111, ptr @.str.112, ptr null }, %struct.id3_compat { ptr @.str.113, ptr null, ptr null }, %struct.id3_compat { ptr @.str.114, ptr null, ptr null }, %struct.id3_compat { ptr @.str.115, ptr @.str.116, ptr null }, %struct.id3_compat { ptr @.str.117, ptr null, ptr null }, %struct.id3_compat { ptr @.str.118, ptr null, ptr null }, %struct.id3_compat { ptr @.str.119, ptr @.str.120, ptr null }, %struct.id3_compat { ptr @.str.121, ptr @.str.122, ptr null }, %struct.id3_compat { ptr @.str.123, ptr null, ptr null }, %struct.id3_compat { ptr @.str.124, ptr null, ptr null }, %struct.id3_compat { ptr @.str.125, ptr @.str.126, ptr null }], align 8
@.str = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"POPM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"WCP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"WCOP\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"WPB\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"WPUB\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"BUF\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RBUF\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PIC\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"IPL\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"TIPL\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"MLL\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"MLLT\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"WAF\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"WOAF\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"WCM\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"WCOM\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"UFI\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"UFID\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"CRA\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"AENC\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"TCO\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"TCON\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ULT\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"USLT\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"TOL\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"TOLY\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"TBP\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"TBPM\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"TPB\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"TPUB\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"CNT\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"PCNT\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"WAR\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"WOAR\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"CRM\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"TOF\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"TOFN\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"MCI\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"MCDI\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"TPA\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"TPOS\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"WAS\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"WOAS\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"TOA\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"TOPE\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"TAL\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"TALB\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"TLA\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"TLAN\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"IPLS\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"TCR\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"TCOP\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"TRC\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"TSRC\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"TOR\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"TDOR\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"TCM\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"TCOM\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"ETC\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"ETCO\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"STC\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"SYTC\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"TLE\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"TLEN\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"SLT\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"SYLT\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"TEN\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"TENC\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"TP2\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"TPE2\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"TP1\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"TPE1\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"TOT\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"TOAL\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"EQU\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"RVA\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"GEO\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"GEOB\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"TP4\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"TPE4\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"TP3\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"TPE3\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"TFT\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"TFLT\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"TIM\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"REV\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"RVRB\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"TSI\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"EQUA\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"TSS\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"TSSE\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"TRK\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"TRCK\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"TDA\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"TMT\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"TMED\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"TKE\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"TKEY\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"TORY\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"TRD\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"TYE\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"TT2\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"TIT2\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"TT1\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"TIT1\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"WXX\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"WXXX\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"TSIZ\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"TT3\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"TIT3\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"TRDA\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"RVAD\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"TDY\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"TDLY\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"TYER\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"TDAT\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"TXX\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"TXXX\00", align 1
@id3_compat_lookup.lookup = internal constant [91 x i16] [i16 -1, i16 0, i16 -1, i16 -53, i16 -2, i16 1, i16 -49, i16 -2, i16 2, i16 3, i16 -1, i16 -46, i16 -2, i16 -43, i16 -2, i16 4, i16 5, i16 6, i16 -1, i16 7, i16 -163, i16 10, i16 11, i16 12, i16 13, i16 -161, i16 17, i16 -159, i16 -77, i16 22, i16 23, i16 -80, i16 26, i16 -85, i16 29, i16 -87, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 -155, i16 44, i16 45, i16 46, i16 47, i16 -1, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 -1, i16 60, i16 61, i16 62, i16 63, i16 64, i16 -1, i16 -151, i16 -1, i16 67, i16 68, i16 69, i16 70, i16 -8, i16 -2, i16 -1, i16 71, i16 -31, i16 -2, i16 -1, i16 72, i16 -55, i16 -2, i16 -59, i16 -3, i16 -65, i16 -2], align 2
@.str.127 = private unnamed_addr constant [5 x i8] c"ZOBS\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"YTYE\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"YTDA\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"YTIM\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"TDRC\00", align 1
@hash.asso_values = internal constant [256 x i8] c"UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU\16\15\1B\1AUUUUUUUUUUUU\09\03\00\1B\10\06\1EU\0FU\16\02\0F\04\01\00\1E\0D\11\16\00\18\05\1F\19\0FUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @id3_compat_lookup(ptr noundef %str, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %index = alloca i32, align 4
  %s = alloca ptr, align 8
  %offset = alloca i32, align 4
  %wordptr = alloca ptr, align 8
  %wordendptr = alloca ptr, align 8
  %s39 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %cmp = icmp ult i32 %len, 5
  %0 = load i32, ptr %len.addr, align 4
  %cmp1 = icmp ugt i32 %0, 2
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %if.end57

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8
  %2 = load i32, ptr %len.addr, align 4
  %call = call i32 @hash(ptr noundef %1, i32 noundef %2)
  store i32 %call, ptr %key, align 4
  %cmp2 = icmp slt i32 %call, 85
  %3 = load i32, ptr %key, align 4
  %cmp4 = icmp sgt i32 %3, -1
  %or.cond1 = select i1 %cmp2, i1 %cmp4, i1 false
  br i1 %or.cond1, label %if.then5, label %if.end57

if.then5:                                         ; preds = %if.then
  %4 = load i32, ptr %key, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [91 x i16], ptr @id3_compat_lookup.lookup, i64 0, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %5 to i32
  store i32 %conv, ptr %index, align 4
  %cmp6 = icmp sgt i16 %5, -1
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %6 = load i32, ptr %index, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [73 x %struct.id3_compat], ptr @id3_compat_lookup.wordlist, i64 0, i64 %idxprom9
  %7 = load ptr, ptr %arrayidx10, align 8
  store ptr %7, ptr %s, align 8
  %8 = load ptr, ptr %str.addr, align 8
  %9 = load i8, ptr %8, align 1
  %10 = load i8, ptr %7, align 1
  %cmp13 = icmp eq i8 %9, %10
  br i1 %cmp13, label %land.lhs.true15, label %if.end57

land.lhs.true15:                                  ; preds = %if.then8
  %11 = load ptr, ptr %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load ptr, ptr %s, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %12, i64 1
  %13 = load i32, ptr %len.addr, align 4
  %sub = add i32 %13, -1
  %conv17 = zext i32 %sub to i64
  %call18 = call i32 @strncmp(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr16, i64 noundef %conv17) #4
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %if.end57

if.then19:                                        ; preds = %land.lhs.true15
  %14 = load i32, ptr %index, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [73 x %struct.id3_compat], ptr @id3_compat_lookup.wordlist, i64 0, i64 %idxprom20
  store ptr %arrayidx21, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then5
  %15 = load i32, ptr %index, align 4
  %cmp22 = icmp slt i32 %15, -73
  br i1 %cmp22, label %if.then24, label %if.end57

if.then24:                                        ; preds = %if.else
  %16 = load i32, ptr %index, align 4
  %sub25 = sub nsw i32 -74, %16
  store i32 %sub25, ptr %offset, align 4
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [91 x i16], ptr @id3_compat_lookup.lookup, i64 0, i64 %idxprom26
  %17 = load i16, ptr %arrayidx27, align 2
  %conv28 = sext i16 %17 to i64
  %add = add nsw i64 %conv28, 73
  %arrayidx30 = getelementptr inbounds [73 x %struct.id3_compat], ptr @id3_compat_lookup.wordlist, i64 0, i64 %add
  store ptr %arrayidx30, ptr %wordptr, align 8
  %18 = load i32, ptr %offset, align 4
  %add31 = add nsw i32 %18, 1
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [91 x i16], ptr @id3_compat_lookup.lookup, i64 0, i64 %idxprom32
  %19 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %19 to i64
  %sub35 = sub nsw i64 0, %conv34
  %add.ptr36 = getelementptr inbounds %struct.id3_compat, ptr %arrayidx30, i64 %sub35
  store ptr %add.ptr36, ptr %wordendptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %if.then24
  %20 = load ptr, ptr %wordptr, align 8
  %21 = load ptr, ptr %wordendptr, align 8
  %cmp37 = icmp ult ptr %20, %21
  br i1 %cmp37, label %while.body, label %if.end57

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %wordptr, align 8
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %s39, align 8
  %24 = load ptr, ptr %str.addr, align 8
  %25 = load i8, ptr %24, align 1
  %26 = load i8, ptr %23, align 1
  %cmp43 = icmp eq i8 %25, %26
  br i1 %cmp43, label %land.lhs.true45, label %if.end53

land.lhs.true45:                                  ; preds = %while.body
  %27 = load ptr, ptr %str.addr, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %27, i64 1
  %28 = load ptr, ptr %s39, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i32, ptr %len.addr, align 4
  %sub48 = add i32 %29, -1
  %conv49 = zext i32 %sub48 to i64
  %call50 = call i32 @strncmp(ptr noundef nonnull %add.ptr46, ptr noundef nonnull %add.ptr47, i64 noundef %conv49) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end53

if.then52:                                        ; preds = %land.lhs.true45
  %30 = load ptr, ptr %wordptr, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

if.end53:                                         ; preds = %land.lhs.true45, %while.body
  %31 = load ptr, ptr %wordptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.id3_compat, ptr %31, i64 1
  store ptr %incdec.ptr, ptr %wordptr, align 8
  br label %while.cond, !llvm.loop !6

if.end57:                                         ; preds = %if.then, %if.else, %while.cond, %if.then8, %land.lhs.true15, %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end57, %if.then52, %if.then19
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @translate_TCON(ptr noundef %frame, ptr noundef %oldid, ptr noundef %data, i64 noundef %length) #0 {
entry:
  %frame.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %end = alloca ptr, align 8
  %encoding = alloca i32, align 4
  %string = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %endptr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %frame, ptr %frame.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr null, ptr %string, align 8
  store i32 0, ptr %result, align 4
  %0 = load ptr, ptr %frame.addr, align 8
  %nfields = getelementptr inbounds %struct.id3_frame, ptr %0, i64 0, i32 9
  %1 = load i32, ptr %nfields, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

do.end:                                           ; preds = %entry
  store i32 0, ptr %encoding, align 4
  %2 = load ptr, ptr %data.addr, align 8
  %3 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  store ptr %add.ptr, ptr %end, align 8
  %4 = load ptr, ptr %frame.addr, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %4, i64 0, i32 10
  %5 = load ptr, ptr %fields, align 8
  %6 = load ptr, ptr %data.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i32 @id3_field_parse(ptr noundef %5, ptr noundef nonnull %data.addr, i64 noundef %sub.ptr.sub, ptr noundef nonnull %encoding) #4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %fail, label %if.end3

if.end3:                                          ; preds = %do.end
  %7 = load ptr, ptr %end, align 8
  %8 = load ptr, ptr %data.addr, align 8
  %sub.ptr.lhs.cast4 = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast5 = ptrtoint ptr %8 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  %9 = load i32, ptr %encoding, align 4
  %call7 = call ptr @id3_parse_string(ptr noundef nonnull %data.addr, i64 noundef %sub.ptr.sub6, i32 noundef %9, i32 noundef 0) #4
  store ptr %call7, ptr %string, align 8
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %fail, label %if.end10

if.end10:                                         ; preds = %if.end3
  %10 = load ptr, ptr %string, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end10
  %storemerge = phi ptr [ %10, %if.end10 ], [ %25, %if.end28 ]
  store ptr %storemerge, ptr %ptr, align 8
  %11 = load i64, ptr %storemerge, align 8
  %cmp11 = icmp eq i64 %11, 40
  br i1 %cmp11, label %while.body, label %while.end29

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %12, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %13 = load i64, ptr %incdec.ptr, align 8
  %cmp12 = icmp eq i64 %13, 40
  br i1 %cmp12, label %while.end29, label %if.end14

if.end14:                                         ; preds = %while.body
  %14 = load ptr, ptr %ptr, align 8
  br label %while.cond15

while.cond15:                                     ; preds = %while.body17, %if.end14
  %storemerge1 = phi ptr [ %14, %if.end14 ], [ %incdec.ptr18, %while.body17 ]
  store ptr %storemerge1, ptr %endptr, align 8
  %15 = load i64, ptr %storemerge1, align 8
  %tobool.not = icmp eq i64 %15, 0
  br i1 %tobool.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond15
  %16 = load ptr, ptr %endptr, align 8
  %17 = load i64, ptr %16, align 8
  %cmp16 = icmp ne i64 %17, 41
  br i1 %cmp16, label %while.body17, label %while.end

while.body17:                                     ; preds = %land.rhs
  %18 = load ptr, ptr %endptr, align 8
  %incdec.ptr18 = getelementptr inbounds i64, ptr %18, i64 1
  br label %while.cond15, !llvm.loop !8

while.end:                                        ; preds = %while.cond15, %land.rhs
  %19 = load ptr, ptr %endptr, align 8
  %20 = load i64, ptr %19, align 8
  %tobool19.not = icmp eq i64 %20, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %while.end
  %21 = load ptr, ptr %endptr, align 8
  %incdec.ptr21 = getelementptr inbounds i64, ptr %21, i64 1
  store ptr %incdec.ptr21, ptr %endptr, align 8
  store i64 0, ptr %21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %while.end
  %22 = load ptr, ptr %frame.addr, align 8
  %fields23 = getelementptr inbounds %struct.id3_frame, ptr %22, i64 0, i32 10
  %23 = load ptr, ptr %fields23, align 8
  %arrayidx24 = getelementptr inbounds %union.id3_field, ptr %23, i64 1
  %24 = load ptr, ptr %ptr, align 8
  %call25 = call i32 @id3_field_addstring(ptr noundef nonnull %arrayidx24, ptr noundef %24) #4
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %fail, label %if.end28

if.end28:                                         ; preds = %if.end22
  %25 = load ptr, ptr %endptr, align 8
  br label %while.cond, !llvm.loop !9

while.end29:                                      ; preds = %while.body, %while.cond
  %26 = load ptr, ptr %ptr, align 8
  %27 = load i64, ptr %26, align 8
  %tobool30.not = icmp eq i64 %27, 0
  br i1 %tobool30.not, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end29
  %28 = load ptr, ptr %frame.addr, align 8
  %fields31 = getelementptr inbounds %struct.id3_frame, ptr %28, i64 0, i32 10
  %29 = load ptr, ptr %fields31, align 8
  %arrayidx32 = getelementptr inbounds %union.id3_field, ptr %29, i64 1
  %30 = load ptr, ptr %ptr, align 8
  %call33 = call i32 @id3_field_addstring(ptr noundef nonnull %arrayidx32, ptr noundef %30) #4
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %fail, label %if.end38

fail:                                             ; preds = %land.lhs.true, %if.end22, %if.end3, %do.end
  store i32 -1, ptr %result, align 4
  br label %if.end38

if.end38:                                         ; preds = %while.end29, %land.lhs.true, %fail
  %31 = load ptr, ptr %string, align 8
  %tobool39.not = icmp eq ptr %31, null
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end38
  %32 = load ptr, ptr %string, align 8
  call void @free(ptr noundef %32) #4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38
  %33 = load i32, ptr %result, align 4
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @hash(ptr noundef %str, i32 noundef %len) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %hval = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 0, ptr %hval, align 4
  switch i32 %len, label %sw.bb [
    i32 1, label %sw.bb14
    i32 3, label %sw.bb2
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %0 = load ptr, ptr %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 3
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr %hval, align 4
  %add = add nsw i32 %3, %conv
  store i32 %add, ptr %hval, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry
  %4 = load ptr, ptr %str.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx3, align 1
  %idxprom4 = zext i8 %5 to i64
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom4
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i32, ptr %hval, align 4
  %add7 = add nsw i32 %7, %conv6
  store i32 %add7, ptr %hval, align 4
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb2, %entry
  %8 = load ptr, ptr %str.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx9, align 1
  %idxprom10 = zext i8 %9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom10
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %11 = load i32, ptr %hval, align 4
  %add13 = add nsw i32 %11, %conv12
  store i32 %add13, ptr %hval, align 4
  br label %sw.bb14

sw.bb14:                                          ; preds = %entry, %sw.bb8
  %12 = load ptr, ptr %str.addr, align 8
  %13 = load i8, ptr %12, align 1
  %idxprom16 = zext i8 %13 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr @hash.asso_values, i64 0, i64 %idxprom16
  %14 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %15 = load i32, ptr %hval, align 4
  %add19 = add nsw i32 %15, %conv18
  store i32 %add19, ptr %hval, align 4
  %16 = load i32, ptr %hval, align 4
  ret i32 %16
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @id3_compat_fixup(ptr noundef %tag) #0 {
entry:
  %tag.addr = alloca ptr, align 8
  %frame = alloca ptr, align 8
  %index = alloca i32, align 4
  %timestamp = alloca [17 x i64], align 8
  %result = alloca i32, align 4
  %id = alloca ptr, align 8
  %data = alloca ptr, align 8
  %length = alloca i64, align 8
  %string = alloca ptr, align 8
  %strings = alloca ptr, align 8
  store ptr %tag, ptr %tag.addr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %timestamp, i8 0, i64 136, i1 false)
  store i32 0, ptr %result, align 4
  store i32 0, ptr %index, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end27, %land.lhs.true15, %if.end83, %if.then36, %entry
  %0 = load ptr, ptr %tag.addr, align 8
  %1 = load i32, ptr %index, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %index, align 4
  %call = call ptr @id3_tag_findframe(ptr noundef %0, ptr noundef nonnull @.str.127, i32 noundef %1) #4
  store ptr %call, ptr %frame, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %frame, align 8
  %fields = getelementptr inbounds %struct.id3_frame, ptr %2, i64 0, i32 10
  %3 = load ptr, ptr %fields, align 8
  %call1 = call ptr @id3_field_getframeid(ptr noundef %3) #4
  store ptr %call1, ptr %id, align 8
  %4 = load ptr, ptr %id, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then, label %do.end

if.then:                                          ; preds = %while.body
  call void @abort() #5
  unreachable

do.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %id, align 8
  %call3 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.123) #4
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %6 = load ptr, ptr %id, align 8
  %call4 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.128) #4
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end19, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %id, align 8
  %call7 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.124) #4
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end19, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %8 = load ptr, ptr %id, align 8
  %call10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.129) #4
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end19, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %9 = load ptr, ptr %id, align 8
  %call13 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.113) #4
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %10 = load ptr, ptr %id, align 8
  %call16 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(5) @.str.130) #4
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %while.cond, !llvm.loop !10

if.end19:                                         ; preds = %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %land.lhs.true6, %land.lhs.true, %do.end
  %11 = load ptr, ptr %frame, align 8
  %fields20 = getelementptr inbounds %struct.id3_frame, ptr %11, i64 0, i32 10
  %12 = load ptr, ptr %fields20, align 8
  %arrayidx21 = getelementptr inbounds %union.id3_field, ptr %12, i64 1
  %call22 = call ptr @id3_field_getbinarydata(ptr noundef nonnull %arrayidx21, ptr noundef nonnull %length) #4
  store ptr %call22, ptr %data, align 8
  %13 = load ptr, ptr %data, align 8
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %if.then25, label %do.end27

if.then25:                                        ; preds = %if.end19
  call void @abort() #5
  unreachable

do.end27:                                         ; preds = %if.end19
  %14 = load i64, ptr %length, align 8
  %cmp28 = icmp eq i64 %14, 0
  br i1 %cmp28, label %while.cond, label %if.end30, !llvm.loop !10

if.end30:                                         ; preds = %do.end27
  %15 = load ptr, ptr %data, align 8
  %16 = load i64, ptr %length, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %16
  %call31 = call i64 @id3_parse_uint(ptr noundef nonnull %data, i32 noundef 1) #4
  %conv = trunc i64 %call31 to i32
  %17 = load ptr, ptr %data, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call32 = call ptr @id3_parse_string(ptr noundef nonnull %data, i64 noundef %sub.ptr.sub, i32 noundef %conv, i32 noundef 0) #4
  store ptr %call32, ptr %string, align 8
  %call33 = call i64 @id3_ucs4_length(ptr noundef %call32) #4
  %cmp34 = icmp ult i64 %call33, 4
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  %18 = load ptr, ptr %string, align 8
  call void @free(ptr noundef %18) #4
  br label %while.cond, !llvm.loop !10

if.end37:                                         ; preds = %if.end30
  %19 = load ptr, ptr %id, align 8
  %call38 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(5) @.str.123) #4
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37
  %20 = load ptr, ptr %id, align 8
  %call41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(5) @.str.128) #4
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %lor.lhs.false, %if.end37
  %21 = load ptr, ptr %string, align 8
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %timestamp, align 8
  %arrayidx47 = getelementptr inbounds i64, ptr %21, i64 1
  %23 = load i64, ptr %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 1
  store i64 %23, ptr %arrayidx48, align 8
  %24 = load ptr, ptr %string, align 8
  %arrayidx49 = getelementptr inbounds i64, ptr %24, i64 2
  %25 = load i64, ptr %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 2
  store i64 %25, ptr %arrayidx50, align 8
  %arrayidx51 = getelementptr inbounds i64, ptr %24, i64 3
  %26 = load i64, ptr %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 3
  store i64 %26, ptr %arrayidx52, align 8
  br label %if.end83

if.else:                                          ; preds = %lor.lhs.false
  %27 = load ptr, ptr %id, align 8
  %call53 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.124) #4
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then60, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.else
  %28 = load ptr, ptr %id, align 8
  %call57 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(5) @.str.129) #4
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.else71

if.then60:                                        ; preds = %lor.lhs.false56, %if.else
  %arrayidx61 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 4
  store i64 45, ptr %arrayidx61, align 8
  %29 = load ptr, ptr %string, align 8
  %arrayidx62 = getelementptr inbounds i64, ptr %29, i64 2
  %30 = load i64, ptr %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 5
  store i64 %30, ptr %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i64, ptr %29, i64 3
  %31 = load i64, ptr %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 6
  store i64 %31, ptr %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 7
  store i64 45, ptr %arrayidx66, align 8
  %32 = load ptr, ptr %string, align 8
  %33 = load i64, ptr %32, align 8
  %arrayidx68 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 8
  store i64 %33, ptr %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i64, ptr %32, i64 1
  %34 = load i64, ptr %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 9
  store i64 %34, ptr %arrayidx70, align 8
  br label %if.end83

if.else71:                                        ; preds = %lor.lhs.false56
  %arrayidx72 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 10
  store i64 84, ptr %arrayidx72, align 8
  %35 = load ptr, ptr %string, align 8
  %36 = load i64, ptr %35, align 8
  %arrayidx74 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 11
  store i64 %36, ptr %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i64, ptr %35, i64 1
  %37 = load i64, ptr %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 12
  store i64 %37, ptr %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 13
  store i64 58, ptr %arrayidx77, align 8
  %38 = load ptr, ptr %string, align 8
  %arrayidx78 = getelementptr inbounds i64, ptr %38, i64 2
  %39 = load i64, ptr %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 14
  store i64 %39, ptr %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i64, ptr %38, i64 3
  %40 = load i64, ptr %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds [17 x i64], ptr %timestamp, i64 0, i64 15
  store i64 %40, ptr %arrayidx81, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then60, %if.else71, %if.then44
  %41 = load ptr, ptr %string, align 8
  call void @free(ptr noundef %41) #4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %42 = load i64, ptr %timestamp, align 8
  %tobool85.not = icmp eq i64 %42, 0
  br i1 %tobool85.not, label %if.end111, label %if.then86

if.then86:                                        ; preds = %while.end
  %call87 = call ptr @id3_frame_new(ptr noundef nonnull @.str.131) #4
  store ptr %call87, ptr %frame, align 8
  %cmp88 = icmp eq ptr %call87, null
  br i1 %cmp88, label %fail, label %if.end91

if.end91:                                         ; preds = %if.then86
  store ptr %timestamp, ptr %strings, align 8
  %43 = load ptr, ptr %frame, align 8
  %fields92 = getelementptr inbounds %struct.id3_frame, ptr %43, i64 0, i32 10
  %44 = load ptr, ptr %fields92, align 8
  %call94 = call i32 @id3_field_settextencoding(ptr noundef %44, i32 noundef 0) #4
  %cmp95 = icmp eq i32 %call94, -1
  br i1 %cmp95, label %if.then107, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end91
  %45 = load ptr, ptr %frame, align 8
  %fields98 = getelementptr inbounds %struct.id3_frame, ptr %45, i64 0, i32 10
  %46 = load ptr, ptr %fields98, align 8
  %arrayidx99 = getelementptr inbounds %union.id3_field, ptr %46, i64 1
  %call100 = call i32 @id3_field_setstrings(ptr noundef nonnull %arrayidx99, i32 noundef 1, ptr noundef nonnull %strings) #4
  %cmp101 = icmp eq i32 %call100, -1
  br i1 %cmp101, label %if.then107, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %lor.lhs.false97
  %47 = load ptr, ptr %tag.addr, align 8
  %48 = load ptr, ptr %frame, align 8
  %call104 = call i32 @id3_tag_attachframe(ptr noundef %47, ptr noundef %48) #4
  %cmp105 = icmp eq i32 %call104, -1
  br i1 %cmp105, label %if.then107, label %if.end111

if.then107:                                       ; preds = %lor.lhs.false103, %lor.lhs.false97, %if.end91
  %49 = load ptr, ptr %frame, align 8
  call void @id3_frame_delete(ptr noundef %49) #4
  br label %fail

fail:                                             ; preds = %if.then86, %if.then107
  store i32 -1, ptr %result, align 4
  br label %if.end111

if.end111:                                        ; preds = %while.end, %lor.lhs.false103, %fail
  %50 = load i32, ptr %result, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @id3_tag_findframe(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @id3_field_getframeid(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @abort() #3

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare ptr @id3_field_getbinarydata(ptr noundef, ptr noundef) #1

declare i64 @id3_parse_uint(ptr noundef, i32 noundef) #1

declare ptr @id3_parse_string(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i64 @id3_ucs4_length(ptr noundef) #1

declare void @free(ptr noundef) #1

declare ptr @id3_frame_new(ptr noundef) #1

declare i32 @id3_field_settextencoding(ptr noundef, i32 noundef) #1

declare i32 @id3_field_setstrings(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @id3_tag_attachframe(ptr noundef, ptr noundef) #1

declare void @id3_frame_delete(ptr noundef) #1

declare i32 @id3_field_parse(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @id3_field_addstring(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #3 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
