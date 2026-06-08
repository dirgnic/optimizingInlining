; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-adpcm-c/rawcaudio.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-adpcm-c/rawcaudio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.adpcm_state = type { i16, i8 }

@.str = private unnamed_addr constant [15 x i8] c"CT_REPEAT_MAIN\00", align 1
@state = global %struct.adpcm_state zeroinitializer, align 2
@sbuf = global [1000 x i16] zeroinitializer, align 2
@.str.1 = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = global [500 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ct_repeat = alloca i64, align 8
  %ct_repeat_max = alloca i64, align 8
  %ct_return = alloca i32, align 4
  %n = alloca i32, align 4
  %current_state = alloca %struct.adpcm_state, align 2
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %ct_repeat, align 8
  store i64 1, ptr %ct_repeat_max, align 8
  store i32 0, ptr %ct_return, align 4
  %call = call ptr @getenv(ptr noundef @.str)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @getenv(ptr noundef @.str)
  %call2 = call i64 @atol(ptr noundef %call1)
  store i64 %call2, ptr %ct_repeat_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.body

while.body:                                       ; preds = %if.end, %for.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %current_state, ptr align 2 @state, i64 4, i1 false)
  %call3 = call i32 @read(i32 noundef 0, ptr noundef @sbuf, i32 noundef 2000)
  store i32 %call3, ptr %n, align 4
  %0 = load i32, ptr %n, align 4
  %cmp4 = icmp slt i32 %0, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  call void @perror(ptr noundef @.str.1) #5
  call void @exit(i32 noundef 1) #6
  unreachable

if.end6:                                          ; preds = %while.body
  %1 = load i32, ptr %n, align 4
  %cmp7 = icmp eq i32 %1, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  br label %while.end

if.end9:                                          ; preds = %if.end6
  store i64 0, ptr %ct_repeat, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %2 = load i64, ptr %ct_repeat, align 8
  %3 = load i64, ptr %ct_repeat_max, align 8
  %cmp10 = icmp slt i64 %2, %3
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 @state, ptr align 2 %current_state, i64 4, i1 false)
  %4 = load i32, ptr %n, align 4
  %div = sdiv i32 %4, 2
  call void @adpcm_coder(ptr noundef @sbuf, ptr noundef @abuf, i32 noundef %div, ptr noundef @state)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %ct_repeat, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, ptr %ct_repeat, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %n, align 4
  %div11 = sdiv i32 %6, 4
  %call12 = call i32 @write(i32 noundef 1, ptr noundef @abuf, i32 noundef %div11)
  br label %while.body

while.end:                                        ; preds = %if.then8
  ret i32 0
}

declare ptr @getenv(ptr noundef) #1

declare i64 @atol(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @read(...) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

declare void @adpcm_coder(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @write(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { cold }
attributes #6 = { noreturn }

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
