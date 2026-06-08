; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_hot_leaf/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_timestatus.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/timestatus.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.ts_times = type { float, float, float, float }

@ts_real_time.initial_time = internal global i64 0, align 8
@ts_process_time.initial_time = internal global i64 0, align 8
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [75 x i8] c"    Frame          |  CPU/estimated  |  time/estimated | play/CPU |   ETA\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"\0D%6ld/%6ld(%3d%%)|%2d:%02d:%02d/%2d:%02d:%02d|%2d:%02d:%02d/%2d:%02d:%02d|%10.4f|%2d:%02d:%02d \00", align 1

; Function Attrs: nounwind ssp uwtable
define float @ts_real_time(i64 noundef %frame) #0 {
entry:
  %current_time = alloca i64, align 8
  %call = call i64 @time(ptr noundef nonnull %current_time) #3
  %cmp = icmp eq i64 %frame, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %current_time, align 8
  store i64 %0, ptr @ts_real_time.initial_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %current_time, align 8
  %2 = load i64, ptr @ts_real_time.initial_time, align 8
  %call1 = call double @difftime(i64 noundef %1, i64 noundef %2) #3
  %conv = fptrunc double %call1 to float
  ret float %conv
}

declare i64 @time(ptr noundef) #1

declare double @difftime(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define float @ts_process_time(i64 noundef %frame) #0 {
entry:
  %current_time = alloca i64, align 8
  %call = call i64 @"\01_clock"() #3
  store i64 %call, ptr %current_time, align 8
  %cmp = icmp eq i64 %frame, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %current_time, align 8
  store i64 %0, ptr @ts_process_time.initial_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %current_time, align 8
  %2 = load i64, ptr @ts_process_time.initial_time, align 8
  %sub = sub i64 %1, %2
  %conv = uitofp i64 %sub to float
  %div = fdiv float %conv, 1.000000e+06
  ret float %div
}

declare i64 @"\01_clock"() #1

; Function Attrs: nounwind ssp uwtable
define void @ts_calc_times(ptr noundef %time, i32 noundef %samp_rate, i64 noundef %frame, i64 noundef %frames, i32 noundef %framesize) #0 {
entry:
  %time.addr = alloca ptr, align 8
  %samp_rate.addr = alloca i32, align 4
  %frame.addr = alloca i64, align 8
  %frames.addr = alloca i64, align 8
  %framesize.addr = alloca i32, align 4
  store ptr %time, ptr %time.addr, align 8
  store i32 %samp_rate, ptr %samp_rate.addr, align 4
  store i64 %frame, ptr %frame.addr, align 8
  store i64 %frames, ptr %frames.addr, align 8
  store i32 %framesize, ptr %framesize.addr, align 4
  %cmp = icmp sgt i64 %frame, 0
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %time.addr, align 8
  %1 = load float, ptr %0, align 4
  %2 = load i64, ptr %frames.addr, align 8
  %conv = sitofp i64 %2 to float
  %mul = fmul float %1, %conv
  %3 = load i64, ptr %frame.addr, align 8
  %conv1 = sitofp i64 %3 to float
  %div = fdiv float %mul, %conv1
  %4 = load ptr, ptr %time.addr, align 8
  %estimated = getelementptr inbounds %struct.ts_times, ptr %4, i64 0, i32 1
  store float %div, ptr %estimated, align 4
  %5 = load i32, ptr %samp_rate.addr, align 4
  %conv2 = sitofp i32 %5 to float
  %mul4 = fmul float %div, %conv2
  %cmp5 = fcmp ogt float %mul4, 0.000000e+00
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %6 = load i64, ptr %frames.addr, align 8
  %7 = load i32, ptr %framesize.addr, align 4
  %conv8 = sext i32 %7 to i64
  %mul9 = mul nsw i64 %6, %conv8
  %conv10 = sitofp i64 %mul9 to float
  %8 = load i32, ptr %samp_rate.addr, align 4
  %conv11 = sitofp i32 %8 to float
  %9 = load ptr, ptr %time.addr, align 8
  %estimated12 = getelementptr inbounds %struct.ts_times, ptr %9, i64 0, i32 1
  %10 = load float, ptr %estimated12, align 4
  %mul13 = fmul float %10, %conv11
  %div14 = fdiv float %conv10, %mul13
  %speed = getelementptr inbounds %struct.ts_times, ptr %9, i64 0, i32 2
  store float %div14, ptr %speed, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %time.addr, align 8
  %speed15 = getelementptr inbounds %struct.ts_times, ptr %11, i64 0, i32 2
  store float 0.000000e+00, ptr %speed15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %12 = load ptr, ptr %time.addr, align 8
  %estimated16 = getelementptr inbounds %struct.ts_times, ptr %12, i64 0, i32 1
  %13 = load float, ptr %estimated16, align 4
  %14 = load float, ptr %12, align 4
  %sub = fsub float %13, %14
  %eta = getelementptr inbounds %struct.ts_times, ptr %12, i64 0, i32 3
  store float %sub, ptr %eta, align 4
  br label %if.end22

if.else18:                                        ; preds = %entry
  %15 = load ptr, ptr %time.addr, align 8
  %estimated19 = getelementptr inbounds %struct.ts_times, ptr %15, i64 0, i32 1
  store float 0.000000e+00, ptr %estimated19, align 4
  %speed20 = getelementptr inbounds %struct.ts_times, ptr %15, i64 0, i32 2
  store float 0.000000e+00, ptr %speed20, align 4
  %eta21 = getelementptr inbounds %struct.ts_times, ptr %15, i64 0, i32 3
  store float 0.000000e+00, ptr %eta21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @timestatus(i32 noundef %samp_rate, i64 noundef %frameNum, i64 noundef %totalframes, i32 noundef %framesize) #0 {
entry:
  %samp_rate.addr = alloca i32, align 4
  %frameNum.addr = alloca i64, align 8
  %totalframes.addr = alloca i64, align 8
  %framesize.addr = alloca i32, align 4
  %real_time = alloca %struct.ts_times, align 4
  %process_time = alloca %struct.ts_times, align 4
  store i32 %samp_rate, ptr %samp_rate.addr, align 4
  store i64 %frameNum, ptr %frameNum.addr, align 8
  store i64 %totalframes, ptr %totalframes.addr, align 8
  store i32 %framesize, ptr %framesize.addr, align 4
  %call = call float @ts_real_time(i64 noundef %frameNum)
  store float %call, ptr %real_time, align 4
  %call1 = call float @ts_process_time(i64 noundef %frameNum)
  store float %call1, ptr %process_time, align 4
  %0 = load i64, ptr %frameNum.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = call i64 @fwrite(ptr nonnull @.str, i64 74, i64 1, ptr %1)
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %samp_rate.addr, align 4
  %4 = load i64, ptr %frameNum.addr, align 8
  %5 = load i64, ptr %totalframes.addr, align 8
  %6 = load i32, ptr %framesize.addr, align 4
  call void @ts_calc_times(ptr noundef nonnull %real_time, i32 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6)
  call void @ts_calc_times(ptr noundef nonnull %process_time, i32 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6)
  %cmp4 = icmp sgt i64 %5, 1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %7 = load i64, ptr %frameNum.addr, align 8
  %conv = sitofp i64 %7 to double
  %mul = fmul double %conv, 1.000000e+02
  %8 = load i64, ptr %totalframes.addr, align 8
  %sub = add nsw i64 %8, -1
  %conv6 = sitofp i64 %sub to double
  %div = fdiv double %mul, %conv6
  %conv7 = fptosi double %div to i32
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then5
  %storemerge = phi i32 [ %conv7, %if.then5 ], [ 100, %if.end ]
  %9 = load ptr, ptr @__stderrp, align 8
  %10 = load i64, ptr %frameNum.addr, align 8
  %11 = load i64, ptr %totalframes.addr, align 8
  %sub9 = add nsw i64 %11, -1
  %12 = load float, ptr %process_time, align 4
  %conv11 = fpext float %12 to double
  %add = fadd double %conv11, 5.000000e-01
  %conv12 = fptosi double %add to i64
  %div13 = sdiv i64 %conv12, 3600
  %conv14 = trunc i64 %div13 to i32
  %conv16 = fpext float %12 to double
  %add17 = fadd double %conv16, 5.000000e-01
  %div18 = fdiv double %add17, 6.000000e+01
  %conv19 = fptosi double %div18 to i64
  %rem = srem i64 %conv19, 60
  %conv20 = trunc i64 %rem to i32
  %13 = load float, ptr %process_time, align 4
  %conv22 = fpext float %13 to double
  %add23 = fadd double %conv22, 5.000000e-01
  %conv24 = fptosi double %add23 to i64
  %rem25 = srem i64 %conv24, 60
  %conv26 = trunc i64 %rem25 to i32
  %estimated = getelementptr inbounds %struct.ts_times, ptr %process_time, i64 0, i32 1
  %14 = load float, ptr %estimated, align 4
  %conv27 = fpext float %14 to double
  %add28 = fadd double %conv27, 5.000000e-01
  %conv29 = fptosi double %add28 to i64
  %div30 = sdiv i64 %conv29, 3600
  %conv31 = trunc i64 %div30 to i32
  %estimated32 = getelementptr inbounds %struct.ts_times, ptr %process_time, i64 0, i32 1
  %15 = load float, ptr %estimated32, align 4
  %conv33 = fpext float %15 to double
  %add34 = fadd double %conv33, 5.000000e-01
  %div35 = fdiv double %add34, 6.000000e+01
  %conv36 = fptosi double %div35 to i64
  %rem37 = srem i64 %conv36, 60
  %conv38 = trunc i64 %rem37 to i32
  %estimated39 = getelementptr inbounds %struct.ts_times, ptr %process_time, i64 0, i32 1
  %16 = load float, ptr %estimated39, align 4
  %conv40 = fpext float %16 to double
  %add41 = fadd double %conv40, 5.000000e-01
  %conv42 = fptosi double %add41 to i64
  %rem43 = srem i64 %conv42, 60
  %conv44 = trunc i64 %rem43 to i32
  %17 = load float, ptr %real_time, align 4
  %conv46 = fpext float %17 to double
  %add47 = fadd double %conv46, 5.000000e-01
  %conv48 = fptosi double %add47 to i64
  %div49 = sdiv i64 %conv48, 3600
  %conv50 = trunc i64 %div49 to i32
  %conv52 = fpext float %17 to double
  %add53 = fadd double %conv52, 5.000000e-01
  %div54 = fdiv double %add53, 6.000000e+01
  %conv55 = fptosi double %div54 to i64
  %rem56 = srem i64 %conv55, 60
  %conv57 = trunc i64 %rem56 to i32
  %18 = load float, ptr %real_time, align 4
  %conv59 = fpext float %18 to double
  %add60 = fadd double %conv59, 5.000000e-01
  %conv61 = fptosi double %add60 to i64
  %rem62 = srem i64 %conv61, 60
  %conv63 = trunc i64 %rem62 to i32
  %estimated64 = getelementptr inbounds %struct.ts_times, ptr %real_time, i64 0, i32 1
  %19 = load float, ptr %estimated64, align 4
  %conv65 = fpext float %19 to double
  %add66 = fadd double %conv65, 5.000000e-01
  %conv67 = fptosi double %add66 to i64
  %div68 = sdiv i64 %conv67, 3600
  %conv69 = trunc i64 %div68 to i32
  %estimated70 = getelementptr inbounds %struct.ts_times, ptr %real_time, i64 0, i32 1
  %20 = load float, ptr %estimated70, align 4
  %conv71 = fpext float %20 to double
  %add72 = fadd double %conv71, 5.000000e-01
  %div73 = fdiv double %add72, 6.000000e+01
  %conv74 = fptosi double %div73 to i64
  %rem75 = srem i64 %conv74, 60
  %conv76 = trunc i64 %rem75 to i32
  %estimated77 = getelementptr inbounds %struct.ts_times, ptr %real_time, i64 0, i32 1
  %21 = load float, ptr %estimated77, align 4
  %conv78 = fpext float %21 to double
  %add79 = fadd double %conv78, 5.000000e-01
  %conv80 = fptosi double %add79 to i64
  %rem81 = srem i64 %conv80, 60
  %conv82 = trunc i64 %rem81 to i32
  %speed = getelementptr inbounds %struct.ts_times, ptr %process_time, i64 0, i32 2
  %22 = load float, ptr %speed, align 4
  %conv83 = fpext float %22 to double
  %eta = getelementptr inbounds %struct.ts_times, ptr %real_time, i64 0, i32 3
  %23 = load float, ptr %eta, align 4
  %conv84 = fpext float %23 to double
  %add85 = fadd double %conv84, 5.000000e-01
  %conv86 = fptosi double %add85 to i64
  %div87 = sdiv i64 %conv86, 3600
  %conv88 = trunc i64 %div87 to i32
  %eta89 = getelementptr inbounds %struct.ts_times, ptr %real_time, i64 0, i32 3
  %24 = load float, ptr %eta89, align 4
  %conv90 = fpext float %24 to double
  %add91 = fadd double %conv90, 5.000000e-01
  %div92 = fdiv double %add91, 6.000000e+01
  %conv93 = fptosi double %div92 to i64
  %rem94 = srem i64 %conv93, 60
  %conv95 = trunc i64 %rem94 to i32
  %eta96 = getelementptr inbounds %struct.ts_times, ptr %real_time, i64 0, i32 3
  %25 = load float, ptr %eta96, align 4
  %conv97 = fpext float %25 to double
  %add98 = fadd double %conv97, 5.000000e-01
  %conv99 = fptosi double %add98 to i64
  %rem100 = srem i64 %conv99, 60
  %conv101 = trunc i64 %rem100 to i32
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.1, i64 noundef %10, i64 noundef %sub9, i32 noundef %storemerge, i32 noundef %conv14, i32 noundef %conv20, i32 noundef %conv26, i32 noundef %conv31, i32 noundef %conv38, i32 noundef %conv44, i32 noundef %conv50, i32 noundef %conv57, i32 noundef %conv63, i32 noundef %conv69, i32 noundef %conv76, i32 noundef %conv82, double noundef %conv83, i32 noundef %conv88, i32 noundef %conv95, i32 noundef %conv101) #3
  %26 = load ptr, ptr @__stderrp, align 8
  %call103 = call i32 @fflush(ptr noundef %26) #3
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
