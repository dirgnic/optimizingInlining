; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_loop_averse/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_util.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/util.c"
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
  %bit_rate = alloca double, align 8
  %samp = alloca double, align 8
  %bitsPerSlot = alloca i32, align 4
  %sideinfo_len = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %bitsPerFrame, ptr %bitsPerFrame.addr, align 8
  store ptr %mean_bits, ptr %mean_bits.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %0 = load i32, ptr %out_samplerate, align 8
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, ptr %samp, align 8
  %1 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 43
  %2 = load i32, ptr %version, align 8
  %idxprom = sext i32 %2 to i64
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 50
  %3 = load i32, ptr %bitrate_index, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4
  %conv3 = sitofp i32 %4 to double
  store double %conv3, ptr %bit_rate, align 8
  store i32 8, ptr %bitsPerSlot, align 4
  store i32 32, ptr %sideinfo_len, align 4
  %5 = load ptr, ptr %gfp.addr, align 8
  %version4 = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 43
  %6 = load i32, ptr %version4, align 8
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 46
  %8 = load i32, ptr %stereo, align 4
  %cmp6 = icmp eq i32 %8, 1
  %9 = load i32, ptr %sideinfo_len, align 4
  %add9 = add nsw i32 %9, 256
  %10 = load i32, ptr %sideinfo_len, align 4
  %add = add nsw i32 %10, 136
  %storemerge2 = select i1 %cmp6, i32 %add, i32 %add9
  br label %if.end19

if.else10:                                        ; preds = %entry
  %11 = load ptr, ptr %gfp.addr, align 8
  %stereo11 = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 46
  %12 = load i32, ptr %stereo11, align 4
  %cmp12 = icmp eq i32 %12, 1
  %13 = load i32, ptr %sideinfo_len, align 4
  %add17 = add nsw i32 %13, 136
  %14 = load i32, ptr %sideinfo_len, align 4
  %add15 = add nsw i32 %14, 72
  %storemerge = select i1 %cmp12, i32 %add15, i32 %add17
  br label %if.end19

if.end19:                                         ; preds = %if.else10, %if.then
  %storemerge3 = phi i32 [ %storemerge2, %if.then ], [ %storemerge, %if.else10 ]
  store i32 %storemerge3, ptr %sideinfo_len, align 4
  %15 = load ptr, ptr %gfp.addr, align 8
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %15, i64 0, i32 14
  %16 = load i32, ptr %error_protection, align 4
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end19
  %17 = load i32, ptr %sideinfo_len, align 4
  %add21 = add nsw i32 %17, 16
  store i32 %add21, ptr %sideinfo_len, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end19
  %18 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %18, i64 0, i32 42
  %19 = load i32, ptr %framesize, align 4
  %conv23 = sitofp i32 %19 to double
  %20 = load double, ptr %samp, align 8
  %div24 = fdiv double %conv23, %20
  %21 = load double, ptr %bit_rate, align 8
  %22 = load i32, ptr %bitsPerSlot, align 4
  %conv25 = sitofp i32 %22 to double
  %div26 = fdiv double %21, %conv25
  %23 = call double @llvm.fmuladd.f64(double %div24, double %div26, double 1.000000e-09)
  %24 = call double @llvm.floor.f64(double %23)
  %conv27 = fptosi double %24 to i32
  %25 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %25, i64 0, i32 44
  %26 = load i32, ptr %padding, align 4
  %mul1 = add i32 %26, %conv27
  %add29 = shl i32 %mul1, 3
  %27 = load ptr, ptr %bitsPerFrame.addr, align 8
  store i32 %add29, ptr %27, align 4
  %28 = load i32, ptr %sideinfo_len, align 4
  %sub = sub nsw i32 %add29, %28
  %29 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %29, i64 0, i32 45
  %30 = load i32, ptr %mode_gr, align 8
  %div30 = sdiv i32 %sub, %30
  %31 = load ptr, ptr %mean_bits.addr, align 8
  store i32 %div30, ptr %31, align 4
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
  %fputc = call i32 @fputc(i32 10, ptr %out_fh)
  %0 = call i64 @fwrite(ptr nonnull @.str.1, i64 36, i64 1, ptr %out_fh)
  %1 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %out_fh)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %index, align 4
  %cmp = icmp slt i32 %storemerge, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %out_fh.addr, align 8
  %3 = load i32, ptr %version, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, ptr %index, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom, i64 %idxprom3
  %5 = load i32, ptr %arrayidx4, align 4
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5) #12
  %6 = load i32, ptr %index, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %out_fh.addr, align 8
  %fputc1 = call i32 @fputc(i32 10, ptr %7)
  store i32 0, ptr %version, align 4
  %fputc2 = call i32 @fputc(i32 10, ptr %7)
  %8 = call i64 @fwrite(ptr nonnull @.str.4, i64 37, i64 1, ptr %7)
  %9 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %7)
  br label %for.cond10

for.cond10:                                       ; preds = %for.body12, %for.end
  %storemerge3 = phi i32 [ 1, %for.end ], [ %inc19, %for.body12 ]
  store i32 %storemerge3, ptr %index, align 4
  %cmp11 = icmp slt i32 %storemerge3, 15
  br i1 %cmp11, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond10
  %10 = load ptr, ptr %out_fh.addr, align 8
  %11 = load i32, ptr %version, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load i32, ptr %index, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom13, i64 %idxprom15
  %13 = load i32, ptr %arrayidx16, align 4
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %13) #12
  %14 = load i32, ptr %index, align 4
  %inc19 = add nsw i32 %14, 1
  br label %for.cond10, !llvm.loop !8

for.end20:                                        ; preds = %for.cond10
  %15 = load ptr, ptr %out_fh.addr, align 8
  %fputc4 = call i32 @fputc(i32 10, ptr %15)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @BitrateIndex(i32 noundef %bRate, i32 noundef %version, i32 noundef %samplerate) #0 {
entry:
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
  %tobool.not = icmp eq i32 %0, 0
  %1 = load i32, ptr %index, align 4
  %cmp = icmp slt i32 %1, 15
  %2 = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %version.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, ptr %index, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom, i64 %idxprom1
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

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %found, align 4
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %while.end
  %9 = load i32, ptr %index, align 4
  br label %return

if.else6:                                         ; preds = %while.end
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load i32, ptr %bRate.addr, align 4
  %12 = load i32, ptr %samplerate.addr, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %12) #12
  br label %return

return:                                           ; preds = %if.else6, %if.then5
  %storemerge = phi i32 [ -1, %if.else6 ], [ %9, %if.then5 ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i32 @SmpFrqIndex(i64 noundef %sRate, ptr noundef %version) #0 {
entry:
  %retval = alloca i32, align 4
  %sRate.addr = alloca i64, align 8
  %version.addr = alloca ptr, align 8
  store i64 %sRate, ptr %sRate.addr, align 8
  store ptr %version, ptr %version.addr, align 8
  store i32 0, ptr %version, align 4
  %cmp = icmp eq i64 %sRate, 44100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %version.addr, align 8
  store i32 1, ptr %0, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %sRate.addr, align 8
  %cmp1 = icmp eq i64 %1, 48000
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %version.addr, align 8
  store i32 1, ptr %2, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %3 = load i64, ptr %sRate.addr, align 8
  %cmp4 = icmp eq i64 %3, 32000
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %4 = load ptr, ptr %version.addr, align 8
  store i32 1, ptr %4, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else3
  %5 = load i64, ptr %sRate.addr, align 8
  %cmp7 = icmp eq i64 %5, 24000
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  %6 = load ptr, ptr %version.addr, align 8
  store i32 0, ptr %6, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else6
  %7 = load i64, ptr %sRate.addr, align 8
  %cmp10 = icmp eq i64 %7, 22050
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  %8 = load ptr, ptr %version.addr, align 8
  store i32 0, ptr %8, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else12:                                        ; preds = %if.else9
  %9 = load i64, ptr %sRate.addr, align 8
  %cmp13 = icmp eq i64 %9, 16000
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  %10 = load ptr, ptr %version.addr, align 8
  store i32 0, ptr %10, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.else12
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = load i64, ptr %sRate.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.6, i64 noundef %12) #12
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else15, %if.then14, %if.then11, %if.then8, %if.then5, %if.then2, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind ssp uwtable
define ptr @mem_alloc(i64 noundef %block, ptr noundef %item) #0 {
entry:
  %block.addr = alloca i64, align 8
  %item.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store i64 %block, ptr %block.addr, align 8
  store ptr %item, ptr %item.addr, align 8
  %call = call ptr @malloc(i64 noundef %block) #13
  store ptr %call, ptr %ptr, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %ptr, align 8
  %1 = load i64, ptr %block.addr, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %1, i64 noundef %2) #12
  %3 = load ptr, ptr %ptr, align 8
  ret ptr %3

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr %item.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %5) #12
  call void @exit(i32 noundef 1) #14
  unreachable
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
  %strncpy = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(1) %probe, i64 8)
  %arrayidx = getelementptr inbounds [9 x i8], ptr %s, i64 0, i64 8
  store i8 0, ptr %arrayidx, align 1
  %memcmp = call i32 @memcmp(ptr noundef nonnull dereferenceable(5) %s, ptr noundef nonnull dereferenceable(5) @.str.8, i64 5)
  %cmp = icmp eq i32 %memcmp, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %memcmp1 = call i32 @memcmp(ptr noundef nonnull dereferenceable(5) %s, ptr noundef nonnull dereferenceable(5) @.str.9, i64 5)
  %cmp6 = icmp eq i32 %memcmp1, 0
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
  %src = alloca ptr, align 8
  store ptr %loc, ptr %loc.addr, align 8
  store i32 %words, ptr %words.addr, align 4
  store ptr %thisval, ptr %src, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %words.addr, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %loc.addr, align 8
  %2 = load i16, ptr %1, align 2
  store i16 %2, ptr %thisval, align 2
  %incdec.ptr = getelementptr inbounds i16, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %loc.addr, align 8
  %3 = load ptr, ptr %src, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx, align 1
  store i8 %4, ptr %1, align 1
  %5 = load i8, ptr %3, align 1
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %5, ptr %arrayidx3, align 1
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @empty_buffer(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 6
  %0 = load i32, ptr %buf_byte_idx, align 8
  %add.neg = xor i32 %0, -1
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 4
  %1 = load i32, ptr %buf_size, align 8
  %sub = add i32 %1, %add.neg
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bs.addr, align 8
  %buf_size1 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 4
  %3 = load i32, ptr %buf_size1, align 8
  %sub2 = add nsw i32 %3, -1
  %buf_byte_idx3 = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 6
  store i32 %sub2, ptr %buf_byte_idx3, align 8
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 7
  store i32 8, ptr %buf_bit_idx, align 4
  %4 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %buf, align 8
  %buf_byte_idx4 = getelementptr inbounds %struct.bit_stream_struc, ptr %4, i64 0, i32 6
  %6 = load i32, ptr %buf_byte_idx4, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @copy_buffer(ptr noundef %buffer, i32 noundef %size, ptr noundef %bs) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %bs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store ptr %bs, ptr %bs.addr, align 8
  store i32 0, ptr %j, align 4
  %cmp.not = icmp eq i32 %size, 0
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %bs.addr, align 8
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 4
  %1 = load i32, ptr %buf_size, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 6
  %2 = load i32, ptr %buf_byte_idx, align 8
  %3 = xor i32 %2, -1
  %sub1 = add i32 %1, %3
  %4 = load i32, ptr %size.addr, align 4
  %cmp2 = icmp sgt i32 %sub1, %4
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %bs.addr, align 8
  %buf_size3 = getelementptr inbounds %struct.bit_stream_struc, ptr %5, i64 0, i32 4
  %6 = load i32, ptr %buf_size3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge.in = phi i32 [ %6, %if.end ], [ %15, %for.body ]
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i, align 4
  %7 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx5 = getelementptr inbounds %struct.bit_stream_struc, ptr %7, i64 0, i32 6
  %8 = load i32, ptr %buf_byte_idx5, align 8
  %cmp6 = icmp sgt i32 %storemerge, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %bs.addr, align 8
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %buf, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i8, ptr %arrayidx, align 1
  %13 = load ptr, ptr %buffer.addr, align 8
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 %idxprom7
  store i8 %12, ptr %arrayidx8, align 1
  %15 = load i32, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %j, align 4
  %17 = load ptr, ptr %bs.addr, align 8
  %buf_size9 = getelementptr inbounds %struct.bit_stream_struc, ptr %17, i64 0, i32 4
  %18 = load i32, ptr %buf_size9, align 8
  %buf_byte_idx11 = getelementptr inbounds %struct.bit_stream_struc, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %buf_byte_idx11, align 8
  %20 = xor i32 %19, -1
  %sub12 = add i32 %18, %20
  %cmp13.not = icmp eq i32 %16, %sub12
  br i1 %cmp13.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.copy_buffer, ptr noundef nonnull @.str.10, i32 noundef 270, ptr noundef nonnull @.str.11) #15
  unreachable

cond.end:                                         ; preds = %for.end
  %21 = load ptr, ptr %bs.addr, align 8
  call void @empty_buffer(ptr noundef %21)
  %22 = load i32, ptr %j, align 4
  br label %return

return:                                           ; preds = %land.lhs.true, %cond.end
  %storemerge1 = phi i32 [ %22, %cond.end ], [ -1, %land.lhs.true ]
  ret i32 %storemerge1
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nounwind ssp uwtable
define void @init_bit_stream_w(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8
  %call.i = call ptr @mem_alloc(i64 noundef 16384, ptr noundef nonnull @.str.12)
  %buf.i = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  store ptr %call.i, ptr %buf.i, align 8
  %buf_size.i = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 4
  store i32 16384, ptr %buf_size.i, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 6
  store i32 16383, ptr %buf_byte_idx, align 8
  %0 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 7
  store i32 8, ptr %buf_bit_idx, align 4
  %totbit = getelementptr inbounds %struct.bit_stream_struc, ptr %0, i64 0, i32 5
  store i64 0, ptr %totbit, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @alloc_buffer(ptr noundef %bs, i32 noundef %size) #0 {
entry:
  %conv = sext i32 %size to i64
  %call = call ptr @mem_alloc(i64 noundef %conv, ptr noundef nonnull @.str.12)
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  store ptr %call, ptr %buf, align 8
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 4
  store i32 %size, ptr %buf_size, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @desalloc_buffer(ptr noundef %bs) #0 {
entry:
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  %0 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %0) #12
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
  store ptr %bs, ptr %bs.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  store i32 %N, ptr %j, align 4
  %cmp = icmp sgt i32 %N, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 32) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %N.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %bs.addr, align 8
  %totbit = getelementptr inbounds %struct.bit_stream_struc, ptr %2, i64 0, i32 5
  %3 = load i64, ptr %totbit, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %totbit, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end
  %4 = load i32, ptr %j, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %j, align 4
  %6 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %6, i64 0, i32 7
  %7 = load i32, ptr %buf_bit_idx, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %8 = load i32, ptr %j, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %9 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx5 = getelementptr inbounds %struct.bit_stream_struc, ptr %9, i64 0, i32 7
  %10 = load i32, ptr %buf_bit_idx5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %k, align 4
  %11 = load i32, ptr %val.addr, align 4
  %12 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %12, %cond
  %shr = lshr i32 %11, %sub
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr @putmask, i64 0, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  %and = and i32 %shr, %13
  %14 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx6 = getelementptr inbounds %struct.bit_stream_struc, ptr %14, i64 0, i32 7
  %15 = load i32, ptr %buf_bit_idx6, align 4
  %16 = load i32, ptr %k, align 4
  %sub7 = sub nsw i32 %15, %16
  %shl = shl i32 %and, %sub7
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %buf, align 8
  %18 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx = getelementptr inbounds %struct.bit_stream_struc, ptr %18, i64 0, i32 6
  %19 = load i32, ptr %buf_byte_idx, align 8
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %17, i64 %idxprom8
  %20 = load i8, ptr %arrayidx9, align 1
  %21 = trunc i32 %shl to i8
  %conv11 = or i8 %20, %21
  store i8 %conv11, ptr %arrayidx9, align 1
  %22 = load i32, ptr %k, align 4
  %23 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx12 = getelementptr inbounds %struct.bit_stream_struc, ptr %23, i64 0, i32 7
  %24 = load i32, ptr %buf_bit_idx12, align 4
  %sub13 = sub nsw i32 %24, %22
  store i32 %sub13, ptr %buf_bit_idx12, align 4
  %tobool.not = icmp eq i32 %24, %22
  br i1 %tobool.not, label %if.then15, label %if.end30

if.then15:                                        ; preds = %cond.end
  %25 = load ptr, ptr %bs.addr, align 8
  %buf_bit_idx16 = getelementptr inbounds %struct.bit_stream_struc, ptr %25, i64 0, i32 7
  store i32 8, ptr %buf_bit_idx16, align 4
  %buf_byte_idx17 = getelementptr inbounds %struct.bit_stream_struc, ptr %25, i64 0, i32 6
  %26 = load i32, ptr %buf_byte_idx17, align 8
  %dec = add nsw i32 %26, -1
  store i32 %dec, ptr %buf_byte_idx17, align 8
  %27 = load ptr, ptr %bs.addr, align 8
  %buf_byte_idx18 = getelementptr inbounds %struct.bit_stream_struc, ptr %27, i64 0, i32 6
  %28 = load i32, ptr %buf_byte_idx18, align 8
  %tobool22.not = icmp sgt i32 %28, -1
  br i1 %tobool22.not, label %cond.end25, label %cond.true23

cond.true23:                                      ; preds = %if.then15
  call void @__assert_rtn(ptr noundef nonnull @__func__.putbits, ptr noundef nonnull @.str.10, i32 noundef 328, ptr noundef nonnull @.str.14) #15
  unreachable

cond.end25:                                       ; preds = %if.then15
  %29 = load ptr, ptr %bs.addr, align 8
  %buf26 = getelementptr inbounds %struct.bit_stream_struc, ptr %29, i64 0, i32 3
  %30 = load ptr, ptr %buf26, align 8
  %buf_byte_idx27 = getelementptr inbounds %struct.bit_stream_struc, ptr %29, i64 0, i32 6
  %31 = load i32, ptr %buf_byte_idx27, align 8
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %30, i64 %idxprom28
  store i8 0, ptr %arrayidx29, align 1
  br label %if.end30

if.end30:                                         ; preds = %cond.end25, %cond.end
  %32 = load i32, ptr %k, align 4
  %33 = load i32, ptr %j, align 4
  %sub31 = sub nsw i32 %33, %32
  store i32 %sub31, ptr %j, align 4
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_lame_util_0(ptr noundef %bs, i32 noundef %size) #7 {
entry:
  %conv = sext i32 %size to i64
  %call = call ptr @mem_alloc(i64 noundef %conv, ptr noundef nonnull @.str.12)
  %buf = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 3
  store ptr %call, ptr %buf, align 8
  %buf_size = getelementptr inbounds %struct.bit_stream_struc, ptr %bs, i64 0, i32 4
  store i32 %size, ptr %buf_size, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @strncpy(ptr noalias returned writeonly, ptr noalias nocapture readonly, i64) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(ptr nocapture, ptr nocapture, i64) #11

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold noreturn nounwind }

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
