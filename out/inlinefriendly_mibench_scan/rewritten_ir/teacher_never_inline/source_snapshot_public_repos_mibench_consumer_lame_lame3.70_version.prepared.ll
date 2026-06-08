; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/version.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/version.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@.str = private unnamed_addr constant [39 x i8] c"LAME version %s (www.sulaco.org/mp3) \0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"GPSYCHO: GPL psycho-acoustic and noise shaping model version %s. \0A\00", align 1
@lpszVersion = internal global [80 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d.%02d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d:%02d\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @lame_print_version(ptr noundef %ofile) #0 {
entry:
  %ofile.addr = alloca ptr, align 8
  store ptr %ofile, ptr %ofile.addr, align 8
  %0 = load ptr, ptr %ofile.addr, align 8
  %call = call ptr @get_lame_version()
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, ptr noundef %call)
  %1 = load ptr, ptr %ofile.addr, align 8
  %call2 = call ptr @get_psy_version()
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef %call2)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define ptr @get_lame_version() #0 {
entry:
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @lpszVersion, i32 noundef 0, i64 noundef 80, ptr noundef @.str.2, i32 noundef 3, i32 noundef 70)
  ret ptr @lpszVersion
}

; Function Attrs: nounwind ssp uwtable
define ptr @get_psy_version() #0 {
entry:
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @lpszVersion, i32 noundef 0, i64 noundef 80, ptr noundef @.str.2, i32 noundef 0, i32 noundef 77)
  ret ptr @lpszVersion
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define ptr @get_mp3x_version() #0 {
entry:
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @lpszVersion, i32 noundef 0, i64 noundef 80, ptr noundef @.str.3, i32 noundef 0, i32 noundef 82)
  ret ptr @lpszVersion
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
