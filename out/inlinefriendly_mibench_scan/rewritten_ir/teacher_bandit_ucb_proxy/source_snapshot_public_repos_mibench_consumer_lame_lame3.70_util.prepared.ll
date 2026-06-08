; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/util.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/util.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i64 }
%struct.bit_stream_struc = type { ptr, i32, ptr, ptr, i32, i64, i32, i32 }

@s_freq_table = global [2 x [4 x double]] [[4 x double] [double 2.205000e+01, double 2.400000e+01, double 1.600000e+01, double 0.000000e+00], [4 x double] [double 4.410000e+01, double 4.800000e+01, double 3.200000e+01, double 0.000000e+00]], align 8
@bitrate_table = global [2 x [15 x i32]] [[15 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160], [15 x i32] [i32 0, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320]], align 4
@NativeByteOrder = global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"MPEG1 samplerates(kHz): 32 44.1 48 \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bitrates(kbs): \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"MPEG2 samplerates(kHz): 16 22.05 24 \0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Bitrate %dkbs not legal for %iHz output sampling.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SmpFrqIndex: %ldHz is not a legal sample rate\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unable to allocate %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DCBA\00", align 1
@__func__.copy_buffer = private unnamed_addr constant [12 x i8] c"copy_buffer\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"util.c\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"j == (bs->buf_size-1 - bs->buf_byte_idx)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@putmask = global [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"Cannot read or write more than %d bits at a time.\0A\00", align 1
@__func__.putbits = private unnamed_addr constant [8 x i8] c"putbits\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"bs->buf_byte_idx >= 0\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @getframebits(ptr noundef %gfp, ptr noundef %bitsPerFrame, ptr noundef %mean_bits) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %bitsPerFrame.addr = alloca ptr, align 8
  %mean_bits.addr = alloca ptr, align 8
  %whole_SpF = alloca i32, align 4
  %bit_rate = alloca double, align 8
  %samp = alloca double, align 8
  %bitsPerSlot = alloca i32, align 4
  %sideinfo_len = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %bitsPerFrame, ptr %bitsPerFrame.addr, align 8
  store ptr %mean_bits, ptr %mean_bits.addr, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %out_samplerate, align 8
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, ptr %samp, align 8
  %2 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %2, i32 0, i32 43
  %3 = load i32, ptr %version, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom
  %4 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 50
  %5 = load i32, ptr %bitrate_index, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %6 = load i32, ptr %arrayidx2, align 4
  %conv3 = sitofp i32 %6 to double
  store double %conv3, ptr %bit_rate, align 8
  store i32 8, ptr %bitsPerSlot, align 4
  store i32 32, ptr %sideinfo_len, align 4
  %7 = load ptr, ptr %gfp.addr, align 8
  %version4 = getelementptr inbounds %struct.lame_global_flags, ptr %7, i32 0, i32 43
  %8 = load i32, ptr %version4, align 8
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 46
  %10 = load i32, ptr %stereo, align 4
  %cmp6 = icmp eq i32 %10, 1
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %11 = load i32, ptr %sideinfo_len, align 4
  %add = add nsw i32 %11, 136
  store i32 %add, ptr %sideinfo_len, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i32, ptr %sideinfo_len, align 4
  %add9 = add nsw i32 %12, 256
  store i32 %add9, ptr %sideinfo_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %if.end19

if.else10:                                        ; preds = %entry
  %13 = load ptr, ptr %gfp.addr, align 8
  %stereo11 = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 46
  %14 = load i32, ptr %stereo11, align 4
  %cmp12 = icmp eq i32 %14, 1
  br i1 %cmp12, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else10
  %15 = load i32, ptr %sideinfo_len, align 4
  %add15 = add nsw i32 %15, 72
  store i32 %add15, ptr %sideinfo_len, align 4
  br label %if.end18

if.else16:                                        ; preds = %if.else10
  %16 = load i32, ptr %sideinfo_len, align 4
  %add17 = add nsw i32 %16, 136
  store i32 %add17, ptr %sideinfo_len, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  %17 = load ptr, ptr %gfp.addr, align 8
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %17, i32 0, i32 14
  %18 = load i32, ptr %error_protection, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end19
  %19 = load i32, ptr %sideinfo_len, align 4
  %add21 = add nsw i32 %19, 16
  store i32 %add21, ptr %sideinfo_len, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end19
  %20 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %20, i32 0, i32 42
  %21 = load i32, ptr %framesize, align 4
  %conv23 = sitofp i32 %21 to double
  %22 = load double, ptr %samp, align 8
  %div24 = fdiv double %conv23, %22
  %23 = load double, ptr %bit_rate, align 8
  %24 = load i32, ptr %bitsPerSlot, align 4
  %conv25 = sitofp i32 %24 to double
  %div26 = fdiv double %23, %conv25
  %25 = call double @llvm.fmuladd.f64(double %div24, double %div26, double 1.000000e-09)
  %26 = call double @llvm.floor.f64(double %25)
  %conv27 = fptosi double %26 to i32
  store i32 %conv27, ptr %whole_SpF, align 4
  %27 = load i32, ptr %whole_SpF, align 4
  %mul = mul nsw i32 8, %27
  %28 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %28, i32 0, i32 44
  %29 = load i32, ptr %padding, align 4
  %mul28 = mul nsw i32 %29, 8
  %add29 = add nsw i32 %mul, %mul28
  %30 = load ptr, ptr %bitsPerFrame.addr, align 8
  store i32 %add29, ptr %30, align 4
  %31 = load ptr, ptr %bitsPerFrame.addr, align 8
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %sideinfo_len, align 4
  %sub = sub nsw i32 %32, %33
  %34 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %34, i32 0, i32 45
  %35 = load i32, ptr %mode_gr, align 8
  %div30 = sdiv i32 %sub, %35
  %36 = load ptr, ptr %mean_bits.addr, align 8
  store i32 %div30, ptr %36, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nounwind ssp uwtable
define void @display_bitrates(ptr noundef %out_fh) #0 {
entry:
  %out_fh.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %version = alloca i32, align 4
  store ptr %out_fh, ptr %out_fh.addr, align 8
  store i32 1, ptr %version, align 4
  %0 = load ptr, ptr %out_fh.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str)
  %1 = load ptr, ptr %out_fh.addr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1)
  %2 = load ptr, ptr %out_fh.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2)
  store i32 1, ptr %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %index, align 4
  %cmp = icmp slt i32 %3, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %out_fh.addr, align 8
  %5 = load i32, ptr %version, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom
  %6 = load i32, ptr %index, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 %idxprom3
  %7 = load i32, ptr %arrayidx4, align 4
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.3, i32 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %index, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %index, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %out_fh.addr, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str)
  store i32 0, ptr %version, align 4
  %10 = load ptr, ptr %out_fh.addr, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str)
  %11 = load ptr, ptr %out_fh.addr, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.4)
  %12 = load ptr, ptr %out_fh.addr, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.2)
  store i32 1, ptr %index, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.end
  %13 = load i32, ptr %index, align 4
  %cmp11 = icmp slt i32 %13, 15
  br i1 %cmp11, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond10
  %14 = load ptr, ptr %out_fh.addr, align 8
  %15 = load i32, ptr %version, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom13
  %16 = load i32, ptr %index, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [15 x i32], ptr %arrayidx14, i64 0, i64 %idxprom15
  %17 = load i32, ptr %arrayidx16, align 4
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.3, i32 noundef %17)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %18 = load i32, ptr %index, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, ptr %index, align 4
  br label %for.cond10, !llvm.loop !8

for.end20:                                        ; preds = %for.cond10
  %19 = load ptr, ptr %out_fh.addr, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @BitrateIndex(i32 noundef %bRate, i32 noundef %version, i32 noundef %samplerate) #0 {
entry:
  %retval = alloca i32, align 4
  %bRate.addr = alloca i32, align 4
  %version.addr = alloca i32, align 4
  %samplerate.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %found = alloca i32, align 4
  store i32 %bRate, ptr %bRate.addr, align 4
  store i32 %version, ptr %version.addr, align 4
  store i32 %samplerate, ptr %samplerate.addr, align 4
  store i32 0, ptr %index, align 4
  store i32 0, ptr %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %found, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr %index, align 4
  %cmp = icmp slt i32 %1, 15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, ptr %version.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom
  %4 = load i32, ptr %index, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load i32, ptr %bRate.addr, align 4
  %cmp3 = icmp eq i32 %5, %6
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 1, ptr %found, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load i32, ptr %index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %8 = load i32, ptr %found, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %while.end
  %9 = load i32, ptr %index, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %while.end
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load i32, ptr %bRate.addr, align 4
  %12 = load i32, ptr %samplerate.addr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5, i32 noundef %11, i32 noundef %12)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else6, %if.then5
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define i32 @SmpFrqIndex(i64 noundef %sRate, ptr noundef %version) #0 {
entry:
  %retval = alloca i32, align 4
  %sRate.addr = alloca i64, align 8
  %version.addr = alloca ptr, align 8
  store i64 %sRate, ptr %sRate.addr, align 8
  store ptr %version, ptr %version.addr, align 8
  %0 = load ptr, ptr %version.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load i64, ptr %sRate.addr, align 8
  %cmp = icmp eq i64 %1, 44100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %version.addr, align 8
  store i32 1, ptr %2, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %sRate.addr, align 8
  %cmp1 = icmp eq i64 %3, 48000
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %version.addr, align 8
  store i32 1, ptr %4, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %5 = load i64, ptr %sRate.addr, align 8
  %cmp4 = icmp eq i64 %5, 32000
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %6 = load ptr, ptr %version.addr, align 8
  store i32 1, ptr %6, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else3
  %7 = load i64, ptr %sRate.addr, align 8
  %cmp7 = icmp eq i64 %7, 24000
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  %8 = load ptr, ptr %version.addr, align 8
  store i32 0, ptr %8, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else6
  %9 = load i64, ptr %sRate.addr, align 8
  %cmp10 = icmp eq i64 %9, 22050
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  %10 = load ptr, ptr %version.addr, align 8
  store i32 0, ptr %10, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else12:                                        ; preds = %if.else9
  %11 = load i64, ptr %sRate.addr, align 8
  %cmp13 = icmp eq i64 %11, 16000
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  %12 = load ptr, ptr %version.addr, align 8
  store i32 0, ptr %12, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.else12
  %13 = load ptr, ptr @__stderrp, align 8
  %14 = load i64, ptr %sRate.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.6, i64 noundef %14)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else15, %if.then14, %if.then11, %if.then8, %if.then5, %if.then2, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind ssp uwtable
define ptr @mem_alloc(i64 noundef %block, ptr noundef %item) #0 {
entry:
  %block.addr = alloca i64, align 8
  %item.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store i64 %block, ptr %block.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %0 = load i64, ptr %block.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #7
  store ptr %call, ptr %ptr, align 8
  %1 = load ptr, ptr %ptr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ptr, align 8
  %3 = load i64, ptr %block.addr, align 8
  %4 = load ptr, ptr %ptr, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %2, i32 noundef 0, i64 noundef %3, i64 noundef %5) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr %item.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.7, ptr noundef %7)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %ptr, align 8
  ret ptr %8
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

; Function Attrs: nounwind ssp uwtable
define i32 @DetermineByteOrder() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [9 x i8], align 1
  %probe = alloca %union.anon, align 8
  store i64 1094861636, ptr %probe, align 8
  %arraydecay = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %probe, i64 0, i64 0
  %call = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef %arraydecay1, i64 noundef 8, i64 noundef 9) #8
  %arrayidx = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 8
  store i8 0, ptr %arrayidx, align 1
  %arraydecay2 = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %call3 = call i32 @strcmp(ptr noundef %arraydecay2, ptr noundef @.str.8)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 0
  %call5 = call i32 @strcmp(ptr noundef %arraydecay4, ptr noundef @.str.9)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 2, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then7, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @SwapBytesInWords(ptr noundef %loc, i32 noundef %words) #0 {
entry:
  %loc.addr = alloca ptr, align 8
  %words.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %thisval = alloca i16, align 2
  %dst = alloca ptr, align 8
  %src = alloca ptr, align 8
  store ptr %loc, ptr %loc.addr, align 8
  store i32 %words, ptr %words.addr, align 4
  store ptr %thisval, ptr %src, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %words.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %loc.addr, align 8
  %3 = load i16, ptr %2, align 2
  store i16 %3, ptr %thisval, align 2
  %4 = load ptr, ptr %loc.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %loc.addr, align 8
  store ptr %4, ptr %dst, align 8
  %5 = load ptr, ptr %src, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx, align 1
  %7 = load ptr, ptr %dst, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 0
  store i8 %6, ptr %arrayidx1, align 1
  %8 = load ptr, ptr %src, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx2, align 1
  %10 = load ptr, ptr %dst, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %9, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @empty_buffer(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  %minimum = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8
  %0 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %buf_byte_idx, align 8
  %add = add nsw i32 1, %1
  store i32 %add, ptr %minimum, align 4
  %2 = load ptr, ptr %bs.addr, align 8
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %buf_size, align 8
  %4 = load i32, ptr %minimum, align 4
  %sub = sub nsw i32 %3, %4
  %cmp = icmp sle i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %bs.addr, align 8
  %buf_size1 = getelementptr inbounds %struct.bit_stream_struc, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %buf_size1, align 8
  %sub2 = sub nsw i32 %6, 1
  %7 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx3 = getelementptr inbounds %struct.bit_stream_struc, ptr %7, i32 0, i32 6
  store i32 %sub2, ptr %buf_byte_idx3, align 8
  %8 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %8, i32 0, i32 7
  store i32 8, ptr %buf_bit_idx, align 4
  %9 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %buf, align 8
  %11 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx4 = getelementptr inbounds %struct.bit_stream_struc, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %buf_byte_idx4, align 8
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @copy_buffer(ptr noundef %buffer, i32 noundef %size, ptr noundef %bs) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %bs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store ptr %bs, ptr %bs.addr, align 8
  store i32 0, ptr %j, align 4
  %0 = load i32, ptr %size.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %bs.addr, align 8
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %buf_size, align 8
  %sub = sub nsw i32 %2, 1
  %3 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %buf_byte_idx, align 8
  %sub1 = sub nsw i32 %sub, %4
  %5 = load i32, ptr %size.addr, align 4
  %cmp2 = icmp sgt i32 %sub1, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %bs.addr, align 8
  %buf_size3 = getelementptr inbounds %struct.bit_stream_struc, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %buf_size3, align 8
  %sub4 = sub nsw i32 %7, 1
  store i32 %sub4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx5 = getelementptr inbounds %struct.bit_stream_struc, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %buf_byte_idx5, align 8
  %cmp6 = icmp sgt i32 %8, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %buf, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1
  %15 = load ptr, ptr %buffer.addr, align 8
  %16 = load i32, ptr %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %15, i64 %idxprom7
  store i8 %14, ptr %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %j, align 4
  %19 = load ptr, ptr %bs.addr, align 8
  %buf_size9 = getelementptr inbounds %struct.bit_stream_struc, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %buf_size9, align 8
  %sub10 = sub nsw i32 %20, 1
  %21 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx11 = getelementptr inbounds %struct.bit_stream_struc, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %buf_byte_idx11, align 8
  %sub12 = sub nsw i32 %sub10, %22
  %cmp13 = icmp eq i32 %18, %sub12
  %lnot = xor i1 %cmp13, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  call void @__assert_rtn(ptr noundef @__func__.copy_buffer, ptr noundef @.str.10, i32 noundef 270, ptr noundef @.str.11) #10
  unreachable

23:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %23
  %24 = load ptr, ptr %bs.addr, align 8
  call void @empty_buffer(ptr noundef %24)
  %25 = load i32, ptr %j, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nounwind ssp uwtable
define void @init_bit_stream_w(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8
  %0 = load ptr, ptr %bs.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_util_0(ptr noundef %0, i32 noundef 16384)
  %1 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %1, i32 0, i32 6
  store i32 16383, ptr %buf_byte_idx, align 8
  %2 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i32 0, i32 7
  store i32 8, ptr %buf_bit_idx, align 4
  %3 = load ptr, ptr %bs.addr, align 8
  %totbit = getelementptr inbounds %struct.bit_stream_struc, ptr %3, i32 0, i32 5
  store i64 0, ptr %totbit, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @alloc_buffer(ptr noundef %bs, i32 noundef %size) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %size.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %call = call ptr @mem_alloc(i64 noundef %mul, ptr noundef @.str.12)
  %1 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %1, i32 0, i32 3
  store ptr %call, ptr %buf, align 8
  %2 = load i32, ptr %size.addr, align 4
  %3 = load ptr, ptr %bs.addr, align 8
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %3, i32 0, i32 4
  store i32 %2, ptr %buf_size, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @desalloc_buffer(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8
  %0 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %1)
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @putbits(ptr noundef %bs, i32 noundef %val, i32 noundef %N) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  %0 = load i32, ptr %N.addr, align 4
  store i32 %0, ptr %j, align 4
  %1 = load i32, ptr %N.addr, align 4
  %cmp = icmp sgt i32 %1, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.13, i32 noundef 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %N.addr, align 4
  %conv = sext i32 %3 to i64
  %4 = load ptr, ptr %bs.addr, align 8
  %totbit = getelementptr inbounds %struct.bit_stream_struc, ptr %4, i32 0, i32 5
  %5 = load i64, ptr %totbit, align 8
  %add = add i64 %5, %conv
  store i64 %add, ptr %totbit, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end
  %6 = load i32, ptr %j, align 4
  %cmp1 = icmp sgt i32 %6, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %j, align 4
  %8 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %8, i32 0, i32 7
  %9 = load i32, ptr %buf_bit_idx, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %10 = load i32, ptr %j, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %11 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx5 = getelementptr inbounds %struct.bit_stream_struc, ptr %11, i32 0, i32 7
  %12 = load i32, ptr %buf_bit_idx5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, ptr %k, align 4
  %13 = load i32, ptr %val.addr, align 4
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %k, align 4
  %sub = sub nsw i32 %14, %15
  %shr = lshr i32 %13, %sub
  store i32 %shr, ptr %tmp, align 4
  %16 = load i32, ptr %tmp, align 4
  %17 = load i32, ptr %k, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr @putmask, i64 0, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4
  %and = and i32 %16, %18
  %19 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx6 = getelementptr inbounds %struct.bit_stream_struc, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %buf_bit_idx6, align 4
  %21 = load i32, ptr %k, align 4
  %sub7 = sub nsw i32 %20, %21
  %shl = shl i32 %and, %sub7
  %22 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %buf, align 8
  %24 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %buf_byte_idx, align 8
  %idxprom8 = sext i32 %25 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %23, i64 %idxprom8
  %26 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %26 to i32
  %or = or i32 %conv10, %shl
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, ptr %arrayidx9, align 1
  %27 = load i32, ptr %k, align 4
  %28 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx12 = getelementptr inbounds %struct.bit_stream_struc, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %buf_bit_idx12, align 4
  %sub13 = sub nsw i32 %29, %27
  store i32 %sub13, ptr %buf_bit_idx12, align 4
  %30 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx14 = getelementptr inbounds %struct.bit_stream_struc, ptr %30, i32 0, i32 7
  %31 = load i32, ptr %buf_bit_idx14, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.end30, label %if.then15

if.then15:                                        ; preds = %cond.end
  %32 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx16 = getelementptr inbounds %struct.bit_stream_struc, ptr %32, i32 0, i32 7
  store i32 8, ptr %buf_bit_idx16, align 4
  %33 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx17 = getelementptr inbounds %struct.bit_stream_struc, ptr %33, i32 0, i32 6
  %34 = load i32, ptr %buf_byte_idx17, align 8
  %dec = add nsw i32 %34, -1
  store i32 %dec, ptr %buf_byte_idx17, align 8
  %35 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx18 = getelementptr inbounds %struct.bit_stream_struc, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %buf_byte_idx18, align 8
  %cmp19 = icmp sge i32 %36, 0
  %lnot = xor i1 %cmp19, true
  %lnot.ext = zext i1 %lnot to i32
  %conv21 = sext i32 %lnot.ext to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %if.then15
  call void @__assert_rtn(ptr noundef @__func__.putbits, ptr noundef @.str.10, i32 noundef 328, ptr noundef @.str.14) #10
  unreachable

37:                                               ; No predecessors!
  br label %cond.end25

cond.false24:                                     ; preds = %if.then15
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %37
  %38 = load ptr, ptr %bs.addr, align 8
  %buf26 = getelementptr inbounds %struct.bit_stream_struc, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %buf26, align 8
  %40 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx27 = getelementptr inbounds %struct.bit_stream_struc, ptr %40, i32 0, i32 6
  %41 = load i32, ptr %buf_byte_idx27, align 8
  %idxprom28 = sext i32 %41 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %39, i64 %idxprom28
  store i8 0, ptr %arrayidx29, align 1
  br label %if.end30

if.end30:                                         ; preds = %cond.end25, %cond.end
  %42 = load i32, ptr %k, align 4
  %43 = load i32, ptr %j, align 4
  %sub31 = sub nsw i32 %43, %42
  store i32 %sub31, ptr %j, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_util_0(ptr noundef %bs, i32 noundef %size)  alwaysinline#0 {
entry:
  %bs.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %size.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 1
  %call = call ptr @mem_alloc(i64 noundef %mul, ptr noundef @.str.12)
  %1 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %1, i32 0, i32 3
  store ptr %call, ptr %buf, align 8
  %2 = load i32, ptr %size.addr, align 4
  %3 = load ptr, ptr %bs.addr, align 8
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %3, i32 0, i32 4
  store i32 %2, ptr %buf_size, align 8
  ret void
}

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
