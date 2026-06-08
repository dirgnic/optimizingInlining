; ModuleID = './source_snapshot/public_repos/mibench/consumer/typeset/lout-3.24/prg2lout.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/typeset/lout-3.24/prg2lout.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.CHAR_PAIR = type { ptr, ptr }
%struct.token_rec = type { ptr, i32, ptr, ptr, ptr, i32, [120 x ptr], [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] }
%struct.trie_node = type { [256 x ptr], [256 x ptr] }
%struct.lang_rec = type { [10 x ptr], ptr, ptr, i32, [150 x ptr], [350 x ptr] }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c">\00", align 1
@pairs = global [5 x %struct.CHAR_PAIR] [%struct.CHAR_PAIR { ptr @.str, ptr @.str.1 }, %struct.CHAR_PAIR { ptr @.str.2, ptr @.str.3 }, %struct.CHAR_PAIR { ptr @.str.4, ptr @.str.5 }, %struct.CHAR_PAIR { ptr @.str.6, ptr @.str.7 }, %struct.CHAR_PAIR zeroinitializer], align 8
@AllPrintable = global [97 x i8] c" !\22#$%&'()*+,-./0123456789:;<=>?@[\\]^_`\\{|}~ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 1
@AllPrintablePlusNL = global [98 x i8] c" !\22#$%&'()*+,-./0123456789:;<=>?@[\\]^_`\\{|}~ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0A\00", align 1
@AllPrintablePlusTab = global [98 x i8] c" !\22#$%&'()*+,-./0123456789:;<=>?@[\\]^_`\\{|}~ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\09\00", align 1
@AllPrintableTabNL = global [99 x i8] c" !\22#$%&'()*+,-./0123456789:;<=>?@[\\]^_`\\{|}~ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0A\09\00", align 1
@AllPrintableTabNLFF = global [100 x i8] c" !\22#$%&'()*+,-./0123456789:;<=>?@[\\]^_`\\{|}~ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0A\09\0C\00", align 1
@Letters = global [53 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 1
@Letter_Digit = global [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_0123456789\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"@PS\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@CStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.8, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.11, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintable, ptr @.str.12, ptr @AllPrintablePlusNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.11, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"@PC\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@CCharacterToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.13, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.15, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintable, ptr @.str.12, ptr @AllPrintable, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.15, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@EiffelStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.8, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.11, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintable, ptr @.str.16, ptr @AllPrintable, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.11, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@EiffelCharacterToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.13, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.15, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintable, ptr @.str.16, ptr @AllPrintable, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.15, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PythonDblStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.8, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.11, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintable, ptr @.str.12, ptr @AllPrintablePlusNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.11, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PythonSnglStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.8, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.15, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintable, ptr @.str.12, ptr @AllPrintablePlusNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.15, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"'''\00", align 1
@PythonTriSnglStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.8, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.17, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintableTabNL, ptr @.str.12, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.17, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [4 x i8] c"\22\22\22\00", align 1
@PythonTriDblStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.8, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.18, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintableTabNL, ptr @.str.12, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.18, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"@PI\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"@PK\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@IdentifierToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ [53 x ptr], [67 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.19, i32 1, ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 0, [4 x i8] undef, <{ [53 x ptr], [67 x ptr] }> <{ [53 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], [67 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @Letter_Digit, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.75 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"@PN\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"0123456789.eE\00", align 1
@NumberToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ [10 x ptr], [110 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.75, i32 1, ptr @.str.76, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ [10 x ptr], [110 x ptr] }> <{ [10 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], [110 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.87, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.88 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"*/\00", align 1
@CCommentToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.88, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.89, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintableTabNLFF, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.90, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.91 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@CPPCommentToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.88, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.91, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.92 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@EiffelCommentToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.88, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.92, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.93, ptr @.str.15, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.94 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@BlueCommentToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, [118 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.88, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, ptr, [118 x ptr] }> <{ ptr @.str.94, ptr @.str.92, [118 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.93, ptr @.str.15, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.95 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@PythonCommentToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.88, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.95, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.96 = private unnamed_addr constant [12 x i8] c"Lout escape\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"/*@\00", align 1
@CCommentEscapeToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.96, i32 4, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.97, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintableTabNLFF, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.90, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.98 = private unnamed_addr constant [4 x i8] c"//@\00", align 1
@CPPCommentEscapeToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.96, i32 4, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.98, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.99 = private unnamed_addr constant [4 x i8] c"--@\00", align 1
@EiffelCommentEscapeToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.96, i32 4, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.99, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.100 = private unnamed_addr constant [4 x i8] c"==@\00", align 1
@BlueCommentEscapeToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, [118 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.96, i32 4, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, ptr, [118 x ptr] }> <{ ptr @.str.100, ptr @.str.99, [118 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.101 = private unnamed_addr constant [4 x i8] c"@PO\00", align 1
@HashToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.95, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.95, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.102 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@ExclamationToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.102, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.102, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PercentToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.16, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.16, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.103 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@HatToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.103, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.103, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.104 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@AmpersandToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.104, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.104, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.105 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SlashToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.105, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.105, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.106 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"arrowright @A @PO\00", align 1
@ArrowToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.106, i32 1, ptr @.str.107, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.106, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@BackSlashToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.12, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.12, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@LeftParenToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@RightParenToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.1, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.1, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.108 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"plus @A @PO\00", align 1
@PlusToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.108, i32 1, ptr @.str.109, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.108, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.110 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"equal @A @PO\00", align 1
@EqualToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.110, i32 1, ptr @.str.111, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.110, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@LeftBraceToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.2, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.2, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@RightBraceToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.3, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.3, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.112 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@BarToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.112, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.112, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.113 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@CircumToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.113, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.113, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@LeftBracketToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.4, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.4, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@RightBracketToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.5, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.5, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.114 = private unnamed_addr constant [2 x i8] c";\00", align 1
@SemicolonToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.114, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.114, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.115 = private unnamed_addr constant [2 x i8] c":\00", align 1
@ColonToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.115, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.115, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.116 = private unnamed_addr constant [12 x i8] c"less @A @PO\00", align 1
@LessToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.6, i32 1, ptr @.str.116, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.6, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.117 = private unnamed_addr constant [15 x i8] c"greater @A @PO\00", align 1
@GreaterToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.7, i32 1, ptr @.str.117, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.7, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.118 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@QuestionToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.118, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.118, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.119 = private unnamed_addr constant [2 x i8] c",\00", align 1
@CommaToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.119, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.119, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.120 = private unnamed_addr constant [2 x i8] c".\00", align 1
@DotToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.120, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.120, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.121 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"lessequal @A @PO\00", align 1
@LessEqualToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.121, i32 1, ptr @.str.122, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.121, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.123 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"greaterequal @A @PO\00", align 1
@GreaterEqualToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.123, i32 1, ptr @.str.124, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.123, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.125 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"notequal @A @PO\00", align 1
@CNotEqualToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.125, i32 1, ptr @.str.126, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.125, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.127 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@EiffelNotEqualToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.127, i32 1, ptr @.str.126, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.127, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.128 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@BlueNotEqualToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.128, i32 1, ptr @.str.126, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.128, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.129 = private unnamed_addr constant [3 x i8] c":=\00", align 1
@AssignToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.129, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.129, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.130 = private unnamed_addr constant [3 x i8] c"?=\00", align 1
@QuestionAssignToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.130, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.130, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.131 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@DollarToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.131, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.131, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.132 = private unnamed_addr constant [3 x i8] c"=>\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"implies @A @PO\00", align 1
@ImpliesToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.132, i32 1, ptr @.str.133, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.132, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.134 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"{@PA}\00", align 1
@StarToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.134, i32 6, ptr @.str.135, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.134, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.136 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"{@PM}\00", align 1
@MinusToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.136, i32 6, ptr @.str.137, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.136, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.138 = private unnamed_addr constant [6 x i8] c"{@PD}\00", align 1
@EiffelDotToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.120, i32 6, ptr @.str.138, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.120, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.139 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@PythonPowerToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.139, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.139, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.140 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@PythonBitLeftShiftToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.140, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.140, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.141 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@PythonBitRightShiftToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.141, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.141, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PythonBacktickToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.93, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.93, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.142 = private unnamed_addr constant [10 x i8] c"''-string\00", align 1
@PerlSingleQuoteStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.142, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.15, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.15, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.143 = private unnamed_addr constant [10 x i8] c"\22\22-string\00", align 1
@PerlDoubleQuoteStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.143, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.11, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.11, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.144 = private unnamed_addr constant [10 x i8] c"``-string\00", align 1
@PerlBackQuoteStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.144, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.93, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.93, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.145 = private unnamed_addr constant [14 x i8] c"q-type string\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"qq\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"qx\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"qw\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@PerlQTypeStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, [114 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.145, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, [114 x ptr] }> <{ ptr @.str.64, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.60, [114 x ptr] zeroinitializer }>, [30 x ptr] [ptr @.str.105, ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, ptr @.str.102, ptr @.str.16, ptr @.str.95, ptr @.str.112, ptr @.str.119, ptr @.str.115, ptr @.str.114, ptr @.str.131, ptr @.str.11, ptr @.str.103, ptr @.str.104, ptr @.str.134, ptr @.str.136, ptr @.str.110, ptr @.str.108, ptr @.str.113, ptr @.str.15, ptr @.str.150, ptr @.str.118, ptr @.str.120, ptr @.str.93, ptr null, ptr null, ptr null, ptr null], [30 x ptr] [ptr @.str.10, ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr null, ptr null, ptr null, ptr null], [30 x ptr] [ptr @.str.105, ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.7, ptr @.str.102, ptr @.str.16, ptr @.str.95, ptr @.str.112, ptr @.str.119, ptr @.str.115, ptr @.str.114, ptr @.str.131, ptr @.str.11, ptr @.str.103, ptr @.str.104, ptr @.str.134, ptr @.str.136, ptr @.str.110, ptr @.str.108, ptr @.str.113, ptr @.str.15, ptr @.str.150, ptr @.str.118, ptr @.str.120, ptr @.str.93, ptr null, ptr null, ptr null, ptr null], ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.151 = private unnamed_addr constant [14 x i8] c"s-type string\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@PerlSTypeStringToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, [117 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.151, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, ptr, ptr, [117 x ptr] }> <{ ptr @.str.66, ptr @.str.72, ptr @.str.152, [117 x ptr] zeroinitializer }>, [30 x ptr] [ptr @.str.105, ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, ptr @.str.102, ptr @.str.16, ptr @.str.95, ptr @.str.112, ptr @.str.119, ptr @.str.115, ptr @.str.114, ptr @.str.131, ptr @.str.11, ptr @.str.103, ptr @.str.104, ptr @.str.134, ptr @.str.136, ptr @.str.110, ptr @.str.108, ptr @.str.113, ptr @.str.15, ptr @.str.150, ptr @.str.118, ptr @.str.120, ptr @.str.93, ptr null, ptr null, ptr null, ptr null], [30 x ptr] [ptr @.str.10, ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr null, ptr null, ptr null, ptr null], [30 x ptr] [ptr @.str.105, ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.7, ptr @.str.102, ptr @.str.16, ptr @.str.95, ptr @.str.112, ptr @.str.119, ptr @.str.115, ptr @.str.114, ptr @.str.131, ptr @.str.11, ptr @.str.103, ptr @.str.104, ptr @.str.134, ptr @.str.136, ptr @.str.110, ptr @.str.108, ptr @.str.113, ptr @.str.15, ptr @.str.150, ptr @.str.118, ptr @.str.120, ptr @.str.93, ptr null, ptr null, ptr null, ptr null], ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 1, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.153 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.154 = private unnamed_addr constant [21 x i8] c"@PO{\22(\22} @PS{\22/\22}@PS\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"@PS{\22/\22}\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c" /\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"\09/\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"  /\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c" \09/\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"\09 /\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"\09\09/\00", align 1
@PerlRegExpLPar = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.154, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.162 = private unnamed_addr constant [21 x i8] c"@PO{\22=\22} @PS{\22/\22}@PS\00", align 1
@PerlRegExpEq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.162, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.110, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.163 = private unnamed_addr constant [22 x i8] c"@PO{\22=~\22} @PS{\22/\22}@PS\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"=~\00", align 1
@PerlRegExpMatch = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.163, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.164, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.165 = private unnamed_addr constant [22 x i8] c"@PO{\22!~\22} @PS{\22/\22}@PS\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"!~\00", align 1
@PerlRegExpNoMatch = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.165, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.166, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.167 = private unnamed_addr constant [23 x i8] c"@PK{split} @PS{\22/\22}@PS\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@PerlRegExpSplit = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.167, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.168, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.169 = private unnamed_addr constant [20 x i8] c"@PK{if} @PS{\22/\22}@PS\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@PerlRegExpIf = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.169, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.170, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.171 = private unnamed_addr constant [21 x i8] c"@PK{and} @PS{\22/\22}@PS\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@PerlRegExpAnd = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.171, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.172, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.173 = private unnamed_addr constant [22 x i8] c"@PO{\22&&\22} @PS{\22/\22}@PS\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@PerlRegExpAnd2 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.173, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.174, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.175 = private unnamed_addr constant [20 x i8] c"@PK{or} @PS{\22/\22}@PS\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@PerlRegExpOr = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.175, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.176, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.177 = private unnamed_addr constant [22 x i8] c"@PO{\22||\22} @PS{\22/\22}@PS\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@PerlRegExpOr2 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.177, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.178, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.179 = private unnamed_addr constant [21 x i8] c"@PK{xor} @PS{\22/\22}@PS\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@PerlRegExpXor = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.179, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.180, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.181 = private unnamed_addr constant [21 x i8] c"@PK{not} @PS{\22/\22}@PS\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@PerlRegExpNot = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.181, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.182, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.183 = private unnamed_addr constant [21 x i8] c"@PO{\22!\22} @PS{\22/\22}@PS\00", align 1
@PerlRegExpNot2 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.183, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.102, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.184 = private unnamed_addr constant [24 x i8] c"@PK{unless} @PS{\22/\22}@PS\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"unless\00", align 1
@PerlRegExpUnless = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.184, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.185, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.186 = private unnamed_addr constant [21 x i8] c"@PK{for} @PS{\22/\22}@PS\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@PerlRegExpFor = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.186, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.187, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.188 = private unnamed_addr constant [25 x i8] c"@PK{foreach} @PS{\22/\22}@PS\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@PerlRegExpForEach = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.188, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.189, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.190 = private unnamed_addr constant [23 x i8] c"@PK{while} @PS{\22/\22}@PS\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@PerlRegExpWhile = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 2, ptr @.str.190, ptr @.str.10, ptr @.str.155, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.191, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [23 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr] }> <{ ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, ptr @.str.105, [23 x ptr] zeroinitializer }>, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlRegExpStartLineToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.153, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.105, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.12, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.105, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.192 = private unnamed_addr constant [14 x i8] c"here-document\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"<<EOT\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"EOT\0A\00", align 1
@HereEOTuq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.193, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.194, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.195 = private unnamed_addr constant [8 x i8] c"<<\22EOT\22\00", align 1
@HereEOTdq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.195, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.194, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.196 = private unnamed_addr constant [8 x i8] c"<<'EOT'\00", align 1
@HereEOTfq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.196, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.194, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.197 = private unnamed_addr constant [8 x i8] c"<<`EOT`\00", align 1
@HereEOTbq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.197, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.194, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.198 = private unnamed_addr constant [6 x i8] c"<<EOF\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"EOF\0A\00", align 1
@HereEOFuq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.198, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.199, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.200 = private unnamed_addr constant [8 x i8] c"<<\22EOF\22\00", align 1
@HereEOFdq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.200, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.199, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.201 = private unnamed_addr constant [8 x i8] c"<<'EOF'\00", align 1
@HereEOFfq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.201, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.199, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.202 = private unnamed_addr constant [8 x i8] c"<<`EOF`\00", align 1
@HereEOFbq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.202, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.199, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.203 = private unnamed_addr constant [6 x i8] c"<<END\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"END\0A\00", align 1
@HereENDuq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.203, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.204, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.205 = private unnamed_addr constant [8 x i8] c"<<\22END\22\00", align 1
@HereENDdq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.205, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.204, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.206 = private unnamed_addr constant [8 x i8] c"<<'END'\00", align 1
@HereENDfq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.206, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.204, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.207 = private unnamed_addr constant [8 x i8] c"<<`END`\00", align 1
@HereENDbq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.207, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.204, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.208 = private unnamed_addr constant [4 x i8] c"<< \00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HereBLAuq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.208, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.210 = private unnamed_addr constant [5 x i8] c"<<\22\22\00", align 1
@HereBLAdq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.210, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.211 = private unnamed_addr constant [5 x i8] c"<<''\00", align 1
@HereBLAfq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.211, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.212 = private unnamed_addr constant [5 x i8] c"<<``\00", align 1
@HereBLAbq = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.192, i32 1, ptr @.str.9, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.212, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.213 = private unnamed_addr constant [3 x i8] c"%A\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"%B\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"%C\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"%D\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"%E\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"%F\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"%G\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"%H\00", align 1
@.str.221 = private unnamed_addr constant [3 x i8] c"%I\00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c"%J\00", align 1
@.str.223 = private unnamed_addr constant [3 x i8] c"%K\00", align 1
@.str.224 = private unnamed_addr constant [3 x i8] c"%L\00", align 1
@.str.225 = private unnamed_addr constant [3 x i8] c"%M\00", align 1
@.str.226 = private unnamed_addr constant [3 x i8] c"%N\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"%O\00", align 1
@.str.228 = private unnamed_addr constant [3 x i8] c"%P\00", align 1
@.str.229 = private unnamed_addr constant [3 x i8] c"%Q\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"%R\00", align 1
@.str.231 = private unnamed_addr constant [3 x i8] c"%S\00", align 1
@.str.232 = private unnamed_addr constant [3 x i8] c"%T\00", align 1
@.str.233 = private unnamed_addr constant [3 x i8] c"%U\00", align 1
@.str.234 = private unnamed_addr constant [3 x i8] c"%V\00", align 1
@.str.235 = private unnamed_addr constant [3 x i8] c"%W\00", align 1
@.str.236 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"%Y\00", align 1
@.str.238 = private unnamed_addr constant [3 x i8] c"%Z\00", align 1
@.str.239 = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.240 = private unnamed_addr constant [3 x i8] c"%b\00", align 1
@.str.241 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.243 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.244 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"%h\00", align 1
@.str.247 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.248 = private unnamed_addr constant [3 x i8] c"%j\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"%k\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"%l\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"%n\00", align 1
@.str.253 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.255 = private unnamed_addr constant [3 x i8] c"%q\00", align 1
@.str.256 = private unnamed_addr constant [3 x i8] c"%r\00", align 1
@.str.257 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.258 = private unnamed_addr constant [3 x i8] c"%t\00", align 1
@.str.259 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c"%v\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"%w\00", align 1
@.str.262 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.263 = private unnamed_addr constant [3 x i8] c"%y\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"%_\00", align 1
@PerlIdentifierToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ [108 x ptr], [12 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.19, i32 1, ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 0, [4 x i8] undef, <{ [108 x ptr], [12 x ptr] }> <{ [108 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.131, ptr @.str.150, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265], [12 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @Letter_Digit, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.266 = private unnamed_addr constant [17 x i8] c"special variable\00", align 1
@.str.267 = private unnamed_addr constant [3 x i8] c"$&\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"$`\00", align 1
@.str.269 = private unnamed_addr constant [3 x i8] c"$'\00", align 1
@.str.270 = private unnamed_addr constant [3 x i8] c"$+\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c"@+\00", align 1
@.str.272 = private unnamed_addr constant [3 x i8] c"$*\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"$.\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"$/\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"$|\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"$,\00", align 1
@.str.277 = private unnamed_addr constant [3 x i8] c"$\\\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"$\22\00", align 1
@.str.279 = private unnamed_addr constant [3 x i8] c"$;\00", align 1
@.str.280 = private unnamed_addr constant [3 x i8] c"$#\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"$%\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"$=\00", align 1
@.str.283 = private unnamed_addr constant [3 x i8] c"$-\00", align 1
@.str.284 = private unnamed_addr constant [3 x i8] c"@-\00", align 1
@.str.285 = private unnamed_addr constant [3 x i8] c"$~\00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"$^\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"$:\00", align 1
@.str.288 = private unnamed_addr constant [4 x i8] c"$^L\00", align 1
@.str.289 = private unnamed_addr constant [4 x i8] c"$^A\00", align 1
@.str.290 = private unnamed_addr constant [3 x i8] c"$?\00", align 1
@.str.291 = private unnamed_addr constant [3 x i8] c"$!\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"$^E\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"$@\00", align 1
@.str.294 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"$<\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"$>\00", align 1
@.str.297 = private unnamed_addr constant [3 x i8] c"$(\00", align 1
@.str.298 = private unnamed_addr constant [3 x i8] c"$)\00", align 1
@.str.299 = private unnamed_addr constant [3 x i8] c"$0\00", align 1
@.str.300 = private unnamed_addr constant [3 x i8] c"$[\00", align 1
@.str.301 = private unnamed_addr constant [3 x i8] c"$]\00", align 1
@.str.302 = private unnamed_addr constant [4 x i8] c"$^C\00", align 1
@.str.303 = private unnamed_addr constant [4 x i8] c"$^D\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"$^F\00", align 1
@.str.305 = private unnamed_addr constant [4 x i8] c"$^H\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"%^H\00", align 1
@.str.307 = private unnamed_addr constant [4 x i8] c"$^I\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"$^M\00", align 1
@.str.309 = private unnamed_addr constant [4 x i8] c"$^O\00", align 1
@.str.310 = private unnamed_addr constant [4 x i8] c"$^P\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"$^R\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"$^S\00", align 1
@.str.313 = private unnamed_addr constant [4 x i8] c"$^T\00", align 1
@.str.314 = private unnamed_addr constant [4 x i8] c"$^V\00", align 1
@.str.315 = private unnamed_addr constant [4 x i8] c"$^W\00", align 1
@.str.316 = private unnamed_addr constant [17 x i8] c"${^WARNING_BITS}\00", align 1
@.str.317 = private unnamed_addr constant [22 x i8] c"${^WIDE_SYSTEM_CALLS}\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"$^X\00", align 1
@PerlSpecialIdentifierToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ [52 x ptr], [68 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.266, i32 1, ptr @.str.20, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ [52 x ptr], [68 x ptr] }> <{ [52 x ptr] [ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318], [68 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.319 = private unnamed_addr constant [15 x i8] c"0123456789.eE_\00", align 1
@PerlLiteralNumberToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ [10 x ptr], [110 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.75, i32 1, ptr @.str.76, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ [10 x ptr], [110 x ptr] }> <{ [10 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], [110 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.319, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.320 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.321 = private unnamed_addr constant [23 x i8] c"0123456789AaBbCcDdEeFf\00", align 1
@PerlHexNumberToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.75, i32 1, ptr @.str.76, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.320, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.321, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.322 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.323 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@PerlBinaryNumberToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.75, i32 1, ptr @.str.76, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.322, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.323, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlCommentToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.88, i32 1, ptr @.str.14, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.95, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.324 = private unnamed_addr constant [3 x i8] c"#@\00", align 1
@PerlCommentEscapeToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.96, i32 4, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.324, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.325 = private unnamed_addr constant [9 x i8] c"perl-pod\00", align 1
@.str.326 = private unnamed_addr constant [9 x i8] c"@DP @Pod\00", align 1
@.str.327 = private unnamed_addr constant [5 x i8] c"@DP\0A\00", align 1
@.str.328 = private unnamed_addr constant [5 x i8] c"=pod\00", align 1
@.str.329 = private unnamed_addr constant [5 x i8] c"=cut\00", align 1
@PerlPodToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, [118 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.325, i32 4, ptr @.str.326, ptr @.str.10, ptr @.str.327, i32 1, [4 x i8] undef, <{ ptr, ptr, [118 x ptr] }> <{ ptr @.str.110, ptr @.str.328, [118 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.329, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.330 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@PerlIncrementToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.330, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.330, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlDecrementToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.92, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.92, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlExponentiateToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.139, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.139, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlMatchToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.164, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.164, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlNotMatchToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.166, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.166, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlEqualToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.94, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.94, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlAssignToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.110, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.110, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlBitLeftShiftToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.140, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.140, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlBitRightShiftToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.141, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.141, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.331 = private unnamed_addr constant [4 x i8] c"<=>\00", align 1
@PerlSpaceshipToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.331, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.331, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlAndToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.174, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.174, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PerlOrToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.178, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.178, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.332 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@PerlRange2Token = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.332, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.332, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.333 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@PerlRange3Token = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.333, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.333, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.334 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.335 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.336 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@PerlFileTestrToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.334, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.334, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.337 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@PerlFileTestwToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.337, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.337, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.338 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@PerlFileTestxToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.338, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.338, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.339 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@PerlFileTestoToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.339, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.339, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.340 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@PerlFileTestRToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.340, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.340, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.341 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@PerlFileTestWToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.341, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.341, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.342 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@PerlFileTestXToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.342, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.342, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.343 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@PerlFileTestOToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.343, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.343, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.344 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@PerlFileTesteToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.344, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.344, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.345 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@PerlFileTestzToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.345, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.345, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.346 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@PerlFileTestsToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.346, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.346, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.347 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@PerlFileTestfToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.347, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.347, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.348 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@PerlFileTestdToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.348, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.348, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.349 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@PerlFileTestlToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.349, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.349, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.350 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@PerlFileTestpToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.350, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.350, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.351 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@PerlFileTestSToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.351, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.351, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.352 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@PerlFileTestbToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.352, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.352, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.353 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@PerlFileTestcToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.353, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.353, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.354 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@PerlFileTesttToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.354, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.354, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.355 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@PerlFileTestuToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.355, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.355, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.356 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@PerlFileTestgToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.356, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.356, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.357 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@PerlFileTestkToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.357, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.357, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.358 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@PerlFileTestTToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.358, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.358, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.359 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@PerlFileTestBToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.359, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.359, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.360 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@PerlFileTestMToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.360, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.360, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.361 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@PerlFileTestAToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.361, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.361, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.362 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@PerlFileTestCToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.362, i32 1, ptr @.str.101, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.362, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.363 = private unnamed_addr constant [14 x i8] c"verbatim-para\00", align 1
@.str.364 = private unnamed_addr constant [5 x i8] c"@PV \00", align 1
@PodVerbatimLineToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, [118 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.363, i32 1, ptr @.str.364, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, ptr, [118 x ptr] }> <{ ptr @.str.336, ptr @.str.335, [118 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @AllPrintablePlusTab, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.365 = private unnamed_addr constant [15 x i8] c"pod-empty-line\00", align 1
@.str.366 = private unnamed_addr constant [6 x i8] c"@PPG\0A\00", align 1
@PodEmptyLineToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.365, i32 6, ptr @.str.366, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.209, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.367 = private unnamed_addr constant [8 x i8] c"pod-cut\00", align 1
@PodIgnoreToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, [118 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.367, i32 6, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, ptr, [118 x ptr] }> <{ ptr @.str.328, ptr @.str.329, [118 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.368 = private unnamed_addr constant [7 x i8] c"=head1\00", align 1
@.str.369 = private unnamed_addr constant [5 x i8] c"@PHA\00", align 1
@.str.370 = private unnamed_addr constant [6 x i8] c"head1\00", align 1
@.str.371 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@PodHeading1Token = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, [118 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.368, i32 5, ptr @.str.369, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, ptr, [118 x ptr] }> <{ ptr @.str.368, ptr @.str.370, [118 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.209, ptr @.str.209, [28 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.371, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.372 = private unnamed_addr constant [7 x i8] c"=head2\00", align 1
@.str.373 = private unnamed_addr constant [5 x i8] c"@PHB\00", align 1
@PodHeading2Token = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.372, i32 5, ptr @.str.373, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.372, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.209, ptr @.str.209, [28 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.371, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.374 = private unnamed_addr constant [7 x i8] c"=head3\00", align 1
@.str.375 = private unnamed_addr constant [5 x i8] c"@PHC\00", align 1
@PodHeading3Token = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.374, i32 5, ptr @.str.375, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.374, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.209, ptr @.str.209, [28 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.371, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.376 = private unnamed_addr constant [6 x i8] c"=over\00", align 1
@.str.377 = private unnamed_addr constant [72 x i8] c"@RawTaggedList gap{@PLG}indent{@PLI}rightindent{@PLRI}labelwidth{@PLLW \00", align 1
@.str.378 = private unnamed_addr constant [7 x i8] c"} // {\00", align 1
@PodOverToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.376, i32 4, ptr @.str.377, ptr @.str.10, ptr @.str.378, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.376, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.379 = private unnamed_addr constant [6 x i8] c"=item\00", align 1
@.str.380 = private unnamed_addr constant [21 x i8] c"@Null //}\0A@DTI {@PLL\00", align 1
@.str.381 = private unnamed_addr constant [4 x i8] c"} {\00", align 1
@PodItemToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.380, ptr @.str.10, ptr @.str.381, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.379, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.335, ptr @.str.336, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.10, ptr @.str.10, [28 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.382 = private unnamed_addr constant [6 x i8] c"=back\00", align 1
@.str.383 = private unnamed_addr constant [21 x i8] c"@Null // }\0A@EndList\0A\00", align 1
@PodBackToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.382, i32 6, ptr @.str.383, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.382, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.384 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {*\00", align 1
@.str.385 = private unnamed_addr constant [5 x i8] c"}} {\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"=item \00", align 1
@.str.387 = private unnamed_addr constant [7 x i8] c"=item\09\00", align 1
@.str.388 = private unnamed_addr constant [8 x i8] c"=item  \00", align 1
@.str.389 = private unnamed_addr constant [8 x i8] c"=item \09\00", align 1
@.str.390 = private unnamed_addr constant [8 x i8] c"=item\09 \00", align 1
@.str.391 = private unnamed_addr constant [8 x i8] c"=item\09\09\00", align 1
@PodItemBullet = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.384, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.134, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.392 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {0\00", align 1
@PodItem0 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.392, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.77, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.393 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {1\00", align 1
@PodItem1 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.393, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.78, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.394 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {2\00", align 1
@PodItem2 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.394, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.79, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.395 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {3\00", align 1
@PodItem3 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.395, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.80, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.396 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {4\00", align 1
@PodItem4 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.396, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.81, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.397 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {5\00", align 1
@PodItem5 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.397, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.82, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.398 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {6\00", align 1
@PodItem6 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.398, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.83, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.399 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {7\00", align 1
@PodItem7 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.399, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.84, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.400 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {8\00", align 1
@PodItem8 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.400, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.85, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.401 = private unnamed_addr constant [23 x i8] c"@Null //}\0A@TI {@PLL {9\00", align 1
@PodItem9 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, [29 x ptr] }>, <{ ptr, ptr, [28 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.379, i32 5, ptr @.str.401, ptr @.str.10, ptr @.str.385, i32 1, [4 x i8] undef, <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [113 x ptr] }> <{ ptr @.str.379, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, [113 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.86, [29 x ptr] zeroinitializer }>, <{ ptr, [29 x ptr] }> <{ ptr @.str.10, [29 x ptr] zeroinitializer }>, <{ ptr, ptr, [28 x ptr] }> <{ ptr @.str.371, ptr @.str.371, [28 x ptr] zeroinitializer }>, ptr @AllPrintableTabNL, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.402 = private unnamed_addr constant [5 x i8] c"=for\00", align 1
@PodForToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.402, i32 6, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.402, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.209, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.403 = private unnamed_addr constant [7 x i8] c"=begin\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"=end\00", align 1
@PodBeginToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.403, i32 6, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.403, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.404, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.405 = private unnamed_addr constant [12 x i8] c"=begin lout\00", align 1
@.str.406 = private unnamed_addr constant [12 x i8] c"=begin Lout\00", align 1
@PodBeginLoutToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, ptr, [118 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.405, i32 4, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 1, [4 x i8] undef, <{ ptr, ptr, [118 x ptr] }> <{ ptr @.str.405, ptr @.str.406, [118 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.404, i32 1, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.407 = private unnamed_addr constant [5 x i8] c"@PFI\00", align 1
@.str.408 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1
@.str.409 = private unnamed_addr constant [6 x i8] c"<<<< \00", align 1
@.str.410 = private unnamed_addr constant [4 x i8] c" >>\00", align 1
@.str.411 = private unnamed_addr constant [5 x i8] c" >>>\00", align 1
@.str.412 = private unnamed_addr constant [6 x i8] c" >>>>\00", align 1
@PodItalicToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.30, i32 5, ptr @.str.407, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.30, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.413 = private unnamed_addr constant [5 x i8] c"@PFB\00", align 1
@PodBoldToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.23, i32 5, ptr @.str.413, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.23, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.414 = private unnamed_addr constant [8 x i8] c"@OneCol\00", align 1
@PodNoBreakToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.40, i32 5, ptr @.str.414, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.40, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.415 = private unnamed_addr constant [5 x i8] c"@PFC\00", align 1
@PodCodeToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.24, i32 5, ptr @.str.415, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.24, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.416 = private unnamed_addr constant [5 x i8] c"@PFF\00", align 1
@PodFileToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.27, i32 2, ptr @.str.416, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.27, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.417 = private unnamed_addr constant [5 x i8] c"@PFL\00", align 1
@PodLinkToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.33, i32 2, ptr @.str.417, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.33, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.418 = private unnamed_addr constant [5 x i8] c"@PFX\00", align 1
@PodIndexToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.45, i32 2, ptr @.str.418, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.45, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@PodZeroToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.47, i32 6, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.47, [119 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.6, ptr @.str.208, ptr @.str.408, ptr @.str.409, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, [26 x ptr] zeroinitializer }>, <{ ptr, ptr, ptr, ptr, [26 x ptr] }> <{ ptr @.str.7, ptr @.str.410, ptr @.str.411, ptr @.str.412, [26 x ptr] zeroinitializer }>, ptr null, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.419 = private unnamed_addr constant [4 x i8] c"E<>\00", align 1
@.str.420 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.421 = private unnamed_addr constant [3 x i8] c"E<\00", align 1
@.str.422 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@PodNumCharToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.419, i32 4, ptr @.str.420, ptr @.str.10, ptr @.str.11, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.421, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.422, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.7, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.423 = private unnamed_addr constant [6 x i8] c"E<lt>\00", align 1
@PodLessThanToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.423, i32 6, ptr @.str.6, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.423, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.424 = private unnamed_addr constant [6 x i8] c"E<gt>\00", align 1
@PodGreaterThanToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.424, i32 6, ptr @.str.7, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.424, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.425 = private unnamed_addr constant [7 x i8] c"E<sol>\00", align 1
@PodSlashToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.425, i32 6, ptr @.str.105, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.425, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.426 = private unnamed_addr constant [10 x i8] c"E<verbar>\00", align 1
@PodVerbarToken = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.426, i32 6, ptr @.str.112, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.426, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.427 = private unnamed_addr constant [7 x i8] c"E<amp>\00", align 1
@PE00 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.427, i32 6, ptr @.str.104, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.427, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.428 = private unnamed_addr constant [8 x i8] c"E<quot>\00", align 1
@.str.429 = private unnamed_addr constant [5 x i8] c"\22\\\22\22\00", align 1
@PE03 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.428, i32 6, ptr @.str.429, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.428, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.430 = private unnamed_addr constant [9 x i8] c"E<AElig>\00", align 1
@.str.431 = private unnamed_addr constant [11 x i8] c"{@Char AE}\00", align 1
@PE04 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.430, i32 6, ptr @.str.431, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.430, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.432 = private unnamed_addr constant [10 x i8] c"E<Aacute>\00", align 1
@.str.433 = private unnamed_addr constant [15 x i8] c"{@Char Aacute}\00", align 1
@PE05 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.432, i32 6, ptr @.str.433, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.432, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.434 = private unnamed_addr constant [9 x i8] c"E<Acirc>\00", align 1
@.str.435 = private unnamed_addr constant [20 x i8] c"{@Char Acircumflex}\00", align 1
@PE06 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.434, i32 6, ptr @.str.435, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.434, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.436 = private unnamed_addr constant [10 x i8] c"E<Agrave>\00", align 1
@.str.437 = private unnamed_addr constant [15 x i8] c"{@Char Agrave}\00", align 1
@PE07 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.436, i32 6, ptr @.str.437, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.436, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.438 = private unnamed_addr constant [9 x i8] c"E<Aring>\00", align 1
@.str.439 = private unnamed_addr constant [14 x i8] c"{@Char Aring}\00", align 1
@PE08 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.438, i32 6, ptr @.str.439, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.438, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.440 = private unnamed_addr constant [10 x i8] c"E<Atilde>\00", align 1
@.str.441 = private unnamed_addr constant [15 x i8] c"{@Char Atilde}\00", align 1
@PE09 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.440, i32 6, ptr @.str.441, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.440, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.442 = private unnamed_addr constant [8 x i8] c"E<Auml>\00", align 1
@.str.443 = private unnamed_addr constant [18 x i8] c"{@Char Adieresis}\00", align 1
@PE10 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.442, i32 6, ptr @.str.443, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.442, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.444 = private unnamed_addr constant [10 x i8] c"E<Ccedil>\00", align 1
@.str.445 = private unnamed_addr constant [17 x i8] c"{@Char Ccedilla}\00", align 1
@PE11 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.444, i32 6, ptr @.str.445, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.444, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.446 = private unnamed_addr constant [7 x i8] c"E<ETH>\00", align 1
@.str.447 = private unnamed_addr constant [12 x i8] c"{@Char Eth}\00", align 1
@PE12 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.446, i32 6, ptr @.str.447, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.446, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.448 = private unnamed_addr constant [10 x i8] c"E<Eacute>\00", align 1
@.str.449 = private unnamed_addr constant [15 x i8] c"{@Char Eacute}\00", align 1
@PE13 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.448, i32 6, ptr @.str.449, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.448, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.450 = private unnamed_addr constant [9 x i8] c"E<Ecirc>\00", align 1
@.str.451 = private unnamed_addr constant [20 x i8] c"{@Char Ecircumflex}\00", align 1
@PE14 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.450, i32 6, ptr @.str.451, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.450, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.452 = private unnamed_addr constant [10 x i8] c"E<Egrave>\00", align 1
@.str.453 = private unnamed_addr constant [15 x i8] c"{@Char Egrave}\00", align 1
@PE15 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.452, i32 6, ptr @.str.453, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.452, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.454 = private unnamed_addr constant [8 x i8] c"E<Euml>\00", align 1
@.str.455 = private unnamed_addr constant [18 x i8] c"{@Char Edieresis}\00", align 1
@PE16 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.454, i32 6, ptr @.str.455, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.454, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.456 = private unnamed_addr constant [10 x i8] c"E<Iacute>\00", align 1
@.str.457 = private unnamed_addr constant [15 x i8] c"{@Char Iacute}\00", align 1
@PE17 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.456, i32 6, ptr @.str.457, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.456, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.458 = private unnamed_addr constant [9 x i8] c"E<Icirc>\00", align 1
@.str.459 = private unnamed_addr constant [20 x i8] c"{@Char Icircumflex}\00", align 1
@PE18 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.458, i32 6, ptr @.str.459, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.458, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.460 = private unnamed_addr constant [10 x i8] c"E<Igrave>\00", align 1
@.str.461 = private unnamed_addr constant [15 x i8] c"{@Char Igrave}\00", align 1
@PE19 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.460, i32 6, ptr @.str.461, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.460, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.462 = private unnamed_addr constant [8 x i8] c"E<Iuml>\00", align 1
@.str.463 = private unnamed_addr constant [18 x i8] c"{@Char Idieresis}\00", align 1
@PE20 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.462, i32 6, ptr @.str.463, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.462, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.464 = private unnamed_addr constant [10 x i8] c"E<Ntilde>\00", align 1
@.str.465 = private unnamed_addr constant [15 x i8] c"{@Char Ntilde}\00", align 1
@PE21 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.464, i32 6, ptr @.str.465, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.464, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.466 = private unnamed_addr constant [10 x i8] c"E<Oacute>\00", align 1
@.str.467 = private unnamed_addr constant [15 x i8] c"{@Char Oacute}\00", align 1
@PE22 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.466, i32 6, ptr @.str.467, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.466, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.468 = private unnamed_addr constant [9 x i8] c"E<Ocirc>\00", align 1
@.str.469 = private unnamed_addr constant [20 x i8] c"{@Char Ocircumflex}\00", align 1
@PE23 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.468, i32 6, ptr @.str.469, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.468, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.470 = private unnamed_addr constant [10 x i8] c"E<Ograve>\00", align 1
@.str.471 = private unnamed_addr constant [15 x i8] c"{@Char Ograve}\00", align 1
@PE24 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.470, i32 6, ptr @.str.471, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.470, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.472 = private unnamed_addr constant [10 x i8] c"E<Oslash>\00", align 1
@.str.473 = private unnamed_addr constant [15 x i8] c"{@Char Oslash}\00", align 1
@PE25 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.472, i32 6, ptr @.str.473, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.472, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.474 = private unnamed_addr constant [10 x i8] c"E<Otilde>\00", align 1
@.str.475 = private unnamed_addr constant [15 x i8] c"{@Char Otilde}\00", align 1
@PE26 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.474, i32 6, ptr @.str.475, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.474, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.476 = private unnamed_addr constant [8 x i8] c"E<Ouml>\00", align 1
@.str.477 = private unnamed_addr constant [18 x i8] c"{@Char Odieresis}\00", align 1
@PE27 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.476, i32 6, ptr @.str.477, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.476, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.478 = private unnamed_addr constant [9 x i8] c"E<THORN>\00", align 1
@.str.479 = private unnamed_addr constant [14 x i8] c"{@Char Thorn}\00", align 1
@PE28 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.478, i32 6, ptr @.str.479, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.478, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.480 = private unnamed_addr constant [10 x i8] c"E<Uacute>\00", align 1
@.str.481 = private unnamed_addr constant [15 x i8] c"{@Char Uacute}\00", align 1
@PE29 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.480, i32 6, ptr @.str.481, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.480, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.482 = private unnamed_addr constant [9 x i8] c"E<Ucirc>\00", align 1
@.str.483 = private unnamed_addr constant [20 x i8] c"{@Char Ucircumflex}\00", align 1
@PE30 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.482, i32 6, ptr @.str.483, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.482, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.484 = private unnamed_addr constant [10 x i8] c"E<Ugrave>\00", align 1
@.str.485 = private unnamed_addr constant [15 x i8] c"{@Char Ugrave}\00", align 1
@PE31 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.484, i32 6, ptr @.str.485, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.484, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.486 = private unnamed_addr constant [8 x i8] c"E<Uuml>\00", align 1
@.str.487 = private unnamed_addr constant [18 x i8] c"{@Char Udieresis}\00", align 1
@PE32 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.486, i32 6, ptr @.str.487, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.486, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.488 = private unnamed_addr constant [10 x i8] c"E<Yacute>\00", align 1
@.str.489 = private unnamed_addr constant [15 x i8] c"{@Char Yacute}\00", align 1
@PE33 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.488, i32 6, ptr @.str.489, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.488, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.490 = private unnamed_addr constant [10 x i8] c"E<aacute>\00", align 1
@.str.491 = private unnamed_addr constant [15 x i8] c"{@Char aacute}\00", align 1
@PE34 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.490, i32 6, ptr @.str.491, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.490, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.492 = private unnamed_addr constant [9 x i8] c"E<acirc>\00", align 1
@.str.493 = private unnamed_addr constant [20 x i8] c"{@Char acircumflex}\00", align 1
@PE35 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.492, i32 6, ptr @.str.493, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.492, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.494 = private unnamed_addr constant [9 x i8] c"E<aelig>\00", align 1
@.str.495 = private unnamed_addr constant [11 x i8] c"{@Char ae}\00", align 1
@PE36 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.494, i32 6, ptr @.str.495, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.494, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.496 = private unnamed_addr constant [10 x i8] c"E<agrave>\00", align 1
@.str.497 = private unnamed_addr constant [15 x i8] c"{@Char agrave}\00", align 1
@PE37 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.496, i32 6, ptr @.str.497, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.496, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.498 = private unnamed_addr constant [9 x i8] c"E<aring>\00", align 1
@.str.499 = private unnamed_addr constant [14 x i8] c"{@Char aring}\00", align 1
@PE38 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.498, i32 6, ptr @.str.499, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.498, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.500 = private unnamed_addr constant [10 x i8] c"E<atilde>\00", align 1
@.str.501 = private unnamed_addr constant [15 x i8] c"{@Char atilde}\00", align 1
@PE39 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.500, i32 6, ptr @.str.501, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.500, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.502 = private unnamed_addr constant [8 x i8] c"E<auml>\00", align 1
@.str.503 = private unnamed_addr constant [18 x i8] c"{@Char adieresis}\00", align 1
@PE40 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.502, i32 6, ptr @.str.503, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.502, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.504 = private unnamed_addr constant [10 x i8] c"E<ccedil>\00", align 1
@.str.505 = private unnamed_addr constant [17 x i8] c"{@Char ccedilla}\00", align 1
@PE41 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.504, i32 6, ptr @.str.505, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.504, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.506 = private unnamed_addr constant [10 x i8] c"E<eacute>\00", align 1
@.str.507 = private unnamed_addr constant [15 x i8] c"{@Char eacute}\00", align 1
@PE42 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.506, i32 6, ptr @.str.507, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.506, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.508 = private unnamed_addr constant [9 x i8] c"E<ecirc>\00", align 1
@.str.509 = private unnamed_addr constant [20 x i8] c"{@Char ecircumflex}\00", align 1
@PE43 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.508, i32 6, ptr @.str.509, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.508, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.510 = private unnamed_addr constant [10 x i8] c"E<egrave>\00", align 1
@.str.511 = private unnamed_addr constant [15 x i8] c"{@Char egrave}\00", align 1
@PE44 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.510, i32 6, ptr @.str.511, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.510, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.512 = private unnamed_addr constant [7 x i8] c"E<eth>\00", align 1
@.str.513 = private unnamed_addr constant [12 x i8] c"{@Char eth}\00", align 1
@PE45 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.512, i32 6, ptr @.str.513, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.512, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.514 = private unnamed_addr constant [8 x i8] c"E<euml>\00", align 1
@.str.515 = private unnamed_addr constant [18 x i8] c"{@Char edieresis}\00", align 1
@PE46 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.514, i32 6, ptr @.str.515, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.514, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.516 = private unnamed_addr constant [10 x i8] c"E<iacute>\00", align 1
@.str.517 = private unnamed_addr constant [15 x i8] c"{@Char iacute}\00", align 1
@PE47 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.516, i32 6, ptr @.str.517, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.516, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.518 = private unnamed_addr constant [9 x i8] c"E<icirc>\00", align 1
@.str.519 = private unnamed_addr constant [20 x i8] c"{@Char icircumflex}\00", align 1
@PE48 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.518, i32 6, ptr @.str.519, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.518, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.520 = private unnamed_addr constant [10 x i8] c"E<igrave>\00", align 1
@.str.521 = private unnamed_addr constant [15 x i8] c"{@Char igrave}\00", align 1
@PE49 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.520, i32 6, ptr @.str.521, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.520, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.522 = private unnamed_addr constant [8 x i8] c"E<iuml>\00", align 1
@.str.523 = private unnamed_addr constant [18 x i8] c"{@Char idieresis}\00", align 1
@PE50 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.522, i32 6, ptr @.str.523, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.522, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.524 = private unnamed_addr constant [10 x i8] c"E<ntilde>\00", align 1
@.str.525 = private unnamed_addr constant [15 x i8] c"{@Char ntilde}\00", align 1
@PE51 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.524, i32 6, ptr @.str.525, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.524, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.526 = private unnamed_addr constant [10 x i8] c"E<oacute>\00", align 1
@.str.527 = private unnamed_addr constant [15 x i8] c"{@Char oacute}\00", align 1
@PE52 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.526, i32 6, ptr @.str.527, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.526, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.528 = private unnamed_addr constant [9 x i8] c"E<ocirc>\00", align 1
@.str.529 = private unnamed_addr constant [20 x i8] c"{@Char ocircumflex}\00", align 1
@PE53 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.528, i32 6, ptr @.str.529, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.528, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.530 = private unnamed_addr constant [10 x i8] c"E<ograve>\00", align 1
@.str.531 = private unnamed_addr constant [15 x i8] c"{@Char ograve}\00", align 1
@PE54 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.530, i32 6, ptr @.str.531, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.530, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.532 = private unnamed_addr constant [10 x i8] c"E<oslash>\00", align 1
@.str.533 = private unnamed_addr constant [15 x i8] c"{@Char oslash}\00", align 1
@PE55 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.532, i32 6, ptr @.str.533, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.532, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.534 = private unnamed_addr constant [10 x i8] c"E<otilde>\00", align 1
@.str.535 = private unnamed_addr constant [15 x i8] c"{@Char otilde}\00", align 1
@PE56 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.534, i32 6, ptr @.str.535, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.534, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.536 = private unnamed_addr constant [8 x i8] c"E<ouml>\00", align 1
@.str.537 = private unnamed_addr constant [18 x i8] c"{@Char odieresis}\00", align 1
@PE57 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.536, i32 6, ptr @.str.537, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.536, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.538 = private unnamed_addr constant [9 x i8] c"E<szlig>\00", align 1
@.str.539 = private unnamed_addr constant [19 x i8] c"{@Char germandbls}\00", align 1
@PE58 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.538, i32 6, ptr @.str.539, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.538, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.540 = private unnamed_addr constant [9 x i8] c"E<thorn>\00", align 1
@.str.541 = private unnamed_addr constant [14 x i8] c"{@Char thorn}\00", align 1
@PE59 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.540, i32 6, ptr @.str.541, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.540, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.542 = private unnamed_addr constant [10 x i8] c"E<uacute>\00", align 1
@.str.543 = private unnamed_addr constant [15 x i8] c"{@Char uacute}\00", align 1
@PE60 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.542, i32 6, ptr @.str.543, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.542, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.544 = private unnamed_addr constant [9 x i8] c"E<ucirc>\00", align 1
@.str.545 = private unnamed_addr constant [20 x i8] c"{@Char ucircumflex}\00", align 1
@PE61 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.544, i32 6, ptr @.str.545, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.544, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.546 = private unnamed_addr constant [10 x i8] c"E<ugrave>\00", align 1
@.str.547 = private unnamed_addr constant [15 x i8] c"{@Char ugrave}\00", align 1
@PE62 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.546, i32 6, ptr @.str.547, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.546, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.548 = private unnamed_addr constant [8 x i8] c"E<uuml>\00", align 1
@.str.549 = private unnamed_addr constant [18 x i8] c"{@Char udieresis}\00", align 1
@PE63 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.548, i32 6, ptr @.str.549, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.548, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.550 = private unnamed_addr constant [10 x i8] c"E<yacute>\00", align 1
@.str.551 = private unnamed_addr constant [15 x i8] c"{@Char yacute}\00", align 1
@PE64 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.550, i32 6, ptr @.str.551, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.550, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.552 = private unnamed_addr constant [8 x i8] c"E<yuml>\00", align 1
@.str.553 = private unnamed_addr constant [18 x i8] c"{@Char ydieresis}\00", align 1
@PE65 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.552, i32 6, ptr @.str.553, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.552, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.554 = private unnamed_addr constant [8 x i8] c"E<copy>\00", align 1
@.str.555 = private unnamed_addr constant [13 x i8] c"{@CopyRight}\00", align 1
@PE66 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.554, i32 6, ptr @.str.555, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.554, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.556 = private unnamed_addr constant [7 x i8] c"E<reg>\00", align 1
@.str.557 = private unnamed_addr constant [12 x i8] c"{@Register}\00", align 1
@PE67 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.556, i32 6, ptr @.str.557, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.556, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.558 = private unnamed_addr constant [8 x i8] c"E<nbsp>\00", align 1
@PE68 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.558, i32 6, ptr @.str.113, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.558, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.559 = private unnamed_addr constant [9 x i8] c"E<iexcl>\00", align 1
@.str.560 = private unnamed_addr constant [19 x i8] c"{@Char exclamdown}\00", align 1
@PE69 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.559, i32 6, ptr @.str.560, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.559, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.561 = private unnamed_addr constant [8 x i8] c"E<cent>\00", align 1
@.str.562 = private unnamed_addr constant [13 x i8] c"{@Char cent}\00", align 1
@PE70 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.561, i32 6, ptr @.str.562, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.561, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.563 = private unnamed_addr constant [9 x i8] c"E<pound>\00", align 1
@.str.564 = private unnamed_addr constant [12 x i8] c"{@Sterling}\00", align 1
@PE71 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.563, i32 6, ptr @.str.564, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.563, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.565 = private unnamed_addr constant [10 x i8] c"E<curren>\00", align 1
@.str.566 = private unnamed_addr constant [17 x i8] c"{@Char currency}\00", align 1
@PE72 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.565, i32 6, ptr @.str.566, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.565, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.567 = private unnamed_addr constant [7 x i8] c"E<yen>\00", align 1
@.str.568 = private unnamed_addr constant [7 x i8] c"{@Yen}\00", align 1
@PE73 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.567, i32 6, ptr @.str.568, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.567, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.569 = private unnamed_addr constant [10 x i8] c"E<brvbar>\00", align 1
@.str.570 = private unnamed_addr constant [12 x i8] c"{@Char bar}\00", align 1
@PE74 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.569, i32 6, ptr @.str.570, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.569, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.571 = private unnamed_addr constant [8 x i8] c"E<sect>\00", align 1
@.str.572 = private unnamed_addr constant [11 x i8] c"{@SectSym}\00", align 1
@PE75 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.571, i32 6, ptr @.str.572, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.571, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.573 = private unnamed_addr constant [7 x i8] c"E<uml>\00", align 1
@.str.574 = private unnamed_addr constant [17 x i8] c"{@Char dieresis}\00", align 1
@PE76 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.573, i32 6, ptr @.str.574, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.573, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.575 = private unnamed_addr constant [8 x i8] c"E<ordf>\00", align 1
@.str.576 = private unnamed_addr constant [20 x i8] c"{@Char ordfeminine}\00", align 1
@PE77 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.575, i32 6, ptr @.str.576, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.575, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.577 = private unnamed_addr constant [9 x i8] c"E<laquo>\00", align 1
@.str.578 = private unnamed_addr constant [22 x i8] c"{@Char guillemotleft}\00", align 1
@PE78 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.577, i32 6, ptr @.str.578, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.577, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.579 = private unnamed_addr constant [7 x i8] c"E<not>\00", align 1
@.str.580 = private unnamed_addr constant [19 x i8] c"{@Char logicalnot}\00", align 1
@PE79 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.579, i32 6, ptr @.str.580, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.579, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.581 = private unnamed_addr constant [7 x i8] c"E<shy>\00", align 1
@.str.582 = private unnamed_addr constant [15 x i8] c"{@Char hyphen}\00", align 1
@PE80 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.581, i32 6, ptr @.str.582, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.581, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.583 = private unnamed_addr constant [8 x i8] c"E<macr>\00", align 1
@.str.584 = private unnamed_addr constant [15 x i8] c"{@Char macron}\00", align 1
@PE81 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.583, i32 6, ptr @.str.584, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.583, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.585 = private unnamed_addr constant [7 x i8] c"E<deg>\00", align 1
@.str.586 = private unnamed_addr constant [15 x i8] c"{@Char degree}\00", align 1
@PE82 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.585, i32 6, ptr @.str.586, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.585, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.587 = private unnamed_addr constant [10 x i8] c"E<plusmn>\00", align 1
@.str.588 = private unnamed_addr constant [18 x i8] c"{@Char plusminus}\00", align 1
@PE83 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.587, i32 6, ptr @.str.588, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.587, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.589 = private unnamed_addr constant [8 x i8] c"E<sup1>\00", align 1
@.str.590 = private unnamed_addr constant [20 x i8] c"{@Char onesuperior}\00", align 1
@PE84 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.589, i32 6, ptr @.str.590, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.589, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.591 = private unnamed_addr constant [8 x i8] c"E<sup2>\00", align 1
@.str.592 = private unnamed_addr constant [20 x i8] c"{@Char twosuperior}\00", align 1
@PE85 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.591, i32 6, ptr @.str.592, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.591, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.593 = private unnamed_addr constant [8 x i8] c"E<sup3>\00", align 1
@.str.594 = private unnamed_addr constant [22 x i8] c"{@Char threesuperior}\00", align 1
@PE86 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.593, i32 6, ptr @.str.594, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.593, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.595 = private unnamed_addr constant [9 x i8] c"E<acute>\00", align 1
@.str.596 = private unnamed_addr constant [14 x i8] c"{@Char acute}\00", align 1
@PE87 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.595, i32 6, ptr @.str.596, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.595, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.597 = private unnamed_addr constant [9 x i8] c"E<micro>\00", align 1
@.str.598 = private unnamed_addr constant [11 x i8] c"{@Char mu}\00", align 1
@PE88 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.597, i32 6, ptr @.str.598, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.597, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.599 = private unnamed_addr constant [8 x i8] c"E<para>\00", align 1
@.str.600 = private unnamed_addr constant [10 x i8] c"{@ParSym}\00", align 1
@PE89 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.599, i32 6, ptr @.str.600, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.599, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.601 = private unnamed_addr constant [10 x i8] c"E<middot>\00", align 1
@.str.602 = private unnamed_addr constant [23 x i8] c"{@Char periodcentered}\00", align 1
@PE90 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.601, i32 6, ptr @.str.602, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.601, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.603 = private unnamed_addr constant [9 x i8] c"E<cedil>\00", align 1
@.str.604 = private unnamed_addr constant [16 x i8] c"{@Char cedilla}\00", align 1
@PE91 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.603, i32 6, ptr @.str.604, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.603, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.605 = private unnamed_addr constant [8 x i8] c"E<ordm>\00", align 1
@.str.606 = private unnamed_addr constant [21 x i8] c"{@Char ordmasculine}\00", align 1
@PE92 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.605, i32 6, ptr @.str.606, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.605, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.607 = private unnamed_addr constant [9 x i8] c"E<raquo>\00", align 1
@.str.608 = private unnamed_addr constant [23 x i8] c"{@Char guillemotright}\00", align 1
@PE93 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.607, i32 6, ptr @.str.608, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.607, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.609 = private unnamed_addr constant [10 x i8] c"E<frac14>\00", align 1
@.str.610 = private unnamed_addr constant [19 x i8] c"{@Char onequarter}\00", align 1
@PE94 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.609, i32 6, ptr @.str.610, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.609, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.611 = private unnamed_addr constant [10 x i8] c"E<frac12>\00", align 1
@.str.612 = private unnamed_addr constant [16 x i8] c"{@Char onehalf}\00", align 1
@PE95 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.611, i32 6, ptr @.str.612, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.611, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.613 = private unnamed_addr constant [10 x i8] c"E<frac34>\00", align 1
@.str.614 = private unnamed_addr constant [22 x i8] c"{@Char threequarters}\00", align 1
@PE96 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.613, i32 6, ptr @.str.614, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.613, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.615 = private unnamed_addr constant [10 x i8] c"E<iquest>\00", align 1
@.str.616 = private unnamed_addr constant [21 x i8] c"{@Char questiondown}\00", align 1
@PE97 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.615, i32 6, ptr @.str.616, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.615, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.617 = private unnamed_addr constant [9 x i8] c"E<times>\00", align 1
@.str.618 = private unnamed_addr constant [12 x i8] c"{@Multiply}\00", align 1
@PE98 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.617, i32 6, ptr @.str.618, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.617, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.619 = private unnamed_addr constant [10 x i8] c"E<divide>\00", align 1
@.str.620 = private unnamed_addr constant [10 x i8] c"{@Divide}\00", align 1
@PE99 = global { ptr, i32, ptr, ptr, ptr, i32, [4 x i8], <{ ptr, [119 x ptr] }>, [30 x ptr], [30 x ptr], [30 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [256 x i8], [256 x i8] } { ptr @.str.619, i32 6, ptr @.str.620, ptr @.str.10, ptr @.str.10, i32 0, [4 x i8] undef, <{ ptr, [119 x ptr] }> <{ ptr @.str.619, [119 x ptr] zeroinitializer }>, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, [30 x ptr] zeroinitializer, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, ptr @.str.10, i32 0, i32 0, [256 x i8] zeroinitializer, [256 x i8] zeroinitializer }, align 8
@.str.621 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@.str.622 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.623 = private unnamed_addr constant [7 x i8] c"cprint\00", align 1
@.str.624 = private unnamed_addr constant [4 x i8] c"@CP\00", align 1
@.str.625 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.626 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.627 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.628 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.629 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.630 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.631 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.632 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.633 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.634 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.635 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.636 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.637 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.638 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.639 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.640 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.641 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.642 = private unnamed_addr constant [7 x i8] c"friend\00", align 1
@.str.643 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.644 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.645 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.646 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.647 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.648 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.649 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.650 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.651 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.652 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.653 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.654 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.655 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.656 = private unnamed_addr constant [7 x i8] c"sizeof\00", align 1
@.str.657 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.658 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.659 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.660 = private unnamed_addr constant [9 x i8] c"template\00", align 1
@.str.661 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.662 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.663 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.664 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.665 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.666 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.667 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.668 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.669 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@CLanguage = global { [10 x ptr], ptr, ptr, i32, [4 x i8], <{ [38 x ptr], [112 x ptr] }>, <{ [48 x ptr], [302 x ptr] }> } { [10 x ptr] [ptr @.str.24, ptr @.str.50, ptr @.str.621, ptr @.str.622, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @.str.623, ptr @.str.624, i32 1, [4 x i8] undef, <{ [38 x ptr], [112 x ptr] }> <{ [38 x ptr] [ptr @CStringToken, ptr @CCharacterToken, ptr @IdentifierToken, ptr @NumberToken, ptr @CCommentToken, ptr @CCommentEscapeToken, ptr @CPPCommentToken, ptr @CPPCommentEscapeToken, ptr @HashToken, ptr @ExclamationToken, ptr @PercentToken, ptr @HatToken, ptr @AmpersandToken, ptr @StarToken, ptr @LeftParenToken, ptr @RightParenToken, ptr @MinusToken, ptr @PlusToken, ptr @EqualToken, ptr @LeftBraceToken, ptr @RightBraceToken, ptr @BarToken, ptr @CircumToken, ptr @LeftBracketToken, ptr @RightBracketToken, ptr @SemicolonToken, ptr @ColonToken, ptr @LessToken, ptr @GreaterToken, ptr @QuestionToken, ptr @CommaToken, ptr @DotToken, ptr @SlashToken, ptr @BackSlashToken, ptr @ArrowToken, ptr @LessEqualToken, ptr @GreaterEqualToken, ptr @CNotEqualToken], [112 x ptr] zeroinitializer }>, <{ [48 x ptr], [302 x ptr] }> <{ [48 x ptr] [ptr @.str.625, ptr @.str.626, ptr @.str.627, ptr @.str.628, ptr @.str.629, ptr @.str.630, ptr @.str.631, ptr @.str.632, ptr @.str.633, ptr @.str.634, ptr @.str.635, ptr @.str.636, ptr @.str.637, ptr @.str.638, ptr @.str.639, ptr @.str.640, ptr @.str.641, ptr @.str.187, ptr @.str.642, ptr @.str.643, ptr @.str.170, ptr @.str.644, ptr @.str.645, ptr @.str.646, ptr @.str.647, ptr @.str.648, ptr @.str.649, ptr @.str.650, ptr @.str.651, ptr @.str.652, ptr @.str.653, ptr @.str.654, ptr @.str.655, ptr @.str.656, ptr @.str.657, ptr @.str.658, ptr @.str.659, ptr @.str.660, ptr @.str.661, ptr @.str.662, ptr @.str.663, ptr @.str.664, ptr @.str.665, ptr @.str.666, ptr @.str.667, ptr @.str.668, ptr @.str.669, ptr @.str.191], [302 x ptr] zeroinitializer }> }, align 8
@.str.670 = private unnamed_addr constant [7 x i8] c"Python\00", align 1
@.str.671 = private unnamed_addr constant [7 x i8] c"python\00", align 1
@.str.672 = private unnamed_addr constant [8 x i8] c"@Python\00", align 1
@.str.673 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.674 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.675 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.676 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.677 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.678 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.679 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.680 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.681 = private unnamed_addr constant [7 x i8] c"except\00", align 1
@.str.682 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.683 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.684 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.685 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.686 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.687 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.688 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.689 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.690 = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@.str.691 = private unnamed_addr constant [14 x i8] c"StandardError\00", align 1
@.str.692 = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@.str.693 = private unnamed_addr constant [12 x i8] c"LookupError\00", align 1
@.str.694 = private unnamed_addr constant [15 x i8] c"AssertionError\00", align 1
@.str.695 = private unnamed_addr constant [15 x i8] c"AttributeError\00", align 1
@.str.696 = private unnamed_addr constant [9 x i8] c"EOFError\00", align 1
@.str.697 = private unnamed_addr constant [19 x i8] c"FloatingPointError\00", align 1
@.str.698 = private unnamed_addr constant [8 x i8] c"IOError\00", align 1
@.str.699 = private unnamed_addr constant [12 x i8] c"ImportError\00", align 1
@.str.700 = private unnamed_addr constant [11 x i8] c"IndexError\00", align 1
@.str.701 = private unnamed_addr constant [9 x i8] c"KeyError\00", align 1
@.str.702 = private unnamed_addr constant [18 x i8] c"KeyboardInterrupt\00", align 1
@.str.703 = private unnamed_addr constant [12 x i8] c"MemoryError\00", align 1
@.str.704 = private unnamed_addr constant [10 x i8] c"NameError\00", align 1
@.str.705 = private unnamed_addr constant [14 x i8] c"OverflowError\00", align 1
@.str.706 = private unnamed_addr constant [13 x i8] c"RuntimeError\00", align 1
@.str.707 = private unnamed_addr constant [12 x i8] c"SyntaxError\00", align 1
@.str.708 = private unnamed_addr constant [12 x i8] c"SystemError\00", align 1
@.str.709 = private unnamed_addr constant [11 x i8] c"SystemExit\00", align 1
@.str.710 = private unnamed_addr constant [10 x i8] c"TypeError\00", align 1
@.str.711 = private unnamed_addr constant [11 x i8] c"ValueError\00", align 1
@.str.712 = private unnamed_addr constant [18 x i8] c"ZeroDivisionError\00", align 1
@.str.713 = private unnamed_addr constant [11 x i8] c"__import__\00", align 1
@.str.714 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.715 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.716 = private unnamed_addr constant [9 x i8] c"callable\00", align 1
@.str.717 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@.str.718 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.719 = private unnamed_addr constant [7 x i8] c"coerce\00", align 1
@.str.720 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@.str.721 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.722 = private unnamed_addr constant [8 x i8] c"delattr\00", align 1
@.str.723 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.724 = private unnamed_addr constant [7 x i8] c"divmod\00", align 1
@.str.725 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.726 = private unnamed_addr constant [9 x i8] c"execfile\00", align 1
@.str.727 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.728 = private unnamed_addr constant [8 x i8] c"getattr\00", align 1
@.str.729 = private unnamed_addr constant [8 x i8] c"globals\00", align 1
@.str.730 = private unnamed_addr constant [8 x i8] c"hasattr\00", align 1
@.str.731 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.732 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.733 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.734 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.735 = private unnamed_addr constant [7 x i8] c"intern\00", align 1
@.str.736 = private unnamed_addr constant [11 x i8] c"isinstance\00", align 1
@.str.737 = private unnamed_addr constant [11 x i8] c"issubclass\00", align 1
@.str.738 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.739 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.740 = private unnamed_addr constant [7 x i8] c"locals\00", align 1
@.str.741 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.742 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.743 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.744 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@.str.745 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.746 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@.str.747 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.748 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.749 = private unnamed_addr constant [10 x i8] c"raw_input\00", align 1
@.str.750 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.751 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.752 = private unnamed_addr constant [5 x i8] c"repr\00", align 1
@.str.753 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.754 = private unnamed_addr constant [8 x i8] c"setattr\00", align 1
@.str.755 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.756 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.757 = private unnamed_addr constant [6 x i8] c"tuple\00", align 1
@.str.758 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.759 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.760 = private unnamed_addr constant [7 x i8] c"xrange\00", align 1
@.str.761 = private unnamed_addr constant [12 x i8] c"__builtin__\00", align 1
@.str.762 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@.str.763 = private unnamed_addr constant [3 x i8] c"al\00", align 1
@.str.764 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.765 = private unnamed_addr constant [8 x i8] c"audioop\00", align 1
@.str.766 = private unnamed_addr constant [9 x i8] c"binascii\00", align 1
@.str.767 = private unnamed_addr constant [8 x i8] c"cPickle\00", align 1
@.str.768 = private unnamed_addr constant [10 x i8] c"cStringIO\00", align 1
@.str.769 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.770 = private unnamed_addr constant [6 x i8] c"cmath\00", align 1
@.str.771 = private unnamed_addr constant [6 x i8] c"crypt\00", align 1
@.str.772 = private unnamed_addr constant [4 x i8] c"dbm\00", align 1
@.str.773 = private unnamed_addr constant [6 x i8] c"fcntl\00", align 1
@.str.774 = private unnamed_addr constant [3 x i8] c"fl\00", align 1
@.str.775 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@.str.776 = private unnamed_addr constant [5 x i8] c"gdbm\00", align 1
@.str.777 = private unnamed_addr constant [3 x i8] c"gl\00", align 1
@.str.778 = private unnamed_addr constant [4 x i8] c"grp\00", align 1
@.str.779 = private unnamed_addr constant [8 x i8] c"imageop\00", align 1
@.str.780 = private unnamed_addr constant [8 x i8] c"imgfile\00", align 1
@.str.781 = private unnamed_addr constant [4 x i8] c"imp\00", align 1
@.str.782 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.783 = private unnamed_addr constant [8 x i8] c"marshal\00", align 1
@.str.784 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.785 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.786 = private unnamed_addr constant [4 x i8] c"mpz\00", align 1
@.str.787 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@.str.788 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.789 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.790 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.791 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.792 = private unnamed_addr constant [7 x i8] c"rgbimg\00", align 1
@.str.793 = private unnamed_addr constant [6 x i8] c"rotor\00", align 1
@.str.794 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.795 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.796 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.797 = private unnamed_addr constant [12 x i8] c"sunaudiodev\00", align 1
@.str.798 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.799 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@.str.800 = private unnamed_addr constant [8 x i8] c"termios\00", align 1
@.str.801 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.802 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.803 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@PythonLanguage = global { <{ ptr, ptr, [8 x ptr] }>, ptr, ptr, i32, [4 x i8], <{ [38 x ptr], [112 x ptr] }>, <{ [149 x ptr], [201 x ptr] }> } { <{ ptr, ptr, [8 x ptr] }> <{ ptr @.str.670, ptr @.str.671, [8 x ptr] zeroinitializer }>, ptr @.str.671, ptr @.str.672, i32 1, [4 x i8] undef, <{ [38 x ptr], [112 x ptr] }> <{ [38 x ptr] [ptr @BackSlashToken, ptr @PythonDblStringToken, ptr @PythonSnglStringToken, ptr @PythonTriSnglStringToken, ptr @PythonTriDblStringToken, ptr @PythonCommentToken, ptr @IdentifierToken, ptr @NumberToken, ptr @PlusToken, ptr @MinusToken, ptr @StarToken, ptr @PythonPowerToken, ptr @SlashToken, ptr @PercentToken, ptr @PythonBitLeftShiftToken, ptr @PythonBitRightShiftToken, ptr @AmpersandToken, ptr @BarToken, ptr @HatToken, ptr @CircumToken, ptr @LessToken, ptr @GreaterToken, ptr @LessEqualToken, ptr @GreaterEqualToken, ptr @BlueNotEqualToken, ptr @CNotEqualToken, ptr @LeftParenToken, ptr @RightParenToken, ptr @LeftBraceToken, ptr @RightBraceToken, ptr @LeftBracketToken, ptr @RightBracketToken, ptr @CommaToken, ptr @ColonToken, ptr @DotToken, ptr @PythonBacktickToken, ptr @EqualToken, ptr @SemicolonToken], [112 x ptr] zeroinitializer }>, <{ [149 x ptr], [201 x ptr] }> <{ [149 x ptr] [ptr @.str.172, ptr @.str.673, ptr @.str.187, ptr @.str.674, ptr @.str.675, ptr @.str.676, ptr @.str.677, ptr @.str.678, ptr @.str.679, ptr @.str.653, ptr @.str.627, ptr @.str.638, ptr @.str.680, ptr @.str.182, ptr @.str.663, ptr @.str.631, ptr @.str.681, ptr @.str.170, ptr @.str.176, ptr @.str.191, ptr @.str.633, ptr @.str.682, ptr @.str.683, ptr @.str.684, ptr @.str.685, ptr @.str.686, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.690, ptr @.str.691, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.695, ptr @.str.696, ptr @.str.697, ptr @.str.698, ptr @.str.699, ptr @.str.700, ptr @.str.701, ptr @.str.702, ptr @.str.703, ptr @.str.704, ptr @.str.705, ptr @.str.706, ptr @.str.707, ptr @.str.708, ptr @.str.709, ptr @.str.710, ptr @.str.711, ptr @.str.712, ptr @.str.713, ptr @.str.714, ptr @.str.715, ptr @.str.716, ptr @.str.717, ptr @.str.718, ptr @.str.719, ptr @.str.720, ptr @.str.721, ptr @.str.722, ptr @.str.723, ptr @.str.724, ptr @.str.725, ptr @.str.726, ptr @.str.727, ptr @.str.641, ptr @.str.728, ptr @.str.729, ptr @.str.730, ptr @.str.731, ptr @.str.732, ptr @.str.733, ptr @.str.734, ptr @.str.735, ptr @.str.645, ptr @.str.736, ptr @.str.737, ptr @.str.738, ptr @.str.739, ptr @.str.740, ptr @.str.646, ptr @.str.741, ptr @.str.742, ptr @.str.743, ptr @.str.744, ptr @.str.745, ptr @.str.746, ptr @.str.747, ptr @.str.748, ptr @.str.749, ptr @.str.750, ptr @.str.751, ptr @.str.752, ptr @.str.753, ptr @.str.754, ptr @.str.755, ptr @.str.756, ptr @.str.757, ptr @.str.758, ptr @.str.759, ptr @.str.760, ptr @.str.761, ptr @.str.762, ptr @.str.763, ptr @.str.764, ptr @.str.765, ptr @.str.766, ptr @.str.767, ptr @.str.768, ptr @.str.769, ptr @.str.770, ptr @.str.771, ptr @.str.772, ptr @.str.773, ptr @.str.774, ptr @.str.775, ptr @.str.776, ptr @.str.777, ptr @.str.778, ptr @.str.779, ptr @.str.780, ptr @.str.781, ptr @.str.782, ptr @.str.783, ptr @.str.784, ptr @.str.785, ptr @.str.786, ptr @.str.648, ptr @.str.787, ptr @.str.788, ptr @.str.789, ptr @.str.790, ptr @.str.153, ptr @.str.791, ptr @.str.792, ptr @.str.793, ptr @.str.794, ptr @.str.795, ptr @.str.796, ptr @.str.658, ptr @.str.797, ptr @.str.798, ptr @.str.799, ptr @.str.800, ptr @.str.801, ptr @.str.802, ptr @.str.803], [201 x ptr] zeroinitializer }> }, align 8
@.str.804 = private unnamed_addr constant [7 x i8] c"Eiffel\00", align 1
@.str.805 = private unnamed_addr constant [7 x i8] c"eiffel\00", align 1
@.str.806 = private unnamed_addr constant [8 x i8] c"@Eiffel\00", align 1
@.str.807 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.808 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.809 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.810 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.811 = private unnamed_addr constant [9 x i8] c"creation\00", align 1
@.str.812 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.813 = private unnamed_addr constant [9 x i8] c"deferred\00", align 1
@.str.814 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.815 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.816 = private unnamed_addr constant [7 x i8] c"ensure\00", align 1
@.str.817 = private unnamed_addr constant [9 x i8] c"expanded\00", align 1
@.str.818 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.819 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.820 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.821 = private unnamed_addr constant [8 x i8] c"feature\00", align 1
@.str.822 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@.str.823 = private unnamed_addr constant [8 x i8] c"implies\00", align 1
@.str.824 = private unnamed_addr constant [9 x i8] c"indexing\00", align 1
@.str.825 = private unnamed_addr constant [6 x i8] c"infix\00", align 1
@.str.826 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.827 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.828 = private unnamed_addr constant [10 x i8] c"invariant\00", align 1
@.str.829 = private unnamed_addr constant [5 x i8] c"like\00", align 1
@.str.830 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.831 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.832 = private unnamed_addr constant [9 x i8] c"obsolete\00", align 1
@.str.833 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.834 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.835 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.836 = private unnamed_addr constant [9 x i8] c"redefine\00", align 1
@.str.837 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.838 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.839 = private unnamed_addr constant [7 x i8] c"rescue\00", align 1
@.str.840 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.841 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.842 = private unnamed_addr constant [6 x i8] c"strip\00", align 1
@.str.843 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.844 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.845 = private unnamed_addr constant [9 x i8] c"undefine\00", align 1
@.str.846 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.847 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.848 = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@.str.849 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.850 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@EiffelLanguage = global { <{ ptr, ptr, [8 x ptr] }>, ptr, ptr, i32, [4 x i8], <{ [32 x ptr], [118 x ptr] }>, <{ [55 x ptr], [295 x ptr] }> } { <{ ptr, ptr, [8 x ptr] }> <{ ptr @.str.804, ptr @.str.805, [8 x ptr] zeroinitializer }>, ptr @.str.805, ptr @.str.806, i32 1, [4 x i8] undef, <{ [32 x ptr], [118 x ptr] }> <{ [32 x ptr] [ptr @EiffelStringToken, ptr @EiffelCharacterToken, ptr @IdentifierToken, ptr @NumberToken, ptr @EiffelCommentToken, ptr @EiffelCommentEscapeToken, ptr @SemicolonToken, ptr @CommaToken, ptr @ColonToken, ptr @EiffelDotToken, ptr @ExclamationToken, ptr @EqualToken, ptr @EiffelNotEqualToken, ptr @LeftParenToken, ptr @RightParenToken, ptr @LeftBracketToken, ptr @RightBracketToken, ptr @LeftBraceToken, ptr @RightBraceToken, ptr @AssignToken, ptr @QuestionAssignToken, ptr @PlusToken, ptr @MinusToken, ptr @StarToken, ptr @DollarToken, ptr @HatToken, ptr @SlashToken, ptr @BackSlashToken, ptr @LessToken, ptr @GreaterToken, ptr @LessEqualToken, ptr @GreaterEqualToken], [118 x ptr] zeroinitializer }>, <{ [55 x ptr], [295 x ptr] }> <{ [55 x ptr] [ptr @.str.807, ptr @.str.808, ptr @.str.172, ptr @.str.809, ptr @.str.810, ptr @.str.631, ptr @.str.811, ptr @.str.812, ptr @.str.813, ptr @.str.636, ptr @.str.638, ptr @.str.814, ptr @.str.815, ptr @.str.816, ptr @.str.817, ptr @.str.818, ptr @.str.819, ptr @.str.820, ptr @.str.821, ptr @.str.678, ptr @.str.822, ptr @.str.170, ptr @.str.823, ptr @.str.824, ptr @.str.825, ptr @.str.826, ptr @.str.827, ptr @.str.828, ptr @.str.674, ptr @.str.829, ptr @.str.830, ptr @.str.831, ptr @.str.832, ptr @.str.833, ptr @.str.834, ptr @.str.176, ptr @.str.835, ptr @.str.836, ptr @.str.837, ptr @.str.838, ptr @.str.839, ptr @.str.840, ptr @.str.794, ptr @.str.841, ptr @.str.842, ptr @.str.843, ptr @.str.844, ptr @.str.845, ptr @.str.846, ptr @.str.847, ptr @.str.848, ptr @.str.849, ptr @.str.180, ptr @.str.182, ptr @.str.850], [295 x ptr] zeroinitializer }> }, align 8
@.str.851 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.852 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.853 = private unnamed_addr constant [6 x i8] c"@Blue\00", align 1
@.str.854 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.855 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.856 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.857 = private unnamed_addr constant [12 x i8] c"Enumeration\00", align 1
@.str.858 = private unnamed_addr constant [12 x i8] c"enumeration\00", align 1
@.str.859 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.860 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.861 = private unnamed_addr constant [9 x i8] c"manifest\00", align 1
@.str.862 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.863 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.864 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.865 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.866 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.867 = private unnamed_addr constant [10 x i8] c"redefined\00", align 1
@.str.868 = private unnamed_addr constant [9 x i8] c"routines\00", align 1
@.str.869 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@.str.870 = private unnamed_addr constant [5 x i8] c"uses\00", align 1
@.str.871 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@BlueLanguage = global { <{ ptr, ptr, [8 x ptr] }>, ptr, ptr, i32, [4 x i8], <{ [29 x ptr], [121 x ptr] }>, <{ [40 x ptr], [310 x ptr] }> } { <{ ptr, ptr, [8 x ptr] }> <{ ptr @.str.851, ptr @.str.852, [8 x ptr] zeroinitializer }>, ptr @.str.852, ptr @.str.853, i32 1, [4 x i8] undef, <{ [29 x ptr], [121 x ptr] }> <{ [29 x ptr] [ptr @CStringToken, ptr @IdentifierToken, ptr @NumberToken, ptr @BlueCommentToken, ptr @BlueCommentEscapeToken, ptr @CommaToken, ptr @LessToken, ptr @GreaterToken, ptr @ColonToken, ptr @AssignToken, ptr @LeftParenToken, ptr @RightParenToken, ptr @LeftBracketToken, ptr @RightBracketToken, ptr @QuestionAssignToken, ptr @ExclamationToken, ptr @EiffelDotToken, ptr @ImpliesToken, ptr @EqualToken, ptr @BlueNotEqualToken, ptr @LeftBraceToken, ptr @RightBraceToken, ptr @PlusToken, ptr @MinusToken, ptr @StarToken, ptr @SlashToken, ptr @HatToken, ptr @LessEqualToken, ptr @GreaterEqualToken], [121 x ptr] zeroinitializer }>, <{ [40 x ptr], [310 x ptr] }> <{ [40 x ptr] [ptr @.str.172, ptr @.str.676, ptr @.str.854, ptr @.str.628, ptr @.str.631, ptr @.str.632, ptr @.str.855, ptr @.str.811, ptr @.str.813, ptr @.str.856, ptr @.str.636, ptr @.str.638, ptr @.str.814, ptr @.str.815, ptr @.str.857, ptr @.str.858, ptr @.str.859, ptr @.str.170, ptr @.str.687, ptr @.str.850, ptr @.str.860, ptr @.str.828, ptr @.str.674, ptr @.str.831, ptr @.str.861, ptr @.str.862, ptr @.str.182, ptr @.str.863, ptr @.str.833, ptr @.str.864, ptr @.str.176, ptr @.str.865, ptr @.str.866, ptr @.str.867, ptr @.str.653, ptr @.str.868, ptr @.str.869, ptr @.str.843, ptr @.str.870, ptr @.str.871], [310 x ptr] zeroinitializer }> }, align 8
@.str.872 = private unnamed_addr constant [5 x i8] c"Perl\00", align 1
@.str.873 = private unnamed_addr constant [5 x i8] c"perl\00", align 1
@.str.874 = private unnamed_addr constant [6 x i8] c"@Perl\00", align 1
@.str.875 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.876 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.877 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.878 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.879 = private unnamed_addr constant [8 x i8] c"binmode\00", align 1
@.str.880 = private unnamed_addr constant [6 x i8] c"bless\00", align 1
@.str.881 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str.882 = private unnamed_addr constant [4 x i8] c"can\00", align 1
@.str.883 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.884 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.885 = private unnamed_addr constant [6 x i8] c"chomp\00", align 1
@.str.886 = private unnamed_addr constant [5 x i8] c"chop\00", align 1
@.str.887 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.888 = private unnamed_addr constant [7 x i8] c"chroot\00", align 1
@.str.889 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.890 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@.str.891 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.892 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.893 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.894 = private unnamed_addr constant [4 x i8] c"die\00", align 1
@.str.895 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.896 = private unnamed_addr constant [5 x i8] c"each\00", align 1
@.str.897 = private unnamed_addr constant [9 x i8] c"endgrent\00", align 1
@.str.898 = private unnamed_addr constant [11 x i8] c"endhostent\00", align 1
@.str.899 = private unnamed_addr constant [10 x i8] c"endnetent\00", align 1
@.str.900 = private unnamed_addr constant [12 x i8] c"endprotoent\00", align 1
@.str.901 = private unnamed_addr constant [9 x i8] c"endpwent\00", align 1
@.str.902 = private unnamed_addr constant [11 x i8] c"endservent\00", align 1
@.str.903 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.904 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.905 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.906 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@.str.907 = private unnamed_addr constant [6 x i8] c"flock\00", align 1
@.str.908 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.909 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.910 = private unnamed_addr constant [9 x i8] c"formline\00", align 1
@.str.911 = private unnamed_addr constant [5 x i8] c"getc\00", align 1
@.str.912 = private unnamed_addr constant [9 x i8] c"getgrent\00", align 1
@.str.913 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str.914 = private unnamed_addr constant [9 x i8] c"getgrnam\00", align 1
@.str.915 = private unnamed_addr constant [14 x i8] c"gethostbyaddr\00", align 1
@.str.916 = private unnamed_addr constant [14 x i8] c"gethostbyname\00", align 1
@.str.917 = private unnamed_addr constant [11 x i8] c"gethostent\00", align 1
@.str.918 = private unnamed_addr constant [9 x i8] c"getlogin\00", align 1
@.str.919 = private unnamed_addr constant [13 x i8] c"getnetbyaddr\00", align 1
@.str.920 = private unnamed_addr constant [13 x i8] c"getnetbyname\00", align 1
@.str.921 = private unnamed_addr constant [10 x i8] c"getnetent\00", align 1
@.str.922 = private unnamed_addr constant [12 x i8] c"getpeername\00", align 1
@.str.923 = private unnamed_addr constant [8 x i8] c"getpgrp\00", align 1
@.str.924 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str.925 = private unnamed_addr constant [12 x i8] c"getpriority\00", align 1
@.str.926 = private unnamed_addr constant [15 x i8] c"getprotobyname\00", align 1
@.str.927 = private unnamed_addr constant [17 x i8] c"getprotobynumber\00", align 1
@.str.928 = private unnamed_addr constant [12 x i8] c"getprotoent\00", align 1
@.str.929 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str.930 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str.931 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str.932 = private unnamed_addr constant [14 x i8] c"getservbyname\00", align 1
@.str.933 = private unnamed_addr constant [14 x i8] c"getservbyport\00", align 1
@.str.934 = private unnamed_addr constant [11 x i8] c"getservent\00", align 1
@.str.935 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@.str.936 = private unnamed_addr constant [11 x i8] c"getsockopt\00", align 1
@.str.937 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.938 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@.str.939 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@.str.940 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.941 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@.str.942 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.943 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@.str.944 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.945 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.946 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.947 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.948 = private unnamed_addr constant [8 x i8] c"lcfirst\00", align 1
@.str.949 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.950 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.951 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.952 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.953 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.954 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.955 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.956 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.957 = private unnamed_addr constant [7 x i8] c"msgctl\00", align 1
@.str.958 = private unnamed_addr constant [7 x i8] c"msgget\00", align 1
@.str.959 = private unnamed_addr constant [7 x i8] c"msgrcv\00", align 1
@.str.960 = private unnamed_addr constant [7 x i8] c"msgsnd\00", align 1
@.str.961 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.962 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.963 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.964 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str.965 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.966 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.967 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.968 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.969 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.970 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.971 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.972 = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@.str.973 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.974 = private unnamed_addr constant [10 x i8] c"quotemeta\00", align 1
@.str.975 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.976 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.977 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.978 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.979 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.980 = private unnamed_addr constant [9 x i8] c"readpipe\00", align 1
@.str.981 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.982 = private unnamed_addr constant [5 x i8] c"redo\00", align 1
@.str.983 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.984 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.985 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.986 = private unnamed_addr constant [10 x i8] c"rewinddir\00", align 1
@.str.987 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@.str.988 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.989 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.990 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.991 = private unnamed_addr constant [8 x i8] c"seekdir\00", align 1
@.str.992 = private unnamed_addr constant [7 x i8] c"semctl\00", align 1
@.str.993 = private unnamed_addr constant [7 x i8] c"semget\00", align 1
@.str.994 = private unnamed_addr constant [6 x i8] c"semop\00", align 1
@.str.995 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@.str.996 = private unnamed_addr constant [9 x i8] c"setgrent\00", align 1
@.str.997 = private unnamed_addr constant [11 x i8] c"sethostent\00", align 1
@.str.998 = private unnamed_addr constant [10 x i8] c"setnetent\00", align 1
@.str.999 = private unnamed_addr constant [8 x i8] c"setpgrp\00", align 1
@.str.1000 = private unnamed_addr constant [12 x i8] c"setpriority\00", align 1
@.str.1001 = private unnamed_addr constant [12 x i8] c"setprotoent\00", align 1
@.str.1002 = private unnamed_addr constant [9 x i8] c"setpwent\00", align 1
@.str.1003 = private unnamed_addr constant [11 x i8] c"setservent\00", align 1
@.str.1004 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.1005 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.1006 = private unnamed_addr constant [7 x i8] c"shmctl\00", align 1
@.str.1007 = private unnamed_addr constant [7 x i8] c"shmget\00", align 1
@.str.1008 = private unnamed_addr constant [8 x i8] c"shmread\00", align 1
@.str.1009 = private unnamed_addr constant [9 x i8] c"shmwrite\00", align 1
@.str.1010 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.1011 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.1012 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.1013 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.1014 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.1015 = private unnamed_addr constant [7 x i8] c"splice\00", align 1
@.str.1016 = private unnamed_addr constant [8 x i8] c"sprintf\00", align 1
@.str.1017 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.1018 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@.str.1019 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.1020 = private unnamed_addr constant [6 x i8] c"study\00", align 1
@.str.1021 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.1022 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@.str.1023 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.1024 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.1025 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@.str.1026 = private unnamed_addr constant [8 x i8] c"sysread\00", align 1
@.str.1027 = private unnamed_addr constant [8 x i8] c"sysseek\00", align 1
@.str.1028 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.1029 = private unnamed_addr constant [9 x i8] c"syswrite\00", align 1
@.str.1030 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.1031 = private unnamed_addr constant [8 x i8] c"telldir\00", align 1
@.str.1032 = private unnamed_addr constant [4 x i8] c"tie\00", align 1
@.str.1033 = private unnamed_addr constant [5 x i8] c"tied\00", align 1
@.str.1034 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.1035 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.1036 = private unnamed_addr constant [9 x i8] c"unimport\00", align 1
@.str.1037 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@.str.1038 = private unnamed_addr constant [8 x i8] c"ucfirst\00", align 1
@.str.1039 = private unnamed_addr constant [6 x i8] c"umask\00", align 1
@.str.1040 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.1041 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.1042 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.1043 = private unnamed_addr constant [8 x i8] c"unshift\00", align 1
@.str.1044 = private unnamed_addr constant [6 x i8] c"untie\00", align 1
@.str.1045 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.1046 = private unnamed_addr constant [6 x i8] c"utime\00", align 1
@.str.1047 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.1048 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.1049 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.1050 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.1051 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.1052 = private unnamed_addr constant [10 x i8] c"wantarray\00", align 1
@.str.1053 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.1054 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1055 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.1056 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.1057 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.1058 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.1059 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.1060 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.1061 = private unnamed_addr constant [9 x i8] c"__DATA__\00", align 1
@.str.1062 = private unnamed_addr constant [8 x i8] c"__END__\00", align 1
@.str.1063 = private unnamed_addr constant [9 x i8] c"__FILE__\00", align 1
@.str.1064 = private unnamed_addr constant [9 x i8] c"__LINE__\00", align 1
@.str.1065 = private unnamed_addr constant [12 x i8] c"__PACKAGE__\00", align 1
@.str.1066 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@.str.1067 = private unnamed_addr constant [8 x i8] c"ARGVOUT\00", align 1
@.str.1068 = private unnamed_addr constant [7 x i8] c"STDERR\00", align 1
@.str.1069 = private unnamed_addr constant [6 x i8] c"STDIN\00", align 1
@.str.1070 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@.str.1071 = private unnamed_addr constant [15 x i8] c"DATAattributes\00", align 1
@.str.1072 = private unnamed_addr constant [8 x i8] c"autouse\00", align 1
@.str.1073 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1074 = private unnamed_addr constant [5 x i8] c"blib\00", align 1
@.str.1075 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.1076 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.1077 = private unnamed_addr constant [10 x i8] c"charnames\00", align 1
@.str.1078 = private unnamed_addr constant [12 x i8] c"diagnostics\00", align 1
@.str.1079 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.1080 = private unnamed_addr constant [9 x i8] c"filetest\00", align 1
@.str.1081 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.1082 = private unnamed_addr constant [5 x i8] c"less\00", align 1
@.str.1083 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.1084 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.1085 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@.str.1086 = private unnamed_addr constant [9 x i8] c"overload\00", align 1
@.str.1087 = private unnamed_addr constant [8 x i8] c"sigtrap\00", align 1
@.str.1088 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.1089 = private unnamed_addr constant [5 x i8] c"subs\00", align 1
@.str.1090 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.1091 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@.str.1092 = private unnamed_addr constant [6 x i8] c"elsif\00", align 1
@.str.1093 = private unnamed_addr constant [9 x i8] c"AUTOLOAD\00", align 1
@.str.1094 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1095 = private unnamed_addr constant [6 x i8] c"CHECK\00", align 1
@.str.1096 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.1097 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@.str.1098 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.1099 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.1100 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.1101 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.1102 = private unnamed_addr constant [6 x i8] c"SUPER\00", align 1
@.str.1103 = private unnamed_addr constant [10 x i8] c"TIESCALAR\00", align 1
@.str.1104 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@.str.1105 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str.1106 = private unnamed_addr constant [9 x i8] c"TIEARRAY\00", align 1
@.str.1107 = private unnamed_addr constant [10 x i8] c"FETCHSIZE\00", align 1
@.str.1108 = private unnamed_addr constant [10 x i8] c"STORESIZE\00", align 1
@.str.1109 = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.1110 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.1111 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.1112 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.1113 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.1114 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.1115 = private unnamed_addr constant [8 x i8] c"UNSHIFT\00", align 1
@.str.1116 = private unnamed_addr constant [7 x i8] c"SPLICE\00", align 1
@.str.1117 = private unnamed_addr constant [7 x i8] c"EXTEND\00", align 1
@.str.1118 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str.1119 = private unnamed_addr constant [9 x i8] c"FIRSTKEY\00", align 1
@.str.1120 = private unnamed_addr constant [17 x i8] c"NEXTKEYTIEHANDLE\00", align 1
@.str.1121 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@.str.1122 = private unnamed_addr constant [7 x i8] c"PRINTF\00", align 1
@.str.1123 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.1124 = private unnamed_addr constant [9 x i8] c"READLINE\00", align 1
@.str.1125 = private unnamed_addr constant [5 x i8] c"GETC\00", align 1
@.str.1126 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.1127 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.1128 = private unnamed_addr constant [8 x i8] c"BINMODE\00", align 1
@.str.1129 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.1130 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.1131 = private unnamed_addr constant [7 x i8] c"FILENO\00", align 1
@.str.1132 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@.str.1133 = private unnamed_addr constant [5 x i8] c"TELL\00", align 1
@PerlLanguage = global { <{ ptr, ptr, [8 x ptr] }>, ptr, ptr, i32, [4 x i8], <{ [116 x ptr], [34 x ptr] }>, <{ [302 x ptr], [48 x ptr] }> } { <{ ptr, ptr, [8 x ptr] }> <{ ptr @.str.872, ptr @.str.873, [8 x ptr] zeroinitializer }>, ptr @.str.873, ptr @.str.874, i32 1, [4 x i8] undef, <{ [116 x ptr], [34 x ptr] }> <{ [116 x ptr] [ptr @PerlSingleQuoteStringToken, ptr @PerlDoubleQuoteStringToken, ptr @PerlBackQuoteStringToken, ptr @PerlQTypeStringToken, ptr @PerlSTypeStringToken, ptr @PerlRegExpLPar, ptr @PerlRegExpEq, ptr @PerlRegExpMatch, ptr @PerlRegExpNoMatch, ptr @PerlRegExpSplit, ptr @PerlRegExpIf, ptr @PerlRegExpAnd, ptr @PerlRegExpAnd2, ptr @PerlRegExpOr, ptr @PerlRegExpOr2, ptr @PerlRegExpXor, ptr @PerlRegExpNot, ptr @PerlRegExpNot2, ptr @PerlRegExpUnless, ptr @PerlRegExpFor, ptr @PerlRegExpForEach, ptr @PerlRegExpWhile, ptr @PerlRegExpStartLineToken, ptr @HereEOTuq, ptr @HereEOTdq, ptr @HereEOTfq, ptr @HereEOTbq, ptr @HereEOFuq, ptr @HereEOFdq, ptr @HereEOFfq, ptr @HereEOFbq, ptr @HereENDuq, ptr @HereENDdq, ptr @HereENDfq, ptr @HereENDbq, ptr @HereBLAuq, ptr @HereBLAdq, ptr @HereBLAfq, ptr @HereBLAbq, ptr @PerlIdentifierToken, ptr @PerlSpecialIdentifierToken, ptr @PerlLiteralNumberToken, ptr @PerlHexNumberToken, ptr @PerlBinaryNumberToken, ptr @PerlCommentToken, ptr @PerlCommentEscapeToken, ptr @PerlPodToken, ptr @ExclamationToken, ptr @PercentToken, ptr @HatToken, ptr @AmpersandToken, ptr @StarToken, ptr @SlashToken, ptr @ArrowToken, ptr @BackSlashToken, ptr @LeftParenToken, ptr @RightParenToken, ptr @MinusToken, ptr @PlusToken, ptr @LeftBraceToken, ptr @RightBraceToken, ptr @BarToken, ptr @CircumToken, ptr @LeftBracketToken, ptr @RightBracketToken, ptr @SemicolonToken, ptr @ColonToken, ptr @LessToken, ptr @GreaterToken, ptr @QuestionToken, ptr @CommaToken, ptr @DotToken, ptr @LessEqualToken, ptr @GreaterEqualToken, ptr @CNotEqualToken, ptr @PerlIncrementToken, ptr @PerlDecrementToken, ptr @PerlExponentiateToken, ptr @PerlMatchToken, ptr @PerlNotMatchToken, ptr @PerlEqualToken, ptr @PerlAssignToken, ptr @PerlBitLeftShiftToken, ptr @PerlBitRightShiftToken, ptr @PerlSpaceshipToken, ptr @PerlAndToken, ptr @PerlOrToken, ptr @PerlRange2Token, ptr @PerlRange3Token, ptr @PerlFileTestrToken, ptr @PerlFileTestwToken, ptr @PerlFileTestxToken, ptr @PerlFileTestoToken, ptr @PerlFileTestRToken, ptr @PerlFileTestWToken, ptr @PerlFileTestXToken, ptr @PerlFileTestOToken, ptr @PerlFileTesteToken, ptr @PerlFileTestzToken, ptr @PerlFileTestsToken, ptr @PerlFileTestfToken, ptr @PerlFileTestdToken, ptr @PerlFileTestlToken, ptr @PerlFileTestpToken, ptr @PerlFileTestSToken, ptr @PerlFileTestbToken, ptr @PerlFileTestcToken, ptr @PerlFileTesttToken, ptr @PerlFileTestuToken, ptr @PerlFileTestgToken, ptr @PerlFileTestkToken, ptr @PerlFileTestTToken, ptr @PerlFileTestBToken, ptr @PerlFileTestMToken, ptr @PerlFileTestAToken, ptr @PerlFileTestCToken], [34 x ptr] zeroinitializer }>, <{ [302 x ptr], [48 x ptr] }> <{ [302 x ptr] [ptr @.str.714, ptr @.str.875, ptr @.str.876, ptr @.str.877, ptr @.str.878, ptr @.str.879, ptr @.str.880, ptr @.str.881, ptr @.str.882, ptr @.str.883, ptr @.str.884, ptr @.str.885, ptr @.str.886, ptr @.str.887, ptr @.str.717, ptr @.str.888, ptr @.str.889, ptr @.str.890, ptr @.str.891, ptr @.str.633, ptr @.str.892, ptr @.str.771, ptr @.str.893, ptr @.str.635, ptr @.str.894, ptr @.str.636, ptr @.str.895, ptr @.str.896, ptr @.str.897, ptr @.str.898, ptr @.str.899, ptr @.str.900, ptr @.str.901, ptr @.str.902, ptr @.str.903, ptr @.str.725, ptr @.str.682, ptr @.str.904, ptr @.str.859, ptr @.str.905, ptr @.str.773, ptr @.str.906, ptr @.str.907, ptr @.str.908, ptr @.str.909, ptr @.str.910, ptr @.str.911, ptr @.str.912, ptr @.str.913, ptr @.str.914, ptr @.str.915, ptr @.str.916, ptr @.str.917, ptr @.str.918, ptr @.str.919, ptr @.str.920, ptr @.str.921, ptr @.str.922, ptr @.str.923, ptr @.str.924, ptr @.str.925, ptr @.str.926, ptr @.str.927, ptr @.str.928, ptr @.str.929, ptr @.str.930, ptr @.str.931, ptr @.str.932, ptr @.str.933, ptr @.str.934, ptr @.str.935, ptr @.str.936, ptr @.str.937, ptr @.str.938, ptr @.str.643, ptr @.str.939, ptr @.str.732, ptr @.str.683, ptr @.str.940, ptr @.str.645, ptr @.str.941, ptr @.str.942, ptr @.str.943, ptr @.str.944, ptr @.str.945, ptr @.str.946, ptr @.str.947, ptr @.str.948, ptr @.str.949, ptr @.str.950, ptr @.str.951, ptr @.str.830, ptr @.str.952, ptr @.str.953, ptr @.str.954, ptr @.str.955, ptr @.str.741, ptr @.str.956, ptr @.str.957, ptr @.str.958, ptr @.str.959, ptr @.str.960, ptr @.str.961, ptr @.str.962, ptr @.str.963, ptr @.str.744, ptr @.str.745, ptr @.str.964, ptr @.str.746, ptr @.str.965, ptr @.str.966, ptr @.str.967, ptr @.str.968, ptr @.str.969, ptr @.str.970, ptr @.str.688, ptr @.str.971, ptr @.str.972, ptr @.str.973, ptr @.str.974, ptr @.str.975, ptr @.str.976, ptr @.str.977, ptr @.str.978, ptr @.str.979, ptr @.str.980, ptr @.str.981, ptr @.str.982, ptr @.str.983, ptr @.str.837, ptr @.str.838, ptr @.str.984, ptr @.str.653, ptr @.str.985, ptr @.str.986, ptr @.str.987, ptr @.str.988, ptr @.str.989, ptr @.str.990, ptr @.str.991, ptr @.str.794, ptr @.str.992, ptr @.str.993, ptr @.str.994, ptr @.str.995, ptr @.str.996, ptr @.str.997, ptr @.str.998, ptr @.str.999, ptr @.str.1000, ptr @.str.1001, ptr @.str.1002, ptr @.str.1003, ptr @.str.1004, ptr @.str.1005, ptr @.str.1006, ptr @.str.1007, ptr @.str.1008, ptr @.str.1009, ptr @.str.1010, ptr @.str.1011, ptr @.str.1012, ptr @.str.796, ptr @.str.1013, ptr @.str.1014, ptr @.str.1015, ptr @.str.168, ptr @.str.1016, ptr @.str.1017, ptr @.str.1018, ptr @.str.1019, ptr @.str.1020, ptr @.str.1021, ptr @.str.1022, ptr @.str.1023, ptr @.str.1024, ptr @.str.1025, ptr @.str.1026, ptr @.str.1027, ptr @.str.1028, ptr @.str.1029, ptr @.str.1030, ptr @.str.1031, ptr @.str.1032, ptr @.str.1033, ptr @.str.802, ptr @.str.1034, ptr @.str.1035, ptr @.str.1036, ptr @.str.1037, ptr @.str.1038, ptr @.str.1039, ptr @.str.1040, ptr @.str.1041, ptr @.str.1042, ptr @.str.1043, ptr @.str.1044, ptr @.str.1045, ptr @.str.1046, ptr @.str.1047, ptr @.str.1048, ptr @.str.1049, ptr @.str.1050, ptr @.str.1051, ptr @.str.1052, ptr @.str.1053, ptr @.str.1054, ptr @.str.1055, ptr @.str.1056, ptr @.str.1057, ptr @.str.1058, ptr @.str.718, ptr @.str.1059, ptr @.str.1060, ptr @.str.1061, ptr @.str.1062, ptr @.str.1063, ptr @.str.1064, ptr @.str.1065, ptr @.str.1066, ptr @.str.1067, ptr @.str.1068, ptr @.str.1069, ptr @.str.1070, ptr @.str.1071, ptr @.str.1072, ptr @.str.1073, ptr @.str.1074, ptr @.str.1075, ptr @.str.1076, ptr @.str.1077, ptr @.str.1078, ptr @.str.1079, ptr @.str.1080, ptr @.str.1081, ptr @.str.1082, ptr @.str.1083, ptr @.str.1084, ptr @.str.1085, ptr @.str.1086, ptr @.str.790, ptr @.str.1087, ptr @.str.1088, ptr @.str.1089, ptr @.str.1090, ptr @.str.759, ptr @.str.1091, ptr @.str.172, ptr @.str.176, ptr @.str.180, ptr @.str.182, ptr @.str.71, ptr @.str.170, ptr @.str.1092, ptr @.str.638, ptr @.str.185, ptr @.str.191, ptr @.str.187, ptr @.str.189, ptr @.str.633, ptr @.str.847, ptr @.str.1093, ptr @.str.1094, ptr @.str.1095, ptr @.str.1096, ptr @.str.1097, ptr @.str.1098, ptr @.str.1099, ptr @.str.1100, ptr @.str.1101, ptr @.str.1102, ptr @.str.1103, ptr @.str.1104, ptr @.str.1105, ptr @.str.1106, ptr @.str.1107, ptr @.str.1108, ptr @.str.1109, ptr @.str.1110, ptr @.str.1111, ptr @.str.1112, ptr @.str.1113, ptr @.str.1114, ptr @.str.1115, ptr @.str.1116, ptr @.str.1117, ptr @.str.1118, ptr @.str.1119, ptr @.str.1120, ptr @.str.1121, ptr @.str.1122, ptr @.str.1123, ptr @.str.1124, ptr @.str.1125, ptr @.str.1126, ptr @.str.1127, ptr @.str.1128, ptr @.str.1129, ptr @.str.1130, ptr @.str.1131, ptr @.str.1132, ptr @.str.1133], [48 x ptr] zeroinitializer }> }, align 8
@.str.1134 = private unnamed_addr constant [4 x i8] c"Pod\00", align 1
@.str.1135 = private unnamed_addr constant [4 x i8] c"pod\00", align 1
@.str.1136 = private unnamed_addr constant [4 x i8] c"POD\00", align 1
@.str.1137 = private unnamed_addr constant [5 x i8] c"@Pod\00", align 1
@PodLanguage = global { [10 x ptr], ptr, ptr, i32, [4 x i8], <{ [133 x ptr], [17 x ptr] }>, [350 x ptr] } { [10 x ptr] [ptr @.str.1134, ptr @.str.1135, ptr @.str.1136, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], ptr @.str.1135, ptr @.str.1137, i32 2, [4 x i8] undef, <{ [133 x ptr], [17 x ptr] }> <{ [133 x ptr] [ptr @PodVerbatimLineToken, ptr @PodEmptyLineToken, ptr @PodIgnoreToken, ptr @PodHeading1Token, ptr @PodHeading2Token, ptr @PodOverToken, ptr @PodItemToken, ptr @PodBackToken, ptr @PodItemBullet, ptr @PodItem0, ptr @PodItem1, ptr @PodItem2, ptr @PodItem3, ptr @PodItem4, ptr @PodItem5, ptr @PodItem6, ptr @PodItem7, ptr @PodItem8, ptr @PodItem9, ptr @PodForToken, ptr @PodBeginToken, ptr @PodBeginLoutToken, ptr @PodItalicToken, ptr @PodBoldToken, ptr @PodCodeToken, ptr @PodFileToken, ptr @PodNoBreakToken, ptr @PodLinkToken, ptr @PodIndexToken, ptr @PodZeroToken, ptr @PodLessThanToken, ptr @PodGreaterThanToken, ptr @PodSlashToken, ptr @PodVerbarToken, ptr @PE00, ptr @PE03, ptr @PE04, ptr @PE05, ptr @PE06, ptr @PE07, ptr @PE08, ptr @PE09, ptr @PE10, ptr @PE11, ptr @PE12, ptr @PE13, ptr @PE14, ptr @PE15, ptr @PE16, ptr @PE17, ptr @PE18, ptr @PE19, ptr @PE20, ptr @PE21, ptr @PE22, ptr @PE23, ptr @PE24, ptr @PE25, ptr @PE26, ptr @PE27, ptr @PE28, ptr @PE29, ptr @PE30, ptr @PE31, ptr @PE32, ptr @PE33, ptr @PE34, ptr @PE35, ptr @PE36, ptr @PE37, ptr @PE38, ptr @PE39, ptr @PE40, ptr @PE41, ptr @PE42, ptr @PE43, ptr @PE44, ptr @PE45, ptr @PE46, ptr @PE47, ptr @PE48, ptr @PE49, ptr @PE50, ptr @PE51, ptr @PE52, ptr @PE53, ptr @PE54, ptr @PE55, ptr @PE56, ptr @PE57, ptr @PE58, ptr @PE59, ptr @PE60, ptr @PE61, ptr @PE62, ptr @PE63, ptr @PE64, ptr @PE65, ptr @PE66, ptr @PE67, ptr @PE68, ptr @PE69, ptr @PE70, ptr @PE71, ptr @PE72, ptr @PE73, ptr @PE74, ptr @PE75, ptr @PE76, ptr @PE77, ptr @PE78, ptr @PE79, ptr @PE80, ptr @PE81, ptr @PE82, ptr @PE83, ptr @PE84, ptr @PE85, ptr @PE86, ptr @PE87, ptr @PE88, ptr @PE89, ptr @PE90, ptr @PE91, ptr @PE92, ptr @PE93, ptr @PE94, ptr @PE95, ptr @PE96, ptr @PE97, ptr @PE98, ptr @PE99, ptr @PodNumCharToken], [17 x ptr] zeroinitializer }>, [350 x ptr] zeroinitializer }, align 8
@languages = global [6 x ptr] [ptr @BlueLanguage, ptr @CLanguage, ptr @EiffelLanguage, ptr @PerlLanguage, ptr @PodLanguage, ptr @PythonLanguage], align 8
@ErrorHeader.buff = internal global [1024 x i8] zeroinitializer, align 1
@line_num = internal global i32 0, align 4
@line_pos = internal global i32 0, align 4
@.str.1138 = private unnamed_addr constant [9 x i8] c"prg2lout\00", align 1
@raw_seen = internal global i32 0, align 4
@.str.1139 = private unnamed_addr constant [15 x i8] c"prg2lout %d,%d\00", align 1
@.str.1140 = private unnamed_addr constant [18 x i8] c"prg2lout %s %d,%d\00", align 1
@file_name = internal global [1024 x i8] zeroinitializer, align 1
@EchoToken.buff = internal global [1024 x i8] zeroinitializer, align 1
@.str.1141 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@curr_line = internal global [1024 x i8] zeroinitializer, align 1
@in_fp = internal global ptr null, align 8
@HashTableCount = internal global i32 0, align 4
@err_fp = internal global ptr null, align 8
@.str.1142 = private unnamed_addr constant [55 x i8] c"%s internal error: full hash table (increase MAX_SYM)\0A\00", align 1
@HashTable = internal global [609 x ptr] zeroinitializer, align 8
@tab_by_spacing = internal global i32 0, align 4
@out_fp = internal global ptr null, align 8
@out_linepos = internal global i32 0, align 4
@tab_in = internal global i32 0, align 4
@out_linestart = internal global i32 1, align 4
@.str.1143 = private unnamed_addr constant [14 x i8] c"$>\22%.1f%c\22 {}\00", align 1
@tab_out = internal global float 0.000000e+00, align 4
@tab_unit = internal global i8 0, align 1
@.str.1144 = private unnamed_addr constant [15 x i8] c"$>\22%.1f%ct\22 {}\00", align 1
@out_formfeed = internal global i32 0, align 4
@save_on = internal global i32 0, align 4
@.str.1145 = private unnamed_addr constant [37 x i8] c"%s internal error (EmitRaw save_on)\0A\00", align 1
@print_lines = internal global i32 0, align 4
@print_num = internal global i32 0, align 4
@.str.1146 = private unnamed_addr constant [10 x i8] c"@PL{\22%s\22}\00", align 1
@.str.1147 = private unnamed_addr constant [6 x i8] c"\0A@NP\0A\00", align 1
@.str.1148 = private unnamed_addr constant [31 x i8] c"%s internal error (StartEmit)\0A\00", align 1
@save_language = internal global ptr null, align 8
@save_len = internal global i32 0, align 4
@save_value = internal global [1024 x i8] zeroinitializer, align 1
@.str.1149 = private unnamed_addr constant [4 x i8] c"%s{\00", align 1
@brace_depth = internal global i32 0, align 4
@.str.1150 = private unnamed_addr constant [33 x i8] c"%s internal error (print_style)\0A\00", align 1
@.str.1151 = private unnamed_addr constant [35 x i8] c"%s internal error (EndEmit nl/ff)\0A\00", align 1
@.str.1152 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.1153 = private unnamed_addr constant [45 x i8] c"%s: inserted %d closing braces at end of %s\0A\00", align 1
@.str.1154 = private unnamed_addr constant [45 x i8] c"%s: inserted one closing brace at end of %s\0A\00", align 1
@.str.1155 = private unnamed_addr constant [30 x i8] c"%s internal error (EmitChar)\0A\00", align 1
@.str.1156 = private unnamed_addr constant [36 x i8] c"%s internal error (token too long)\0A\00", align 1
@.str.1157 = private unnamed_addr constant [38 x i8] c"%s: inserted opening brace within %s\0A\00", align 1
@.str.1158 = private unnamed_addr constant [36 x i8] c"%s internal error (emitting INNER)\0A\00", align 1
@.str.1159 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@Trie = global ptr null, align 8
@StartLineTrie = global ptr null, align 8
@.str.1160 = private unnamed_addr constant [48 x i8] c"%s: token %s is INNER but has no end delimiter\0A\00", align 1
@.str.1161 = private unnamed_addr constant [30 x i8] c"%s: empty starting delimiter\0A\00", align 1
@.str.1162 = private unnamed_addr constant [41 x i8] c"%s: starting delimiter %s appears twice\0A\00", align 1
@.str.1163 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.1164 = private unnamed_addr constant [9 x i8] c"IN_TOKEN\00", align 1
@.str.1165 = private unnamed_addr constant [23 x i8] c"IN_TOKEN_NEEDING_DELIM\00", align 1
@.str.1166 = private unnamed_addr constant [22 x i8] c"IN_TOKEN_AFTER_ESCAPE\00", align 1
@.str.1167 = private unnamed_addr constant [28 x i8] c"IN_TOKEN_AFTER_INNER_ESCAPE\00", align 1
@.str.1168 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.1169 = private unnamed_addr constant [38 x i8] c"%s: skipping unexpected %c character\0A\00", align 1
@.str.1170 = private unnamed_addr constant [19 x i8] c"%s: %s (octal %o)\0A\00", align 1
@.str.1171 = private unnamed_addr constant [42 x i8] c"skipping unexpected unprintable character\00", align 1
@.str.1172 = private unnamed_addr constant [35 x i8] c"%s internal error: lang->no_match\0A\00", align 1
@.str.1173 = private unnamed_addr constant [47 x i8] c"%s: skipping %c character (not allowed in %s)\0A\00", align 1
@.str.1174 = private unnamed_addr constant [48 x i8] c"%s: skipping tab character (not allowed in %s)\0A\00", align 1
@.str.1175 = private unnamed_addr constant [52 x i8] c"%s: skipping newline character (not allowed in %s)\0A\00", align 1
@.str.1176 = private unnamed_addr constant [53 x i8] c"%s: skipping formfeed character (not allowed in %s)\0A\00", align 1
@.str.1177 = private unnamed_addr constant [43 x i8] c"%s: %s, octal code %o (not allowed in %s)\0A\00", align 1
@.str.1178 = private unnamed_addr constant [31 x i8] c"skipping unprintable character\00", align 1
@.str.1179 = private unnamed_addr constant [43 x i8] c"%s: expected new delimiter here, found %c\0A\00", align 1
@.str.1180 = private unnamed_addr constant [50 x i8] c"%s: skipping %c%c in %s, since %c not legal here\0A\00", align 1
@.str.1181 = private unnamed_addr constant [35 x i8] c"%s: skipping %c and %s (octal %o)\0A\00", align 1
@.str.1182 = private unnamed_addr constant [33 x i8] c"unprintable unexpected character\00", align 1
@.str.1183 = private unnamed_addr constant [32 x i8] c"%s internal error (state = %d)\0A\00", align 1
@.str.1184 = private unnamed_addr constant [34 x i8] c"%s: program text ended within %s\0A\00", align 1
@.str.1185 = private unnamed_addr constant [30 x i8] c"%s: %s token ended within %s\0A\00", align 1
@.str.1186 = private unnamed_addr constant [40 x i8] c"%s: skipping %c at end of program text\0A\00", align 1
@.str.1187 = private unnamed_addr constant [47 x i8] c"%s: program text ended within %s after escape\0A\00", align 1
@.str.1188 = private unnamed_addr constant [43 x i8] c"%s: %s token ended within %s after escape\0A\00", align 1
@.str.1189 = private unnamed_addr constant [31 x i8] c"%s: internal error (state %d)\0A\00", align 1
@.str.1190 = private unnamed_addr constant [36 x i8] c"usage: prg2lout <options> <files>\0A\0A\00", align 1
@.str.1191 = private unnamed_addr constant [28 x i8] c"    where <options> can be\0A\00", align 1
@.str.1192 = private unnamed_addr constant [51 x i8] c"    -r           raw mode (used within Lout only)\0A\00", align 1
@.str.1193 = private unnamed_addr constant [41 x i8] c"    -i<file>     take input from <file>\0A\00", align 1
@.str.1194 = private unnamed_addr constant [40 x i8] c"    -o<file>     send output to <file>\0A\00", align 1
@.str.1195 = private unnamed_addr constant [48 x i8] c"    -e<file>     send error messages to <file>\0A\00", align 1
@.str.1196 = private unnamed_addr constant [56 x i8] c"    -l<language> input is in this programming language\0A\00", align 1
@.str.1197 = private unnamed_addr constant [54 x i8] c"    -p<style>    print style: fixed, varying, symbol\0A\00", align 1
@.str.1198 = private unnamed_addr constant [43 x i8] c"    -f<family>   font family (e.g. Times)\0A\00", align 1
@.str.1199 = private unnamed_addr constant [46 x i8] c"    -s<size>     font size (e.g. 10p or 12p)\0A\00", align 1
@.str.1200 = private unnamed_addr constant [44 x i8] c"    -v<space>    line spacing (e.g. 1.1fx)\0A\00", align 1
@.str.1201 = private unnamed_addr constant [51 x i8] c"    -t<num>      tab interval (e.g. 8 is default)\0A\00", align 1
@.str.1202 = private unnamed_addr constant [50 x i8] c"    -T<dist>     output tab interval (e.g. 0.5i)\0A\00", align 1
@.str.1203 = private unnamed_addr constant [45 x i8] c"    -S<file>     use this as the setup file\0A\00", align 1
@.str.1204 = private unnamed_addr constant [57 x i8] c"    -L<num>      number lines from <num> (default is 1)\0A\00", align 1
@.str.1205 = private unnamed_addr constant [48 x i8] c"    -n           no file names as page headers\0A\00", align 1
@.str.1206 = private unnamed_addr constant [53 x i8] c"    -V           print version information and exit\0A\00", align 1
@.str.1207 = private unnamed_addr constant [52 x i8] c"    -u           print this usage message and exit\0A\00", align 1
@.str.1208 = private unnamed_addr constant [57 x i8] c"    <language> (which is compulsory) can be any one of:\0A\00", align 1
@.str.1209 = private unnamed_addr constant [12 x i8] c"        %s\0A\00", align 1
@.str.1210 = private unnamed_addr constant [52 x i8] c"The values of all formatting options not given are\0A\00", align 1
@.str.1211 = private unnamed_addr constant [56 x i8] c"taken from the setup file: either the file given after\0A\00", align 1
@.str.1212 = private unnamed_addr constant [56 x i8] c"-S, or the system default setup file for this language\0A\00", align 1
@.str.1213 = private unnamed_addr constant [27 x i8] c"if there is no -S option.\0A\00", align 1
@__stderrp = external global ptr, align 8
@numbered_option = internal global ptr null, align 8
@headers_option = internal global i32 0, align 4
@language_option = internal global ptr null, align 8
@setup_option = internal global ptr null, align 8
@tabout_option = internal global ptr null, align 8
@tabin_option = internal global ptr null, align 8
@line_option = internal global ptr null, align 8
@size_option = internal global ptr null, align 8
@font_option = internal global ptr null, align 8
@.str.1214 = private unnamed_addr constant [42 x i8] c"%s: -r must be first if it occurs at all\0A\00", align 1
@.str.1215 = private unnamed_addr constant [24 x i8] c"%s: -i illegal with -r\0A\00", align 1
@.str.1216 = private unnamed_addr constant [19 x i8] c"%s: -i seen twice\0A\00", align 1
@.str.1217 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1218 = private unnamed_addr constant [20 x i8] c"usage: -i<filename>\00", align 1
@.str.1219 = private unnamed_addr constant [31 x i8] c"%s: cannot open input file %s\0A\00", align 1
@.str.1220 = private unnamed_addr constant [19 x i8] c"%s: -o seen twice\0A\00", align 1
@.str.1221 = private unnamed_addr constant [20 x i8] c"usage: -o<filename>\00", align 1
@.str.1222 = private unnamed_addr constant [32 x i8] c"%s: cannot open output file %s\0A\00", align 1
@.str.1223 = private unnamed_addr constant [20 x i8] c"usage: -e<filename>\00", align 1
@.str.1224 = private unnamed_addr constant [30 x i8] c"%s: cannot open error file %s\00", align 1
@.str.1225 = private unnamed_addr constant [31 x i8] c"%s: -p illegal with -r option\0A\00", align 1
@style_option = internal global ptr null, align 8
@.str.1226 = private unnamed_addr constant [22 x i8] c"usage: -p<printstyle>\00", align 1
@.str.1227 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.1228 = private unnamed_addr constant [8 x i8] c"varying\00", align 1
@.str.1229 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.1230 = private unnamed_addr constant [26 x i8] c"%s: unknown -p option %s\0A\00", align 1
@.str.1231 = private unnamed_addr constant [31 x i8] c"%s: -f illegal with -r option\0A\00", align 1
@.str.1232 = private unnamed_addr constant [23 x i8] c"usage: -f<font_family>\00", align 1
@.str.1233 = private unnamed_addr constant [31 x i8] c"%s: -s illegal with -r option\0A\00", align 1
@.str.1234 = private unnamed_addr constant [16 x i8] c"usage: -s<size>\00", align 1
@.str.1235 = private unnamed_addr constant [31 x i8] c"%s: -v illegal with -r option\0A\00", align 1
@.str.1236 = private unnamed_addr constant [24 x i8] c"usage: -v<line_spacing>\00", align 1
@.str.1237 = private unnamed_addr constant [22 x i8] c"%s usage: -t<number>\0A\00", align 1
@.str.1238 = private unnamed_addr constant [44 x i8] c"%s -t: tab interval must be greater than 0\0A\00", align 1
@.str.1239 = private unnamed_addr constant [5 x i8] c"%f%c\00", align 1
@.str.1240 = private unnamed_addr constant [28 x i8] c"%s usage: -T<number><unit>\0A\00", align 1
@.str.1241 = private unnamed_addr constant [49 x i8] c"%s -T: unreasonably large or small tab interval\0A\00", align 1
@.str.1242 = private unnamed_addr constant [40 x i8] c"%s -T: tab unit must be one of cipmfsv\0A\00", align 1
@.str.1243 = private unnamed_addr constant [31 x i8] c"%s: -S illegal with -r option\0A\00", align 1
@.str.1244 = private unnamed_addr constant [20 x i8] c"usage: -S<filename>\00", align 1
@.str.1245 = private unnamed_addr constant [30 x i8] c"%s usage: -L  or  -L<number>\0A\00", align 1
@.str.1246 = private unnamed_addr constant [31 x i8] c"%s: -n illegal with -r option\0A\00", align 1
@.str.1247 = private unnamed_addr constant [31 x i8] c"%s: -V illegal with -r option\0A\00", align 1
@.str.1248 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1249 = private unnamed_addr constant [34 x i8] c"prg2lout Version 2.0 (April 2000)\00", align 1
@.str.1250 = private unnamed_addr constant [31 x i8] c"%s: -u illegal with -r option\0A\00", align 1
@.str.1251 = private unnamed_addr constant [19 x i8] c"%s: -l seen twice\0A\00", align 1
@.str.1252 = private unnamed_addr constant [20 x i8] c"usage: -l<language>\00", align 1
@.str.1253 = private unnamed_addr constant [25 x i8] c"%s: unknown language %s\0A\00", align 1
@.str.1254 = private unnamed_addr constant [34 x i8] c"%s: unknown command line flag %s\0A\00", align 1
@.str.1255 = private unnamed_addr constant [41 x i8] c"%s: file parameter illegal with -r flag\0A\00", align 1
@.str.1256 = private unnamed_addr constant [23 x i8] c"%s: missing -l option\0A\00", align 1
@__stdinp = external global ptr, align 8
@.str.1257 = private unnamed_addr constant [26 x i8] c"%s -r: missing -o option\0A\00", align 1
@__stdoutp = external global ptr, align 8
@.str.1258 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.1259 = private unnamed_addr constant [4 x i8] c"@Sy\00", align 1
@.str.1260 = private unnamed_addr constant [17 x i8] c"sInclude { doc }\00", align 1
@.str.1261 = private unnamed_addr constant [13 x i8] c"%s%s { %s }\0A\00", align 1
@.str.1262 = private unnamed_addr constant [4 x i8] c"@In\00", align 1
@.str.1263 = private unnamed_addr constant [6 x i8] c"clude\00", align 1
@.str.1264 = private unnamed_addr constant [9 x i8] c"sInclude\00", align 1
@.str.1265 = private unnamed_addr constant [11 x i8] c"@Document\0A\00", align 1
@.str.1266 = private unnamed_addr constant [44 x i8] c"    @InitialBreak { lines 1.2fx nohyphen }\0A\00", align 1
@.str.1267 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str.1268 = private unnamed_addr constant [10 x i8] c"@Text @Be\00", align 1
@.str.1269 = private unnamed_addr constant [4 x i8] c"gin\00", align 1
@.str.1270 = private unnamed_addr constant [42 x i8] c"%s: skipping input file %s (cannot open)\0A\00", align 1
@.str.1271 = private unnamed_addr constant [8 x i8] c"\0A\0A@NP\0A\0A\00", align 1
@.str.1272 = private unnamed_addr constant [37 x i8] c"{ Times Bold \22+3p\22 } @Font \22%s\22\0A@DP\0A\00", align 1
@.str.1273 = private unnamed_addr constant [18 x i8] c"    style { %s }\0A\00", align 1
@.str.1274 = private unnamed_addr constant [17 x i8] c"    font { %s }\0A\00", align 1
@.str.1275 = private unnamed_addr constant [17 x i8] c"    size { %s }\0A\00", align 1
@.str.1276 = private unnamed_addr constant [17 x i8] c"    line { %s }\0A\00", align 1
@.str.1277 = private unnamed_addr constant [18 x i8] c"    tabin { %s }\0A\00", align 1
@.str.1278 = private unnamed_addr constant [19 x i8] c"    tabout { %s }\0A\00", align 1
@.str.1279 = private unnamed_addr constant [21 x i8] c"    numbered { %d }\0A\00", align 1
@.str.1280 = private unnamed_addr constant [4 x i8] c"@Be\00", align 1
@.str.1281 = private unnamed_addr constant [9 x i8] c"%s%s %s\0A\00", align 1
@.str.1282 = private unnamed_addr constant [3 x i8] c"@E\00", align 1
@.str.1283 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str.1284 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@.str.1285 = private unnamed_addr constant [6 x i8] c"nd @T\00", align 1
@.str.1286 = private unnamed_addr constant [4 x i8] c"ext\00", align 1

; Function Attrs: nounwind ssp uwtable
define ptr @ErrorHeader() #0 {
entry:
  %0 = load i32, ptr @line_num, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @line_pos, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @ErrorHeader.buff, i32 noundef 0, i64 noundef 1024, ptr noundef @.str.1138)
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, ptr @raw_seen, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %3 = load i32, ptr @line_num, align 4
  %4 = load i32, ptr @line_pos, align 4
  %call3 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @ErrorHeader.buff, i32 noundef 0, i64 noundef 1024, ptr noundef @.str.1139, i32 noundef %3, i32 noundef %4)
  br label %if.end

if.else4:                                         ; preds = %if.else
  %5 = load i32, ptr @line_num, align 4
  %6 = load i32, ptr @line_pos, align 4
  %call5 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @ErrorHeader.buff, i32 noundef 0, i64 noundef 1024, ptr noundef @.str.1140, ptr noundef @file_name, i32 noundef %5, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret ptr @ErrorHeader.buff
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define ptr @EchoToken(ptr noundef %t) #0 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  %0 = load ptr, ptr %t.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @EchoToken.buff, i32 noundef 0, i64 noundef 1024, ptr noundef @.str.1141)
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 8
  %name = getelementptr inbounds %struct.token_rec, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %name, align 8
  %call1 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @EchoToken.buff, i32 noundef 0, i64 noundef 1024, ptr noundef @.str.257, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr @EchoToken.buff
}

; Function Attrs: nounwind ssp uwtable
define void @NextChar() #0 {
entry:
  %0 = load i32, ptr @line_pos, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @line_pos, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @line_pos, align 4
  br label %if.end19

if.else:                                          ; preds = %entry
  %3 = load i32, ptr @line_pos, align 4
  %add = add nsw i32 %3, 1
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom2
  %4 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.else12

if.then7:                                         ; preds = %if.else
  %5 = load i32, ptr @line_pos, align 4
  %add8 = add nsw i32 %5, 1
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom9
  %call = call ptr @strcpy(ptr noundef getelementptr inbounds ([1024 x i8], ptr @curr_line, i64 0, i64 1), ptr noundef %arrayidx10)
  %6 = load i32, ptr @line_num, align 4
  %inc11 = add nsw i32 %6, 1
  store i32 %inc11, ptr @line_num, align 4
  store i32 1, ptr @line_pos, align 4
  br label %if.end18

if.else12:                                        ; preds = %if.else
  %7 = load i32, ptr @line_num, align 4
  %inc13 = add nsw i32 %7, 1
  store i32 %inc13, ptr @line_num, align 4
  store i32 1, ptr @line_pos, align 4
  %8 = load ptr, ptr @in_fp, align 8
  %call14 = call ptr @fgets(ptr noundef getelementptr inbounds ([1024 x i8], ptr @curr_line, i64 0, i64 1), i32 noundef 1022, ptr noundef %8)
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else12
  store i8 0, ptr getelementptr inbounds ([1024 x i8], ptr @curr_line, i64 0, i64 1), align 1
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then7
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  ret void
}

declare ptr @strcpy(ptr noundef, ptr noundef) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @InputMatches(ptr noundef %pattern) #0 {
entry:
  %pattern.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %pattern, ptr %pattern.addr, align 8
  %0 = load i32, ptr @line_pos, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %1 = load ptr, ptr %pattern.addr, align 8
  store ptr %1, ptr %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %q, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %5 = load i8, ptr %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @curr_line to i64)
  %sub = sub nsw i64 1022, %sub.ptr.sub
  %conv5 = trunc i64 %sub to i32
  %8 = load ptr, ptr @in_fp, align 8
  %call = call ptr @fgets(ptr noundef %6, i32 noundef %conv5, ptr noundef %8)
  %cmp6 = icmp eq ptr %call, null
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %9 = load ptr, ptr %p, align 8
  store i8 0, ptr %9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  %10 = load ptr, ptr %p, align 8
  %11 = load i8, ptr %10, align 1
  %conv10 = sext i8 %11 to i32
  %12 = load ptr, ptr %q, align 8
  %13 = load i8, ptr %12, align 1
  %conv11 = sext i8 %13 to i32
  %cmp12 = icmp ne i32 %conv10, %conv11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  br label %for.end

if.end15:                                         ; preds = %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %15 = load ptr, ptr %q, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr16, ptr %q, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then14, %for.cond
  %16 = load ptr, ptr %q, align 8
  %17 = load i8, ptr %16, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  %conv19 = zext i1 %cmp18 to i32
  ret i32 %conv19
}

; Function Attrs: nounwind ssp uwtable
define i32 @TrieInsert(ptr noundef %T, ptr noundef %str, ptr noundef %val) #0 {
entry:
  %T.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %T, ptr %T.addr, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %val, ptr %val.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %res, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %T.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %call = call ptr @calloc(i64 noundef 1, i64 noundef 4096) #7
  %4 = load ptr, ptr %T.addr, align 8
  store ptr %call, ptr %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  %5 = load ptr, ptr %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %add.ptr, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end
  %7 = load ptr, ptr %T.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %sub = getelementptr inbounds %struct.trie_node, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %str.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv9 = sext i8 %10 to i32
  %idxprom = sext i32 %conv9 to i64
  %arrayidx = getelementptr inbounds [256 x ptr], ptr %sub, i64 0, i64 %idxprom
  %11 = load ptr, ptr %str.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %11, i64 1
  %12 = load ptr, ptr %val.addr, align 8
  %call11 = call i32 @TrieInsert(ptr noundef %arrayidx, ptr noundef %add.ptr10, ptr noundef %12)
  store i32 %call11, ptr %res, align 4
  br label %if.end25

if.else12:                                        ; preds = %if.end
  %13 = load ptr, ptr %T.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %value = getelementptr inbounds %struct.trie_node, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %str.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv13 = sext i8 %16 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds [256 x ptr], ptr %value, i64 0, i64 %idxprom14
  %17 = load ptr, ptr %arrayidx15, align 8
  %cmp16 = icmp ne ptr %17, null
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else12
  store i32 0, ptr %res, align 4
  br label %if.end24

if.else19:                                        ; preds = %if.else12
  %18 = load ptr, ptr %val.addr, align 8
  %19 = load ptr, ptr %T.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %value20 = getelementptr inbounds %struct.trie_node, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %str.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv21 = sext i8 %22 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds [256 x ptr], ptr %value20, i64 0, i64 %idxprom22
  store ptr %18, ptr %arrayidx23, align 8
  store i32 1, ptr %res, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else19, %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then8
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %23 = load i32, ptr %res, align 4
  ret i32 %23
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @TrieRetrieve(ptr noundef %T, ptr noundef %str, ptr noundef %len) #0 {
entry:
  %T.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %T, ptr %T.addr, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %len, ptr %len.addr, align 8
  store ptr null, ptr %res, align 8
  %0 = load ptr, ptr %len.addr, align 8
  store i32 0, ptr %0, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %T.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %T.addr, align 8
  %value = getelementptr inbounds %struct.trie_node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %str.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds [256 x ptr], ptr %value, i64 0, i64 %idxprom1
  %6 = load ptr, ptr %arrayidx2, align 8
  %cmp3 = icmp ne ptr %6, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %T.addr, align 8
  %value5 = getelementptr inbounds %struct.trie_node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %str.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 %idxprom6
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %10 to i32
  %idxprom9 = sext i32 %conv8 to i64
  %arrayidx10 = getelementptr inbounds [256 x ptr], ptr %value5, i64 0, i64 %idxprom9
  %11 = load ptr, ptr %arrayidx10, align 8
  store ptr %11, ptr %res, align 8
  %12 = load i32, ptr %i, align 4
  %add = add nsw i32 %12, 1
  %13 = load ptr, ptr %len.addr, align 8
  store i32 %add, ptr %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %T.addr, align 8
  %sub = getelementptr inbounds %struct.trie_node, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %str.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 %idxprom11
  %17 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %17 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %arrayidx15 = getelementptr inbounds [256 x ptr], ptr %sub, i64 0, i64 %idxprom14
  %18 = load ptr, ptr %arrayidx15, align 8
  store ptr %18, ptr %T.addr, align 8
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %res, align 8
  ret ptr %20
}

; Function Attrs: nounwind ssp uwtable
define void @HashInsert(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  %0 = load i32, ptr @HashTableCount, align 4
  %cmp = icmp sge i32 %0, 589
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @err_fp, align 8
  %call = call ptr @ErrorHeader()
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1142, ptr noundef %call)
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %str.addr, align 8
  %call2 = call i32 @hash(ptr noundef %2)
  store i32 %call2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [609 x ptr], ptr @HashTable, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %add = add nsw i32 %5, 1
  %rem = srem i32 %add, 609
  store i32 %rem, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %str.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [609 x ptr], ptr @HashTable, i64 0, i64 %idxprom4
  store ptr %6, ptr %arrayidx5, align 8
  %8 = load i32, ptr @HashTableCount, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr @HashTableCount, align 4
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: cold noreturn
declare void @abort() #3

; Function Attrs: nounwind ssp uwtable
define internal i32 @hash(ptr noundef %key) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  store i32 0, ptr %res, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %key.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %key.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 %idxprom2
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %6 = load i32, ptr %res, align 4
  %add = add nsw i32 %6, %conv4
  store i32 %add, ptr %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %res, align 4
  %rem = srem i32 %8, 609
  ret i32 %rem
}

; Function Attrs: nounwind ssp uwtable
define i32 @HashRetrieve(ptr noundef %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i32 @hash(ptr noundef %0)
  store i32 %call, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [609 x ptr], ptr @HashTable, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [609 x ptr], ptr @HashTable, i64 0, i64 %idxprom1
  %4 = load ptr, ptr %arrayidx2, align 8
  %5 = load ptr, ptr %str.addr, align 8
  %call3 = call i32 @strcmp(ptr noundef %4, ptr noundef %5)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  %rem = srem i32 %add, 609
  store i32 %rem, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @EmitTab() #0 {
entry:
  %0 = load i32, ptr @tab_by_spacing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @out_fp, align 8
  %call = call i32 @putc(i32 noundef 32, ptr noundef %1)
  %2 = load i32, ptr @out_linepos, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @out_linepos, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i32, ptr @out_linepos, align 4
  %4 = load i32, ptr @tab_in, align 4
  %rem = srem i32 %3, %4
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr @out_fp, align 8
  %call1 = call i32 @putc(i32 noundef 32, ptr noundef %5)
  %6 = load i32, ptr @out_linepos, align 4
  %inc2 = add nsw i32 %6, 1
  store i32 %inc2, ptr @out_linepos, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %if.end19

if.else:                                          ; preds = %entry
  %7 = load i32, ptr @out_linepos, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, ptr @out_linepos, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7, %if.else
  %8 = load i32, ptr @out_linepos, align 4
  %9 = load i32, ptr @tab_in, align 4
  %rem5 = srem i32 %8, %9
  %cmp6 = icmp ne i32 %rem5, 0
  br i1 %cmp6, label %while.body7, label %while.end9

while.body7:                                      ; preds = %while.cond4
  %10 = load i32, ptr @out_linepos, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, ptr @out_linepos, align 4
  br label %while.cond4, !llvm.loop !13

while.end9:                                       ; preds = %while.cond4
  %11 = load i32, ptr @out_linestart, align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %while.end9
  %12 = load ptr, ptr @out_fp, align 8
  %13 = load float, ptr @tab_out, align 4
  %conv = fpext float %13 to double
  %14 = load i8, ptr @tab_unit, align 1
  %conv12 = sext i8 %14 to i32
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.1143, double noundef %conv, i32 noundef %conv12)
  br label %if.end

if.else14:                                        ; preds = %while.end9
  %15 = load ptr, ptr @out_fp, align 8
  %16 = load i32, ptr @out_linepos, align 4
  %17 = load i32, ptr @tab_in, align 4
  %div = sdiv i32 %16, %17
  %conv15 = sitofp i32 %div to float
  %18 = load float, ptr @tab_out, align 4
  %mul = fmul float %conv15, %18
  %conv16 = fpext float %mul to double
  %19 = load i8, ptr @tab_unit, align 1
  %conv17 = sext i8 %19 to i32
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.1144, double noundef %conv16, i32 noundef %conv17)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then11
  br label %if.end19

if.end19:                                         ; preds = %if.end, %while.end
  store i32 0, ptr @out_formfeed, align 4
  ret void
}

declare i32 @putc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @EmitRaw(i8 noundef signext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %buff = alloca [20 x i8], align 1
  store i8 %ch, ptr %ch.addr, align 1
  %0 = load i32, ptr @save_on, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @err_fp, align 8
  %call = call ptr @ErrorHeader()
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1145, ptr noundef %call)
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @out_formfeed, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8, ptr %ch.addr, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i8, ptr %ch.addr, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 12
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load i8, ptr %ch.addr, align 1
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 12
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, ptr @out_formfeed, align 4
  br label %sw.epilog

if.end11:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load i32, ptr @print_lines, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %land.lhs.true13, label %if.end27

land.lhs.true13:                                  ; preds = %if.end11
  %7 = load i32, ptr @out_linepos, align 4
  %cmp14 = icmp eq i32 %7, 0
  br i1 %cmp14, label %if.then16, label %if.end27

if.then16:                                        ; preds = %land.lhs.true13
  %8 = load i32, ptr @out_formfeed, align 4
  %tobool17 = icmp ne i32 %8, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  %9 = load i32, ptr @print_num, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr @print_num, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buff, i64 0, i64 0
  %10 = load i32, ptr @print_num, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @print_num, align 4
  %call20 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 20, ptr noundef @.str.242, i32 noundef %10)
  %11 = load ptr, ptr @out_fp, align 8
  %arraydecay21 = getelementptr inbounds [20 x i8], ptr %buff, i64 0, i64 0
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.1146, ptr noundef %arraydecay21)
  %arraydecay23 = getelementptr inbounds [20 x i8], ptr %buff, i64 0, i64 0
  %call24 = call i64 @strlen(ptr noundef %arraydecay23)
  %12 = load i32, ptr @out_linepos, align 4
  %conv25 = sext i32 %12 to i64
  %add = add i64 %conv25, %call24
  %conv26 = trunc i64 %add to i32
  store i32 %conv26, ptr @out_linepos, align 4
  store i32 0, ptr @out_linestart, align 4
  call void @EmitTab()
  br label %if.end27

if.end27:                                         ; preds = %if.end19, %land.lhs.true13, %if.end11
  %13 = load i8, ptr %ch.addr, align 1
  %conv28 = sext i8 %13 to i32
  switch i32 %conv28, label %sw.default [
    i32 32, label %sw.bb
    i32 9, label %sw.bb32
    i32 10, label %sw.bb33
    i32 12, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end27
  %14 = load i8, ptr %ch.addr, align 1
  %conv29 = sext i8 %14 to i32
  %15 = load ptr, ptr @out_fp, align 8
  %call30 = call i32 @fputc(i32 noundef %conv29, ptr noundef %15)
  %16 = load i32, ptr @out_linepos, align 4
  %inc31 = add nsw i32 %16, 1
  store i32 %inc31, ptr @out_linepos, align 4
  store i32 0, ptr @out_formfeed, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end27
  call void @EmitTab()
  store i32 0, ptr @out_formfeed, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end27
  %17 = load i8, ptr %ch.addr, align 1
  %conv34 = sext i8 %17 to i32
  %18 = load ptr, ptr @out_fp, align 8
  %call35 = call i32 @fputc(i32 noundef %conv34, ptr noundef %18)
  store i32 0, ptr @out_linepos, align 4
  store i32 1, ptr @out_linestart, align 4
  store i32 0, ptr @out_formfeed, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end27
  %19 = load ptr, ptr @out_fp, align 8
  %call37 = call i32 @"\01_fputs"(ptr noundef @.str.1147, ptr noundef %19)
  store i32 0, ptr @out_linepos, align 4
  store i32 1, ptr @out_linestart, align 4
  store i32 1, ptr @out_formfeed, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end27
  %20 = load i8, ptr %ch.addr, align 1
  %conv38 = sext i8 %20 to i32
  %21 = load ptr, ptr @out_fp, align 8
  %call39 = call i32 @fputc(i32 noundef %conv38, ptr noundef %21)
  %22 = load i32, ptr @out_linepos, align 4
  %inc40 = add nsw i32 %22, 1
  store i32 %inc40, ptr @out_linepos, align 4
  store i32 0, ptr @out_linestart, align 4
  store i32 0, ptr @out_formfeed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7, %sw.default, %sw.bb36, %sw.bb33, %sw.bb32, %sw.bb
  ret void
}

declare i64 @strlen(ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @StartEmit(ptr noundef %lang, ptr noundef %current_token, ptr noundef %start_delim, i32 noundef %len) #0 {
entry:
  %lang.addr = alloca ptr, align 8
  %current_token.addr = alloca ptr, align 8
  %start_delim.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buff = alloca [20 x i8], align 1
  store ptr %lang, ptr %lang.addr, align 8
  store ptr %current_token, ptr %current_token.addr, align 8
  store ptr %start_delim, ptr %start_delim.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr @save_on, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @err_fp, align 8
  %call = call ptr @ErrorHeader()
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1148, ptr noundef %call)
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lang.addr, align 8
  store ptr %2, ptr @save_language, align 8
  %3 = load i32, ptr @print_lines, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr @out_linepos, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end13

if.then3:                                         ; preds = %land.lhs.true
  %5 = load i32, ptr @out_formfeed, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %6 = load i32, ptr @print_num, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr @print_num, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buff, i64 0, i64 0
  %7 = load i32, ptr @print_num, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @print_num, align 4
  %call7 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 20, ptr noundef @.str.242, i32 noundef %7)
  %8 = load ptr, ptr @out_fp, align 8
  %arraydecay8 = getelementptr inbounds [20 x i8], ptr %buff, i64 0, i64 0
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.1146, ptr noundef %arraydecay8)
  %arraydecay10 = getelementptr inbounds [20 x i8], ptr %buff, i64 0, i64 0
  %call11 = call i64 @strlen(ptr noundef %arraydecay10)
  %9 = load i32, ptr @out_linepos, align 4
  %conv = sext i32 %9 to i64
  %add = add i64 %conv, %call11
  %conv12 = trunc i64 %add to i32
  store i32 %conv12, ptr @out_linepos, align 4
  store i32 0, ptr @out_linestart, align 4
  call void @EmitTab()
  br label %if.end13

if.end13:                                         ; preds = %if.end6, %land.lhs.true, %if.end
  %10 = load ptr, ptr %current_token.addr, align 8
  %print_style = getelementptr inbounds %struct.token_rec, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %print_style, align 8
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb22
    i32 4, label %sw.bb42
    i32 5, label %sw.bb52
    i32 6, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.end13
  store i32 1, ptr @save_on, align 4
  store i32 0, ptr @save_len, align 4
  %12 = load i32, ptr @save_len, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %len.addr, align 4
  %cmp14 = icmp slt i32 %13, %14
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %current_token.addr, align 8
  %16 = load ptr, ptr %start_delim.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %16, i64 %idxprom16
  %18 = load i8, ptr %arrayidx17, align 1
  call void @Emit(ptr noundef %15, i8 noundef signext %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end13
  store i32 1, ptr @save_on, align 4
  store i32 0, ptr @save_len, align 4
  %20 = load i32, ptr @save_len, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom20
  store i8 0, ptr %arrayidx21, align 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end13
  %21 = load ptr, ptr %current_token.addr, align 8
  %command = getelementptr inbounds %struct.token_rec, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %command, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %sw.bb22
  %24 = load ptr, ptr @out_fp, align 8
  %25 = load ptr, ptr %current_token.addr, align 8
  %command28 = getelementptr inbounds %struct.token_rec, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %command28, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.1149, ptr noundef %26)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %sw.bb22
  store i32 0, ptr %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc39, %if.end30
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr %len.addr, align 4
  %cmp32 = icmp slt i32 %27, %28
  br i1 %cmp32, label %for.body34, label %for.end41

for.body34:                                       ; preds = %for.cond31
  %29 = load ptr, ptr %start_delim.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %29, i64 %idxprom35
  %31 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %31 to i32
  %32 = load ptr, ptr @out_fp, align 8
  %call38 = call i32 @putc(i32 noundef %conv37, ptr noundef %32)
  br label %for.inc39

for.inc39:                                        ; preds = %for.body34
  %33 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %33, 1
  store i32 %inc40, ptr %i, align 4
  br label %for.cond31, !llvm.loop !15

for.end41:                                        ; preds = %for.cond31
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end13
  %34 = load ptr, ptr %current_token.addr, align 8
  %command43 = getelementptr inbounds %struct.token_rec, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %command43, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %36 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %if.then48, label %if.end51

if.then48:                                        ; preds = %sw.bb42
  %37 = load ptr, ptr @out_fp, align 8
  %38 = load ptr, ptr %current_token.addr, align 8
  %command49 = getelementptr inbounds %struct.token_rec, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %command49, align 8
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.1149, ptr noundef %39)
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %sw.bb42
  store i32 0, ptr @brace_depth, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end13
  %40 = load ptr, ptr @out_fp, align 8
  %41 = load ptr, ptr %current_token.addr, align 8
  %command53 = getelementptr inbounds %struct.token_rec, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %command53, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.1149, ptr noundef %42)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end13
  %43 = load ptr, ptr @out_fp, align 8
  %44 = load ptr, ptr %current_token.addr, align 8
  %command56 = getelementptr inbounds %struct.token_rec, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %command56, align 8
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.257, ptr noundef %45)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  %46 = load ptr, ptr @err_fp, align 8
  %call58 = call ptr @ErrorHeader()
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.1150, ptr noundef %call58)
  call void @abort() #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb55, %sw.bb52, %if.end51, %for.end41, %sw.bb19, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Emit(ptr noundef %current_token, i8 noundef signext %ch) #0 {
entry:
  %current_token.addr = alloca ptr, align 8
  %ch.addr = alloca i8, align 1
  store ptr %current_token, ptr %current_token.addr, align 8
  store i8 %ch, ptr %ch.addr, align 1
  %0 = load ptr, ptr %current_token.addr, align 8
  %print_style = getelementptr inbounds %struct.token_rec, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %print_style, align 8
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb17
    i32 4, label %sw.bb17
    i32 5, label %sw.bb44
    i32 6, label %sw.bb47
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load i32, ptr @save_on, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  %3 = load ptr, ptr @err_fp, align 8
  %call = call ptr @ErrorHeader()
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1155, ptr noundef %call)
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %sw.bb
  %4 = load i8, ptr %ch.addr, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8, ptr %ch.addr, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 12
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %current_token.addr, align 8
  call void @EndEmit(ptr noundef %6, ptr noundef @.str.10)
  %7 = load i8, ptr %ch.addr, align 1
  call void @EmitRaw(i8 noundef signext %7)
  %8 = load ptr, ptr @save_language, align 8
  %9 = load ptr, ptr %current_token.addr, align 8
  call void @StartEmit(ptr noundef %8, ptr noundef %9, ptr noundef @.str.10, i32 noundef 0)
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, ptr @save_len, align 4
  %cmp7 = icmp slt i32 %10, 1023
  br i1 %cmp7, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else
  %11 = load i8, ptr %ch.addr, align 1
  %12 = load i32, ptr @save_len, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr @save_len, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom
  store i8 %11, ptr %arrayidx, align 1
  %13 = load i32, ptr @save_len, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom10
  store i8 0, ptr %arrayidx11, align 1
  br label %if.end15

if.else12:                                        ; preds = %if.else
  %14 = load ptr, ptr @err_fp, align 8
  %call13 = call ptr @ErrorHeader()
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.1156, ptr noundef %call13)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end15:                                         ; preds = %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry, %entry
  %15 = load i8, ptr %ch.addr, align 1
  %conv18 = sext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 123
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %sw.bb17
  %16 = load i32, ptr @brace_depth, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr @brace_depth, align 4
  br label %if.end41

if.else23:                                        ; preds = %sw.bb17
  %17 = load i8, ptr %ch.addr, align 1
  %conv24 = sext i8 %17 to i32
  %cmp25 = icmp eq i32 %conv24, 125
  br i1 %cmp25, label %if.then27, label %if.end40

if.then27:                                        ; preds = %if.else23
  %18 = load i32, ptr @brace_depth, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr @brace_depth, align 4
  %19 = load i32, ptr @brace_depth, align 4
  %cmp28 = icmp slt i32 %19, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %if.then27
  %20 = load ptr, ptr %current_token.addr, align 8
  %command = getelementptr inbounds %struct.token_rec, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %command, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %22 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %if.then34, label %if.end39

if.then34:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr @err_fp, align 8
  %call35 = call ptr @ErrorHeader()
  %24 = load ptr, ptr %current_token.addr, align 8
  %name = getelementptr inbounds %struct.token_rec, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %name, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.1157, ptr noundef %call35, ptr noundef %25)
  %26 = load ptr, ptr @out_fp, align 8
  %call37 = call i32 @putc(i32 noundef 123, ptr noundef %26)
  %27 = load i32, ptr @brace_depth, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, ptr @brace_depth, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %land.lhs.true, %if.then27
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.else23
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then21
  %28 = load i8, ptr %ch.addr, align 1
  %conv42 = sext i8 %28 to i32
  %29 = load ptr, ptr @out_fp, align 8
  %call43 = call i32 @putc(i32 noundef %conv42, ptr noundef %29)
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %30 = load ptr, ptr @err_fp, align 8
  %call45 = call ptr @ErrorHeader()
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.1158, ptr noundef %call45)
  call void @abort() #8
  unreachable

sw.bb47:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %31 = load ptr, ptr @err_fp, align 8
  %call48 = call ptr @ErrorHeader()
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.1150, ptr noundef %call48)
  call void @abort() #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb47, %if.end41, %if.end16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @EndEmit(ptr noundef %current_token, ptr noundef %end_delim) #0 {
entry:
  %current_token.addr = alloca ptr, align 8
  %end_delim.addr = alloca ptr, align 8
  %com = alloca ptr, align 8
  %i = alloca i32, align 4
  %quoted_now = alloca i32, align 4
  store ptr %current_token, ptr %current_token.addr, align 8
  store ptr %end_delim, ptr %end_delim.addr, align 8
  store i32 0, ptr %quoted_now, align 4
  %0 = load ptr, ptr %current_token.addr, align 8
  %print_style = getelementptr inbounds %struct.token_rec, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %print_style, align 8
  switch i32 %1, label %sw.default146 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb115
    i32 4, label %sw.bb117
    i32 5, label %sw.bb143
    i32 6, label %sw.bb145
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %2 = load ptr, ptr %end_delim.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %current_token.addr, align 8
  %6 = load ptr, ptr %end_delim.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %idxprom2
  %8 = load i8, ptr %arrayidx3, align 1
  call void @Emit(ptr noundef %5, i8 noundef signext %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  br label %sw.bb4

sw.bb4:                                           ; preds = %entry, %for.end
  %10 = load ptr, ptr %current_token.addr, align 8
  %alternate_command = getelementptr inbounds %struct.token_rec, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %alternate_command, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp ne i32 %conv6, 0
  br i1 %cmp7, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %sw.bb4
  %call = call i32 @HashRetrieve(ptr noundef @save_value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %current_token.addr, align 8
  %alternate_command9 = getelementptr inbounds %struct.token_rec, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %alternate_command9, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %sw.bb4
  %15 = load ptr, ptr %current_token.addr, align 8
  %command = getelementptr inbounds %struct.token_rec, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %command, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %14, %cond.true ], [ %16, %cond.false ]
  store ptr %cond, ptr %com, align 8
  %17 = load ptr, ptr %com, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %18 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %19 = load ptr, ptr @out_fp, align 8
  %20 = load ptr, ptr %com, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.1149, ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  store i32 0, ptr @save_on, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc68, %if.end
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr @save_len, align 4
  %cmp16 = icmp slt i32 %21, %22
  br i1 %cmp16, label %for.body18, label %for.end70

for.body18:                                       ; preds = %for.cond15
  %23 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom19
  %24 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %24 to i32
  switch i32 %conv21, label %sw.default [
    i32 64, label %sw.bb22
    i32 47, label %sw.bb22
    i32 124, label %sw.bb22
    i32 38, label %sw.bb22
    i32 35, label %sw.bb22
    i32 123, label %sw.bb22
    i32 125, label %sw.bb22
    i32 94, label %sw.bb22
    i32 126, label %sw.bb22
    i32 45, label %sw.bb22
    i32 34, label %sw.bb29
    i32 92, label %sw.bb29
    i32 32, label %sw.bb37
    i32 9, label %sw.bb37
    i32 10, label %sw.bb63
    i32 12, label %sw.bb63
  ]

sw.bb22:                                          ; preds = %for.body18, %for.body18, %for.body18, %for.body18, %for.body18, %for.body18, %for.body18, %for.body18, %for.body18, %for.body18
  %25 = load i32, ptr %quoted_now, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %sw.bb22
  %26 = load ptr, ptr @out_fp, align 8
  %call25 = call i32 @putc(i32 noundef 34, ptr noundef %26)
  store i32 1, ptr %quoted_now, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %sw.bb22
  %27 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom27
  %28 = load i8, ptr %arrayidx28, align 1
  call void @EmitRaw(i8 noundef signext %28)
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body18, %for.body18
  %29 = load i32, ptr %quoted_now, align 4
  %tobool30 = icmp ne i32 %29, 0
  br i1 %tobool30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %sw.bb29
  %30 = load ptr, ptr @out_fp, align 8
  %call32 = call i32 @putc(i32 noundef 34, ptr noundef %30)
  store i32 1, ptr %quoted_now, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %sw.bb29
  %31 = load ptr, ptr @out_fp, align 8
  %call34 = call i32 @putc(i32 noundef 92, ptr noundef %31)
  %32 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom35
  %33 = load i8, ptr %arrayidx36, align 1
  call void @EmitRaw(i8 noundef signext %33)
  br label %sw.epilog

sw.bb37:                                          ; preds = %for.body18, %for.body18
  %34 = load i32, ptr %quoted_now, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.end56, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %sw.bb37
  %35 = load i32, ptr %i, align 4
  %cmp40 = icmp eq i32 %35, 0
  br i1 %cmp40, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true39
  %36 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %36, 1
  %idxprom42 = sext i32 %sub to i64
  %arrayidx43 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom42
  %37 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 10
  br i1 %cmp45, label %if.then54, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false
  %38 = load i32, ptr %i, align 4
  %sub48 = sub nsw i32 %38, 1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom49
  %39 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %39 to i32
  %cmp52 = icmp eq i32 %conv51, 12
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %lor.lhs.false47, %lor.lhs.false, %land.lhs.true39
  %40 = load ptr, ptr @out_fp, align 8
  %call55 = call i32 @putc(i32 noundef 34, ptr noundef %40)
  store i32 1, ptr %quoted_now, align 4
  store i32 0, ptr @out_linestart, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %lor.lhs.false47, %sw.bb37
  %41 = load i32, ptr %quoted_now, align 4
  %tobool57 = icmp ne i32 %41, 0
  br i1 %tobool57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end56
  %42 = load ptr, ptr @out_fp, align 8
  %call59 = call i32 @putc(i32 noundef 34, ptr noundef %42)
  store i32 0, ptr %quoted_now, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end56
  %43 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom61
  %44 = load i8, ptr %arrayidx62, align 1
  call void @EmitRaw(i8 noundef signext %44)
  br label %sw.epilog

sw.bb63:                                          ; preds = %for.body18, %for.body18
  %45 = load ptr, ptr @err_fp, align 8
  %call64 = call ptr @ErrorHeader()
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.1151, ptr noundef %call64)
  call void @exit(i32 noundef 1) #9
  unreachable

sw.default:                                       ; preds = %for.body18
  %46 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %46 to i64
  %arrayidx67 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom66
  %47 = load i8, ptr %arrayidx67, align 1
  call void @EmitRaw(i8 noundef signext %47)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end60, %if.end33, %if.end26
  br label %for.inc68

for.inc68:                                        ; preds = %sw.epilog
  %48 = load i32, ptr %i, align 4
  %inc69 = add nsw i32 %48, 1
  store i32 %inc69, ptr %i, align 4
  br label %for.cond15, !llvm.loop !17

for.end70:                                        ; preds = %for.cond15
  %49 = load i32, ptr %quoted_now, align 4
  %tobool71 = icmp ne i32 %49, 0
  br i1 %tobool71, label %if.then72, label %if.else

if.then72:                                        ; preds = %for.end70
  %50 = load ptr, ptr @out_fp, align 8
  %call73 = call i32 @putc(i32 noundef 34, ptr noundef %50)
  br label %if.end107

if.else:                                          ; preds = %for.end70
  %51 = load i32, ptr @save_len, align 4
  %cmp74 = icmp sgt i32 %51, 0
  br i1 %cmp74, label %land.lhs.true76, label %if.end106

land.lhs.true76:                                  ; preds = %if.else
  %52 = load i32, ptr @save_len, align 4
  %sub77 = sub nsw i32 %52, 1
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom78
  %53 = load i8, ptr %arrayidx79, align 1
  %conv80 = sext i8 %53 to i32
  %cmp81 = icmp eq i32 %conv80, 32
  br i1 %cmp81, label %if.then104, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true76
  %54 = load i32, ptr @save_len, align 4
  %sub84 = sub nsw i32 %54, 1
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom85
  %55 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %55 to i32
  %cmp88 = icmp eq i32 %conv87, 9
  br i1 %cmp88, label %if.then104, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false83
  %56 = load i32, ptr @save_len, align 4
  %sub91 = sub nsw i32 %56, 1
  %idxprom92 = sext i32 %sub91 to i64
  %arrayidx93 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom92
  %57 = load i8, ptr %arrayidx93, align 1
  %conv94 = sext i8 %57 to i32
  %cmp95 = icmp eq i32 %conv94, 10
  br i1 %cmp95, label %if.then104, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false90
  %58 = load i32, ptr @save_len, align 4
  %sub98 = sub nsw i32 %58, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [1024 x i8], ptr @save_value, i64 0, i64 %idxprom99
  %59 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %59 to i32
  %cmp102 = icmp eq i32 %conv101, 12
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %lor.lhs.false97, %lor.lhs.false90, %lor.lhs.false83, %land.lhs.true76
  %60 = load ptr, ptr @out_fp, align 8
  %call105 = call i32 @"\01_fputs"(ptr noundef @.str.1152, ptr noundef %60)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %lor.lhs.false97, %if.else
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then72
  %61 = load ptr, ptr %com, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %61, i64 0
  %62 = load i8, ptr %arrayidx108, align 1
  %conv109 = sext i8 %62 to i32
  %cmp110 = icmp ne i32 %conv109, 0
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end107
  %63 = load ptr, ptr @out_fp, align 8
  %call113 = call i32 @putc(i32 noundef 125, ptr noundef %63)
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end107
  br label %sw.epilog149

sw.bb115:                                         ; preds = %entry
  %64 = load ptr, ptr %end_delim.addr, align 8
  %65 = load ptr, ptr @out_fp, align 8
  %call116 = call i32 @"\01_fputs"(ptr noundef %64, ptr noundef %65)
  br label %sw.bb117

sw.bb117:                                         ; preds = %entry, %sw.bb115
  %66 = load ptr, ptr %current_token.addr, align 8
  %command118 = getelementptr inbounds %struct.token_rec, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %command118, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %67, i64 0
  %68 = load i8, ptr %arrayidx119, align 1
  %conv120 = sext i8 %68 to i32
  %cmp121 = icmp ne i32 %conv120, 0
  br i1 %cmp121, label %if.then123, label %if.end142

if.then123:                                       ; preds = %sw.bb117
  %69 = load i32, ptr @brace_depth, align 4
  %cmp124 = icmp sgt i32 %69, 0
  br i1 %cmp124, label %if.then126, label %if.end140

if.then126:                                       ; preds = %if.then123
  %70 = load i32, ptr @brace_depth, align 4
  %cmp127 = icmp sgt i32 %70, 1
  br i1 %cmp127, label %if.then129, label %if.else132

if.then129:                                       ; preds = %if.then126
  %71 = load ptr, ptr @err_fp, align 8
  %call130 = call ptr @ErrorHeader()
  %72 = load i32, ptr @brace_depth, align 4
  %73 = load ptr, ptr %current_token.addr, align 8
  %name = getelementptr inbounds %struct.token_rec, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %name, align 8
  %call131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.1153, ptr noundef %call130, i32 noundef %72, ptr noundef %74)
  br label %if.end136

if.else132:                                       ; preds = %if.then126
  %75 = load ptr, ptr @err_fp, align 8
  %call133 = call ptr @ErrorHeader()
  %76 = load ptr, ptr %current_token.addr, align 8
  %name134 = getelementptr inbounds %struct.token_rec, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %name134, align 8
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.1154, ptr noundef %call133, ptr noundef %77)
  br label %if.end136

if.end136:                                        ; preds = %if.else132, %if.then129
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end136
  %78 = load i32, ptr @brace_depth, align 4
  %cmp137 = icmp sgt i32 %78, 0
  br i1 %cmp137, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %79 = load ptr, ptr @out_fp, align 8
  %call139 = call i32 @putc(i32 noundef 125, ptr noundef %79)
  %80 = load i32, ptr @brace_depth, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, ptr @brace_depth, align 4
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  br label %if.end140

if.end140:                                        ; preds = %while.end, %if.then123
  %81 = load ptr, ptr @out_fp, align 8
  %call141 = call i32 @putc(i32 noundef 125, ptr noundef %81)
  br label %if.end142

if.end142:                                        ; preds = %if.end140, %sw.bb117
  br label %sw.epilog149

sw.bb143:                                         ; preds = %entry
  %82 = load ptr, ptr @out_fp, align 8
  %call144 = call i32 @putc(i32 noundef 125, ptr noundef %82)
  br label %sw.epilog149

sw.bb145:                                         ; preds = %entry
  br label %sw.epilog149

sw.default146:                                    ; preds = %entry
  %83 = load ptr, ptr @err_fp, align 8
  %call147 = call ptr @ErrorHeader()
  %call148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.1150, ptr noundef %call147)
  call void @abort() #8
  unreachable

sw.epilog149:                                     ; preds = %sw.bb145, %sw.bb143, %if.end142, %if.end114
  %84 = load ptr, ptr %current_token.addr, align 8
  %following_command = getelementptr inbounds %struct.token_rec, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %following_command, align 8
  %cmp150 = icmp ne ptr %85, null
  br i1 %cmp150, label %if.then152, label %if.end155

if.then152:                                       ; preds = %sw.epilog149
  %86 = load ptr, ptr @out_fp, align 8
  %87 = load ptr, ptr %current_token.addr, align 8
  %following_command153 = getelementptr inbounds %struct.token_rec, ptr %87, i32 0, i32 4
  %88 = load ptr, ptr %following_command153, align 8
  %call154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.257, ptr noundef %88)
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %sw.epilog149
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind ssp uwtable
define void @EmitProtected(i8 noundef signext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, ptr %ch.addr, align 1
  %0 = load i8, ptr %ch.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 64, label %sw.bb
    i32 47, label %sw.bb
    i32 124, label %sw.bb
    i32 38, label %sw.bb
    i32 35, label %sw.bb
    i32 123, label %sw.bb
    i32 125, label %sw.bb
    i32 94, label %sw.bb
    i32 126, label %sw.bb
    i32 45, label %sw.bb
    i32 34, label %sw.bb2
    i32 92, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load ptr, ptr @out_fp, align 8
  %call = call i32 @putc(i32 noundef 34, ptr noundef %1)
  %2 = load i8, ptr %ch.addr, align 1
  call void @EmitRaw(i8 noundef signext %2)
  %3 = load ptr, ptr @out_fp, align 8
  %call1 = call i32 @putc(i32 noundef 34, ptr noundef %3)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  %4 = load ptr, ptr @out_fp, align 8
  %call3 = call i32 @putc(i32 noundef 34, ptr noundef %4)
  %5 = load ptr, ptr @out_fp, align 8
  %call4 = call i32 @putc(i32 noundef 92, ptr noundef %5)
  %6 = load i8, ptr %ch.addr, align 1
  call void @EmitRaw(i8 noundef signext %6)
  %7 = load ptr, ptr @out_fp, align 8
  %call5 = call i32 @putc(i32 noundef 34, ptr noundef %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load i8, ptr %ch.addr, align 1
  call void @EmitRaw(i8 noundef signext %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define ptr @clone2strings(ptr noundef %s1, ptr noundef %s2) #0 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  store ptr %s1, ptr %s1.addr, align 8
  store ptr %s2, ptr %s2.addr, align 8
  %0 = load ptr, ptr %s1.addr, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %1 = load ptr, ptr %s2.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1)
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 1
  %mul = mul i64 %add2, 1
  %call3 = call ptr @malloc(i64 noundef %mul) #10
  store ptr %call3, ptr %res, align 8
  %2 = load ptr, ptr %res, align 8
  %3 = load ptr, ptr %res, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %5 = load ptr, ptr %s1.addr, align 8
  %6 = load ptr, ptr %s2.addr, align 8
  %call4 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %2, i32 noundef 0, i64 noundef %4, ptr noundef @.str.1159, ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %res, align 8
  ret ptr %7
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: nounwind ssp uwtable
define ptr @ExpandToken(ptr noundef %t, i32 noundef %starts_pos) #0 {
entry:
  %t.addr = alloca ptr, align 8
  %starts_pos.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  store i32 %starts_pos, ptr %starts_pos.addr, align 4
  %call = call ptr @calloc(i64 noundef 1, i64 noundef 2304) #7
  store ptr %call, ptr %res, align 8
  %0 = load ptr, ptr %t.addr, align 8
  %name = getelementptr inbounds %struct.token_rec, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %name, align 8
  %2 = load ptr, ptr %res, align 8
  %name1 = getelementptr inbounds %struct.token_rec, ptr %2, i32 0, i32 0
  store ptr %1, ptr %name1, align 8
  %3 = load ptr, ptr %t.addr, align 8
  %print_style = getelementptr inbounds %struct.token_rec, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %print_style, align 8
  %5 = load ptr, ptr %res, align 8
  %print_style2 = getelementptr inbounds %struct.token_rec, ptr %5, i32 0, i32 1
  store i32 %4, ptr %print_style2, align 8
  %6 = load ptr, ptr %t.addr, align 8
  %command = getelementptr inbounds %struct.token_rec, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %command, align 8
  %8 = load ptr, ptr %res, align 8
  %command3 = getelementptr inbounds %struct.token_rec, ptr %8, i32 0, i32 2
  store ptr %7, ptr %command3, align 8
  %9 = load ptr, ptr %t.addr, align 8
  %alternate_command = getelementptr inbounds %struct.token_rec, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %alternate_command, align 8
  %11 = load ptr, ptr %res, align 8
  %alternate_command4 = getelementptr inbounds %struct.token_rec, ptr %11, i32 0, i32 3
  store ptr %10, ptr %alternate_command4, align 8
  %12 = load ptr, ptr %t.addr, align 8
  %following_command = getelementptr inbounds %struct.token_rec, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %following_command, align 8
  %14 = load ptr, ptr %res, align 8
  %following_command5 = getelementptr inbounds %struct.token_rec, ptr %14, i32 0, i32 4
  store ptr %13, ptr %following_command5, align 8
  %15 = load ptr, ptr %t.addr, align 8
  %start_line_only = getelementptr inbounds %struct.token_rec, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %start_line_only, align 8
  %17 = load ptr, ptr %res, align 8
  %start_line_only6 = getelementptr inbounds %struct.token_rec, ptr %17, i32 0, i32 5
  store i32 %16, ptr %start_line_only6, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load ptr, ptr %t.addr, align 8
  %starts = getelementptr inbounds %struct.token_rec, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [120 x ptr], ptr %starts, i64 0, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %20, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %t.addr, align 8
  %starts7 = getelementptr inbounds %struct.token_rec, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %22 to i64
  %arrayidx9 = getelementptr inbounds [120 x ptr], ptr %starts7, i64 0, i64 %idxprom8
  %23 = load ptr, ptr %arrayidx9, align 8
  %24 = load ptr, ptr %t.addr, align 8
  %starts2 = getelementptr inbounds %struct.token_rec, ptr %24, i32 0, i32 7
  %25 = load i32, ptr %starts_pos.addr, align 4
  %idxprom10 = sext i32 %25 to i64
  %arrayidx11 = getelementptr inbounds [30 x ptr], ptr %starts2, i64 0, i64 %idxprom10
  %26 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @clone2strings(ptr noundef %23, ptr noundef %26)
  %27 = load ptr, ptr %res, align 8
  %starts13 = getelementptr inbounds %struct.token_rec, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds [120 x ptr], ptr %starts13, i64 0, i64 %idxprom14
  store ptr %call12, ptr %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %t.addr, align 8
  %legal = getelementptr inbounds %struct.token_rec, ptr %30, i32 0, i32 10
  %31 = load ptr, ptr %legal, align 8
  %32 = load ptr, ptr %res, align 8
  %legal16 = getelementptr inbounds %struct.token_rec, ptr %32, i32 0, i32 10
  store ptr %31, ptr %legal16, align 8
  %33 = load ptr, ptr %t.addr, align 8
  %escape = getelementptr inbounds %struct.token_rec, ptr %33, i32 0, i32 11
  %34 = load ptr, ptr %escape, align 8
  %35 = load ptr, ptr %res, align 8
  %escape17 = getelementptr inbounds %struct.token_rec, ptr %35, i32 0, i32 11
  store ptr %34, ptr %escape17, align 8
  %36 = load ptr, ptr %t.addr, align 8
  %escape_legal = getelementptr inbounds %struct.token_rec, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %escape_legal, align 8
  %38 = load ptr, ptr %res, align 8
  %escape_legal18 = getelementptr inbounds %struct.token_rec, ptr %38, i32 0, i32 12
  store ptr %37, ptr %escape_legal18, align 8
  %39 = load ptr, ptr %t.addr, align 8
  %inner_escape = getelementptr inbounds %struct.token_rec, ptr %39, i32 0, i32 13
  %40 = load ptr, ptr %inner_escape, align 8
  %41 = load ptr, ptr %res, align 8
  %inner_escape19 = getelementptr inbounds %struct.token_rec, ptr %41, i32 0, i32 13
  store ptr %40, ptr %inner_escape19, align 8
  %42 = load ptr, ptr %t.addr, align 8
  %end_inner_escape = getelementptr inbounds %struct.token_rec, ptr %42, i32 0, i32 14
  %43 = load ptr, ptr %end_inner_escape, align 8
  %44 = load ptr, ptr %res, align 8
  %end_inner_escape20 = getelementptr inbounds %struct.token_rec, ptr %44, i32 0, i32 14
  store ptr %43, ptr %end_inner_escape20, align 8
  %45 = load ptr, ptr %t.addr, align 8
  %brackets2 = getelementptr inbounds %struct.token_rec, ptr %45, i32 0, i32 8
  %46 = load i32, ptr %starts_pos.addr, align 4
  %idxprom21 = sext i32 %46 to i64
  %arrayidx22 = getelementptr inbounds [30 x ptr], ptr %brackets2, i64 0, i64 %idxprom21
  %47 = load ptr, ptr %arrayidx22, align 8
  %48 = load ptr, ptr %res, align 8
  %bracket_delimiter = getelementptr inbounds %struct.token_rec, ptr %48, i32 0, i32 15
  store ptr %47, ptr %bracket_delimiter, align 8
  %49 = load ptr, ptr %t.addr, align 8
  %ends2 = getelementptr inbounds %struct.token_rec, ptr %49, i32 0, i32 9
  %50 = load i32, ptr %starts_pos.addr, align 4
  %idxprom23 = sext i32 %50 to i64
  %arrayidx24 = getelementptr inbounds [30 x ptr], ptr %ends2, i64 0, i64 %idxprom23
  %51 = load ptr, ptr %arrayidx24, align 8
  %52 = load ptr, ptr %res, align 8
  %end_delimiter = getelementptr inbounds %struct.token_rec, ptr %52, i32 0, i32 16
  store ptr %51, ptr %end_delimiter, align 8
  %53 = load ptr, ptr %t.addr, align 8
  %end_start_line_only = getelementptr inbounds %struct.token_rec, ptr %53, i32 0, i32 17
  %54 = load i32, ptr %end_start_line_only, align 8
  %55 = load ptr, ptr %res, align 8
  %end_start_line_only25 = getelementptr inbounds %struct.token_rec, ptr %55, i32 0, i32 17
  store i32 %54, ptr %end_start_line_only25, align 8
  %56 = load ptr, ptr %t.addr, align 8
  %want_two_ends = getelementptr inbounds %struct.token_rec, ptr %56, i32 0, i32 18
  %57 = load i32, ptr %want_two_ends, align 4
  %58 = load ptr, ptr %res, align 8
  %want_two_ends26 = getelementptr inbounds %struct.token_rec, ptr %58, i32 0, i32 18
  store i32 %57, ptr %want_two_ends26, align 4
  %59 = load ptr, ptr %res, align 8
  ret ptr %59
}

; Function Attrs: nounwind ssp uwtable
define void @SetupOneToken(ptr noundef %t) #0 {
entry:
  %t.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  %0 = load ptr, ptr %t.addr, align 8
  %print_style = getelementptr inbounds %struct.token_rec, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %print_style, align 8
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %t.addr, align 8
  %end_delimiter = getelementptr inbounds %struct.token_rec, ptr %2, i32 0, i32 16
  %3 = load ptr, ptr %end_delimiter, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load ptr, ptr %t.addr, align 8
  %end_delimiter2 = getelementptr inbounds %struct.token_rec, ptr %4, i32 0, i32 16
  %5 = load ptr, ptr %end_delimiter2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %7 = load ptr, ptr @err_fp, align 8
  %8 = load ptr, ptr %t.addr, align 8
  %name = getelementptr inbounds %struct.token_rec, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %name, align 8
  %call = call ptr @ErrorHeader()
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1160, ptr noundef %9, ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %t.addr, align 8
  %legal = getelementptr inbounds %struct.token_rec, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %legal, align 8
  %cmp8 = icmp eq ptr %11, null
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %12 = load i32, ptr %j, align 4
  %cmp11 = icmp slt i32 %12, 256
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %t.addr, align 8
  %chtype = getelementptr inbounds %struct.token_rec, ptr %13, i32 0, i32 19
  %14 = load i32, ptr %j, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr %chtype, i64 0, i64 %idxprom
  store i8 1, ptr %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  br label %if.end32

if.else:                                          ; preds = %if.end7
  store i32 0, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc29, %if.else
  %16 = load ptr, ptr %t.addr, align 8
  %legal15 = getelementptr inbounds %struct.token_rec, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %legal15, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %17, i64 %idxprom16
  %19 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %19 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %for.body21, label %for.end31

for.body21:                                       ; preds = %for.cond14
  %20 = load ptr, ptr %t.addr, align 8
  %chtype22 = getelementptr inbounds %struct.token_rec, ptr %20, i32 0, i32 19
  %21 = load ptr, ptr %t.addr, align 8
  %legal23 = getelementptr inbounds %struct.token_rec, ptr %21, i32 0, i32 10
  %22 = load ptr, ptr %legal23, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %22, i64 %idxprom24
  %24 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %24 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], ptr %chtype22, i64 0, i64 %idxprom27
  store i8 1, ptr %arrayidx28, align 1
  br label %for.inc29

for.inc29:                                        ; preds = %for.body21
  %25 = load i32, ptr %j, align 4
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, ptr %j, align 4
  br label %for.cond14, !llvm.loop !21

for.end31:                                        ; preds = %for.cond14
  br label %if.end32

if.end32:                                         ; preds = %for.end31, %for.end
  %26 = load ptr, ptr %t.addr, align 8
  %escape = getelementptr inbounds %struct.token_rec, ptr %26, i32 0, i32 11
  %27 = load ptr, ptr %escape, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %28 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end32
  %29 = load ptr, ptr %t.addr, align 8
  %chtype38 = getelementptr inbounds %struct.token_rec, ptr %29, i32 0, i32 19
  %30 = load ptr, ptr %t.addr, align 8
  %escape39 = getelementptr inbounds %struct.token_rec, ptr %30, i32 0, i32 11
  %31 = load ptr, ptr %escape39, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %32 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], ptr %chtype38, i64 0, i64 %idxprom42
  store i8 2, ptr %arrayidx43, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end32
  %33 = load ptr, ptr %t.addr, align 8
  %inner_escape = getelementptr inbounds %struct.token_rec, ptr %33, i32 0, i32 13
  %34 = load ptr, ptr %inner_escape, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %35 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end44
  %36 = load ptr, ptr %t.addr, align 8
  %chtype50 = getelementptr inbounds %struct.token_rec, ptr %36, i32 0, i32 19
  %37 = load ptr, ptr %t.addr, align 8
  %inner_escape51 = getelementptr inbounds %struct.token_rec, ptr %37, i32 0, i32 13
  %38 = load ptr, ptr %inner_escape51, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %39 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %arrayidx55 = getelementptr inbounds [256 x i8], ptr %chtype50, i64 0, i64 %idxprom54
  store i8 3, ptr %arrayidx55, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end44
  %40 = load ptr, ptr %t.addr, align 8
  %escape_legal = getelementptr inbounds %struct.token_rec, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %escape_legal, align 8
  %cmp57 = icmp eq ptr %41, null
  br i1 %cmp57, label %if.then59, label %if.else69

if.then59:                                        ; preds = %if.end56
  store i32 0, ptr %j, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc66, %if.then59
  %42 = load i32, ptr %j, align 4
  %cmp61 = icmp slt i32 %42, 256
  br i1 %cmp61, label %for.body63, label %for.end68

for.body63:                                       ; preds = %for.cond60
  %43 = load ptr, ptr %t.addr, align 8
  %escape_chtype = getelementptr inbounds %struct.token_rec, ptr %43, i32 0, i32 20
  %44 = load i32, ptr %j, align 4
  %idxprom64 = sext i32 %44 to i64
  %arrayidx65 = getelementptr inbounds [256 x i8], ptr %escape_chtype, i64 0, i64 %idxprom64
  store i8 1, ptr %arrayidx65, align 1
  br label %for.inc66

for.inc66:                                        ; preds = %for.body63
  %45 = load i32, ptr %j, align 4
  %inc67 = add nsw i32 %45, 1
  store i32 %inc67, ptr %j, align 4
  br label %for.cond60, !llvm.loop !22

for.end68:                                        ; preds = %for.cond60
  br label %if.end88

if.else69:                                        ; preds = %if.end56
  store i32 0, ptr %j, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc85, %if.else69
  %46 = load ptr, ptr %t.addr, align 8
  %escape_legal71 = getelementptr inbounds %struct.token_rec, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %escape_legal71, align 8
  %48 = load i32, ptr %j, align 4
  %idxprom72 = sext i32 %48 to i64
  %arrayidx73 = getelementptr inbounds i8, ptr %47, i64 %idxprom72
  %49 = load i8, ptr %arrayidx73, align 1
  %conv74 = sext i8 %49 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %for.body77, label %for.end87

for.body77:                                       ; preds = %for.cond70
  %50 = load ptr, ptr %t.addr, align 8
  %escape_chtype78 = getelementptr inbounds %struct.token_rec, ptr %50, i32 0, i32 20
  %51 = load ptr, ptr %t.addr, align 8
  %escape_legal79 = getelementptr inbounds %struct.token_rec, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %escape_legal79, align 8
  %53 = load i32, ptr %j, align 4
  %idxprom80 = sext i32 %53 to i64
  %arrayidx81 = getelementptr inbounds i8, ptr %52, i64 %idxprom80
  %54 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %54 to i32
  %idxprom83 = sext i32 %conv82 to i64
  %arrayidx84 = getelementptr inbounds [256 x i8], ptr %escape_chtype78, i64 0, i64 %idxprom83
  store i8 1, ptr %arrayidx84, align 1
  br label %for.inc85

for.inc85:                                        ; preds = %for.body77
  %55 = load i32, ptr %j, align 4
  %inc86 = add nsw i32 %55, 1
  store i32 %inc86, ptr %j, align 4
  br label %for.cond70, !llvm.loop !23

for.end87:                                        ; preds = %for.cond70
  br label %if.end88

if.end88:                                         ; preds = %for.end87, %for.end68
  store i32 0, ptr %j, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc118, %if.end88
  %56 = load ptr, ptr %t.addr, align 8
  %starts = getelementptr inbounds %struct.token_rec, ptr %56, i32 0, i32 6
  %57 = load i32, ptr %j, align 4
  %idxprom90 = sext i32 %57 to i64
  %arrayidx91 = getelementptr inbounds [120 x ptr], ptr %starts, i64 0, i64 %idxprom90
  %58 = load ptr, ptr %arrayidx91, align 8
  %cmp92 = icmp ne ptr %58, null
  br i1 %cmp92, label %for.body94, label %for.end120

for.body94:                                       ; preds = %for.cond89
  %59 = load ptr, ptr %t.addr, align 8
  %start_line_only = getelementptr inbounds %struct.token_rec, ptr %59, i32 0, i32 5
  %60 = load i32, ptr %start_line_only, align 8
  %tobool = icmp ne i32 %60, 0
  %61 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @StartLineTrie, ptr @Trie
  %62 = load ptr, ptr %t.addr, align 8
  %starts95 = getelementptr inbounds %struct.token_rec, ptr %62, i32 0, i32 6
  %63 = load i32, ptr %j, align 4
  %idxprom96 = sext i32 %63 to i64
  %arrayidx97 = getelementptr inbounds [120 x ptr], ptr %starts95, i64 0, i64 %idxprom96
  %64 = load ptr, ptr %arrayidx97, align 8
  %65 = load ptr, ptr %t.addr, align 8
  %call98 = call i32 @TrieInsert(ptr noundef %cond, ptr noundef %64, ptr noundef %65)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end117, label %if.then100

if.then100:                                       ; preds = %for.body94
  %66 = load ptr, ptr %t.addr, align 8
  %starts101 = getelementptr inbounds %struct.token_rec, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %j, align 4
  %idxprom102 = sext i32 %67 to i64
  %arrayidx103 = getelementptr inbounds [120 x ptr], ptr %starts101, i64 0, i64 %idxprom102
  %68 = load ptr, ptr %arrayidx103, align 8
  %69 = load i8, ptr %68, align 1
  %conv104 = sext i8 %69 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %if.then107, label %if.else110

if.then107:                                       ; preds = %if.then100
  %70 = load ptr, ptr @err_fp, align 8
  %call108 = call ptr @ErrorHeader()
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.1161, ptr noundef %call108)
  br label %if.end116

if.else110:                                       ; preds = %if.then100
  %71 = load ptr, ptr @err_fp, align 8
  %call111 = call ptr @ErrorHeader()
  %72 = load ptr, ptr %t.addr, align 8
  %starts112 = getelementptr inbounds %struct.token_rec, ptr %72, i32 0, i32 6
  %73 = load i32, ptr %j, align 4
  %idxprom113 = sext i32 %73 to i64
  %arrayidx114 = getelementptr inbounds [120 x ptr], ptr %starts112, i64 0, i64 %idxprom113
  %74 = load ptr, ptr %arrayidx114, align 8
  %call115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.1162, ptr noundef %call111, ptr noundef %74)
  br label %if.end116

if.end116:                                        ; preds = %if.else110, %if.then107
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %for.body94
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117
  %75 = load i32, ptr %j, align 4
  %inc119 = add nsw i32 %75, 1
  store i32 %inc119, ptr %j, align 4
  br label %for.cond89, !llvm.loop !24

for.end120:                                       ; preds = %for.cond89
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @SetupLanguage(ptr noundef %lang) #0 {
entry:
  %lang.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %lang, ptr %lang.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load ptr, ptr %lang.addr, align 8
  %tokens = getelementptr inbounds %struct.lang_rec, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [150 x ptr], ptr %tokens, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %lang.addr, align 8
  %tokens1 = getelementptr inbounds %struct.lang_rec, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [150 x ptr], ptr %tokens1, i64 0, i64 %idxprom2
  %5 = load ptr, ptr %arrayidx3, align 8
  %starts2 = getelementptr inbounds %struct.token_rec, ptr %5, i32 0, i32 7
  %arrayidx4 = getelementptr inbounds [30 x ptr], ptr %starts2, i64 0, i64 0
  %6 = load ptr, ptr %arrayidx4, align 8
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.then
  %7 = load ptr, ptr %lang.addr, align 8
  %tokens7 = getelementptr inbounds %struct.lang_rec, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [150 x ptr], ptr %tokens7, i64 0, i64 %idxprom8
  %9 = load ptr, ptr %arrayidx9, align 8
  %starts210 = getelementptr inbounds %struct.token_rec, ptr %9, i32 0, i32 7
  %10 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [30 x ptr], ptr %starts210, i64 0, i64 %idxprom11
  %11 = load ptr, ptr %arrayidx12, align 8
  %cmp13 = icmp ne ptr %11, null
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond6
  %12 = load ptr, ptr %lang.addr, align 8
  %tokens15 = getelementptr inbounds %struct.lang_rec, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [150 x ptr], ptr %tokens15, i64 0, i64 %idxprom16
  %14 = load ptr, ptr %arrayidx17, align 8
  %15 = load i32, ptr %j, align 4
  %call = call ptr @ExpandToken(ptr noundef %14, i32 noundef %15)
  store ptr %call, ptr %t, align 8
  %16 = load ptr, ptr %t, align 8
  call void @SetupOneToken(ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond6, !llvm.loop !25

for.end:                                          ; preds = %for.cond6
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load ptr, ptr %lang.addr, align 8
  %tokens18 = getelementptr inbounds %struct.lang_rec, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [150 x ptr], ptr %tokens18, i64 0, i64 %idxprom19
  %20 = load ptr, ptr %arrayidx20, align 8
  call void @SetupOneToken(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %21 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %21, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end23:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc32, %for.end23
  %22 = load ptr, ptr %lang.addr, align 8
  %keywords = getelementptr inbounds %struct.lang_rec, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [350 x ptr], ptr %keywords, i64 0, i64 %idxprom25
  %24 = load ptr, ptr %arrayidx26, align 8
  %cmp27 = icmp ne ptr %24, null
  br i1 %cmp27, label %for.body28, label %for.end34

for.body28:                                       ; preds = %for.cond24
  %25 = load ptr, ptr %lang.addr, align 8
  %keywords29 = getelementptr inbounds %struct.lang_rec, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [350 x ptr], ptr %keywords29, i64 0, i64 %idxprom30
  %27 = load ptr, ptr %arrayidx31, align 8
  call void @HashInsert(ptr noundef %27)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body28
  %28 = load i32, ptr %j, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, ptr %j, align 4
  br label %for.cond24, !llvm.loop !27

for.end34:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @Printable(i8 noundef signext %ch) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  store i8 %ch, ptr %ch.addr, align 1
  store ptr @AllPrintable, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = sext i8 %3 to i32
  %4 = load i8, ptr %ch.addr, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv2, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %land.end
  %7 = load ptr, ptr %p, align 8
  %8 = load i8, ptr %7, align 1
  %conv6 = sext i8 %8 to i32
  %9 = load i8, ptr %ch.addr, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  %conv9 = zext i1 %cmp8 to i32
  ret i32 %conv9
}

; Function Attrs: nounwind ssp uwtable
define ptr @TokenStartingHere(ptr noundef %len) #0 {
entry:
  %len.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  store ptr %len, ptr %len.addr, align 8
  %0 = load i32, ptr @line_pos, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @StartLineTrie, align 8
  %2 = load i32, ptr @line_pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom
  %3 = load ptr, ptr %len.addr, align 8
  %call = call ptr @TrieRetrieve(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %3)
  store ptr %call, ptr %res, align 8
  %4 = load ptr, ptr %res, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr @Trie, align 8
  %6 = load i32, ptr @line_pos, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom3
  %7 = load ptr, ptr %len.addr, align 8
  %call5 = call ptr @TrieRetrieve(ptr noundef %5, ptr noundef %arrayidx4, ptr noundef %7)
  store ptr %call5, ptr %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end9

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr @Trie, align 8
  %9 = load i32, ptr @line_pos, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom6
  %10 = load ptr, ptr %len.addr, align 8
  %call8 = call ptr @TrieRetrieve(ptr noundef %8, ptr noundef %arrayidx7, ptr noundef %10)
  store ptr %call8, ptr %res, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %11 = load ptr, ptr %res, align 8
  ret ptr %11
}

; Function Attrs: nounwind ssp uwtable
define i32 @Matching() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.CHAR_PAIR], ptr @pairs, i64 0, i64 %idxprom
  %first = getelementptr inbounds %struct.CHAR_PAIR, ptr %arrayidx, i32 0, i32 0
  %1 = load ptr, ptr %first, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [5 x %struct.CHAR_PAIR], ptr @pairs, i64 0, i64 %idxprom1
  %first3 = getelementptr inbounds %struct.CHAR_PAIR, ptr %arrayidx2, i32 0, i32 0
  %3 = load ptr, ptr %first3, align 8
  %call = call i32 @InputMatches(ptr noundef %3)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %land.end
  %6 = load i32, ptr %i, align 4
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define ptr @debug_state(i32 noundef %s) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  store i32 %s, ptr %s.addr, align 4
  %0 = load i32, ptr %s.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.1163, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @.str.1164, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @.str.1165, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @.str.1166, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store ptr @.str.1167, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store ptr @.str.1168, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %entry
  store ptr @.str.118, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define void @Process(ptr noundef %lang, ptr noundef %outer_token, ptr noundef %outer_end_delimiter) #0 {
entry:
  %lang.addr = alloca ptr, align 8
  %outer_token.addr = alloca ptr, align 8
  %outer_end_delimiter.addr = alloca ptr, align 8
  %current_token = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %state = alloca i32, align 4
  %end_delimiter_depth = alloca i32, align 4
  %end_delimiter_count = alloca i32, align 4
  %curr_end_delim = alloca ptr, align 8
  %curr_bracket_delim = alloca ptr, align 8
  store ptr %lang, ptr %lang.addr, align 8
  store ptr %outer_token, ptr %outer_token.addr, align 8
  store ptr %outer_end_delimiter, ptr %outer_end_delimiter.addr, align 8
  store i32 1, ptr %state, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog300, %entry
  %0 = load i32, ptr @line_pos, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %state, align 4
  %cmp2 = icmp ne i32 %2, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, ptr %state, align 4
  switch i32 %4, label %sw.default297 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb99
    i32 3, label %sw.bb225
    i32 4, label %sw.bb254
    i32 5, label %sw.bb296
  ]

sw.bb:                                            ; preds = %while.body
  %5 = load ptr, ptr %outer_token.addr, align 8
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load i32, ptr @line_pos, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom6
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %8 = load ptr, ptr %outer_end_delimiter.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  br i1 %cmp11, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %10 = load ptr, ptr %outer_end_delimiter.addr, align 8
  %call = call i32 @InputMatches(ptr noundef %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true13
  %11 = load ptr, ptr %outer_end_delimiter.addr, align 8
  %call14 = call i64 @strlen(ptr noundef %11)
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %len, align 4
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @NextChar()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  store i32 6, ptr %state, align 4
  br label %if.end98

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true, %sw.bb
  %call18 = call ptr @TokenStartingHere(ptr noundef %len)
  store ptr %call18, ptr %current_token, align 8
  %cmp19 = icmp ne ptr %call18, null
  br i1 %cmp19, label %if.then21, label %if.else37

if.then21:                                        ; preds = %if.else
  %15 = load ptr, ptr %lang.addr, align 8
  %16 = load ptr, ptr %current_token, align 8
  %17 = load i32, ptr @line_pos, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom22
  %18 = load i32, ptr %len, align 4
  call void @StartEmit(ptr noundef %15, ptr noundef %16, ptr noundef %arrayidx23, i32 noundef %18)
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc28, %if.then21
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %len, align 4
  %cmp25 = icmp slt i32 %19, %20
  br i1 %cmp25, label %for.body27, label %for.end30

for.body27:                                       ; preds = %for.cond24
  call void @NextChar()
  br label %for.inc28

for.inc28:                                        ; preds = %for.body27
  %21 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond24, !llvm.loop !31

for.end30:                                        ; preds = %for.cond24
  %22 = load ptr, ptr %current_token, align 8
  %print_style = getelementptr inbounds %struct.token_rec, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %print_style, align 8
  %cmp31 = icmp eq i32 %23, 5
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %for.end30
  %24 = load ptr, ptr %lang.addr, align 8
  %25 = load ptr, ptr %current_token, align 8
  %26 = load ptr, ptr %current_token, align 8
  %end_delimiter = getelementptr inbounds %struct.token_rec, ptr %26, i32 0, i32 16
  %27 = load ptr, ptr %end_delimiter, align 8
  call void @Process(ptr noundef %24, ptr noundef %25, ptr noundef %27)
  %28 = load ptr, ptr %current_token, align 8
  call void @EndEmit(ptr noundef %28, ptr noundef @.str.10)
  br label %if.end

if.else34:                                        ; preds = %for.end30
  store i32 1, ptr %end_delimiter_depth, align 4
  %29 = load ptr, ptr %current_token, align 8
  %want_two_ends = getelementptr inbounds %struct.token_rec, ptr %29, i32 0, i32 18
  %30 = load i32, ptr %want_two_ends, align 4
  %tobool35 = icmp ne i32 %30, 0
  %31 = zext i1 %tobool35 to i64
  %cond = select i1 %tobool35, i32 2, i32 1
  store i32 %cond, ptr %end_delimiter_count, align 4
  %32 = load ptr, ptr %current_token, align 8
  %end_delimiter36 = getelementptr inbounds %struct.token_rec, ptr %32, i32 0, i32 16
  %33 = load ptr, ptr %end_delimiter36, align 8
  store ptr %33, ptr %curr_end_delim, align 8
  %34 = load ptr, ptr %current_token, align 8
  %bracket_delimiter = getelementptr inbounds %struct.token_rec, ptr %34, i32 0, i32 15
  %35 = load ptr, ptr %bracket_delimiter, align 8
  store ptr %35, ptr %curr_bracket_delim, align 8
  store i32 2, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.else34, %if.then33
  br label %if.end97

if.else37:                                        ; preds = %if.else
  %36 = load i32, ptr @line_pos, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom38
  %37 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %37 to i32
  %cmp41 = icmp eq i32 %conv40, 32
  br i1 %cmp41, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else37
  %38 = load i32, ptr @line_pos, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom43
  %39 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %39 to i32
  %cmp46 = icmp eq i32 %conv45, 9
  br i1 %cmp46, label %if.then60, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %40 = load i32, ptr @line_pos, align 4
  %idxprom49 = sext i32 %40 to i64
  %arrayidx50 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom49
  %41 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %41 to i32
  %cmp52 = icmp eq i32 %conv51, 10
  br i1 %cmp52, label %if.then60, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %42 = load i32, ptr @line_pos, align 4
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom55
  %43 = load i8, ptr %arrayidx56, align 1
  %conv57 = sext i8 %43 to i32
  %cmp58 = icmp eq i32 %conv57, 12
  br i1 %cmp58, label %if.then60, label %if.else63

if.then60:                                        ; preds = %lor.lhs.false54, %lor.lhs.false48, %lor.lhs.false, %if.else37
  %44 = load i32, ptr @line_pos, align 4
  %idxprom61 = sext i32 %44 to i64
  %arrayidx62 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom61
  %45 = load i8, ptr %arrayidx62, align 1
  call void @EmitRaw(i8 noundef signext %45)
  call void @NextChar()
  br label %if.end96

if.else63:                                        ; preds = %lor.lhs.false54
  %46 = load ptr, ptr %lang.addr, align 8
  %no_match = getelementptr inbounds %struct.lang_rec, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %no_match, align 8
  %cmp64 = icmp eq i32 %47, 2
  br i1 %cmp64, label %if.then66, label %if.else69

if.then66:                                        ; preds = %if.else63
  %48 = load i32, ptr @line_pos, align 4
  %idxprom67 = sext i32 %48 to i64
  %arrayidx68 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom67
  %49 = load i8, ptr %arrayidx68, align 1
  call void @EmitProtected(i8 noundef signext %49)
  call void @NextChar()
  br label %if.end95

if.else69:                                        ; preds = %if.else63
  %50 = load ptr, ptr %lang.addr, align 8
  %no_match70 = getelementptr inbounds %struct.lang_rec, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %no_match70, align 8
  %cmp71 = icmp eq i32 %51, 1
  br i1 %cmp71, label %if.then73, label %if.else91

if.then73:                                        ; preds = %if.else69
  %52 = load i32, ptr @line_pos, align 4
  %idxprom74 = sext i32 %52 to i64
  %arrayidx75 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom74
  %53 = load i8, ptr %arrayidx75, align 1
  %call76 = call i32 @Printable(i8 noundef signext %53)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then78, label %if.else84

if.then78:                                        ; preds = %if.then73
  %54 = load ptr, ptr @err_fp, align 8
  %call79 = call ptr @ErrorHeader()
  %55 = load i32, ptr @line_pos, align 4
  %idxprom80 = sext i32 %55 to i64
  %arrayidx81 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom80
  %56 = load i8, ptr %arrayidx81, align 1
  %conv82 = sext i8 %56 to i32
  %call83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.1169, ptr noundef %call79, i32 noundef %conv82)
  br label %if.end90

if.else84:                                        ; preds = %if.then73
  %57 = load ptr, ptr @err_fp, align 8
  %call85 = call ptr @ErrorHeader()
  %58 = load i32, ptr @line_pos, align 4
  %idxprom86 = sext i32 %58 to i64
  %arrayidx87 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom86
  %59 = load i8, ptr %arrayidx87, align 1
  %conv88 = sext i8 %59 to i32
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.1170, ptr noundef %call85, ptr noundef @.str.1171, i32 noundef %conv88)
  br label %if.end90

if.end90:                                         ; preds = %if.else84, %if.then78
  call void @NextChar()
  br label %if.end94

if.else91:                                        ; preds = %if.else69
  %60 = load ptr, ptr @err_fp, align 8
  %call92 = call ptr @ErrorHeader()
  %call93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.1172, ptr noundef %call92)
  br label %if.end94

if.end94:                                         ; preds = %if.else91, %if.end90
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then66
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then60
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %for.end
  br label %sw.epilog300

sw.bb99:                                          ; preds = %while.body
  %61 = load ptr, ptr %curr_end_delim, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %61, i64 0
  %62 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %62 to i32
  %cmp102 = icmp ne i32 %conv101, 0
  br i1 %cmp102, label %land.lhs.true104, label %if.else144

land.lhs.true104:                                 ; preds = %sw.bb99
  %63 = load ptr, ptr %current_token, align 8
  %end_start_line_only = getelementptr inbounds %struct.token_rec, ptr %63, i32 0, i32 17
  %64 = load i32, ptr %end_start_line_only, align 8
  %tobool105 = icmp ne i32 %64, 0
  br i1 %tobool105, label %lor.lhs.false106, label %land.lhs.true109

lor.lhs.false106:                                 ; preds = %land.lhs.true104
  %65 = load i32, ptr @line_pos, align 4
  %cmp107 = icmp eq i32 %65, 1
  br i1 %cmp107, label %land.lhs.true109, label %if.else144

land.lhs.true109:                                 ; preds = %lor.lhs.false106, %land.lhs.true104
  %66 = load ptr, ptr %curr_end_delim, align 8
  %call110 = call i32 @InputMatches(ptr noundef %66)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then112, label %if.else144

if.then112:                                       ; preds = %land.lhs.true109
  %67 = load i32, ptr %end_delimiter_depth, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, ptr %end_delimiter_depth, align 4
  %68 = load i32, ptr %end_delimiter_depth, align 4
  %cmp113 = icmp sgt i32 %68, 0
  br i1 %cmp113, label %if.then115, label %if.else118

if.then115:                                       ; preds = %if.then112
  %69 = load ptr, ptr %current_token, align 8
  %70 = load i32, ptr @line_pos, align 4
  %idxprom116 = sext i32 %70 to i64
  %arrayidx117 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom116
  %71 = load i8, ptr %arrayidx117, align 1
  call void @Emit(ptr noundef %69, i8 noundef signext %71)
  call void @NextChar()
  br label %if.end143

if.else118:                                       ; preds = %if.then112
  %72 = load i32, ptr %end_delimiter_count, align 4
  %dec119 = add nsw i32 %72, -1
  store i32 %dec119, ptr %end_delimiter_count, align 4
  %73 = load i32, ptr %end_delimiter_count, align 4
  %cmp120 = icmp eq i32 %73, 0
  br i1 %cmp120, label %if.then122, label %if.else132

if.then122:                                       ; preds = %if.else118
  %74 = load ptr, ptr %curr_end_delim, align 8
  %call123 = call i64 @strlen(ptr noundef %74)
  %conv124 = trunc i64 %call123 to i32
  store i32 %conv124, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc129, %if.then122
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %len, align 4
  %cmp126 = icmp slt i32 %75, %76
  br i1 %cmp126, label %for.body128, label %for.end131

for.body128:                                      ; preds = %for.cond125
  call void @NextChar()
  br label %for.inc129

for.inc129:                                       ; preds = %for.body128
  %77 = load i32, ptr %i, align 4
  %inc130 = add nsw i32 %77, 1
  store i32 %inc130, ptr %i, align 4
  br label %for.cond125, !llvm.loop !32

for.end131:                                       ; preds = %for.cond125
  %78 = load ptr, ptr %current_token, align 8
  %79 = load ptr, ptr %curr_end_delim, align 8
  call void @EndEmit(ptr noundef %78, ptr noundef %79)
  store i32 1, ptr %state, align 4
  br label %if.end142

if.else132:                                       ; preds = %if.else118
  %80 = load ptr, ptr %current_token, align 8
  %81 = load i32, ptr @line_pos, align 4
  %idxprom133 = sext i32 %81 to i64
  %arrayidx134 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom133
  %82 = load i8, ptr %arrayidx134, align 1
  call void @Emit(ptr noundef %80, i8 noundef signext %82)
  call void @NextChar()
  %83 = load ptr, ptr %curr_bracket_delim, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %83, i64 0
  %84 = load i8, ptr %arrayidx135, align 1
  %conv136 = sext i8 %84 to i32
  %cmp137 = icmp ne i32 %conv136, 0
  br i1 %cmp137, label %if.then139, label %if.else140

if.then139:                                       ; preds = %if.else132
  store i32 3, ptr %state, align 4
  br label %if.end141

if.else140:                                       ; preds = %if.else132
  store i32 2, ptr %state, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else140, %if.then139
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %for.end131
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then115
  br label %if.end224

if.else144:                                       ; preds = %land.lhs.true109, %lor.lhs.false106, %sw.bb99
  %85 = load ptr, ptr %curr_bracket_delim, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %85, i64 0
  %86 = load i8, ptr %arrayidx145, align 1
  %conv146 = sext i8 %86 to i32
  %cmp147 = icmp ne i32 %conv146, 0
  br i1 %cmp147, label %land.lhs.true149, label %if.end154

land.lhs.true149:                                 ; preds = %if.else144
  %87 = load ptr, ptr %curr_bracket_delim, align 8
  %call150 = call i32 @InputMatches(ptr noundef %87)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.then152, label %if.end154

if.then152:                                       ; preds = %land.lhs.true149
  %88 = load i32, ptr %end_delimiter_depth, align 4
  %inc153 = add nsw i32 %88, 1
  store i32 %inc153, ptr %end_delimiter_depth, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %land.lhs.true149, %if.else144
  %89 = load ptr, ptr %current_token, align 8
  %chtype = getelementptr inbounds %struct.token_rec, ptr %89, i32 0, i32 19
  %90 = load i32, ptr @line_pos, align 4
  %idxprom155 = sext i32 %90 to i64
  %arrayidx156 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom155
  %91 = load i8, ptr %arrayidx156, align 1
  %conv157 = sext i8 %91 to i32
  %idxprom158 = sext i32 %conv157 to i64
  %arrayidx159 = getelementptr inbounds [256 x i8], ptr %chtype, i64 0, i64 %idxprom158
  %92 = load i8, ptr %arrayidx159, align 1
  %conv160 = sext i8 %92 to i32
  switch i32 %conv160, label %sw.default [
    i32 1, label %sw.bb161
    i32 2, label %sw.bb164
    i32 3, label %sw.bb165
  ]

sw.bb161:                                         ; preds = %if.end154
  %93 = load ptr, ptr %current_token, align 8
  %94 = load i32, ptr @line_pos, align 4
  %idxprom162 = sext i32 %94 to i64
  %arrayidx163 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom162
  %95 = load i8, ptr %arrayidx163, align 1
  call void @Emit(ptr noundef %93, i8 noundef signext %95)
  call void @NextChar()
  br label %sw.epilog

sw.bb164:                                         ; preds = %if.end154
  call void @NextChar()
  store i32 4, ptr %state, align 4
  br label %sw.epilog

sw.bb165:                                         ; preds = %if.end154
  %96 = load ptr, ptr %current_token, align 8
  call void @EndEmit(ptr noundef %96, ptr noundef @.str.10)
  call void @NextChar()
  %97 = load ptr, ptr %lang.addr, align 8
  %98 = load ptr, ptr %current_token, align 8
  %99 = load ptr, ptr %current_token, align 8
  %end_inner_escape = getelementptr inbounds %struct.token_rec, ptr %99, i32 0, i32 14
  %100 = load ptr, ptr %end_inner_escape, align 8
  call void @Process(ptr noundef %97, ptr noundef %98, ptr noundef %100)
  store i32 5, ptr %state, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end154
  %101 = load ptr, ptr %curr_end_delim, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx166, align 1
  %conv167 = sext i8 %102 to i32
  %cmp168 = icmp ne i32 %conv167, 0
  br i1 %cmp168, label %if.then170, label %if.else222

if.then170:                                       ; preds = %sw.default
  %103 = load i32, ptr @line_pos, align 4
  %idxprom171 = sext i32 %103 to i64
  %arrayidx172 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom171
  %104 = load i8, ptr %arrayidx172, align 1
  %call173 = call i32 @Printable(i8 noundef signext %104)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.else181

if.then175:                                       ; preds = %if.then170
  %105 = load ptr, ptr @err_fp, align 8
  %call176 = call ptr @ErrorHeader()
  %106 = load i32, ptr @line_pos, align 4
  %idxprom177 = sext i32 %106 to i64
  %arrayidx178 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom177
  %107 = load i8, ptr %arrayidx178, align 1
  %conv179 = sext i8 %107 to i32
  %108 = load ptr, ptr %current_token, align 8
  %name = getelementptr inbounds %struct.token_rec, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %name, align 8
  %call180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.1173, ptr noundef %call176, i32 noundef %conv179, ptr noundef %109)
  br label %if.end221

if.else181:                                       ; preds = %if.then170
  %110 = load i32, ptr @line_pos, align 4
  %idxprom182 = sext i32 %110 to i64
  %arrayidx183 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom182
  %111 = load i8, ptr %arrayidx183, align 1
  %conv184 = sext i8 %111 to i32
  %cmp185 = icmp eq i32 %conv184, 9
  br i1 %cmp185, label %if.then187, label %if.else191

if.then187:                                       ; preds = %if.else181
  %112 = load ptr, ptr @err_fp, align 8
  %call188 = call ptr @ErrorHeader()
  %113 = load ptr, ptr %current_token, align 8
  %name189 = getelementptr inbounds %struct.token_rec, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %name189, align 8
  %call190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.1174, ptr noundef %call188, ptr noundef %114)
  br label %if.end220

if.else191:                                       ; preds = %if.else181
  %115 = load i32, ptr @line_pos, align 4
  %idxprom192 = sext i32 %115 to i64
  %arrayidx193 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom192
  %116 = load i8, ptr %arrayidx193, align 1
  %conv194 = sext i8 %116 to i32
  %cmp195 = icmp eq i32 %conv194, 10
  br i1 %cmp195, label %if.then197, label %if.else201

if.then197:                                       ; preds = %if.else191
  %117 = load ptr, ptr @err_fp, align 8
  %call198 = call ptr @ErrorHeader()
  %118 = load ptr, ptr %current_token, align 8
  %name199 = getelementptr inbounds %struct.token_rec, ptr %118, i32 0, i32 0
  %119 = load ptr, ptr %name199, align 8
  %call200 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str.1175, ptr noundef %call198, ptr noundef %119)
  br label %if.end219

if.else201:                                       ; preds = %if.else191
  %120 = load i32, ptr @line_pos, align 4
  %idxprom202 = sext i32 %120 to i64
  %arrayidx203 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom202
  %121 = load i8, ptr %arrayidx203, align 1
  %conv204 = sext i8 %121 to i32
  %cmp205 = icmp eq i32 %conv204, 12
  br i1 %cmp205, label %if.then207, label %if.else211

if.then207:                                       ; preds = %if.else201
  %122 = load ptr, ptr @err_fp, align 8
  %call208 = call ptr @ErrorHeader()
  %123 = load ptr, ptr %current_token, align 8
  %name209 = getelementptr inbounds %struct.token_rec, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %name209, align 8
  %call210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.1176, ptr noundef %call208, ptr noundef %124)
  br label %if.end218

if.else211:                                       ; preds = %if.else201
  %125 = load ptr, ptr @err_fp, align 8
  %call212 = call ptr @ErrorHeader()
  %126 = load i32, ptr @line_pos, align 4
  %idxprom213 = sext i32 %126 to i64
  %arrayidx214 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom213
  %127 = load i8, ptr %arrayidx214, align 1
  %conv215 = sext i8 %127 to i32
  %128 = load ptr, ptr %current_token, align 8
  %name216 = getelementptr inbounds %struct.token_rec, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %name216, align 8
  %call217 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef @.str.1177, ptr noundef %call212, ptr noundef @.str.1178, i32 noundef %conv215, ptr noundef %129)
  br label %if.end218

if.end218:                                        ; preds = %if.else211, %if.then207
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.then197
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.then187
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then175
  call void @NextChar()
  br label %if.end223

if.else222:                                       ; preds = %sw.default
  %130 = load ptr, ptr %current_token, align 8
  call void @EndEmit(ptr noundef %130, ptr noundef @.str.10)
  store i32 1, ptr %state, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.else222, %if.end221
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end223, %sw.bb165, %sw.bb164, %sw.bb161
  br label %if.end224

if.end224:                                        ; preds = %sw.epilog, %if.end143
  br label %sw.epilog300

sw.bb225:                                         ; preds = %while.body
  %131 = load i32, ptr @line_pos, align 4
  %idxprom226 = sext i32 %131 to i64
  %arrayidx227 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom226
  %132 = load i8, ptr %arrayidx227, align 1
  %conv228 = sext i8 %132 to i32
  switch i32 %conv228, label %sw.default232 [
    i32 32, label %sw.bb229
    i32 9, label %sw.bb229
    i32 10, label %sw.bb229
    i32 12, label %sw.bb229
  ]

sw.bb229:                                         ; preds = %sw.bb225, %sw.bb225, %sw.bb225, %sw.bb225
  %133 = load ptr, ptr %current_token, align 8
  %134 = load i32, ptr @line_pos, align 4
  %idxprom230 = sext i32 %134 to i64
  %arrayidx231 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom230
  %135 = load i8, ptr %arrayidx231, align 1
  call void @Emit(ptr noundef %133, i8 noundef signext %135)
  call void @NextChar()
  br label %sw.epilog253

sw.default232:                                    ; preds = %sw.bb225
  %call233 = call i32 @Matching()
  store i32 %call233, ptr %i, align 4
  %136 = load i32, ptr %i, align 4
  %idxprom234 = sext i32 %136 to i64
  %arrayidx235 = getelementptr inbounds [5 x %struct.CHAR_PAIR], ptr @pairs, i64 0, i64 %idxprom234
  %first = getelementptr inbounds %struct.CHAR_PAIR, ptr %arrayidx235, i32 0, i32 0
  %137 = load ptr, ptr %first, align 8
  %cmp236 = icmp eq ptr %137, null
  br i1 %cmp236, label %if.then238, label %if.end244

if.then238:                                       ; preds = %sw.default232
  %138 = load ptr, ptr @err_fp, align 8
  %call239 = call ptr @ErrorHeader()
  %139 = load i32, ptr @line_pos, align 4
  %idxprom240 = sext i32 %139 to i64
  %arrayidx241 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom240
  %140 = load i8, ptr %arrayidx241, align 1
  %conv242 = sext i8 %140 to i32
  %call243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str.1179, ptr noundef %call239, i32 noundef %conv242)
  call void @exit(i32 noundef 0) #9
  unreachable

if.end244:                                        ; preds = %sw.default232
  %141 = load i32, ptr %i, align 4
  %idxprom245 = sext i32 %141 to i64
  %arrayidx246 = getelementptr inbounds [5 x %struct.CHAR_PAIR], ptr @pairs, i64 0, i64 %idxprom245
  %first247 = getelementptr inbounds %struct.CHAR_PAIR, ptr %arrayidx246, i32 0, i32 0
  %142 = load ptr, ptr %first247, align 8
  store ptr %142, ptr %curr_bracket_delim, align 8
  %143 = load i32, ptr %i, align 4
  %idxprom248 = sext i32 %143 to i64
  %arrayidx249 = getelementptr inbounds [5 x %struct.CHAR_PAIR], ptr @pairs, i64 0, i64 %idxprom248
  %second = getelementptr inbounds %struct.CHAR_PAIR, ptr %arrayidx249, i32 0, i32 1
  %144 = load ptr, ptr %second, align 8
  store ptr %144, ptr %curr_end_delim, align 8
  %145 = load ptr, ptr %current_token, align 8
  %146 = load i32, ptr @line_pos, align 4
  %idxprom250 = sext i32 %146 to i64
  %arrayidx251 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom250
  %147 = load i8, ptr %arrayidx251, align 1
  call void @Emit(ptr noundef %145, i8 noundef signext %147)
  call void @NextChar()
  %148 = load i32, ptr %end_delimiter_depth, align 4
  %inc252 = add nsw i32 %148, 1
  store i32 %inc252, ptr %end_delimiter_depth, align 4
  store i32 2, ptr %state, align 4
  br label %sw.epilog253

sw.epilog253:                                     ; preds = %if.end244, %sw.bb229
  br label %sw.epilog300

sw.bb254:                                         ; preds = %while.body
  %149 = load ptr, ptr %current_token, align 8
  %escape_chtype = getelementptr inbounds %struct.token_rec, ptr %149, i32 0, i32 20
  %150 = load i32, ptr @line_pos, align 4
  %idxprom255 = sext i32 %150 to i64
  %arrayidx256 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom255
  %151 = load i8, ptr %arrayidx256, align 1
  %conv257 = sext i8 %151 to i32
  %idxprom258 = sext i32 %conv257 to i64
  %arrayidx259 = getelementptr inbounds [256 x i8], ptr %escape_chtype, i64 0, i64 %idxprom258
  %152 = load i8, ptr %arrayidx259, align 1
  %conv260 = sext i8 %152 to i32
  %cmp261 = icmp eq i32 %conv260, 1
  br i1 %cmp261, label %if.then263, label %if.else267

if.then263:                                       ; preds = %sw.bb254
  %153 = load ptr, ptr %current_token, align 8
  %154 = load ptr, ptr %current_token, align 8
  %escape = getelementptr inbounds %struct.token_rec, ptr %154, i32 0, i32 11
  %155 = load ptr, ptr %escape, align 8
  %arrayidx264 = getelementptr inbounds i8, ptr %155, i64 0
  %156 = load i8, ptr %arrayidx264, align 1
  call void @Emit(ptr noundef %153, i8 noundef signext %156)
  %157 = load ptr, ptr %current_token, align 8
  %158 = load i32, ptr @line_pos, align 4
  %idxprom265 = sext i32 %158 to i64
  %arrayidx266 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom265
  %159 = load i8, ptr %arrayidx266, align 1
  call void @Emit(ptr noundef %157, i8 noundef signext %159)
  br label %if.end295

if.else267:                                       ; preds = %sw.bb254
  %160 = load i32, ptr @line_pos, align 4
  %idxprom268 = sext i32 %160 to i64
  %arrayidx269 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom268
  %161 = load i8, ptr %arrayidx269, align 1
  %call270 = call i32 @Printable(i8 noundef signext %161)
  %tobool271 = icmp ne i32 %call270, 0
  br i1 %tobool271, label %if.then272, label %if.else285

if.then272:                                       ; preds = %if.else267
  %162 = load ptr, ptr @err_fp, align 8
  %call273 = call ptr @ErrorHeader()
  %163 = load ptr, ptr %current_token, align 8
  %escape274 = getelementptr inbounds %struct.token_rec, ptr %163, i32 0, i32 11
  %164 = load ptr, ptr %escape274, align 8
  %arrayidx275 = getelementptr inbounds i8, ptr %164, i64 0
  %165 = load i8, ptr %arrayidx275, align 1
  %conv276 = sext i8 %165 to i32
  %166 = load i32, ptr @line_pos, align 4
  %idxprom277 = sext i32 %166 to i64
  %arrayidx278 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom277
  %167 = load i8, ptr %arrayidx278, align 1
  %conv279 = sext i8 %167 to i32
  %168 = load ptr, ptr %current_token, align 8
  %name280 = getelementptr inbounds %struct.token_rec, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %name280, align 8
  %170 = load i32, ptr @line_pos, align 4
  %idxprom281 = sext i32 %170 to i64
  %arrayidx282 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom281
  %171 = load i8, ptr %arrayidx282, align 1
  %conv283 = sext i8 %171 to i32
  %call284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.1180, ptr noundef %call273, i32 noundef %conv276, i32 noundef %conv279, ptr noundef %169, i32 noundef %conv283)
  br label %if.end294

if.else285:                                       ; preds = %if.else267
  %172 = load ptr, ptr @err_fp, align 8
  %call286 = call ptr @ErrorHeader()
  %173 = load ptr, ptr %current_token, align 8
  %escape287 = getelementptr inbounds %struct.token_rec, ptr %173, i32 0, i32 11
  %174 = load ptr, ptr %escape287, align 8
  %arrayidx288 = getelementptr inbounds i8, ptr %174, i64 0
  %175 = load i8, ptr %arrayidx288, align 1
  %conv289 = sext i8 %175 to i32
  %176 = load i32, ptr @line_pos, align 4
  %idxprom290 = sext i32 %176 to i64
  %arrayidx291 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom290
  %177 = load i8, ptr %arrayidx291, align 1
  %conv292 = sext i8 %177 to i32
  %call293 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef @.str.1181, ptr noundef %call286, i32 noundef %conv289, ptr noundef @.str.1182, i32 noundef %conv292)
  br label %if.end294

if.end294:                                        ; preds = %if.else285, %if.then272
  br label %if.end295

if.end295:                                        ; preds = %if.end294, %if.then263
  call void @NextChar()
  store i32 2, ptr %state, align 4
  br label %sw.epilog300

sw.bb296:                                         ; preds = %while.body
  %178 = load ptr, ptr %lang.addr, align 8
  %179 = load ptr, ptr %current_token, align 8
  call void @StartEmit(ptr noundef %178, ptr noundef %179, ptr noundef @.str.10, i32 noundef 0)
  store i32 2, ptr %state, align 4
  br label %sw.epilog300

sw.default297:                                    ; preds = %while.body
  %180 = load ptr, ptr @err_fp, align 8
  %call298 = call ptr @ErrorHeader()
  %181 = load i32, ptr %state, align 4
  %call299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.1183, ptr noundef %call298, i32 noundef %181)
  call void @abort() #8
  unreachable

sw.epilog300:                                     ; preds = %sw.bb296, %if.end295, %sw.epilog253, %if.end224, %if.end98
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %land.end
  %182 = load i32, ptr %state, align 4
  switch i32 %182, label %sw.default361 [
    i32 1, label %sw.bb301
    i32 6, label %sw.bb301
    i32 2, label %sw.bb302
    i32 3, label %sw.bb322
    i32 4, label %sw.bb335
    i32 5, label %sw.bb341
  ]

sw.bb301:                                         ; preds = %while.end, %while.end
  br label %sw.epilog364

sw.bb302:                                         ; preds = %while.end
  %183 = load ptr, ptr %current_token, align 8
  %end_delimiter303 = getelementptr inbounds %struct.token_rec, ptr %183, i32 0, i32 16
  %184 = load ptr, ptr %end_delimiter303, align 8
  %arrayidx304 = getelementptr inbounds i8, ptr %184, i64 0
  %185 = load i8, ptr %arrayidx304, align 1
  %conv305 = sext i8 %185 to i32
  %cmp306 = icmp ne i32 %conv305, 0
  br i1 %cmp306, label %if.then308, label %if.end321

if.then308:                                       ; preds = %sw.bb302
  %186 = load ptr, ptr %outer_token.addr, align 8
  %cmp309 = icmp eq ptr %186, null
  br i1 %cmp309, label %if.then311, label %if.else315

if.then311:                                       ; preds = %if.then308
  %187 = load ptr, ptr @err_fp, align 8
  %call312 = call ptr @ErrorHeader()
  %188 = load ptr, ptr %current_token, align 8
  %name313 = getelementptr inbounds %struct.token_rec, ptr %188, i32 0, i32 0
  %189 = load ptr, ptr %name313, align 8
  %call314 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef @.str.1184, ptr noundef %call312, ptr noundef %189)
  br label %if.end320

if.else315:                                       ; preds = %if.then308
  %190 = load ptr, ptr @err_fp, align 8
  %call316 = call ptr @ErrorHeader()
  %191 = load ptr, ptr %outer_token.addr, align 8
  %name317 = getelementptr inbounds %struct.token_rec, ptr %191, i32 0, i32 0
  %192 = load ptr, ptr %name317, align 8
  %193 = load ptr, ptr %current_token, align 8
  %name318 = getelementptr inbounds %struct.token_rec, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %name318, align 8
  %call319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef @.str.1185, ptr noundef %call316, ptr noundef %192, ptr noundef %194)
  br label %if.end320

if.end320:                                        ; preds = %if.else315, %if.then311
  %195 = load ptr, ptr %current_token, align 8
  call void @EndEmit(ptr noundef %195, ptr noundef @.str.10)
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %sw.bb302
  br label %sw.epilog364

sw.bb322:                                         ; preds = %while.end
  %196 = load ptr, ptr %outer_token.addr, align 8
  %cmp323 = icmp eq ptr %196, null
  br i1 %cmp323, label %if.then325, label %if.else329

if.then325:                                       ; preds = %sw.bb322
  %197 = load ptr, ptr @err_fp, align 8
  %call326 = call ptr @ErrorHeader()
  %198 = load ptr, ptr %current_token, align 8
  %name327 = getelementptr inbounds %struct.token_rec, ptr %198, i32 0, i32 0
  %199 = load ptr, ptr %name327, align 8
  %call328 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.1184, ptr noundef %call326, ptr noundef %199)
  br label %if.end334

if.else329:                                       ; preds = %sw.bb322
  %200 = load ptr, ptr @err_fp, align 8
  %call330 = call ptr @ErrorHeader()
  %201 = load ptr, ptr %outer_token.addr, align 8
  %name331 = getelementptr inbounds %struct.token_rec, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %name331, align 8
  %203 = load ptr, ptr %current_token, align 8
  %name332 = getelementptr inbounds %struct.token_rec, ptr %203, i32 0, i32 0
  %204 = load ptr, ptr %name332, align 8
  %call333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef @.str.1185, ptr noundef %call330, ptr noundef %202, ptr noundef %204)
  br label %if.end334

if.end334:                                        ; preds = %if.else329, %if.then325
  %205 = load ptr, ptr %current_token, align 8
  call void @EndEmit(ptr noundef %205, ptr noundef @.str.10)
  br label %sw.epilog364

sw.bb335:                                         ; preds = %while.end
  %206 = load ptr, ptr @err_fp, align 8
  %call336 = call ptr @ErrorHeader()
  %207 = load ptr, ptr %current_token, align 8
  %escape337 = getelementptr inbounds %struct.token_rec, ptr %207, i32 0, i32 11
  %208 = load ptr, ptr %escape337, align 8
  %arrayidx338 = getelementptr inbounds i8, ptr %208, i64 0
  %209 = load i8, ptr %arrayidx338, align 1
  %conv339 = sext i8 %209 to i32
  %call340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef @.str.1186, ptr noundef %call336, i32 noundef %conv339)
  %210 = load ptr, ptr %current_token, align 8
  call void @EndEmit(ptr noundef %210, ptr noundef @.str.10)
  br label %sw.epilog364

sw.bb341:                                         ; preds = %while.end
  %211 = load ptr, ptr %current_token, align 8
  %end_delimiter342 = getelementptr inbounds %struct.token_rec, ptr %211, i32 0, i32 16
  %212 = load ptr, ptr %end_delimiter342, align 8
  %arrayidx343 = getelementptr inbounds i8, ptr %212, i64 0
  %213 = load i8, ptr %arrayidx343, align 1
  %conv344 = sext i8 %213 to i32
  %cmp345 = icmp ne i32 %conv344, 0
  br i1 %cmp345, label %if.then347, label %if.end360

if.then347:                                       ; preds = %sw.bb341
  %214 = load ptr, ptr %outer_token.addr, align 8
  %cmp348 = icmp eq ptr %214, null
  br i1 %cmp348, label %if.then350, label %if.else354

if.then350:                                       ; preds = %if.then347
  %215 = load ptr, ptr @err_fp, align 8
  %call351 = call ptr @ErrorHeader()
  %216 = load ptr, ptr %current_token, align 8
  %name352 = getelementptr inbounds %struct.token_rec, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %name352, align 8
  %call353 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef @.str.1187, ptr noundef %call351, ptr noundef %217)
  br label %if.end359

if.else354:                                       ; preds = %if.then347
  %218 = load ptr, ptr @err_fp, align 8
  %call355 = call ptr @ErrorHeader()
  %219 = load ptr, ptr %outer_token.addr, align 8
  %name356 = getelementptr inbounds %struct.token_rec, ptr %219, i32 0, i32 0
  %220 = load ptr, ptr %name356, align 8
  %221 = load ptr, ptr %current_token, align 8
  %name357 = getelementptr inbounds %struct.token_rec, ptr %221, i32 0, i32 0
  %222 = load ptr, ptr %name357, align 8
  %call358 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str.1188, ptr noundef %call355, ptr noundef %220, ptr noundef %222)
  br label %if.end359

if.end359:                                        ; preds = %if.else354, %if.then350
  br label %if.end360

if.end360:                                        ; preds = %if.end359, %sw.bb341
  br label %sw.epilog364

sw.default361:                                    ; preds = %while.end
  %223 = load ptr, ptr @err_fp, align 8
  %call362 = call ptr @ErrorHeader()
  %224 = load i32, ptr %state, align 4
  %call363 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef @.str.1189, ptr noundef %call362, i32 noundef %224)
  call void @abort() #8
  unreachable

sw.epilog364:                                     ; preds = %if.end360, %sw.bb335, %if.end334, %if.end321, %sw.bb301
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @PrintUsage() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load ptr, ptr @err_fp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.209)
  %1 = load ptr, ptr @err_fp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1190)
  %2 = load ptr, ptr @err_fp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1191)
  %3 = load ptr, ptr @err_fp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.209)
  %4 = load ptr, ptr @err_fp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1192)
  %5 = load ptr, ptr @err_fp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1193)
  %6 = load ptr, ptr @err_fp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1194)
  %7 = load ptr, ptr @err_fp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1195)
  %8 = load ptr, ptr @err_fp, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.1196)
  %9 = load ptr, ptr @err_fp, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1197)
  %10 = load ptr, ptr @err_fp, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.1198)
  %11 = load ptr, ptr @err_fp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.1199)
  %12 = load ptr, ptr @err_fp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.1200)
  %13 = load ptr, ptr @err_fp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1201)
  %14 = load ptr, ptr @err_fp, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.1202)
  %15 = load ptr, ptr @err_fp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.1203)
  %16 = load ptr, ptr @err_fp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.1204)
  %17 = load ptr, ptr @err_fp, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.1205)
  %18 = load ptr, ptr @err_fp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.1206)
  %19 = load ptr, ptr @err_fp, align 8
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.1207)
  %20 = load ptr, ptr @err_fp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.209)
  %21 = load ptr, ptr @err_fp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.1208)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, ptr %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [6 x ptr], ptr @languages, i64 0, i64 %idxprom
  %23 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %23, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr @err_fp, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [6 x ptr], ptr @languages, i64 0, i64 %idxprom22
  %26 = load ptr, ptr %arrayidx23, align 8
  %names = getelementptr inbounds %struct.lang_rec, ptr %26, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [10 x ptr], ptr %names, i64 0, i64 0
  %27 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.1209, ptr noundef %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr @err_fp, align 8
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.209)
  %30 = load ptr, ptr @err_fp, align 8
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.1210)
  %31 = load ptr, ptr @err_fp, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.1211)
  %32 = load ptr, ptr @err_fp, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.1212)
  %33 = load ptr, ptr @err_fp, align 8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.1213)
  %34 = load ptr, ptr @err_fp, align 8
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.209)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %stdin_seen = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %arg_pos = alloca i32, align 4
  %infilename = alloca ptr, align 8
  %outfilename = alloca ptr, align 8
  %errfilename = alloca ptr, align 8
  %lang = alloca ptr, align 8
  %file_names = alloca [1024 x ptr], align 8
  %file_count = alloca i32, align 4
  %ch = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %lang, align 8
  store i32 0, ptr %file_count, align 4
  store ptr null, ptr @out_fp, align 8
  store ptr null, ptr @in_fp, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  store ptr %0, ptr @err_fp, align 8
  store i32 0, ptr @line_num, align 4
  store i32 0, ptr @raw_seen, align 4
  store i32 0, ptr %stdin_seen, align 4
  store i32 1, ptr @tab_by_spacing, align 4
  store i32 8, ptr @tab_in, align 4
  store float 3.000000e+00, ptr @tab_out, align 4
  store i8 102, ptr @tab_unit, align 1
  store i32 0, ptr @print_lines, align 4
  store ptr null, ptr @numbered_option, align 8
  store i32 1, ptr @headers_option, align 4
  store ptr null, ptr @language_option, align 8
  store ptr null, ptr @setup_option, align 8
  store ptr null, ptr @tabout_option, align 8
  store ptr null, ptr @tabin_option, align 8
  store ptr null, ptr @line_option, align 8
  store ptr null, ptr @size_option, align 8
  store ptr null, ptr @font_option, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PrintUsage()
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, ptr %arg_pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %arg_pos, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load i32, ptr %arg_pos, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load i8, ptr %6, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 45
  br i1 %cmp2, label %if.then4, label %if.else545

if.then4:                                         ; preds = %for.body
  %8 = load ptr, ptr %argv.addr, align 8
  %9 = load i32, ptr %arg_pos, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %8, i64 %idxprom5
  %10 = load ptr, ptr %arrayidx6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %add.ptr, align 1
  %conv7 = sext i8 %11 to i32
  switch i32 %conv7, label %sw.default [
    i32 114, label %sw.bb
    i32 105, label %sw.bb13
    i32 111, label %sw.bb57
    i32 101, label %sw.bb101
    i32 112, label %sw.bb139
    i32 102, label %sw.bb190
    i32 115, label %sw.bb226
    i32 118, label %sw.bb262
    i32 116, label %sw.bb298
    i32 84, label %sw.bb327
    i32 83, label %sw.bb390
    i32 76, label %sw.bb426
    i32 110, label %sw.bb449
    i32 86, label %sw.bb455
    i32 117, label %sw.bb462
    i32 108, label %sw.bb468
  ]

sw.bb:                                            ; preds = %if.then4
  %12 = load i32, ptr %arg_pos, align 4
  %cmp8 = icmp sgt i32 %12, 1
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %sw.bb
  %13 = load ptr, ptr @err_fp, align 8
  %call = call ptr @ErrorHeader()
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1214, ptr noundef %call)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end12:                                         ; preds = %sw.bb
  store i32 1, ptr @raw_seen, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then4
  %14 = load i32, ptr @raw_seen, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end17, label %if.then14

if.then14:                                        ; preds = %sw.bb13
  %15 = load ptr, ptr @err_fp, align 8
  %call15 = call ptr @ErrorHeader()
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.1215, ptr noundef %call15)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end17:                                         ; preds = %sw.bb13
  %16 = load ptr, ptr @in_fp, align 8
  %cmp18 = icmp ne ptr %16, null
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  %17 = load ptr, ptr @err_fp, align 8
  %call21 = call ptr @ErrorHeader()
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.1216, ptr noundef %call21)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end23:                                         ; preds = %if.end17
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %arg_pos, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %18, i64 %idxprom24
  %20 = load ptr, ptr %arrayidx25, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %20, i64 2
  %call27 = call i32 @strcmp(ptr noundef %add.ptr26, ptr noundef @.str.10)
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end23
  %21 = load ptr, ptr %argv.addr, align 8
  %22 = load i32, ptr %arg_pos, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %21, i64 %idxprom31
  %23 = load ptr, ptr %arrayidx32, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %23, i64 2
  store ptr %add.ptr33, ptr %infilename, align 8
  br label %if.end48

if.else:                                          ; preds = %if.end23
  %24 = load i32, ptr %arg_pos, align 4
  %25 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %25, 1
  %cmp34 = icmp slt i32 %24, %sub
  br i1 %cmp34, label %land.lhs.true, label %if.else44

land.lhs.true:                                    ; preds = %if.else
  %26 = load ptr, ptr %argv.addr, align 8
  %27 = load i32, ptr %arg_pos, align 4
  %add = add nsw i32 %27, 1
  %idxprom36 = sext i32 %add to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %26, i64 %idxprom36
  %28 = load ptr, ptr %arrayidx37, align 8
  %29 = load i8, ptr %28, align 1
  %conv38 = sext i8 %29 to i32
  %cmp39 = icmp ne i32 %conv38, 45
  br i1 %cmp39, label %if.then41, label %if.else44

if.then41:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %argv.addr, align 8
  %31 = load i32, ptr %arg_pos, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %arg_pos, align 4
  %idxprom42 = sext i32 %inc to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %30, i64 %idxprom42
  %32 = load ptr, ptr %arrayidx43, align 8
  store ptr %32, ptr %infilename, align 8
  br label %if.end47

if.else44:                                        ; preds = %land.lhs.true, %if.else
  %33 = load ptr, ptr @err_fp, align 8
  %call45 = call ptr @ErrorHeader()
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.1217, ptr noundef %call45, ptr noundef @.str.1218)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end47:                                         ; preds = %if.then41
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then30
  %34 = load ptr, ptr %infilename, align 8
  %call49 = call ptr @"\01_fopen"(ptr noundef %34, ptr noundef @.str.65)
  store ptr %call49, ptr @in_fp, align 8
  %35 = load ptr, ptr @in_fp, align 8
  %cmp50 = icmp eq ptr %35, null
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end48
  %36 = load ptr, ptr @err_fp, align 8
  %call53 = call ptr @ErrorHeader()
  %37 = load ptr, ptr %infilename, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.1219, ptr noundef %call53, ptr noundef %37)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end55:                                         ; preds = %if.end48
  %38 = load ptr, ptr %infilename, align 8
  %call56 = call ptr @strcpy(ptr noundef @file_name, ptr noundef %38)
  store i32 1, ptr @line_num, align 4
  store i32 0, ptr @line_pos, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.then4
  %39 = load ptr, ptr @out_fp, align 8
  %cmp58 = icmp ne ptr %39, null
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %sw.bb57
  %40 = load ptr, ptr @err_fp, align 8
  %call61 = call ptr @ErrorHeader()
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.1220, ptr noundef %call61)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end63:                                         ; preds = %sw.bb57
  %41 = load ptr, ptr %argv.addr, align 8
  %42 = load i32, ptr %arg_pos, align 4
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds ptr, ptr %41, i64 %idxprom64
  %43 = load ptr, ptr %arrayidx65, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %43, i64 2
  %call67 = call i32 @strcmp(ptr noundef %add.ptr66, ptr noundef @.str.10)
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.else74

if.then70:                                        ; preds = %if.end63
  %44 = load ptr, ptr %argv.addr, align 8
  %45 = load i32, ptr %arg_pos, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %44, i64 %idxprom71
  %46 = load ptr, ptr %arrayidx72, align 8
  %add.ptr73 = getelementptr inbounds i8, ptr %46, i64 2
  store ptr %add.ptr73, ptr %outfilename, align 8
  br label %if.end93

if.else74:                                        ; preds = %if.end63
  %47 = load i32, ptr %arg_pos, align 4
  %48 = load i32, ptr %argc.addr, align 4
  %sub75 = sub nsw i32 %48, 1
  %cmp76 = icmp slt i32 %47, %sub75
  br i1 %cmp76, label %land.lhs.true78, label %if.else89

land.lhs.true78:                                  ; preds = %if.else74
  %49 = load ptr, ptr %argv.addr, align 8
  %50 = load i32, ptr %arg_pos, align 4
  %add79 = add nsw i32 %50, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %49, i64 %idxprom80
  %51 = load ptr, ptr %arrayidx81, align 8
  %52 = load i8, ptr %51, align 1
  %conv82 = sext i8 %52 to i32
  %cmp83 = icmp ne i32 %conv82, 45
  br i1 %cmp83, label %if.then85, label %if.else89

if.then85:                                        ; preds = %land.lhs.true78
  %53 = load ptr, ptr %argv.addr, align 8
  %54 = load i32, ptr %arg_pos, align 4
  %inc86 = add nsw i32 %54, 1
  store i32 %inc86, ptr %arg_pos, align 4
  %idxprom87 = sext i32 %inc86 to i64
  %arrayidx88 = getelementptr inbounds ptr, ptr %53, i64 %idxprom87
  %55 = load ptr, ptr %arrayidx88, align 8
  store ptr %55, ptr %outfilename, align 8
  br label %if.end92

if.else89:                                        ; preds = %land.lhs.true78, %if.else74
  %56 = load ptr, ptr @err_fp, align 8
  %call90 = call ptr @ErrorHeader()
  %call91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.1217, ptr noundef %call90, ptr noundef @.str.1221)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end92:                                         ; preds = %if.then85
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then70
  %57 = load ptr, ptr %outfilename, align 8
  %call94 = call ptr @"\01_fopen"(ptr noundef %57, ptr noundef @.str.70)
  store ptr %call94, ptr @out_fp, align 8
  %58 = load ptr, ptr @out_fp, align 8
  %cmp95 = icmp eq ptr %58, null
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.end93
  %59 = load ptr, ptr @err_fp, align 8
  %call98 = call ptr @ErrorHeader()
  %60 = load ptr, ptr %outfilename, align 8
  %call99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.1222, ptr noundef %call98, ptr noundef %60)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end100:                                        ; preds = %if.end93
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.then4
  %61 = load ptr, ptr %argv.addr, align 8
  %62 = load i32, ptr %arg_pos, align 4
  %idxprom102 = sext i32 %62 to i64
  %arrayidx103 = getelementptr inbounds ptr, ptr %61, i64 %idxprom102
  %63 = load ptr, ptr %arrayidx103, align 8
  %add.ptr104 = getelementptr inbounds i8, ptr %63, i64 2
  %call105 = call i32 @strcmp(ptr noundef %add.ptr104, ptr noundef @.str.10)
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.else112

if.then108:                                       ; preds = %sw.bb101
  %64 = load ptr, ptr %argv.addr, align 8
  %65 = load i32, ptr %arg_pos, align 4
  %idxprom109 = sext i32 %65 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %64, i64 %idxprom109
  %66 = load ptr, ptr %arrayidx110, align 8
  %add.ptr111 = getelementptr inbounds i8, ptr %66, i64 2
  store ptr %add.ptr111, ptr %errfilename, align 8
  br label %if.end131

if.else112:                                       ; preds = %sw.bb101
  %67 = load i32, ptr %arg_pos, align 4
  %68 = load i32, ptr %argc.addr, align 4
  %sub113 = sub nsw i32 %68, 1
  %cmp114 = icmp slt i32 %67, %sub113
  br i1 %cmp114, label %land.lhs.true116, label %if.else127

land.lhs.true116:                                 ; preds = %if.else112
  %69 = load ptr, ptr %argv.addr, align 8
  %70 = load i32, ptr %arg_pos, align 4
  %add117 = add nsw i32 %70, 1
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds ptr, ptr %69, i64 %idxprom118
  %71 = load ptr, ptr %arrayidx119, align 8
  %72 = load i8, ptr %71, align 1
  %conv120 = sext i8 %72 to i32
  %cmp121 = icmp ne i32 %conv120, 45
  br i1 %cmp121, label %if.then123, label %if.else127

if.then123:                                       ; preds = %land.lhs.true116
  %73 = load ptr, ptr %argv.addr, align 8
  %74 = load i32, ptr %arg_pos, align 4
  %inc124 = add nsw i32 %74, 1
  store i32 %inc124, ptr %arg_pos, align 4
  %idxprom125 = sext i32 %inc124 to i64
  %arrayidx126 = getelementptr inbounds ptr, ptr %73, i64 %idxprom125
  %75 = load ptr, ptr %arrayidx126, align 8
  store ptr %75, ptr %errfilename, align 8
  br label %if.end130

if.else127:                                       ; preds = %land.lhs.true116, %if.else112
  %76 = load ptr, ptr @err_fp, align 8
  %call128 = call ptr @ErrorHeader()
  %call129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.1217, ptr noundef %call128, ptr noundef @.str.1223)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end130:                                        ; preds = %if.then123
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then108
  %77 = load ptr, ptr %errfilename, align 8
  %call132 = call ptr @"\01_fopen"(ptr noundef %77, ptr noundef @.str.70)
  store ptr %call132, ptr @err_fp, align 8
  %78 = load ptr, ptr @err_fp, align 8
  %cmp133 = icmp eq ptr %78, null
  br i1 %cmp133, label %if.then135, label %if.end138

if.then135:                                       ; preds = %if.end131
  %79 = load ptr, ptr @__stderrp, align 8
  %call136 = call ptr @ErrorHeader()
  %80 = load ptr, ptr %errfilename, align 8
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef @.str.1224, ptr noundef %call136, ptr noundef %80)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end138:                                        ; preds = %if.end131
  br label %sw.epilog

sw.bb139:                                         ; preds = %if.then4
  %81 = load i32, ptr @raw_seen, align 4
  %tobool140 = icmp ne i32 %81, 0
  br i1 %tobool140, label %if.then141, label %if.end144

if.then141:                                       ; preds = %sw.bb139
  %82 = load ptr, ptr @err_fp, align 8
  %call142 = call ptr @ErrorHeader()
  %call143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str.1225, ptr noundef %call142)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end144:                                        ; preds = %sw.bb139
  %83 = load ptr, ptr %argv.addr, align 8
  %84 = load i32, ptr %arg_pos, align 4
  %idxprom145 = sext i32 %84 to i64
  %arrayidx146 = getelementptr inbounds ptr, ptr %83, i64 %idxprom145
  %85 = load ptr, ptr %arrayidx146, align 8
  %add.ptr147 = getelementptr inbounds i8, ptr %85, i64 2
  %call148 = call i32 @strcmp(ptr noundef %add.ptr147, ptr noundef @.str.10)
  %cmp149 = icmp ne i32 %call148, 0
  br i1 %cmp149, label %if.then151, label %if.else155

if.then151:                                       ; preds = %if.end144
  %86 = load ptr, ptr %argv.addr, align 8
  %87 = load i32, ptr %arg_pos, align 4
  %idxprom152 = sext i32 %87 to i64
  %arrayidx153 = getelementptr inbounds ptr, ptr %86, i64 %idxprom152
  %88 = load ptr, ptr %arrayidx153, align 8
  %add.ptr154 = getelementptr inbounds i8, ptr %88, i64 2
  store ptr %add.ptr154, ptr @style_option, align 8
  br label %if.end174

if.else155:                                       ; preds = %if.end144
  %89 = load i32, ptr %arg_pos, align 4
  %90 = load i32, ptr %argc.addr, align 4
  %sub156 = sub nsw i32 %90, 1
  %cmp157 = icmp slt i32 %89, %sub156
  br i1 %cmp157, label %land.lhs.true159, label %if.else170

land.lhs.true159:                                 ; preds = %if.else155
  %91 = load ptr, ptr %argv.addr, align 8
  %92 = load i32, ptr %arg_pos, align 4
  %add160 = add nsw i32 %92, 1
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds ptr, ptr %91, i64 %idxprom161
  %93 = load ptr, ptr %arrayidx162, align 8
  %94 = load i8, ptr %93, align 1
  %conv163 = sext i8 %94 to i32
  %cmp164 = icmp ne i32 %conv163, 45
  br i1 %cmp164, label %if.then166, label %if.else170

if.then166:                                       ; preds = %land.lhs.true159
  %95 = load ptr, ptr %argv.addr, align 8
  %96 = load i32, ptr %arg_pos, align 4
  %inc167 = add nsw i32 %96, 1
  store i32 %inc167, ptr %arg_pos, align 4
  %idxprom168 = sext i32 %inc167 to i64
  %arrayidx169 = getelementptr inbounds ptr, ptr %95, i64 %idxprom168
  %97 = load ptr, ptr %arrayidx169, align 8
  store ptr %97, ptr @style_option, align 8
  br label %if.end173

if.else170:                                       ; preds = %land.lhs.true159, %if.else155
  %98 = load ptr, ptr @err_fp, align 8
  %call171 = call ptr @ErrorHeader()
  %call172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef @.str.1217, ptr noundef %call171, ptr noundef @.str.1226)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end173:                                        ; preds = %if.then166
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then151
  %99 = load ptr, ptr @style_option, align 8
  %call175 = call i32 @strcmp(ptr noundef %99, ptr noundef @.str.1227)
  %cmp176 = icmp ne i32 %call175, 0
  br i1 %cmp176, label %land.lhs.true178, label %if.end189

land.lhs.true178:                                 ; preds = %if.end174
  %100 = load ptr, ptr @style_option, align 8
  %call179 = call i32 @strcmp(ptr noundef %100, ptr noundef @.str.1228)
  %cmp180 = icmp ne i32 %call179, 0
  br i1 %cmp180, label %land.lhs.true182, label %if.end189

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %101 = load ptr, ptr @style_option, align 8
  %call183 = call i32 @strcmp(ptr noundef %101, ptr noundef @.str.1229)
  %cmp184 = icmp ne i32 %call183, 0
  br i1 %cmp184, label %if.then186, label %if.end189

if.then186:                                       ; preds = %land.lhs.true182
  %102 = load ptr, ptr @err_fp, align 8
  %call187 = call ptr @ErrorHeader()
  %103 = load ptr, ptr @style_option, align 8
  %call188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.1230, ptr noundef %call187, ptr noundef %103)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end189:                                        ; preds = %land.lhs.true182, %land.lhs.true178, %if.end174
  br label %sw.epilog

sw.bb190:                                         ; preds = %if.then4
  %104 = load i32, ptr @raw_seen, align 4
  %tobool191 = icmp ne i32 %104, 0
  br i1 %tobool191, label %if.then192, label %if.end195

if.then192:                                       ; preds = %sw.bb190
  %105 = load ptr, ptr @err_fp, align 8
  %call193 = call ptr @ErrorHeader()
  %call194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.1231, ptr noundef %call193)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end195:                                        ; preds = %sw.bb190
  %106 = load ptr, ptr %argv.addr, align 8
  %107 = load i32, ptr %arg_pos, align 4
  %idxprom196 = sext i32 %107 to i64
  %arrayidx197 = getelementptr inbounds ptr, ptr %106, i64 %idxprom196
  %108 = load ptr, ptr %arrayidx197, align 8
  %add.ptr198 = getelementptr inbounds i8, ptr %108, i64 2
  %call199 = call i32 @strcmp(ptr noundef %add.ptr198, ptr noundef @.str.10)
  %cmp200 = icmp ne i32 %call199, 0
  br i1 %cmp200, label %if.then202, label %if.else206

if.then202:                                       ; preds = %if.end195
  %109 = load ptr, ptr %argv.addr, align 8
  %110 = load i32, ptr %arg_pos, align 4
  %idxprom203 = sext i32 %110 to i64
  %arrayidx204 = getelementptr inbounds ptr, ptr %109, i64 %idxprom203
  %111 = load ptr, ptr %arrayidx204, align 8
  %add.ptr205 = getelementptr inbounds i8, ptr %111, i64 2
  store ptr %add.ptr205, ptr @font_option, align 8
  br label %if.end225

if.else206:                                       ; preds = %if.end195
  %112 = load i32, ptr %arg_pos, align 4
  %113 = load i32, ptr %argc.addr, align 4
  %sub207 = sub nsw i32 %113, 1
  %cmp208 = icmp slt i32 %112, %sub207
  br i1 %cmp208, label %land.lhs.true210, label %if.else221

land.lhs.true210:                                 ; preds = %if.else206
  %114 = load ptr, ptr %argv.addr, align 8
  %115 = load i32, ptr %arg_pos, align 4
  %add211 = add nsw i32 %115, 1
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds ptr, ptr %114, i64 %idxprom212
  %116 = load ptr, ptr %arrayidx213, align 8
  %117 = load i8, ptr %116, align 1
  %conv214 = sext i8 %117 to i32
  %cmp215 = icmp ne i32 %conv214, 45
  br i1 %cmp215, label %if.then217, label %if.else221

if.then217:                                       ; preds = %land.lhs.true210
  %118 = load ptr, ptr %argv.addr, align 8
  %119 = load i32, ptr %arg_pos, align 4
  %inc218 = add nsw i32 %119, 1
  store i32 %inc218, ptr %arg_pos, align 4
  %idxprom219 = sext i32 %inc218 to i64
  %arrayidx220 = getelementptr inbounds ptr, ptr %118, i64 %idxprom219
  %120 = load ptr, ptr %arrayidx220, align 8
  store ptr %120, ptr @font_option, align 8
  br label %if.end224

if.else221:                                       ; preds = %land.lhs.true210, %if.else206
  %121 = load ptr, ptr @err_fp, align 8
  %call222 = call ptr @ErrorHeader()
  %call223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef @.str.1217, ptr noundef %call222, ptr noundef @.str.1232)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end224:                                        ; preds = %if.then217
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.then202
  br label %sw.epilog

sw.bb226:                                         ; preds = %if.then4
  %122 = load i32, ptr @raw_seen, align 4
  %tobool227 = icmp ne i32 %122, 0
  br i1 %tobool227, label %if.then228, label %if.end231

if.then228:                                       ; preds = %sw.bb226
  %123 = load ptr, ptr @err_fp, align 8
  %call229 = call ptr @ErrorHeader()
  %call230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.1233, ptr noundef %call229)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end231:                                        ; preds = %sw.bb226
  %124 = load ptr, ptr %argv.addr, align 8
  %125 = load i32, ptr %arg_pos, align 4
  %idxprom232 = sext i32 %125 to i64
  %arrayidx233 = getelementptr inbounds ptr, ptr %124, i64 %idxprom232
  %126 = load ptr, ptr %arrayidx233, align 8
  %add.ptr234 = getelementptr inbounds i8, ptr %126, i64 2
  %call235 = call i32 @strcmp(ptr noundef %add.ptr234, ptr noundef @.str.10)
  %cmp236 = icmp ne i32 %call235, 0
  br i1 %cmp236, label %if.then238, label %if.else242

if.then238:                                       ; preds = %if.end231
  %127 = load ptr, ptr %argv.addr, align 8
  %128 = load i32, ptr %arg_pos, align 4
  %idxprom239 = sext i32 %128 to i64
  %arrayidx240 = getelementptr inbounds ptr, ptr %127, i64 %idxprom239
  %129 = load ptr, ptr %arrayidx240, align 8
  %add.ptr241 = getelementptr inbounds i8, ptr %129, i64 2
  store ptr %add.ptr241, ptr @size_option, align 8
  br label %if.end261

if.else242:                                       ; preds = %if.end231
  %130 = load i32, ptr %arg_pos, align 4
  %131 = load i32, ptr %argc.addr, align 4
  %sub243 = sub nsw i32 %131, 1
  %cmp244 = icmp slt i32 %130, %sub243
  br i1 %cmp244, label %land.lhs.true246, label %if.else257

land.lhs.true246:                                 ; preds = %if.else242
  %132 = load ptr, ptr %argv.addr, align 8
  %133 = load i32, ptr %arg_pos, align 4
  %add247 = add nsw i32 %133, 1
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds ptr, ptr %132, i64 %idxprom248
  %134 = load ptr, ptr %arrayidx249, align 8
  %135 = load i8, ptr %134, align 1
  %conv250 = sext i8 %135 to i32
  %cmp251 = icmp ne i32 %conv250, 45
  br i1 %cmp251, label %if.then253, label %if.else257

if.then253:                                       ; preds = %land.lhs.true246
  %136 = load ptr, ptr %argv.addr, align 8
  %137 = load i32, ptr %arg_pos, align 4
  %inc254 = add nsw i32 %137, 1
  store i32 %inc254, ptr %arg_pos, align 4
  %idxprom255 = sext i32 %inc254 to i64
  %arrayidx256 = getelementptr inbounds ptr, ptr %136, i64 %idxprom255
  %138 = load ptr, ptr %arrayidx256, align 8
  store ptr %138, ptr @size_option, align 8
  br label %if.end260

if.else257:                                       ; preds = %land.lhs.true246, %if.else242
  %139 = load ptr, ptr @err_fp, align 8
  %call258 = call ptr @ErrorHeader()
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.1217, ptr noundef %call258, ptr noundef @.str.1234)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end260:                                        ; preds = %if.then253
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.then238
  br label %sw.epilog

sw.bb262:                                         ; preds = %if.then4
  %140 = load i32, ptr @raw_seen, align 4
  %tobool263 = icmp ne i32 %140, 0
  br i1 %tobool263, label %if.then264, label %if.end267

if.then264:                                       ; preds = %sw.bb262
  %141 = load ptr, ptr @err_fp, align 8
  %call265 = call ptr @ErrorHeader()
  %call266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.1235, ptr noundef %call265)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end267:                                        ; preds = %sw.bb262
  %142 = load ptr, ptr %argv.addr, align 8
  %143 = load i32, ptr %arg_pos, align 4
  %idxprom268 = sext i32 %143 to i64
  %arrayidx269 = getelementptr inbounds ptr, ptr %142, i64 %idxprom268
  %144 = load ptr, ptr %arrayidx269, align 8
  %add.ptr270 = getelementptr inbounds i8, ptr %144, i64 2
  %call271 = call i32 @strcmp(ptr noundef %add.ptr270, ptr noundef @.str.10)
  %cmp272 = icmp ne i32 %call271, 0
  br i1 %cmp272, label %if.then274, label %if.else278

if.then274:                                       ; preds = %if.end267
  %145 = load ptr, ptr %argv.addr, align 8
  %146 = load i32, ptr %arg_pos, align 4
  %idxprom275 = sext i32 %146 to i64
  %arrayidx276 = getelementptr inbounds ptr, ptr %145, i64 %idxprom275
  %147 = load ptr, ptr %arrayidx276, align 8
  %add.ptr277 = getelementptr inbounds i8, ptr %147, i64 2
  store ptr %add.ptr277, ptr @line_option, align 8
  br label %if.end297

if.else278:                                       ; preds = %if.end267
  %148 = load i32, ptr %arg_pos, align 4
  %149 = load i32, ptr %argc.addr, align 4
  %sub279 = sub nsw i32 %149, 1
  %cmp280 = icmp slt i32 %148, %sub279
  br i1 %cmp280, label %land.lhs.true282, label %if.else293

land.lhs.true282:                                 ; preds = %if.else278
  %150 = load ptr, ptr %argv.addr, align 8
  %151 = load i32, ptr %arg_pos, align 4
  %add283 = add nsw i32 %151, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds ptr, ptr %150, i64 %idxprom284
  %152 = load ptr, ptr %arrayidx285, align 8
  %153 = load i8, ptr %152, align 1
  %conv286 = sext i8 %153 to i32
  %cmp287 = icmp ne i32 %conv286, 45
  br i1 %cmp287, label %if.then289, label %if.else293

if.then289:                                       ; preds = %land.lhs.true282
  %154 = load ptr, ptr %argv.addr, align 8
  %155 = load i32, ptr %arg_pos, align 4
  %inc290 = add nsw i32 %155, 1
  store i32 %inc290, ptr %arg_pos, align 4
  %idxprom291 = sext i32 %inc290 to i64
  %arrayidx292 = getelementptr inbounds ptr, ptr %154, i64 %idxprom291
  %156 = load ptr, ptr %arrayidx292, align 8
  store ptr %156, ptr @line_option, align 8
  br label %if.end296

if.else293:                                       ; preds = %land.lhs.true282, %if.else278
  %157 = load ptr, ptr @err_fp, align 8
  %call294 = call ptr @ErrorHeader()
  %call295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef @.str.1217, ptr noundef %call294, ptr noundef @.str.1236)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end296:                                        ; preds = %if.then289
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %if.then274
  br label %sw.epilog

sw.bb298:                                         ; preds = %if.then4
  %158 = load ptr, ptr %argv.addr, align 8
  %159 = load i32, ptr %arg_pos, align 4
  %idxprom299 = sext i32 %159 to i64
  %arrayidx300 = getelementptr inbounds ptr, ptr %158, i64 %idxprom299
  %160 = load ptr, ptr %arrayidx300, align 8
  %add.ptr301 = getelementptr inbounds i8, ptr %160, i64 2
  %call302 = call i32 @strcmp(ptr noundef %add.ptr301, ptr noundef @.str.10)
  %cmp303 = icmp ne i32 %call302, 0
  br i1 %cmp303, label %if.then305, label %if.else309

if.then305:                                       ; preds = %sw.bb298
  %161 = load ptr, ptr %argv.addr, align 8
  %162 = load i32, ptr %arg_pos, align 4
  %idxprom306 = sext i32 %162 to i64
  %arrayidx307 = getelementptr inbounds ptr, ptr %161, i64 %idxprom306
  %163 = load ptr, ptr %arrayidx307, align 8
  %add.ptr308 = getelementptr inbounds i8, ptr %163, i64 2
  store ptr %add.ptr308, ptr @tabin_option, align 8
  br label %if.end310

if.else309:                                       ; preds = %sw.bb298
  store ptr null, ptr @tabin_option, align 8
  br label %if.end310

if.end310:                                        ; preds = %if.else309, %if.then305
  %164 = load ptr, ptr @tabin_option, align 8
  %cmp311 = icmp ne ptr %164, null
  br i1 %cmp311, label %land.lhs.true313, label %if.end320

land.lhs.true313:                                 ; preds = %if.end310
  %165 = load ptr, ptr @tabin_option, align 8
  %call314 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %165, ptr noundef @.str.242, ptr noundef @tab_in)
  %cmp315 = icmp ne i32 %call314, 1
  br i1 %cmp315, label %if.then317, label %if.end320

if.then317:                                       ; preds = %land.lhs.true313
  %166 = load ptr, ptr @err_fp, align 8
  %call318 = call ptr @ErrorHeader()
  %call319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.1237, ptr noundef %call318)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end320:                                        ; preds = %land.lhs.true313, %if.end310
  %167 = load i32, ptr @tab_in, align 4
  %cmp321 = icmp sle i32 %167, 0
  br i1 %cmp321, label %if.then323, label %if.end326

if.then323:                                       ; preds = %if.end320
  %168 = load ptr, ptr @err_fp, align 8
  %call324 = call ptr @ErrorHeader()
  %call325 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.1238, ptr noundef %call324)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end326:                                        ; preds = %if.end320
  br label %sw.epilog

sw.bb327:                                         ; preds = %if.then4
  %169 = load ptr, ptr %argv.addr, align 8
  %170 = load i32, ptr %arg_pos, align 4
  %idxprom328 = sext i32 %170 to i64
  %arrayidx329 = getelementptr inbounds ptr, ptr %169, i64 %idxprom328
  %171 = load ptr, ptr %arrayidx329, align 8
  %add.ptr330 = getelementptr inbounds i8, ptr %171, i64 2
  %call331 = call i32 @strcmp(ptr noundef %add.ptr330, ptr noundef @.str.10)
  %cmp332 = icmp ne i32 %call331, 0
  br i1 %cmp332, label %if.then334, label %if.else338

if.then334:                                       ; preds = %sw.bb327
  %172 = load ptr, ptr %argv.addr, align 8
  %173 = load i32, ptr %arg_pos, align 4
  %idxprom335 = sext i32 %173 to i64
  %arrayidx336 = getelementptr inbounds ptr, ptr %172, i64 %idxprom335
  %174 = load ptr, ptr %arrayidx336, align 8
  %add.ptr337 = getelementptr inbounds i8, ptr %174, i64 2
  store ptr %add.ptr337, ptr @tabout_option, align 8
  br label %if.end339

if.else338:                                       ; preds = %sw.bb327
  store ptr null, ptr @tabout_option, align 8
  br label %if.end339

if.end339:                                        ; preds = %if.else338, %if.then334
  %175 = load ptr, ptr @tabout_option, align 8
  %cmp340 = icmp ne ptr %175, null
  br i1 %cmp340, label %if.then342, label %if.end389

if.then342:                                       ; preds = %if.end339
  %176 = load ptr, ptr @tabout_option, align 8
  %call343 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %176, ptr noundef @.str.1239, ptr noundef @tab_out, ptr noundef @tab_unit)
  %cmp344 = icmp ne i32 %call343, 2
  br i1 %cmp344, label %if.then346, label %if.end349

if.then346:                                       ; preds = %if.then342
  %177 = load ptr, ptr @err_fp, align 8
  %call347 = call ptr @ErrorHeader()
  %call348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.1240, ptr noundef %call347)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end349:                                        ; preds = %if.then342
  %178 = load float, ptr @tab_out, align 4
  %cmp350 = fcmp ole float %178, 0.000000e+00
  br i1 %cmp350, label %if.then354, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end349
  %179 = load float, ptr @tab_out, align 4
  %cmp352 = fcmp oge float %179, 5.000000e+01
  br i1 %cmp352, label %if.then354, label %if.end357

if.then354:                                       ; preds = %lor.lhs.false, %if.end349
  %180 = load ptr, ptr @err_fp, align 8
  %call355 = call ptr @ErrorHeader()
  %call356 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.1241, ptr noundef %call355)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end357:                                        ; preds = %lor.lhs.false
  %181 = load i8, ptr @tab_unit, align 1
  %conv358 = sext i8 %181 to i32
  %cmp359 = icmp ne i32 %conv358, 99
  br i1 %cmp359, label %land.lhs.true361, label %if.end388

land.lhs.true361:                                 ; preds = %if.end357
  %182 = load i8, ptr @tab_unit, align 1
  %conv362 = sext i8 %182 to i32
  %cmp363 = icmp ne i32 %conv362, 105
  br i1 %cmp363, label %land.lhs.true365, label %if.end388

land.lhs.true365:                                 ; preds = %land.lhs.true361
  %183 = load i8, ptr @tab_unit, align 1
  %conv366 = sext i8 %183 to i32
  %cmp367 = icmp ne i32 %conv366, 112
  br i1 %cmp367, label %land.lhs.true369, label %if.end388

land.lhs.true369:                                 ; preds = %land.lhs.true365
  %184 = load i8, ptr @tab_unit, align 1
  %conv370 = sext i8 %184 to i32
  %cmp371 = icmp ne i32 %conv370, 109
  br i1 %cmp371, label %land.lhs.true373, label %if.end388

land.lhs.true373:                                 ; preds = %land.lhs.true369
  %185 = load i8, ptr @tab_unit, align 1
  %conv374 = sext i8 %185 to i32
  %cmp375 = icmp ne i32 %conv374, 102
  br i1 %cmp375, label %land.lhs.true377, label %if.end388

land.lhs.true377:                                 ; preds = %land.lhs.true373
  %186 = load i8, ptr @tab_unit, align 1
  %conv378 = sext i8 %186 to i32
  %cmp379 = icmp ne i32 %conv378, 115
  br i1 %cmp379, label %land.lhs.true381, label %if.end388

land.lhs.true381:                                 ; preds = %land.lhs.true377
  %187 = load i8, ptr @tab_unit, align 1
  %conv382 = sext i8 %187 to i32
  %cmp383 = icmp ne i32 %conv382, 118
  br i1 %cmp383, label %if.then385, label %if.end388

if.then385:                                       ; preds = %land.lhs.true381
  %188 = load ptr, ptr @err_fp, align 8
  %call386 = call ptr @ErrorHeader()
  %call387 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef @.str.1242, ptr noundef %call386)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end388:                                        ; preds = %land.lhs.true381, %land.lhs.true377, %land.lhs.true373, %land.lhs.true369, %land.lhs.true365, %land.lhs.true361, %if.end357
  store i32 0, ptr @tab_by_spacing, align 4
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %if.end339
  br label %sw.epilog

sw.bb390:                                         ; preds = %if.then4
  %189 = load i32, ptr @raw_seen, align 4
  %tobool391 = icmp ne i32 %189, 0
  br i1 %tobool391, label %if.then392, label %if.end395

if.then392:                                       ; preds = %sw.bb390
  %190 = load ptr, ptr @err_fp, align 8
  %call393 = call ptr @ErrorHeader()
  %call394 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef @.str.1243, ptr noundef %call393)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end395:                                        ; preds = %sw.bb390
  %191 = load ptr, ptr %argv.addr, align 8
  %192 = load i32, ptr %arg_pos, align 4
  %idxprom396 = sext i32 %192 to i64
  %arrayidx397 = getelementptr inbounds ptr, ptr %191, i64 %idxprom396
  %193 = load ptr, ptr %arrayidx397, align 8
  %add.ptr398 = getelementptr inbounds i8, ptr %193, i64 2
  %call399 = call i32 @strcmp(ptr noundef %add.ptr398, ptr noundef @.str.10)
  %cmp400 = icmp ne i32 %call399, 0
  br i1 %cmp400, label %if.then402, label %if.else406

if.then402:                                       ; preds = %if.end395
  %194 = load ptr, ptr %argv.addr, align 8
  %195 = load i32, ptr %arg_pos, align 4
  %idxprom403 = sext i32 %195 to i64
  %arrayidx404 = getelementptr inbounds ptr, ptr %194, i64 %idxprom403
  %196 = load ptr, ptr %arrayidx404, align 8
  %add.ptr405 = getelementptr inbounds i8, ptr %196, i64 2
  store ptr %add.ptr405, ptr @setup_option, align 8
  br label %if.end425

if.else406:                                       ; preds = %if.end395
  %197 = load i32, ptr %arg_pos, align 4
  %198 = load i32, ptr %argc.addr, align 4
  %sub407 = sub nsw i32 %198, 1
  %cmp408 = icmp slt i32 %197, %sub407
  br i1 %cmp408, label %land.lhs.true410, label %if.else421

land.lhs.true410:                                 ; preds = %if.else406
  %199 = load ptr, ptr %argv.addr, align 8
  %200 = load i32, ptr %arg_pos, align 4
  %add411 = add nsw i32 %200, 1
  %idxprom412 = sext i32 %add411 to i64
  %arrayidx413 = getelementptr inbounds ptr, ptr %199, i64 %idxprom412
  %201 = load ptr, ptr %arrayidx413, align 8
  %202 = load i8, ptr %201, align 1
  %conv414 = sext i8 %202 to i32
  %cmp415 = icmp ne i32 %conv414, 45
  br i1 %cmp415, label %if.then417, label %if.else421

if.then417:                                       ; preds = %land.lhs.true410
  %203 = load ptr, ptr %argv.addr, align 8
  %204 = load i32, ptr %arg_pos, align 4
  %inc418 = add nsw i32 %204, 1
  store i32 %inc418, ptr %arg_pos, align 4
  %idxprom419 = sext i32 %inc418 to i64
  %arrayidx420 = getelementptr inbounds ptr, ptr %203, i64 %idxprom419
  %205 = load ptr, ptr %arrayidx420, align 8
  store ptr %205, ptr @setup_option, align 8
  br label %if.end424

if.else421:                                       ; preds = %land.lhs.true410, %if.else406
  %206 = load ptr, ptr @err_fp, align 8
  %call422 = call ptr @ErrorHeader()
  %call423 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef @.str.1217, ptr noundef %call422, ptr noundef @.str.1244)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end424:                                        ; preds = %if.then417
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %if.then402
  br label %sw.epilog

sw.bb426:                                         ; preds = %if.then4
  %207 = load ptr, ptr %argv.addr, align 8
  %208 = load i32, ptr %arg_pos, align 4
  %idxprom427 = sext i32 %208 to i64
  %arrayidx428 = getelementptr inbounds ptr, ptr %207, i64 %idxprom427
  %209 = load ptr, ptr %arrayidx428, align 8
  %add.ptr429 = getelementptr inbounds i8, ptr %209, i64 2
  %call430 = call i32 @strcmp(ptr noundef %add.ptr429, ptr noundef @.str.10)
  %cmp431 = icmp ne i32 %call430, 0
  br i1 %cmp431, label %if.then433, label %if.else437

if.then433:                                       ; preds = %sw.bb426
  %210 = load ptr, ptr %argv.addr, align 8
  %211 = load i32, ptr %arg_pos, align 4
  %idxprom434 = sext i32 %211 to i64
  %arrayidx435 = getelementptr inbounds ptr, ptr %210, i64 %idxprom434
  %212 = load ptr, ptr %arrayidx435, align 8
  %add.ptr436 = getelementptr inbounds i8, ptr %212, i64 2
  store ptr %add.ptr436, ptr @numbered_option, align 8
  br label %if.end438

if.else437:                                       ; preds = %sw.bb426
  store ptr null, ptr @numbered_option, align 8
  br label %if.end438

if.end438:                                        ; preds = %if.else437, %if.then433
  store i32 1, ptr @print_lines, align 4
  store i32 1, ptr @print_num, align 4
  %213 = load ptr, ptr @numbered_option, align 8
  %cmp439 = icmp ne ptr %213, null
  br i1 %cmp439, label %land.lhs.true441, label %if.end448

land.lhs.true441:                                 ; preds = %if.end438
  %214 = load ptr, ptr @numbered_option, align 8
  %call442 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %214, ptr noundef @.str.242, ptr noundef @print_num)
  %cmp443 = icmp ne i32 %call442, 1
  br i1 %cmp443, label %if.then445, label %if.end448

if.then445:                                       ; preds = %land.lhs.true441
  %215 = load ptr, ptr @err_fp, align 8
  %call446 = call ptr @ErrorHeader()
  %call447 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef @.str.1245, ptr noundef %call446)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end448:                                        ; preds = %land.lhs.true441, %if.end438
  br label %sw.epilog

sw.bb449:                                         ; preds = %if.then4
  %216 = load i32, ptr @raw_seen, align 4
  %tobool450 = icmp ne i32 %216, 0
  br i1 %tobool450, label %if.then451, label %if.end454

if.then451:                                       ; preds = %sw.bb449
  %217 = load ptr, ptr @err_fp, align 8
  %call452 = call ptr @ErrorHeader()
  %call453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef @.str.1246, ptr noundef %call452)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end454:                                        ; preds = %sw.bb449
  store i32 0, ptr @headers_option, align 4
  br label %sw.epilog

sw.bb455:                                         ; preds = %if.then4
  %218 = load i32, ptr @raw_seen, align 4
  %tobool456 = icmp ne i32 %218, 0
  br i1 %tobool456, label %if.then457, label %if.end460

if.then457:                                       ; preds = %sw.bb455
  %219 = load ptr, ptr @err_fp, align 8
  %call458 = call ptr @ErrorHeader()
  %call459 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef @.str.1247, ptr noundef %call458)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end460:                                        ; preds = %sw.bb455
  %220 = load ptr, ptr @err_fp, align 8
  %call461 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.1248, ptr noundef @.str.1249)
  call void @exit(i32 noundef 0) #9
  unreachable

sw.bb462:                                         ; preds = %if.then4
  %221 = load i32, ptr @raw_seen, align 4
  %tobool463 = icmp ne i32 %221, 0
  br i1 %tobool463, label %if.then464, label %if.end467

if.then464:                                       ; preds = %sw.bb462
  %222 = load ptr, ptr @err_fp, align 8
  %call465 = call ptr @ErrorHeader()
  %call466 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef @.str.1250, ptr noundef %call465)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end467:                                        ; preds = %sw.bb462
  call void @PrintUsage()
  call void @exit(i32 noundef 0) #9
  unreachable

sw.bb468:                                         ; preds = %if.then4
  %223 = load ptr, ptr @language_option, align 8
  %cmp469 = icmp ne ptr %223, null
  br i1 %cmp469, label %if.then471, label %if.end474

if.then471:                                       ; preds = %sw.bb468
  %224 = load ptr, ptr @err_fp, align 8
  %call472 = call ptr @ErrorHeader()
  %call473 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str.1251, ptr noundef %call472)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end474:                                        ; preds = %sw.bb468
  %225 = load ptr, ptr %argv.addr, align 8
  %226 = load i32, ptr %arg_pos, align 4
  %idxprom475 = sext i32 %226 to i64
  %arrayidx476 = getelementptr inbounds ptr, ptr %225, i64 %idxprom475
  %227 = load ptr, ptr %arrayidx476, align 8
  %add.ptr477 = getelementptr inbounds i8, ptr %227, i64 2
  %call478 = call i32 @strcmp(ptr noundef %add.ptr477, ptr noundef @.str.10)
  %cmp479 = icmp ne i32 %call478, 0
  br i1 %cmp479, label %if.then481, label %if.else485

if.then481:                                       ; preds = %if.end474
  %228 = load ptr, ptr %argv.addr, align 8
  %229 = load i32, ptr %arg_pos, align 4
  %idxprom482 = sext i32 %229 to i64
  %arrayidx483 = getelementptr inbounds ptr, ptr %228, i64 %idxprom482
  %230 = load ptr, ptr %arrayidx483, align 8
  %add.ptr484 = getelementptr inbounds i8, ptr %230, i64 2
  store ptr %add.ptr484, ptr @language_option, align 8
  br label %if.end504

if.else485:                                       ; preds = %if.end474
  %231 = load i32, ptr %arg_pos, align 4
  %232 = load i32, ptr %argc.addr, align 4
  %sub486 = sub nsw i32 %232, 1
  %cmp487 = icmp slt i32 %231, %sub486
  br i1 %cmp487, label %land.lhs.true489, label %if.else500

land.lhs.true489:                                 ; preds = %if.else485
  %233 = load ptr, ptr %argv.addr, align 8
  %234 = load i32, ptr %arg_pos, align 4
  %add490 = add nsw i32 %234, 1
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds ptr, ptr %233, i64 %idxprom491
  %235 = load ptr, ptr %arrayidx492, align 8
  %236 = load i8, ptr %235, align 1
  %conv493 = sext i8 %236 to i32
  %cmp494 = icmp ne i32 %conv493, 45
  br i1 %cmp494, label %if.then496, label %if.else500

if.then496:                                       ; preds = %land.lhs.true489
  %237 = load ptr, ptr %argv.addr, align 8
  %238 = load i32, ptr %arg_pos, align 4
  %inc497 = add nsw i32 %238, 1
  store i32 %inc497, ptr %arg_pos, align 4
  %idxprom498 = sext i32 %inc497 to i64
  %arrayidx499 = getelementptr inbounds ptr, ptr %237, i64 %idxprom498
  %239 = load ptr, ptr %arrayidx499, align 8
  store ptr %239, ptr @language_option, align 8
  br label %if.end503

if.else500:                                       ; preds = %land.lhs.true489, %if.else485
  %240 = load ptr, ptr @err_fp, align 8
  %call501 = call ptr @ErrorHeader()
  %call502 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.1217, ptr noundef %call501, ptr noundef @.str.1252)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end503:                                        ; preds = %if.then496
  br label %if.end504

if.end504:                                        ; preds = %if.end503, %if.then481
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end534, %if.end504
  %241 = load ptr, ptr %lang, align 8
  %cmp505 = icmp eq ptr %241, null
  br i1 %cmp505, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %242 = load i32, ptr %i, align 4
  %idxprom507 = sext i32 %242 to i64
  %arrayidx508 = getelementptr inbounds [6 x ptr], ptr @languages, i64 0, i64 %idxprom507
  %243 = load ptr, ptr %arrayidx508, align 8
  %cmp509 = icmp ne ptr %243, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %244 = phi i1 [ false, %while.cond ], [ %cmp509, %land.rhs ]
  br i1 %244, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %245 = load i32, ptr %i, align 4
  %idxprom511 = sext i32 %245 to i64
  %arrayidx512 = getelementptr inbounds [6 x ptr], ptr @languages, i64 0, i64 %idxprom511
  %246 = load ptr, ptr %arrayidx512, align 8
  %names = getelementptr inbounds %struct.lang_rec, ptr %246, i32 0, i32 0
  %247 = load i32, ptr %j, align 4
  %idxprom513 = sext i32 %247 to i64
  %arrayidx514 = getelementptr inbounds [10 x ptr], ptr %names, i64 0, i64 %idxprom513
  %248 = load ptr, ptr %arrayidx514, align 8
  %cmp515 = icmp eq ptr %248, null
  br i1 %cmp515, label %if.then517, label %if.else519

if.then517:                                       ; preds = %while.body
  %249 = load i32, ptr %i, align 4
  %inc518 = add nsw i32 %249, 1
  store i32 %inc518, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %if.end534

if.else519:                                       ; preds = %while.body
  %250 = load i32, ptr %i, align 4
  %idxprom520 = sext i32 %250 to i64
  %arrayidx521 = getelementptr inbounds [6 x ptr], ptr @languages, i64 0, i64 %idxprom520
  %251 = load ptr, ptr %arrayidx521, align 8
  %names522 = getelementptr inbounds %struct.lang_rec, ptr %251, i32 0, i32 0
  %252 = load i32, ptr %j, align 4
  %idxprom523 = sext i32 %252 to i64
  %arrayidx524 = getelementptr inbounds [10 x ptr], ptr %names522, i64 0, i64 %idxprom523
  %253 = load ptr, ptr %arrayidx524, align 8
  %254 = load ptr, ptr @language_option, align 8
  %call525 = call i32 @strcmp(ptr noundef %253, ptr noundef %254)
  %cmp526 = icmp eq i32 %call525, 0
  br i1 %cmp526, label %if.then528, label %if.else531

if.then528:                                       ; preds = %if.else519
  %255 = load i32, ptr %i, align 4
  %idxprom529 = sext i32 %255 to i64
  %arrayidx530 = getelementptr inbounds [6 x ptr], ptr @languages, i64 0, i64 %idxprom529
  %256 = load ptr, ptr %arrayidx530, align 8
  store ptr %256, ptr %lang, align 8
  br label %if.end533

if.else531:                                       ; preds = %if.else519
  %257 = load i32, ptr %j, align 4
  %inc532 = add nsw i32 %257, 1
  store i32 %inc532, ptr %j, align 4
  br label %if.end533

if.end533:                                        ; preds = %if.else531, %if.then528
  br label %if.end534

if.end534:                                        ; preds = %if.end533, %if.then517
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %land.end
  %258 = load ptr, ptr %lang, align 8
  %cmp535 = icmp eq ptr %258, null
  br i1 %cmp535, label %if.then537, label %if.end540

if.then537:                                       ; preds = %while.end
  %259 = load ptr, ptr @err_fp, align 8
  %call538 = call ptr @ErrorHeader()
  %260 = load ptr, ptr @language_option, align 8
  %call539 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef @.str.1253, ptr noundef %call538, ptr noundef %260)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end540:                                        ; preds = %while.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.then4
  %261 = load ptr, ptr @err_fp, align 8
  %call541 = call ptr @ErrorHeader()
  %262 = load ptr, ptr %argv.addr, align 8
  %263 = load i32, ptr %i, align 4
  %idxprom542 = sext i32 %263 to i64
  %arrayidx543 = getelementptr inbounds ptr, ptr %262, i64 %idxprom542
  %264 = load ptr, ptr %arrayidx543, align 8
  %call544 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef @.str.1254, ptr noundef %call541, ptr noundef %264)
  call void @exit(i32 noundef 1) #9
  unreachable

sw.epilog:                                        ; preds = %if.end540, %if.end454, %if.end448, %if.end425, %if.end389, %if.end326, %if.end297, %if.end261, %if.end225, %if.end189, %if.end138, %if.end100, %if.end55, %if.end12
  br label %if.end556

if.else545:                                       ; preds = %for.body
  %265 = load i32, ptr @raw_seen, align 4
  %tobool546 = icmp ne i32 %265, 0
  br i1 %tobool546, label %if.then547, label %if.end550

if.then547:                                       ; preds = %if.else545
  %266 = load ptr, ptr @err_fp, align 8
  %call548 = call ptr @ErrorHeader()
  %call549 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %266, ptr noundef @.str.1255, ptr noundef %call548)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end550:                                        ; preds = %if.else545
  %267 = load ptr, ptr %argv.addr, align 8
  %268 = load i32, ptr %arg_pos, align 4
  %idxprom551 = sext i32 %268 to i64
  %arrayidx552 = getelementptr inbounds ptr, ptr %267, i64 %idxprom551
  %269 = load ptr, ptr %arrayidx552, align 8
  %270 = load i32, ptr %file_count, align 4
  %inc553 = add nsw i32 %270, 1
  store i32 %inc553, ptr %file_count, align 4
  %idxprom554 = sext i32 %270 to i64
  %arrayidx555 = getelementptr inbounds [1024 x ptr], ptr %file_names, i64 0, i64 %idxprom554
  store ptr %269, ptr %arrayidx555, align 8
  br label %if.end556

if.end556:                                        ; preds = %if.end550, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end556
  %271 = load i32, ptr %arg_pos, align 4
  %inc557 = add nsw i32 %271, 1
  store i32 %inc557, ptr %arg_pos, align 4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %272 = load ptr, ptr %lang, align 8
  %cmp558 = icmp eq ptr %272, null
  br i1 %cmp558, label %if.then560, label %if.end563

if.then560:                                       ; preds = %for.end
  %273 = load ptr, ptr @err_fp, align 8
  %call561 = call ptr @ErrorHeader()
  %call562 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef @.str.1256, ptr noundef %call561)
  call void @exit(i32 noundef 0) #9
  unreachable

if.end563:                                        ; preds = %for.end
  %274 = load i32, ptr @raw_seen, align 4
  %tobool564 = icmp ne i32 %274, 0
  br i1 %tobool564, label %if.then565, label %if.else578

if.then565:                                       ; preds = %if.end563
  %275 = load ptr, ptr @in_fp, align 8
  %cmp566 = icmp eq ptr %275, null
  br i1 %cmp566, label %if.then568, label %if.end569

if.then568:                                       ; preds = %if.then565
  %276 = load ptr, ptr @__stdinp, align 8
  store ptr %276, ptr @in_fp, align 8
  br label %if.end569

if.end569:                                        ; preds = %if.then568, %if.then565
  %277 = load ptr, ptr @out_fp, align 8
  %cmp570 = icmp eq ptr %277, null
  br i1 %cmp570, label %if.then572, label %if.end575

if.then572:                                       ; preds = %if.end569
  %278 = load ptr, ptr @err_fp, align 8
  %call573 = call ptr @ErrorHeader()
  %call574 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %278, ptr noundef @.str.1257, ptr noundef %call573)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end575:                                        ; preds = %if.end569
  %279 = load ptr, ptr %lang, align 8
  call void @SetupLanguage(ptr noundef %279)
  store i32 1, ptr @line_pos, align 4
  %280 = load i32, ptr @line_pos, align 4
  %idxprom576 = sext i32 %280 to i64
  %arrayidx577 = getelementptr inbounds [1024 x i8], ptr @curr_line, i64 0, i64 %idxprom576
  store i8 10, ptr %arrayidx577, align 1
  store i32 0, ptr @line_num, align 4
  call void @NextChar()
  %281 = load ptr, ptr %lang, align 8
  call void @Process(ptr noundef %281, ptr noundef null, ptr noundef @.str.10)
  br label %if.end677

if.else578:                                       ; preds = %if.end563
  %282 = load i32, ptr %file_count, align 4
  %cmp579 = icmp sgt i32 %282, 0
  br i1 %cmp579, label %if.then581, label %if.end676

if.then581:                                       ; preds = %if.else578
  %283 = load ptr, ptr @out_fp, align 8
  %cmp582 = icmp eq ptr %283, null
  br i1 %cmp582, label %if.then584, label %if.end585

if.then584:                                       ; preds = %if.then581
  %284 = load ptr, ptr @__stdoutp, align 8
  store ptr %284, ptr @out_fp, align 8
  br label %if.end585

if.end585:                                        ; preds = %if.then584, %if.then581
  %285 = load ptr, ptr @out_fp, align 8
  %call586 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %285, ptr noundef @.str.1258, ptr noundef @.str.1259, ptr noundef @.str.1260)
  %286 = load ptr, ptr @setup_option, align 8
  %cmp587 = icmp ne ptr %286, null
  br i1 %cmp587, label %if.then589, label %if.else591

if.then589:                                       ; preds = %if.end585
  %287 = load ptr, ptr @out_fp, align 8
  %288 = load ptr, ptr @setup_option, align 8
  %call590 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef @.str.1261, ptr noundef @.str.1262, ptr noundef @.str.1263, ptr noundef %288)
  br label %if.end593

if.else591:                                       ; preds = %if.end585
  %289 = load ptr, ptr @out_fp, align 8
  %290 = load ptr, ptr %lang, align 8
  %setup_file = getelementptr inbounds %struct.lang_rec, ptr %290, i32 0, i32 1
  %291 = load ptr, ptr %setup_file, align 8
  %call592 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef @.str.1261, ptr noundef @.str.1259, ptr noundef @.str.1264, ptr noundef %291)
  br label %if.end593

if.end593:                                        ; preds = %if.else591, %if.then589
  %292 = load ptr, ptr @out_fp, align 8
  %call594 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef @.str.1265)
  %293 = load ptr, ptr @out_fp, align 8
  %call595 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %293, ptr noundef @.str.1266)
  %294 = load ptr, ptr @out_fp, align 8
  %call596 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %294, ptr noundef @.str.1267)
  %295 = load ptr, ptr @out_fp, align 8
  %call597 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str.1258, ptr noundef @.str.1268, ptr noundef @.str.1269)
  store i32 0, ptr %i, align 4
  br label %for.cond598

for.cond598:                                      ; preds = %for.inc672, %if.end593
  %296 = load i32, ptr %i, align 4
  %297 = load i32, ptr %file_count, align 4
  %cmp599 = icmp slt i32 %296, %297
  br i1 %cmp599, label %for.body601, label %for.end674

for.body601:                                      ; preds = %for.cond598
  %298 = load i32, ptr %i, align 4
  %idxprom602 = sext i32 %298 to i64
  %arrayidx603 = getelementptr inbounds [1024 x ptr], ptr %file_names, i64 0, i64 %idxprom602
  %299 = load ptr, ptr %arrayidx603, align 8
  %call604 = call ptr @"\01_fopen"(ptr noundef %299, ptr noundef @.str.65)
  store ptr %call604, ptr @in_fp, align 8
  %300 = load ptr, ptr @in_fp, align 8
  %cmp605 = icmp eq ptr %300, null
  br i1 %cmp605, label %if.then607, label %if.end612

if.then607:                                       ; preds = %for.body601
  %301 = load ptr, ptr @err_fp, align 8
  %call608 = call ptr @ErrorHeader()
  %302 = load i32, ptr %i, align 4
  %idxprom609 = sext i32 %302 to i64
  %arrayidx610 = getelementptr inbounds [1024 x ptr], ptr %file_names, i64 0, i64 %idxprom609
  %303 = load ptr, ptr %arrayidx610, align 8
  %call611 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef @.str.1270, ptr noundef %call608, ptr noundef %303)
  br label %for.inc672

if.end612:                                        ; preds = %for.body601
  %304 = load i32, ptr %i, align 4
  %idxprom613 = sext i32 %304 to i64
  %arrayidx614 = getelementptr inbounds [1024 x ptr], ptr %file_names, i64 0, i64 %idxprom613
  %305 = load ptr, ptr %arrayidx614, align 8
  %call615 = call ptr @strcpy(ptr noundef @file_name, ptr noundef %305)
  %306 = load i32, ptr %i, align 4
  %cmp616 = icmp sgt i32 %306, 0
  br i1 %cmp616, label %if.then618, label %if.end620

if.then618:                                       ; preds = %if.end612
  %307 = load ptr, ptr @out_fp, align 8
  %call619 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef @.str.1271)
  br label %if.end620

if.end620:                                        ; preds = %if.then618, %if.end612
  %308 = load i32, ptr @headers_option, align 4
  %tobool621 = icmp ne i32 %308, 0
  br i1 %tobool621, label %if.then622, label %if.end626

if.then622:                                       ; preds = %if.end620
  %309 = load ptr, ptr @out_fp, align 8
  %310 = load i32, ptr %i, align 4
  %idxprom623 = sext i32 %310 to i64
  %arrayidx624 = getelementptr inbounds [1024 x ptr], ptr %file_names, i64 0, i64 %idxprom623
  %311 = load ptr, ptr %arrayidx624, align 8
  %call625 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %309, ptr noundef @.str.1272, ptr noundef %311)
  br label %if.end626

if.end626:                                        ; preds = %if.then622, %if.end620
  %312 = load ptr, ptr @out_fp, align 8
  %313 = load ptr, ptr %lang, align 8
  %lang_sym = getelementptr inbounds %struct.lang_rec, ptr %313, i32 0, i32 2
  %314 = load ptr, ptr %lang_sym, align 8
  %call627 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef @.str.1248, ptr noundef %314)
  %315 = load ptr, ptr @style_option, align 8
  %cmp628 = icmp ne ptr %315, null
  br i1 %cmp628, label %if.then630, label %if.end632

if.then630:                                       ; preds = %if.end626
  %316 = load ptr, ptr @out_fp, align 8
  %317 = load ptr, ptr @style_option, align 8
  %call631 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef @.str.1273, ptr noundef %317)
  br label %if.end632

if.end632:                                        ; preds = %if.then630, %if.end626
  %318 = load ptr, ptr @font_option, align 8
  %cmp633 = icmp ne ptr %318, null
  br i1 %cmp633, label %if.then635, label %if.end637

if.then635:                                       ; preds = %if.end632
  %319 = load ptr, ptr @out_fp, align 8
  %320 = load ptr, ptr @font_option, align 8
  %call636 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %319, ptr noundef @.str.1274, ptr noundef %320)
  br label %if.end637

if.end637:                                        ; preds = %if.then635, %if.end632
  %321 = load ptr, ptr @size_option, align 8
  %cmp638 = icmp ne ptr %321, null
  br i1 %cmp638, label %if.then640, label %if.end642

if.then640:                                       ; preds = %if.end637
  %322 = load ptr, ptr @out_fp, align 8
  %323 = load ptr, ptr @size_option, align 8
  %call641 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %322, ptr noundef @.str.1275, ptr noundef %323)
  br label %if.end642

if.end642:                                        ; preds = %if.then640, %if.end637
  %324 = load ptr, ptr @line_option, align 8
  %cmp643 = icmp ne ptr %324, null
  br i1 %cmp643, label %if.then645, label %if.end647

if.then645:                                       ; preds = %if.end642
  %325 = load ptr, ptr @out_fp, align 8
  %326 = load ptr, ptr @line_option, align 8
  %call646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef @.str.1276, ptr noundef %326)
  br label %if.end647

if.end647:                                        ; preds = %if.then645, %if.end642
  %327 = load ptr, ptr @tabin_option, align 8
  %cmp648 = icmp ne ptr %327, null
  br i1 %cmp648, label %if.then650, label %if.end652

if.then650:                                       ; preds = %if.end647
  %328 = load ptr, ptr @out_fp, align 8
  %329 = load ptr, ptr @tabin_option, align 8
  %call651 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef @.str.1277, ptr noundef %329)
  br label %if.end652

if.end652:                                        ; preds = %if.then650, %if.end647
  %330 = load ptr, ptr @tabout_option, align 8
  %cmp653 = icmp ne ptr %330, null
  br i1 %cmp653, label %if.then655, label %if.end657

if.then655:                                       ; preds = %if.end652
  %331 = load ptr, ptr @out_fp, align 8
  %332 = load ptr, ptr @tabout_option, align 8
  %call656 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %331, ptr noundef @.str.1278, ptr noundef %332)
  br label %if.end657

if.end657:                                        ; preds = %if.then655, %if.end652
  %333 = load i32, ptr @print_lines, align 4
  %tobool658 = icmp ne i32 %333, 0
  br i1 %tobool658, label %if.then659, label %if.end661

if.then659:                                       ; preds = %if.end657
  %334 = load ptr, ptr @out_fp, align 8
  %335 = load i32, ptr @print_num, align 4
  %call660 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %334, ptr noundef @.str.1279, i32 noundef %335)
  br label %if.end661

if.end661:                                        ; preds = %if.then659, %if.end657
  %336 = load ptr, ptr @out_fp, align 8
  %call662 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %336, ptr noundef @.str.1258, ptr noundef @.str.1280, ptr noundef @.str.1269)
  br label %while.cond663

while.cond663:                                    ; preds = %while.body667, %if.end661
  %337 = load ptr, ptr @in_fp, align 8
  %call664 = call i32 @getc(ptr noundef %337)
  store i32 %call664, ptr %ch, align 4
  %cmp665 = icmp ne i32 %call664, -1
  br i1 %cmp665, label %while.body667, label %while.end669

while.body667:                                    ; preds = %while.cond663
  %338 = load i32, ptr %ch, align 4
  %339 = load ptr, ptr @out_fp, align 8
  %call668 = call i32 @putc(i32 noundef %338, ptr noundef %339)
  br label %while.cond663, !llvm.loop !37

while.end669:                                     ; preds = %while.cond663
  %340 = load ptr, ptr @out_fp, align 8
  %341 = load ptr, ptr %lang, align 8
  %lang_sym670 = getelementptr inbounds %struct.lang_rec, ptr %341, i32 0, i32 2
  %342 = load ptr, ptr %lang_sym670, align 8
  %call671 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %340, ptr noundef @.str.1281, ptr noundef @.str.1282, ptr noundef @.str.1283, ptr noundef %342)
  br label %for.inc672

for.inc672:                                       ; preds = %while.end669, %if.then607
  %343 = load i32, ptr %i, align 4
  %inc673 = add nsw i32 %343, 1
  store i32 %inc673, ptr %i, align 4
  br label %for.cond598, !llvm.loop !38

for.end674:                                       ; preds = %for.cond598
  %344 = load ptr, ptr @out_fp, align 8
  %call675 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef @.str.1284, ptr noundef @.str.1282, ptr noundef @.str.1285, ptr noundef @.str.1286)
  br label %if.end676

if.end676:                                        ; preds = %for.end674, %if.else578
  br label %if.end677

if.end677:                                        ; preds = %if.end676, %if.end575
  call void @exit(i32 noundef 0) #9
  unreachable
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @sscanf(ptr noundef, ptr noundef, ...) #1

declare i32 @getc(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { allocsize(0,1) }
attributes #8 = { cold noreturn }
attributes #9 = { noreturn }
attributes #10 = { allocsize(0) }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
