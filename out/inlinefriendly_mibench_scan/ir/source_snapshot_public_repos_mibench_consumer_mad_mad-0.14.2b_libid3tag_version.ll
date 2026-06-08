; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/version.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/version.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@id3_version = constant [30 x i8] c"ID3 Tag Library 0.14.2 (beta)\00", align 1
@id3_copyright = constant [38 x i8] c"Copyright (C) 2000-2001 Robert Leslie\00", align 1
@id3_author = constant [29 x i8] c"Robert Leslie <rob@mars.org>\00", align 1
@id3_build = constant [1 x i8] zeroinitializer, align 1

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
