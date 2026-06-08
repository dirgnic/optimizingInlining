; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/reservoir.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/reservoir.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }

@ResvSize = internal global i32 0, align 4
@__func__.ResvFrameBegin = private unnamed_addr constant [15 x i8] c"ResvFrameBegin\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"reservoir.c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"(l3_side->main_data_begin * 8) == ResvSize\00", align 1
@ResvMax = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @ResvFrameBegin(ptr noundef %gfp, ptr noundef %l3_side, i32 noundef %mean_bits, i32 noundef %frameLength) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %mean_bits.addr = alloca i32, align 4
  %frameLength.addr = alloca i32, align 4
  %fullFrameBits = alloca i32, align 4
  %resvLimit = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store i32 %mean_bits, ptr %mean_bits.addr, align 4
  store i32 %frameLength, ptr %frameLength.addr, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 39
  %1 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr @ResvSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %2, i32 0, i32 43
  %3 = load i32, ptr %version, align 8
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 4088, ptr %resvLimit, align 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i32 2040, ptr %resvLimit, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %4 = load ptr, ptr %l3_side.addr, align 8
  %main_data_begin = getelementptr inbounds %struct.III_side_info_t, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %main_data_begin, align 8
  %mul = mul nsw i32 %5, 8
  %6 = load i32, ptr @ResvSize, align 4
  %cmp4 = icmp eq i32 %mul, %6
  %lnot = xor i1 %cmp4, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  call void @__assert_rtn(ptr noundef @__func__.ResvFrameBegin, ptr noundef @.str, i32 noundef 68, ptr noundef @.str.1) #2
  unreachable

7:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %7
  %8 = load i32, ptr %mean_bits.addr, align 4
  %9 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 45
  %10 = load i32, ptr %mode_gr, align 8
  %mul5 = mul nsw i32 %8, %10
  %11 = load i32, ptr @ResvSize, align 4
  %add = add nsw i32 %mul5, %11
  store i32 %add, ptr %fullFrameBits, align 4
  %12 = load i32, ptr %frameLength.addr, align 4
  %cmp6 = icmp sgt i32 %12, 7680
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %cond.end
  store i32 0, ptr @ResvMax, align 4
  br label %if.end10

if.else9:                                         ; preds = %cond.end
  %13 = load i32, ptr %frameLength.addr, align 4
  %sub = sub nsw i32 7680, %13
  store i32 %sub, ptr @ResvMax, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then8
  %14 = load ptr, ptr %gfp.addr, align 8
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %14, i32 0, i32 17
  %15 = load i32, ptr %disable_reservoir, align 8
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 0, ptr @ResvMax, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10
  %16 = load i32, ptr @ResvMax, align 4
  %17 = load i32, ptr %resvLimit, align 4
  %cmp14 = icmp sgt i32 %16, %17
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %18 = load i32, ptr %resvLimit, align 4
  store i32 %18, ptr @ResvMax, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %19 = load i32, ptr %fullFrameBits, align 4
  ret i32 %19
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ResvMaxBits(i32 noundef %mean_bits, ptr noundef %targ_bits, ptr noundef %extra_bits, i32 noundef %gr) #0 {
entry:
  %mean_bits.addr = alloca i32, align 4
  %targ_bits.addr = alloca ptr, align 8
  %extra_bits.addr = alloca ptr, align 8
  %gr.addr = alloca i32, align 4
  %add_bits = alloca i32, align 4
  store i32 %mean_bits, ptr %mean_bits.addr, align 4
  store ptr %targ_bits, ptr %targ_bits.addr, align 8
  store ptr %extra_bits, ptr %extra_bits.addr, align 8
  store i32 %gr, ptr %gr.addr, align 4
  %0 = load i32, ptr %mean_bits.addr, align 4
  %1 = load ptr, ptr %targ_bits.addr, align 8
  store i32 %0, ptr %1, align 4
  %2 = load i32, ptr @ResvSize, align 4
  %3 = load i32, ptr @ResvMax, align 4
  %mul = mul nsw i32 %3, 9
  %div = sdiv i32 %mul, 10
  %cmp = icmp sgt i32 %2, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @ResvSize, align 4
  %5 = load i32, ptr @ResvMax, align 4
  %mul1 = mul nsw i32 %5, 9
  %div2 = sdiv i32 %mul1, 10
  %sub = sub nsw i32 %4, %div2
  store i32 %sub, ptr %add_bits, align 4
  %6 = load i32, ptr %add_bits, align 4
  %7 = load ptr, ptr %targ_bits.addr, align 8
  %8 = load i32, ptr %7, align 4
  %add = add nsw i32 %8, %6
  store i32 %add, ptr %7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %add_bits, align 4
  %9 = load i32, ptr %mean_bits.addr, align 4
  %conv = sitofp i32 %9 to double
  %div3 = fdiv double %conv, 1.520000e+01
  %conv4 = fptosi double %div3 to i32
  %10 = load ptr, ptr %targ_bits.addr, align 8
  %11 = load i32, ptr %10, align 4
  %sub5 = sub nsw i32 %11, %conv4
  store i32 %sub5, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, ptr @ResvSize, align 4
  %13 = load i32, ptr @ResvMax, align 4
  %mul6 = mul nsw i32 %13, 6
  %div7 = sdiv i32 %mul6, 10
  %cmp8 = icmp slt i32 %12, %div7
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, ptr @ResvSize, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load i32, ptr @ResvMax, align 4
  %mul10 = mul nsw i32 %15, 6
  %div11 = sdiv i32 %mul10, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %div11, %cond.false ]
  %16 = load ptr, ptr %extra_bits.addr, align 8
  store i32 %cond, ptr %16, align 4
  %17 = load i32, ptr %add_bits, align 4
  %18 = load ptr, ptr %extra_bits.addr, align 8
  %19 = load i32, ptr %18, align 4
  %sub12 = sub nsw i32 %19, %17
  store i32 %sub12, ptr %18, align 4
  %20 = load ptr, ptr %extra_bits.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp13 = icmp slt i32 %21, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %cond.end
  %22 = load ptr, ptr %extra_bits.addr, align 8
  store i32 0, ptr %22, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %cond.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ResvAdjust(ptr noundef %gfp, ptr noundef %gi, ptr noundef %l3_side, i32 noundef %mean_bits) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %gi.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %mean_bits.addr = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %gi, ptr %gi.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store i32 %mean_bits, ptr %mean_bits.addr, align 4
  %0 = load i32, ptr %mean_bits.addr, align 4
  %1 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %1, i32 0, i32 46
  %2 = load i32, ptr %stereo, align 4
  %div = sdiv i32 %0, %2
  %3 = load ptr, ptr %gi.addr, align 8
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %part2_3_length, align 8
  %sub = sub i32 %div, %4
  %5 = load i32, ptr @ResvSize, align 4
  %add = add i32 %5, %sub
  store i32 %add, ptr @ResvSize, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @ResvFrameEnd(ptr noundef %gfp, ptr noundef %l3_side, i32 noundef %mean_bits) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %mean_bits.addr = alloca i32, align 4
  %stuffingBits = alloca i32, align 4
  %over_bits = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store i32 %mean_bits, ptr %mean_bits.addr, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 46
  %1 = load i32, ptr %stereo, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %mean_bits.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr @ResvSize, align 4
  %add = add nsw i32 %3, 1
  store i32 %add, ptr @ResvSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, ptr @ResvSize, align 4
  %5 = load i32, ptr @ResvMax, align 4
  %sub = sub nsw i32 %4, %5
  store i32 %sub, ptr %over_bits, align 4
  %6 = load i32, ptr %over_bits, align 4
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %over_bits, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load i32, ptr %over_bits, align 4
  %8 = load i32, ptr @ResvSize, align 4
  %sub4 = sub nsw i32 %8, %7
  store i32 %sub4, ptr @ResvSize, align 4
  %9 = load i32, ptr %over_bits, align 4
  store i32 %9, ptr %stuffingBits, align 4
  %10 = load i32, ptr @ResvSize, align 4
  %rem = srem i32 %10, 8
  store i32 %rem, ptr %over_bits, align 4
  %tobool5 = icmp ne i32 %rem, 0
  br i1 %tobool5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end3
  %11 = load i32, ptr %over_bits, align 4
  %12 = load i32, ptr %stuffingBits, align 4
  %add7 = add nsw i32 %12, %11
  store i32 %add7, ptr %stuffingBits, align 4
  %13 = load i32, ptr %over_bits, align 4
  %14 = load i32, ptr @ResvSize, align 4
  %sub8 = sub nsw i32 %14, %13
  store i32 %sub8, ptr @ResvSize, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end3
  %15 = load i32, ptr %stuffingBits, align 4
  %16 = load ptr, ptr %l3_side.addr, align 8
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %16, i32 0, i32 2
  store i32 %15, ptr %resvDrain, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
