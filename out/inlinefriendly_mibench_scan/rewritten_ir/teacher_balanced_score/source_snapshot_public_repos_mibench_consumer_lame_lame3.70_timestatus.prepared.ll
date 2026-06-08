; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/timestatus.c'
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
  %frame.addr = alloca i64, align 8
  %current_time = alloca i64, align 8
  store i64 %frame, ptr %frame.addr, align 8
  %call = call i64 @time(ptr noundef %current_time)
  %0 = load i64, ptr %frame.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %current_time, align 8
  store i64 %1, ptr @ts_real_time.initial_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %current_time, align 8
  %3 = load i64, ptr @ts_real_time.initial_time, align 8
  %call1 = call double @difftime(i64 noundef %2, i64 noundef %3)
  %conv = fptrunc double %call1 to float
  ret float %conv
}

declare i64 @time(ptr noundef) #1

declare double @difftime(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define float @ts_process_time(i64 noundef %frame) #0 {
entry:
  %frame.addr = alloca i64, align 8
  %current_time = alloca i64, align 8
  store i64 %frame, ptr %frame.addr, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %current_time, align 8
  %0 = load i64, ptr %frame.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %current_time, align 8
  store i64 %1, ptr @ts_process_time.initial_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %current_time, align 8
  %3 = load i64, ptr @ts_process_time.initial_time, align 8
  %sub = sub i64 %2, %3
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
  %0 = load i64, ptr %frame.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %time.addr, align 8
  %so_far = getelementptr inbounds %struct.ts_times, ptr %1, i32 0, i32 0
  %2 = load float, ptr %so_far, align 4
  %3 = load i64, ptr %frames.addr, align 8
  %conv = sitofp i64 %3 to float
  %mul = fmul float %2, %conv
  %4 = load i64, ptr %frame.addr, align 8
  %conv1 = sitofp i64 %4 to float
  %div = fdiv float %mul, %conv1
  %5 = load ptr, ptr %time.addr, align 8
  %estimated = getelementptr inbounds %struct.ts_times, ptr %5, i32 0, i32 1
  store float %div, ptr %estimated, align 4
  %6 = load i32, ptr %samp_rate.addr, align 4
  %conv2 = sitofp i32 %6 to float
  %7 = load ptr, ptr %time.addr, align 8
  %estimated3 = getelementptr inbounds %struct.ts_times, ptr %7, i32 0, i32 1
  %8 = load float, ptr %estimated3, align 4
  %mul4 = fmul float %conv2, %8
  %cmp5 = fcmp ogt float %mul4, 0.000000e+00
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %9 = load i64, ptr %frames.addr, align 8
  %10 = load i32, ptr %framesize.addr, align 4
  %conv8 = sext i32 %10 to i64
  %mul9 = mul nsw i64 %9, %conv8
  %conv10 = sitofp i64 %mul9 to float
  %11 = load i32, ptr %samp_rate.addr, align 4
  %conv11 = sitofp i32 %11 to float
  %12 = load ptr, ptr %time.addr, align 8
  %estimated12 = getelementptr inbounds %struct.ts_times, ptr %12, i32 0, i32 1
  %13 = load float, ptr %estimated12, align 4
  %mul13 = fmul float %conv11, %13
  %div14 = fdiv float %conv10, %mul13
  %14 = load ptr, ptr %time.addr, align 8
  %speed = getelementptr inbounds %struct.ts_times, ptr %14, i32 0, i32 2
  store float %div14, ptr %speed, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %time.addr, align 8
  %speed15 = getelementptr inbounds %struct.ts_times, ptr %15, i32 0, i32 2
  store float 0.000000e+00, ptr %speed15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %16 = load ptr, ptr %time.addr, align 8
  %estimated16 = getelementptr inbounds %struct.ts_times, ptr %16, i32 0, i32 1
  %17 = load float, ptr %estimated16, align 4
  %18 = load ptr, ptr %time.addr, align 8
  %so_far17 = getelementptr inbounds %struct.ts_times, ptr %18, i32 0, i32 0
  %19 = load float, ptr %so_far17, align 4
  %sub = fsub float %17, %19
  %20 = load ptr, ptr %time.addr, align 8
  %eta = getelementptr inbounds %struct.ts_times, ptr %20, i32 0, i32 3
  store float %sub, ptr %eta, align 4
  br label %if.end22

if.else18:                                        ; preds = %entry
  %21 = load ptr, ptr %time.addr, align 8
  %estimated19 = getelementptr inbounds %struct.ts_times, ptr %21, i32 0, i32 1
  store float 0.000000e+00, ptr %estimated19, align 4
  %22 = load ptr, ptr %time.addr, align 8
  %speed20 = getelementptr inbounds %struct.ts_times, ptr %22, i32 0, i32 2
  store float 0.000000e+00, ptr %speed20, align 4
  %23 = load ptr, ptr %time.addr, align 8
  %eta21 = getelementptr inbounds %struct.ts_times, ptr %23, i32 0, i32 3
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
  %percent = alloca i32, align 4
  store i32 %samp_rate, ptr %samp_rate.addr, align 4
  store i64 %frameNum, ptr %frameNum.addr, align 8
  store i64 %totalframes, ptr %totalframes.addr, align 8
  store i32 %framesize, ptr %framesize.addr, align 4
  %0 = load i64, ptr %frameNum.addr, align 8
  %call = call float @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_timestatus_0(i64 noundef %0)
  %so_far = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 0
  store float %call, ptr %so_far, align 4
  %1 = load i64, ptr %frameNum.addr, align 8
  %call1 = call float @ts_process_time(i64 noundef %1)
  %so_far2 = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 0
  store float %call1, ptr %so_far2, align 4
  %2 = load i64, ptr %frameNum.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %samp_rate.addr, align 4
  %5 = load i64, ptr %frameNum.addr, align 8
  %6 = load i64, ptr %totalframes.addr, align 8
  %7 = load i32, ptr %framesize.addr, align 4
  call void @ts_calc_times(ptr noundef %real_time, i32 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7)
  %8 = load i32, ptr %samp_rate.addr, align 4
  %9 = load i64, ptr %frameNum.addr, align 8
  %10 = load i64, ptr %totalframes.addr, align 8
  %11 = load i32, ptr %framesize.addr, align 4
  call void @ts_calc_times(ptr noundef %process_time, i32 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11)
  %12 = load i64, ptr %totalframes.addr, align 8
  %cmp4 = icmp sgt i64 %12, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %13 = load i64, ptr %frameNum.addr, align 8
  %conv = sitofp i64 %13 to double
  %mul = fmul double 1.000000e+02, %conv
  %14 = load i64, ptr %totalframes.addr, align 8
  %sub = sub nsw i64 %14, 1
  %conv6 = sitofp i64 %sub to double
  %div = fdiv double %mul, %conv6
  %conv7 = fptosi double %div to i32
  store i32 %conv7, ptr %percent, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  store i32 100, ptr %percent, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load i64, ptr %frameNum.addr, align 8
  %17 = load i64, ptr %totalframes.addr, align 8
  %sub9 = sub nsw i64 %17, 1
  %18 = load i32, ptr %percent, align 4
  %so_far10 = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 0
  %19 = load float, ptr %so_far10, align 4
  %conv11 = fpext float %19 to double
  %add = fadd double %conv11, 5.000000e-01
  %conv12 = fptosi double %add to i64
  %div13 = sdiv i64 %conv12, 3600
  %conv14 = trunc i64 %div13 to i32
  %so_far15 = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 0
  %20 = load float, ptr %so_far15, align 4
  %conv16 = fpext float %20 to double
  %add17 = fadd double %conv16, 5.000000e-01
  %div18 = fdiv double %add17, 6.000000e+01
  %conv19 = fptosi double %div18 to i64
  %rem = srem i64 %conv19, 60
  %conv20 = trunc i64 %rem to i32
  %so_far21 = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 0
  %21 = load float, ptr %so_far21, align 4
  %conv22 = fpext float %21 to double
  %add23 = fadd double %conv22, 5.000000e-01
  %conv24 = fptosi double %add23 to i64
  %rem25 = srem i64 %conv24, 60
  %conv26 = trunc i64 %rem25 to i32
  %estimated = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 1
  %22 = load float, ptr %estimated, align 4
  %conv27 = fpext float %22 to double
  %add28 = fadd double %conv27, 5.000000e-01
  %conv29 = fptosi double %add28 to i64
  %div30 = sdiv i64 %conv29, 3600
  %conv31 = trunc i64 %div30 to i32
  %estimated32 = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 1
  %23 = load float, ptr %estimated32, align 4
  %conv33 = fpext float %23 to double
  %add34 = fadd double %conv33, 5.000000e-01
  %div35 = fdiv double %add34, 6.000000e+01
  %conv36 = fptosi double %div35 to i64
  %rem37 = srem i64 %conv36, 60
  %conv38 = trunc i64 %rem37 to i32
  %estimated39 = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 1
  %24 = load float, ptr %estimated39, align 4
  %conv40 = fpext float %24 to double
  %add41 = fadd double %conv40, 5.000000e-01
  %conv42 = fptosi double %add41 to i64
  %rem43 = srem i64 %conv42, 60
  %conv44 = trunc i64 %rem43 to i32
  %so_far45 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 0
  %25 = load float, ptr %so_far45, align 4
  %conv46 = fpext float %25 to double
  %add47 = fadd double %conv46, 5.000000e-01
  %conv48 = fptosi double %add47 to i64
  %div49 = sdiv i64 %conv48, 3600
  %conv50 = trunc i64 %div49 to i32
  %so_far51 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 0
  %26 = load float, ptr %so_far51, align 4
  %conv52 = fpext float %26 to double
  %add53 = fadd double %conv52, 5.000000e-01
  %div54 = fdiv double %add53, 6.000000e+01
  %conv55 = fptosi double %div54 to i64
  %rem56 = srem i64 %conv55, 60
  %conv57 = trunc i64 %rem56 to i32
  %so_far58 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 0
  %27 = load float, ptr %so_far58, align 4
  %conv59 = fpext float %27 to double
  %add60 = fadd double %conv59, 5.000000e-01
  %conv61 = fptosi double %add60 to i64
  %rem62 = srem i64 %conv61, 60
  %conv63 = trunc i64 %rem62 to i32
  %estimated64 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 1
  %28 = load float, ptr %estimated64, align 4
  %conv65 = fpext float %28 to double
  %add66 = fadd double %conv65, 5.000000e-01
  %conv67 = fptosi double %add66 to i64
  %div68 = sdiv i64 %conv67, 3600
  %conv69 = trunc i64 %div68 to i32
  %estimated70 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 1
  %29 = load float, ptr %estimated70, align 4
  %conv71 = fpext float %29 to double
  %add72 = fadd double %conv71, 5.000000e-01
  %div73 = fdiv double %add72, 6.000000e+01
  %conv74 = fptosi double %div73 to i64
  %rem75 = srem i64 %conv74, 60
  %conv76 = trunc i64 %rem75 to i32
  %estimated77 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 1
  %30 = load float, ptr %estimated77, align 4
  %conv78 = fpext float %30 to double
  %add79 = fadd double %conv78, 5.000000e-01
  %conv80 = fptosi double %add79 to i64
  %rem81 = srem i64 %conv80, 60
  %conv82 = trunc i64 %rem81 to i32
  %speed = getelementptr inbounds %struct.ts_times, ptr %process_time, i32 0, i32 2
  %31 = load float, ptr %speed, align 4
  %conv83 = fpext float %31 to double
  %eta = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 3
  %32 = load float, ptr %eta, align 4
  %conv84 = fpext float %32 to double
  %add85 = fadd double %conv84, 5.000000e-01
  %conv86 = fptosi double %add85 to i64
  %div87 = sdiv i64 %conv86, 3600
  %conv88 = trunc i64 %div87 to i32
  %eta89 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 3
  %33 = load float, ptr %eta89, align 4
  %conv90 = fpext float %33 to double
  %add91 = fadd double %conv90, 5.000000e-01
  %div92 = fdiv double %add91, 6.000000e+01
  %conv93 = fptosi double %div92 to i64
  %rem94 = srem i64 %conv93, 60
  %conv95 = trunc i64 %rem94 to i32
  %eta96 = getelementptr inbounds %struct.ts_times, ptr %real_time, i32 0, i32 3
  %34 = load float, ptr %eta96, align 4
  %conv97 = fpext float %34 to double
  %add98 = fadd double %conv97, 5.000000e-01
  %conv99 = fptosi double %add98 to i64
  %rem100 = srem i64 %conv99, 60
  %conv101 = trunc i64 %rem100 to i32
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.1, i64 noundef %16, i64 noundef %sub9, i32 noundef %18, i32 noundef %conv14, i32 noundef %conv20, i32 noundef %conv26, i32 noundef %conv31, i32 noundef %conv38, i32 noundef %conv44, i32 noundef %conv50, i32 noundef %conv57, i32 noundef %conv63, i32 noundef %conv69, i32 noundef %conv76, i32 noundef %conv82, double noundef %conv83, i32 noundef %conv88, i32 noundef %conv95, i32 noundef %conv101)
  %35 = load ptr, ptr @__stderrp, align 8
  %call103 = call i32 @fflush(ptr noundef %35)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define float @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_timestatus_0(i64 noundef %frame)  alwaysinline#0 {
entry:
  %frame.addr = alloca i64, align 8
  %current_time = alloca i64, align 8
  store i64 %frame, ptr %frame.addr, align 8
  %call = call i64 @time(ptr noundef %current_time)
  %0 = load i64, ptr %frame.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %current_time, align 8
  store i64 %1, ptr @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_timestatus_0.initial_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %current_time, align 8
  %3 = load i64, ptr @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_timestatus_0.initial_time, align 8
  %call1 = call double @difftime(i64 noundef %2, i64 noundef %3)
  %conv = fptrunc double %call1 to float
  ret float %conv
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
