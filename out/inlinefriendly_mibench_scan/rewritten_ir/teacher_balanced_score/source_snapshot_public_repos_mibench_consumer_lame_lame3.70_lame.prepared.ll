; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/lame.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/lame.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.bit_stream_struc = type { ptr, i32, ptr, ptr, i32, i64, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@bs = internal global %struct.bit_stream_struc zeroinitializer, align 8
@l3_side = internal global %struct.III_side_info_t zeroinitializer, align 8
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [65 x i8] c"Warning: highpass filter disabled.  highpass frequency to small\0A\00", align 1
@id3tag = external global %struct.ID3TAGDATA, align 4
@sfBandIndex = external global [6 x %struct.scalefac_struct], align 4
@scalefac_band = external global %struct.scalefac_struct, align 4
@lame_print_config.mode_names = internal global [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"j-stereo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dual-ch\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"single-ch\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Autoconverting from stereo to mono. Setting encoding to mono mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resampling:  input=%ikHz  output=%ikHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Using polyphase highpass filter, transition band: %.0f Hz -  %.0f Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Using polyphase lowpass filter,  transition band:  %.0f Hz - %.0f Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Analyzing %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Encoding %s to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  qval=%i\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4.1fx)  qval=%i\0A\00", align 1
@lame_encode_frame.frameBits = internal global i64 0, align 8
@lame_encode_frame.bitsPerSlot = internal global i64 0, align 8
@lame_encode_frame.frac_SpF = internal global double 0.000000e+00, align 8
@lame_encode_frame.slot_lag = internal global double 0.000000e+00, align 8
@lame_encode_frame.sentBits = internal global i64 0, align 8
@lame_encode_frame.ms_ratio = internal global [2 x double] zeroinitializer, align 8
@lame_encode_frame.ms_ener_ratio = internal global [2 x double] zeroinitializer, align 8
@__func__.lame_encode_frame = private unnamed_addr constant [18 x i8] c"lame_encode_frame\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"lame.c\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"mf_size>=(BLKSIZE+gfp->framesize-FFTOFFSET)\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Sent %ld bits = %ld slots plus %ld\0A\00", align 1
@fill_buffer_resample.itime = internal global [2 x double] zeroinitializer, align 8
@fill_buffer_resample.inbuf_old = internal global [2 x [5 x i16]] zeroinitializer, align 2
@fill_buffer_resample.init = internal global [2 x i32] zeroinitializer, align 4
@lame_encode_buffer.frame_buffered = internal global i32 0, align 4
@__func__.lame_encode_buffer = private unnamed_addr constant [19 x i8] c"lame_encode_buffer\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"MFSIZE>=mf_needed\00", align 1
@mfbuf = internal global [2 x [3056 x i16]] zeroinitializer, align 2
@mf_samples_to_encode = internal global i32 0, align 4
@mf_size = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"mf_size<=MFSIZE\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"nsamples==0\00", align 1
@lame_encode_buffer_interleaved.frame_buffered = internal global i32 0, align 4
@__func__.lame_encode_buffer_interleaved = private unnamed_addr constant [31 x i8] c"lame_encode_buffer_interleaved\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @lame_init_params(ptr noundef %gfp) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %compression_ratio = alloca float, align 4
  %band = alloca i32, align 4
  %band303 = alloca i32, align 4
  %maxband = alloca i32, align 4
  %minband = alloca i32, align 4
  %amp = alloca double, align 8
  %freq = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 @bs, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 @l3_side, i8 0, i64 528, i1 false)
  %0 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 39
  store i64 0, ptr %frameNum, align 8
  call void @InitFormatBitStream()
  %1 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %num_channels, align 8
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 8
  store i32 3, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 46
  store i32 2, ptr %stereo, align 4
  %5 = load ptr, ptr %gfp.addr, align 8
  %mode1 = getelementptr inbounds %struct.lame_global_flags, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %mode1, align 4
  %cmp2 = icmp eq i32 %6, 3
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %gfp.addr, align 8
  %stereo4 = getelementptr inbounds %struct.lame_global_flags, ptr %7, i32 0, i32 46
  store i32 1, ptr %stereo4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %out_samplerate, align 8
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end98

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %gfp.addr, align 8
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %in_samplerate, align 4
  %12 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate8 = getelementptr inbounds %struct.lame_global_flags, ptr %12, i32 0, i32 3
  store i32 %11, ptr %out_samplerate8, align 8
  %13 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate9 = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %out_samplerate9, align 8
  %cmp10 = icmp sge i32 %14, 48000
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %15 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate12 = getelementptr inbounds %struct.lame_global_flags, ptr %15, i32 0, i32 3
  store i32 48000, ptr %out_samplerate12, align 8
  br label %if.end38

if.else:                                          ; preds = %if.then7
  %16 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate13 = getelementptr inbounds %struct.lame_global_flags, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %out_samplerate13, align 8
  %cmp14 = icmp sge i32 %17, 44100
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %18 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate16 = getelementptr inbounds %struct.lame_global_flags, ptr %18, i32 0, i32 3
  store i32 44100, ptr %out_samplerate16, align 8
  br label %if.end37

if.else17:                                        ; preds = %if.else
  %19 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate18 = getelementptr inbounds %struct.lame_global_flags, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %out_samplerate18, align 8
  %cmp19 = icmp sge i32 %20, 32000
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %21 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate21 = getelementptr inbounds %struct.lame_global_flags, ptr %21, i32 0, i32 3
  store i32 32000, ptr %out_samplerate21, align 8
  br label %if.end36

if.else22:                                        ; preds = %if.else17
  %22 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate23 = getelementptr inbounds %struct.lame_global_flags, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %out_samplerate23, align 8
  %cmp24 = icmp sge i32 %23, 24000
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else22
  %24 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate26 = getelementptr inbounds %struct.lame_global_flags, ptr %24, i32 0, i32 3
  store i32 24000, ptr %out_samplerate26, align 8
  br label %if.end35

if.else27:                                        ; preds = %if.else22
  %25 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate28 = getelementptr inbounds %struct.lame_global_flags, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %out_samplerate28, align 8
  %cmp29 = icmp sge i32 %26, 22050
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else27
  %27 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate31 = getelementptr inbounds %struct.lame_global_flags, ptr %27, i32 0, i32 3
  store i32 22050, ptr %out_samplerate31, align 8
  br label %if.end34

if.else32:                                        ; preds = %if.else27
  %28 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate33 = getelementptr inbounds %struct.lame_global_flags, ptr %28, i32 0, i32 3
  store i32 16000, ptr %out_samplerate33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then30
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then25
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then20
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then15
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then11
  %29 = load ptr, ptr %gfp.addr, align 8
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %29, i32 0, i32 11
  %30 = load i32, ptr %brate, align 8
  %cmp39 = icmp sgt i32 %30, 0
  br i1 %cmp39, label %if.then40, label %if.end97

if.then40:                                        ; preds = %if.end38
  %31 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate41 = getelementptr inbounds %struct.lame_global_flags, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %out_samplerate41, align 8
  %mul = mul nsw i32 %32, 16
  %33 = load ptr, ptr %gfp.addr, align 8
  %stereo42 = getelementptr inbounds %struct.lame_global_flags, ptr %33, i32 0, i32 46
  %34 = load i32, ptr %stereo42, align 4
  %mul43 = mul nsw i32 %mul, %34
  %conv = sitofp i32 %mul43 to double
  %35 = load ptr, ptr %gfp.addr, align 8
  %brate44 = getelementptr inbounds %struct.lame_global_flags, ptr %35, i32 0, i32 11
  %36 = load i32, ptr %brate44, align 8
  %conv45 = sitofp i32 %36 to double
  %mul46 = fmul double 1.000000e+03, %conv45
  %div = fdiv double %conv, %mul46
  %conv47 = fptrunc double %div to float
  store float %conv47, ptr %compression_ratio, align 4
  %37 = load ptr, ptr %gfp.addr, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %37, i32 0, i32 21
  %38 = load i32, ptr %VBR, align 8
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.end96, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then40
  %39 = load float, ptr %compression_ratio, align 4
  %cmp48 = fcmp ogt float %39, 1.300000e+01
  br i1 %cmp48, label %if.then50, label %if.end96

if.then50:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %gfp.addr, align 8
  %brate51 = getelementptr inbounds %struct.lame_global_flags, ptr %40, i32 0, i32 11
  %41 = load i32, ptr %brate51, align 8
  %conv52 = sitofp i32 %41 to double
  %mul53 = fmul double 1.000000e+04, %conv52
  %42 = load ptr, ptr %gfp.addr, align 8
  %stereo54 = getelementptr inbounds %struct.lame_global_flags, ptr %42, i32 0, i32 46
  %43 = load i32, ptr %stereo54, align 4
  %mul55 = mul nsw i32 16, %43
  %conv56 = sitofp i32 %mul55 to double
  %div57 = fdiv double %mul53, %conv56
  %conv58 = fptosi double %div57 to i32
  %44 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate59 = getelementptr inbounds %struct.lame_global_flags, ptr %44, i32 0, i32 3
  store i32 %conv58, ptr %out_samplerate59, align 8
  %45 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate60 = getelementptr inbounds %struct.lame_global_flags, ptr %45, i32 0, i32 3
  %46 = load i32, ptr %out_samplerate60, align 8
  %cmp61 = icmp sle i32 %46, 16000
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then50
  %47 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate64 = getelementptr inbounds %struct.lame_global_flags, ptr %47, i32 0, i32 3
  store i32 16000, ptr %out_samplerate64, align 8
  br label %if.end95

if.else65:                                        ; preds = %if.then50
  %48 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate66 = getelementptr inbounds %struct.lame_global_flags, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %out_samplerate66, align 8
  %cmp67 = icmp sle i32 %49, 22050
  br i1 %cmp67, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.else65
  %50 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate70 = getelementptr inbounds %struct.lame_global_flags, ptr %50, i32 0, i32 3
  store i32 22050, ptr %out_samplerate70, align 8
  br label %if.end94

if.else71:                                        ; preds = %if.else65
  %51 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate72 = getelementptr inbounds %struct.lame_global_flags, ptr %51, i32 0, i32 3
  %52 = load i32, ptr %out_samplerate72, align 8
  %cmp73 = icmp sle i32 %52, 24000
  br i1 %cmp73, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.else71
  %53 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate76 = getelementptr inbounds %struct.lame_global_flags, ptr %53, i32 0, i32 3
  store i32 24000, ptr %out_samplerate76, align 8
  br label %if.end93

if.else77:                                        ; preds = %if.else71
  %54 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate78 = getelementptr inbounds %struct.lame_global_flags, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %out_samplerate78, align 8
  %cmp79 = icmp sle i32 %55, 32000
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else77
  %56 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate82 = getelementptr inbounds %struct.lame_global_flags, ptr %56, i32 0, i32 3
  store i32 32000, ptr %out_samplerate82, align 8
  br label %if.end92

if.else83:                                        ; preds = %if.else77
  %57 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate84 = getelementptr inbounds %struct.lame_global_flags, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %out_samplerate84, align 8
  %cmp85 = icmp sle i32 %58, 44100
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else83
  %59 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate88 = getelementptr inbounds %struct.lame_global_flags, ptr %59, i32 0, i32 3
  store i32 44100, ptr %out_samplerate88, align 8
  br label %if.end91

if.else89:                                        ; preds = %if.else83
  %60 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate90 = getelementptr inbounds %struct.lame_global_flags, ptr %60, i32 0, i32 3
  store i32 48000, ptr %out_samplerate90, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %if.then87
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then81
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then75
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then69
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then63
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %land.lhs.true, %if.then40
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end38
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end5
  %61 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate99 = getelementptr inbounds %struct.lame_global_flags, ptr %61, i32 0, i32 3
  %62 = load i32, ptr %out_samplerate99, align 8
  %cmp100 = icmp sle i32 %62, 24000
  %63 = zext i1 %cmp100 to i64
  %cond = select i1 %cmp100, i32 1, i32 2
  %64 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %64, i32 0, i32 45
  store i32 %cond, ptr %mode_gr, align 8
  %65 = load ptr, ptr %gfp.addr, align 8
  %encoder_delay = getelementptr inbounds %struct.lame_global_flags, ptr %65, i32 0, i32 41
  store i32 800, ptr %encoder_delay, align 8
  %66 = load ptr, ptr %gfp.addr, align 8
  %mode_gr102 = getelementptr inbounds %struct.lame_global_flags, ptr %66, i32 0, i32 45
  %67 = load i32, ptr %mode_gr102, align 8
  %mul103 = mul nsw i32 %67, 576
  %68 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %68, i32 0, i32 42
  store i32 %mul103, ptr %framesize, align 4
  %69 = load ptr, ptr %gfp.addr, align 8
  %brate104 = getelementptr inbounds %struct.lame_global_flags, ptr %69, i32 0, i32 11
  %70 = load i32, ptr %brate104, align 8
  %cmp105 = icmp eq i32 %70, 0
  br i1 %cmp105, label %if.then107, label %if.end115

if.then107:                                       ; preds = %if.end98
  %71 = load ptr, ptr %gfp.addr, align 8
  %brate108 = getelementptr inbounds %struct.lame_global_flags, ptr %71, i32 0, i32 11
  store i32 128, ptr %brate108, align 8
  %72 = load ptr, ptr %gfp.addr, align 8
  %mode_gr109 = getelementptr inbounds %struct.lame_global_flags, ptr %72, i32 0, i32 45
  %73 = load i32, ptr %mode_gr109, align 8
  %cmp110 = icmp eq i32 %73, 1
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.then107
  %74 = load ptr, ptr %gfp.addr, align 8
  %brate113 = getelementptr inbounds %struct.lame_global_flags, ptr %74, i32 0, i32 11
  store i32 64, ptr %brate113, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.then107
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end98
  %75 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %75, i32 0, i32 49
  store float 1.000000e+00, ptr %resample_ratio, align 8
  %76 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate116 = getelementptr inbounds %struct.lame_global_flags, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %out_samplerate116, align 8
  %78 = load ptr, ptr %gfp.addr, align 8
  %in_samplerate117 = getelementptr inbounds %struct.lame_global_flags, ptr %78, i32 0, i32 2
  %79 = load i32, ptr %in_samplerate117, align 4
  %cmp118 = icmp ne i32 %77, %79
  br i1 %cmp118, label %if.then120, label %if.end127

if.then120:                                       ; preds = %if.end115
  %80 = load ptr, ptr %gfp.addr, align 8
  %in_samplerate121 = getelementptr inbounds %struct.lame_global_flags, ptr %80, i32 0, i32 2
  %81 = load i32, ptr %in_samplerate121, align 4
  %conv122 = sitofp i32 %81 to float
  %82 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate123 = getelementptr inbounds %struct.lame_global_flags, ptr %82, i32 0, i32 3
  %83 = load i32, ptr %out_samplerate123, align 8
  %conv124 = sitofp i32 %83 to float
  %div125 = fdiv float %conv122, %conv124
  %84 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio126 = getelementptr inbounds %struct.lame_global_flags, ptr %84, i32 0, i32 49
  store float %div125, ptr %resample_ratio126, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %if.end115
  %85 = load ptr, ptr %gfp.addr, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %85, i32 0, i32 40
  store i64 0, ptr %totalframes, align 8
  %86 = load ptr, ptr %gfp.addr, align 8
  %num_samples = getelementptr inbounds %struct.lame_global_flags, ptr %86, i32 0, i32 0
  %87 = load i64, ptr %num_samples, align 8
  %conv128 = uitofp i64 %87 to float
  %88 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio129 = getelementptr inbounds %struct.lame_global_flags, ptr %88, i32 0, i32 49
  %89 = load float, ptr %resample_ratio129, align 8
  %90 = load ptr, ptr %gfp.addr, align 8
  %framesize130 = getelementptr inbounds %struct.lame_global_flags, ptr %90, i32 0, i32 42
  %91 = load i32, ptr %framesize130, align 4
  %conv131 = sitofp i32 %91 to float
  %mul132 = fmul float %89, %conv131
  %div133 = fdiv float %conv128, %mul132
  %add = fadd float 2.000000e+00, %div133
  %conv134 = fptosi float %add to i64
  %92 = load ptr, ptr %gfp.addr, align 8
  %totalframes135 = getelementptr inbounds %struct.lame_global_flags, ptr %92, i32 0, i32 40
  store i64 %conv134, ptr %totalframes135, align 8
  %93 = load ptr, ptr %gfp.addr, align 8
  %brate136 = getelementptr inbounds %struct.lame_global_flags, ptr %93, i32 0, i32 11
  %94 = load i32, ptr %brate136, align 8
  %cmp137 = icmp sge i32 %94, 320
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.end127
  %95 = load ptr, ptr %gfp.addr, align 8
  %VBR140 = getelementptr inbounds %struct.lame_global_flags, ptr %95, i32 0, i32 21
  store i32 0, ptr %VBR140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end127
  %96 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate142 = getelementptr inbounds %struct.lame_global_flags, ptr %96, i32 0, i32 3
  %97 = load i32, ptr %out_samplerate142, align 8
  %mul143 = mul nsw i32 %97, 16
  %98 = load ptr, ptr %gfp.addr, align 8
  %stereo144 = getelementptr inbounds %struct.lame_global_flags, ptr %98, i32 0, i32 46
  %99 = load i32, ptr %stereo144, align 4
  %mul145 = mul nsw i32 %mul143, %99
  %conv146 = sitofp i32 %mul145 to double
  %100 = load ptr, ptr %gfp.addr, align 8
  %brate147 = getelementptr inbounds %struct.lame_global_flags, ptr %100, i32 0, i32 11
  %101 = load i32, ptr %brate147, align 8
  %conv148 = sitofp i32 %101 to double
  %mul149 = fmul double 1.000000e+03, %conv148
  %div150 = fdiv double %conv146, %mul149
  %conv151 = fptrunc double %div150 to float
  store float %conv151, ptr %compression_ratio, align 4
  %102 = load ptr, ptr %gfp.addr, align 8
  %VBR152 = getelementptr inbounds %struct.lame_global_flags, ptr %102, i32 0, i32 21
  %103 = load i32, ptr %VBR152, align 8
  %tobool153 = icmp ne i32 %103, 0
  br i1 %tobool153, label %land.lhs.true154, label %if.end161

land.lhs.true154:                                 ; preds = %if.end141
  %104 = load float, ptr %compression_ratio, align 4
  %cmp155 = fcmp ogt float %104, 1.100000e+01
  br i1 %cmp155, label %if.then157, label %if.end161

if.then157:                                       ; preds = %land.lhs.true154
  %105 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %105, i32 0, i32 22
  %106 = load i32, ptr %VBR_q, align 4
  %conv158 = sitofp i32 %106 to double
  %add159 = fadd double 4.400000e+00, %conv158
  %conv160 = fptrunc double %add159 to float
  store float %conv160, ptr %compression_ratio, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then157, %land.lhs.true154, %if.end141
  %107 = load ptr, ptr %gfp.addr, align 8
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, ptr %107, i32 0, i32 9
  %108 = load i32, ptr %mode_fixed, align 8
  %tobool162 = icmp ne i32 %108, 0
  br i1 %tobool162, label %if.end173, label %land.lhs.true163

land.lhs.true163:                                 ; preds = %if.end161
  %109 = load ptr, ptr %gfp.addr, align 8
  %mode164 = getelementptr inbounds %struct.lame_global_flags, ptr %109, i32 0, i32 8
  %110 = load i32, ptr %mode164, align 4
  %cmp165 = icmp ne i32 %110, 3
  br i1 %cmp165, label %if.then167, label %if.end173

if.then167:                                       ; preds = %land.lhs.true163
  %111 = load float, ptr %compression_ratio, align 4
  %cmp168 = fcmp olt float %111, 9.000000e+00
  br i1 %cmp168, label %if.then170, label %if.end172

if.then170:                                       ; preds = %if.then167
  %112 = load ptr, ptr %gfp.addr, align 8
  %mode171 = getelementptr inbounds %struct.lame_global_flags, ptr %112, i32 0, i32 8
  store i32 0, ptr %mode171, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.then167
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %land.lhs.true163, %if.end161
  %113 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %113, i32 0, i32 25
  %114 = load i32, ptr %lowpassfreq, align 8
  %cmp174 = icmp eq i32 %114, 0
  br i1 %cmp174, label %if.then176, label %if.end192

if.then176:                                       ; preds = %if.end173
  %115 = load float, ptr %compression_ratio, align 4
  %conv177 = fpext float %115 to double
  %div178 = fdiv double %conv177, 1.600000e+01
  %116 = call double @llvm.log.f64(double %div178)
  %117 = call double @llvm.fmuladd.f64(double -1.800000e+01, double %116, double 1.450000e+01)
  %118 = call double @llvm.floor.f64(double %117)
  %add180 = fadd double 1.000000e+00, %118
  %conv181 = fptosi double %add180 to i32
  store i32 %conv181, ptr %band, align 4
  %119 = load i32, ptr %band, align 4
  %cmp182 = icmp slt i32 %119, 31
  br i1 %cmp182, label %if.then184, label %if.end191

if.then184:                                       ; preds = %if.then176
  %120 = load i32, ptr %band, align 4
  %conv185 = sitofp i32 %120 to double
  %div186 = fdiv double %conv185, 3.100000e+01
  %conv187 = fptrunc double %div186 to float
  %121 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %121, i32 0, i32 53
  store float %conv187, ptr %lowpass1, align 8
  %122 = load i32, ptr %band, align 4
  %conv188 = sitofp i32 %122 to double
  %div189 = fdiv double %conv188, 3.100000e+01
  %conv190 = fptrunc double %div189 to float
  %123 = load ptr, ptr %gfp.addr, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %123, i32 0, i32 54
  store float %conv190, ptr %lowpass2, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then184, %if.then176
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.end173
  %124 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %124, i32 0, i32 26
  %125 = load i32, ptr %highpassfreq, align 4
  %cmp193 = icmp sgt i32 %125, 0
  br i1 %cmp193, label %if.then195, label %if.end240

if.then195:                                       ; preds = %if.end192
  %126 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq196 = getelementptr inbounds %struct.lame_global_flags, ptr %126, i32 0, i32 26
  %127 = load i32, ptr %highpassfreq196, align 4
  %conv197 = sitofp i32 %127 to double
  %mul198 = fmul double 2.000000e+00, %conv197
  %128 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate199 = getelementptr inbounds %struct.lame_global_flags, ptr %128, i32 0, i32 3
  %129 = load i32, ptr %out_samplerate199, align 8
  %conv200 = sitofp i32 %129 to double
  %div201 = fdiv double %mul198, %conv200
  %conv202 = fptrunc double %div201 to float
  %130 = load ptr, ptr %gfp.addr, align 8
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %130, i32 0, i32 55
  store float %conv202, ptr %highpass1, align 8
  %131 = load ptr, ptr %gfp.addr, align 8
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %131, i32 0, i32 28
  %132 = load i32, ptr %highpasswidth, align 4
  %cmp203 = icmp sge i32 %132, 0
  br i1 %cmp203, label %if.then205, label %if.else215

if.then205:                                       ; preds = %if.then195
  %133 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq206 = getelementptr inbounds %struct.lame_global_flags, ptr %133, i32 0, i32 26
  %134 = load i32, ptr %highpassfreq206, align 4
  %135 = load ptr, ptr %gfp.addr, align 8
  %highpasswidth207 = getelementptr inbounds %struct.lame_global_flags, ptr %135, i32 0, i32 28
  %136 = load i32, ptr %highpasswidth207, align 4
  %add208 = add nsw i32 %134, %136
  %conv209 = sitofp i32 %add208 to double
  %mul210 = fmul double 2.000000e+00, %conv209
  %137 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate211 = getelementptr inbounds %struct.lame_global_flags, ptr %137, i32 0, i32 3
  %138 = load i32, ptr %out_samplerate211, align 8
  %conv212 = sitofp i32 %138 to double
  %div213 = fdiv double %mul210, %conv212
  %conv214 = fptrunc double %div213 to float
  %139 = load ptr, ptr %gfp.addr, align 8
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %139, i32 0, i32 56
  store float %conv214, ptr %highpass2, align 4
  br label %if.end224

if.else215:                                       ; preds = %if.then195
  %140 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq216 = getelementptr inbounds %struct.lame_global_flags, ptr %140, i32 0, i32 26
  %141 = load i32, ptr %highpassfreq216, align 4
  %conv217 = sitofp i32 %141 to double
  %mul218 = fmul double 2.000000e+00, %conv217
  %142 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate219 = getelementptr inbounds %struct.lame_global_flags, ptr %142, i32 0, i32 3
  %143 = load i32, ptr %out_samplerate219, align 8
  %conv220 = sitofp i32 %143 to double
  %div221 = fdiv double %mul218, %conv220
  %conv222 = fptrunc double %div221 to float
  %144 = load ptr, ptr %gfp.addr, align 8
  %highpass2223 = getelementptr inbounds %struct.lame_global_flags, ptr %144, i32 0, i32 56
  store float %conv222, ptr %highpass2223, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.else215, %if.then205
  %145 = load ptr, ptr %gfp.addr, align 8
  %highpass1225 = getelementptr inbounds %struct.lame_global_flags, ptr %145, i32 0, i32 55
  %146 = load float, ptr %highpass1225, align 8
  %cmp226 = fcmp olt float 1.000000e+00, %146
  br i1 %cmp226, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end224
  br label %cond.end

cond.false:                                       ; preds = %if.end224
  %147 = load ptr, ptr %gfp.addr, align 8
  %highpass1228 = getelementptr inbounds %struct.lame_global_flags, ptr %147, i32 0, i32 55
  %148 = load float, ptr %highpass1228, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond229 = phi float [ 1.000000e+00, %cond.true ], [ %148, %cond.false ]
  %149 = load ptr, ptr %gfp.addr, align 8
  %highpass1230 = getelementptr inbounds %struct.lame_global_flags, ptr %149, i32 0, i32 55
  store float %cond229, ptr %highpass1230, align 8
  %150 = load ptr, ptr %gfp.addr, align 8
  %highpass2231 = getelementptr inbounds %struct.lame_global_flags, ptr %150, i32 0, i32 56
  %151 = load float, ptr %highpass2231, align 4
  %cmp232 = fcmp olt float 1.000000e+00, %151
  br i1 %cmp232, label %cond.true234, label %cond.false235

cond.true234:                                     ; preds = %cond.end
  br label %cond.end237

cond.false235:                                    ; preds = %cond.end
  %152 = load ptr, ptr %gfp.addr, align 8
  %highpass2236 = getelementptr inbounds %struct.lame_global_flags, ptr %152, i32 0, i32 56
  %153 = load float, ptr %highpass2236, align 4
  br label %cond.end237

cond.end237:                                      ; preds = %cond.false235, %cond.true234
  %cond238 = phi float [ 1.000000e+00, %cond.true234 ], [ %153, %cond.false235 ]
  %154 = load ptr, ptr %gfp.addr, align 8
  %highpass2239 = getelementptr inbounds %struct.lame_global_flags, ptr %154, i32 0, i32 56
  store float %cond238, ptr %highpass2239, align 4
  br label %if.end240

if.end240:                                        ; preds = %cond.end237, %if.end192
  %155 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq241 = getelementptr inbounds %struct.lame_global_flags, ptr %155, i32 0, i32 25
  %156 = load i32, ptr %lowpassfreq241, align 8
  %cmp242 = icmp sgt i32 %156, 0
  br i1 %cmp242, label %if.then244, label %if.end299

if.then244:                                       ; preds = %if.end240
  %157 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq245 = getelementptr inbounds %struct.lame_global_flags, ptr %157, i32 0, i32 25
  %158 = load i32, ptr %lowpassfreq245, align 8
  %conv246 = sitofp i32 %158 to double
  %mul247 = fmul double 2.000000e+00, %conv246
  %159 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate248 = getelementptr inbounds %struct.lame_global_flags, ptr %159, i32 0, i32 3
  %160 = load i32, ptr %out_samplerate248, align 8
  %conv249 = sitofp i32 %160 to double
  %div250 = fdiv double %mul247, %conv249
  %conv251 = fptrunc double %div250 to float
  %161 = load ptr, ptr %gfp.addr, align 8
  %lowpass2252 = getelementptr inbounds %struct.lame_global_flags, ptr %161, i32 0, i32 54
  store float %conv251, ptr %lowpass2252, align 4
  %162 = load ptr, ptr %gfp.addr, align 8
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %162, i32 0, i32 27
  %163 = load i32, ptr %lowpasswidth, align 8
  %cmp253 = icmp sge i32 %163, 0
  br i1 %cmp253, label %if.then255, label %if.else271

if.then255:                                       ; preds = %if.then244
  %164 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq256 = getelementptr inbounds %struct.lame_global_flags, ptr %164, i32 0, i32 25
  %165 = load i32, ptr %lowpassfreq256, align 8
  %166 = load ptr, ptr %gfp.addr, align 8
  %lowpasswidth257 = getelementptr inbounds %struct.lame_global_flags, ptr %166, i32 0, i32 27
  %167 = load i32, ptr %lowpasswidth257, align 8
  %sub = sub nsw i32 %165, %167
  %conv258 = sitofp i32 %sub to double
  %mul259 = fmul double 2.000000e+00, %conv258
  %168 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate260 = getelementptr inbounds %struct.lame_global_flags, ptr %168, i32 0, i32 3
  %169 = load i32, ptr %out_samplerate260, align 8
  %conv261 = sitofp i32 %169 to double
  %div262 = fdiv double %mul259, %conv261
  %conv263 = fptrunc double %div262 to float
  %170 = load ptr, ptr %gfp.addr, align 8
  %lowpass1264 = getelementptr inbounds %struct.lame_global_flags, ptr %170, i32 0, i32 53
  store float %conv263, ptr %lowpass1264, align 8
  %171 = load ptr, ptr %gfp.addr, align 8
  %lowpass1265 = getelementptr inbounds %struct.lame_global_flags, ptr %171, i32 0, i32 53
  %172 = load float, ptr %lowpass1265, align 8
  %cmp266 = fcmp olt float %172, 0.000000e+00
  br i1 %cmp266, label %if.then268, label %if.end270

if.then268:                                       ; preds = %if.then255
  %173 = load ptr, ptr %gfp.addr, align 8
  %lowpass1269 = getelementptr inbounds %struct.lame_global_flags, ptr %173, i32 0, i32 53
  store float 0.000000e+00, ptr %lowpass1269, align 8
  br label %if.end270

if.end270:                                        ; preds = %if.then268, %if.then255
  br label %if.end280

if.else271:                                       ; preds = %if.then244
  %174 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq272 = getelementptr inbounds %struct.lame_global_flags, ptr %174, i32 0, i32 25
  %175 = load i32, ptr %lowpassfreq272, align 8
  %conv273 = sitofp i32 %175 to double
  %mul274 = fmul double 2.000000e+00, %conv273
  %176 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate275 = getelementptr inbounds %struct.lame_global_flags, ptr %176, i32 0, i32 3
  %177 = load i32, ptr %out_samplerate275, align 8
  %conv276 = sitofp i32 %177 to double
  %div277 = fdiv double %mul274, %conv276
  %conv278 = fptrunc double %div277 to float
  %178 = load ptr, ptr %gfp.addr, align 8
  %lowpass1279 = getelementptr inbounds %struct.lame_global_flags, ptr %178, i32 0, i32 53
  store float %conv278, ptr %lowpass1279, align 8
  br label %if.end280

if.end280:                                        ; preds = %if.else271, %if.end270
  %179 = load ptr, ptr %gfp.addr, align 8
  %lowpass1281 = getelementptr inbounds %struct.lame_global_flags, ptr %179, i32 0, i32 53
  %180 = load float, ptr %lowpass1281, align 8
  %cmp282 = fcmp olt float 1.000000e+00, %180
  br i1 %cmp282, label %cond.true284, label %cond.false285

cond.true284:                                     ; preds = %if.end280
  br label %cond.end287

cond.false285:                                    ; preds = %if.end280
  %181 = load ptr, ptr %gfp.addr, align 8
  %lowpass1286 = getelementptr inbounds %struct.lame_global_flags, ptr %181, i32 0, i32 53
  %182 = load float, ptr %lowpass1286, align 8
  br label %cond.end287

cond.end287:                                      ; preds = %cond.false285, %cond.true284
  %cond288 = phi float [ 1.000000e+00, %cond.true284 ], [ %182, %cond.false285 ]
  %183 = load ptr, ptr %gfp.addr, align 8
  %lowpass1289 = getelementptr inbounds %struct.lame_global_flags, ptr %183, i32 0, i32 53
  store float %cond288, ptr %lowpass1289, align 8
  %184 = load ptr, ptr %gfp.addr, align 8
  %lowpass2290 = getelementptr inbounds %struct.lame_global_flags, ptr %184, i32 0, i32 54
  %185 = load float, ptr %lowpass2290, align 4
  %cmp291 = fcmp olt float 1.000000e+00, %185
  br i1 %cmp291, label %cond.true293, label %cond.false294

cond.true293:                                     ; preds = %cond.end287
  br label %cond.end296

cond.false294:                                    ; preds = %cond.end287
  %186 = load ptr, ptr %gfp.addr, align 8
  %lowpass2295 = getelementptr inbounds %struct.lame_global_flags, ptr %186, i32 0, i32 54
  %187 = load float, ptr %lowpass2295, align 4
  br label %cond.end296

cond.end296:                                      ; preds = %cond.false294, %cond.true293
  %cond297 = phi float [ 1.000000e+00, %cond.true293 ], [ %187, %cond.false294 ]
  %188 = load ptr, ptr %gfp.addr, align 8
  %lowpass2298 = getelementptr inbounds %struct.lame_global_flags, ptr %188, i32 0, i32 54
  store float %cond297, ptr %lowpass2298, align 4
  br label %if.end299

if.end299:                                        ; preds = %cond.end296, %if.end240
  %189 = load ptr, ptr %gfp.addr, align 8
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %189, i32 0, i32 59
  %190 = load i32, ptr %filter_type, align 8
  %cmp300 = icmp eq i32 %190, 0
  br i1 %cmp300, label %if.then302, label %if.end474

if.then302:                                       ; preds = %if.end299
  %191 = load ptr, ptr %gfp.addr, align 8
  %lowpass1304 = getelementptr inbounds %struct.lame_global_flags, ptr %191, i32 0, i32 53
  %192 = load float, ptr %lowpass1304, align 8
  %cmp305 = fcmp ogt float %192, 0.000000e+00
  br i1 %cmp305, label %if.then307, label %if.end379

if.then307:                                       ; preds = %if.then302
  store i32 999, ptr %minband, align 4
  store i32 -1, ptr %maxband, align 4
  store i32 0, ptr %band303, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then307
  %193 = load i32, ptr %band303, align 4
  %cmp308 = icmp sle i32 %193, 31
  br i1 %cmp308, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %194 = load i32, ptr %band303, align 4
  %conv310 = sitofp i32 %194 to double
  %div311 = fdiv double %conv310, 3.100000e+01
  store double %div311, ptr %freq, align 8
  store double 1.000000e+00, ptr %amp, align 8
  %195 = load double, ptr %freq, align 8
  %196 = load ptr, ptr %gfp.addr, align 8
  %lowpass2312 = getelementptr inbounds %struct.lame_global_flags, ptr %196, i32 0, i32 54
  %197 = load float, ptr %lowpass2312, align 4
  %conv313 = fpext float %197 to double
  %cmp314 = fcmp oge double %195, %conv313
  br i1 %cmp314, label %if.then316, label %if.end325

if.then316:                                       ; preds = %for.body
  %198 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %198, i32 0, i32 57
  %199 = load i32, ptr %lowpass_band, align 8
  %200 = load i32, ptr %band303, align 4
  %cmp317 = icmp slt i32 %199, %200
  br i1 %cmp317, label %cond.true319, label %cond.false321

cond.true319:                                     ; preds = %if.then316
  %201 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band320 = getelementptr inbounds %struct.lame_global_flags, ptr %201, i32 0, i32 57
  %202 = load i32, ptr %lowpass_band320, align 8
  br label %cond.end322

cond.false321:                                    ; preds = %if.then316
  %203 = load i32, ptr %band303, align 4
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false321, %cond.true319
  %cond323 = phi i32 [ %202, %cond.true319 ], [ %203, %cond.false321 ]
  %204 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band324 = getelementptr inbounds %struct.lame_global_flags, ptr %204, i32 0, i32 57
  store i32 %cond323, ptr %lowpass_band324, align 8
  store double 0.000000e+00, ptr %amp, align 8
  br label %if.end325

if.end325:                                        ; preds = %cond.end322, %for.body
  %205 = load ptr, ptr %gfp.addr, align 8
  %lowpass1326 = getelementptr inbounds %struct.lame_global_flags, ptr %205, i32 0, i32 53
  %206 = load float, ptr %lowpass1326, align 8
  %conv327 = fpext float %206 to double
  %207 = load double, ptr %freq, align 8
  %cmp328 = fcmp olt double %conv327, %207
  br i1 %cmp328, label %land.lhs.true330, label %if.end357

land.lhs.true330:                                 ; preds = %if.end325
  %208 = load double, ptr %freq, align 8
  %209 = load ptr, ptr %gfp.addr, align 8
  %lowpass2331 = getelementptr inbounds %struct.lame_global_flags, ptr %209, i32 0, i32 54
  %210 = load float, ptr %lowpass2331, align 4
  %conv332 = fpext float %210 to double
  %cmp333 = fcmp olt double %208, %conv332
  br i1 %cmp333, label %if.then335, label %if.end357

if.then335:                                       ; preds = %land.lhs.true330
  %211 = load i32, ptr %minband, align 4
  %212 = load i32, ptr %band303, align 4
  %cmp336 = icmp slt i32 %211, %212
  br i1 %cmp336, label %cond.true338, label %cond.false339

cond.true338:                                     ; preds = %if.then335
  %213 = load i32, ptr %minband, align 4
  br label %cond.end340

cond.false339:                                    ; preds = %if.then335
  %214 = load i32, ptr %band303, align 4
  br label %cond.end340

cond.end340:                                      ; preds = %cond.false339, %cond.true338
  %cond341 = phi i32 [ %213, %cond.true338 ], [ %214, %cond.false339 ]
  store i32 %cond341, ptr %minband, align 4
  %215 = load i32, ptr %maxband, align 4
  %216 = load i32, ptr %band303, align 4
  %cmp342 = icmp sgt i32 %215, %216
  br i1 %cmp342, label %cond.true344, label %cond.false345

cond.true344:                                     ; preds = %cond.end340
  %217 = load i32, ptr %maxband, align 4
  br label %cond.end346

cond.false345:                                    ; preds = %cond.end340
  %218 = load i32, ptr %band303, align 4
  br label %cond.end346

cond.end346:                                      ; preds = %cond.false345, %cond.true344
  %cond347 = phi i32 [ %217, %cond.true344 ], [ %218, %cond.false345 ]
  store i32 %cond347, ptr %maxband, align 4
  %219 = load ptr, ptr %gfp.addr, align 8
  %lowpass1348 = getelementptr inbounds %struct.lame_global_flags, ptr %219, i32 0, i32 53
  %220 = load float, ptr %lowpass1348, align 8
  %conv349 = fpext float %220 to double
  %221 = load double, ptr %freq, align 8
  %sub350 = fsub double %conv349, %221
  %mul351 = fmul double 0x3FF921FB54442D18, %sub350
  %222 = load ptr, ptr %gfp.addr, align 8
  %lowpass2352 = getelementptr inbounds %struct.lame_global_flags, ptr %222, i32 0, i32 54
  %223 = load float, ptr %lowpass2352, align 4
  %224 = load ptr, ptr %gfp.addr, align 8
  %lowpass1353 = getelementptr inbounds %struct.lame_global_flags, ptr %224, i32 0, i32 53
  %225 = load float, ptr %lowpass1353, align 8
  %sub354 = fsub float %223, %225
  %conv355 = fpext float %sub354 to double
  %div356 = fdiv double %mul351, %conv355
  %226 = call double @llvm.cos.f64(double %div356)
  store double %226, ptr %amp, align 8
  br label %if.end357

if.end357:                                        ; preds = %cond.end346, %land.lhs.true330, %if.end325
  br label %for.inc

for.inc:                                          ; preds = %if.end357
  %227 = load i32, ptr %band303, align 4
  %inc = add nsw i32 %227, 1
  store i32 %inc, ptr %band303, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %228 = load i32, ptr %minband, align 4
  %cmp358 = icmp eq i32 %228, 999
  br i1 %cmp358, label %if.then360, label %if.else367

if.then360:                                       ; preds = %for.end
  %229 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band361 = getelementptr inbounds %struct.lame_global_flags, ptr %229, i32 0, i32 57
  %230 = load i32, ptr %lowpass_band361, align 8
  %conv362 = sitofp i32 %230 to double
  %sub363 = fsub double %conv362, 7.500000e-01
  %div364 = fdiv double %sub363, 3.100000e+01
  %conv365 = fptrunc double %div364 to float
  %231 = load ptr, ptr %gfp.addr, align 8
  %lowpass1366 = getelementptr inbounds %struct.lame_global_flags, ptr %231, i32 0, i32 53
  store float %conv365, ptr %lowpass1366, align 8
  br label %if.end373

if.else367:                                       ; preds = %for.end
  %232 = load i32, ptr %minband, align 4
  %conv368 = sitofp i32 %232 to double
  %sub369 = fsub double %conv368, 7.500000e-01
  %div370 = fdiv double %sub369, 3.100000e+01
  %conv371 = fptrunc double %div370 to float
  %233 = load ptr, ptr %gfp.addr, align 8
  %lowpass1372 = getelementptr inbounds %struct.lame_global_flags, ptr %233, i32 0, i32 53
  store float %conv371, ptr %lowpass1372, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.else367, %if.then360
  %234 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band374 = getelementptr inbounds %struct.lame_global_flags, ptr %234, i32 0, i32 57
  %235 = load i32, ptr %lowpass_band374, align 8
  %conv375 = sitofp i32 %235 to double
  %div376 = fdiv double %conv375, 3.100000e+01
  %conv377 = fptrunc double %div376 to float
  %236 = load ptr, ptr %gfp.addr, align 8
  %lowpass2378 = getelementptr inbounds %struct.lame_global_flags, ptr %236, i32 0, i32 54
  store float %conv377, ptr %lowpass2378, align 4
  br label %if.end379

if.end379:                                        ; preds = %if.end373, %if.then302
  %237 = load ptr, ptr %gfp.addr, align 8
  %highpass2380 = getelementptr inbounds %struct.lame_global_flags, ptr %237, i32 0, i32 56
  %238 = load float, ptr %highpass2380, align 4
  %cmp381 = fcmp ogt float %238, 0.000000e+00
  br i1 %cmp381, label %if.then383, label %if.end392

if.then383:                                       ; preds = %if.end379
  %239 = load ptr, ptr %gfp.addr, align 8
  %highpass2384 = getelementptr inbounds %struct.lame_global_flags, ptr %239, i32 0, i32 56
  %240 = load float, ptr %highpass2384, align 4
  %conv385 = fpext float %240 to double
  %cmp386 = fcmp olt double %conv385, 0x3F964BF964BF964C
  br i1 %cmp386, label %if.then388, label %if.end391

if.then388:                                       ; preds = %if.then383
  %241 = load ptr, ptr %gfp.addr, align 8
  %highpass1389 = getelementptr inbounds %struct.lame_global_flags, ptr %241, i32 0, i32 55
  store float 0.000000e+00, ptr %highpass1389, align 8
  %242 = load ptr, ptr %gfp.addr, align 8
  %highpass2390 = getelementptr inbounds %struct.lame_global_flags, ptr %242, i32 0, i32 56
  store float 0.000000e+00, ptr %highpass2390, align 4
  %243 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef @.str)
  br label %if.end391

if.end391:                                        ; preds = %if.then388, %if.then383
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %if.end379
  %244 = load ptr, ptr %gfp.addr, align 8
  %highpass2393 = getelementptr inbounds %struct.lame_global_flags, ptr %244, i32 0, i32 56
  %245 = load float, ptr %highpass2393, align 4
  %cmp394 = fcmp ogt float %245, 0.000000e+00
  br i1 %cmp394, label %if.then396, label %if.end473

if.then396:                                       ; preds = %if.end392
  store i32 999, ptr %minband, align 4
  store i32 -1, ptr %maxband, align 4
  store i32 0, ptr %band303, align 4
  br label %for.cond397

for.cond397:                                      ; preds = %for.inc449, %if.then396
  %246 = load i32, ptr %band303, align 4
  %cmp398 = icmp sle i32 %246, 31
  br i1 %cmp398, label %for.body400, label %for.end451

for.body400:                                      ; preds = %for.cond397
  %247 = load i32, ptr %band303, align 4
  %conv401 = sitofp i32 %247 to double
  %div402 = fdiv double %conv401, 3.100000e+01
  store double %div402, ptr %freq, align 8
  store double 1.000000e+00, ptr %amp, align 8
  %248 = load double, ptr %freq, align 8
  %249 = load ptr, ptr %gfp.addr, align 8
  %highpass1403 = getelementptr inbounds %struct.lame_global_flags, ptr %249, i32 0, i32 55
  %250 = load float, ptr %highpass1403, align 8
  %conv404 = fpext float %250 to double
  %cmp405 = fcmp ole double %248, %conv404
  br i1 %cmp405, label %if.then407, label %if.end416

if.then407:                                       ; preds = %for.body400
  %251 = load ptr, ptr %gfp.addr, align 8
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %251, i32 0, i32 58
  %252 = load i32, ptr %highpass_band, align 4
  %253 = load i32, ptr %band303, align 4
  %cmp408 = icmp sgt i32 %252, %253
  br i1 %cmp408, label %cond.true410, label %cond.false412

cond.true410:                                     ; preds = %if.then407
  %254 = load ptr, ptr %gfp.addr, align 8
  %highpass_band411 = getelementptr inbounds %struct.lame_global_flags, ptr %254, i32 0, i32 58
  %255 = load i32, ptr %highpass_band411, align 4
  br label %cond.end413

cond.false412:                                    ; preds = %if.then407
  %256 = load i32, ptr %band303, align 4
  br label %cond.end413

cond.end413:                                      ; preds = %cond.false412, %cond.true410
  %cond414 = phi i32 [ %255, %cond.true410 ], [ %256, %cond.false412 ]
  %257 = load ptr, ptr %gfp.addr, align 8
  %highpass_band415 = getelementptr inbounds %struct.lame_global_flags, ptr %257, i32 0, i32 58
  store i32 %cond414, ptr %highpass_band415, align 4
  store double 0.000000e+00, ptr %amp, align 8
  br label %if.end416

if.end416:                                        ; preds = %cond.end413, %for.body400
  %258 = load ptr, ptr %gfp.addr, align 8
  %highpass1417 = getelementptr inbounds %struct.lame_global_flags, ptr %258, i32 0, i32 55
  %259 = load float, ptr %highpass1417, align 8
  %conv418 = fpext float %259 to double
  %260 = load double, ptr %freq, align 8
  %cmp419 = fcmp olt double %conv418, %260
  br i1 %cmp419, label %land.lhs.true421, label %if.end448

land.lhs.true421:                                 ; preds = %if.end416
  %261 = load double, ptr %freq, align 8
  %262 = load ptr, ptr %gfp.addr, align 8
  %highpass2422 = getelementptr inbounds %struct.lame_global_flags, ptr %262, i32 0, i32 56
  %263 = load float, ptr %highpass2422, align 4
  %conv423 = fpext float %263 to double
  %cmp424 = fcmp olt double %261, %conv423
  br i1 %cmp424, label %if.then426, label %if.end448

if.then426:                                       ; preds = %land.lhs.true421
  %264 = load i32, ptr %minband, align 4
  %265 = load i32, ptr %band303, align 4
  %cmp427 = icmp slt i32 %264, %265
  br i1 %cmp427, label %cond.true429, label %cond.false430

cond.true429:                                     ; preds = %if.then426
  %266 = load i32, ptr %minband, align 4
  br label %cond.end431

cond.false430:                                    ; preds = %if.then426
  %267 = load i32, ptr %band303, align 4
  br label %cond.end431

cond.end431:                                      ; preds = %cond.false430, %cond.true429
  %cond432 = phi i32 [ %266, %cond.true429 ], [ %267, %cond.false430 ]
  store i32 %cond432, ptr %minband, align 4
  %268 = load i32, ptr %maxband, align 4
  %269 = load i32, ptr %band303, align 4
  %cmp433 = icmp sgt i32 %268, %269
  br i1 %cmp433, label %cond.true435, label %cond.false436

cond.true435:                                     ; preds = %cond.end431
  %270 = load i32, ptr %maxband, align 4
  br label %cond.end437

cond.false436:                                    ; preds = %cond.end431
  %271 = load i32, ptr %band303, align 4
  br label %cond.end437

cond.end437:                                      ; preds = %cond.false436, %cond.true435
  %cond438 = phi i32 [ %270, %cond.true435 ], [ %271, %cond.false436 ]
  store i32 %cond438, ptr %maxband, align 4
  %272 = load ptr, ptr %gfp.addr, align 8
  %highpass2439 = getelementptr inbounds %struct.lame_global_flags, ptr %272, i32 0, i32 56
  %273 = load float, ptr %highpass2439, align 4
  %conv440 = fpext float %273 to double
  %274 = load double, ptr %freq, align 8
  %sub441 = fsub double %conv440, %274
  %mul442 = fmul double 0x3FF921FB54442D18, %sub441
  %275 = load ptr, ptr %gfp.addr, align 8
  %highpass2443 = getelementptr inbounds %struct.lame_global_flags, ptr %275, i32 0, i32 56
  %276 = load float, ptr %highpass2443, align 4
  %277 = load ptr, ptr %gfp.addr, align 8
  %highpass1444 = getelementptr inbounds %struct.lame_global_flags, ptr %277, i32 0, i32 55
  %278 = load float, ptr %highpass1444, align 8
  %sub445 = fsub float %276, %278
  %conv446 = fpext float %sub445 to double
  %div447 = fdiv double %mul442, %conv446
  %279 = call double @llvm.cos.f64(double %div447)
  store double %279, ptr %amp, align 8
  br label %if.end448

if.end448:                                        ; preds = %cond.end437, %land.lhs.true421, %if.end416
  br label %for.inc449

for.inc449:                                       ; preds = %if.end448
  %280 = load i32, ptr %band303, align 4
  %inc450 = add nsw i32 %280, 1
  store i32 %inc450, ptr %band303, align 4
  br label %for.cond397, !llvm.loop !8

for.end451:                                       ; preds = %for.cond397
  %281 = load ptr, ptr %gfp.addr, align 8
  %highpass_band452 = getelementptr inbounds %struct.lame_global_flags, ptr %281, i32 0, i32 58
  %282 = load i32, ptr %highpass_band452, align 4
  %conv453 = sitofp i32 %282 to double
  %div454 = fdiv double %conv453, 3.100000e+01
  %conv455 = fptrunc double %div454 to float
  %283 = load ptr, ptr %gfp.addr, align 8
  %highpass1456 = getelementptr inbounds %struct.lame_global_flags, ptr %283, i32 0, i32 55
  store float %conv455, ptr %highpass1456, align 8
  %284 = load i32, ptr %maxband, align 4
  %cmp457 = icmp eq i32 %284, -1
  br i1 %cmp457, label %if.then459, label %if.else466

if.then459:                                       ; preds = %for.end451
  %285 = load ptr, ptr %gfp.addr, align 8
  %highpass_band460 = getelementptr inbounds %struct.lame_global_flags, ptr %285, i32 0, i32 58
  %286 = load i32, ptr %highpass_band460, align 4
  %conv461 = sitofp i32 %286 to double
  %add462 = fadd double %conv461, 7.500000e-01
  %div463 = fdiv double %add462, 3.100000e+01
  %conv464 = fptrunc double %div463 to float
  %287 = load ptr, ptr %gfp.addr, align 8
  %highpass2465 = getelementptr inbounds %struct.lame_global_flags, ptr %287, i32 0, i32 56
  store float %conv464, ptr %highpass2465, align 4
  br label %if.end472

if.else466:                                       ; preds = %for.end451
  %288 = load i32, ptr %maxband, align 4
  %conv467 = sitofp i32 %288 to double
  %add468 = fadd double %conv467, 7.500000e-01
  %div469 = fdiv double %add468, 3.100000e+01
  %conv470 = fptrunc double %div469 to float
  %289 = load ptr, ptr %gfp.addr, align 8
  %highpass2471 = getelementptr inbounds %struct.lame_global_flags, ptr %289, i32 0, i32 56
  store float %conv470, ptr %highpass2471, align 4
  br label %if.end472

if.end472:                                        ; preds = %if.else466, %if.then459
  br label %if.end473

if.end473:                                        ; preds = %if.end472, %if.end392
  br label %if.end474

if.end474:                                        ; preds = %if.end473, %if.end299
  %290 = load ptr, ptr %gfp.addr, align 8
  %filter_type475 = getelementptr inbounds %struct.lame_global_flags, ptr %290, i32 0, i32 59
  %291 = load i32, ptr %filter_type475, align 8
  %cmp476 = icmp eq i32 %291, 1
  br i1 %cmp476, label %if.then478, label %if.end479

if.then478:                                       ; preds = %if.end474
  br label %if.end479

if.end479:                                        ; preds = %if.then478, %if.end474
  %292 = load ptr, ptr %gfp.addr, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %292, i32 0, i32 52
  store i32 0, ptr %mode_ext, align 4
  %293 = load ptr, ptr %gfp.addr, align 8
  %mode480 = getelementptr inbounds %struct.lame_global_flags, ptr %293, i32 0, i32 8
  %294 = load i32, ptr %mode480, align 4
  %cmp481 = icmp eq i32 %294, 3
  %295 = zext i1 %cmp481 to i64
  %cond483 = select i1 %cmp481, i32 1, i32 2
  %296 = load ptr, ptr %gfp.addr, align 8
  %stereo484 = getelementptr inbounds %struct.lame_global_flags, ptr %296, i32 0, i32 46
  store i32 %cond483, ptr %stereo484, align 4
  %297 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate485 = getelementptr inbounds %struct.lame_global_flags, ptr %297, i32 0, i32 3
  %298 = load i32, ptr %out_samplerate485, align 8
  %conv486 = sext i32 %298 to i64
  %299 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %299, i32 0, i32 43
  %call487 = call i32 @SmpFrqIndex(i64 noundef %conv486, ptr noundef %version)
  %300 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %300, i32 0, i32 51
  store i32 %call487, ptr %samplerate_index, align 8
  %301 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index488 = getelementptr inbounds %struct.lame_global_flags, ptr %301, i32 0, i32 51
  %302 = load i32, ptr %samplerate_index488, align 8
  %cmp489 = icmp slt i32 %302, 0
  br i1 %cmp489, label %if.then491, label %if.end492

if.then491:                                       ; preds = %if.end479
  %303 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %303)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end492:                                        ; preds = %if.end479
  %304 = load ptr, ptr %gfp.addr, align 8
  %brate493 = getelementptr inbounds %struct.lame_global_flags, ptr %304, i32 0, i32 11
  %305 = load i32, ptr %brate493, align 8
  %306 = load ptr, ptr %gfp.addr, align 8
  %version494 = getelementptr inbounds %struct.lame_global_flags, ptr %306, i32 0, i32 43
  %307 = load i32, ptr %version494, align 8
  %308 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate495 = getelementptr inbounds %struct.lame_global_flags, ptr %308, i32 0, i32 3
  %309 = load i32, ptr %out_samplerate495, align 8
  %call496 = call i32 @BitrateIndex(i32 noundef %305, i32 noundef %307, i32 noundef %309)
  %310 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %310, i32 0, i32 50
  store i32 %call496, ptr %bitrate_index, align 4
  %cmp497 = icmp slt i32 %call496, 0
  br i1 %cmp497, label %if.then499, label %if.end500

if.then499:                                       ; preds = %if.end492
  %311 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %311)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end500:                                        ; preds = %if.end492
  %312 = load ptr, ptr %gfp.addr, align 8
  %VBR501 = getelementptr inbounds %struct.lame_global_flags, ptr %312, i32 0, i32 21
  %313 = load i32, ptr %VBR501, align 8
  %tobool502 = icmp ne i32 %313, 0
  br i1 %tobool502, label %if.then503, label %if.end556

if.then503:                                       ; preds = %if.end500
  %314 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %314, i32 0, i32 24
  %315 = load i32, ptr %VBR_max_bitrate_kbps, align 4
  %cmp504 = icmp eq i32 0, %315
  br i1 %cmp504, label %if.then506, label %if.else530

if.then506:                                       ; preds = %if.then503
  %316 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %316, i32 0, i32 48
  store i32 13, ptr %VBR_max_bitrate, align 4
  %317 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %317, i32 0, i32 23
  %318 = load i32, ptr %VBR_min_bitrate_kbps, align 8
  %cmp507 = icmp sge i32 %318, 256
  br i1 %cmp507, label %if.then509, label %if.end511

if.then509:                                       ; preds = %if.then506
  %319 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate510 = getelementptr inbounds %struct.lame_global_flags, ptr %319, i32 0, i32 48
  store i32 14, ptr %VBR_max_bitrate510, align 4
  br label %if.end511

if.end511:                                        ; preds = %if.then509, %if.then506
  %320 = load ptr, ptr %gfp.addr, align 8
  %VBR_q512 = getelementptr inbounds %struct.lame_global_flags, ptr %320, i32 0, i32 22
  %321 = load i32, ptr %VBR_q512, align 4
  %cmp513 = icmp eq i32 %321, 0
  br i1 %cmp513, label %if.then515, label %if.end517

if.then515:                                       ; preds = %if.end511
  %322 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate516 = getelementptr inbounds %struct.lame_global_flags, ptr %322, i32 0, i32 48
  store i32 14, ptr %VBR_max_bitrate516, align 4
  br label %if.end517

if.end517:                                        ; preds = %if.then515, %if.end511
  %323 = load ptr, ptr %gfp.addr, align 8
  %VBR_q518 = getelementptr inbounds %struct.lame_global_flags, ptr %323, i32 0, i32 22
  %324 = load i32, ptr %VBR_q518, align 4
  %cmp519 = icmp sge i32 %324, 4
  br i1 %cmp519, label %if.then521, label %if.end523

if.then521:                                       ; preds = %if.end517
  %325 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate522 = getelementptr inbounds %struct.lame_global_flags, ptr %325, i32 0, i32 48
  store i32 12, ptr %VBR_max_bitrate522, align 4
  br label %if.end523

if.end523:                                        ; preds = %if.then521, %if.end517
  %326 = load ptr, ptr %gfp.addr, align 8
  %VBR_q524 = getelementptr inbounds %struct.lame_global_flags, ptr %326, i32 0, i32 22
  %327 = load i32, ptr %VBR_q524, align 4
  %cmp525 = icmp sge i32 %327, 8
  br i1 %cmp525, label %if.then527, label %if.end529

if.then527:                                       ; preds = %if.end523
  %328 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate528 = getelementptr inbounds %struct.lame_global_flags, ptr %328, i32 0, i32 48
  store i32 9, ptr %VBR_max_bitrate528, align 4
  br label %if.end529

if.end529:                                        ; preds = %if.then527, %if.end523
  br label %if.end540

if.else530:                                       ; preds = %if.then503
  %329 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate_kbps531 = getelementptr inbounds %struct.lame_global_flags, ptr %329, i32 0, i32 24
  %330 = load i32, ptr %VBR_max_bitrate_kbps531, align 4
  %331 = load ptr, ptr %gfp.addr, align 8
  %version532 = getelementptr inbounds %struct.lame_global_flags, ptr %331, i32 0, i32 43
  %332 = load i32, ptr %version532, align 8
  %333 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate533 = getelementptr inbounds %struct.lame_global_flags, ptr %333, i32 0, i32 3
  %334 = load i32, ptr %out_samplerate533, align 8
  %call534 = call i32 @BitrateIndex(i32 noundef %330, i32 noundef %332, i32 noundef %334)
  %335 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate535 = getelementptr inbounds %struct.lame_global_flags, ptr %335, i32 0, i32 48
  store i32 %call534, ptr %VBR_max_bitrate535, align 4
  %cmp536 = icmp slt i32 %call534, 0
  br i1 %cmp536, label %if.then538, label %if.end539

if.then538:                                       ; preds = %if.else530
  %336 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %336)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end539:                                        ; preds = %if.else530
  br label %if.end540

if.end540:                                        ; preds = %if.end539, %if.end529
  %337 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate_kbps541 = getelementptr inbounds %struct.lame_global_flags, ptr %337, i32 0, i32 23
  %338 = load i32, ptr %VBR_min_bitrate_kbps541, align 8
  %cmp542 = icmp eq i32 0, %338
  br i1 %cmp542, label %if.then544, label %if.else545

if.then544:                                       ; preds = %if.end540
  %339 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %339, i32 0, i32 47
  store i32 1, ptr %VBR_min_bitrate, align 8
  br label %if.end555

if.else545:                                       ; preds = %if.end540
  %340 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate_kbps546 = getelementptr inbounds %struct.lame_global_flags, ptr %340, i32 0, i32 23
  %341 = load i32, ptr %VBR_min_bitrate_kbps546, align 8
  %342 = load ptr, ptr %gfp.addr, align 8
  %version547 = getelementptr inbounds %struct.lame_global_flags, ptr %342, i32 0, i32 43
  %343 = load i32, ptr %version547, align 8
  %344 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate548 = getelementptr inbounds %struct.lame_global_flags, ptr %344, i32 0, i32 3
  %345 = load i32, ptr %out_samplerate548, align 8
  %call549 = call i32 @BitrateIndex(i32 noundef %341, i32 noundef %343, i32 noundef %345)
  %346 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate550 = getelementptr inbounds %struct.lame_global_flags, ptr %346, i32 0, i32 47
  store i32 %call549, ptr %VBR_min_bitrate550, align 8
  %cmp551 = icmp slt i32 %call549, 0
  br i1 %cmp551, label %if.then553, label %if.end554

if.then553:                                       ; preds = %if.else545
  %347 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %347)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end554:                                        ; preds = %if.else545
  br label %if.end555

if.end555:                                        ; preds = %if.end554, %if.then544
  br label %if.end556

if.end556:                                        ; preds = %if.end555, %if.end500
  %348 = load ptr, ptr %gfp.addr, align 8
  %VBR557 = getelementptr inbounds %struct.lame_global_flags, ptr %348, i32 0, i32 21
  %349 = load i32, ptr %VBR557, align 8
  %tobool558 = icmp ne i32 %349, 0
  br i1 %tobool558, label %if.then559, label %if.end568

if.then559:                                       ; preds = %if.end556
  %350 = load ptr, ptr %gfp.addr, align 8
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %350, i32 0, i32 6
  %351 = load i32, ptr %quality, align 4
  %cmp560 = icmp slt i32 %351, 2
  br i1 %cmp560, label %cond.true562, label %cond.false564

cond.true562:                                     ; preds = %if.then559
  %352 = load ptr, ptr %gfp.addr, align 8
  %quality563 = getelementptr inbounds %struct.lame_global_flags, ptr %352, i32 0, i32 6
  %353 = load i32, ptr %quality563, align 4
  br label %cond.end565

cond.false564:                                    ; preds = %if.then559
  br label %cond.end565

cond.end565:                                      ; preds = %cond.false564, %cond.true562
  %cond566 = phi i32 [ %353, %cond.true562 ], [ 2, %cond.false564 ]
  %354 = load ptr, ptr %gfp.addr, align 8
  %quality567 = getelementptr inbounds %struct.lame_global_flags, ptr %354, i32 0, i32 6
  store i32 %cond566, ptr %quality567, align 4
  br label %if.end568

if.end568:                                        ; preds = %cond.end565, %if.end556
  %355 = load ptr, ptr %gfp.addr, align 8
  %mode569 = getelementptr inbounds %struct.lame_global_flags, ptr %355, i32 0, i32 8
  %356 = load i32, ptr %mode569, align 4
  %cmp570 = icmp eq i32 %356, 3
  br i1 %cmp570, label %if.then572, label %if.end573

if.then572:                                       ; preds = %if.end568
  %357 = load ptr, ptr %gfp.addr, align 8
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %357, i32 0, i32 10
  store i32 0, ptr %force_ms, align 4
  br label %if.end573

if.end573:                                        ; preds = %if.then572, %if.end568
  %358 = load ptr, ptr %gfp.addr, align 8
  %VBR574 = getelementptr inbounds %struct.lame_global_flags, ptr %358, i32 0, i32 21
  %359 = load i32, ptr %VBR574, align 8
  %cmp575 = icmp eq i32 %359, 0
  br i1 %cmp575, label %if.then577, label %if.end578

if.then577:                                       ; preds = %if.end573
  %360 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %360, i32 0, i32 5
  store i32 0, ptr %bWriteVbrTag, align 8
  br label %if.end578

if.end578:                                        ; preds = %if.then577, %if.end573
  %361 = load ptr, ptr %gfp.addr, align 8
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %361, i32 0, i32 32
  %362 = load ptr, ptr %outPath, align 8
  %cmp579 = icmp ne ptr %362, null
  br i1 %cmp579, label %land.lhs.true581, label %if.end588

land.lhs.true581:                                 ; preds = %if.end578
  %363 = load ptr, ptr %gfp.addr, align 8
  %outPath582 = getelementptr inbounds %struct.lame_global_flags, ptr %363, i32 0, i32 32
  %364 = load ptr, ptr %outPath582, align 8
  %arrayidx = getelementptr inbounds i8, ptr %364, i64 0
  %365 = load i8, ptr %arrayidx, align 1
  %conv583 = sext i8 %365 to i32
  %cmp584 = icmp eq i32 %conv583, 45
  br i1 %cmp584, label %if.then586, label %if.end588

if.then586:                                       ; preds = %land.lhs.true581
  %366 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag587 = getelementptr inbounds %struct.lame_global_flags, ptr %366, i32 0, i32 5
  store i32 0, ptr %bWriteVbrTag587, align 8
  br label %if.end588

if.end588:                                        ; preds = %if.then586, %land.lhs.true581, %if.end578
  %367 = load ptr, ptr %gfp.addr, align 8
  %outPath589 = getelementptr inbounds %struct.lame_global_flags, ptr %367, i32 0, i32 32
  %368 = load ptr, ptr %outPath589, align 8
  %cmp590 = icmp eq ptr %368, null
  br i1 %cmp590, label %if.then597, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end588
  %369 = load ptr, ptr %gfp.addr, align 8
  %outPath592 = getelementptr inbounds %struct.lame_global_flags, ptr %369, i32 0, i32 32
  %370 = load ptr, ptr %outPath592, align 8
  %arrayidx593 = getelementptr inbounds i8, ptr %370, i64 0
  %371 = load i8, ptr %arrayidx593, align 1
  %conv594 = sext i8 %371 to i32
  %cmp595 = icmp eq i32 %conv594, 45
  br i1 %cmp595, label %if.then597, label %if.end598

if.then597:                                       ; preds = %lor.lhs.false, %if.end588
  store i32 0, ptr @id3tag, align 4
  br label %if.end598

if.end598:                                        ; preds = %if.then597, %lor.lhs.false
  %372 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %372, i32 0, i32 4
  %373 = load i32, ptr %gtkflag, align 4
  %tobool599 = icmp ne i32 %373, 0
  br i1 %tobool599, label %if.then600, label %if.end602

if.then600:                                       ; preds = %if.end598
  %374 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag601 = getelementptr inbounds %struct.lame_global_flags, ptr %374, i32 0, i32 5
  store i32 0, ptr %bWriteVbrTag601, align 8
  br label %if.end602

if.end602:                                        ; preds = %if.then600, %if.end598
  call void @init_bit_stream_w(ptr noundef @bs)
  %375 = load ptr, ptr %gfp.addr, align 8
  %quality603 = getelementptr inbounds %struct.lame_global_flags, ptr %375, i32 0, i32 6
  %376 = load i32, ptr %quality603, align 4
  %cmp604 = icmp eq i32 %376, 9
  br i1 %cmp604, label %if.then606, label %if.end608

if.then606:                                       ; preds = %if.end602
  %377 = load ptr, ptr %gfp.addr, align 8
  %filter_type607 = getelementptr inbounds %struct.lame_global_flags, ptr %377, i32 0, i32 59
  store i32 0, ptr %filter_type607, align 8
  %378 = load ptr, ptr %gfp.addr, align 8
  %psymodel = getelementptr inbounds %struct.lame_global_flags, ptr %378, i32 0, i32 63
  store i32 0, ptr %psymodel, align 8
  %379 = load ptr, ptr %gfp.addr, align 8
  %quantization = getelementptr inbounds %struct.lame_global_flags, ptr %379, i32 0, i32 60
  store i32 0, ptr %quantization, align 4
  %380 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping = getelementptr inbounds %struct.lame_global_flags, ptr %380, i32 0, i32 61
  store i32 0, ptr %noise_shaping, align 8
  %381 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop = getelementptr inbounds %struct.lame_global_flags, ptr %381, i32 0, i32 62
  store i32 0, ptr %noise_shaping_stop, align 4
  %382 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman = getelementptr inbounds %struct.lame_global_flags, ptr %382, i32 0, i32 64
  store i32 0, ptr %use_best_huffman, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.then606, %if.end602
  %383 = load ptr, ptr %gfp.addr, align 8
  %quality609 = getelementptr inbounds %struct.lame_global_flags, ptr %383, i32 0, i32 6
  %384 = load i32, ptr %quality609, align 4
  %cmp610 = icmp eq i32 %384, 8
  br i1 %cmp610, label %if.then612, label %if.end614

if.then612:                                       ; preds = %if.end608
  %385 = load ptr, ptr %gfp.addr, align 8
  %quality613 = getelementptr inbounds %struct.lame_global_flags, ptr %385, i32 0, i32 6
  store i32 7, ptr %quality613, align 4
  br label %if.end614

if.end614:                                        ; preds = %if.then612, %if.end608
  %386 = load ptr, ptr %gfp.addr, align 8
  %quality615 = getelementptr inbounds %struct.lame_global_flags, ptr %386, i32 0, i32 6
  %387 = load i32, ptr %quality615, align 4
  %cmp616 = icmp eq i32 %387, 7
  br i1 %cmp616, label %if.then618, label %if.end625

if.then618:                                       ; preds = %if.end614
  %388 = load ptr, ptr %gfp.addr, align 8
  %filter_type619 = getelementptr inbounds %struct.lame_global_flags, ptr %388, i32 0, i32 59
  store i32 0, ptr %filter_type619, align 8
  %389 = load ptr, ptr %gfp.addr, align 8
  %psymodel620 = getelementptr inbounds %struct.lame_global_flags, ptr %389, i32 0, i32 63
  store i32 1, ptr %psymodel620, align 8
  %390 = load ptr, ptr %gfp.addr, align 8
  %quantization621 = getelementptr inbounds %struct.lame_global_flags, ptr %390, i32 0, i32 60
  store i32 0, ptr %quantization621, align 4
  %391 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping622 = getelementptr inbounds %struct.lame_global_flags, ptr %391, i32 0, i32 61
  store i32 0, ptr %noise_shaping622, align 8
  %392 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop623 = getelementptr inbounds %struct.lame_global_flags, ptr %392, i32 0, i32 62
  store i32 0, ptr %noise_shaping_stop623, align 4
  %393 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman624 = getelementptr inbounds %struct.lame_global_flags, ptr %393, i32 0, i32 64
  store i32 0, ptr %use_best_huffman624, align 4
  br label %if.end625

if.end625:                                        ; preds = %if.then618, %if.end614
  %394 = load ptr, ptr %gfp.addr, align 8
  %quality626 = getelementptr inbounds %struct.lame_global_flags, ptr %394, i32 0, i32 6
  %395 = load i32, ptr %quality626, align 4
  %cmp627 = icmp eq i32 %395, 6
  br i1 %cmp627, label %if.then629, label %if.end631

if.then629:                                       ; preds = %if.end625
  %396 = load ptr, ptr %gfp.addr, align 8
  %quality630 = getelementptr inbounds %struct.lame_global_flags, ptr %396, i32 0, i32 6
  store i32 5, ptr %quality630, align 4
  br label %if.end631

if.end631:                                        ; preds = %if.then629, %if.end625
  %397 = load ptr, ptr %gfp.addr, align 8
  %quality632 = getelementptr inbounds %struct.lame_global_flags, ptr %397, i32 0, i32 6
  %398 = load i32, ptr %quality632, align 4
  %cmp633 = icmp eq i32 %398, 5
  br i1 %cmp633, label %if.then635, label %if.end642

if.then635:                                       ; preds = %if.end631
  %399 = load ptr, ptr %gfp.addr, align 8
  %filter_type636 = getelementptr inbounds %struct.lame_global_flags, ptr %399, i32 0, i32 59
  store i32 0, ptr %filter_type636, align 8
  %400 = load ptr, ptr %gfp.addr, align 8
  %psymodel637 = getelementptr inbounds %struct.lame_global_flags, ptr %400, i32 0, i32 63
  store i32 1, ptr %psymodel637, align 8
  %401 = load ptr, ptr %gfp.addr, align 8
  %quantization638 = getelementptr inbounds %struct.lame_global_flags, ptr %401, i32 0, i32 60
  store i32 0, ptr %quantization638, align 4
  %402 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping639 = getelementptr inbounds %struct.lame_global_flags, ptr %402, i32 0, i32 61
  store i32 1, ptr %noise_shaping639, align 8
  %403 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop640 = getelementptr inbounds %struct.lame_global_flags, ptr %403, i32 0, i32 62
  store i32 0, ptr %noise_shaping_stop640, align 4
  %404 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman641 = getelementptr inbounds %struct.lame_global_flags, ptr %404, i32 0, i32 64
  store i32 0, ptr %use_best_huffman641, align 4
  br label %if.end642

if.end642:                                        ; preds = %if.then635, %if.end631
  %405 = load ptr, ptr %gfp.addr, align 8
  %quality643 = getelementptr inbounds %struct.lame_global_flags, ptr %405, i32 0, i32 6
  %406 = load i32, ptr %quality643, align 4
  %cmp644 = icmp eq i32 %406, 4
  br i1 %cmp644, label %if.then646, label %if.end648

if.then646:                                       ; preds = %if.end642
  %407 = load ptr, ptr %gfp.addr, align 8
  %quality647 = getelementptr inbounds %struct.lame_global_flags, ptr %407, i32 0, i32 6
  store i32 2, ptr %quality647, align 4
  br label %if.end648

if.end648:                                        ; preds = %if.then646, %if.end642
  %408 = load ptr, ptr %gfp.addr, align 8
  %quality649 = getelementptr inbounds %struct.lame_global_flags, ptr %408, i32 0, i32 6
  %409 = load i32, ptr %quality649, align 4
  %cmp650 = icmp eq i32 %409, 3
  br i1 %cmp650, label %if.then652, label %if.end654

if.then652:                                       ; preds = %if.end648
  %410 = load ptr, ptr %gfp.addr, align 8
  %quality653 = getelementptr inbounds %struct.lame_global_flags, ptr %410, i32 0, i32 6
  store i32 2, ptr %quality653, align 4
  br label %if.end654

if.end654:                                        ; preds = %if.then652, %if.end648
  %411 = load ptr, ptr %gfp.addr, align 8
  %quality655 = getelementptr inbounds %struct.lame_global_flags, ptr %411, i32 0, i32 6
  %412 = load i32, ptr %quality655, align 4
  %cmp656 = icmp eq i32 %412, 2
  br i1 %cmp656, label %if.then658, label %if.end665

if.then658:                                       ; preds = %if.end654
  %413 = load ptr, ptr %gfp.addr, align 8
  %filter_type659 = getelementptr inbounds %struct.lame_global_flags, ptr %413, i32 0, i32 59
  store i32 0, ptr %filter_type659, align 8
  %414 = load ptr, ptr %gfp.addr, align 8
  %psymodel660 = getelementptr inbounds %struct.lame_global_flags, ptr %414, i32 0, i32 63
  store i32 1, ptr %psymodel660, align 8
  %415 = load ptr, ptr %gfp.addr, align 8
  %quantization661 = getelementptr inbounds %struct.lame_global_flags, ptr %415, i32 0, i32 60
  store i32 1, ptr %quantization661, align 4
  %416 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping662 = getelementptr inbounds %struct.lame_global_flags, ptr %416, i32 0, i32 61
  store i32 1, ptr %noise_shaping662, align 8
  %417 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop663 = getelementptr inbounds %struct.lame_global_flags, ptr %417, i32 0, i32 62
  store i32 0, ptr %noise_shaping_stop663, align 4
  %418 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman664 = getelementptr inbounds %struct.lame_global_flags, ptr %418, i32 0, i32 64
  store i32 1, ptr %use_best_huffman664, align 4
  br label %if.end665

if.end665:                                        ; preds = %if.then658, %if.end654
  %419 = load ptr, ptr %gfp.addr, align 8
  %quality666 = getelementptr inbounds %struct.lame_global_flags, ptr %419, i32 0, i32 6
  %420 = load i32, ptr %quality666, align 4
  %cmp667 = icmp eq i32 %420, 1
  br i1 %cmp667, label %if.then669, label %if.end676

if.then669:                                       ; preds = %if.end665
  %421 = load ptr, ptr %gfp.addr, align 8
  %filter_type670 = getelementptr inbounds %struct.lame_global_flags, ptr %421, i32 0, i32 59
  store i32 0, ptr %filter_type670, align 8
  %422 = load ptr, ptr %gfp.addr, align 8
  %psymodel671 = getelementptr inbounds %struct.lame_global_flags, ptr %422, i32 0, i32 63
  store i32 1, ptr %psymodel671, align 8
  %423 = load ptr, ptr %gfp.addr, align 8
  %quantization672 = getelementptr inbounds %struct.lame_global_flags, ptr %423, i32 0, i32 60
  store i32 1, ptr %quantization672, align 4
  %424 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping673 = getelementptr inbounds %struct.lame_global_flags, ptr %424, i32 0, i32 61
  store i32 1, ptr %noise_shaping673, align 8
  %425 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop674 = getelementptr inbounds %struct.lame_global_flags, ptr %425, i32 0, i32 62
  store i32 1, ptr %noise_shaping_stop674, align 4
  %426 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman675 = getelementptr inbounds %struct.lame_global_flags, ptr %426, i32 0, i32 64
  store i32 1, ptr %use_best_huffman675, align 4
  br label %if.end676

if.end676:                                        ; preds = %if.then669, %if.end665
  %427 = load ptr, ptr %gfp.addr, align 8
  %quality677 = getelementptr inbounds %struct.lame_global_flags, ptr %427, i32 0, i32 6
  %428 = load i32, ptr %quality677, align 4
  %cmp678 = icmp eq i32 %428, 0
  br i1 %cmp678, label %if.then680, label %if.end687

if.then680:                                       ; preds = %if.end676
  %429 = load ptr, ptr %gfp.addr, align 8
  %filter_type681 = getelementptr inbounds %struct.lame_global_flags, ptr %429, i32 0, i32 59
  store i32 1, ptr %filter_type681, align 8
  %430 = load ptr, ptr %gfp.addr, align 8
  %psymodel682 = getelementptr inbounds %struct.lame_global_flags, ptr %430, i32 0, i32 63
  store i32 1, ptr %psymodel682, align 8
  %431 = load ptr, ptr %gfp.addr, align 8
  %quantization683 = getelementptr inbounds %struct.lame_global_flags, ptr %431, i32 0, i32 60
  store i32 1, ptr %quantization683, align 4
  %432 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping684 = getelementptr inbounds %struct.lame_global_flags, ptr %432, i32 0, i32 61
  store i32 3, ptr %noise_shaping684, align 8
  %433 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping_stop685 = getelementptr inbounds %struct.lame_global_flags, ptr %433, i32 0, i32 62
  store i32 2, ptr %noise_shaping_stop685, align 4
  %434 = load ptr, ptr %gfp.addr, align 8
  %use_best_huffman686 = getelementptr inbounds %struct.lame_global_flags, ptr %434, i32 0, i32 64
  store i32 2, ptr %use_best_huffman686, align 4
  call void @exit(i32 noundef -99) #8
  unreachable

if.end687:                                        ; preds = %if.end676
  store i32 0, ptr %i, align 4
  br label %for.cond688

for.cond688:                                      ; preds = %for.inc701, %if.end687
  %435 = load i32, ptr %i, align 4
  %cmp689 = icmp slt i32 %435, 23
  br i1 %cmp689, label %for.body691, label %for.end703

for.body691:                                      ; preds = %for.cond688
  %436 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index692 = getelementptr inbounds %struct.lame_global_flags, ptr %436, i32 0, i32 51
  %437 = load i32, ptr %samplerate_index692, align 8
  %438 = load ptr, ptr %gfp.addr, align 8
  %version693 = getelementptr inbounds %struct.lame_global_flags, ptr %438, i32 0, i32 43
  %439 = load i32, ptr %version693, align 8
  %mul694 = mul nsw i32 %439, 3
  %add695 = add nsw i32 %437, %mul694
  %idxprom = sext i32 %add695 to i64
  %arrayidx696 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom
  %l = getelementptr inbounds %struct.scalefac_struct, ptr %arrayidx696, i32 0, i32 0
  %440 = load i32, ptr %i, align 4
  %idxprom697 = sext i32 %440 to i64
  %arrayidx698 = getelementptr inbounds [23 x i32], ptr %l, i64 0, i64 %idxprom697
  %441 = load i32, ptr %arrayidx698, align 4
  %442 = load i32, ptr %i, align 4
  %idxprom699 = sext i32 %442 to i64
  %arrayidx700 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom699
  store i32 %441, ptr %arrayidx700, align 4
  br label %for.inc701

for.inc701:                                       ; preds = %for.body691
  %443 = load i32, ptr %i, align 4
  %inc702 = add nsw i32 %443, 1
  store i32 %inc702, ptr %i, align 4
  br label %for.cond688, !llvm.loop !9

for.end703:                                       ; preds = %for.cond688
  store i32 0, ptr %i, align 4
  br label %for.cond704

for.cond704:                                      ; preds = %for.inc718, %for.end703
  %444 = load i32, ptr %i, align 4
  %cmp705 = icmp slt i32 %444, 14
  br i1 %cmp705, label %for.body707, label %for.end720

for.body707:                                      ; preds = %for.cond704
  %445 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index708 = getelementptr inbounds %struct.lame_global_flags, ptr %445, i32 0, i32 51
  %446 = load i32, ptr %samplerate_index708, align 8
  %447 = load ptr, ptr %gfp.addr, align 8
  %version709 = getelementptr inbounds %struct.lame_global_flags, ptr %447, i32 0, i32 43
  %448 = load i32, ptr %version709, align 8
  %mul710 = mul nsw i32 %448, 3
  %add711 = add nsw i32 %446, %mul710
  %idxprom712 = sext i32 %add711 to i64
  %arrayidx713 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom712
  %s = getelementptr inbounds %struct.scalefac_struct, ptr %arrayidx713, i32 0, i32 1
  %449 = load i32, ptr %i, align 4
  %idxprom714 = sext i32 %449 to i64
  %arrayidx715 = getelementptr inbounds [14 x i32], ptr %s, i64 0, i64 %idxprom714
  %450 = load i32, ptr %arrayidx715, align 4
  %451 = load i32, ptr %i, align 4
  %idxprom716 = sext i32 %451 to i64
  %arrayidx717 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom716
  store i32 %450, ptr %arrayidx717, align 4
  br label %for.inc718

for.inc718:                                       ; preds = %for.body707
  %452 = load i32, ptr %i, align 4
  %inc719 = add nsw i32 %452, 1
  store i32 %inc719, ptr %i, align 4
  br label %for.cond704, !llvm.loop !10

for.end720:                                       ; preds = %for.cond704
  %453 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag721 = getelementptr inbounds %struct.lame_global_flags, ptr %453, i32 0, i32 5
  %454 = load i32, ptr %bWriteVbrTag721, align 8
  %tobool722 = icmp ne i32 %454, 0
  br i1 %tobool722, label %if.then723, label %if.end729

if.then723:                                       ; preds = %for.end720
  %455 = load ptr, ptr %gfp.addr, align 8
  %version724 = getelementptr inbounds %struct.lame_global_flags, ptr %455, i32 0, i32 43
  %456 = load i32, ptr %version724, align 8
  %sub725 = sub nsw i32 1, %456
  %457 = load ptr, ptr %gfp.addr, align 8
  %mode726 = getelementptr inbounds %struct.lame_global_flags, ptr %457, i32 0, i32 8
  %458 = load i32, ptr %mode726, align 4
  %459 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index727 = getelementptr inbounds %struct.lame_global_flags, ptr %459, i32 0, i32 51
  %460 = load i32, ptr %samplerate_index727, align 8
  %call728 = call i32 @InitVbrTag(ptr noundef @bs, i32 noundef %sub725, i32 noundef %458, i32 noundef %460)
  br label %if.end729

if.end729:                                        ; preds = %if.then723, %for.end720
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @InitFormatBitStream() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @SmpFrqIndex(i64 noundef, ptr noundef) #2

declare void @display_bitrates(ptr noundef) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

declare i32 @BitrateIndex(i32 noundef, i32 noundef, i32 noundef) #2

declare void @init_bit_stream_w(ptr noundef) #2

declare i32 @InitVbrTag(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @lame_print_config(ptr noundef %gfp) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %out_samplerate = alloca float, align 4
  %in_samplerate = alloca float, align 4
  %compression = alloca float, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate1 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %out_samplerate1, align 8
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 1.000000e+03
  %conv2 = fptrunc double %div to float
  store float %conv2, ptr %out_samplerate, align 4
  %2 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %2, i32 0, i32 49
  %3 = load float, ptr %resample_ratio, align 8
  %4 = load float, ptr %out_samplerate, align 4
  %mul = fmul float %3, %4
  store float %mul, ptr %in_samplerate, align 4
  %5 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %5, i32 0, i32 46
  %6 = load i32, ptr %stereo, align 4
  %mul3 = mul nsw i32 %6, 16
  %conv4 = sitofp i32 %mul3 to float
  %7 = load float, ptr %out_samplerate, align 4
  %mul5 = fmul float %conv4, %7
  %8 = load ptr, ptr %gfp.addr, align 8
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %brate, align 8
  %conv6 = sitofp i32 %9 to float
  %div7 = fdiv float %mul5, %conv6
  store float %div7, ptr %compression, align 4
  %10 = load ptr, ptr @__stderrp, align 8
  call void @lame_print_version(ptr noundef %10)
  %11 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %num_channels, align 8
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %gfp.addr, align 8
  %stereo9 = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 46
  %14 = load i32, ptr %stereo9, align 4
  %cmp10 = icmp eq i32 %14, 1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio12 = getelementptr inbounds %struct.lame_global_flags, ptr %16, i32 0, i32 49
  %17 = load float, ptr %resample_ratio12, align 8
  %cmp13 = fcmp une float %17, 1.000000e+00
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %18 = load ptr, ptr @__stderrp, align 8
  %19 = load float, ptr %in_samplerate, align 4
  %conv16 = fptosi float %19 to i32
  %20 = load float, ptr %out_samplerate, align 4
  %conv17 = fptosi float %20 to i32
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.6, i32 noundef %conv16, i32 noundef %conv17)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end
  %21 = load ptr, ptr %gfp.addr, align 8
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %21, i32 0, i32 56
  %22 = load float, ptr %highpass2, align 4
  %conv20 = fpext float %22 to double
  %cmp21 = fcmp ogt double %conv20, 0.000000e+00
  br i1 %cmp21, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end19
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = load ptr, ptr %gfp.addr, align 8
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %24, i32 0, i32 55
  %25 = load float, ptr %highpass1, align 8
  %26 = load float, ptr %out_samplerate, align 4
  %mul24 = fmul float %25, %26
  %mul25 = fmul float %mul24, 5.000000e+02
  %conv26 = fpext float %mul25 to double
  %27 = load ptr, ptr %gfp.addr, align 8
  %highpass227 = getelementptr inbounds %struct.lame_global_flags, ptr %27, i32 0, i32 56
  %28 = load float, ptr %highpass227, align 4
  %29 = load float, ptr %out_samplerate, align 4
  %mul28 = fmul float %28, %29
  %mul29 = fmul float %mul28, 5.000000e+02
  %conv30 = fpext float %mul29 to double
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.7, double noundef %conv26, double noundef %conv30)
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.end19
  %30 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %30, i32 0, i32 53
  %31 = load float, ptr %lowpass1, align 8
  %conv33 = fpext float %31 to double
  %cmp34 = fcmp ogt double %conv33, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %if.end45

if.then36:                                        ; preds = %if.end32
  %32 = load ptr, ptr @__stderrp, align 8
  %33 = load ptr, ptr %gfp.addr, align 8
  %lowpass137 = getelementptr inbounds %struct.lame_global_flags, ptr %33, i32 0, i32 53
  %34 = load float, ptr %lowpass137, align 8
  %35 = load float, ptr %out_samplerate, align 4
  %mul38 = fmul float %34, %35
  %mul39 = fmul float %mul38, 5.000000e+02
  %conv40 = fpext float %mul39 to double
  %36 = load ptr, ptr %gfp.addr, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %36, i32 0, i32 54
  %37 = load float, ptr %lowpass2, align 4
  %38 = load float, ptr %out_samplerate, align 4
  %mul41 = fmul float %37, %38
  %mul42 = fmul float %mul41, 5.000000e+02
  %conv43 = fpext float %mul42 to double
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.8, double noundef %conv40, double noundef %conv43)
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end32
  %39 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %39, i32 0, i32 4
  %40 = load i32, ptr %gtkflag, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end45
  %41 = load ptr, ptr @__stderrp, align 8
  %42 = load ptr, ptr %gfp.addr, align 8
  %inPath = getelementptr inbounds %struct.lame_global_flags, ptr %42, i32 0, i32 31
  %43 = load ptr, ptr %inPath, align 8
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.9, ptr noundef %43)
  br label %if.end80

if.else:                                          ; preds = %if.end45
  %44 = load ptr, ptr @__stderrp, align 8
  %45 = load ptr, ptr %gfp.addr, align 8
  %inPath48 = getelementptr inbounds %struct.lame_global_flags, ptr %45, i32 0, i32 31
  %46 = load ptr, ptr %inPath48, align 8
  %call49 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.11)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %47 = load ptr, ptr %gfp.addr, align 8
  %inPath51 = getelementptr inbounds %struct.lame_global_flags, ptr %47, i32 0, i32 31
  %48 = load ptr, ptr %inPath51, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %48, %cond.true ], [ @.str.12, %cond.false ]
  %49 = load ptr, ptr %gfp.addr, align 8
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %49, i32 0, i32 32
  %50 = load ptr, ptr %outPath, align 8
  %call52 = call i32 @strcmp(ptr noundef %50, ptr noundef @.str.11)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %cond.true54, label %cond.false56

cond.true54:                                      ; preds = %cond.end
  %51 = load ptr, ptr %gfp.addr, align 8
  %outPath55 = getelementptr inbounds %struct.lame_global_flags, ptr %51, i32 0, i32 32
  %52 = load ptr, ptr %outPath55, align 8
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.true54
  %cond58 = phi ptr [ %52, %cond.true54 ], [ @.str.13, %cond.false56 ]
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.10, ptr noundef %cond, ptr noundef %cond58)
  %53 = load ptr, ptr %gfp.addr, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %53, i32 0, i32 21
  %54 = load i32, ptr %VBR, align 8
  %tobool60 = icmp ne i32 %54, 0
  br i1 %tobool60, label %if.then61, label %if.else66

if.then61:                                        ; preds = %cond.end57
  %55 = load ptr, ptr @__stderrp, align 8
  %56 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate62 = getelementptr inbounds %struct.lame_global_flags, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %out_samplerate62, align 8
  %conv63 = sitofp i32 %57 to double
  %div64 = fdiv double %conv63, 1.000000e+03
  %58 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %58, i32 0, i32 22
  %59 = load i32, ptr %VBR_q, align 4
  %60 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %60, i32 0, i32 8
  %61 = load i32, ptr %mode, align 4
  %idxprom = sext i32 %61 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %idxprom
  %62 = load ptr, ptr %arrayidx, align 8
  %63 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %63, i32 0, i32 43
  %64 = load i32, ptr %version, align 8
  %sub = sub nsw i32 2, %64
  %65 = load ptr, ptr %gfp.addr, align 8
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %65, i32 0, i32 6
  %66 = load i32, ptr %quality, align 4
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.14, double noundef %div64, i32 noundef %59, ptr noundef %62, i32 noundef %sub, i32 noundef %66)
  br label %if.end79

if.else66:                                        ; preds = %cond.end57
  %67 = load ptr, ptr @__stderrp, align 8
  %68 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate67 = getelementptr inbounds %struct.lame_global_flags, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %out_samplerate67, align 8
  %conv68 = sitofp i32 %69 to double
  %div69 = fdiv double %conv68, 1.000000e+03
  %70 = load ptr, ptr %gfp.addr, align 8
  %brate70 = getelementptr inbounds %struct.lame_global_flags, ptr %70, i32 0, i32 11
  %71 = load i32, ptr %brate70, align 8
  %72 = load ptr, ptr %gfp.addr, align 8
  %mode71 = getelementptr inbounds %struct.lame_global_flags, ptr %72, i32 0, i32 8
  %73 = load i32, ptr %mode71, align 4
  %idxprom72 = sext i32 %73 to i64
  %arrayidx73 = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %idxprom72
  %74 = load ptr, ptr %arrayidx73, align 8
  %75 = load ptr, ptr %gfp.addr, align 8
  %version74 = getelementptr inbounds %struct.lame_global_flags, ptr %75, i32 0, i32 43
  %76 = load i32, ptr %version74, align 8
  %sub75 = sub nsw i32 2, %76
  %77 = load float, ptr %compression, align 4
  %conv76 = fpext float %77 to double
  %78 = load ptr, ptr %gfp.addr, align 8
  %quality77 = getelementptr inbounds %struct.lame_global_flags, ptr %78, i32 0, i32 6
  %79 = load i32, ptr %quality77, align 4
  %call78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.15, double noundef %div69, i32 noundef %71, ptr noundef %74, i32 noundef %sub75, double noundef %conv76, i32 noundef %79)
  br label %if.end79

if.end79:                                         ; preds = %if.else66, %if.then61
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then46
  %80 = load ptr, ptr @__stderrp, align 8
  %call81 = call i32 @fflush(ptr noundef %80)
  ret void
}

declare void @lame_print_version(ptr noundef) #2

declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @lame_encode_frame(ptr noundef %gfp, ptr noundef %inbuf_l, ptr noundef %inbuf_r, i32 noundef %mf_size, ptr noundef %mp3buf, i32 noundef %mp3buf_size) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %inbuf_l.addr = alloca ptr, align 8
  %inbuf_r.addr = alloca ptr, align 8
  %mf_size.addr = alloca i32, align 4
  %mp3buf.addr = alloca ptr, align 8
  %mp3buf_size.addr = alloca i32, align 4
  %xr = alloca [2 x [2 x [576 x double]]], align 8
  %l3_enc = alloca [2 x [2 x [576 x i32]]], align 4
  %mp3count = alloca i32, align 4
  %masking_ratio = alloca [2 x [2 x %struct.III_psy_ratio]], align 8
  %masking_MS_ratio = alloca [2 x [2 x %struct.III_psy_ratio]], align 8
  %masking = alloca ptr, align 8
  %scalefac = alloca [2 x [2 x %struct.III_scalefac_t]], align 4
  %inbuf = alloca [2 x ptr], align 8
  %pe = alloca [2 x [2 x double]], align 8
  %pe_MS = alloca [2 x [2 x double]], align 8
  %pe_use = alloca ptr, align 8
  %ch = alloca i32, align 4
  %gr = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  %bitsPerFrame = alloca i32, align 4
  %check_ms_stereo = alloca i32, align 4
  %ms_ratio_next = alloca double, align 8
  %ms_ratio_prev = alloca double, align 8
  %avg_slots_per_frame = alloca double, align 8
  %sampfreq = alloca double, align 8
  %bit_rate = alloca i32, align 4
  %mod = alloca i32, align 4
  %bufp = alloca [2 x ptr], align 8
  %blocktype = alloca [2 x i32], align 4
  %cod_info = alloca ptr, align 8
  %ms_ratio_ave = alloca double, align 8
  %ms_ener_ratio_ave = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %inbuf_l, ptr %inbuf_l.addr, align 8
  store ptr %inbuf_r, ptr %inbuf_r.addr, align 8
  store i32 %mf_size, ptr %mf_size.addr, align 4
  store ptr %mp3buf, ptr %mp3buf.addr, align 8
  store i32 %mp3buf_size, ptr %mp3buf_size.addr, align 4
  store double 0.000000e+00, ptr %ms_ratio_next, align 8
  store double 0.000000e+00, ptr %ms_ratio_prev, align 8
  %arraydecay = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], ptr %masking_ratio, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 3904, i1 false)
  %arraydecay1 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], ptr %masking_MS_ratio, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay1, i8 0, i64 3904, i1 false)
  %arraydecay2 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], ptr %scalefac, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay2, i8 0, i64 976, i1 false)
  %0 = load ptr, ptr %inbuf_l.addr, align 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 0
  store ptr %0, ptr %arrayidx, align 8
  %1 = load ptr, ptr %inbuf_r.addr, align 8
  %arrayidx3 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 1
  store ptr %1, ptr %arrayidx3, align 8
  %2 = load ptr, ptr %gfp.addr, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %2, i32 0, i32 52
  store i32 0, ptr %mode_ext, align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 39
  %4 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %out_samplerate, align 8
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, ptr %sampfreq, align 8
  %7 = load ptr, ptr %gfp.addr, align 8
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %7, i32 0, i32 11
  %8 = load i32, ptr %brate, align 8
  store i32 %8, ptr %bit_rate, align 4
  store i64 0, ptr @lame_encode_frame.sentBits, align 8
  store i64 8, ptr @lame_encode_frame.bitsPerSlot, align 8
  %9 = load i32, ptr %bit_rate, align 4
  %10 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %10, i32 0, i32 42
  %11 = load i32, ptr %framesize, align 4
  %mul = mul nsw i32 %9, %11
  %conv4 = sitofp i32 %mul to double
  %12 = load double, ptr %sampfreq, align 8
  %13 = load i64, ptr @lame_encode_frame.bitsPerSlot, align 8
  %conv5 = uitofp i64 %13 to double
  %mul6 = fmul double %12, %conv5
  %div7 = fdiv double %conv4, %mul6
  store double %div7, ptr %avg_slots_per_frame, align 8
  %14 = load double, ptr %avg_slots_per_frame, align 8
  %15 = load double, ptr %avg_slots_per_frame, align 8
  %add = fadd double %15, 1.000000e-09
  %16 = call double @llvm.floor.f64(double %add)
  %sub = fsub double %14, %16
  store double %sub, ptr @lame_encode_frame.frac_SpF, align 8
  %17 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %18 = call double @llvm.fabs.f64(double %17)
  %cmp8 = fcmp olt double %18, 1.000000e-09
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  store double 0.000000e+00, ptr @lame_encode_frame.frac_SpF, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %19 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %fneg = fneg double %19
  store double %fneg, ptr @lame_encode_frame.slot_lag, align 8
  %20 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %20, i32 0, i32 44
  store i32 1, ptr %padding, align 4
  %21 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %cmp11 = fcmp oeq double %21, 0.000000e+00
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  %22 = load ptr, ptr %gfp.addr, align 8
  %padding14 = getelementptr inbounds %struct.lame_global_flags, ptr %22, i32 0, i32 44
  store i32 0, ptr %padding14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end
  %23 = load i32, ptr %mf_size.addr, align 4
  %24 = load ptr, ptr %gfp.addr, align 8
  %framesize16 = getelementptr inbounds %struct.lame_global_flags, ptr %24, i32 0, i32 42
  %25 = load i32, ptr %framesize16, align 4
  %add17 = add nsw i32 1024, %25
  %sub18 = sub nsw i32 %add17, 272
  %cmp19 = icmp sge i32 %23, %sub18
  %lnot = xor i1 %cmp19, true
  %lnot.ext = zext i1 %lnot to i32
  %conv21 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv21, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  call void @__assert_rtn(ptr noundef @__func__.lame_encode_frame, ptr noundef @.str.16, i32 noundef 661, ptr noundef @.str.17) #9
  unreachable

26:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %26
  br label %if.end22

if.end22:                                         ; preds = %cond.end, %entry
  %27 = load ptr, ptr %gfp.addr, align 8
  %padding_type = getelementptr inbounds %struct.lame_global_flags, ptr %27, i32 0, i32 15
  %28 = load i32, ptr %padding_type, align 8
  switch i32 %28, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
    i32 2, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end22
  %29 = load ptr, ptr %gfp.addr, align 8
  %padding23 = getelementptr inbounds %struct.lame_global_flags, ptr %29, i32 0, i32 44
  store i32 0, ptr %padding23, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end22
  %30 = load ptr, ptr %gfp.addr, align 8
  %padding25 = getelementptr inbounds %struct.lame_global_flags, ptr %30, i32 0, i32 44
  store i32 1, ptr %padding25, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end22
  br label %sw.default

sw.default:                                       ; preds = %if.end22, %sw.bb26
  %31 = load ptr, ptr %gfp.addr, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %31, i32 0, i32 21
  %32 = load i32, ptr %VBR, align 8
  %tobool27 = icmp ne i32 %32, 0
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %sw.default
  %33 = load ptr, ptr %gfp.addr, align 8
  %padding29 = getelementptr inbounds %struct.lame_global_flags, ptr %33, i32 0, i32 44
  store i32 0, ptr %padding29, align 4
  br label %if.end50

if.else:                                          ; preds = %sw.default
  %34 = load ptr, ptr %gfp.addr, align 8
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %34, i32 0, i32 17
  %35 = load i32, ptr %disable_reservoir, align 8
  %tobool30 = icmp ne i32 %35, 0
  br i1 %tobool30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else
  %36 = load ptr, ptr %gfp.addr, align 8
  %padding32 = getelementptr inbounds %struct.lame_global_flags, ptr %36, i32 0, i32 44
  store i32 0, ptr %padding32, align 4
  br label %if.end49

if.else33:                                        ; preds = %if.else
  %37 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %cmp34 = fcmp une double %37, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %if.end48

if.then36:                                        ; preds = %if.else33
  %38 = load double, ptr @lame_encode_frame.slot_lag, align 8
  %39 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %sub37 = fsub double %39, 1.000000e+00
  %cmp38 = fcmp ogt double %38, %sub37
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.then36
  %40 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %41 = load double, ptr @lame_encode_frame.slot_lag, align 8
  %sub41 = fsub double %41, %40
  store double %sub41, ptr @lame_encode_frame.slot_lag, align 8
  %42 = load ptr, ptr %gfp.addr, align 8
  %padding42 = getelementptr inbounds %struct.lame_global_flags, ptr %42, i32 0, i32 44
  store i32 0, ptr %padding42, align 4
  br label %if.end47

if.else43:                                        ; preds = %if.then36
  %43 = load ptr, ptr %gfp.addr, align 8
  %padding44 = getelementptr inbounds %struct.lame_global_flags, ptr %43, i32 0, i32 44
  store i32 1, ptr %padding44, align 4
  %44 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %sub45 = fsub double 1.000000e+00, %44
  %45 = load double, ptr @lame_encode_frame.slot_lag, align 8
  %add46 = fadd double %45, %sub45
  store double %add46, ptr @lame_encode_frame.slot_lag, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.else33
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then31
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then28
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end50, %sw.bb24, %sw.bb
  %46 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %gtkflag, align 4
  %tobool51 = icmp ne i32 %47, 0
  br i1 %tobool51, label %if.end65, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %48 = load ptr, ptr %gfp.addr, align 8
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %48, i32 0, i32 7
  %49 = load i32, ptr %silent, align 8
  %tobool52 = icmp ne i32 %49, 0
  br i1 %tobool52, label %if.end65, label %if.then53

if.then53:                                        ; preds = %land.lhs.true
  %50 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %50, i32 0, i32 43
  %51 = load i32, ptr %version, align 8
  %cmp54 = icmp eq i32 %51, 0
  %52 = zext i1 %cmp54 to i64
  %cond = select i1 %cmp54, i32 200, i32 50
  store i32 %cond, ptr %mod, align 4
  %53 = load ptr, ptr %gfp.addr, align 8
  %frameNum56 = getelementptr inbounds %struct.lame_global_flags, ptr %53, i32 0, i32 39
  %54 = load i64, ptr %frameNum56, align 8
  %55 = load i32, ptr %mod, align 4
  %conv57 = sext i32 %55 to i64
  %rem = srem i64 %54, %conv57
  %cmp58 = icmp eq i64 %rem, 0
  br i1 %cmp58, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.then53
  %56 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate61 = getelementptr inbounds %struct.lame_global_flags, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %out_samplerate61, align 8
  %58 = load ptr, ptr %gfp.addr, align 8
  %frameNum62 = getelementptr inbounds %struct.lame_global_flags, ptr %58, i32 0, i32 39
  %59 = load i64, ptr %frameNum62, align 8
  %60 = load ptr, ptr %gfp.addr, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %60, i32 0, i32 40
  %61 = load i64, ptr %totalframes, align 8
  %62 = load ptr, ptr %gfp.addr, align 8
  %framesize63 = getelementptr inbounds %struct.lame_global_flags, ptr %62, i32 0, i32 42
  %63 = load i32, ptr %framesize63, align 4
  call void @timestatus(i32 noundef %57, i64 noundef %59, i64 noundef %61, i32 noundef %63)
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then53
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %land.lhs.true, %sw.epilog
  %64 = load ptr, ptr %gfp.addr, align 8
  %psymodel = getelementptr inbounds %struct.lame_global_flags, ptr %64, i32 0, i32 63
  %65 = load i32, ptr %psymodel, align 8
  %tobool66 = icmp ne i32 %65, 0
  br i1 %tobool66, label %if.then67, label %if.else118

if.then67:                                        ; preds = %if.end65
  %66 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %66, i32 0, i32 45
  %67 = load i32, ptr %mode_gr, align 8
  %sub68 = sub nsw i32 %67, 1
  %idxprom = sext i32 %sub68 to i64
  %arrayidx69 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %idxprom
  %68 = load double, ptr %arrayidx69, align 8
  store double %68, ptr %ms_ratio_prev, align 8
  store i32 0, ptr %gr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc115, %if.then67
  %69 = load i32, ptr %gr, align 4
  %70 = load ptr, ptr %gfp.addr, align 8
  %mode_gr70 = getelementptr inbounds %struct.lame_global_flags, ptr %70, i32 0, i32 45
  %71 = load i32, ptr %mode_gr70, align 8
  %cmp71 = icmp slt i32 %69, %71
  br i1 %cmp71, label %for.body, label %for.end117

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %ch, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc, %for.body
  %72 = load i32, ptr %ch, align 4
  %73 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %73, i32 0, i32 46
  %74 = load i32, ptr %stereo, align 4
  %cmp74 = icmp slt i32 %72, %74
  br i1 %cmp74, label %for.body76, label %for.end

for.body76:                                       ; preds = %for.cond73
  %75 = load i32, ptr %ch, align 4
  %idxprom77 = sext i32 %75 to i64
  %arrayidx78 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 %idxprom77
  %76 = load ptr, ptr %arrayidx78, align 8
  %77 = load i32, ptr %gr, align 4
  %mul79 = mul nsw i32 %77, 576
  %add80 = add nsw i32 576, %mul79
  %sub81 = sub nsw i32 %add80, 272
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds i16, ptr %76, i64 %idxprom82
  %78 = load i32, ptr %ch, align 4
  %idxprom84 = sext i32 %78 to i64
  %arrayidx85 = getelementptr inbounds [2 x ptr], ptr %bufp, i64 0, i64 %idxprom84
  store ptr %arrayidx83, ptr %arrayidx85, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body76
  %79 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, ptr %ch, align 4
  br label %for.cond73, !llvm.loop !11

for.end:                                          ; preds = %for.cond73
  %80 = load ptr, ptr %gfp.addr, align 8
  %arraydecay86 = getelementptr inbounds [2 x ptr], ptr %bufp, i64 0, i64 0
  %81 = load i32, ptr %gr, align 4
  %82 = load i32, ptr %gr, align 4
  %idxprom87 = sext i32 %82 to i64
  %arrayidx88 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %idxprom87
  %83 = load i32, ptr %gr, align 4
  %idxprom89 = sext i32 %83 to i64
  %arrayidx90 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ener_ratio, i64 0, i64 %idxprom89
  %arraydecay91 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], ptr %masking_ratio, i64 0, i64 0
  %arraydecay92 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], ptr %masking_MS_ratio, i64 0, i64 0
  %84 = load i32, ptr %gr, align 4
  %idxprom93 = sext i32 %84 to i64
  %arrayidx94 = getelementptr inbounds [2 x [2 x double]], ptr %pe, i64 0, i64 %idxprom93
  %arraydecay95 = getelementptr inbounds [2 x double], ptr %arrayidx94, i64 0, i64 0
  %85 = load i32, ptr %gr, align 4
  %idxprom96 = sext i32 %85 to i64
  %arrayidx97 = getelementptr inbounds [2 x [2 x double]], ptr %pe_MS, i64 0, i64 %idxprom96
  %arraydecay98 = getelementptr inbounds [2 x double], ptr %arrayidx97, i64 0, i64 0
  %arraydecay99 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 0
  call void @L3psycho_anal(ptr noundef %80, ptr noundef %arraydecay86, i32 noundef %81, ptr noundef %arrayidx88, ptr noundef %ms_ratio_next, ptr noundef %arrayidx90, ptr noundef %arraydecay91, ptr noundef %arraydecay92, ptr noundef %arraydecay95, ptr noundef %arraydecay98, ptr noundef %arraydecay99)
  store i32 0, ptr %ch, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc112, %for.end
  %86 = load i32, ptr %ch, align 4
  %87 = load ptr, ptr %gfp.addr, align 8
  %stereo101 = getelementptr inbounds %struct.lame_global_flags, ptr %87, i32 0, i32 46
  %88 = load i32, ptr %stereo101, align 4
  %cmp102 = icmp slt i32 %86, %88
  br i1 %cmp102, label %for.body104, label %for.end114

for.body104:                                      ; preds = %for.cond100
  %89 = load i32, ptr %ch, align 4
  %idxprom105 = sext i32 %89 to i64
  %arrayidx106 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom105
  %90 = load i32, ptr %arrayidx106, align 4
  %91 = load i32, ptr %gr, align 4
  %idxprom107 = sext i32 %91 to i64
  %arrayidx108 = getelementptr inbounds [2 x %struct.anon], ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i32 0, i32 4), i64 0, i64 %idxprom107
  %ch109 = getelementptr inbounds %struct.anon, ptr %arrayidx108, i32 0, i32 0
  %92 = load i32, ptr %ch, align 4
  %idxprom110 = sext i32 %92 to i64
  %arrayidx111 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch109, i64 0, i64 %idxprom110
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx111, i32 0, i32 0
  %block_type = getelementptr inbounds %struct.gr_info, ptr %tt, i32 0, i32 6
  store i32 %90, ptr %block_type, align 8
  br label %for.inc112

for.inc112:                                       ; preds = %for.body104
  %93 = load i32, ptr %ch, align 4
  %inc113 = add nsw i32 %93, 1
  store i32 %inc113, ptr %ch, align 4
  br label %for.cond100, !llvm.loop !12

for.end114:                                       ; preds = %for.cond100
  br label %for.inc115

for.inc115:                                       ; preds = %for.end114
  %94 = load i32, ptr %gr, align 4
  %inc116 = add nsw i32 %94, 1
  store i32 %inc116, ptr %gr, align 4
  br label %for.cond, !llvm.loop !13

for.end117:                                       ; preds = %for.cond
  br label %if.end146

if.else118:                                       ; preds = %if.end65
  store i32 0, ptr %gr, align 4
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc143, %if.else118
  %95 = load i32, ptr %gr, align 4
  %96 = load ptr, ptr %gfp.addr, align 8
  %mode_gr120 = getelementptr inbounds %struct.lame_global_flags, ptr %96, i32 0, i32 45
  %97 = load i32, ptr %mode_gr120, align 8
  %cmp121 = icmp slt i32 %95, %97
  br i1 %cmp121, label %for.body123, label %for.end145

for.body123:                                      ; preds = %for.cond119
  store i32 0, ptr %ch, align 4
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc140, %for.body123
  %98 = load i32, ptr %ch, align 4
  %99 = load ptr, ptr %gfp.addr, align 8
  %stereo125 = getelementptr inbounds %struct.lame_global_flags, ptr %99, i32 0, i32 46
  %100 = load i32, ptr %stereo125, align 4
  %cmp126 = icmp slt i32 %98, %100
  br i1 %cmp126, label %for.body128, label %for.end142

for.body128:                                      ; preds = %for.cond124
  %101 = load i32, ptr %gr, align 4
  %idxprom129 = sext i32 %101 to i64
  %arrayidx130 = getelementptr inbounds [2 x %struct.anon], ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i32 0, i32 4), i64 0, i64 %idxprom129
  %ch131 = getelementptr inbounds %struct.anon, ptr %arrayidx130, i32 0, i32 0
  %102 = load i32, ptr %ch, align 4
  %idxprom132 = sext i32 %102 to i64
  %arrayidx133 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch131, i64 0, i64 %idxprom132
  %tt134 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx133, i32 0, i32 0
  %block_type135 = getelementptr inbounds %struct.gr_info, ptr %tt134, i32 0, i32 6
  store i32 0, ptr %block_type135, align 8
  %103 = load i32, ptr %gr, align 4
  %idxprom136 = sext i32 %103 to i64
  %arrayidx137 = getelementptr inbounds [2 x [2 x double]], ptr %pe, i64 0, i64 %idxprom136
  %104 = load i32, ptr %ch, align 4
  %idxprom138 = sext i32 %104 to i64
  %arrayidx139 = getelementptr inbounds [2 x double], ptr %arrayidx137, i64 0, i64 %idxprom138
  store double 7.000000e+02, ptr %arrayidx139, align 8
  br label %for.inc140

for.inc140:                                       ; preds = %for.body128
  %105 = load i32, ptr %ch, align 4
  %inc141 = add nsw i32 %105, 1
  store i32 %inc141, ptr %ch, align 4
  br label %for.cond124, !llvm.loop !14

for.end142:                                       ; preds = %for.cond124
  br label %for.inc143

for.inc143:                                       ; preds = %for.end142
  %106 = load i32, ptr %gr, align 4
  %inc144 = add nsw i32 %106, 1
  store i32 %inc144, ptr %gr, align 4
  br label %for.cond119, !llvm.loop !15

for.end145:                                       ; preds = %for.cond119
  br label %if.end146

if.end146:                                        ; preds = %for.end145, %for.end117
  store i32 0, ptr %gr, align 4
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc173, %if.end146
  %107 = load i32, ptr %gr, align 4
  %108 = load ptr, ptr %gfp.addr, align 8
  %mode_gr148 = getelementptr inbounds %struct.lame_global_flags, ptr %108, i32 0, i32 45
  %109 = load i32, ptr %mode_gr148, align 8
  %cmp149 = icmp slt i32 %107, %109
  br i1 %cmp149, label %for.body151, label %for.end175

for.body151:                                      ; preds = %for.cond147
  store i32 0, ptr %ch, align 4
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc170, %for.body151
  %110 = load i32, ptr %ch, align 4
  %111 = load ptr, ptr %gfp.addr, align 8
  %stereo153 = getelementptr inbounds %struct.lame_global_flags, ptr %111, i32 0, i32 46
  %112 = load i32, ptr %stereo153, align 4
  %cmp154 = icmp slt i32 %110, %112
  br i1 %cmp154, label %for.body156, label %for.end172

for.body156:                                      ; preds = %for.cond152
  %113 = load i32, ptr %gr, align 4
  %idxprom157 = sext i32 %113 to i64
  %arrayidx158 = getelementptr inbounds [2 x %struct.anon], ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i32 0, i32 4), i64 0, i64 %idxprom157
  %ch159 = getelementptr inbounds %struct.anon, ptr %arrayidx158, i32 0, i32 0
  %114 = load i32, ptr %ch, align 4
  %idxprom160 = sext i32 %114 to i64
  %arrayidx161 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch159, i64 0, i64 %idxprom160
  %tt162 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx161, i32 0, i32 0
  store ptr %tt162, ptr %cod_info, align 8
  %115 = load ptr, ptr %cod_info, align 8
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %115, i32 0, i32 7
  store i32 0, ptr %mixed_block_flag, align 4
  %116 = load ptr, ptr %cod_info, align 8
  %block_type163 = getelementptr inbounds %struct.gr_info, ptr %116, i32 0, i32 6
  %117 = load i32, ptr %block_type163, align 8
  %cmp164 = icmp eq i32 %117, 0
  br i1 %cmp164, label %if.then166, label %if.else167

if.then166:                                       ; preds = %for.body156
  %118 = load ptr, ptr %cod_info, align 8
  %window_switching_flag = getelementptr inbounds %struct.gr_info, ptr %118, i32 0, i32 5
  store i32 0, ptr %window_switching_flag, align 4
  br label %if.end169

if.else167:                                       ; preds = %for.body156
  %119 = load ptr, ptr %cod_info, align 8
  %window_switching_flag168 = getelementptr inbounds %struct.gr_info, ptr %119, i32 0, i32 5
  store i32 1, ptr %window_switching_flag168, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.else167, %if.then166
  br label %for.inc170

for.inc170:                                       ; preds = %if.end169
  %120 = load i32, ptr %ch, align 4
  %inc171 = add nsw i32 %120, 1
  store i32 %inc171, ptr %ch, align 4
  br label %for.cond152, !llvm.loop !16

for.end172:                                       ; preds = %for.cond152
  br label %for.inc173

for.inc173:                                       ; preds = %for.end172
  %121 = load i32, ptr %gr, align 4
  %inc174 = add nsw i32 %121, 1
  store i32 %inc174, ptr %gr, align 4
  br label %for.cond147, !llvm.loop !17

for.end175:                                       ; preds = %for.cond147
  %122 = load ptr, ptr %gfp.addr, align 8
  %arrayidx176 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 0
  %123 = load ptr, ptr %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 1
  %124 = load ptr, ptr %arrayidx177, align 8
  %arraydecay178 = getelementptr inbounds [2 x [2 x [576 x double]]], ptr %xr, i64 0, i64 0
  call void @mdct_sub48(ptr noundef %122, ptr noundef %123, ptr noundef %124, ptr noundef %arraydecay178, ptr noundef @l3_side)
  %125 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %125, i32 0, i32 8
  %126 = load i32, ptr %mode, align 4
  %cmp179 = icmp eq i32 %126, 1
  %conv180 = zext i1 %cmp179 to i32
  store i32 %conv180, ptr %check_ms_stereo, align 4
  %127 = load i32, ptr %check_ms_stereo, align 4
  %tobool181 = icmp ne i32 %127, 0
  br i1 %tobool181, label %if.then182, label %if.end187

if.then182:                                       ; preds = %for.end175
  %128 = load i32, ptr getelementptr inbounds (%struct.gr_info, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i32 0, i32 4), i32 0, i32 6), align 8
  %129 = load i32, ptr getelementptr inbounds (%struct.gr_info, ptr getelementptr inbounds ([2 x %struct.gr_info_ss], ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i32 0, i32 4), i64 0, i64 1), i32 0, i32 6), align 8
  %cmp183 = icmp eq i32 %128, %129
  br i1 %cmp183, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then182
  %130 = load i32, ptr getelementptr inbounds (%struct.gr_info, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i32 0, i32 4, i64 1), i32 0, i32 6), align 8
  %131 = load i32, ptr getelementptr inbounds (%struct.gr_info, ptr getelementptr inbounds ([2 x %struct.gr_info_ss], ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i32 0, i32 4, i64 1), i64 0, i64 1), i32 0, i32 6), align 8
  %cmp185 = icmp eq i32 %130, %131
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then182
  %132 = phi i1 [ false, %if.then182 ], [ %cmp185, %land.rhs ]
  %land.ext = zext i1 %132 to i32
  store i32 %land.ext, ptr %check_ms_stereo, align 4
  br label %if.end187

if.end187:                                        ; preds = %land.end, %for.end175
  %133 = load i32, ptr %check_ms_stereo, align 4
  %tobool188 = icmp ne i32 %133, 0
  br i1 %tobool188, label %if.then189, label %if.end201

if.then189:                                       ; preds = %if.end187
  %134 = load double, ptr @lame_encode_frame.ms_ratio, align 8
  %135 = load double, ptr getelementptr inbounds ([2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 1), align 8
  %add190 = fadd double %134, %135
  %136 = load double, ptr %ms_ratio_prev, align 8
  %add191 = fadd double %add190, %136
  %137 = load double, ptr %ms_ratio_next, align 8
  %add192 = fadd double %add191, %137
  %mul193 = fmul double 2.500000e-01, %add192
  store double %mul193, ptr %ms_ratio_ave, align 8
  %138 = load double, ptr @lame_encode_frame.ms_ener_ratio, align 8
  %139 = load double, ptr getelementptr inbounds ([2 x double], ptr @lame_encode_frame.ms_ener_ratio, i64 0, i64 1), align 8
  %add194 = fadd double %138, %139
  %mul195 = fmul double 5.000000e-01, %add194
  store double %mul195, ptr %ms_ener_ratio_ave, align 8
  %140 = load double, ptr %ms_ratio_ave, align 8
  %cmp196 = fcmp olt double %140, 3.500000e-01
  br i1 %cmp196, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.then189
  %141 = load ptr, ptr %gfp.addr, align 8
  %mode_ext199 = getelementptr inbounds %struct.lame_global_flags, ptr %141, i32 0, i32 52
  store i32 2, ptr %mode_ext199, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.then189
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end187
  %142 = load ptr, ptr %gfp.addr, align 8
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %142, i32 0, i32 10
  %143 = load i32, ptr %force_ms, align 4
  %tobool202 = icmp ne i32 %143, 0
  br i1 %tobool202, label %if.then203, label %if.end205

if.then203:                                       ; preds = %if.end201
  %144 = load ptr, ptr %gfp.addr, align 8
  %mode_ext204 = getelementptr inbounds %struct.lame_global_flags, ptr %144, i32 0, i32 52
  store i32 2, ptr %mode_ext204, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end201
  %145 = load ptr, ptr %gfp.addr, align 8
  %mode_ext206 = getelementptr inbounds %struct.lame_global_flags, ptr %145, i32 0, i32 52
  %146 = load i32, ptr %mode_ext206, align 4
  %cmp207 = icmp eq i32 2, %146
  br i1 %cmp207, label %if.then209, label %if.else210

if.then209:                                       ; preds = %if.end205
  store ptr %masking_MS_ratio, ptr %masking, align 8
  store ptr %pe_MS, ptr %pe_use, align 8
  br label %if.end211

if.else210:                                       ; preds = %if.end205
  store ptr %masking_ratio, ptr %masking, align 8
  store ptr %pe, ptr %pe_use, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.else210, %if.then209
  %147 = load ptr, ptr %gfp.addr, align 8
  %VBR212 = getelementptr inbounds %struct.lame_global_flags, ptr %147, i32 0, i32 21
  %148 = load i32, ptr %VBR212, align 8
  %tobool213 = icmp ne i32 %148, 0
  br i1 %tobool213, label %if.then214, label %if.else220

if.then214:                                       ; preds = %if.end211
  %149 = load ptr, ptr %gfp.addr, align 8
  %150 = load ptr, ptr %pe_use, align 8
  %arraydecay215 = getelementptr inbounds [2 x [2 x double]], ptr %150, i64 0, i64 0
  %arraydecay216 = getelementptr inbounds [2 x [2 x [576 x double]]], ptr %xr, i64 0, i64 0
  %151 = load ptr, ptr %masking, align 8
  %arraydecay217 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], ptr %151, i64 0, i64 0
  %arraydecay218 = getelementptr inbounds [2 x [2 x [576 x i32]]], ptr %l3_enc, i64 0, i64 0
  %arraydecay219 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], ptr %scalefac, i64 0, i64 0
  call void @VBR_iteration_loop(ptr noundef %149, ptr noundef %arraydecay215, ptr noundef @lame_encode_frame.ms_ratio, ptr noundef %arraydecay216, ptr noundef %arraydecay217, ptr noundef @l3_side, ptr noundef %arraydecay218, ptr noundef %arraydecay219)
  br label %if.end226

if.else220:                                       ; preds = %if.end211
  %152 = load ptr, ptr %gfp.addr, align 8
  %153 = load ptr, ptr %pe_use, align 8
  %arraydecay221 = getelementptr inbounds [2 x [2 x double]], ptr %153, i64 0, i64 0
  %arraydecay222 = getelementptr inbounds [2 x [2 x [576 x double]]], ptr %xr, i64 0, i64 0
  %154 = load ptr, ptr %masking, align 8
  %arraydecay223 = getelementptr inbounds [2 x [2 x %struct.III_psy_ratio]], ptr %154, i64 0, i64 0
  %arraydecay224 = getelementptr inbounds [2 x [2 x [576 x i32]]], ptr %l3_enc, i64 0, i64 0
  %arraydecay225 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], ptr %scalefac, i64 0, i64 0
  call void @iteration_loop(ptr noundef %152, ptr noundef %arraydecay221, ptr noundef @lame_encode_frame.ms_ratio, ptr noundef %arraydecay222, ptr noundef %arraydecay223, ptr noundef @l3_side, ptr noundef %arraydecay224, ptr noundef %arraydecay225)
  br label %if.end226

if.end226:                                        ; preds = %if.else220, %if.then214
  %155 = load ptr, ptr %gfp.addr, align 8
  call void @getframebits(ptr noundef %155, ptr noundef %bitsPerFrame, ptr noundef %mean_bits)
  %156 = load ptr, ptr %gfp.addr, align 8
  %157 = load i32, ptr %bitsPerFrame, align 4
  %arraydecay227 = getelementptr inbounds [2 x [2 x [576 x i32]]], ptr %l3_enc, i64 0, i64 0
  %arraydecay228 = getelementptr inbounds [2 x [2 x %struct.III_scalefac_t]], ptr %scalefac, i64 0, i64 0
  call void @III_format_bitstream(ptr noundef %156, i32 noundef %157, ptr noundef %arraydecay227, ptr noundef @l3_side, ptr noundef %arraydecay228, ptr noundef @bs)
  %158 = load i64, ptr getelementptr inbounds (%struct.bit_stream_struc, ptr @bs, i32 0, i32 5), align 8
  %159 = load i64, ptr @lame_encode_frame.sentBits, align 8
  %sub229 = sub i64 %158, %159
  store i64 %sub229, ptr @lame_encode_frame.frameBits, align 8
  %160 = load i64, ptr @lame_encode_frame.frameBits, align 8
  %161 = load i64, ptr @lame_encode_frame.bitsPerSlot, align 8
  %rem230 = urem i64 %160, %161
  %tobool231 = icmp ne i64 %rem230, 0
  br i1 %tobool231, label %if.then232, label %if.end235

if.then232:                                       ; preds = %if.end226
  %162 = load ptr, ptr @__stderrp, align 8
  %163 = load i64, ptr @lame_encode_frame.frameBits, align 8
  %164 = load i64, ptr @lame_encode_frame.frameBits, align 8
  %165 = load i64, ptr @lame_encode_frame.bitsPerSlot, align 8
  %div233 = udiv i64 %164, %165
  %166 = load i64, ptr @lame_encode_frame.frameBits, align 8
  %167 = load i64, ptr @lame_encode_frame.bitsPerSlot, align 8
  %rem234 = urem i64 %166, %167
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.18, i64 noundef %163, i64 noundef %div233, i64 noundef %rem234)
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.end226
  %168 = load i64, ptr @lame_encode_frame.frameBits, align 8
  %169 = load i64, ptr @lame_encode_frame.sentBits, align 8
  %add236 = add i64 %169, %168
  store i64 %add236, ptr @lame_encode_frame.sentBits, align 8
  %170 = load ptr, ptr %mp3buf.addr, align 8
  %171 = load i32, ptr %mp3buf_size.addr, align 4
  %call237 = call i32 @copy_buffer(ptr noundef %170, i32 noundef %171, ptr noundef @bs)
  store i32 %call237, ptr %mp3count, align 4
  %172 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %172, i32 0, i32 5
  %173 = load i32, ptr %bWriteVbrTag, align 8
  %tobool238 = icmp ne i32 %173, 0
  br i1 %tobool238, label %if.then239, label %if.end242

if.then239:                                       ; preds = %if.end235
  %174 = load i64, ptr @lame_encode_frame.sentBits, align 8
  %div240 = udiv i64 %174, 8
  %conv241 = trunc i64 %div240 to i32
  call void @AddVbrFrame(i32 noundef %conv241)
  br label %if.end242

if.end242:                                        ; preds = %if.then239, %if.end235
  %175 = load ptr, ptr %gfp.addr, align 8
  %frameNum243 = getelementptr inbounds %struct.lame_global_flags, ptr %175, i32 0, i32 39
  %176 = load i64, ptr %frameNum243, align 8
  %inc244 = add nsw i64 %176, 1
  store i64 %inc244, ptr %frameNum243, align 8
  %177 = load i32, ptr %mp3count, align 4
  ret i32 %177
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare void @timestatus(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare void @L3psycho_anal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @mdct_sub48(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @VBR_iteration_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @iteration_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @getframebits(ptr noundef, ptr noundef, ptr noundef) #2

declare void @III_format_bitstream(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @copy_buffer(ptr noundef, i32 noundef, ptr noundef) #2

declare void @AddVbrFrame(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @fill_buffer_resample(ptr noundef %gfp, ptr noundef %outbuf, i32 noundef %desired_len, ptr noundef %inbuf, i32 noundef %len, ptr noundef %num_used, i32 noundef %ch) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %outbuf.addr = alloca ptr, align 8
  %desired_len.addr = alloca i32, align 4
  %inbuf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %num_used.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %linear = alloca i32, align 4
  %value = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %y3 = alloca i32, align 4
  %x0 = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %time0 = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %outbuf, ptr %outbuf.addr, align 8
  store i32 %desired_len, ptr %desired_len.addr, align 4
  store ptr %inbuf, ptr %inbuf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %num_used, ptr %num_used.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store i32 0, ptr %j, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 39
  %1 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %ch.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %ch.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom1
  store i32 1, ptr %arrayidx2, align 4
  %5 = load i32, ptr %ch.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom3
  store double 0.000000e+00, ptr %arrayidx4, align 8
  %6 = load i32, ptr %ch.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom5
  %arraydecay = getelementptr inbounds [5 x i16], ptr %arrayidx6, i64 0, i64 0
  %7 = load i32, ptr %ch.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [5 x i16], ptr %arrayidx8, i64 0, i64 0
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay9, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 10, i64 noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load ptr, ptr %gfp.addr, align 8
  %frameNum10 = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 39
  %10 = load i64, ptr %frameNum10, align 8
  %cmp11 = icmp ne i64 %10, 0
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %11 = load i32, ptr %ch.addr, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom13
  store i32 0, ptr %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %12 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %12, i32 0, i32 49
  %13 = load float, ptr %resample_ratio, align 8
  %conv = fpext float %13 to double
  %14 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio16 = getelementptr inbounds %struct.lame_global_flags, ptr %14, i32 0, i32 49
  %15 = load float, ptr %resample_ratio16, align 8
  %conv17 = fpext float %15 to double
  %add = fadd double 5.000000e-01, %conv17
  %16 = call double @llvm.floor.f64(double %add)
  %sub = fsub double %conv, %16
  %17 = call double @llvm.fabs.f64(double %sub)
  %cmp18 = fcmp olt double %17, 1.000000e-04
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, ptr %linear, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %18 = load i32, ptr %k, align 4
  %19 = load i32, ptr %desired_len.addr, align 4
  %cmp20 = icmp slt i32 %18, %19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, ptr %k, align 4
  %conv22 = sitofp i32 %20 to float
  %21 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio23 = getelementptr inbounds %struct.lame_global_flags, ptr %21, i32 0, i32 49
  %22 = load float, ptr %resample_ratio23, align 8
  %mul = fmul float %conv22, %22
  %conv24 = fpext float %mul to double
  store double %conv24, ptr %time0, align 8
  %23 = load double, ptr %time0, align 8
  %24 = load i32, ptr %ch.addr, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom25
  %25 = load double, ptr %arrayidx26, align 8
  %sub27 = fsub double %23, %25
  %26 = call double @llvm.floor.f64(double %sub27)
  %conv28 = fptosi double %26 to i32
  store i32 %conv28, ptr %j, align 4
  %27 = load i32, ptr %j, align 4
  %add29 = add nsw i32 %27, 2
  %28 = load i32, ptr %len.addr, align 4
  %cmp30 = icmp sge i32 %add29, %28
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body
  br label %for.end

if.end33:                                         ; preds = %for.body
  %29 = load double, ptr %time0, align 8
  %30 = load i32, ptr %ch.addr, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom34
  %31 = load double, ptr %arrayidx35, align 8
  %32 = load i32, ptr %j, align 4
  %conv36 = sitofp i32 %32 to double
  %add37 = fadd double %31, %conv36
  %sub38 = fsub double %29, %add37
  store double %sub38, ptr %x1, align 8
  %33 = load double, ptr %x1, align 8
  %sub39 = fsub double %33, 1.000000e+00
  store double %sub39, ptr %x2, align 8
  %34 = load i32, ptr %j, align 4
  %cmp40 = icmp slt i32 %34, 0
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end33
  %35 = load i32, ptr %ch.addr, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom42
  %36 = load i32, ptr %j, align 4
  %add44 = add nsw i32 5, %36
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [5 x i16], ptr %arrayidx43, i64 0, i64 %idxprom45
  %37 = load i16, ptr %arrayidx46, align 2
  %conv47 = sext i16 %37 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  %38 = load ptr, ptr %inbuf.addr, align 8
  %39 = load i32, ptr %j, align 4
  %idxprom48 = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %38, i64 %idxprom48
  %40 = load i16, ptr %arrayidx49, align 2
  %conv50 = sext i16 %40 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv47, %cond.true ], [ %conv50, %cond.false ]
  store i32 %cond, ptr %y1, align 4
  %41 = load i32, ptr %j, align 4
  %add51 = add nsw i32 1, %41
  %cmp52 = icmp slt i32 %add51, 0
  br i1 %cmp52, label %cond.true54, label %cond.false61

cond.true54:                                      ; preds = %cond.end
  %42 = load i32, ptr %ch.addr, align 4
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom55
  %43 = load i32, ptr %j, align 4
  %add57 = add nsw i32 6, %43
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [5 x i16], ptr %arrayidx56, i64 0, i64 %idxprom58
  %44 = load i16, ptr %arrayidx59, align 2
  %conv60 = sext i16 %44 to i32
  br label %cond.end66

cond.false61:                                     ; preds = %cond.end
  %45 = load ptr, ptr %inbuf.addr, align 8
  %46 = load i32, ptr %j, align 4
  %add62 = add nsw i32 1, %46
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %45, i64 %idxprom63
  %47 = load i16, ptr %arrayidx64, align 2
  %conv65 = sext i16 %47 to i32
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false61, %cond.true54
  %cond67 = phi i32 [ %conv60, %cond.true54 ], [ %conv65, %cond.false61 ]
  store i32 %cond67, ptr %y2, align 4
  %48 = load i32, ptr %linear, align 4
  %tobool68 = icmp ne i32 %48, 0
  br i1 %tobool68, label %if.then69, label %if.else

if.then69:                                        ; preds = %cond.end66
  %49 = load i32, ptr %y2, align 4
  %conv70 = sitofp i32 %49 to double
  %50 = load double, ptr %x1, align 8
  %51 = load i32, ptr %y1, align 4
  %conv72 = sitofp i32 %51 to double
  %52 = load double, ptr %x2, align 8
  %mul73 = fmul double %conv72, %52
  %neg = fneg double %mul73
  %53 = call double @llvm.fmuladd.f64(double %conv70, double %50, double %neg)
  %add74 = fadd double 5.000000e-01, %53
  %54 = call double @llvm.floor.f64(double %add74)
  %conv75 = fptosi double %54 to i16
  %55 = load ptr, ptr %outbuf.addr, align 8
  %56 = load i32, ptr %k, align 4
  %idxprom76 = sext i32 %56 to i64
  %arrayidx77 = getelementptr inbounds i16, ptr %55, i64 %idxprom76
  store i16 %conv75, ptr %arrayidx77, align 2
  br label %if.end158

if.else:                                          ; preds = %cond.end66
  %57 = load double, ptr %x1, align 8
  %add78 = fadd double %57, 1.000000e+00
  store double %add78, ptr %x0, align 8
  %58 = load double, ptr %x1, align 8
  %sub79 = fsub double %58, 2.000000e+00
  store double %sub79, ptr %x3, align 8
  %59 = load i32, ptr %j, align 4
  %sub80 = sub nsw i32 %59, 1
  %cmp81 = icmp slt i32 %sub80, 0
  br i1 %cmp81, label %cond.true83, label %cond.false91

cond.true83:                                      ; preds = %if.else
  %60 = load i32, ptr %ch.addr, align 4
  %idxprom84 = sext i32 %60 to i64
  %arrayidx85 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom84
  %61 = load i32, ptr %j, align 4
  %sub86 = sub nsw i32 %61, 1
  %add87 = add nsw i32 5, %sub86
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [5 x i16], ptr %arrayidx85, i64 0, i64 %idxprom88
  %62 = load i16, ptr %arrayidx89, align 2
  %conv90 = sext i16 %62 to i32
  br label %cond.end96

cond.false91:                                     ; preds = %if.else
  %63 = load ptr, ptr %inbuf.addr, align 8
  %64 = load i32, ptr %j, align 4
  %sub92 = sub nsw i32 %64, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds i16, ptr %63, i64 %idxprom93
  %65 = load i16, ptr %arrayidx94, align 2
  %conv95 = sext i16 %65 to i32
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false91, %cond.true83
  %cond97 = phi i32 [ %conv90, %cond.true83 ], [ %conv95, %cond.false91 ]
  store i32 %cond97, ptr %y0, align 4
  %66 = load i32, ptr %j, align 4
  %add98 = add nsw i32 %66, 2
  %cmp99 = icmp slt i32 %add98, 0
  br i1 %cmp99, label %cond.true101, label %cond.false109

cond.true101:                                     ; preds = %cond.end96
  %67 = load i32, ptr %ch.addr, align 4
  %idxprom102 = sext i32 %67 to i64
  %arrayidx103 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom102
  %68 = load i32, ptr %j, align 4
  %add104 = add nsw i32 %68, 2
  %add105 = add nsw i32 5, %add104
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [5 x i16], ptr %arrayidx103, i64 0, i64 %idxprom106
  %69 = load i16, ptr %arrayidx107, align 2
  %conv108 = sext i16 %69 to i32
  br label %cond.end114

cond.false109:                                    ; preds = %cond.end96
  %70 = load ptr, ptr %inbuf.addr, align 8
  %71 = load i32, ptr %j, align 4
  %add110 = add nsw i32 %71, 2
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i16, ptr %70, i64 %idxprom111
  %72 = load i16, ptr %arrayidx112, align 2
  %conv113 = sext i16 %72 to i32
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false109, %cond.true101
  %cond115 = phi i32 [ %conv108, %cond.true101 ], [ %conv113, %cond.false109 ]
  store i32 %cond115, ptr %y3, align 4
  %73 = load i32, ptr %y0, align 4
  %sub116 = sub nsw i32 0, %73
  %conv117 = sitofp i32 %sub116 to double
  %74 = load double, ptr %x1, align 8
  %mul118 = fmul double %conv117, %74
  %75 = load double, ptr %x2, align 8
  %mul119 = fmul double %mul118, %75
  %76 = load double, ptr %x3, align 8
  %mul120 = fmul double %mul119, %76
  %div = fdiv double %mul120, 6.000000e+00
  %add121 = fadd double 5.000000e-01, %div
  %77 = load i32, ptr %y1, align 4
  %conv122 = sitofp i32 %77 to double
  %78 = load double, ptr %x0, align 8
  %mul123 = fmul double %conv122, %78
  %79 = load double, ptr %x2, align 8
  %mul124 = fmul double %mul123, %79
  %80 = load double, ptr %x3, align 8
  %mul125 = fmul double %mul124, %80
  %div126 = fdiv double %mul125, 2.000000e+00
  %add127 = fadd double %add121, %div126
  %81 = load i32, ptr %y2, align 4
  %conv128 = sitofp i32 %81 to double
  %82 = load double, ptr %x0, align 8
  %mul129 = fmul double %conv128, %82
  %83 = load double, ptr %x1, align 8
  %mul130 = fmul double %mul129, %83
  %84 = load double, ptr %x3, align 8
  %mul131 = fmul double %mul130, %84
  %div132 = fdiv double %mul131, 2.000000e+00
  %sub133 = fsub double %add127, %div132
  %85 = load i32, ptr %y3, align 4
  %conv134 = sitofp i32 %85 to double
  %86 = load double, ptr %x0, align 8
  %mul135 = fmul double %conv134, %86
  %87 = load double, ptr %x1, align 8
  %mul136 = fmul double %mul135, %87
  %88 = load double, ptr %x2, align 8
  %mul137 = fmul double %mul136, %88
  %div138 = fdiv double %mul137, 6.000000e+00
  %add139 = fadd double %sub133, %div138
  %89 = call double @llvm.floor.f64(double %add139)
  %conv140 = fptosi double %89 to i32
  store i32 %conv140, ptr %value, align 4
  %90 = load i32, ptr %value, align 4
  %cmp141 = icmp sgt i32 %90, 32767
  br i1 %cmp141, label %if.then143, label %if.else146

if.then143:                                       ; preds = %cond.end114
  %91 = load ptr, ptr %outbuf.addr, align 8
  %92 = load i32, ptr %k, align 4
  %idxprom144 = sext i32 %92 to i64
  %arrayidx145 = getelementptr inbounds i16, ptr %91, i64 %idxprom144
  store i16 32767, ptr %arrayidx145, align 2
  br label %if.end157

if.else146:                                       ; preds = %cond.end114
  %93 = load i32, ptr %value, align 4
  %cmp147 = icmp slt i32 %93, -32767
  br i1 %cmp147, label %if.then149, label %if.else152

if.then149:                                       ; preds = %if.else146
  %94 = load ptr, ptr %outbuf.addr, align 8
  %95 = load i32, ptr %k, align 4
  %idxprom150 = sext i32 %95 to i64
  %arrayidx151 = getelementptr inbounds i16, ptr %94, i64 %idxprom150
  store i16 -32767, ptr %arrayidx151, align 2
  br label %if.end156

if.else152:                                       ; preds = %if.else146
  %96 = load i32, ptr %value, align 4
  %conv153 = trunc i32 %96 to i16
  %97 = load ptr, ptr %outbuf.addr, align 8
  %98 = load i32, ptr %k, align 4
  %idxprom154 = sext i32 %98 to i64
  %arrayidx155 = getelementptr inbounds i16, ptr %97, i64 %idxprom154
  store i16 %conv153, ptr %arrayidx155, align 2
  br label %if.end156

if.end156:                                        ; preds = %if.else152, %if.then149
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then143
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then69
  br label %for.inc

for.inc:                                          ; preds = %if.end158
  %99 = load i32, ptr %k, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %if.then32, %for.cond
  %100 = load i32, ptr %len.addr, align 4
  %101 = load i32, ptr %j, align 4
  %add159 = add nsw i32 %101, 2
  %cmp160 = icmp slt i32 %100, %add159
  br i1 %cmp160, label %cond.true162, label %cond.false163

cond.true162:                                     ; preds = %for.end
  %102 = load i32, ptr %len.addr, align 4
  br label %cond.end165

cond.false163:                                    ; preds = %for.end
  %103 = load i32, ptr %j, align 4
  %add164 = add nsw i32 %103, 2
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false163, %cond.true162
  %cond166 = phi i32 [ %102, %cond.true162 ], [ %add164, %cond.false163 ]
  %104 = load ptr, ptr %num_used.addr, align 8
  store i32 %cond166, ptr %104, align 4
  %105 = load ptr, ptr %num_used.addr, align 8
  %106 = load i32, ptr %105, align 4
  %conv167 = sitofp i32 %106 to float
  %107 = load i32, ptr %k, align 4
  %conv168 = sitofp i32 %107 to float
  %108 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio169 = getelementptr inbounds %struct.lame_global_flags, ptr %108, i32 0, i32 49
  %109 = load float, ptr %resample_ratio169, align 8
  %neg171 = fneg float %conv168
  %110 = call float @llvm.fmuladd.f32(float %neg171, float %109, float %conv167)
  %conv172 = fpext float %110 to double
  %111 = load i32, ptr %ch.addr, align 4
  %idxprom173 = sext i32 %111 to i64
  %arrayidx174 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom173
  %112 = load double, ptr %arrayidx174, align 8
  %add175 = fadd double %112, %conv172
  store double %add175, ptr %arrayidx174, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond176

for.cond176:                                      ; preds = %for.inc188, %cond.end165
  %113 = load i32, ptr %i, align 4
  %cmp177 = icmp slt i32 %113, 5
  br i1 %cmp177, label %for.body179, label %for.end190

for.body179:                                      ; preds = %for.cond176
  %114 = load ptr, ptr %inbuf.addr, align 8
  %115 = load ptr, ptr %num_used.addr, align 8
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %i, align 4
  %add180 = add nsw i32 %116, %117
  %sub181 = sub nsw i32 %add180, 5
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds i16, ptr %114, i64 %idxprom182
  %118 = load i16, ptr %arrayidx183, align 2
  %119 = load i32, ptr %ch.addr, align 4
  %idxprom184 = sext i32 %119 to i64
  %arrayidx185 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom184
  %120 = load i32, ptr %i, align 4
  %idxprom186 = sext i32 %120 to i64
  %arrayidx187 = getelementptr inbounds [5 x i16], ptr %arrayidx185, i64 0, i64 %idxprom186
  store i16 %118, ptr %arrayidx187, align 2
  br label %for.inc188

for.inc188:                                       ; preds = %for.body179
  %121 = load i32, ptr %i, align 4
  %inc189 = add nsw i32 %121, 1
  store i32 %inc189, ptr %i, align 4
  br label %for.cond176, !llvm.loop !19

for.end190:                                       ; preds = %for.cond176
  %122 = load i32, ptr %k, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nounwind ssp uwtable
define i32 @fill_buffer(ptr noundef %gfp, ptr noundef %outbuf, i32 noundef %desired_len, ptr noundef %inbuf, i32 noundef %len) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %outbuf.addr = alloca ptr, align 8
  %desired_len.addr = alloca i32, align 4
  %inbuf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %outbuf, ptr %outbuf.addr, align 8
  store i32 %desired_len, ptr %desired_len.addr, align 4
  store ptr %inbuf, ptr %inbuf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %desired_len.addr, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %desired_len.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %len.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %j, align 4
  %4 = load ptr, ptr %outbuf.addr, align 8
  %5 = load ptr, ptr %inbuf.addr, align 8
  %6 = load i32, ptr %j, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 2, %conv
  %7 = load ptr, ptr %outbuf.addr, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef %5, i64 noundef %mul, i64 noundef %8) #10
  %9 = load i32, ptr %j, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nounwind ssp uwtable
define i32 @lame_encode_buffer(ptr noundef %gfp, ptr noundef %buffer_l, ptr noundef %buffer_r, i32 noundef %nsamples, ptr noundef %mp3buf, i32 noundef %mp3buf_size) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca ptr, align 8
  %buffer_l.addr = alloca ptr, align 8
  %buffer_r.addr = alloca ptr, align 8
  %nsamples.addr = alloca i32, align 4
  %mp3buf.addr = alloca ptr, align 8
  %mp3buf_size.addr = alloca i32, align 4
  %mp3size = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %mf_needed = alloca i32, align 4
  %in_buffer = alloca [2 x ptr], align 8
  %n_in = alloca i32, align 4
  %n_out = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %buffer_l, ptr %buffer_l.addr, align 8
  store ptr %buffer_r, ptr %buffer_r.addr, align 8
  store i32 %nsamples, ptr %nsamples.addr, align 4
  store ptr %mp3buf, ptr %mp3buf.addr, align 8
  store i32 %mp3buf_size, ptr %mp3buf_size.addr, align 4
  store i32 0, ptr %mp3size, align 4
  %0 = load ptr, ptr %buffer_l.addr, align 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 0
  store ptr %0, ptr %arrayidx, align 8
  %1 = load ptr, ptr %buffer_r.addr, align 8
  %arrayidx1 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 1
  store ptr %1, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %2, i32 0, i32 42
  %3 = load i32, ptr %framesize, align 4
  %add = add nsw i32 1024, %3
  %sub = sub nsw i32 %add, 272
  store i32 %sub, ptr %mf_needed, align 4
  %4 = load i32, ptr %mf_needed, align 4
  %cmp = icmp sge i32 3056, %4
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.lame_encode_buffer, ptr noundef @.str.16, i32 noundef 990, ptr noundef @.str.19) #9
  unreachable

5:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %5
  %6 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %6, i32 0, i32 39
  %7 = load i64, ptr %frameNum, align 8
  %cmp2 = icmp eq i64 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i32, ptr @lame_encode_buffer.frame_buffered, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.memset.p0.i64(ptr align 2 @mfbuf, i8 0, i64 12224, i1 false)
  store i32 1, ptr @lame_encode_buffer.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4
  store i32 752, ptr @mf_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %9 = load ptr, ptr %gfp.addr, align 8
  %frameNum5 = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 39
  %10 = load i64, ptr %frameNum5, align 8
  %cmp6 = icmp eq i64 %10, 1
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 0, ptr @lame_encode_buffer.frame_buffered, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %11 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %num_channels, align 8
  %cmp10 = icmp eq i32 %12, 2
  br i1 %cmp10, label %land.lhs.true12, label %if.end33

land.lhs.true12:                                  ; preds = %if.end9
  %13 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 46
  %14 = load i32, ptr %stereo, align 4
  %cmp13 = icmp eq i32 %14, 1
  br i1 %cmp13, label %if.then15, label %if.end33

if.then15:                                        ; preds = %land.lhs.true12
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %nsamples.addr, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx18 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 0
  %17 = load ptr, ptr %arrayidx18, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds i16, ptr %17, i64 %idxprom
  %19 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %19 to i32
  %arrayidx21 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 1
  %20 = load ptr, ptr %arrayidx21, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %20, i64 %idxprom22
  %22 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %22 to i32
  %add25 = add nsw i32 %conv20, %conv24
  %div = sdiv i32 %add25, 2
  %conv26 = trunc i32 %div to i16
  %arrayidx27 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 0
  %23 = load ptr, ptr %arrayidx27, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %23, i64 %idxprom28
  store i16 %conv26, ptr %arrayidx29, align 2
  %arrayidx30 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 1
  %25 = load ptr, ptr %arrayidx30, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %25, i64 %idxprom31
  store i16 0, ptr %arrayidx32, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  br label %if.end33

if.end33:                                         ; preds = %for.end, %land.lhs.true12, %if.end9
  br label %while.cond

while.cond:                                       ; preds = %if.end117, %if.end33
  %28 = load i32, ptr %nsamples.addr, align 4
  %cmp34 = icmp sgt i32 %28, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %n_in, align 4
  store i32 0, ptr %n_out, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc62, %while.body
  %29 = load i32, ptr %ch, align 4
  %30 = load ptr, ptr %gfp.addr, align 8
  %stereo37 = getelementptr inbounds %struct.lame_global_flags, ptr %30, i32 0, i32 46
  %31 = load i32, ptr %stereo37, align 4
  %cmp38 = icmp slt i32 %29, %31
  br i1 %cmp38, label %for.body40, label %for.end64

for.body40:                                       ; preds = %for.cond36
  %32 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %32, i32 0, i32 49
  %33 = load float, ptr %resample_ratio, align 8
  %cmp41 = fcmp une float %33, 1.000000e+00
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %for.body40
  %34 = load ptr, ptr %gfp.addr, align 8
  %35 = load i32, ptr %ch, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom44
  %36 = load i32, ptr @mf_size, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [3056 x i16], ptr %arrayidx45, i64 0, i64 %idxprom46
  %37 = load ptr, ptr %gfp.addr, align 8
  %framesize48 = getelementptr inbounds %struct.lame_global_flags, ptr %37, i32 0, i32 42
  %38 = load i32, ptr %framesize48, align 4
  %39 = load i32, ptr %ch, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %idxprom49
  %40 = load ptr, ptr %arrayidx50, align 8
  %41 = load i32, ptr %nsamples.addr, align 4
  %42 = load i32, ptr %ch, align 4
  %call = call i32 @fill_buffer_resample(ptr noundef %34, ptr noundef %arrayidx47, i32 noundef %38, ptr noundef %40, i32 noundef %41, ptr noundef %n_in, i32 noundef %42)
  store i32 %call, ptr %n_out, align 4
  br label %if.end59

if.else:                                          ; preds = %for.body40
  %43 = load ptr, ptr %gfp.addr, align 8
  %44 = load i32, ptr %ch, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom51
  %45 = load i32, ptr @mf_size, align 4
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds [3056 x i16], ptr %arrayidx52, i64 0, i64 %idxprom53
  %46 = load ptr, ptr %gfp.addr, align 8
  %framesize55 = getelementptr inbounds %struct.lame_global_flags, ptr %46, i32 0, i32 42
  %47 = load i32, ptr %framesize55, align 4
  %48 = load i32, ptr %ch, align 4
  %idxprom56 = sext i32 %48 to i64
  %arrayidx57 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %idxprom56
  %49 = load ptr, ptr %arrayidx57, align 8
  %50 = load i32, ptr %nsamples.addr, align 4
  %call58 = call i32 @fill_buffer(ptr noundef %43, ptr noundef %arrayidx54, i32 noundef %47, ptr noundef %49, i32 noundef %50)
  store i32 %call58, ptr %n_out, align 4
  %51 = load i32, ptr %n_out, align 4
  store i32 %51, ptr %n_in, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then43
  %52 = load i32, ptr %n_in, align 4
  %53 = load i32, ptr %ch, align 4
  %idxprom60 = sext i32 %53 to i64
  %arrayidx61 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %idxprom60
  %54 = load ptr, ptr %arrayidx61, align 8
  %idx.ext = sext i32 %52 to i64
  %add.ptr = getelementptr inbounds i16, ptr %54, i64 %idx.ext
  store ptr %add.ptr, ptr %arrayidx61, align 8
  br label %for.inc62

for.inc62:                                        ; preds = %if.end59
  %55 = load i32, ptr %ch, align 4
  %inc63 = add nsw i32 %55, 1
  store i32 %inc63, ptr %ch, align 4
  br label %for.cond36, !llvm.loop !21

for.end64:                                        ; preds = %for.cond36
  %56 = load i32, ptr %n_in, align 4
  %57 = load i32, ptr %nsamples.addr, align 4
  %sub65 = sub nsw i32 %57, %56
  store i32 %sub65, ptr %nsamples.addr, align 4
  %58 = load i32, ptr %n_out, align 4
  %59 = load i32, ptr @mf_size, align 4
  %add66 = add nsw i32 %59, %58
  store i32 %add66, ptr @mf_size, align 4
  %60 = load i32, ptr @mf_size, align 4
  %cmp67 = icmp sle i32 %60, 3056
  %lnot69 = xor i1 %cmp67, true
  %lnot.ext70 = zext i1 %lnot69 to i32
  %conv71 = sext i32 %lnot.ext70 to i64
  %tobool72 = icmp ne i64 %conv71, 0
  br i1 %tobool72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %for.end64
  call void @__assert_rtn(ptr noundef @__func__.lame_encode_buffer, ptr noundef @.str.16, i32 noundef 1040, ptr noundef @.str.20) #9
  unreachable

61:                                               ; No predecessors!
  br label %cond.end75

cond.false74:                                     ; preds = %for.end64
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %61
  %62 = load i32, ptr %n_out, align 4
  %63 = load i32, ptr @mf_samples_to_encode, align 4
  %add76 = add nsw i32 %63, %62
  store i32 %add76, ptr @mf_samples_to_encode, align 4
  %64 = load i32, ptr @mf_size, align 4
  %65 = load i32, ptr %mf_needed, align 4
  %cmp77 = icmp sge i32 %64, %65
  br i1 %cmp77, label %if.then79, label %if.end117

if.then79:                                        ; preds = %cond.end75
  %66 = load ptr, ptr %gfp.addr, align 8
  %67 = load i32, ptr @mf_size, align 4
  %68 = load ptr, ptr %mp3buf.addr, align 8
  %69 = load i32, ptr %mp3buf_size.addr, align 4
  %call80 = call i32 @lame_encode_frame(ptr noundef %66, ptr noundef @mfbuf, ptr noundef getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 noundef %67, ptr noundef %68, i32 noundef %69)
  store i32 %call80, ptr %ret, align 4
  %70 = load i32, ptr %ret, align 4
  %cmp81 = icmp eq i32 %70, -1
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then79
  store i32 -1, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.then79
  %71 = load i32, ptr %ret, align 4
  %72 = load ptr, ptr %mp3buf.addr, align 8
  %idx.ext85 = sext i32 %71 to i64
  %add.ptr86 = getelementptr inbounds i8, ptr %72, i64 %idx.ext85
  store ptr %add.ptr86, ptr %mp3buf.addr, align 8
  %73 = load i32, ptr %ret, align 4
  %74 = load i32, ptr %mp3size, align 4
  %add87 = add nsw i32 %74, %73
  store i32 %add87, ptr %mp3size, align 4
  %75 = load ptr, ptr %gfp.addr, align 8
  %framesize88 = getelementptr inbounds %struct.lame_global_flags, ptr %75, i32 0, i32 42
  %76 = load i32, ptr %framesize88, align 4
  %77 = load i32, ptr @mf_size, align 4
  %sub89 = sub nsw i32 %77, %76
  store i32 %sub89, ptr @mf_size, align 4
  %78 = load ptr, ptr %gfp.addr, align 8
  %framesize90 = getelementptr inbounds %struct.lame_global_flags, ptr %78, i32 0, i32 42
  %79 = load i32, ptr %framesize90, align 4
  %80 = load i32, ptr @mf_samples_to_encode, align 4
  %sub91 = sub nsw i32 %80, %79
  store i32 %sub91, ptr @mf_samples_to_encode, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc114, %if.end84
  %81 = load i32, ptr %ch, align 4
  %82 = load ptr, ptr %gfp.addr, align 8
  %stereo93 = getelementptr inbounds %struct.lame_global_flags, ptr %82, i32 0, i32 46
  %83 = load i32, ptr %stereo93, align 4
  %cmp94 = icmp slt i32 %81, %83
  br i1 %cmp94, label %for.body96, label %for.end116

for.body96:                                       ; preds = %for.cond92
  store i32 0, ptr %i, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc111, %for.body96
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr @mf_size, align 4
  %cmp98 = icmp slt i32 %84, %85
  br i1 %cmp98, label %for.body100, label %for.end113

for.body100:                                      ; preds = %for.cond97
  %86 = load i32, ptr %ch, align 4
  %idxprom101 = sext i32 %86 to i64
  %arrayidx102 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom101
  %87 = load i32, ptr %i, align 4
  %88 = load ptr, ptr %gfp.addr, align 8
  %framesize103 = getelementptr inbounds %struct.lame_global_flags, ptr %88, i32 0, i32 42
  %89 = load i32, ptr %framesize103, align 4
  %add104 = add nsw i32 %87, %89
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [3056 x i16], ptr %arrayidx102, i64 0, i64 %idxprom105
  %90 = load i16, ptr %arrayidx106, align 2
  %91 = load i32, ptr %ch, align 4
  %idxprom107 = sext i32 %91 to i64
  %arrayidx108 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom107
  %92 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %92 to i64
  %arrayidx110 = getelementptr inbounds [3056 x i16], ptr %arrayidx108, i64 0, i64 %idxprom109
  store i16 %90, ptr %arrayidx110, align 2
  br label %for.inc111

for.inc111:                                       ; preds = %for.body100
  %93 = load i32, ptr %i, align 4
  %inc112 = add nsw i32 %93, 1
  store i32 %inc112, ptr %i, align 4
  br label %for.cond97, !llvm.loop !22

for.end113:                                       ; preds = %for.cond97
  br label %for.inc114

for.inc114:                                       ; preds = %for.end113
  %94 = load i32, ptr %ch, align 4
  %inc115 = add nsw i32 %94, 1
  store i32 %inc115, ptr %ch, align 4
  br label %for.cond92, !llvm.loop !23

for.end116:                                       ; preds = %for.cond92
  br label %if.end117

if.end117:                                        ; preds = %for.end116, %cond.end75
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %95 = load i32, ptr %nsamples.addr, align 4
  %cmp118 = icmp eq i32 %95, 0
  %lnot120 = xor i1 %cmp118, true
  %lnot.ext121 = zext i1 %lnot120 to i32
  %conv122 = sext i32 %lnot.ext121 to i64
  %tobool123 = icmp ne i64 %conv122, 0
  br i1 %tobool123, label %cond.true124, label %cond.false125

cond.true124:                                     ; preds = %while.end
  call void @__assert_rtn(ptr noundef @__func__.lame_encode_buffer, ptr noundef @.str.16, i32 noundef 1061, ptr noundef @.str.21) #9
  unreachable

96:                                               ; No predecessors!
  br label %cond.end126

cond.false125:                                    ; preds = %while.end
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false125, %96
  %97 = load i32, ptr %mp3size, align 4
  store i32 %97, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end126, %if.then83
  %98 = load i32, ptr %retval, align 4
  ret i32 %98
}

; Function Attrs: nounwind ssp uwtable
define i32 @lame_encode_buffer_interleaved(ptr noundef %gfp, ptr noundef %buffer, i32 noundef %nsamples, ptr noundef %mp3buf, i32 noundef %mp3buf_size) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %nsamples.addr = alloca i32, align 4
  %mp3buf.addr = alloca ptr, align 8
  %mp3buf_size.addr = alloca i32, align 4
  %mp3size = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %ch = alloca i32, align 4
  %mf_needed = alloca i32, align 4
  %buffer_l = alloca ptr, align 8
  %buffer_r = alloca ptr, align 8
  %n_out = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %nsamples, ptr %nsamples.addr, align 4
  store ptr %mp3buf, ptr %mp3buf.addr, align 8
  store i32 %mp3buf_size, ptr %mp3buf_size.addr, align 4
  store i32 0, ptr %mp3size, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 42
  %1 = load i32, ptr %framesize, align 4
  %add = add nsw i32 1024, %1
  %sub = sub nsw i32 %add, 272
  store i32 %sub, ptr %mf_needed, align 4
  %2 = load i32, ptr %mf_needed, align 4
  %cmp = icmp sge i32 3056, %2
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.lame_encode_buffer_interleaved, ptr noundef @.str.16, i32 noundef 1078, ptr noundef @.str.19) #9
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %3
  %4 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %num_channels, align 8
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr %gfp.addr, align 8
  %7 = load ptr, ptr %buffer.addr, align 8
  %8 = load i32, ptr %nsamples.addr, align 4
  %9 = load ptr, ptr %mp3buf.addr, align 8
  %10 = load i32, ptr %mp3buf_size.addr, align 4
  %call = call i32 @lame_encode_buffer(ptr noundef %6, ptr noundef %7, ptr noundef null, i32 noundef %8, ptr noundef %9, i32 noundef %10)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %11 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %11, i32 0, i32 49
  %12 = load float, ptr %resample_ratio, align 8
  %cmp3 = fcmp une float %12, 1.000000e+00
  br i1 %cmp3, label %if.then5, label %if.end29

if.then5:                                         ; preds = %if.end
  %13 = load i32, ptr %nsamples.addr, align 4
  %conv6 = sext i32 %13 to i64
  %mul = mul i64 2, %conv6
  %call7 = call ptr @malloc(i64 noundef %mul) #11
  store ptr %call7, ptr %buffer_l, align 8
  %14 = load i32, ptr %nsamples.addr, align 4
  %conv8 = sext i32 %14 to i64
  %mul9 = mul i64 2, %conv8
  %call10 = call ptr @malloc(i64 noundef %mul9) #11
  store ptr %call10, ptr %buffer_r, align 8
  %15 = load ptr, ptr %buffer_l, align 8
  %cmp11 = icmp eq ptr %15, null
  br i1 %cmp11, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %16 = load ptr, ptr %buffer_r, align 8
  %cmp13 = icmp eq ptr %16, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.then5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %nsamples.addr, align 4
  %cmp17 = icmp slt i32 %17, %18
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %buffer.addr, align 8
  %20 = load i32, ptr %i, align 4
  %mul19 = mul nsw i32 2, %20
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds i16, ptr %19, i64 %idxprom
  %21 = load i16, ptr %arrayidx, align 2
  %22 = load ptr, ptr %buffer_l, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %22, i64 %idxprom20
  store i16 %21, ptr %arrayidx21, align 2
  %24 = load ptr, ptr %buffer.addr, align 8
  %25 = load i32, ptr %i, align 4
  %mul22 = mul nsw i32 2, %25
  %add23 = add nsw i32 %mul22, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i16, ptr %24, i64 %idxprom24
  %26 = load i16, ptr %arrayidx25, align 2
  %27 = load ptr, ptr %buffer_r, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %27, i64 %idxprom26
  store i16 %26, ptr %arrayidx27, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %gfp.addr, align 8
  %31 = load ptr, ptr %buffer_l, align 8
  %32 = load ptr, ptr %buffer_r, align 8
  %33 = load i32, ptr %nsamples.addr, align 4
  %34 = load ptr, ptr %mp3buf.addr, align 8
  %35 = load i32, ptr %mp3buf_size.addr, align 4
  %call28 = call i32 @lame_encode_buffer(ptr noundef %30, ptr noundef %31, ptr noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35)
  store i32 %call28, ptr %ret, align 4
  %36 = load ptr, ptr %buffer_l, align 8
  call void @free(ptr noundef %36)
  %37 = load ptr, ptr %buffer_r, align 8
  call void @free(ptr noundef %37)
  %38 = load i32, ptr %ret, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end
  %39 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %39, i32 0, i32 39
  %40 = load i64, ptr %frameNum, align 8
  %cmp30 = icmp eq i64 %40, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end29
  %41 = load i32, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  %tobool32 = icmp ne i32 %41, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  call void @llvm.memset.p0.i64(ptr align 2 @mfbuf, i8 0, i64 12224, i1 false)
  store i32 1, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4
  store i32 752, ptr @mf_size, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %if.end29
  %42 = load ptr, ptr %gfp.addr, align 8
  %frameNum35 = getelementptr inbounds %struct.lame_global_flags, ptr %42, i32 0, i32 39
  %43 = load i64, ptr %frameNum35, align 8
  %cmp36 = icmp eq i64 %43, 1
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  store i32 0, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34
  %44 = load ptr, ptr %gfp.addr, align 8
  %num_channels40 = getelementptr inbounds %struct.lame_global_flags, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %num_channels40, align 8
  %cmp41 = icmp eq i32 %45, 2
  br i1 %cmp41, label %land.lhs.true43, label %if.end72

land.lhs.true43:                                  ; preds = %if.end39
  %46 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %46, i32 0, i32 46
  %47 = load i32, ptr %stereo, align 4
  %cmp44 = icmp eq i32 %47, 1
  br i1 %cmp44, label %if.then46, label %if.end72

if.then46:                                        ; preds = %land.lhs.true43
  store i32 0, ptr %i, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc69, %if.then46
  %48 = load i32, ptr %i, align 4
  %49 = load i32, ptr %nsamples.addr, align 4
  %cmp48 = icmp slt i32 %48, %49
  br i1 %cmp48, label %for.body50, label %for.end71

for.body50:                                       ; preds = %for.cond47
  %50 = load ptr, ptr %buffer.addr, align 8
  %51 = load i32, ptr %i, align 4
  %mul51 = mul nsw i32 2, %51
  %idxprom52 = sext i32 %mul51 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %50, i64 %idxprom52
  %52 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %52 to i32
  %53 = load ptr, ptr %buffer.addr, align 8
  %54 = load i32, ptr %i, align 4
  %mul55 = mul nsw i32 2, %54
  %add56 = add nsw i32 %mul55, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %53, i64 %idxprom57
  %55 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %55 to i32
  %add60 = add nsw i32 %conv54, %conv59
  %div = sdiv i32 %add60, 2
  %conv61 = trunc i32 %div to i16
  %56 = load ptr, ptr %buffer.addr, align 8
  %57 = load i32, ptr %i, align 4
  %mul62 = mul nsw i32 2, %57
  %idxprom63 = sext i32 %mul62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %56, i64 %idxprom63
  store i16 %conv61, ptr %arrayidx64, align 2
  %58 = load ptr, ptr %buffer.addr, align 8
  %59 = load i32, ptr %i, align 4
  %mul65 = mul nsw i32 2, %59
  %add66 = add nsw i32 %mul65, 1
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %58, i64 %idxprom67
  store i16 0, ptr %arrayidx68, align 2
  br label %for.inc69

for.inc69:                                        ; preds = %for.body50
  %60 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %60, 1
  store i32 %inc70, ptr %i, align 4
  br label %for.cond47, !llvm.loop !26

for.end71:                                        ; preds = %for.cond47
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %land.lhs.true43, %if.end39
  br label %while.cond

while.cond:                                       ; preds = %if.end155, %if.end72
  %61 = load i32, ptr %nsamples.addr, align 4
  %cmp73 = icmp sgt i32 %61, 0
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load ptr, ptr %gfp.addr, align 8
  %framesize75 = getelementptr inbounds %struct.lame_global_flags, ptr %62, i32 0, i32 42
  %63 = load i32, ptr %framesize75, align 4
  %64 = load i32, ptr %nsamples.addr, align 4
  %cmp76 = icmp slt i32 %63, %64
  br i1 %cmp76, label %cond.true78, label %cond.false80

cond.true78:                                      ; preds = %while.body
  %65 = load ptr, ptr %gfp.addr, align 8
  %framesize79 = getelementptr inbounds %struct.lame_global_flags, ptr %65, i32 0, i32 42
  %66 = load i32, ptr %framesize79, align 4
  br label %cond.end81

cond.false80:                                     ; preds = %while.body
  %67 = load i32, ptr %nsamples.addr, align 4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true78
  %cond = phi i32 [ %66, %cond.true78 ], [ %67, %cond.false80 ]
  store i32 %cond, ptr %n_out, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc99, %cond.end81
  %68 = load i32, ptr %i, align 4
  %69 = load i32, ptr %n_out, align 4
  %cmp83 = icmp slt i32 %68, %69
  br i1 %cmp83, label %for.body85, label %for.end101

for.body85:                                       ; preds = %for.cond82
  %70 = load ptr, ptr %buffer.addr, align 8
  %71 = load i32, ptr %i, align 4
  %mul86 = mul nsw i32 2, %71
  %idxprom87 = sext i32 %mul86 to i64
  %arrayidx88 = getelementptr inbounds i16, ptr %70, i64 %idxprom87
  %72 = load i16, ptr %arrayidx88, align 2
  %73 = load i32, ptr @mf_size, align 4
  %74 = load i32, ptr %i, align 4
  %add89 = add nsw i32 %73, %74
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [3056 x i16], ptr @mfbuf, i64 0, i64 %idxprom90
  store i16 %72, ptr %arrayidx91, align 2
  %75 = load ptr, ptr %buffer.addr, align 8
  %76 = load i32, ptr %i, align 4
  %mul92 = mul nsw i32 2, %76
  %add93 = add nsw i32 %mul92, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i16, ptr %75, i64 %idxprom94
  %77 = load i16, ptr %arrayidx95, align 2
  %78 = load i32, ptr @mf_size, align 4
  %79 = load i32, ptr %i, align 4
  %add96 = add nsw i32 %78, %79
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [3056 x i16], ptr getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i64 0, i64 %idxprom97
  store i16 %77, ptr %arrayidx98, align 2
  br label %for.inc99

for.inc99:                                        ; preds = %for.body85
  %80 = load i32, ptr %i, align 4
  %inc100 = add nsw i32 %80, 1
  store i32 %inc100, ptr %i, align 4
  br label %for.cond82, !llvm.loop !27

for.end101:                                       ; preds = %for.cond82
  %81 = load i32, ptr %n_out, align 4
  %mul102 = mul nsw i32 2, %81
  %82 = load ptr, ptr %buffer.addr, align 8
  %idx.ext = sext i32 %mul102 to i64
  %add.ptr = getelementptr inbounds i16, ptr %82, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer.addr, align 8
  %83 = load i32, ptr %n_out, align 4
  %84 = load i32, ptr %nsamples.addr, align 4
  %sub103 = sub nsw i32 %84, %83
  store i32 %sub103, ptr %nsamples.addr, align 4
  %85 = load i32, ptr %n_out, align 4
  %86 = load i32, ptr @mf_size, align 4
  %add104 = add nsw i32 %86, %85
  store i32 %add104, ptr @mf_size, align 4
  %87 = load i32, ptr @mf_size, align 4
  %cmp105 = icmp sle i32 %87, 3056
  %lnot107 = xor i1 %cmp105, true
  %lnot.ext108 = zext i1 %lnot107 to i32
  %conv109 = sext i32 %lnot.ext108 to i64
  %tobool110 = icmp ne i64 %conv109, 0
  br i1 %tobool110, label %cond.true111, label %cond.false112

cond.true111:                                     ; preds = %for.end101
  call void @__assert_rtn(ptr noundef @__func__.lame_encode_buffer_interleaved, ptr noundef @.str.16, i32 noundef 1135, ptr noundef @.str.20) #9
  unreachable

88:                                               ; No predecessors!
  br label %cond.end113

cond.false112:                                    ; preds = %for.end101
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false112, %88
  %89 = load i32, ptr %n_out, align 4
  %90 = load i32, ptr @mf_samples_to_encode, align 4
  %add114 = add nsw i32 %90, %89
  store i32 %add114, ptr @mf_samples_to_encode, align 4
  %91 = load i32, ptr @mf_size, align 4
  %92 = load i32, ptr %mf_needed, align 4
  %cmp115 = icmp sge i32 %91, %92
  br i1 %cmp115, label %if.then117, label %if.end155

if.then117:                                       ; preds = %cond.end113
  %93 = load ptr, ptr %gfp.addr, align 8
  %94 = load i32, ptr @mf_size, align 4
  %95 = load ptr, ptr %mp3buf.addr, align 8
  %96 = load i32, ptr %mp3buf_size.addr, align 4
  %call118 = call i32 @lame_encode_frame(ptr noundef %93, ptr noundef @mfbuf, ptr noundef getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 noundef %94, ptr noundef %95, i32 noundef %96)
  store i32 %call118, ptr %ret, align 4
  %97 = load i32, ptr %ret, align 4
  %cmp119 = icmp eq i32 %97, -1
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.then117
  store i32 -1, ptr %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.then117
  %98 = load i32, ptr %ret, align 4
  %99 = load ptr, ptr %mp3buf.addr, align 8
  %idx.ext123 = sext i32 %98 to i64
  %add.ptr124 = getelementptr inbounds i8, ptr %99, i64 %idx.ext123
  store ptr %add.ptr124, ptr %mp3buf.addr, align 8
  %100 = load i32, ptr %ret, align 4
  %101 = load i32, ptr %mp3size, align 4
  %add125 = add nsw i32 %101, %100
  store i32 %add125, ptr %mp3size, align 4
  %102 = load ptr, ptr %gfp.addr, align 8
  %framesize126 = getelementptr inbounds %struct.lame_global_flags, ptr %102, i32 0, i32 42
  %103 = load i32, ptr %framesize126, align 4
  %104 = load i32, ptr @mf_size, align 4
  %sub127 = sub nsw i32 %104, %103
  store i32 %sub127, ptr @mf_size, align 4
  %105 = load ptr, ptr %gfp.addr, align 8
  %framesize128 = getelementptr inbounds %struct.lame_global_flags, ptr %105, i32 0, i32 42
  %106 = load i32, ptr %framesize128, align 4
  %107 = load i32, ptr @mf_samples_to_encode, align 4
  %sub129 = sub nsw i32 %107, %106
  store i32 %sub129, ptr @mf_samples_to_encode, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc152, %if.end122
  %108 = load i32, ptr %ch, align 4
  %109 = load ptr, ptr %gfp.addr, align 8
  %stereo131 = getelementptr inbounds %struct.lame_global_flags, ptr %109, i32 0, i32 46
  %110 = load i32, ptr %stereo131, align 4
  %cmp132 = icmp slt i32 %108, %110
  br i1 %cmp132, label %for.body134, label %for.end154

for.body134:                                      ; preds = %for.cond130
  store i32 0, ptr %i, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc149, %for.body134
  %111 = load i32, ptr %i, align 4
  %112 = load i32, ptr @mf_size, align 4
  %cmp136 = icmp slt i32 %111, %112
  br i1 %cmp136, label %for.body138, label %for.end151

for.body138:                                      ; preds = %for.cond135
  %113 = load i32, ptr %ch, align 4
  %idxprom139 = sext i32 %113 to i64
  %arrayidx140 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom139
  %114 = load i32, ptr %i, align 4
  %115 = load ptr, ptr %gfp.addr, align 8
  %framesize141 = getelementptr inbounds %struct.lame_global_flags, ptr %115, i32 0, i32 42
  %116 = load i32, ptr %framesize141, align 4
  %add142 = add nsw i32 %114, %116
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [3056 x i16], ptr %arrayidx140, i64 0, i64 %idxprom143
  %117 = load i16, ptr %arrayidx144, align 2
  %118 = load i32, ptr %ch, align 4
  %idxprom145 = sext i32 %118 to i64
  %arrayidx146 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom145
  %119 = load i32, ptr %i, align 4
  %idxprom147 = sext i32 %119 to i64
  %arrayidx148 = getelementptr inbounds [3056 x i16], ptr %arrayidx146, i64 0, i64 %idxprom147
  store i16 %117, ptr %arrayidx148, align 2
  br label %for.inc149

for.inc149:                                       ; preds = %for.body138
  %120 = load i32, ptr %i, align 4
  %inc150 = add nsw i32 %120, 1
  store i32 %inc150, ptr %i, align 4
  br label %for.cond135, !llvm.loop !28

for.end151:                                       ; preds = %for.cond135
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %121 = load i32, ptr %ch, align 4
  %inc153 = add nsw i32 %121, 1
  store i32 %inc153, ptr %ch, align 4
  br label %for.cond130, !llvm.loop !29

for.end154:                                       ; preds = %for.cond130
  br label %if.end155

if.end155:                                        ; preds = %for.end154, %cond.end113
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %122 = load i32, ptr %nsamples.addr, align 4
  %cmp156 = icmp eq i32 %122, 0
  %lnot158 = xor i1 %cmp156, true
  %lnot.ext159 = zext i1 %lnot158 to i32
  %conv160 = sext i32 %lnot.ext159 to i64
  %tobool161 = icmp ne i64 %conv160, 0
  br i1 %tobool161, label %cond.true162, label %cond.false163

cond.true162:                                     ; preds = %while.end
  call void @__assert_rtn(ptr noundef @__func__.lame_encode_buffer_interleaved, ptr noundef @.str.16, i32 noundef 1156, ptr noundef @.str.21) #9
  unreachable

123:                                              ; No predecessors!
  br label %cond.end164

cond.false163:                                    ; preds = %while.end
  br label %cond.end164

cond.end164:                                      ; preds = %cond.false163, %123
  %124 = load i32, ptr %mp3size, align 4
  store i32 %124, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end164, %if.then121, %for.end, %if.then15, %if.then
  %125 = load i32, ptr %retval, align 4
  ret i32 %125
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #7

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @lame_encode(ptr noundef %gfp, ptr noundef %in_buffer, ptr noundef %mp3buf, i32 noundef %size) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %in_buffer.addr = alloca ptr, align 8
  %mp3buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %imp3 = alloca i32, align 4
  %save = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %in_buffer, ptr %in_buffer.addr, align 8
  store ptr %mp3buf, ptr %mp3buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr @mf_samples_to_encode, align 4
  store i32 %0, ptr %save, align 4
  %1 = load ptr, ptr %gfp.addr, align 8
  %2 = load ptr, ptr %in_buffer.addr, align 8
  %arrayidx = getelementptr inbounds [1152 x i16], ptr %2, i64 0
  %arraydecay = getelementptr inbounds [1152 x i16], ptr %arrayidx, i64 0, i64 0
  %3 = load ptr, ptr %in_buffer.addr, align 8
  %arrayidx1 = getelementptr inbounds [1152 x i16], ptr %3, i64 1
  %arraydecay2 = getelementptr inbounds [1152 x i16], ptr %arrayidx1, i64 0, i64 0
  %4 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 45
  %5 = load i32, ptr %mode_gr, align 8
  %mul = mul nsw i32 576, %5
  %6 = load ptr, ptr %mp3buf.addr, align 8
  %7 = load i32, ptr %size.addr, align 4
  %call = call i32 @lame_encode_buffer(ptr noundef %1, ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef %mul, ptr noundef %6, i32 noundef %7)
  store i32 %call, ptr %imp3, align 4
  %8 = load i32, ptr %save, align 4
  store i32 %8, ptr @mf_samples_to_encode, align 4
  %9 = load i32, ptr %imp3, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define void @lame_init(ptr noundef %gfp) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 36
  store i32 0, ptr %allow_diff_short, align 4
  %1 = load ptr, ptr %gfp.addr, align 8
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, ptr %1, i32 0, i32 33
  store i32 0, ptr %ATHonly, align 8
  %2 = load ptr, ptr %gfp.addr, align 8
  %noATH = getelementptr inbounds %struct.lame_global_flags, ptr %2, i32 0, i32 34
  store i32 0, ptr %noATH, align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %3, i32 0, i32 5
  store i32 1, ptr %bWriteVbrTag, align 8
  %4 = load ptr, ptr %gfp.addr, align 8
  %cwlimit = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 35
  store float 0.000000e+00, ptr %cwlimit, align 8
  %5 = load ptr, ptr %gfp.addr, align 8
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %5, i32 0, i32 17
  store i32 0, ptr %disable_reservoir, align 8
  %6 = load ptr, ptr %gfp.addr, align 8
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, ptr %6, i32 0, i32 18
  store i32 0, ptr %experimentalX, align 4
  %7 = load ptr, ptr %gfp.addr, align 8
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, ptr %7, i32 0, i32 19
  store i32 0, ptr %experimentalY, align 8
  %8 = load ptr, ptr %gfp.addr, align 8
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, ptr %8, i32 0, i32 20
  store i32 0, ptr %experimentalZ, align 4
  %9 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 39
  store i64 0, ptr %frameNum, align 8
  %10 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %10, i32 0, i32 4
  store i32 0, ptr %gtkflag, align 4
  %11 = load ptr, ptr %gfp.addr, align 8
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %11, i32 0, i32 6
  store i32 5, ptr %quality, align 4
  %12 = load ptr, ptr %gfp.addr, align 8
  %input_format = getelementptr inbounds %struct.lame_global_flags, ptr %12, i32 0, i32 29
  store i32 0, ptr %input_format, align 8
  %13 = load ptr, ptr %gfp.addr, align 8
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %13, i32 0, i32 59
  store i32 0, ptr %filter_type, align 8
  %14 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %14, i32 0, i32 25
  store i32 0, ptr %lowpassfreq, align 8
  %15 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %15, i32 0, i32 26
  store i32 0, ptr %highpassfreq, align 4
  %16 = load ptr, ptr %gfp.addr, align 8
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %16, i32 0, i32 27
  store i32 -1, ptr %lowpasswidth, align 8
  %17 = load ptr, ptr %gfp.addr, align 8
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %17, i32 0, i32 28
  store i32 -1, ptr %highpasswidth, align 4
  %18 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %18, i32 0, i32 53
  store float 0.000000e+00, ptr %lowpass1, align 8
  %19 = load ptr, ptr %gfp.addr, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %19, i32 0, i32 54
  store float 0.000000e+00, ptr %lowpass2, align 4
  %20 = load ptr, ptr %gfp.addr, align 8
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %20, i32 0, i32 55
  store float 0.000000e+00, ptr %highpass1, align 8
  %21 = load ptr, ptr %gfp.addr, align 8
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %21, i32 0, i32 56
  store float 0.000000e+00, ptr %highpass2, align 4
  %22 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %22, i32 0, i32 57
  store i32 32, ptr %lowpass_band, align 8
  %23 = load ptr, ptr %gfp.addr, align 8
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %23, i32 0, i32 58
  store i32 -1, ptr %highpass_band, align 4
  %24 = load ptr, ptr %gfp.addr, align 8
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, ptr %24, i32 0, i32 37
  store i32 0, ptr %no_short_blocks, align 8
  %25 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %25, i32 0, i32 49
  store float 1.000000e+00, ptr %resample_ratio, align 8
  %26 = load ptr, ptr %gfp.addr, align 8
  %padding_type = getelementptr inbounds %struct.lame_global_flags, ptr %26, i32 0, i32 15
  store i32 2, ptr %padding_type, align 8
  %27 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %27, i32 0, i32 44
  store i32 0, ptr %padding, align 4
  %28 = load ptr, ptr %gfp.addr, align 8
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, ptr %28, i32 0, i32 30
  store i32 0, ptr %swapbytes, align 4
  %29 = load ptr, ptr %gfp.addr, align 8
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %29, i32 0, i32 7
  store i32 0, ptr %silent, align 8
  %30 = load ptr, ptr %gfp.addr, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %30, i32 0, i32 40
  store i64 0, ptr %totalframes, align 8
  %31 = load ptr, ptr %gfp.addr, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %31, i32 0, i32 21
  store i32 0, ptr %VBR, align 8
  %32 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %32, i32 0, i32 22
  store i32 4, ptr %VBR_q, align 4
  %33 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %33, i32 0, i32 23
  store i32 0, ptr %VBR_min_bitrate_kbps, align 8
  %34 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %34, i32 0, i32 24
  store i32 0, ptr %VBR_max_bitrate_kbps, align 4
  %35 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %35, i32 0, i32 47
  store i32 1, ptr %VBR_min_bitrate, align 8
  %36 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %36, i32 0, i32 48
  store i32 13, ptr %VBR_max_bitrate, align 4
  %37 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %37, i32 0, i32 43
  store i32 1, ptr %version, align 8
  %38 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %38, i32 0, i32 8
  store i32 1, ptr %mode, align 4
  %39 = load ptr, ptr %gfp.addr, align 8
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, ptr %39, i32 0, i32 9
  store i32 0, ptr %mode_fixed, align 8
  %40 = load ptr, ptr %gfp.addr, align 8
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %40, i32 0, i32 10
  store i32 0, ptr %force_ms, align 4
  %41 = load ptr, ptr %gfp.addr, align 8
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %41, i32 0, i32 11
  store i32 0, ptr %brate, align 8
  %42 = load ptr, ptr %gfp.addr, align 8
  %copyright = getelementptr inbounds %struct.lame_global_flags, ptr %42, i32 0, i32 12
  store i32 0, ptr %copyright, align 4
  %43 = load ptr, ptr %gfp.addr, align 8
  %original = getelementptr inbounds %struct.lame_global_flags, ptr %43, i32 0, i32 13
  store i32 1, ptr %original, align 8
  %44 = load ptr, ptr %gfp.addr, align 8
  %extension = getelementptr inbounds %struct.lame_global_flags, ptr %44, i32 0, i32 16
  store i32 0, ptr %extension, align 4
  %45 = load ptr, ptr %gfp.addr, align 8
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %45, i32 0, i32 14
  store i32 0, ptr %error_protection, align 4
  %46 = load ptr, ptr %gfp.addr, align 8
  %emphasis = getelementptr inbounds %struct.lame_global_flags, ptr %46, i32 0, i32 38
  store i32 0, ptr %emphasis, align 4
  %47 = load ptr, ptr %gfp.addr, align 8
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %47, i32 0, i32 2
  store i32 44100, ptr %in_samplerate, align 4
  %48 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %48, i32 0, i32 3
  store i32 0, ptr %out_samplerate, align 8
  %49 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %49, i32 0, i32 1
  store i32 2, ptr %num_channels, align 8
  %50 = load ptr, ptr %gfp.addr, align 8
  %num_samples = getelementptr inbounds %struct.lame_global_flags, ptr %50, i32 0, i32 0
  store i64 4294967295, ptr %num_samples, align 8
  %51 = load ptr, ptr %gfp.addr, align 8
  %inPath = getelementptr inbounds %struct.lame_global_flags, ptr %51, i32 0, i32 31
  store ptr null, ptr %inPath, align 8
  %52 = load ptr, ptr %gfp.addr, align 8
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %52, i32 0, i32 32
  store ptr null, ptr %outPath, align 8
  store i32 0, ptr @id3tag, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @lame_encode_finish(ptr noundef %gfp, ptr noundef %mp3buffer, i32 noundef %mp3buffer_size) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca ptr, align 8
  %mp3buffer.addr = alloca ptr, align 8
  %mp3buffer_size.addr = alloca i32, align 4
  %imp3 = alloca i32, align 4
  %mp3count = alloca i32, align 4
  %mp3buffer_size_remaining = alloca i32, align 4
  %buffer = alloca [2 x [1152 x i16]], align 2
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %mp3buffer, ptr %mp3buffer.addr, align 8
  store i32 %mp3buffer_size, ptr %mp3buffer_size.addr, align 4
  %arraydecay = getelementptr inbounds [2 x [1152 x i16]], ptr %buffer, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 2 %arraydecay, i8 0, i64 4608, i1 false)
  store i32 0, ptr %mp3count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load i32, ptr @mf_samples_to_encode, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %mp3buffer_size.addr, align 4
  %2 = load i32, ptr %mp3count, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, ptr %mp3buffer_size_remaining, align 4
  %3 = load i32, ptr %mp3buffer_size.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %mp3buffer_size_remaining, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = load ptr, ptr %gfp.addr, align 8
  %arraydecay2 = getelementptr inbounds [2 x [1152 x i16]], ptr %buffer, i64 0, i64 0
  %5 = load ptr, ptr %mp3buffer.addr, align 8
  %6 = load i32, ptr %mp3buffer_size_remaining, align 4
  %call = call i32 @lame_encode(ptr noundef %4, ptr noundef %arraydecay2, ptr noundef %5, i32 noundef %6)
  store i32 %call, ptr %imp3, align 4
  %7 = load i32, ptr %imp3, align 4
  %cmp3 = icmp eq i32 %7, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @desalloc_buffer(ptr noundef @bs)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load i32, ptr %imp3, align 4
  %9 = load ptr, ptr %mp3buffer.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %mp3buffer.addr, align 8
  %10 = load i32, ptr %imp3, align 4
  %11 = load i32, ptr %mp3count, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %mp3count, align 4
  %12 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %12, i32 0, i32 42
  %13 = load i32, ptr %framesize, align 4
  %14 = load i32, ptr @mf_samples_to_encode, align 4
  %sub6 = sub nsw i32 %14, %13
  store i32 %sub6, ptr @mf_samples_to_encode, align 4
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  %15 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %15, i32 0, i32 39
  %16 = load i64, ptr %frameNum, align 8
  %dec = add nsw i64 %16, -1
  store i64 %dec, ptr %frameNum, align 8
  %17 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %gtkflag, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %19 = load ptr, ptr %gfp.addr, align 8
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %19, i32 0, i32 7
  %20 = load i32, ptr %silent, align 8
  %tobool7 = icmp ne i32 %20, 0
  br i1 %tobool7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %out_samplerate, align 8
  %23 = load ptr, ptr %gfp.addr, align 8
  %frameNum9 = getelementptr inbounds %struct.lame_global_flags, ptr %23, i32 0, i32 39
  %24 = load i64, ptr %frameNum9, align 8
  %25 = load ptr, ptr %gfp.addr, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %25, i32 0, i32 40
  %26 = load i64, ptr %totalframes, align 8
  %27 = load ptr, ptr %gfp.addr, align 8
  %framesize10 = getelementptr inbounds %struct.lame_global_flags, ptr %27, i32 0, i32 42
  %28 = load i32, ptr %framesize10, align 4
  call void @timestatus(i32 noundef %22, i64 noundef %24, i64 noundef %26, i32 noundef %28)
  %29 = load ptr, ptr @__stderrp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.22)
  %30 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 @fflush(ptr noundef %30)
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true, %while.end
  call void @III_FlushBitstream()
  %31 = load i32, ptr %mp3buffer_size.addr, align 4
  %32 = load i32, ptr %mp3count, align 4
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, ptr %mp3buffer_size_remaining, align 4
  %33 = load i32, ptr %mp3buffer_size.addr, align 4
  %cmp15 = icmp eq i32 %33, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 0, ptr %mp3buffer_size_remaining, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %34 = load ptr, ptr %mp3buffer.addr, align 8
  %35 = load i32, ptr %mp3buffer_size_remaining, align 4
  %call18 = call i32 @copy_buffer(ptr noundef %34, i32 noundef %35, ptr noundef @bs)
  store i32 %call18, ptr %imp3, align 4
  %36 = load i32, ptr %imp3, align 4
  %cmp19 = icmp eq i32 %36, -1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @desalloc_buffer(ptr noundef @bs)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  %37 = load i32, ptr %imp3, align 4
  %38 = load i32, ptr %mp3count, align 4
  %add22 = add nsw i32 %38, %37
  store i32 %add22, ptr %mp3count, align 4
  call void @desalloc_buffer(ptr noundef @bs)
  %39 = load i32, ptr %mp3count, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then4
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

declare void @desalloc_buffer(ptr noundef) #2

declare void @III_FlushBitstream() #2

; Function Attrs: nounwind ssp uwtable
define void @lame_mp3_tags(ptr noundef %gfp) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %nQuality = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %bWriteVbrTag, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %2, i32 0, i32 22
  %3 = load i32, ptr %VBR_q, align 4
  %mul = mul nsw i32 %3, 100
  %div = sdiv i32 %mul, 9
  store i32 %div, ptr %nQuality, align 4
  %4 = load ptr, ptr %gfp.addr, align 8
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %4, i32 0, i32 32
  %5 = load ptr, ptr %outPath, align 8
  %6 = load i32, ptr %nQuality, align 4
  %7 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %7, i32 0, i32 43
  %8 = load i32, ptr %version, align 8
  %sub = sub nsw i32 1, %8
  %call = call i32 @PutVbrTag(ptr noundef %5, i32 noundef %6, i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr @id3tag, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @id3_buildtag(ptr noundef @id3tag)
  %10 = load ptr, ptr %gfp.addr, align 8
  %outPath3 = getelementptr inbounds %struct.lame_global_flags, ptr %10, i32 0, i32 32
  %11 = load ptr, ptr %outPath3, align 8
  %call4 = call i32 @id3_writetag(ptr noundef %11, ptr noundef @id3tag)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  ret void
}

declare i32 @PutVbrTag(ptr noundef, i32 noundef, i32 noundef) #2

declare void @id3_buildtag(ptr noundef) #2

declare i32 @id3_writetag(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define void @lame_version(ptr noundef %gfp, ptr noundef %ostring) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %ostring.addr = alloca ptr, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %ostring, ptr %ostring.addr, align 8
  %0 = load ptr, ptr %ostring.addr, align 8
  %call = call ptr @get_lame_version()
  %1 = load ptr, ptr %ostring.addr, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call1 = call ptr @__strncpy_chk(ptr noundef %0, ptr noundef %call, i64 noundef 20, i64 noundef %2) #10
  ret void
}

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

declare ptr @get_lame_version() #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { noreturn }
attributes #9 = { cold noreturn }
attributes #10 = { nounwind }
attributes #11 = { allocsize(0) }

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
