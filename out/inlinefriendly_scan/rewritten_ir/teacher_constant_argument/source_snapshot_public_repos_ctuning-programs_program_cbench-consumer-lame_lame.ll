; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_lame.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/lame.c"
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
  %freq = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @bs, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) @l3_side, i8 0, i64 528, i1 false)
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  store i64 0, ptr %frameNum, align 8
  call void @InitFormatBitStream() #9
  %0 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 1
  %1 = load i32, ptr %num_channels, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 8
  store i32 3, ptr %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 46
  store i32 2, ptr %stereo, align 4
  %mode1 = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 8
  %4 = load i32, ptr %mode1, align 4
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %gfp.addr, align 8
  %stereo4 = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 46
  store i32 1, ptr %stereo4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 3
  %7 = load i32, ptr %out_samplerate, align 8
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end98

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %gfp.addr, align 8
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 2
  %9 = load i32, ptr %in_samplerate, align 4
  %out_samplerate8 = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 3
  store i32 %9, ptr %out_samplerate8, align 8
  %cmp10 = icmp sgt i32 %9, 47999
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %10 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate12 = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 3
  store i32 48000, ptr %out_samplerate12, align 8
  br label %if.end38

if.else:                                          ; preds = %if.then7
  %11 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate13 = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 3
  %12 = load i32, ptr %out_samplerate13, align 8
  %cmp14 = icmp sgt i32 %12, 44099
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %13 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate16 = getelementptr inbounds %struct.lame_global_flags, ptr %13, i64 0, i32 3
  store i32 44100, ptr %out_samplerate16, align 8
  br label %if.end38

if.else17:                                        ; preds = %if.else
  %14 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate18 = getelementptr inbounds %struct.lame_global_flags, ptr %14, i64 0, i32 3
  %15 = load i32, ptr %out_samplerate18, align 8
  %cmp19 = icmp sgt i32 %15, 31999
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %16 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate21 = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 3
  store i32 32000, ptr %out_samplerate21, align 8
  br label %if.end38

if.else22:                                        ; preds = %if.else17
  %17 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate23 = getelementptr inbounds %struct.lame_global_flags, ptr %17, i64 0, i32 3
  %18 = load i32, ptr %out_samplerate23, align 8
  %cmp24 = icmp sgt i32 %18, 23999
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else22
  %19 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate26 = getelementptr inbounds %struct.lame_global_flags, ptr %19, i64 0, i32 3
  store i32 24000, ptr %out_samplerate26, align 8
  br label %if.end38

if.else27:                                        ; preds = %if.else22
  %20 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate28 = getelementptr inbounds %struct.lame_global_flags, ptr %20, i64 0, i32 3
  %21 = load i32, ptr %out_samplerate28, align 8
  %cmp29 = icmp sgt i32 %21, 22049
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else27
  %22 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate31 = getelementptr inbounds %struct.lame_global_flags, ptr %22, i64 0, i32 3
  store i32 22050, ptr %out_samplerate31, align 8
  br label %if.end38

if.else32:                                        ; preds = %if.else27
  %23 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate33 = getelementptr inbounds %struct.lame_global_flags, ptr %23, i64 0, i32 3
  store i32 16000, ptr %out_samplerate33, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then15, %if.then25, %if.else32, %if.then30, %if.then20, %if.then11
  %24 = load ptr, ptr %gfp.addr, align 8
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %24, i64 0, i32 11
  %25 = load i32, ptr %brate, align 8
  %cmp39 = icmp sgt i32 %25, 0
  br i1 %cmp39, label %if.then40, label %if.end98

if.then40:                                        ; preds = %if.end38
  %26 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate41 = getelementptr inbounds %struct.lame_global_flags, ptr %26, i64 0, i32 3
  %27 = load i32, ptr %out_samplerate41, align 8
  %mul = shl nsw i32 %27, 4
  %stereo42 = getelementptr inbounds %struct.lame_global_flags, ptr %26, i64 0, i32 46
  %28 = load i32, ptr %stereo42, align 4
  %mul43 = mul nsw i32 %mul, %28
  %conv = sitofp i32 %mul43 to double
  %29 = load ptr, ptr %gfp.addr, align 8
  %brate44 = getelementptr inbounds %struct.lame_global_flags, ptr %29, i64 0, i32 11
  %30 = load i32, ptr %brate44, align 8
  %conv45 = sitofp i32 %30 to double
  %mul46 = fmul double %conv45, 1.000000e+03
  %div = fdiv double %conv, %mul46
  %conv47 = fptrunc double %div to float
  store float %conv47, ptr %compression_ratio, align 4
  %31 = load ptr, ptr %gfp.addr, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %31, i64 0, i32 21
  %32 = load i32, ptr %VBR, align 8
  %tobool.not = icmp eq i32 %32, 0
  %33 = load float, ptr %compression_ratio, align 4
  %cmp48 = fcmp ogt float %33, 1.300000e+01
  %or.cond = select i1 %tobool.not, i1 %cmp48, i1 false
  br i1 %or.cond, label %if.then50, label %if.end98

if.then50:                                        ; preds = %if.then40
  %34 = load ptr, ptr %gfp.addr, align 8
  %brate51 = getelementptr inbounds %struct.lame_global_flags, ptr %34, i64 0, i32 11
  %35 = load i32, ptr %brate51, align 8
  %conv52 = sitofp i32 %35 to double
  %mul53 = fmul double %conv52, 1.000000e+04
  %stereo54 = getelementptr inbounds %struct.lame_global_flags, ptr %34, i64 0, i32 46
  %36 = load i32, ptr %stereo54, align 4
  %mul55 = shl nsw i32 %36, 4
  %conv56 = sitofp i32 %mul55 to double
  %div57 = fdiv double %mul53, %conv56
  %conv58 = fptosi double %div57 to i32
  %37 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate59 = getelementptr inbounds %struct.lame_global_flags, ptr %37, i64 0, i32 3
  store i32 %conv58, ptr %out_samplerate59, align 8
  %cmp61 = icmp slt i32 %conv58, 16001
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then50
  %38 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate64 = getelementptr inbounds %struct.lame_global_flags, ptr %38, i64 0, i32 3
  store i32 16000, ptr %out_samplerate64, align 8
  br label %if.end98

if.else65:                                        ; preds = %if.then50
  %39 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate66 = getelementptr inbounds %struct.lame_global_flags, ptr %39, i64 0, i32 3
  %40 = load i32, ptr %out_samplerate66, align 8
  %cmp67 = icmp slt i32 %40, 22051
  br i1 %cmp67, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.else65
  %41 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate70 = getelementptr inbounds %struct.lame_global_flags, ptr %41, i64 0, i32 3
  store i32 22050, ptr %out_samplerate70, align 8
  br label %if.end98

if.else71:                                        ; preds = %if.else65
  %42 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate72 = getelementptr inbounds %struct.lame_global_flags, ptr %42, i64 0, i32 3
  %43 = load i32, ptr %out_samplerate72, align 8
  %cmp73 = icmp slt i32 %43, 24001
  br i1 %cmp73, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.else71
  %44 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate76 = getelementptr inbounds %struct.lame_global_flags, ptr %44, i64 0, i32 3
  store i32 24000, ptr %out_samplerate76, align 8
  br label %if.end98

if.else77:                                        ; preds = %if.else71
  %45 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate78 = getelementptr inbounds %struct.lame_global_flags, ptr %45, i64 0, i32 3
  %46 = load i32, ptr %out_samplerate78, align 8
  %cmp79 = icmp slt i32 %46, 32001
  br i1 %cmp79, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.else77
  %47 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate82 = getelementptr inbounds %struct.lame_global_flags, ptr %47, i64 0, i32 3
  store i32 32000, ptr %out_samplerate82, align 8
  br label %if.end98

if.else83:                                        ; preds = %if.else77
  %48 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate84 = getelementptr inbounds %struct.lame_global_flags, ptr %48, i64 0, i32 3
  %49 = load i32, ptr %out_samplerate84, align 8
  %cmp85 = icmp slt i32 %49, 44101
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else83
  %50 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate88 = getelementptr inbounds %struct.lame_global_flags, ptr %50, i64 0, i32 3
  store i32 44100, ptr %out_samplerate88, align 8
  br label %if.end98

if.else89:                                        ; preds = %if.else83
  %51 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate90 = getelementptr inbounds %struct.lame_global_flags, ptr %51, i64 0, i32 3
  store i32 48000, ptr %out_samplerate90, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.end38, %if.then63, %if.then75, %if.then87, %if.else89, %if.then81, %if.then69, %if.then40, %if.end5
  %52 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate99 = getelementptr inbounds %struct.lame_global_flags, ptr %52, i64 0, i32 3
  %53 = load i32, ptr %out_samplerate99, align 8
  %cmp100 = icmp slt i32 %53, 24001
  %cond = select i1 %cmp100, i32 1, i32 2
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %52, i64 0, i32 45
  store i32 %cond, ptr %mode_gr, align 8
  %54 = load ptr, ptr %gfp.addr, align 8
  %encoder_delay = getelementptr inbounds %struct.lame_global_flags, ptr %54, i64 0, i32 41
  store i32 800, ptr %encoder_delay, align 8
  %mode_gr102 = getelementptr inbounds %struct.lame_global_flags, ptr %54, i64 0, i32 45
  %55 = load i32, ptr %mode_gr102, align 8
  %mul103 = mul nsw i32 %55, 576
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %54, i64 0, i32 42
  store i32 %mul103, ptr %framesize, align 4
  %56 = load ptr, ptr %gfp.addr, align 8
  %brate104 = getelementptr inbounds %struct.lame_global_flags, ptr %56, i64 0, i32 11
  %57 = load i32, ptr %brate104, align 8
  %cmp105 = icmp eq i32 %57, 0
  br i1 %cmp105, label %if.then107, label %if.end115

if.then107:                                       ; preds = %if.end98
  %58 = load ptr, ptr %gfp.addr, align 8
  %brate108 = getelementptr inbounds %struct.lame_global_flags, ptr %58, i64 0, i32 11
  store i32 128, ptr %brate108, align 8
  %mode_gr109 = getelementptr inbounds %struct.lame_global_flags, ptr %58, i64 0, i32 45
  %59 = load i32, ptr %mode_gr109, align 8
  %cmp110 = icmp eq i32 %59, 1
  br i1 %cmp110, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.then107
  %60 = load ptr, ptr %gfp.addr, align 8
  %brate113 = getelementptr inbounds %struct.lame_global_flags, ptr %60, i64 0, i32 11
  store i32 64, ptr %brate113, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then107, %if.then112, %if.end98
  %61 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %61, i64 0, i32 49
  store float 1.000000e+00, ptr %resample_ratio, align 8
  %out_samplerate116 = getelementptr inbounds %struct.lame_global_flags, ptr %61, i64 0, i32 3
  %62 = load i32, ptr %out_samplerate116, align 8
  %in_samplerate117 = getelementptr inbounds %struct.lame_global_flags, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %in_samplerate117, align 4
  %cmp118.not = icmp eq i32 %62, %63
  br i1 %cmp118.not, label %if.end127, label %if.then120

if.then120:                                       ; preds = %if.end115
  %64 = load ptr, ptr %gfp.addr, align 8
  %in_samplerate121 = getelementptr inbounds %struct.lame_global_flags, ptr %64, i64 0, i32 2
  %65 = load i32, ptr %in_samplerate121, align 4
  %conv122 = sitofp i32 %65 to float
  %out_samplerate123 = getelementptr inbounds %struct.lame_global_flags, ptr %64, i64 0, i32 3
  %66 = load i32, ptr %out_samplerate123, align 8
  %conv124 = sitofp i32 %66 to float
  %div125 = fdiv float %conv122, %conv124
  %67 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio126 = getelementptr inbounds %struct.lame_global_flags, ptr %67, i64 0, i32 49
  store float %div125, ptr %resample_ratio126, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %if.end115
  %68 = load ptr, ptr %gfp.addr, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %68, i64 0, i32 40
  store i64 0, ptr %totalframes, align 8
  %69 = load i64, ptr %68, align 8
  %conv128 = uitofp i64 %69 to float
  %resample_ratio129 = getelementptr inbounds %struct.lame_global_flags, ptr %68, i64 0, i32 49
  %70 = load float, ptr %resample_ratio129, align 8
  %71 = load ptr, ptr %gfp.addr, align 8
  %framesize130 = getelementptr inbounds %struct.lame_global_flags, ptr %71, i64 0, i32 42
  %72 = load i32, ptr %framesize130, align 4
  %conv131 = sitofp i32 %72 to float
  %mul132 = fmul float %70, %conv131
  %div133 = fdiv float %conv128, %mul132
  %add = fadd float %div133, 2.000000e+00
  %conv134 = fptosi float %add to i64
  %73 = load ptr, ptr %gfp.addr, align 8
  %totalframes135 = getelementptr inbounds %struct.lame_global_flags, ptr %73, i64 0, i32 40
  store i64 %conv134, ptr %totalframes135, align 8
  %brate136 = getelementptr inbounds %struct.lame_global_flags, ptr %73, i64 0, i32 11
  %74 = load i32, ptr %brate136, align 8
  %cmp137 = icmp sgt i32 %74, 319
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %if.end127
  %75 = load ptr, ptr %gfp.addr, align 8
  %VBR140 = getelementptr inbounds %struct.lame_global_flags, ptr %75, i64 0, i32 21
  store i32 0, ptr %VBR140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end127
  %76 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate142 = getelementptr inbounds %struct.lame_global_flags, ptr %76, i64 0, i32 3
  %77 = load i32, ptr %out_samplerate142, align 8
  %mul143 = shl nsw i32 %77, 4
  %stereo144 = getelementptr inbounds %struct.lame_global_flags, ptr %76, i64 0, i32 46
  %78 = load i32, ptr %stereo144, align 4
  %mul145 = mul nsw i32 %mul143, %78
  %conv146 = sitofp i32 %mul145 to double
  %79 = load ptr, ptr %gfp.addr, align 8
  %brate147 = getelementptr inbounds %struct.lame_global_flags, ptr %79, i64 0, i32 11
  %80 = load i32, ptr %brate147, align 8
  %conv148 = sitofp i32 %80 to double
  %mul149 = fmul double %conv148, 1.000000e+03
  %div150 = fdiv double %conv146, %mul149
  %conv151 = fptrunc double %div150 to float
  store float %conv151, ptr %compression_ratio, align 4
  %81 = load ptr, ptr %gfp.addr, align 8
  %VBR152 = getelementptr inbounds %struct.lame_global_flags, ptr %81, i64 0, i32 21
  %82 = load i32, ptr %VBR152, align 8
  %tobool153.not = icmp ne i32 %82, 0
  %83 = load float, ptr %compression_ratio, align 4
  %cmp155 = fcmp ogt float %83, 1.100000e+01
  %or.cond4 = select i1 %tobool153.not, i1 %cmp155, i1 false
  br i1 %or.cond4, label %if.then157, label %if.end161

if.then157:                                       ; preds = %if.end141
  %84 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %84, i64 0, i32 22
  %85 = load i32, ptr %VBR_q, align 4
  %conv158 = sitofp i32 %85 to double
  %add159 = fadd double %conv158, 4.400000e+00
  %conv160 = fptrunc double %add159 to float
  store float %conv160, ptr %compression_ratio, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then157, %if.end141
  %86 = load ptr, ptr %gfp.addr, align 8
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, ptr %86, i64 0, i32 9
  %87 = load i32, ptr %mode_fixed, align 8
  %tobool162.not = icmp eq i32 %87, 0
  br i1 %tobool162.not, label %land.lhs.true163, label %if.end173

land.lhs.true163:                                 ; preds = %if.end161
  %88 = load ptr, ptr %gfp.addr, align 8
  %mode164 = getelementptr inbounds %struct.lame_global_flags, ptr %88, i64 0, i32 8
  %89 = load i32, ptr %mode164, align 4
  %cmp165.not = icmp ne i32 %89, 3
  %90 = load float, ptr %compression_ratio, align 4
  %cmp168 = fcmp olt float %90, 9.000000e+00
  %or.cond5 = select i1 %cmp165.not, i1 %cmp168, i1 false
  br i1 %or.cond5, label %if.then170, label %if.end173

if.then170:                                       ; preds = %land.lhs.true163
  %91 = load ptr, ptr %gfp.addr, align 8
  %mode171 = getelementptr inbounds %struct.lame_global_flags, ptr %91, i64 0, i32 8
  store i32 0, ptr %mode171, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then170, %land.lhs.true163, %if.end161
  %92 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %92, i64 0, i32 25
  %93 = load i32, ptr %lowpassfreq, align 8
  %cmp174 = icmp eq i32 %93, 0
  br i1 %cmp174, label %if.then176, label %if.end192

if.then176:                                       ; preds = %if.end173
  %94 = load float, ptr %compression_ratio, align 4
  %conv177 = fpext float %94 to double
  %div178 = fmul double %conv177, 6.250000e-02
  %95 = call double @llvm.log.f64(double %div178)
  %96 = call double @llvm.fmuladd.f64(double %95, double -1.800000e+01, double 1.450000e+01)
  %97 = call double @llvm.floor.f64(double %96)
  %add180 = fadd double %97, 1.000000e+00
  %conv181 = fptosi double %add180 to i32
  store i32 %conv181, ptr %band, align 4
  %cmp182 = icmp slt i32 %conv181, 31
  br i1 %cmp182, label %if.then184, label %if.end192

if.then184:                                       ; preds = %if.then176
  %98 = load i32, ptr %band, align 4
  %conv185 = sitofp i32 %98 to double
  %div186 = fdiv double %conv185, 3.100000e+01
  %conv187 = fptrunc double %div186 to float
  %99 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %99, i64 0, i32 53
  store float %conv187, ptr %lowpass1, align 8
  %100 = load i32, ptr %band, align 4
  %conv188 = sitofp i32 %100 to double
  %div189 = fdiv double %conv188, 3.100000e+01
  %conv190 = fptrunc double %div189 to float
  %101 = load ptr, ptr %gfp.addr, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %101, i64 0, i32 54
  store float %conv190, ptr %lowpass2, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then176, %if.then184, %if.end173
  %102 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %102, i64 0, i32 26
  %103 = load i32, ptr %highpassfreq, align 4
  %cmp193 = icmp sgt i32 %103, 0
  br i1 %cmp193, label %if.then195, label %if.end240

if.then195:                                       ; preds = %if.end192
  %104 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq196 = getelementptr inbounds %struct.lame_global_flags, ptr %104, i64 0, i32 26
  %105 = load i32, ptr %highpassfreq196, align 4
  %conv197 = sitofp i32 %105 to double
  %mul198 = fmul double %conv197, 2.000000e+00
  %out_samplerate199 = getelementptr inbounds %struct.lame_global_flags, ptr %104, i64 0, i32 3
  %106 = load i32, ptr %out_samplerate199, align 8
  %conv200 = sitofp i32 %106 to double
  %div201 = fdiv double %mul198, %conv200
  %conv202 = fptrunc double %div201 to float
  %107 = load ptr, ptr %gfp.addr, align 8
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %107, i64 0, i32 55
  store float %conv202, ptr %highpass1, align 8
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %107, i64 0, i32 28
  %108 = load i32, ptr %highpasswidth, align 4
  %cmp203 = icmp sgt i32 %108, -1
  br i1 %cmp203, label %if.then205, label %if.else215

if.then205:                                       ; preds = %if.then195
  %109 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq206 = getelementptr inbounds %struct.lame_global_flags, ptr %109, i64 0, i32 26
  %110 = load i32, ptr %highpassfreq206, align 4
  %highpasswidth207 = getelementptr inbounds %struct.lame_global_flags, ptr %109, i64 0, i32 28
  %111 = load i32, ptr %highpasswidth207, align 4
  %add208 = add nsw i32 %110, %111
  %conv209 = sitofp i32 %add208 to double
  %mul210 = fmul double %conv209, 2.000000e+00
  %112 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate211 = getelementptr inbounds %struct.lame_global_flags, ptr %112, i64 0, i32 3
  %113 = load i32, ptr %out_samplerate211, align 8
  %conv212 = sitofp i32 %113 to double
  %div213 = fdiv double %mul210, %conv212
  %conv214 = fptrunc double %div213 to float
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %112, i64 0, i32 56
  store float %conv214, ptr %highpass2, align 4
  br label %if.end224

if.else215:                                       ; preds = %if.then195
  %114 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq216 = getelementptr inbounds %struct.lame_global_flags, ptr %114, i64 0, i32 26
  %115 = load i32, ptr %highpassfreq216, align 4
  %conv217 = sitofp i32 %115 to double
  %mul218 = fmul double %conv217, 2.000000e+00
  %out_samplerate219 = getelementptr inbounds %struct.lame_global_flags, ptr %114, i64 0, i32 3
  %116 = load i32, ptr %out_samplerate219, align 8
  %conv220 = sitofp i32 %116 to double
  %div221 = fdiv double %mul218, %conv220
  %conv222 = fptrunc double %div221 to float
  %117 = load ptr, ptr %gfp.addr, align 8
  %highpass2223 = getelementptr inbounds %struct.lame_global_flags, ptr %117, i64 0, i32 56
  store float %conv222, ptr %highpass2223, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.else215, %if.then205
  %118 = load ptr, ptr %gfp.addr, align 8
  %highpass1225 = getelementptr inbounds %struct.lame_global_flags, ptr %118, i64 0, i32 55
  %119 = load float, ptr %highpass1225, align 8
  %cmp226 = fcmp ogt float %119, 1.000000e+00
  br i1 %cmp226, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end224
  %120 = load ptr, ptr %gfp.addr, align 8
  %highpass1228 = getelementptr inbounds %struct.lame_global_flags, ptr %120, i64 0, i32 55
  %121 = load float, ptr %highpass1228, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end224, %cond.false
  %cond229 = phi float [ %121, %cond.false ], [ 1.000000e+00, %if.end224 ]
  %122 = load ptr, ptr %gfp.addr, align 8
  %highpass1230 = getelementptr inbounds %struct.lame_global_flags, ptr %122, i64 0, i32 55
  store float %cond229, ptr %highpass1230, align 8
  %highpass2231 = getelementptr inbounds %struct.lame_global_flags, ptr %122, i64 0, i32 56
  %123 = load float, ptr %highpass2231, align 4
  %cmp232 = fcmp ogt float %123, 1.000000e+00
  br i1 %cmp232, label %cond.end237, label %cond.false235

cond.false235:                                    ; preds = %cond.end
  %124 = load ptr, ptr %gfp.addr, align 8
  %highpass2236 = getelementptr inbounds %struct.lame_global_flags, ptr %124, i64 0, i32 56
  %125 = load float, ptr %highpass2236, align 4
  br label %cond.end237

cond.end237:                                      ; preds = %cond.end, %cond.false235
  %cond238 = phi float [ %125, %cond.false235 ], [ 1.000000e+00, %cond.end ]
  %126 = load ptr, ptr %gfp.addr, align 8
  %highpass2239 = getelementptr inbounds %struct.lame_global_flags, ptr %126, i64 0, i32 56
  store float %cond238, ptr %highpass2239, align 4
  br label %if.end240

if.end240:                                        ; preds = %cond.end237, %if.end192
  %127 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq241 = getelementptr inbounds %struct.lame_global_flags, ptr %127, i64 0, i32 25
  %128 = load i32, ptr %lowpassfreq241, align 8
  %cmp242 = icmp sgt i32 %128, 0
  br i1 %cmp242, label %if.then244, label %if.end299

if.then244:                                       ; preds = %if.end240
  %129 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq245 = getelementptr inbounds %struct.lame_global_flags, ptr %129, i64 0, i32 25
  %130 = load i32, ptr %lowpassfreq245, align 8
  %conv246 = sitofp i32 %130 to double
  %mul247 = fmul double %conv246, 2.000000e+00
  %out_samplerate248 = getelementptr inbounds %struct.lame_global_flags, ptr %129, i64 0, i32 3
  %131 = load i32, ptr %out_samplerate248, align 8
  %conv249 = sitofp i32 %131 to double
  %div250 = fdiv double %mul247, %conv249
  %conv251 = fptrunc double %div250 to float
  %132 = load ptr, ptr %gfp.addr, align 8
  %lowpass2252 = getelementptr inbounds %struct.lame_global_flags, ptr %132, i64 0, i32 54
  store float %conv251, ptr %lowpass2252, align 4
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %132, i64 0, i32 27
  %133 = load i32, ptr %lowpasswidth, align 8
  %cmp253 = icmp sgt i32 %133, -1
  br i1 %cmp253, label %if.then255, label %if.else271

if.then255:                                       ; preds = %if.then244
  %134 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq256 = getelementptr inbounds %struct.lame_global_flags, ptr %134, i64 0, i32 25
  %135 = load i32, ptr %lowpassfreq256, align 8
  %lowpasswidth257 = getelementptr inbounds %struct.lame_global_flags, ptr %134, i64 0, i32 27
  %136 = load i32, ptr %lowpasswidth257, align 8
  %sub = sub nsw i32 %135, %136
  %conv258 = sitofp i32 %sub to double
  %mul259 = fmul double %conv258, 2.000000e+00
  %137 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate260 = getelementptr inbounds %struct.lame_global_flags, ptr %137, i64 0, i32 3
  %138 = load i32, ptr %out_samplerate260, align 8
  %conv261 = sitofp i32 %138 to double
  %div262 = fdiv double %mul259, %conv261
  %conv263 = fptrunc double %div262 to float
  %lowpass1264 = getelementptr inbounds %struct.lame_global_flags, ptr %137, i64 0, i32 53
  store float %conv263, ptr %lowpass1264, align 8
  %139 = load ptr, ptr %gfp.addr, align 8
  %lowpass1265 = getelementptr inbounds %struct.lame_global_flags, ptr %139, i64 0, i32 53
  %140 = load float, ptr %lowpass1265, align 8
  %cmp266 = fcmp olt float %140, 0.000000e+00
  br i1 %cmp266, label %if.then268, label %if.end280

if.then268:                                       ; preds = %if.then255
  %141 = load ptr, ptr %gfp.addr, align 8
  %lowpass1269 = getelementptr inbounds %struct.lame_global_flags, ptr %141, i64 0, i32 53
  store float 0.000000e+00, ptr %lowpass1269, align 8
  br label %if.end280

if.else271:                                       ; preds = %if.then244
  %142 = load ptr, ptr %gfp.addr, align 8
  %lowpassfreq272 = getelementptr inbounds %struct.lame_global_flags, ptr %142, i64 0, i32 25
  %143 = load i32, ptr %lowpassfreq272, align 8
  %conv273 = sitofp i32 %143 to double
  %mul274 = fmul double %conv273, 2.000000e+00
  %out_samplerate275 = getelementptr inbounds %struct.lame_global_flags, ptr %142, i64 0, i32 3
  %144 = load i32, ptr %out_samplerate275, align 8
  %conv276 = sitofp i32 %144 to double
  %div277 = fdiv double %mul274, %conv276
  %conv278 = fptrunc double %div277 to float
  %145 = load ptr, ptr %gfp.addr, align 8
  %lowpass1279 = getelementptr inbounds %struct.lame_global_flags, ptr %145, i64 0, i32 53
  store float %conv278, ptr %lowpass1279, align 8
  br label %if.end280

if.end280:                                        ; preds = %if.then255, %if.then268, %if.else271
  %146 = load ptr, ptr %gfp.addr, align 8
  %lowpass1281 = getelementptr inbounds %struct.lame_global_flags, ptr %146, i64 0, i32 53
  %147 = load float, ptr %lowpass1281, align 8
  %cmp282 = fcmp ogt float %147, 1.000000e+00
  br i1 %cmp282, label %cond.end287, label %cond.false285

cond.false285:                                    ; preds = %if.end280
  %148 = load ptr, ptr %gfp.addr, align 8
  %lowpass1286 = getelementptr inbounds %struct.lame_global_flags, ptr %148, i64 0, i32 53
  %149 = load float, ptr %lowpass1286, align 8
  br label %cond.end287

cond.end287:                                      ; preds = %if.end280, %cond.false285
  %cond288 = phi float [ %149, %cond.false285 ], [ 1.000000e+00, %if.end280 ]
  %150 = load ptr, ptr %gfp.addr, align 8
  %lowpass1289 = getelementptr inbounds %struct.lame_global_flags, ptr %150, i64 0, i32 53
  store float %cond288, ptr %lowpass1289, align 8
  %lowpass2290 = getelementptr inbounds %struct.lame_global_flags, ptr %150, i64 0, i32 54
  %151 = load float, ptr %lowpass2290, align 4
  %cmp291 = fcmp ogt float %151, 1.000000e+00
  br i1 %cmp291, label %cond.end296, label %cond.false294

cond.false294:                                    ; preds = %cond.end287
  %152 = load ptr, ptr %gfp.addr, align 8
  %lowpass2295 = getelementptr inbounds %struct.lame_global_flags, ptr %152, i64 0, i32 54
  %153 = load float, ptr %lowpass2295, align 4
  br label %cond.end296

cond.end296:                                      ; preds = %cond.end287, %cond.false294
  %cond297 = phi float [ %153, %cond.false294 ], [ 1.000000e+00, %cond.end287 ]
  %154 = load ptr, ptr %gfp.addr, align 8
  %lowpass2298 = getelementptr inbounds %struct.lame_global_flags, ptr %154, i64 0, i32 54
  store float %cond297, ptr %lowpass2298, align 4
  br label %if.end299

if.end299:                                        ; preds = %cond.end296, %if.end240
  %155 = load ptr, ptr %gfp.addr, align 8
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %155, i64 0, i32 59
  %156 = load i32, ptr %filter_type, align 8
  %cmp300 = icmp eq i32 %156, 0
  br i1 %cmp300, label %if.then302, label %if.end474

if.then302:                                       ; preds = %if.end299
  %157 = load ptr, ptr %gfp.addr, align 8
  %lowpass1304 = getelementptr inbounds %struct.lame_global_flags, ptr %157, i64 0, i32 53
  %158 = load float, ptr %lowpass1304, align 8
  %cmp305 = fcmp ogt float %158, 0.000000e+00
  br i1 %cmp305, label %if.then307, label %if.end379

if.then307:                                       ; preds = %if.then302
  store i32 999, ptr %minband, align 4
  store i32 -1, ptr %maxband, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then307
  %storemerge3 = phi i32 [ 0, %if.then307 ], [ %inc, %for.inc ]
  store i32 %storemerge3, ptr %band303, align 4
  %cmp308 = icmp slt i32 %storemerge3, 32
  br i1 %cmp308, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %159 = load i32, ptr %band303, align 4
  %conv310 = sitofp i32 %159 to double
  %div311 = fdiv double %conv310, 3.100000e+01
  store double %div311, ptr %freq, align 8
  %160 = load ptr, ptr %gfp.addr, align 8
  %lowpass2312 = getelementptr inbounds %struct.lame_global_flags, ptr %160, i64 0, i32 54
  %161 = load float, ptr %lowpass2312, align 4
  %conv313 = fpext float %161 to double
  %cmp314 = fcmp ult double %div311, %conv313
  br i1 %cmp314, label %if.end325, label %if.then316

if.then316:                                       ; preds = %for.body
  %162 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %162, i64 0, i32 57
  %163 = load i32, ptr %lowpass_band, align 8
  %164 = load i32, ptr %band303, align 4
  %cmp317 = icmp slt i32 %163, %164
  br i1 %cmp317, label %cond.true319, label %cond.false321

cond.true319:                                     ; preds = %if.then316
  %165 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band320 = getelementptr inbounds %struct.lame_global_flags, ptr %165, i64 0, i32 57
  %166 = load i32, ptr %lowpass_band320, align 8
  br label %cond.end322

cond.false321:                                    ; preds = %if.then316
  %167 = load i32, ptr %band303, align 4
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false321, %cond.true319
  %cond323 = phi i32 [ %166, %cond.true319 ], [ %167, %cond.false321 ]
  %168 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band324 = getelementptr inbounds %struct.lame_global_flags, ptr %168, i64 0, i32 57
  store i32 %cond323, ptr %lowpass_band324, align 8
  br label %if.end325

if.end325:                                        ; preds = %cond.end322, %for.body
  %169 = load ptr, ptr %gfp.addr, align 8
  %lowpass1326 = getelementptr inbounds %struct.lame_global_flags, ptr %169, i64 0, i32 53
  %170 = load float, ptr %lowpass1326, align 8
  %conv327 = fpext float %170 to double
  %171 = load double, ptr %freq, align 8
  %cmp328 = fcmp ogt double %171, %conv327
  br i1 %cmp328, label %land.lhs.true330, label %for.inc

land.lhs.true330:                                 ; preds = %if.end325
  %172 = load double, ptr %freq, align 8
  %173 = load ptr, ptr %gfp.addr, align 8
  %lowpass2331 = getelementptr inbounds %struct.lame_global_flags, ptr %173, i64 0, i32 54
  %174 = load float, ptr %lowpass2331, align 4
  %conv332 = fpext float %174 to double
  %cmp333 = fcmp olt double %172, %conv332
  br i1 %cmp333, label %if.then335, label %for.inc

if.then335:                                       ; preds = %land.lhs.true330
  %175 = load i32, ptr %minband, align 4
  %176 = load i32, ptr %band303, align 4
  %cmp336 = icmp slt i32 %175, %176
  %177 = load i32, ptr %minband, align 4
  %178 = load i32, ptr %band303, align 4
  %cond341 = select i1 %cmp336, i32 %177, i32 %178
  store i32 %cond341, ptr %minband, align 4
  %179 = load i32, ptr %maxband, align 4
  %180 = load i32, ptr %band303, align 4
  %cmp342 = icmp sgt i32 %179, %180
  %181 = load i32, ptr %maxband, align 4
  %182 = load i32, ptr %band303, align 4
  %cond347 = select i1 %cmp342, i32 %181, i32 %182
  store i32 %cond347, ptr %maxband, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end325, %land.lhs.true330, %if.then335
  %183 = load i32, ptr %band303, align 4
  %inc = add nsw i32 %183, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %184 = load i32, ptr %minband, align 4
  %cmp358 = icmp eq i32 %184, 999
  br i1 %cmp358, label %if.then360, label %if.else367

if.then360:                                       ; preds = %for.end
  %185 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band361 = getelementptr inbounds %struct.lame_global_flags, ptr %185, i64 0, i32 57
  %186 = load i32, ptr %lowpass_band361, align 8
  %conv362 = sitofp i32 %186 to double
  %sub363 = fadd double %conv362, -7.500000e-01
  %div364 = fdiv double %sub363, 3.100000e+01
  %conv365 = fptrunc double %div364 to float
  %187 = load ptr, ptr %gfp.addr, align 8
  %lowpass1366 = getelementptr inbounds %struct.lame_global_flags, ptr %187, i64 0, i32 53
  store float %conv365, ptr %lowpass1366, align 8
  br label %if.end373

if.else367:                                       ; preds = %for.end
  %188 = load i32, ptr %minband, align 4
  %conv368 = sitofp i32 %188 to double
  %sub369 = fadd double %conv368, -7.500000e-01
  %div370 = fdiv double %sub369, 3.100000e+01
  %conv371 = fptrunc double %div370 to float
  %189 = load ptr, ptr %gfp.addr, align 8
  %lowpass1372 = getelementptr inbounds %struct.lame_global_flags, ptr %189, i64 0, i32 53
  store float %conv371, ptr %lowpass1372, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.else367, %if.then360
  %190 = load ptr, ptr %gfp.addr, align 8
  %lowpass_band374 = getelementptr inbounds %struct.lame_global_flags, ptr %190, i64 0, i32 57
  %191 = load i32, ptr %lowpass_band374, align 8
  %conv375 = sitofp i32 %191 to double
  %div376 = fdiv double %conv375, 3.100000e+01
  %conv377 = fptrunc double %div376 to float
  %lowpass2378 = getelementptr inbounds %struct.lame_global_flags, ptr %190, i64 0, i32 54
  store float %conv377, ptr %lowpass2378, align 4
  br label %if.end379

if.end379:                                        ; preds = %if.end373, %if.then302
  %192 = load ptr, ptr %gfp.addr, align 8
  %highpass2380 = getelementptr inbounds %struct.lame_global_flags, ptr %192, i64 0, i32 56
  %193 = load float, ptr %highpass2380, align 4
  %cmp381 = fcmp ogt float %193, 0.000000e+00
  br i1 %cmp381, label %if.then383, label %if.end392

if.then383:                                       ; preds = %if.end379
  %194 = load ptr, ptr %gfp.addr, align 8
  %highpass2384 = getelementptr inbounds %struct.lame_global_flags, ptr %194, i64 0, i32 56
  %195 = load float, ptr %highpass2384, align 4
  %conv385 = fpext float %195 to double
  %cmp386 = fcmp olt double %conv385, 0x3F964BF964BF964C
  br i1 %cmp386, label %if.then388, label %if.end392

if.then388:                                       ; preds = %if.then383
  %196 = load ptr, ptr %gfp.addr, align 8
  %highpass1389 = getelementptr inbounds %struct.lame_global_flags, ptr %196, i64 0, i32 55
  store float 0.000000e+00, ptr %highpass1389, align 8
  %highpass2390 = getelementptr inbounds %struct.lame_global_flags, ptr %196, i64 0, i32 56
  store float 0.000000e+00, ptr %highpass2390, align 4
  %197 = load ptr, ptr @__stderrp, align 8
  %198 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %197)
  br label %if.end392

if.end392:                                        ; preds = %if.then383, %if.then388, %if.end379
  %199 = load ptr, ptr %gfp.addr, align 8
  %highpass2393 = getelementptr inbounds %struct.lame_global_flags, ptr %199, i64 0, i32 56
  %200 = load float, ptr %highpass2393, align 4
  %cmp394 = fcmp ogt float %200, 0.000000e+00
  br i1 %cmp394, label %if.then396, label %if.end474

if.then396:                                       ; preds = %if.end392
  store i32 999, ptr %minband, align 4
  store i32 -1, ptr %maxband, align 4
  br label %for.cond397

for.cond397:                                      ; preds = %for.inc449, %if.then396
  %storemerge2 = phi i32 [ 0, %if.then396 ], [ %inc450, %for.inc449 ]
  store i32 %storemerge2, ptr %band303, align 4
  %cmp398 = icmp slt i32 %storemerge2, 32
  br i1 %cmp398, label %for.body400, label %for.end451

for.body400:                                      ; preds = %for.cond397
  %201 = load i32, ptr %band303, align 4
  %conv401 = sitofp i32 %201 to double
  %div402 = fdiv double %conv401, 3.100000e+01
  store double %div402, ptr %freq, align 8
  %202 = load ptr, ptr %gfp.addr, align 8
  %highpass1403 = getelementptr inbounds %struct.lame_global_flags, ptr %202, i64 0, i32 55
  %203 = load float, ptr %highpass1403, align 8
  %conv404 = fpext float %203 to double
  %cmp405 = fcmp ugt double %div402, %conv404
  br i1 %cmp405, label %if.end416, label %if.then407

if.then407:                                       ; preds = %for.body400
  %204 = load ptr, ptr %gfp.addr, align 8
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %204, i64 0, i32 58
  %205 = load i32, ptr %highpass_band, align 4
  %206 = load i32, ptr %band303, align 4
  %cmp408 = icmp sgt i32 %205, %206
  br i1 %cmp408, label %cond.true410, label %cond.false412

cond.true410:                                     ; preds = %if.then407
  %207 = load ptr, ptr %gfp.addr, align 8
  %highpass_band411 = getelementptr inbounds %struct.lame_global_flags, ptr %207, i64 0, i32 58
  %208 = load i32, ptr %highpass_band411, align 4
  br label %cond.end413

cond.false412:                                    ; preds = %if.then407
  %209 = load i32, ptr %band303, align 4
  br label %cond.end413

cond.end413:                                      ; preds = %cond.false412, %cond.true410
  %cond414 = phi i32 [ %208, %cond.true410 ], [ %209, %cond.false412 ]
  %210 = load ptr, ptr %gfp.addr, align 8
  %highpass_band415 = getelementptr inbounds %struct.lame_global_flags, ptr %210, i64 0, i32 58
  store i32 %cond414, ptr %highpass_band415, align 4
  br label %if.end416

if.end416:                                        ; preds = %cond.end413, %for.body400
  %211 = load ptr, ptr %gfp.addr, align 8
  %highpass1417 = getelementptr inbounds %struct.lame_global_flags, ptr %211, i64 0, i32 55
  %212 = load float, ptr %highpass1417, align 8
  %conv418 = fpext float %212 to double
  %213 = load double, ptr %freq, align 8
  %cmp419 = fcmp ogt double %213, %conv418
  br i1 %cmp419, label %land.lhs.true421, label %for.inc449

land.lhs.true421:                                 ; preds = %if.end416
  %214 = load double, ptr %freq, align 8
  %215 = load ptr, ptr %gfp.addr, align 8
  %highpass2422 = getelementptr inbounds %struct.lame_global_flags, ptr %215, i64 0, i32 56
  %216 = load float, ptr %highpass2422, align 4
  %conv423 = fpext float %216 to double
  %cmp424 = fcmp olt double %214, %conv423
  br i1 %cmp424, label %if.then426, label %for.inc449

if.then426:                                       ; preds = %land.lhs.true421
  %217 = load i32, ptr %minband, align 4
  %218 = load i32, ptr %band303, align 4
  %cmp427 = icmp slt i32 %217, %218
  %219 = load i32, ptr %minband, align 4
  %220 = load i32, ptr %band303, align 4
  %cond432 = select i1 %cmp427, i32 %219, i32 %220
  store i32 %cond432, ptr %minband, align 4
  %221 = load i32, ptr %maxband, align 4
  %222 = load i32, ptr %band303, align 4
  %cmp433 = icmp sgt i32 %221, %222
  %223 = load i32, ptr %maxband, align 4
  %224 = load i32, ptr %band303, align 4
  %cond438 = select i1 %cmp433, i32 %223, i32 %224
  store i32 %cond438, ptr %maxband, align 4
  br label %for.inc449

for.inc449:                                       ; preds = %if.end416, %land.lhs.true421, %if.then426
  %225 = load i32, ptr %band303, align 4
  %inc450 = add nsw i32 %225, 1
  br label %for.cond397, !llvm.loop !8

for.end451:                                       ; preds = %for.cond397
  %226 = load ptr, ptr %gfp.addr, align 8
  %highpass_band452 = getelementptr inbounds %struct.lame_global_flags, ptr %226, i64 0, i32 58
  %227 = load i32, ptr %highpass_band452, align 4
  %conv453 = sitofp i32 %227 to double
  %div454 = fdiv double %conv453, 3.100000e+01
  %conv455 = fptrunc double %div454 to float
  %highpass1456 = getelementptr inbounds %struct.lame_global_flags, ptr %226, i64 0, i32 55
  store float %conv455, ptr %highpass1456, align 8
  %228 = load i32, ptr %maxband, align 4
  %cmp457 = icmp eq i32 %228, -1
  br i1 %cmp457, label %if.then459, label %if.else466

if.then459:                                       ; preds = %for.end451
  %229 = load ptr, ptr %gfp.addr, align 8
  %highpass_band460 = getelementptr inbounds %struct.lame_global_flags, ptr %229, i64 0, i32 58
  %230 = load i32, ptr %highpass_band460, align 4
  %conv461 = sitofp i32 %230 to double
  %add462 = fadd double %conv461, 7.500000e-01
  %div463 = fdiv double %add462, 3.100000e+01
  %conv464 = fptrunc double %div463 to float
  %231 = load ptr, ptr %gfp.addr, align 8
  %highpass2465 = getelementptr inbounds %struct.lame_global_flags, ptr %231, i64 0, i32 56
  store float %conv464, ptr %highpass2465, align 4
  br label %if.end474

if.else466:                                       ; preds = %for.end451
  %232 = load i32, ptr %maxband, align 4
  %conv467 = sitofp i32 %232 to double
  %add468 = fadd double %conv467, 7.500000e-01
  %div469 = fdiv double %add468, 3.100000e+01
  %conv470 = fptrunc double %div469 to float
  %233 = load ptr, ptr %gfp.addr, align 8
  %highpass2471 = getelementptr inbounds %struct.lame_global_flags, ptr %233, i64 0, i32 56
  store float %conv470, ptr %highpass2471, align 4
  br label %if.end474

if.end474:                                        ; preds = %if.end392, %if.else466, %if.then459, %if.end299
  %234 = load ptr, ptr %gfp.addr, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %234, i64 0, i32 52
  store i32 0, ptr %mode_ext, align 4
  %mode480 = getelementptr inbounds %struct.lame_global_flags, ptr %234, i64 0, i32 8
  %235 = load i32, ptr %mode480, align 4
  %cmp481 = icmp eq i32 %235, 3
  %cond483 = select i1 %cmp481, i32 1, i32 2
  %236 = load ptr, ptr %gfp.addr, align 8
  %stereo484 = getelementptr inbounds %struct.lame_global_flags, ptr %236, i64 0, i32 46
  store i32 %cond483, ptr %stereo484, align 4
  %out_samplerate485 = getelementptr inbounds %struct.lame_global_flags, ptr %236, i64 0, i32 3
  %237 = load i32, ptr %out_samplerate485, align 8
  %conv486 = sext i32 %237 to i64
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %236, i64 0, i32 43
  %call487 = call i32 @SmpFrqIndex(i64 noundef %conv486, ptr noundef nonnull %version) #9
  %238 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %238, i64 0, i32 51
  store i32 %call487, ptr %samplerate_index, align 8
  %cmp489 = icmp slt i32 %call487, 0
  br i1 %cmp489, label %if.then491, label %if.end492

if.then491:                                       ; preds = %if.end474
  %239 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %239) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end492:                                        ; preds = %if.end474
  %240 = load ptr, ptr %gfp.addr, align 8
  %brate493 = getelementptr inbounds %struct.lame_global_flags, ptr %240, i64 0, i32 11
  %241 = load i32, ptr %brate493, align 8
  %version494 = getelementptr inbounds %struct.lame_global_flags, ptr %240, i64 0, i32 43
  %242 = load i32, ptr %version494, align 8
  %out_samplerate495 = getelementptr inbounds %struct.lame_global_flags, ptr %240, i64 0, i32 3
  %243 = load i32, ptr %out_samplerate495, align 8
  %call496 = call i32 @BitrateIndex(i32 noundef %241, i32 noundef %242, i32 noundef %243) #9
  %244 = load ptr, ptr %gfp.addr, align 8
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %244, i64 0, i32 50
  store i32 %call496, ptr %bitrate_index, align 4
  %cmp497 = icmp slt i32 %call496, 0
  br i1 %cmp497, label %if.then499, label %if.end500

if.then499:                                       ; preds = %if.end492
  %245 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %245) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end500:                                        ; preds = %if.end492
  %246 = load ptr, ptr %gfp.addr, align 8
  %VBR501 = getelementptr inbounds %struct.lame_global_flags, ptr %246, i64 0, i32 21
  %247 = load i32, ptr %VBR501, align 8
  %tobool502.not = icmp eq i32 %247, 0
  br i1 %tobool502.not, label %if.end556, label %if.then503

if.then503:                                       ; preds = %if.end500
  %248 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %248, i64 0, i32 24
  %249 = load i32, ptr %VBR_max_bitrate_kbps, align 4
  %cmp504 = icmp eq i32 %249, 0
  br i1 %cmp504, label %if.then506, label %if.else530

if.then506:                                       ; preds = %if.then503
  %250 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %250, i64 0, i32 48
  store i32 13, ptr %VBR_max_bitrate, align 4
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %250, i64 0, i32 23
  %251 = load i32, ptr %VBR_min_bitrate_kbps, align 8
  %cmp507 = icmp sgt i32 %251, 255
  br i1 %cmp507, label %if.then509, label %if.end511

if.then509:                                       ; preds = %if.then506
  %252 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate510 = getelementptr inbounds %struct.lame_global_flags, ptr %252, i64 0, i32 48
  store i32 14, ptr %VBR_max_bitrate510, align 4
  br label %if.end511

if.end511:                                        ; preds = %if.then509, %if.then506
  %253 = load ptr, ptr %gfp.addr, align 8
  %VBR_q512 = getelementptr inbounds %struct.lame_global_flags, ptr %253, i64 0, i32 22
  %254 = load i32, ptr %VBR_q512, align 4
  %cmp513 = icmp eq i32 %254, 0
  br i1 %cmp513, label %if.then515, label %if.end517

if.then515:                                       ; preds = %if.end511
  %255 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate516 = getelementptr inbounds %struct.lame_global_flags, ptr %255, i64 0, i32 48
  store i32 14, ptr %VBR_max_bitrate516, align 4
  br label %if.end517

if.end517:                                        ; preds = %if.then515, %if.end511
  %256 = load ptr, ptr %gfp.addr, align 8
  %VBR_q518 = getelementptr inbounds %struct.lame_global_flags, ptr %256, i64 0, i32 22
  %257 = load i32, ptr %VBR_q518, align 4
  %cmp519 = icmp sgt i32 %257, 3
  br i1 %cmp519, label %if.then521, label %if.end523

if.then521:                                       ; preds = %if.end517
  %258 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate522 = getelementptr inbounds %struct.lame_global_flags, ptr %258, i64 0, i32 48
  store i32 12, ptr %VBR_max_bitrate522, align 4
  br label %if.end523

if.end523:                                        ; preds = %if.then521, %if.end517
  %259 = load ptr, ptr %gfp.addr, align 8
  %VBR_q524 = getelementptr inbounds %struct.lame_global_flags, ptr %259, i64 0, i32 22
  %260 = load i32, ptr %VBR_q524, align 4
  %cmp525 = icmp sgt i32 %260, 7
  br i1 %cmp525, label %if.then527, label %if.end540

if.then527:                                       ; preds = %if.end523
  %261 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate528 = getelementptr inbounds %struct.lame_global_flags, ptr %261, i64 0, i32 48
  store i32 9, ptr %VBR_max_bitrate528, align 4
  br label %if.end540

if.else530:                                       ; preds = %if.then503
  %262 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate_kbps531 = getelementptr inbounds %struct.lame_global_flags, ptr %262, i64 0, i32 24
  %263 = load i32, ptr %VBR_max_bitrate_kbps531, align 4
  %version532 = getelementptr inbounds %struct.lame_global_flags, ptr %262, i64 0, i32 43
  %264 = load i32, ptr %version532, align 8
  %out_samplerate533 = getelementptr inbounds %struct.lame_global_flags, ptr %262, i64 0, i32 3
  %265 = load i32, ptr %out_samplerate533, align 8
  %call534 = call i32 @BitrateIndex(i32 noundef %263, i32 noundef %264, i32 noundef %265) #9
  %266 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate535 = getelementptr inbounds %struct.lame_global_flags, ptr %266, i64 0, i32 48
  store i32 %call534, ptr %VBR_max_bitrate535, align 4
  %cmp536 = icmp slt i32 %call534, 0
  br i1 %cmp536, label %if.then538, label %if.end540

if.then538:                                       ; preds = %if.else530
  %267 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %267) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end540:                                        ; preds = %if.else530, %if.end523, %if.then527
  %268 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate_kbps541 = getelementptr inbounds %struct.lame_global_flags, ptr %268, i64 0, i32 23
  %269 = load i32, ptr %VBR_min_bitrate_kbps541, align 8
  %cmp542 = icmp eq i32 %269, 0
  br i1 %cmp542, label %if.then544, label %if.else545

if.then544:                                       ; preds = %if.end540
  %270 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %270, i64 0, i32 47
  store i32 1, ptr %VBR_min_bitrate, align 8
  br label %if.end556

if.else545:                                       ; preds = %if.end540
  %271 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate_kbps546 = getelementptr inbounds %struct.lame_global_flags, ptr %271, i64 0, i32 23
  %272 = load i32, ptr %VBR_min_bitrate_kbps546, align 8
  %version547 = getelementptr inbounds %struct.lame_global_flags, ptr %271, i64 0, i32 43
  %273 = load i32, ptr %version547, align 8
  %out_samplerate548 = getelementptr inbounds %struct.lame_global_flags, ptr %271, i64 0, i32 3
  %274 = load i32, ptr %out_samplerate548, align 8
  %call549 = call i32 @BitrateIndex(i32 noundef %272, i32 noundef %273, i32 noundef %274) #9
  %275 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate550 = getelementptr inbounds %struct.lame_global_flags, ptr %275, i64 0, i32 47
  store i32 %call549, ptr %VBR_min_bitrate550, align 8
  %cmp551 = icmp slt i32 %call549, 0
  br i1 %cmp551, label %if.then553, label %if.end556

if.then553:                                       ; preds = %if.else545
  %276 = load ptr, ptr @__stderrp, align 8
  call void @display_bitrates(ptr noundef %276) #9
  call void @exit(i32 noundef 1) #10
  unreachable

if.end556:                                        ; preds = %if.then544, %if.else545, %if.end500
  %277 = load ptr, ptr %gfp.addr, align 8
  %VBR557 = getelementptr inbounds %struct.lame_global_flags, ptr %277, i64 0, i32 21
  %278 = load i32, ptr %VBR557, align 8
  %tobool558.not = icmp eq i32 %278, 0
  br i1 %tobool558.not, label %if.end568, label %if.then559

if.then559:                                       ; preds = %if.end556
  %279 = load ptr, ptr %gfp.addr, align 8
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %279, i64 0, i32 6
  %280 = load i32, ptr %quality, align 4
  %cmp560 = icmp slt i32 %280, 2
  br i1 %cmp560, label %cond.true562, label %cond.end565

cond.true562:                                     ; preds = %if.then559
  %281 = load ptr, ptr %gfp.addr, align 8
  %quality563 = getelementptr inbounds %struct.lame_global_flags, ptr %281, i64 0, i32 6
  %282 = load i32, ptr %quality563, align 4
  br label %cond.end565

cond.end565:                                      ; preds = %if.then559, %cond.true562
  %cond566 = phi i32 [ %282, %cond.true562 ], [ 2, %if.then559 ]
  %283 = load ptr, ptr %gfp.addr, align 8
  %quality567 = getelementptr inbounds %struct.lame_global_flags, ptr %283, i64 0, i32 6
  store i32 %cond566, ptr %quality567, align 4
  br label %if.end568

if.end568:                                        ; preds = %cond.end565, %if.end556
  %284 = load ptr, ptr %gfp.addr, align 8
  %mode569 = getelementptr inbounds %struct.lame_global_flags, ptr %284, i64 0, i32 8
  %285 = load i32, ptr %mode569, align 4
  %cmp570 = icmp eq i32 %285, 3
  br i1 %cmp570, label %if.then572, label %if.end573

if.then572:                                       ; preds = %if.end568
  %286 = load ptr, ptr %gfp.addr, align 8
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %286, i64 0, i32 10
  store i32 0, ptr %force_ms, align 4
  br label %if.end573

if.end573:                                        ; preds = %if.then572, %if.end568
  %287 = load ptr, ptr %gfp.addr, align 8
  %VBR574 = getelementptr inbounds %struct.lame_global_flags, ptr %287, i64 0, i32 21
  %288 = load i32, ptr %VBR574, align 8
  %cmp575 = icmp eq i32 %288, 0
  br i1 %cmp575, label %if.then577, label %if.end578

if.then577:                                       ; preds = %if.end573
  %289 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %289, i64 0, i32 5
  store i32 0, ptr %bWriteVbrTag, align 8
  br label %if.end578

if.end578:                                        ; preds = %if.then577, %if.end573
  %290 = load ptr, ptr %gfp.addr, align 8
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %290, i64 0, i32 32
  %291 = load ptr, ptr %outPath, align 8
  %cmp579.not = icmp eq ptr %291, null
  br i1 %cmp579.not, label %if.end588, label %land.lhs.true581

land.lhs.true581:                                 ; preds = %if.end578
  %292 = load ptr, ptr %gfp.addr, align 8
  %outPath582 = getelementptr inbounds %struct.lame_global_flags, ptr %292, i64 0, i32 32
  %293 = load ptr, ptr %outPath582, align 8
  %294 = load i8, ptr %293, align 1
  %cmp584 = icmp eq i8 %294, 45
  br i1 %cmp584, label %if.then586, label %if.end588

if.then586:                                       ; preds = %land.lhs.true581
  %295 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag587 = getelementptr inbounds %struct.lame_global_flags, ptr %295, i64 0, i32 5
  store i32 0, ptr %bWriteVbrTag587, align 8
  br label %if.end588

if.end588:                                        ; preds = %if.then586, %land.lhs.true581, %if.end578
  %296 = load ptr, ptr %gfp.addr, align 8
  %outPath589 = getelementptr inbounds %struct.lame_global_flags, ptr %296, i64 0, i32 32
  %297 = load ptr, ptr %outPath589, align 8
  %cmp590 = icmp eq ptr %297, null
  br i1 %cmp590, label %if.then597, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end588
  %298 = load ptr, ptr %gfp.addr, align 8
  %outPath592 = getelementptr inbounds %struct.lame_global_flags, ptr %298, i64 0, i32 32
  %299 = load ptr, ptr %outPath592, align 8
  %300 = load i8, ptr %299, align 1
  %cmp595 = icmp eq i8 %300, 45
  br i1 %cmp595, label %if.then597, label %if.end598

if.then597:                                       ; preds = %lor.lhs.false, %if.end588
  store i32 0, ptr @id3tag, align 4
  br label %if.end598

if.end598:                                        ; preds = %if.then597, %lor.lhs.false
  %301 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %301, i64 0, i32 4
  %302 = load i32, ptr %gtkflag, align 4
  %tobool599.not = icmp eq i32 %302, 0
  br i1 %tobool599.not, label %if.end602, label %if.then600

if.then600:                                       ; preds = %if.end598
  %303 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag601 = getelementptr inbounds %struct.lame_global_flags, ptr %303, i64 0, i32 5
  store i32 0, ptr %bWriteVbrTag601, align 8
  br label %if.end602

if.end602:                                        ; preds = %if.then600, %if.end598
  call void @init_bit_stream_w(ptr noundef nonnull @bs) #9
  %304 = load ptr, ptr %gfp.addr, align 8
  %quality603 = getelementptr inbounds %struct.lame_global_flags, ptr %304, i64 0, i32 6
  %305 = load i32, ptr %quality603, align 4
  %cmp604 = icmp eq i32 %305, 9
  br i1 %cmp604, label %if.then606, label %if.end608

if.then606:                                       ; preds = %if.end602
  %306 = load ptr, ptr %gfp.addr, align 8
  %filter_type607 = getelementptr inbounds %struct.lame_global_flags, ptr %306, i64 0, i32 59
  store i32 0, ptr %filter_type607, align 8
  %psymodel = getelementptr inbounds %struct.lame_global_flags, ptr %306, i64 0, i32 63
  store i32 0, ptr %psymodel, align 8
  %quantization = getelementptr inbounds %struct.lame_global_flags, ptr %306, i64 0, i32 60
  store i32 0, ptr %quantization, align 4
  %307 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping = getelementptr inbounds %struct.lame_global_flags, ptr %307, i64 0, i32 61
  store i32 0, ptr %noise_shaping, align 8
  %noise_shaping_stop = getelementptr inbounds %struct.lame_global_flags, ptr %307, i64 0, i32 62
  store i32 0, ptr %noise_shaping_stop, align 4
  %use_best_huffman = getelementptr inbounds %struct.lame_global_flags, ptr %307, i64 0, i32 64
  store i32 0, ptr %use_best_huffman, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.then606, %if.end602
  %308 = load ptr, ptr %gfp.addr, align 8
  %quality609 = getelementptr inbounds %struct.lame_global_flags, ptr %308, i64 0, i32 6
  %309 = load i32, ptr %quality609, align 4
  %cmp610 = icmp eq i32 %309, 8
  br i1 %cmp610, label %if.then612, label %if.end614

if.then612:                                       ; preds = %if.end608
  %310 = load ptr, ptr %gfp.addr, align 8
  %quality613 = getelementptr inbounds %struct.lame_global_flags, ptr %310, i64 0, i32 6
  store i32 7, ptr %quality613, align 4
  br label %if.end614

if.end614:                                        ; preds = %if.then612, %if.end608
  %311 = load ptr, ptr %gfp.addr, align 8
  %quality615 = getelementptr inbounds %struct.lame_global_flags, ptr %311, i64 0, i32 6
  %312 = load i32, ptr %quality615, align 4
  %cmp616 = icmp eq i32 %312, 7
  br i1 %cmp616, label %if.then618, label %if.end625

if.then618:                                       ; preds = %if.end614
  %313 = load ptr, ptr %gfp.addr, align 8
  %filter_type619 = getelementptr inbounds %struct.lame_global_flags, ptr %313, i64 0, i32 59
  store i32 0, ptr %filter_type619, align 8
  %psymodel620 = getelementptr inbounds %struct.lame_global_flags, ptr %313, i64 0, i32 63
  store i32 1, ptr %psymodel620, align 8
  %quantization621 = getelementptr inbounds %struct.lame_global_flags, ptr %313, i64 0, i32 60
  store i32 0, ptr %quantization621, align 4
  %314 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping622 = getelementptr inbounds %struct.lame_global_flags, ptr %314, i64 0, i32 61
  store i32 0, ptr %noise_shaping622, align 8
  %noise_shaping_stop623 = getelementptr inbounds %struct.lame_global_flags, ptr %314, i64 0, i32 62
  store i32 0, ptr %noise_shaping_stop623, align 4
  %use_best_huffman624 = getelementptr inbounds %struct.lame_global_flags, ptr %314, i64 0, i32 64
  store i32 0, ptr %use_best_huffman624, align 4
  br label %if.end625

if.end625:                                        ; preds = %if.then618, %if.end614
  %315 = load ptr, ptr %gfp.addr, align 8
  %quality626 = getelementptr inbounds %struct.lame_global_flags, ptr %315, i64 0, i32 6
  %316 = load i32, ptr %quality626, align 4
  %cmp627 = icmp eq i32 %316, 6
  br i1 %cmp627, label %if.then629, label %if.end631

if.then629:                                       ; preds = %if.end625
  %317 = load ptr, ptr %gfp.addr, align 8
  %quality630 = getelementptr inbounds %struct.lame_global_flags, ptr %317, i64 0, i32 6
  store i32 5, ptr %quality630, align 4
  br label %if.end631

if.end631:                                        ; preds = %if.then629, %if.end625
  %318 = load ptr, ptr %gfp.addr, align 8
  %quality632 = getelementptr inbounds %struct.lame_global_flags, ptr %318, i64 0, i32 6
  %319 = load i32, ptr %quality632, align 4
  %cmp633 = icmp eq i32 %319, 5
  br i1 %cmp633, label %if.then635, label %if.end642

if.then635:                                       ; preds = %if.end631
  %320 = load ptr, ptr %gfp.addr, align 8
  %filter_type636 = getelementptr inbounds %struct.lame_global_flags, ptr %320, i64 0, i32 59
  store i32 0, ptr %filter_type636, align 8
  %psymodel637 = getelementptr inbounds %struct.lame_global_flags, ptr %320, i64 0, i32 63
  store i32 1, ptr %psymodel637, align 8
  %quantization638 = getelementptr inbounds %struct.lame_global_flags, ptr %320, i64 0, i32 60
  store i32 0, ptr %quantization638, align 4
  %321 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping639 = getelementptr inbounds %struct.lame_global_flags, ptr %321, i64 0, i32 61
  store i32 1, ptr %noise_shaping639, align 8
  %noise_shaping_stop640 = getelementptr inbounds %struct.lame_global_flags, ptr %321, i64 0, i32 62
  store i32 0, ptr %noise_shaping_stop640, align 4
  %use_best_huffman641 = getelementptr inbounds %struct.lame_global_flags, ptr %321, i64 0, i32 64
  store i32 0, ptr %use_best_huffman641, align 4
  br label %if.end642

if.end642:                                        ; preds = %if.then635, %if.end631
  %322 = load ptr, ptr %gfp.addr, align 8
  %quality643 = getelementptr inbounds %struct.lame_global_flags, ptr %322, i64 0, i32 6
  %323 = load i32, ptr %quality643, align 4
  %cmp644 = icmp eq i32 %323, 4
  br i1 %cmp644, label %if.then646, label %if.end648

if.then646:                                       ; preds = %if.end642
  %324 = load ptr, ptr %gfp.addr, align 8
  %quality647 = getelementptr inbounds %struct.lame_global_flags, ptr %324, i64 0, i32 6
  store i32 2, ptr %quality647, align 4
  br label %if.end648

if.end648:                                        ; preds = %if.then646, %if.end642
  %325 = load ptr, ptr %gfp.addr, align 8
  %quality649 = getelementptr inbounds %struct.lame_global_flags, ptr %325, i64 0, i32 6
  %326 = load i32, ptr %quality649, align 4
  %cmp650 = icmp eq i32 %326, 3
  br i1 %cmp650, label %if.then652, label %if.end654

if.then652:                                       ; preds = %if.end648
  %327 = load ptr, ptr %gfp.addr, align 8
  %quality653 = getelementptr inbounds %struct.lame_global_flags, ptr %327, i64 0, i32 6
  store i32 2, ptr %quality653, align 4
  br label %if.end654

if.end654:                                        ; preds = %if.then652, %if.end648
  %328 = load ptr, ptr %gfp.addr, align 8
  %quality655 = getelementptr inbounds %struct.lame_global_flags, ptr %328, i64 0, i32 6
  %329 = load i32, ptr %quality655, align 4
  %cmp656 = icmp eq i32 %329, 2
  br i1 %cmp656, label %if.then658, label %if.end665

if.then658:                                       ; preds = %if.end654
  %330 = load ptr, ptr %gfp.addr, align 8
  %filter_type659 = getelementptr inbounds %struct.lame_global_flags, ptr %330, i64 0, i32 59
  store i32 0, ptr %filter_type659, align 8
  %psymodel660 = getelementptr inbounds %struct.lame_global_flags, ptr %330, i64 0, i32 63
  store i32 1, ptr %psymodel660, align 8
  %quantization661 = getelementptr inbounds %struct.lame_global_flags, ptr %330, i64 0, i32 60
  store i32 1, ptr %quantization661, align 4
  %331 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping662 = getelementptr inbounds %struct.lame_global_flags, ptr %331, i64 0, i32 61
  store i32 1, ptr %noise_shaping662, align 8
  %noise_shaping_stop663 = getelementptr inbounds %struct.lame_global_flags, ptr %331, i64 0, i32 62
  store i32 0, ptr %noise_shaping_stop663, align 4
  %use_best_huffman664 = getelementptr inbounds %struct.lame_global_flags, ptr %331, i64 0, i32 64
  store i32 1, ptr %use_best_huffman664, align 4
  br label %if.end665

if.end665:                                        ; preds = %if.then658, %if.end654
  %332 = load ptr, ptr %gfp.addr, align 8
  %quality666 = getelementptr inbounds %struct.lame_global_flags, ptr %332, i64 0, i32 6
  %333 = load i32, ptr %quality666, align 4
  %cmp667 = icmp eq i32 %333, 1
  br i1 %cmp667, label %if.then669, label %if.end676

if.then669:                                       ; preds = %if.end665
  %334 = load ptr, ptr %gfp.addr, align 8
  %filter_type670 = getelementptr inbounds %struct.lame_global_flags, ptr %334, i64 0, i32 59
  store i32 0, ptr %filter_type670, align 8
  %psymodel671 = getelementptr inbounds %struct.lame_global_flags, ptr %334, i64 0, i32 63
  store i32 1, ptr %psymodel671, align 8
  %quantization672 = getelementptr inbounds %struct.lame_global_flags, ptr %334, i64 0, i32 60
  store i32 1, ptr %quantization672, align 4
  %335 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping673 = getelementptr inbounds %struct.lame_global_flags, ptr %335, i64 0, i32 61
  store i32 1, ptr %noise_shaping673, align 8
  %noise_shaping_stop674 = getelementptr inbounds %struct.lame_global_flags, ptr %335, i64 0, i32 62
  store i32 1, ptr %noise_shaping_stop674, align 4
  %use_best_huffman675 = getelementptr inbounds %struct.lame_global_flags, ptr %335, i64 0, i32 64
  store i32 1, ptr %use_best_huffman675, align 4
  br label %if.end676

if.end676:                                        ; preds = %if.then669, %if.end665
  %336 = load ptr, ptr %gfp.addr, align 8
  %quality677 = getelementptr inbounds %struct.lame_global_flags, ptr %336, i64 0, i32 6
  %337 = load i32, ptr %quality677, align 4
  %cmp678 = icmp eq i32 %337, 0
  br i1 %cmp678, label %if.then680, label %for.cond688

if.then680:                                       ; preds = %if.end676
  %338 = load ptr, ptr %gfp.addr, align 8
  %filter_type681 = getelementptr inbounds %struct.lame_global_flags, ptr %338, i64 0, i32 59
  store i32 1, ptr %filter_type681, align 8
  %psymodel682 = getelementptr inbounds %struct.lame_global_flags, ptr %338, i64 0, i32 63
  store i32 1, ptr %psymodel682, align 8
  %quantization683 = getelementptr inbounds %struct.lame_global_flags, ptr %338, i64 0, i32 60
  store i32 1, ptr %quantization683, align 4
  %339 = load ptr, ptr %gfp.addr, align 8
  %noise_shaping684 = getelementptr inbounds %struct.lame_global_flags, ptr %339, i64 0, i32 61
  store i32 3, ptr %noise_shaping684, align 8
  %noise_shaping_stop685 = getelementptr inbounds %struct.lame_global_flags, ptr %339, i64 0, i32 62
  store i32 2, ptr %noise_shaping_stop685, align 4
  %use_best_huffman686 = getelementptr inbounds %struct.lame_global_flags, ptr %339, i64 0, i32 64
  store i32 2, ptr %use_best_huffman686, align 4
  call void @exit(i32 noundef -99) #10
  unreachable

for.cond688:                                      ; preds = %if.end676, %for.body691
  %storemerge = phi i32 [ %inc702, %for.body691 ], [ 0, %if.end676 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp689 = icmp slt i32 %storemerge, 23
  br i1 %cmp689, label %for.body691, label %for.cond704

for.body691:                                      ; preds = %for.cond688
  %340 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index692 = getelementptr inbounds %struct.lame_global_flags, ptr %340, i64 0, i32 51
  %341 = load i32, ptr %samplerate_index692, align 8
  %version693 = getelementptr inbounds %struct.lame_global_flags, ptr %340, i64 0, i32 43
  %342 = load i32, ptr %version693, align 8
  %mul694 = mul nsw i32 %342, 3
  %add695 = add nsw i32 %341, %mul694
  %idxprom = sext i32 %add695 to i64
  %arrayidx696 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom
  %343 = load i32, ptr %i, align 4
  %idxprom697 = sext i32 %343 to i64
  %arrayidx698 = getelementptr inbounds [23 x i32], ptr %arrayidx696, i64 0, i64 %idxprom697
  %344 = load i32, ptr %arrayidx698, align 4
  %idxprom699 = sext i32 %343 to i64
  %arrayidx700 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom699
  store i32 %344, ptr %arrayidx700, align 4
  %345 = load i32, ptr %i, align 4
  %inc702 = add nsw i32 %345, 1
  br label %for.cond688, !llvm.loop !9

for.cond704:                                      ; preds = %for.cond688, %for.body707
  %storemerge1 = phi i32 [ %inc719, %for.body707 ], [ 0, %for.cond688 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp705 = icmp slt i32 %storemerge1, 14
  br i1 %cmp705, label %for.body707, label %for.end720

for.body707:                                      ; preds = %for.cond704
  %346 = load ptr, ptr %gfp.addr, align 8
  %samplerate_index708 = getelementptr inbounds %struct.lame_global_flags, ptr %346, i64 0, i32 51
  %347 = load i32, ptr %samplerate_index708, align 8
  %version709 = getelementptr inbounds %struct.lame_global_flags, ptr %346, i64 0, i32 43
  %348 = load i32, ptr %version709, align 8
  %mul710 = mul nsw i32 %348, 3
  %add711 = add nsw i32 %347, %mul710
  %idxprom712 = sext i32 %add711 to i64
  %349 = load i32, ptr %i, align 4
  %idxprom714 = sext i32 %349 to i64
  %arrayidx715 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom712, i32 1, i64 %idxprom714
  %350 = load i32, ptr %arrayidx715, align 4
  %idxprom716 = sext i32 %349 to i64
  %arrayidx717 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom716
  store i32 %350, ptr %arrayidx717, align 4
  %351 = load i32, ptr %i, align 4
  %inc719 = add nsw i32 %351, 1
  br label %for.cond704, !llvm.loop !10

for.end720:                                       ; preds = %for.cond704
  %352 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag721 = getelementptr inbounds %struct.lame_global_flags, ptr %352, i64 0, i32 5
  %353 = load i32, ptr %bWriteVbrTag721, align 8
  %tobool722.not = icmp eq i32 %353, 0
  br i1 %tobool722.not, label %if.end729, label %if.then723

if.then723:                                       ; preds = %for.end720
  %354 = load ptr, ptr %gfp.addr, align 8
  %version724 = getelementptr inbounds %struct.lame_global_flags, ptr %354, i64 0, i32 43
  %355 = load i32, ptr %version724, align 8
  %sub725 = sub nsw i32 1, %355
  %mode726 = getelementptr inbounds %struct.lame_global_flags, ptr %354, i64 0, i32 8
  %356 = load i32, ptr %mode726, align 4
  %samplerate_index727 = getelementptr inbounds %struct.lame_global_flags, ptr %354, i64 0, i32 51
  %357 = load i32, ptr %samplerate_index727, align 8
  %call728 = call i32 @InitVbrTag(ptr noundef nonnull @bs, i32 noundef %sub725, i32 noundef %356, i32 noundef %357) #9
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
  %out_samplerate1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %0 = load i32, ptr %out_samplerate1, align 8
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 1.000000e+03
  %conv2 = fptrunc double %div to float
  store float %conv2, ptr %out_samplerate, align 4
  %1 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 49
  %2 = load float, ptr %resample_ratio, align 8
  %mul = fmul float %2, %conv2
  store float %mul, ptr %in_samplerate, align 4
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 46
  %3 = load i32, ptr %stereo, align 4
  %mul3 = shl nsw i32 %3, 4
  %conv4 = sitofp i32 %mul3 to float
  %4 = load float, ptr %out_samplerate, align 4
  %mul5 = fmul float %4, %conv4
  %5 = load ptr, ptr %gfp.addr, align 8
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 11
  %6 = load i32, ptr %brate, align 8
  %conv6 = sitofp i32 %6 to float
  %div7 = fdiv float %mul5, %conv6
  store float %div7, ptr %compression, align 4
  %7 = load ptr, ptr @__stderrp, align 8
  call void @lame_print_version(ptr noundef %7) #9
  %8 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 1
  %9 = load i32, ptr %num_channels, align 8
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %gfp.addr, align 8
  %stereo9 = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 46
  %11 = load i32, ptr %stereo9, align 4
  %cmp10 = icmp eq i32 %11, 1
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr @__stderrp, align 8
  %13 = call i64 @fwrite(ptr nonnull @.str.5, i64 67, i64 1, ptr %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio12 = getelementptr inbounds %struct.lame_global_flags, ptr %14, i64 0, i32 49
  %15 = load float, ptr %resample_ratio12, align 8
  %cmp13 = fcmp une float %15, 1.000000e+00
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %16 = load ptr, ptr @__stderrp, align 8
  %17 = load float, ptr %in_samplerate, align 4
  %conv16 = fptosi float %17 to i32
  %18 = load float, ptr %out_samplerate, align 4
  %conv17 = fptosi float %18 to i32
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef %conv16, i32 noundef %conv17) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end
  %19 = load ptr, ptr %gfp.addr, align 8
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %19, i64 0, i32 56
  %20 = load float, ptr %highpass2, align 4
  %cmp21 = fcmp ogt float %20, 0.000000e+00
  br i1 %cmp21, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end19
  %21 = load ptr, ptr @__stderrp, align 8
  %22 = load ptr, ptr %gfp.addr, align 8
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %22, i64 0, i32 55
  %23 = load float, ptr %highpass1, align 8
  %24 = load float, ptr %out_samplerate, align 4
  %mul24 = fmul float %23, %24
  %mul25 = fmul float %mul24, 5.000000e+02
  %conv26 = fpext float %mul25 to double
  %25 = load ptr, ptr %gfp.addr, align 8
  %highpass227 = getelementptr inbounds %struct.lame_global_flags, ptr %25, i64 0, i32 56
  %26 = load float, ptr %highpass227, align 4
  %27 = load float, ptr %out_samplerate, align 4
  %mul28 = fmul float %26, %27
  %mul29 = fmul float %mul28, 5.000000e+02
  %conv30 = fpext float %mul29 to double
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.7, double noundef %conv26, double noundef %conv30) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.end19
  %28 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %28, i64 0, i32 53
  %29 = load float, ptr %lowpass1, align 8
  %cmp34 = fcmp ogt float %29, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %if.end45

if.then36:                                        ; preds = %if.end32
  %30 = load ptr, ptr @__stderrp, align 8
  %31 = load ptr, ptr %gfp.addr, align 8
  %lowpass137 = getelementptr inbounds %struct.lame_global_flags, ptr %31, i64 0, i32 53
  %32 = load float, ptr %lowpass137, align 8
  %33 = load float, ptr %out_samplerate, align 4
  %mul38 = fmul float %32, %33
  %mul39 = fmul float %mul38, 5.000000e+02
  %conv40 = fpext float %mul39 to double
  %34 = load ptr, ptr %gfp.addr, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %34, i64 0, i32 54
  %35 = load float, ptr %lowpass2, align 4
  %36 = load float, ptr %out_samplerate, align 4
  %mul41 = fmul float %35, %36
  %mul42 = fmul float %mul41, 5.000000e+02
  %conv43 = fpext float %mul42 to double
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.8, double noundef %conv40, double noundef %conv43) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end32
  %37 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %37, i64 0, i32 4
  %38 = load i32, ptr %gtkflag, align 4
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end45
  %39 = load ptr, ptr @__stderrp, align 8
  %40 = load ptr, ptr %gfp.addr, align 8
  %inPath = getelementptr inbounds %struct.lame_global_flags, ptr %40, i64 0, i32 31
  %41 = load ptr, ptr %inPath, align 8
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.9, ptr noundef %41) #9
  br label %if.end80

if.else:                                          ; preds = %if.end45
  %42 = load ptr, ptr @__stderrp, align 8
  %43 = load ptr, ptr %gfp.addr, align 8
  %inPath48 = getelementptr inbounds %struct.lame_global_flags, ptr %43, i64 0, i32 31
  %44 = load ptr, ptr %inPath48, align 8
  %call49 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(2) @.str.11) #9
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.else
  %45 = load ptr, ptr %gfp.addr, align 8
  %inPath51 = getelementptr inbounds %struct.lame_global_flags, ptr %45, i64 0, i32 31
  %46 = load ptr, ptr %inPath51, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi ptr [ %46, %cond.true ], [ @.str.12, %if.else ]
  %47 = load ptr, ptr %gfp.addr, align 8
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %47, i64 0, i32 32
  %48 = load ptr, ptr %outPath, align 8
  %call52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.11) #9
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %cond.end57, label %cond.true54

cond.true54:                                      ; preds = %cond.end
  %49 = load ptr, ptr %gfp.addr, align 8
  %outPath55 = getelementptr inbounds %struct.lame_global_flags, ptr %49, i64 0, i32 32
  %50 = load ptr, ptr %outPath55, align 8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.end, %cond.true54
  %cond58 = phi ptr [ %50, %cond.true54 ], [ @.str.13, %cond.end ]
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.10, ptr noundef %cond, ptr noundef %cond58) #9
  %51 = load ptr, ptr %gfp.addr, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %51, i64 0, i32 21
  %52 = load i32, ptr %VBR, align 8
  %tobool60.not = icmp eq i32 %52, 0
  br i1 %tobool60.not, label %if.else66, label %if.then61

if.then61:                                        ; preds = %cond.end57
  %53 = load ptr, ptr @__stderrp, align 8
  %54 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate62 = getelementptr inbounds %struct.lame_global_flags, ptr %54, i64 0, i32 3
  %55 = load i32, ptr %out_samplerate62, align 8
  %conv63 = sitofp i32 %55 to double
  %div64 = fdiv double %conv63, 1.000000e+03
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %54, i64 0, i32 22
  %56 = load i32, ptr %VBR_q, align 4
  %57 = load ptr, ptr %gfp.addr, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %57, i64 0, i32 8
  %58 = load i32, ptr %mode, align 4
  %idxprom = sext i32 %58 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %idxprom
  %59 = load ptr, ptr %arrayidx, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %57, i64 0, i32 43
  %60 = load i32, ptr %version, align 8
  %sub = sub nsw i32 2, %60
  %61 = load ptr, ptr %gfp.addr, align 8
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %61, i64 0, i32 6
  %62 = load i32, ptr %quality, align 4
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.14, double noundef %div64, i32 noundef %56, ptr noundef %59, i32 noundef %sub, i32 noundef %62) #9
  br label %if.end80

if.else66:                                        ; preds = %cond.end57
  %63 = load ptr, ptr @__stderrp, align 8
  %64 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate67 = getelementptr inbounds %struct.lame_global_flags, ptr %64, i64 0, i32 3
  %65 = load i32, ptr %out_samplerate67, align 8
  %conv68 = sitofp i32 %65 to double
  %div69 = fdiv double %conv68, 1.000000e+03
  %brate70 = getelementptr inbounds %struct.lame_global_flags, ptr %64, i64 0, i32 11
  %66 = load i32, ptr %brate70, align 8
  %67 = load ptr, ptr %gfp.addr, align 8
  %mode71 = getelementptr inbounds %struct.lame_global_flags, ptr %67, i64 0, i32 8
  %68 = load i32, ptr %mode71, align 4
  %idxprom72 = sext i32 %68 to i64
  %arrayidx73 = getelementptr inbounds [4 x ptr], ptr @lame_print_config.mode_names, i64 0, i64 %idxprom72
  %69 = load ptr, ptr %arrayidx73, align 8
  %version74 = getelementptr inbounds %struct.lame_global_flags, ptr %67, i64 0, i32 43
  %70 = load i32, ptr %version74, align 8
  %sub75 = sub nsw i32 2, %70
  %71 = load float, ptr %compression, align 4
  %conv76 = fpext float %71 to double
  %72 = load ptr, ptr %gfp.addr, align 8
  %quality77 = getelementptr inbounds %struct.lame_global_flags, ptr %72, i64 0, i32 6
  %73 = load i32, ptr %quality77, align 4
  %call78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.15, double noundef %div69, i32 noundef %66, ptr noundef %69, i32 noundef %sub75, double noundef %conv76, i32 noundef %73) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then61, %if.else66, %if.then46
  %74 = load ptr, ptr @__stderrp, align 8
  %call81 = call i32 @fflush(ptr noundef %74) #9
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
  %sampfreq = alloca double, align 8
  %bufp = alloca [2 x ptr], align 8
  %blocktype = alloca [2 x i32], align 4
  %cod_info = alloca ptr, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %inbuf_l, ptr %inbuf_l.addr, align 8
  store ptr %inbuf_r, ptr %inbuf_r.addr, align 8
  store i32 %mf_size, ptr %mf_size.addr, align 4
  store ptr %mp3buf, ptr %mp3buf.addr, align 8
  store i32 %mp3buf_size, ptr %mp3buf_size.addr, align 4
  store double 0.000000e+00, ptr %ms_ratio_next, align 8
  store double 0.000000e+00, ptr %ms_ratio_prev, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3904) %masking_ratio, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3904) %masking_MS_ratio, i8 0, i64 3904, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(976) %scalefac, i8 0, i64 976, i1 false)
  %0 = load ptr, ptr %inbuf_l.addr, align 8
  store ptr %0, ptr %inbuf, align 8
  %1 = load ptr, ptr %inbuf_r.addr, align 8
  %arrayidx3 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 1
  store ptr %1, ptr %arrayidx3, align 8
  %2 = load ptr, ptr %gfp.addr, align 8
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 52
  store i32 0, ptr %mode_ext, align 4
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 39
  %3 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %out_samplerate, align 8
  %conv = sitofp i32 %5 to double
  %div = fdiv double %conv, 1.000000e+03
  store double %div, ptr %sampfreq, align 8
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %brate, align 8
  store i64 0, ptr @lame_encode_frame.sentBits, align 8
  store i64 8, ptr @lame_encode_frame.bitsPerSlot, align 8
  %7 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 42
  %8 = load i32, ptr %framesize, align 4
  %mul = mul nsw i32 %6, %8
  %conv4 = sitofp i32 %mul to double
  %9 = load double, ptr %sampfreq, align 8
  %10 = load i64, ptr @lame_encode_frame.bitsPerSlot, align 8
  %conv5 = uitofp i64 %10 to double
  %mul6 = fmul double %9, %conv5
  %div7 = fdiv double %conv4, %mul6
  %add = fadd double %div7, 1.000000e-09
  %11 = call double @llvm.floor.f64(double %add)
  %sub = fsub double %div7, %11
  %12 = call double @llvm.fabs.f64(double %sub)
  %cmp8 = fcmp olt double %12, 1.000000e-09
  %storemerge10 = select i1 %cmp8, double 0.000000e+00, double %sub
  store double %storemerge10, ptr @lame_encode_frame.frac_SpF, align 8
  %fneg = fneg double %storemerge10
  store double %fneg, ptr @lame_encode_frame.slot_lag, align 8
  %13 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %13, i64 0, i32 44
  store i32 1, ptr %padding, align 4
  %cmp11 = fcmp oeq double %storemerge10, 0.000000e+00
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then
  %14 = load ptr, ptr %gfp.addr, align 8
  %padding14 = getelementptr inbounds %struct.lame_global_flags, ptr %14, i64 0, i32 44
  store i32 0, ptr %padding14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then
  %15 = load i32, ptr %mf_size.addr, align 4
  %16 = load ptr, ptr %gfp.addr, align 8
  %framesize16 = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 42
  %17 = load i32, ptr %framesize16, align 4
  %sub18 = add nsw i32 %17, 752
  %cmp19.not = icmp slt i32 %15, %sub18
  br i1 %cmp19.not, label %cond.true, label %if.end22

cond.true:                                        ; preds = %if.end15
  call void @__assert_rtn(ptr noundef nonnull @__func__.lame_encode_frame, ptr noundef nonnull @.str.16, i32 noundef 661, ptr noundef nonnull @.str.17) #11
  unreachable

if.end22:                                         ; preds = %if.end15, %entry
  %18 = load ptr, ptr %gfp.addr, align 8
  %padding_type = getelementptr inbounds %struct.lame_global_flags, ptr %18, i64 0, i32 15
  %19 = load i32, ptr %padding_type, align 8
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end22
  %20 = load ptr, ptr %gfp.addr, align 8
  %padding23 = getelementptr inbounds %struct.lame_global_flags, ptr %20, i64 0, i32 44
  store i32 0, ptr %padding23, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end22
  %21 = load ptr, ptr %gfp.addr, align 8
  %padding25 = getelementptr inbounds %struct.lame_global_flags, ptr %21, i64 0, i32 44
  store i32 1, ptr %padding25, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end22
  %22 = load ptr, ptr %gfp.addr, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %22, i64 0, i32 21
  %23 = load i32, ptr %VBR, align 8
  %tobool27.not = icmp eq i32 %23, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %sw.default
  %24 = load ptr, ptr %gfp.addr, align 8
  %padding29 = getelementptr inbounds %struct.lame_global_flags, ptr %24, i64 0, i32 44
  store i32 0, ptr %padding29, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.default
  %25 = load ptr, ptr %gfp.addr, align 8
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %25, i64 0, i32 17
  %26 = load i32, ptr %disable_reservoir, align 8
  %tobool30.not = icmp eq i32 %26, 0
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.else
  %27 = load ptr, ptr %gfp.addr, align 8
  %padding32 = getelementptr inbounds %struct.lame_global_flags, ptr %27, i64 0, i32 44
  store i32 0, ptr %padding32, align 4
  br label %sw.epilog

if.else33:                                        ; preds = %if.else
  %28 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %cmp34 = fcmp une double %28, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %sw.epilog

if.then36:                                        ; preds = %if.else33
  %29 = load double, ptr @lame_encode_frame.slot_lag, align 8
  %30 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %sub37 = fadd double %30, -1.000000e+00
  %cmp38 = fcmp ogt double %29, %sub37
  br i1 %cmp38, label %if.then40, label %if.else43

if.then40:                                        ; preds = %if.then36
  %31 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %32 = load double, ptr @lame_encode_frame.slot_lag, align 8
  %sub41 = fsub double %32, %31
  store double %sub41, ptr @lame_encode_frame.slot_lag, align 8
  %33 = load ptr, ptr %gfp.addr, align 8
  %padding42 = getelementptr inbounds %struct.lame_global_flags, ptr %33, i64 0, i32 44
  store i32 0, ptr %padding42, align 4
  br label %sw.epilog

if.else43:                                        ; preds = %if.then36
  %34 = load ptr, ptr %gfp.addr, align 8
  %padding44 = getelementptr inbounds %struct.lame_global_flags, ptr %34, i64 0, i32 44
  store i32 1, ptr %padding44, align 4
  %35 = load double, ptr @lame_encode_frame.frac_SpF, align 8
  %sub45 = fsub double 1.000000e+00, %35
  %36 = load double, ptr @lame_encode_frame.slot_lag, align 8
  %add46 = fadd double %36, %sub45
  store double %add46, ptr @lame_encode_frame.slot_lag, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then28, %if.else33, %if.else43, %if.then40, %if.then31, %sw.bb24, %sw.bb
  %37 = load ptr, ptr %gfp.addr, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %37, i64 0, i32 4
  %38 = load i32, ptr %gtkflag, align 4
  %tobool51.not = icmp eq i32 %38, 0
  br i1 %tobool51.not, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %sw.epilog
  %39 = load ptr, ptr %gfp.addr, align 8
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %39, i64 0, i32 7
  %40 = load i32, ptr %silent, align 8
  %tobool52.not = icmp eq i32 %40, 0
  br i1 %tobool52.not, label %if.then53, label %if.end65

if.then53:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %41, i64 0, i32 43
  %42 = load i32, ptr %version, align 8
  %cmp54 = icmp eq i32 %42, 0
  %cond = select i1 %cmp54, i64 200, i64 50
  %frameNum56 = getelementptr inbounds %struct.lame_global_flags, ptr %41, i64 0, i32 39
  %43 = load i64, ptr %frameNum56, align 8
  %rem = srem i64 %43, %cond
  %cmp58 = icmp eq i64 %rem, 0
  br i1 %cmp58, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.then53
  %44 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate61 = getelementptr inbounds %struct.lame_global_flags, ptr %44, i64 0, i32 3
  %45 = load i32, ptr %out_samplerate61, align 8
  %frameNum62 = getelementptr inbounds %struct.lame_global_flags, ptr %44, i64 0, i32 39
  %46 = load i64, ptr %frameNum62, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %44, i64 0, i32 40
  %47 = load i64, ptr %totalframes, align 8
  %48 = load ptr, ptr %gfp.addr, align 8
  %framesize63 = getelementptr inbounds %struct.lame_global_flags, ptr %48, i64 0, i32 42
  %49 = load i32, ptr %framesize63, align 4
  call void @timestatus(i32 noundef %45, i64 noundef %46, i64 noundef %47, i32 noundef %49) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then53, %if.then60, %land.lhs.true, %sw.epilog
  %50 = load ptr, ptr %gfp.addr, align 8
  %psymodel = getelementptr inbounds %struct.lame_global_flags, ptr %50, i64 0, i32 63
  %51 = load i32, ptr %psymodel, align 8
  %tobool66.not = icmp eq i32 %51, 0
  br i1 %tobool66.not, label %for.cond119, label %if.then67

if.then67:                                        ; preds = %if.end65
  %52 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %52, i64 0, i32 45
  %53 = load i32, ptr %mode_gr, align 8
  %sub68 = add nsw i32 %53, -1
  %idxprom = sext i32 %sub68 to i64
  %arrayidx69 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %idxprom
  %54 = load double, ptr %arrayidx69, align 8
  store double %54, ptr %ms_ratio_prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc115, %if.then67
  %storemerge7 = phi i32 [ 0, %if.then67 ], [ %inc116, %for.inc115 ]
  store i32 %storemerge7, ptr %gr, align 4
  %55 = load ptr, ptr %gfp.addr, align 8
  %mode_gr70 = getelementptr inbounds %struct.lame_global_flags, ptr %55, i64 0, i32 45
  %56 = load i32, ptr %mode_gr70, align 8
  %cmp71 = icmp slt i32 %storemerge7, %56
  br i1 %cmp71, label %for.cond73, label %if.end146

for.cond73:                                       ; preds = %for.cond, %for.body76
  %storemerge8 = phi i32 [ %inc, %for.body76 ], [ 0, %for.cond ]
  store i32 %storemerge8, ptr %ch, align 4
  %57 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %57, i64 0, i32 46
  %58 = load i32, ptr %stereo, align 4
  %cmp74 = icmp slt i32 %storemerge8, %58
  br i1 %cmp74, label %for.body76, label %for.end

for.body76:                                       ; preds = %for.cond73
  %59 = load i32, ptr %ch, align 4
  %idxprom77 = sext i32 %59 to i64
  %arrayidx78 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 %idxprom77
  %60 = load ptr, ptr %arrayidx78, align 8
  %61 = load i32, ptr %gr, align 4
  %mul79 = mul nsw i32 %61, 576
  %sub81 = add nsw i32 %mul79, 304
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds i16, ptr %60, i64 %idxprom82
  %62 = load i32, ptr %ch, align 4
  %idxprom84 = sext i32 %62 to i64
  %arrayidx85 = getelementptr inbounds [2 x ptr], ptr %bufp, i64 0, i64 %idxprom84
  store ptr %arrayidx83, ptr %arrayidx85, align 8
  %63 = load i32, ptr %ch, align 4
  %inc = add nsw i32 %63, 1
  br label %for.cond73, !llvm.loop !11

for.end:                                          ; preds = %for.cond73
  %64 = load ptr, ptr %gfp.addr, align 8
  %65 = load i32, ptr %gr, align 4
  %idxprom87 = sext i32 %65 to i64
  %arrayidx88 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 %idxprom87
  %idxprom89 = sext i32 %65 to i64
  %arrayidx90 = getelementptr inbounds [2 x double], ptr @lame_encode_frame.ms_ener_ratio, i64 0, i64 %idxprom89
  %idxprom93 = sext i32 %65 to i64
  %arrayidx94 = getelementptr inbounds [2 x [2 x double]], ptr %pe, i64 0, i64 %idxprom93
  %66 = load i32, ptr %gr, align 4
  %idxprom96 = sext i32 %66 to i64
  %arrayidx97 = getelementptr inbounds [2 x [2 x double]], ptr %pe_MS, i64 0, i64 %idxprom96
  call void @L3psycho_anal(ptr noundef %64, ptr noundef nonnull %bufp, i32 noundef %65, ptr noundef nonnull %arrayidx88, ptr noundef nonnull %ms_ratio_next, ptr noundef nonnull %arrayidx90, ptr noundef nonnull %masking_ratio, ptr noundef nonnull %masking_MS_ratio, ptr noundef nonnull %arrayidx94, ptr noundef nonnull %arrayidx97, ptr noundef nonnull %blocktype) #9
  br label %for.cond100

for.cond100:                                      ; preds = %for.body104, %for.end
  %storemerge9 = phi i32 [ 0, %for.end ], [ %inc113, %for.body104 ]
  store i32 %storemerge9, ptr %ch, align 4
  %67 = load ptr, ptr %gfp.addr, align 8
  %stereo101 = getelementptr inbounds %struct.lame_global_flags, ptr %67, i64 0, i32 46
  %68 = load i32, ptr %stereo101, align 4
  %cmp102 = icmp slt i32 %storemerge9, %68
  br i1 %cmp102, label %for.body104, label %for.inc115

for.body104:                                      ; preds = %for.cond100
  %69 = load i32, ptr %ch, align 4
  %idxprom105 = sext i32 %69 to i64
  %arrayidx106 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %idxprom105
  %70 = load i32, ptr %arrayidx106, align 4
  %71 = load i32, ptr %gr, align 4
  %idxprom107 = sext i32 %71 to i64
  %arrayidx108 = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %idxprom107
  %72 = load i32, ptr %ch, align 4
  %idxprom110 = sext i32 %72 to i64
  %block_type = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx108, i64 0, i64 %idxprom110, i32 0, i32 6
  store i32 %70, ptr %block_type, align 8
  %73 = load i32, ptr %ch, align 4
  %inc113 = add nsw i32 %73, 1
  br label %for.cond100, !llvm.loop !12

for.inc115:                                       ; preds = %for.cond100
  %74 = load i32, ptr %gr, align 4
  %inc116 = add nsw i32 %74, 1
  br label %for.cond, !llvm.loop !13

for.cond119:                                      ; preds = %if.end65, %for.inc143
  %storemerge = phi i32 [ %inc144, %for.inc143 ], [ 0, %if.end65 ]
  store i32 %storemerge, ptr %gr, align 4
  %75 = load ptr, ptr %gfp.addr, align 8
  %mode_gr120 = getelementptr inbounds %struct.lame_global_flags, ptr %75, i64 0, i32 45
  %76 = load i32, ptr %mode_gr120, align 8
  %cmp121 = icmp slt i32 %storemerge, %76
  br i1 %cmp121, label %for.cond124, label %if.end146

for.cond124:                                      ; preds = %for.cond119, %for.body128
  %storemerge6 = phi i32 [ %inc141, %for.body128 ], [ 0, %for.cond119 ]
  store i32 %storemerge6, ptr %ch, align 4
  %77 = load ptr, ptr %gfp.addr, align 8
  %stereo125 = getelementptr inbounds %struct.lame_global_flags, ptr %77, i64 0, i32 46
  %78 = load i32, ptr %stereo125, align 4
  %cmp126 = icmp slt i32 %storemerge6, %78
  br i1 %cmp126, label %for.body128, label %for.inc143

for.body128:                                      ; preds = %for.cond124
  %79 = load i32, ptr %gr, align 4
  %idxprom129 = sext i32 %79 to i64
  %arrayidx130 = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %idxprom129
  %80 = load i32, ptr %ch, align 4
  %idxprom132 = sext i32 %80 to i64
  %block_type135 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx130, i64 0, i64 %idxprom132, i32 0, i32 6
  store i32 0, ptr %block_type135, align 8
  %81 = load i32, ptr %gr, align 4
  %idxprom136 = sext i32 %81 to i64
  %idxprom138 = sext i32 %80 to i64
  %arrayidx139 = getelementptr inbounds [2 x [2 x double]], ptr %pe, i64 0, i64 %idxprom136, i64 %idxprom138
  store double 7.000000e+02, ptr %arrayidx139, align 8
  %82 = load i32, ptr %ch, align 4
  %inc141 = add nsw i32 %82, 1
  br label %for.cond124, !llvm.loop !14

for.inc143:                                       ; preds = %for.cond124
  %83 = load i32, ptr %gr, align 4
  %inc144 = add nsw i32 %83, 1
  br label %for.cond119, !llvm.loop !15

if.end146:                                        ; preds = %for.cond119, %for.cond
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc173, %if.end146
  %storemerge1 = phi i32 [ 0, %if.end146 ], [ %inc174, %for.inc173 ]
  store i32 %storemerge1, ptr %gr, align 4
  %84 = load ptr, ptr %gfp.addr, align 8
  %mode_gr148 = getelementptr inbounds %struct.lame_global_flags, ptr %84, i64 0, i32 45
  %85 = load i32, ptr %mode_gr148, align 8
  %cmp149 = icmp slt i32 %storemerge1, %85
  br i1 %cmp149, label %for.cond152, label %for.end175

for.cond152:                                      ; preds = %for.cond147, %for.inc170
  %storemerge5 = phi i32 [ %inc171, %for.inc170 ], [ 0, %for.cond147 ]
  store i32 %storemerge5, ptr %ch, align 4
  %86 = load ptr, ptr %gfp.addr, align 8
  %stereo153 = getelementptr inbounds %struct.lame_global_flags, ptr %86, i64 0, i32 46
  %87 = load i32, ptr %stereo153, align 4
  %cmp154 = icmp slt i32 %storemerge5, %87
  br i1 %cmp154, label %for.body156, label %for.inc173

for.body156:                                      ; preds = %for.cond152
  %88 = load i32, ptr %gr, align 4
  %idxprom157 = sext i32 %88 to i64
  %arrayidx158 = getelementptr inbounds %struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 %idxprom157
  %89 = load i32, ptr %ch, align 4
  %idxprom160 = sext i32 %89 to i64
  %arrayidx161 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx158, i64 0, i64 %idxprom160
  store ptr %arrayidx161, ptr %cod_info, align 8
  %mixed_block_flag = getelementptr inbounds %struct.gr_info, ptr %arrayidx161, i64 0, i32 7
  store i32 0, ptr %mixed_block_flag, align 4
  %block_type163 = getelementptr inbounds %struct.gr_info, ptr %arrayidx161, i64 0, i32 6
  %90 = load i32, ptr %block_type163, align 8
  %cmp164 = icmp eq i32 %90, 0
  br i1 %cmp164, label %if.then166, label %if.else167

if.then166:                                       ; preds = %for.body156
  %91 = load ptr, ptr %cod_info, align 8
  %window_switching_flag = getelementptr inbounds %struct.gr_info, ptr %91, i64 0, i32 5
  store i32 0, ptr %window_switching_flag, align 4
  br label %for.inc170

if.else167:                                       ; preds = %for.body156
  %92 = load ptr, ptr %cod_info, align 8
  %window_switching_flag168 = getelementptr inbounds %struct.gr_info, ptr %92, i64 0, i32 5
  store i32 1, ptr %window_switching_flag168, align 4
  br label %for.inc170

for.inc170:                                       ; preds = %if.then166, %if.else167
  %93 = load i32, ptr %ch, align 4
  %inc171 = add nsw i32 %93, 1
  br label %for.cond152, !llvm.loop !16

for.inc173:                                       ; preds = %for.cond152
  %94 = load i32, ptr %gr, align 4
  %inc174 = add nsw i32 %94, 1
  br label %for.cond147, !llvm.loop !17

for.end175:                                       ; preds = %for.cond147
  %95 = load ptr, ptr %gfp.addr, align 8
  %96 = load ptr, ptr %inbuf, align 8
  %arrayidx177 = getelementptr inbounds [2 x ptr], ptr %inbuf, i64 0, i64 1
  %97 = load ptr, ptr %arrayidx177, align 8
  call void @mdct_sub48(ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef nonnull %xr, ptr noundef nonnull @l3_side) #9
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %95, i64 0, i32 8
  %98 = load i32, ptr %mode, align 4
  %cmp179 = icmp eq i32 %98, 1
  %conv180 = zext i1 %cmp179 to i32
  store i32 %conv180, ptr %check_ms_stereo, align 4
  br i1 %cmp179, label %if.then182, label %if.end187

if.then182:                                       ; preds = %for.end175
  %99 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 0, i32 0, i64 0, i32 0, i32 6), align 8
  %100 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 0, i32 0, i64 1, i32 0, i32 6), align 8
  %cmp183 = icmp eq i32 %99, %100
  %101 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 1, i32 0, i64 0, i32 0, i32 6), align 8
  %102 = load i32, ptr getelementptr inbounds (%struct.III_side_info_t, ptr @l3_side, i64 0, i32 4, i64 1, i32 0, i64 1, i32 0, i32 6), align 8
  %cmp185 = icmp eq i32 %101, %102
  %phi.cast = zext i1 %cmp185 to i32
  %103 = select i1 %cmp183, i32 %phi.cast, i32 0
  store i32 %103, ptr %check_ms_stereo, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then182, %for.end175
  %104 = load i32, ptr %check_ms_stereo, align 4
  %tobool188.not = icmp eq i32 %104, 0
  br i1 %tobool188.not, label %if.end201, label %if.then189

if.then189:                                       ; preds = %if.end187
  %105 = load double, ptr @lame_encode_frame.ms_ratio, align 8
  %106 = load double, ptr getelementptr inbounds ([2 x double], ptr @lame_encode_frame.ms_ratio, i64 0, i64 1), align 8
  %add190 = fadd double %105, %106
  %107 = load double, ptr %ms_ratio_prev, align 8
  %add191 = fadd double %add190, %107
  %108 = load double, ptr %ms_ratio_next, align 8
  %add192 = fadd double %add191, %108
  %mul193 = fmul double %add192, 2.500000e-01
  %cmp196 = fcmp olt double %mul193, 3.500000e-01
  br i1 %cmp196, label %if.then198, label %if.end201

if.then198:                                       ; preds = %if.then189
  %109 = load ptr, ptr %gfp.addr, align 8
  %mode_ext199 = getelementptr inbounds %struct.lame_global_flags, ptr %109, i64 0, i32 52
  store i32 2, ptr %mode_ext199, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then189, %if.then198, %if.end187
  %110 = load ptr, ptr %gfp.addr, align 8
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %110, i64 0, i32 10
  %111 = load i32, ptr %force_ms, align 4
  %tobool202.not = icmp eq i32 %111, 0
  br i1 %tobool202.not, label %if.end205, label %if.then203

if.then203:                                       ; preds = %if.end201
  %112 = load ptr, ptr %gfp.addr, align 8
  %mode_ext204 = getelementptr inbounds %struct.lame_global_flags, ptr %112, i64 0, i32 52
  store i32 2, ptr %mode_ext204, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end201
  %113 = load ptr, ptr %gfp.addr, align 8
  %mode_ext206 = getelementptr inbounds %struct.lame_global_flags, ptr %113, i64 0, i32 52
  %114 = load i32, ptr %mode_ext206, align 4
  %cmp207 = icmp eq i32 %114, 2
  %masking_MS_ratio.masking_ratio = select i1 %cmp207, ptr %masking_MS_ratio, ptr %masking_ratio
  %pe_MS.pe = select i1 %cmp207, ptr %pe_MS, ptr %pe
  store ptr %masking_MS_ratio.masking_ratio, ptr %masking, align 8
  store ptr %pe_MS.pe, ptr %pe_use, align 8
  %115 = load ptr, ptr %gfp.addr, align 8
  %VBR212 = getelementptr inbounds %struct.lame_global_flags, ptr %115, i64 0, i32 21
  %116 = load i32, ptr %VBR212, align 8
  %tobool213.not = icmp eq i32 %116, 0
  br i1 %tobool213.not, label %if.else220, label %if.then214

if.then214:                                       ; preds = %if.end205
  %117 = load ptr, ptr %gfp.addr, align 8
  %118 = load ptr, ptr %pe_use, align 8
  %119 = load ptr, ptr %masking, align 8
  call void @VBR_iteration_loop(ptr noundef %117, ptr noundef %118, ptr noundef nonnull @lame_encode_frame.ms_ratio, ptr noundef nonnull %xr, ptr noundef %119, ptr noundef nonnull @l3_side, ptr noundef nonnull %l3_enc, ptr noundef nonnull %scalefac) #9
  br label %if.end226

if.else220:                                       ; preds = %if.end205
  %120 = load ptr, ptr %gfp.addr, align 8
  %121 = load ptr, ptr %pe_use, align 8
  %122 = load ptr, ptr %masking, align 8
  call void @iteration_loop(ptr noundef %120, ptr noundef %121, ptr noundef nonnull @lame_encode_frame.ms_ratio, ptr noundef nonnull %xr, ptr noundef %122, ptr noundef nonnull @l3_side, ptr noundef nonnull %l3_enc, ptr noundef nonnull %scalefac) #9
  br label %if.end226

if.end226:                                        ; preds = %if.else220, %if.then214
  %123 = load ptr, ptr %gfp.addr, align 8
  call void @getframebits(ptr noundef %123, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #9
  %124 = load i32, ptr %bitsPerFrame, align 4
  call void @III_format_bitstream(ptr noundef %123, i32 noundef %124, ptr noundef nonnull %l3_enc, ptr noundef nonnull @l3_side, ptr noundef nonnull %scalefac, ptr noundef nonnull @bs) #9
  %125 = load i64, ptr getelementptr inbounds (%struct.bit_stream_struc, ptr @bs, i64 0, i32 5), align 8
  %126 = load i64, ptr @lame_encode_frame.sentBits, align 8
  %sub229 = sub i64 %125, %126
  store i64 %sub229, ptr @lame_encode_frame.frameBits, align 8
  %127 = load i64, ptr @lame_encode_frame.bitsPerSlot, align 8
  %rem230 = urem i64 %sub229, %127
  %tobool231.not = icmp eq i64 %rem230, 0
  br i1 %tobool231.not, label %if.end235, label %if.then232

if.then232:                                       ; preds = %if.end226
  %128 = load ptr, ptr @__stderrp, align 8
  %129 = load i64, ptr @lame_encode_frame.frameBits, align 8
  %130 = load i64, ptr @lame_encode_frame.bitsPerSlot, align 8
  %div233 = udiv i64 %129, %130
  %rem234 = urem i64 %129, %130
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.18, i64 noundef %129, i64 noundef %div233, i64 noundef %rem234) #9
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.end226
  %131 = load i64, ptr @lame_encode_frame.frameBits, align 8
  %132 = load i64, ptr @lame_encode_frame.sentBits, align 8
  %add236 = add i64 %132, %131
  store i64 %add236, ptr @lame_encode_frame.sentBits, align 8
  %133 = load ptr, ptr %mp3buf.addr, align 8
  %134 = load i32, ptr %mp3buf_size.addr, align 4
  %call237 = call i32 @copy_buffer(ptr noundef %133, i32 noundef %134, ptr noundef nonnull @bs) #9
  store i32 %call237, ptr %mp3count, align 4
  %135 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %135, i64 0, i32 5
  %136 = load i32, ptr %bWriteVbrTag, align 8
  %tobool238.not = icmp eq i32 %136, 0
  br i1 %tobool238.not, label %if.end242, label %if.then239

if.then239:                                       ; preds = %if.end235
  %137 = load i64, ptr @lame_encode_frame.sentBits, align 8
  %div2404 = lshr i64 %137, 3
  %conv241 = trunc i64 %div2404 to i32
  call void @AddVbrFrame(i32 noundef %conv241) #9
  br label %if.end242

if.end242:                                        ; preds = %if.then239, %if.end235
  %138 = load ptr, ptr %gfp.addr, align 8
  %frameNum243 = getelementptr inbounds %struct.lame_global_flags, ptr %138, i64 0, i32 39
  %139 = load i64, ptr %frameNum243, align 8
  %inc244 = add nsw i64 %139, 1
  store i64 %inc244, ptr %frameNum243, align 8
  %140 = load i32, ptr %mp3count, align 4
  ret i32 %140
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
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 39
  %1 = load i64, ptr %frameNum, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %ch.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %ch.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom1
  store i32 1, ptr %arrayidx2, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom3
  store double 0.000000e+00, ptr %arrayidx4, align 8
  %5 = load i32, ptr %ch.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom5
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom7
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx8, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef nonnull %arrayidx6, i32 noundef 0, i64 noundef 10, i64 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load ptr, ptr %gfp.addr, align 8
  %frameNum10 = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 39
  %8 = load i64, ptr %frameNum10, align 8
  %cmp11.not = icmp eq i64 %8, 0
  br i1 %cmp11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end
  %9 = load i32, ptr %ch.addr, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr @fill_buffer_resample.init, i64 0, i64 %idxprom13
  store i32 0, ptr %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %10 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 49
  %11 = load float, ptr %resample_ratio, align 8
  %conv = fpext float %11 to double
  %conv17 = fpext float %11 to double
  %add = fadd double %conv17, 5.000000e-01
  %12 = call double @llvm.floor.f64(double %add)
  %sub = fsub double %conv, %12
  %13 = call double @llvm.fabs.f64(double %sub)
  %cmp18 = fcmp olt double %13, 1.000000e-04
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, ptr %linear, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %storemerge = phi i32 [ 0, %if.end15 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %k, align 4
  %14 = load i32, ptr %desired_len.addr, align 4
  %cmp20 = icmp slt i32 %storemerge, %14
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %k, align 4
  %conv22 = sitofp i32 %15 to float
  %16 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio23 = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 49
  %17 = load float, ptr %resample_ratio23, align 8
  %mul = fmul float %17, %conv22
  %conv24 = fpext float %mul to double
  store double %conv24, ptr %time0, align 8
  %18 = load i32, ptr %ch.addr, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom25
  %19 = load double, ptr %arrayidx26, align 8
  %sub27 = fsub double %conv24, %19
  %20 = call double @llvm.floor.f64(double %sub27)
  %conv28 = fptosi double %20 to i32
  store i32 %conv28, ptr %j, align 4
  %add29 = add nsw i32 %conv28, 2
  %21 = load i32, ptr %len.addr, align 4
  %cmp30.not = icmp slt i32 %add29, %21
  br i1 %cmp30.not, label %if.end33, label %for.end

if.end33:                                         ; preds = %for.body
  %22 = load double, ptr %time0, align 8
  %23 = load i32, ptr %ch.addr, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom34
  %24 = load double, ptr %arrayidx35, align 8
  %25 = load i32, ptr %j, align 4
  %conv36 = sitofp i32 %25 to double
  %add37 = fadd double %24, %conv36
  %sub38 = fsub double %22, %add37
  store double %sub38, ptr %x1, align 8
  %sub39 = fadd double %sub38, -1.000000e+00
  store double %sub39, ptr %x2, align 8
  %26 = load i32, ptr %j, align 4
  %cmp40 = icmp slt i32 %26, 0
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end33
  %27 = load i32, ptr %ch.addr, align 4
  %idxprom42 = sext i32 %27 to i64
  %28 = load i32, ptr %j, align 4
  %add44 = add nsw i32 %28, 5
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom42, i64 %idxprom45
  br label %cond.end

cond.false:                                       ; preds = %if.end33
  %29 = load ptr, ptr %inbuf.addr, align 8
  %30 = load i32, ptr %j, align 4
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds i16, ptr %29, i64 %idxprom48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi ptr [ %arrayidx46, %cond.true ], [ %arrayidx49, %cond.false ]
  %cond.in = load i16, ptr %cond.in.in, align 2
  %cond = sext i16 %cond.in to i32
  store i32 %cond, ptr %y1, align 4
  %31 = load i32, ptr %j, align 4
  %cmp52 = icmp slt i32 %31, -1
  br i1 %cmp52, label %cond.true54, label %cond.false61

cond.true54:                                      ; preds = %cond.end
  %32 = load i32, ptr %ch.addr, align 4
  %idxprom55 = sext i32 %32 to i64
  %33 = load i32, ptr %j, align 4
  %add57 = add nsw i32 %33, 6
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom55, i64 %idxprom58
  br label %cond.end66

cond.false61:                                     ; preds = %cond.end
  %34 = load ptr, ptr %inbuf.addr, align 8
  %35 = load i32, ptr %j, align 4
  %add62 = add nsw i32 %35, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %34, i64 %idxprom63
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false61, %cond.true54
  %cond67.in.in = phi ptr [ %arrayidx59, %cond.true54 ], [ %arrayidx64, %cond.false61 ]
  %cond67.in = load i16, ptr %cond67.in.in, align 2
  %cond67 = sext i16 %cond67.in to i32
  store i32 %cond67, ptr %y2, align 4
  %36 = load i32, ptr %linear, align 4
  %tobool68.not = icmp eq i32 %36, 0
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %cond.end66
  %37 = load i32, ptr %y2, align 4
  %conv70 = sitofp i32 %37 to double
  %38 = load double, ptr %x1, align 8
  %39 = load i32, ptr %y1, align 4
  %conv72 = sitofp i32 %39 to double
  %40 = load double, ptr %x2, align 8
  %41 = fneg double %40
  %neg = fmul double %41, %conv72
  %42 = call double @llvm.fmuladd.f64(double %conv70, double %38, double %neg)
  %add74 = fadd double %42, 5.000000e-01
  %43 = call double @llvm.floor.f64(double %add74)
  %conv75 = fptosi double %43 to i16
  %44 = load ptr, ptr %outbuf.addr, align 8
  %45 = load i32, ptr %k, align 4
  %idxprom76 = sext i32 %45 to i64
  %arrayidx77 = getelementptr inbounds i16, ptr %44, i64 %idxprom76
  store i16 %conv75, ptr %arrayidx77, align 2
  br label %for.inc

if.else:                                          ; preds = %cond.end66
  %46 = load double, ptr %x1, align 8
  %add78 = fadd double %46, 1.000000e+00
  store double %add78, ptr %x0, align 8
  %sub79 = fadd double %46, -2.000000e+00
  store double %sub79, ptr %x3, align 8
  %47 = load i32, ptr %j, align 4
  %cmp81 = icmp slt i32 %47, 1
  br i1 %cmp81, label %cond.true83, label %cond.false91

cond.true83:                                      ; preds = %if.else
  %48 = load i32, ptr %ch.addr, align 4
  %idxprom84 = sext i32 %48 to i64
  %49 = load i32, ptr %j, align 4
  %add87 = add nsw i32 %49, 4
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom84, i64 %idxprom88
  br label %cond.end96

cond.false91:                                     ; preds = %if.else
  %50 = load ptr, ptr %inbuf.addr, align 8
  %51 = load i32, ptr %j, align 4
  %sub92 = add nsw i32 %51, -1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds i16, ptr %50, i64 %idxprom93
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false91, %cond.true83
  %cond97.in.in = phi ptr [ %arrayidx89, %cond.true83 ], [ %arrayidx94, %cond.false91 ]
  %cond97.in = load i16, ptr %cond97.in.in, align 2
  %cond97 = sext i16 %cond97.in to i32
  store i32 %cond97, ptr %y0, align 4
  %52 = load i32, ptr %j, align 4
  %cmp99 = icmp slt i32 %52, -2
  br i1 %cmp99, label %cond.true101, label %cond.false109

cond.true101:                                     ; preds = %cond.end96
  %53 = load i32, ptr %ch.addr, align 4
  %idxprom102 = sext i32 %53 to i64
  %54 = load i32, ptr %j, align 4
  %add105 = add nsw i32 %54, 7
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom102, i64 %idxprom106
  br label %cond.end114

cond.false109:                                    ; preds = %cond.end96
  %55 = load ptr, ptr %inbuf.addr, align 8
  %56 = load i32, ptr %j, align 4
  %add110 = add nsw i32 %56, 2
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds i16, ptr %55, i64 %idxprom111
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false109, %cond.true101
  %cond115.in.in = phi ptr [ %arrayidx107, %cond.true101 ], [ %arrayidx112, %cond.false109 ]
  %cond115.in = load i16, ptr %cond115.in.in, align 2
  %cond115 = sext i16 %cond115.in to i32
  store i32 %cond115, ptr %y3, align 4
  %57 = load i32, ptr %y0, align 4
  %sub116 = sub nsw i32 0, %57
  %conv117 = sitofp i32 %sub116 to double
  %58 = load double, ptr %x1, align 8
  %mul118 = fmul double %58, %conv117
  %59 = load double, ptr %x2, align 8
  %mul119 = fmul double %mul118, %59
  %60 = load double, ptr %x3, align 8
  %mul120 = fmul double %mul119, %60
  %div = fdiv double %mul120, 6.000000e+00
  %add121 = fadd double %div, 5.000000e-01
  %61 = load i32, ptr %y1, align 4
  %conv122 = sitofp i32 %61 to double
  %62 = load double, ptr %x0, align 8
  %mul123 = fmul double %62, %conv122
  %63 = load double, ptr %x2, align 8
  %mul124 = fmul double %mul123, %63
  %64 = load double, ptr %x3, align 8
  %mul125 = fmul double %mul124, %64
  %div126 = fmul double %mul125, 5.000000e-01
  %add127 = fadd double %add121, %div126
  %65 = load i32, ptr %y2, align 4
  %conv128 = sitofp i32 %65 to double
  %66 = load double, ptr %x0, align 8
  %mul129 = fmul double %66, %conv128
  %67 = load double, ptr %x1, align 8
  %mul130 = fmul double %mul129, %67
  %68 = load double, ptr %x3, align 8
  %mul131 = fmul double %mul130, %68
  %div132 = fmul double %mul131, 5.000000e-01
  %sub133 = fsub double %add127, %div132
  %69 = load i32, ptr %y3, align 4
  %conv134 = sitofp i32 %69 to double
  %70 = load double, ptr %x0, align 8
  %mul135 = fmul double %70, %conv134
  %71 = load double, ptr %x1, align 8
  %mul136 = fmul double %mul135, %71
  %72 = load double, ptr %x2, align 8
  %mul137 = fmul double %mul136, %72
  %div138 = fdiv double %mul137, 6.000000e+00
  %add139 = fadd double %sub133, %div138
  %73 = call double @llvm.floor.f64(double %add139)
  %conv140 = fptosi double %73 to i32
  store i32 %conv140, ptr %value, align 4
  %cmp141 = icmp sgt i32 %conv140, 32767
  br i1 %cmp141, label %if.then143, label %if.else146

if.then143:                                       ; preds = %cond.end114
  %74 = load ptr, ptr %outbuf.addr, align 8
  %75 = load i32, ptr %k, align 4
  %idxprom144 = sext i32 %75 to i64
  %arrayidx145 = getelementptr inbounds i16, ptr %74, i64 %idxprom144
  store i16 32767, ptr %arrayidx145, align 2
  br label %for.inc

if.else146:                                       ; preds = %cond.end114
  %76 = load i32, ptr %value, align 4
  %cmp147 = icmp slt i32 %76, -32767
  br i1 %cmp147, label %if.then149, label %if.else152

if.then149:                                       ; preds = %if.else146
  %77 = load ptr, ptr %outbuf.addr, align 8
  %78 = load i32, ptr %k, align 4
  %idxprom150 = sext i32 %78 to i64
  %arrayidx151 = getelementptr inbounds i16, ptr %77, i64 %idxprom150
  store i16 -32767, ptr %arrayidx151, align 2
  br label %for.inc

if.else152:                                       ; preds = %if.else146
  %79 = load i32, ptr %value, align 4
  %conv153 = trunc i32 %79 to i16
  %80 = load ptr, ptr %outbuf.addr, align 8
  %81 = load i32, ptr %k, align 4
  %idxprom154 = sext i32 %81 to i64
  %arrayidx155 = getelementptr inbounds i16, ptr %80, i64 %idxprom154
  store i16 %conv153, ptr %arrayidx155, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %if.then149, %if.else152, %if.then143
  %82 = load i32, ptr %k, align 4
  %inc = add nsw i32 %82, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.body, %for.cond
  %83 = load i32, ptr %len.addr, align 4
  %84 = load i32, ptr %j, align 4
  %add159 = add nsw i32 %84, 2
  %cmp160 = icmp slt i32 %83, %add159
  %85 = load i32, ptr %len.addr, align 4
  %86 = load i32, ptr %j, align 4
  %add164 = add nsw i32 %86, 2
  %cond166 = select i1 %cmp160, i32 %85, i32 %add164
  %87 = load ptr, ptr %num_used.addr, align 8
  store i32 %cond166, ptr %87, align 4
  %conv167 = sitofp i32 %cond166 to float
  %88 = load i32, ptr %k, align 4
  %conv168 = sitofp i32 %88 to float
  %89 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio169 = getelementptr inbounds %struct.lame_global_flags, ptr %89, i64 0, i32 49
  %90 = load float, ptr %resample_ratio169, align 8
  %neg171 = fneg float %conv168
  %91 = call float @llvm.fmuladd.f32(float %neg171, float %90, float %conv167)
  %conv172 = fpext float %91 to double
  %92 = load i32, ptr %ch.addr, align 4
  %idxprom173 = sext i32 %92 to i64
  %arrayidx174 = getelementptr inbounds [2 x double], ptr @fill_buffer_resample.itime, i64 0, i64 %idxprom173
  %93 = load double, ptr %arrayidx174, align 8
  %add175 = fadd double %93, %conv172
  store double %add175, ptr %arrayidx174, align 8
  br label %for.cond176

for.cond176:                                      ; preds = %for.body179, %for.end
  %storemerge1 = phi i32 [ 0, %for.end ], [ %inc189, %for.body179 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp177 = icmp slt i32 %storemerge1, 5
  br i1 %cmp177, label %for.body179, label %for.end190

for.body179:                                      ; preds = %for.cond176
  %94 = load ptr, ptr %inbuf.addr, align 8
  %95 = load ptr, ptr %num_used.addr, align 8
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %i, align 4
  %add180 = add nsw i32 %96, %97
  %sub181 = add nsw i32 %add180, -5
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds i16, ptr %94, i64 %idxprom182
  %98 = load i16, ptr %arrayidx183, align 2
  %99 = load i32, ptr %ch.addr, align 4
  %idxprom184 = sext i32 %99 to i64
  %100 = load i32, ptr %i, align 4
  %idxprom186 = sext i32 %100 to i64
  %arrayidx187 = getelementptr inbounds [2 x [5 x i16]], ptr @fill_buffer_resample.inbuf_old, i64 0, i64 %idxprom184, i64 %idxprom186
  store i16 %98, ptr %arrayidx187, align 2
  %101 = load i32, ptr %i, align 4
  %inc189 = add nsw i32 %101, 1
  br label %for.cond176, !llvm.loop !19

for.end190:                                       ; preds = %for.cond176
  %102 = load i32, ptr %k, align 4
  ret i32 %102
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
  %outbuf.addr = alloca ptr, align 8
  %desired_len.addr = alloca i32, align 4
  %inbuf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %outbuf, ptr %outbuf.addr, align 8
  store i32 %desired_len, ptr %desired_len.addr, align 4
  store ptr %inbuf, ptr %inbuf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %cmp = icmp slt i32 %desired_len, %len
  %0 = load i32, ptr %desired_len.addr, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cond = select i1 %cmp, i32 %0, i32 %1
  store i32 %cond, ptr %j, align 4
  %2 = load ptr, ptr %outbuf.addr, align 8
  %3 = load ptr, ptr %inbuf.addr, align 8
  %conv = sext i32 %cond to i64
  %mul = shl nsw i64 %conv, 1
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %2, ptr noundef %3, i64 noundef %mul, i64 noundef %4) #9
  %5 = load i32, ptr %j, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nounwind ssp uwtable
define i32 @lame_encode_buffer(ptr noundef %gfp, ptr noundef %buffer_l, ptr noundef %buffer_r, i32 noundef %nsamples, ptr noundef %mp3buf, i32 noundef %mp3buf_size) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
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
  store i32 %nsamples, ptr %nsamples.addr, align 4
  store ptr %mp3buf, ptr %mp3buf.addr, align 8
  store i32 %mp3buf_size, ptr %mp3buf_size.addr, align 4
  store i32 0, ptr %mp3size, align 4
  store ptr %buffer_l, ptr %in_buffer, align 8
  %arrayidx1 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 1
  store ptr %buffer_r, ptr %arrayidx1, align 8
  %0 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 42
  %1 = load i32, ptr %framesize, align 4
  %sub = add nsw i32 %1, 752
  store i32 %sub, ptr %mf_needed, align 4
  %cmp = icmp sgt i32 %1, 2304
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.lame_encode_buffer, ptr noundef nonnull @.str.16, i32 noundef 990, ptr noundef nonnull @.str.19) #11
  unreachable

cond.end:                                         ; preds = %entry
  %2 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 39
  %3 = load i64, ptr %frameNum, align 8
  %cmp2 = icmp eq i64 %3, 0
  %4 = load i32, ptr @lame_encode_buffer.frame_buffered, align 4
  %tobool4.not = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp2, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12224) @mfbuf, i8 0, i64 12224, i1 false)
  store i32 1, ptr @lame_encode_buffer.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4
  store i32 752, ptr @mf_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %5 = load ptr, ptr %gfp.addr, align 8
  %frameNum5 = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 39
  %6 = load i64, ptr %frameNum5, align 8
  %cmp6 = icmp eq i64 %6, 1
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 0, ptr @lame_encode_buffer.frame_buffered, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %7 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 1
  %8 = load i32, ptr %num_channels, align 8
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %land.lhs.true12, label %if.end33

land.lhs.true12:                                  ; preds = %if.end9
  %9 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %9, i64 0, i32 46
  %10 = load i32, ptr %stereo, align 4
  %cmp13 = icmp eq i32 %10, 1
  br i1 %cmp13, label %for.cond, label %if.end33

for.cond:                                         ; preds = %land.lhs.true12, %for.body
  %storemerge4 = phi i32 [ %inc, %for.body ], [ 0, %land.lhs.true12 ]
  store i32 %storemerge4, ptr %i, align 4
  %11 = load i32, ptr %nsamples.addr, align 4
  %cmp16 = icmp slt i32 %storemerge4, %11
  br i1 %cmp16, label %for.body, label %if.end33

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %in_buffer, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %14 = load i16, ptr %arrayidx19, align 2
  %conv20 = sext i16 %14 to i32
  %arrayidx21 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 1
  %15 = load ptr, ptr %arrayidx21, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %15, i64 %idxprom22
  %17 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %17 to i32
  %add25 = add nsw i32 %conv20, %conv24
  %div = sdiv i32 %add25, 2
  %conv26 = trunc i32 %div to i16
  %18 = load ptr, ptr %in_buffer, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %18, i64 %idxprom28
  store i16 %conv26, ptr %arrayidx29, align 2
  %arrayidx30 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 1
  %20 = load ptr, ptr %arrayidx30, align 8
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %20, i64 %idxprom31
  store i16 0, ptr %arrayidx32, align 2
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !20

if.end33:                                         ; preds = %for.cond, %land.lhs.true12, %if.end9
  br label %while.cond

while.cond:                                       ; preds = %if.end117, %if.end33
  %22 = load i32, ptr %nsamples.addr, align 4
  %cmp34 = icmp sgt i32 %22, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %n_in, align 4
  store i32 0, ptr %n_out, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %if.end59, %while.body
  %storemerge1 = phi i32 [ 0, %while.body ], [ %inc63, %if.end59 ]
  store i32 %storemerge1, ptr %ch, align 4
  %23 = load ptr, ptr %gfp.addr, align 8
  %stereo37 = getelementptr inbounds %struct.lame_global_flags, ptr %23, i64 0, i32 46
  %24 = load i32, ptr %stereo37, align 4
  %cmp38 = icmp slt i32 %storemerge1, %24
  br i1 %cmp38, label %for.body40, label %for.end64

for.body40:                                       ; preds = %for.cond36
  %25 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %25, i64 0, i32 49
  %26 = load float, ptr %resample_ratio, align 8
  %cmp41 = fcmp une float %26, 1.000000e+00
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %for.body40
  %27 = load ptr, ptr %gfp.addr, align 8
  %28 = load i32, ptr %ch, align 4
  %idxprom44 = sext i32 %28 to i64
  %29 = load i32, ptr @mf_size, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom44, i64 %idxprom46
  %framesize48 = getelementptr inbounds %struct.lame_global_flags, ptr %27, i64 0, i32 42
  %30 = load i32, ptr %framesize48, align 4
  %31 = load i32, ptr %ch, align 4
  %idxprom49 = sext i32 %31 to i64
  %arrayidx50 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %idxprom49
  %32 = load ptr, ptr %arrayidx50, align 8
  %33 = load i32, ptr %nsamples.addr, align 4
  %call = call i32 @fill_buffer_resample(ptr noundef %27, ptr noundef nonnull %arrayidx47, i32 noundef %30, ptr noundef %32, i32 noundef %33, ptr noundef nonnull %n_in, i32 noundef %31)
  store i32 %call, ptr %n_out, align 4
  br label %if.end59

if.else:                                          ; preds = %for.body40
  %34 = load ptr, ptr %gfp.addr, align 8
  %35 = load i32, ptr %ch, align 4
  %idxprom51 = sext i32 %35 to i64
  %36 = load i32, ptr @mf_size, align 4
  %idxprom53 = sext i32 %36 to i64
  %arrayidx54 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom51, i64 %idxprom53
  %framesize55 = getelementptr inbounds %struct.lame_global_flags, ptr %34, i64 0, i32 42
  %37 = load i32, ptr %framesize55, align 4
  %38 = load i32, ptr %ch, align 4
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %idxprom56
  %39 = load ptr, ptr %arrayidx57, align 8
  %40 = load i32, ptr %nsamples.addr, align 4
  %call58 = call i32 @fill_buffer(ptr noundef %34, ptr noundef nonnull %arrayidx54, i32 noundef %37, ptr noundef %39, i32 noundef %40)
  store i32 %call58, ptr %n_out, align 4
  store i32 %call58, ptr %n_in, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then43
  %41 = load i32, ptr %n_in, align 4
  %42 = load i32, ptr %ch, align 4
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds [2 x ptr], ptr %in_buffer, i64 0, i64 %idxprom60
  %43 = load ptr, ptr %arrayidx61, align 8
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds i16, ptr %43, i64 %idx.ext
  store ptr %add.ptr, ptr %arrayidx61, align 8
  %44 = load i32, ptr %ch, align 4
  %inc63 = add nsw i32 %44, 1
  br label %for.cond36, !llvm.loop !21

for.end64:                                        ; preds = %for.cond36
  %45 = load i32, ptr %n_in, align 4
  %46 = load i32, ptr %nsamples.addr, align 4
  %sub65 = sub nsw i32 %46, %45
  store i32 %sub65, ptr %nsamples.addr, align 4
  %47 = load i32, ptr %n_out, align 4
  %48 = load i32, ptr @mf_size, align 4
  %add66 = add nsw i32 %48, %47
  store i32 %add66, ptr @mf_size, align 4
  %cmp67 = icmp sgt i32 %add66, 3056
  br i1 %cmp67, label %cond.true73, label %cond.end75

cond.true73:                                      ; preds = %for.end64
  call void @__assert_rtn(ptr noundef nonnull @__func__.lame_encode_buffer, ptr noundef nonnull @.str.16, i32 noundef 1040, ptr noundef nonnull @.str.20) #11
  unreachable

cond.end75:                                       ; preds = %for.end64
  %49 = load i32, ptr %n_out, align 4
  %50 = load i32, ptr @mf_samples_to_encode, align 4
  %add76 = add nsw i32 %50, %49
  store i32 %add76, ptr @mf_samples_to_encode, align 4
  %51 = load i32, ptr @mf_size, align 4
  %52 = load i32, ptr %mf_needed, align 4
  %cmp77.not = icmp slt i32 %51, %52
  br i1 %cmp77.not, label %if.end117, label %if.then79

if.then79:                                        ; preds = %cond.end75
  %53 = load ptr, ptr %gfp.addr, align 8
  %54 = load i32, ptr @mf_size, align 4
  %55 = load ptr, ptr %mp3buf.addr, align 8
  %56 = load i32, ptr %mp3buf_size.addr, align 4
  %call80 = call i32 @lame_encode_frame(ptr noundef %53, ptr noundef nonnull @mfbuf, ptr noundef getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 noundef %54, ptr noundef %55, i32 noundef %56)
  store i32 %call80, ptr %ret, align 4
  %cmp81 = icmp eq i32 %call80, -1
  br i1 %cmp81, label %return, label %if.end84

if.end84:                                         ; preds = %if.then79
  %57 = load i32, ptr %ret, align 4
  %58 = load ptr, ptr %mp3buf.addr, align 8
  %idx.ext85 = sext i32 %57 to i64
  %add.ptr86 = getelementptr inbounds i8, ptr %58, i64 %idx.ext85
  store ptr %add.ptr86, ptr %mp3buf.addr, align 8
  %59 = load i32, ptr %mp3size, align 4
  %add87 = add nsw i32 %59, %57
  store i32 %add87, ptr %mp3size, align 4
  %60 = load ptr, ptr %gfp.addr, align 8
  %framesize88 = getelementptr inbounds %struct.lame_global_flags, ptr %60, i64 0, i32 42
  %61 = load i32, ptr %framesize88, align 4
  %62 = load i32, ptr @mf_size, align 4
  %sub89 = sub nsw i32 %62, %61
  store i32 %sub89, ptr @mf_size, align 4
  %63 = load i32, ptr @mf_samples_to_encode, align 4
  %sub91 = sub nsw i32 %63, %61
  store i32 %sub91, ptr @mf_samples_to_encode, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc114, %if.end84
  %storemerge2 = phi i32 [ 0, %if.end84 ], [ %inc115, %for.inc114 ]
  store i32 %storemerge2, ptr %ch, align 4
  %64 = load ptr, ptr %gfp.addr, align 8
  %stereo93 = getelementptr inbounds %struct.lame_global_flags, ptr %64, i64 0, i32 46
  %65 = load i32, ptr %stereo93, align 4
  %cmp94 = icmp slt i32 %storemerge2, %65
  br i1 %cmp94, label %for.cond97, label %if.end117

for.cond97:                                       ; preds = %for.cond92, %for.body100
  %storemerge3 = phi i32 [ %inc112, %for.body100 ], [ 0, %for.cond92 ]
  store i32 %storemerge3, ptr %i, align 4
  %66 = load i32, ptr @mf_size, align 4
  %cmp98 = icmp slt i32 %storemerge3, %66
  br i1 %cmp98, label %for.body100, label %for.inc114

for.body100:                                      ; preds = %for.cond97
  %67 = load i32, ptr %ch, align 4
  %idxprom101 = sext i32 %67 to i64
  %68 = load i32, ptr %i, align 4
  %69 = load ptr, ptr %gfp.addr, align 8
  %framesize103 = getelementptr inbounds %struct.lame_global_flags, ptr %69, i64 0, i32 42
  %70 = load i32, ptr %framesize103, align 4
  %add104 = add nsw i32 %68, %70
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom101, i64 %idxprom105
  %71 = load i16, ptr %arrayidx106, align 2
  %72 = load i32, ptr %ch, align 4
  %idxprom107 = sext i32 %72 to i64
  %73 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %73 to i64
  %arrayidx110 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom107, i64 %idxprom109
  store i16 %71, ptr %arrayidx110, align 2
  %74 = load i32, ptr %i, align 4
  %inc112 = add nsw i32 %74, 1
  br label %for.cond97, !llvm.loop !22

for.inc114:                                       ; preds = %for.cond97
  %75 = load i32, ptr %ch, align 4
  %inc115 = add nsw i32 %75, 1
  br label %for.cond92, !llvm.loop !23

if.end117:                                        ; preds = %for.cond92, %cond.end75
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %76 = load i32, ptr %nsamples.addr, align 4
  %cmp118.not = icmp eq i32 %76, 0
  br i1 %cmp118.not, label %cond.end126, label %cond.true124

cond.true124:                                     ; preds = %while.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.lame_encode_buffer, ptr noundef nonnull @.str.16, i32 noundef 1061, ptr noundef nonnull @.str.21) #11
  unreachable

cond.end126:                                      ; preds = %while.end
  %77 = load i32, ptr %mp3size, align 4
  br label %return

return:                                           ; preds = %if.then79, %cond.end126
  %storemerge = phi i32 [ %77, %cond.end126 ], [ -1, %if.then79 ]
  ret i32 %storemerge
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
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 42
  %0 = load i32, ptr %framesize, align 4
  %sub = add nsw i32 %0, 752
  store i32 %sub, ptr %mf_needed, align 4
  %cmp = icmp sgt i32 %0, 2304
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.lame_encode_buffer_interleaved, ptr noundef nonnull @.str.16, i32 noundef 1078, ptr noundef nonnull @.str.19) #11
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load ptr, ptr %gfp.addr, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %num_channels, align 8
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr %gfp.addr, align 8
  %4 = load ptr, ptr %buffer.addr, align 8
  %5 = load i32, ptr %nsamples.addr, align 4
  %6 = load ptr, ptr %mp3buf.addr, align 8
  %7 = load i32, ptr %mp3buf_size.addr, align 4
  %call = call i32 @lame_encode_buffer(ptr noundef %3, ptr noundef %4, ptr noundef null, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %8 = load ptr, ptr %gfp.addr, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 49
  %9 = load float, ptr %resample_ratio, align 8
  %cmp3 = fcmp une float %9, 1.000000e+00
  br i1 %cmp3, label %if.then5, label %if.end29

if.then5:                                         ; preds = %if.end
  %10 = load i32, ptr %nsamples.addr, align 4
  %conv6 = sext i32 %10 to i64
  %mul = shl nsw i64 %conv6, 1
  %call7 = call ptr @malloc(i64 noundef %mul) #12
  store ptr %call7, ptr %buffer_l, align 8
  %conv8 = sext i32 %10 to i64
  %mul9 = shl nsw i64 %conv8, 1
  %call10 = call ptr @malloc(i64 noundef %mul9) #12
  store ptr %call10, ptr %buffer_r, align 8
  %cmp11 = icmp eq ptr %call7, null
  %11 = load ptr, ptr %buffer_r, align 8
  %cmp13 = icmp eq ptr %11, null
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then15, label %for.cond

if.then15:                                        ; preds = %if.then5
  store i32 -1, ptr %retval, align 4
  br label %return

for.cond:                                         ; preds = %if.then5, %for.body
  %storemerge4 = phi i32 [ %inc, %for.body ], [ 0, %if.then5 ]
  store i32 %storemerge4, ptr %i, align 4
  %12 = load i32, ptr %nsamples.addr, align 4
  %cmp17 = icmp slt i32 %storemerge4, %12
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %buffer.addr, align 8
  %14 = load i32, ptr %i, align 4
  %mul19 = shl nsw i32 %14, 1
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds i16, ptr %13, i64 %idxprom
  %15 = load i16, ptr %arrayidx, align 2
  %16 = load ptr, ptr %buffer_l, align 8
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds i16, ptr %16, i64 %idxprom20
  store i16 %15, ptr %arrayidx21, align 2
  %17 = load ptr, ptr %buffer.addr, align 8
  %18 = load i32, ptr %i, align 4
  %mul22 = shl nsw i32 %18, 1
  %add23 = or i32 %mul22, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i16, ptr %17, i64 %idxprom24
  %19 = load i16, ptr %arrayidx25, align 2
  %20 = load ptr, ptr %buffer_r, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %20, i64 %idxprom26
  store i16 %19, ptr %arrayidx27, align 2
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %gfp.addr, align 8
  %24 = load ptr, ptr %buffer_l, align 8
  %25 = load ptr, ptr %buffer_r, align 8
  %26 = load i32, ptr %nsamples.addr, align 4
  %27 = load ptr, ptr %mp3buf.addr, align 8
  %28 = load i32, ptr %mp3buf_size.addr, align 4
  %call28 = call i32 @lame_encode_buffer(ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28)
  store i32 %call28, ptr %ret, align 4
  %29 = load ptr, ptr %buffer_l, align 8
  call void @free(ptr noundef %29) #9
  %30 = load ptr, ptr %buffer_r, align 8
  call void @free(ptr noundef %30) #9
  store i32 %call28, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end
  %31 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %31, i64 0, i32 39
  %32 = load i64, ptr %frameNum, align 8
  %cmp30 = icmp eq i64 %32, 0
  %33 = load i32, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  %tobool32.not = icmp eq i32 %33, 0
  %or.cond5 = select i1 %cmp30, i1 %tobool32.not, i1 false
  br i1 %or.cond5, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12224) @mfbuf, i8 0, i64 12224, i1 false)
  store i32 1, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4
  store i32 752, ptr @mf_size, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29
  %34 = load ptr, ptr %gfp.addr, align 8
  %frameNum35 = getelementptr inbounds %struct.lame_global_flags, ptr %34, i64 0, i32 39
  %35 = load i64, ptr %frameNum35, align 8
  %cmp36 = icmp eq i64 %35, 1
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  store i32 0, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34
  %36 = load ptr, ptr %gfp.addr, align 8
  %num_channels40 = getelementptr inbounds %struct.lame_global_flags, ptr %36, i64 0, i32 1
  %37 = load i32, ptr %num_channels40, align 8
  %cmp41 = icmp eq i32 %37, 2
  br i1 %cmp41, label %land.lhs.true43, label %if.end72

land.lhs.true43:                                  ; preds = %if.end39
  %38 = load ptr, ptr %gfp.addr, align 8
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %38, i64 0, i32 46
  %39 = load i32, ptr %stereo, align 4
  %cmp44 = icmp eq i32 %39, 1
  br i1 %cmp44, label %for.cond47, label %if.end72

for.cond47:                                       ; preds = %land.lhs.true43, %for.body50
  %storemerge3 = phi i32 [ %inc70, %for.body50 ], [ 0, %land.lhs.true43 ]
  store i32 %storemerge3, ptr %i, align 4
  %40 = load i32, ptr %nsamples.addr, align 4
  %cmp48 = icmp slt i32 %storemerge3, %40
  br i1 %cmp48, label %for.body50, label %if.end72

for.body50:                                       ; preds = %for.cond47
  %41 = load ptr, ptr %buffer.addr, align 8
  %42 = load i32, ptr %i, align 4
  %mul51 = shl nsw i32 %42, 1
  %idxprom52 = sext i32 %mul51 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %41, i64 %idxprom52
  %43 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %43 to i32
  %44 = load ptr, ptr %buffer.addr, align 8
  %45 = load i32, ptr %i, align 4
  %mul55 = shl nsw i32 %45, 1
  %add56 = or i32 %mul55, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %44, i64 %idxprom57
  %46 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %46 to i32
  %add60 = add nsw i32 %conv54, %conv59
  %div = sdiv i32 %add60, 2
  %conv61 = trunc i32 %div to i16
  %47 = load ptr, ptr %buffer.addr, align 8
  %48 = load i32, ptr %i, align 4
  %mul62 = shl nsw i32 %48, 1
  %idxprom63 = sext i32 %mul62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %47, i64 %idxprom63
  store i16 %conv61, ptr %arrayidx64, align 2
  %mul65 = shl nsw i32 %48, 1
  %add66 = or i32 %mul65, 1
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %47, i64 %idxprom67
  store i16 0, ptr %arrayidx68, align 2
  %49 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %49, 1
  br label %for.cond47, !llvm.loop !26

if.end72:                                         ; preds = %for.cond47, %land.lhs.true43, %if.end39
  br label %while.cond

while.cond:                                       ; preds = %if.end155, %if.end72
  %50 = load i32, ptr %nsamples.addr, align 4
  %cmp73 = icmp sgt i32 %50, 0
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load ptr, ptr %gfp.addr, align 8
  %framesize75 = getelementptr inbounds %struct.lame_global_flags, ptr %51, i64 0, i32 42
  %52 = load i32, ptr %framesize75, align 4
  %53 = load i32, ptr %nsamples.addr, align 4
  %cmp76 = icmp slt i32 %52, %53
  br i1 %cmp76, label %cond.true78, label %cond.false80

cond.true78:                                      ; preds = %while.body
  %54 = load ptr, ptr %gfp.addr, align 8
  %framesize79 = getelementptr inbounds %struct.lame_global_flags, ptr %54, i64 0, i32 42
  %55 = load i32, ptr %framesize79, align 4
  br label %cond.end81

cond.false80:                                     ; preds = %while.body
  %56 = load i32, ptr %nsamples.addr, align 4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true78
  %cond = phi i32 [ %55, %cond.true78 ], [ %56, %cond.false80 ]
  store i32 %cond, ptr %n_out, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.body85, %cond.end81
  %storemerge = phi i32 [ 0, %cond.end81 ], [ %inc100, %for.body85 ]
  store i32 %storemerge, ptr %i, align 4
  %57 = load i32, ptr %n_out, align 4
  %cmp83 = icmp slt i32 %storemerge, %57
  br i1 %cmp83, label %for.body85, label %for.end101

for.body85:                                       ; preds = %for.cond82
  %58 = load ptr, ptr %buffer.addr, align 8
  %59 = load i32, ptr %i, align 4
  %mul86 = shl nsw i32 %59, 1
  %idxprom87 = sext i32 %mul86 to i64
  %arrayidx88 = getelementptr inbounds i16, ptr %58, i64 %idxprom87
  %60 = load i16, ptr %arrayidx88, align 2
  %61 = load i32, ptr @mf_size, align 4
  %add89 = add nsw i32 %61, %59
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [3056 x i16], ptr @mfbuf, i64 0, i64 %idxprom90
  store i16 %60, ptr %arrayidx91, align 2
  %62 = load ptr, ptr %buffer.addr, align 8
  %63 = load i32, ptr %i, align 4
  %mul92 = shl nsw i32 %63, 1
  %add93 = or i32 %mul92, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i16, ptr %62, i64 %idxprom94
  %64 = load i16, ptr %arrayidx95, align 2
  %65 = load i32, ptr @mf_size, align 4
  %66 = load i32, ptr %i, align 4
  %add96 = add nsw i32 %65, %66
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1, i64 %idxprom97
  store i16 %64, ptr %arrayidx98, align 2
  %67 = load i32, ptr %i, align 4
  %inc100 = add nsw i32 %67, 1
  br label %for.cond82, !llvm.loop !27

for.end101:                                       ; preds = %for.cond82
  %68 = load i32, ptr %n_out, align 4
  %mul102 = shl nsw i32 %68, 1
  %69 = load ptr, ptr %buffer.addr, align 8
  %idx.ext = sext i32 %mul102 to i64
  %add.ptr = getelementptr inbounds i16, ptr %69, i64 %idx.ext
  store ptr %add.ptr, ptr %buffer.addr, align 8
  %70 = load i32, ptr %nsamples.addr, align 4
  %sub103 = sub nsw i32 %70, %68
  store i32 %sub103, ptr %nsamples.addr, align 4
  %71 = load i32, ptr %n_out, align 4
  %72 = load i32, ptr @mf_size, align 4
  %add104 = add nsw i32 %72, %71
  store i32 %add104, ptr @mf_size, align 4
  %cmp105 = icmp sgt i32 %add104, 3056
  br i1 %cmp105, label %cond.true111, label %cond.end113

cond.true111:                                     ; preds = %for.end101
  call void @__assert_rtn(ptr noundef nonnull @__func__.lame_encode_buffer_interleaved, ptr noundef nonnull @.str.16, i32 noundef 1135, ptr noundef nonnull @.str.20) #11
  unreachable

cond.end113:                                      ; preds = %for.end101
  %73 = load i32, ptr %n_out, align 4
  %74 = load i32, ptr @mf_samples_to_encode, align 4
  %add114 = add nsw i32 %74, %73
  store i32 %add114, ptr @mf_samples_to_encode, align 4
  %75 = load i32, ptr @mf_size, align 4
  %76 = load i32, ptr %mf_needed, align 4
  %cmp115.not = icmp slt i32 %75, %76
  br i1 %cmp115.not, label %if.end155, label %if.then117

if.then117:                                       ; preds = %cond.end113
  %77 = load ptr, ptr %gfp.addr, align 8
  %78 = load i32, ptr @mf_size, align 4
  %79 = load ptr, ptr %mp3buf.addr, align 8
  %80 = load i32, ptr %mp3buf_size.addr, align 4
  %call118 = call i32 @lame_encode_frame(ptr noundef %77, ptr noundef nonnull @mfbuf, ptr noundef getelementptr inbounds ([2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 1), i32 noundef %78, ptr noundef %79, i32 noundef %80)
  store i32 %call118, ptr %ret, align 4
  %cmp119 = icmp eq i32 %call118, -1
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.then117
  store i32 -1, ptr %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.then117
  %81 = load i32, ptr %ret, align 4
  %82 = load ptr, ptr %mp3buf.addr, align 8
  %idx.ext123 = sext i32 %81 to i64
  %add.ptr124 = getelementptr inbounds i8, ptr %82, i64 %idx.ext123
  store ptr %add.ptr124, ptr %mp3buf.addr, align 8
  %83 = load i32, ptr %mp3size, align 4
  %add125 = add nsw i32 %83, %81
  store i32 %add125, ptr %mp3size, align 4
  %84 = load ptr, ptr %gfp.addr, align 8
  %framesize126 = getelementptr inbounds %struct.lame_global_flags, ptr %84, i64 0, i32 42
  %85 = load i32, ptr %framesize126, align 4
  %86 = load i32, ptr @mf_size, align 4
  %sub127 = sub nsw i32 %86, %85
  store i32 %sub127, ptr @mf_size, align 4
  %87 = load i32, ptr @mf_samples_to_encode, align 4
  %sub129 = sub nsw i32 %87, %85
  store i32 %sub129, ptr @mf_samples_to_encode, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc152, %if.end122
  %storemerge1 = phi i32 [ 0, %if.end122 ], [ %inc153, %for.inc152 ]
  store i32 %storemerge1, ptr %ch, align 4
  %88 = load ptr, ptr %gfp.addr, align 8
  %stereo131 = getelementptr inbounds %struct.lame_global_flags, ptr %88, i64 0, i32 46
  %89 = load i32, ptr %stereo131, align 4
  %cmp132 = icmp slt i32 %storemerge1, %89
  br i1 %cmp132, label %for.cond135, label %if.end155

for.cond135:                                      ; preds = %for.cond130, %for.body138
  %storemerge2 = phi i32 [ %inc150, %for.body138 ], [ 0, %for.cond130 ]
  store i32 %storemerge2, ptr %i, align 4
  %90 = load i32, ptr @mf_size, align 4
  %cmp136 = icmp slt i32 %storemerge2, %90
  br i1 %cmp136, label %for.body138, label %for.inc152

for.body138:                                      ; preds = %for.cond135
  %91 = load i32, ptr %ch, align 4
  %idxprom139 = sext i32 %91 to i64
  %92 = load i32, ptr %i, align 4
  %93 = load ptr, ptr %gfp.addr, align 8
  %framesize141 = getelementptr inbounds %struct.lame_global_flags, ptr %93, i64 0, i32 42
  %94 = load i32, ptr %framesize141, align 4
  %add142 = add nsw i32 %92, %94
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom139, i64 %idxprom143
  %95 = load i16, ptr %arrayidx144, align 2
  %96 = load i32, ptr %ch, align 4
  %idxprom145 = sext i32 %96 to i64
  %97 = load i32, ptr %i, align 4
  %idxprom147 = sext i32 %97 to i64
  %arrayidx148 = getelementptr inbounds [2 x [3056 x i16]], ptr @mfbuf, i64 0, i64 %idxprom145, i64 %idxprom147
  store i16 %95, ptr %arrayidx148, align 2
  %98 = load i32, ptr %i, align 4
  %inc150 = add nsw i32 %98, 1
  br label %for.cond135, !llvm.loop !28

for.inc152:                                       ; preds = %for.cond135
  %99 = load i32, ptr %ch, align 4
  %inc153 = add nsw i32 %99, 1
  br label %for.cond130, !llvm.loop !29

if.end155:                                        ; preds = %for.cond130, %cond.end113
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %100 = load i32, ptr %nsamples.addr, align 4
  %cmp156.not = icmp eq i32 %100, 0
  br i1 %cmp156.not, label %cond.end164, label %cond.true162

cond.true162:                                     ; preds = %while.end
  call void @__assert_rtn(ptr noundef nonnull @__func__.lame_encode_buffer_interleaved, ptr noundef nonnull @.str.16, i32 noundef 1156, ptr noundef nonnull @.str.21) #11
  unreachable

cond.end164:                                      ; preds = %while.end
  %101 = load i32, ptr %mp3size, align 4
  store i32 %101, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end164, %if.then121, %for.end, %if.then15, %if.then
  %102 = load i32, ptr %retval, align 4
  ret i32 %102
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #7

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @lame_encode(ptr noundef %gfp, ptr noundef %in_buffer, ptr noundef %mp3buf, i32 noundef %size) #0 {
entry:
  %mp3buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %save = alloca i32, align 4
  store ptr %mp3buf, ptr %mp3buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr @mf_samples_to_encode, align 4
  store i32 %0, ptr %save, align 4
  %arrayidx1 = getelementptr inbounds [1152 x i16], ptr %in_buffer, i64 1
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %1 = load i32, ptr %mode_gr, align 8
  %mul = mul nsw i32 %1, 576
  %2 = load ptr, ptr %mp3buf.addr, align 8
  %3 = load i32, ptr %size.addr, align 4
  %call = call i32 @lame_encode_buffer(ptr noundef %gfp, ptr noundef %in_buffer, ptr noundef nonnull %arrayidx1, i32 noundef %mul, ptr noundef %2, i32 noundef %3)
  %4 = load i32, ptr %save, align 4
  store i32 %4, ptr @mf_samples_to_encode, align 4
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define void @lame_init(ptr noundef %gfp) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 36
  store i32 0, ptr %allow_diff_short, align 4
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 33
  store i32 0, ptr %ATHonly, align 8
  %noATH = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 34
  store i32 0, ptr %noATH, align 4
  %0 = load ptr, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 5
  store i32 1, ptr %bWriteVbrTag, align 8
  %cwlimit = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 35
  store float 0.000000e+00, ptr %cwlimit, align 8
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 17
  store i32 0, ptr %disable_reservoir, align 8
  %1 = load ptr, ptr %gfp.addr, align 8
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 18
  store i32 0, ptr %experimentalX, align 4
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 19
  store i32 0, ptr %experimentalY, align 8
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 20
  store i32 0, ptr %experimentalZ, align 4
  %2 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 39
  store i64 0, ptr %frameNum, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 4
  store i32 0, ptr %gtkflag, align 4
  %quality = getelementptr inbounds %struct.lame_global_flags, ptr %2, i64 0, i32 6
  store i32 5, ptr %quality, align 4
  %3 = load ptr, ptr %gfp.addr, align 8
  %input_format = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 29
  store i32 0, ptr %input_format, align 8
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 59
  store i32 0, ptr %filter_type, align 8
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %3, i64 0, i32 25
  store i32 0, ptr %lowpassfreq, align 8
  %4 = load ptr, ptr %gfp.addr, align 8
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, ptr %4, i64 0, i32 26
  store i32 0, ptr %highpassfreq, align 4
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %4, i64 0, i32 27
  store i32 -1, ptr %lowpasswidth, align 8
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, ptr %4, i64 0, i32 28
  store i32 -1, ptr %highpasswidth, align 4
  %5 = load ptr, ptr %gfp.addr, align 8
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 53
  store float 0.000000e+00, ptr %lowpass1, align 8
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 54
  store float 0.000000e+00, ptr %lowpass2, align 4
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %5, i64 0, i32 55
  store float 0.000000e+00, ptr %highpass1, align 8
  %6 = load ptr, ptr %gfp.addr, align 8
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 56
  store float 0.000000e+00, ptr %highpass2, align 4
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 57
  store i32 32, ptr %lowpass_band, align 8
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %6, i64 0, i32 58
  store i32 -1, ptr %highpass_band, align 4
  %7 = load ptr, ptr %gfp.addr, align 8
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 37
  store i32 0, ptr %no_short_blocks, align 8
  %resample_ratio = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 49
  store float 1.000000e+00, ptr %resample_ratio, align 8
  %padding_type = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 15
  store i32 2, ptr %padding_type, align 8
  %8 = load ptr, ptr %gfp.addr, align 8
  %padding = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 44
  store i32 0, ptr %padding, align 4
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 30
  store i32 0, ptr %swapbytes, align 4
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 7
  store i32 0, ptr %silent, align 8
  %9 = load ptr, ptr %gfp.addr, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %9, i64 0, i32 40
  store i64 0, ptr %totalframes, align 8
  %VBR = getelementptr inbounds %struct.lame_global_flags, ptr %9, i64 0, i32 21
  store i32 0, ptr %VBR, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %9, i64 0, i32 22
  store i32 4, ptr %VBR_q, align 4
  %10 = load ptr, ptr %gfp.addr, align 8
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 23
  store i32 0, ptr %VBR_min_bitrate_kbps, align 8
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 24
  store i32 0, ptr %VBR_max_bitrate_kbps, align 4
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %10, i64 0, i32 47
  store i32 1, ptr %VBR_min_bitrate, align 8
  %11 = load ptr, ptr %gfp.addr, align 8
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 48
  store i32 13, ptr %VBR_max_bitrate, align 4
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 43
  store i32 1, ptr %version, align 8
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 8
  store i32 1, ptr %mode, align 4
  %12 = load ptr, ptr %gfp.addr, align 8
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, ptr %12, i64 0, i32 9
  store i32 0, ptr %mode_fixed, align 8
  %force_ms = getelementptr inbounds %struct.lame_global_flags, ptr %12, i64 0, i32 10
  store i32 0, ptr %force_ms, align 4
  %brate = getelementptr inbounds %struct.lame_global_flags, ptr %12, i64 0, i32 11
  store i32 0, ptr %brate, align 8
  %13 = load ptr, ptr %gfp.addr, align 8
  %copyright = getelementptr inbounds %struct.lame_global_flags, ptr %13, i64 0, i32 12
  store i32 0, ptr %copyright, align 4
  %original = getelementptr inbounds %struct.lame_global_flags, ptr %13, i64 0, i32 13
  store i32 1, ptr %original, align 8
  %extension = getelementptr inbounds %struct.lame_global_flags, ptr %13, i64 0, i32 16
  store i32 0, ptr %extension, align 4
  %14 = load ptr, ptr %gfp.addr, align 8
  %error_protection = getelementptr inbounds %struct.lame_global_flags, ptr %14, i64 0, i32 14
  store i32 0, ptr %error_protection, align 4
  %emphasis = getelementptr inbounds %struct.lame_global_flags, ptr %14, i64 0, i32 38
  store i32 0, ptr %emphasis, align 4
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %14, i64 0, i32 2
  store i32 44100, ptr %in_samplerate, align 4
  %15 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %15, i64 0, i32 3
  store i32 0, ptr %out_samplerate, align 8
  %num_channels = getelementptr inbounds %struct.lame_global_flags, ptr %15, i64 0, i32 1
  store i32 2, ptr %num_channels, align 8
  store i64 4294967295, ptr %15, align 8
  %inPath = getelementptr inbounds %struct.lame_global_flags, ptr %15, i64 0, i32 31
  store ptr null, ptr %inPath, align 8
  %16 = load ptr, ptr %gfp.addr, align 8
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 32
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
  %buffer = alloca [2 x [1152 x i16]], align 2
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %mp3buffer, ptr %mp3buffer.addr, align 8
  store i32 %mp3buffer_size, ptr %mp3buffer_size.addr, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(4608) %buffer, i8 0, i64 4608, i1 false)
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
  %cmp1 = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp1, i32 0, i32 %sub
  %3 = load ptr, ptr %gfp.addr, align 8
  %4 = load ptr, ptr %mp3buffer.addr, align 8
  %call = call i32 @lame_encode(ptr noundef %3, ptr noundef nonnull %buffer, ptr noundef %4, i32 noundef %spec.select)
  store i32 %call, ptr %imp3, align 4
  %cmp3 = icmp eq i32 %call, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.body
  call void @desalloc_buffer(ptr noundef nonnull @bs) #9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %while.body
  %5 = load i32, ptr %imp3, align 4
  %6 = load ptr, ptr %mp3buffer.addr, align 8
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %mp3buffer.addr, align 8
  %7 = load i32, ptr %mp3count, align 4
  %add = add nsw i32 %7, %5
  store i32 %add, ptr %mp3count, align 4
  %8 = load ptr, ptr %gfp.addr, align 8
  %framesize = getelementptr inbounds %struct.lame_global_flags, ptr %8, i64 0, i32 42
  %9 = load i32, ptr %framesize, align 4
  %10 = load i32, ptr @mf_samples_to_encode, align 4
  %sub6 = sub nsw i32 %10, %9
  store i32 %sub6, ptr @mf_samples_to_encode, align 4
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %gfp.addr, align 8
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 39
  %12 = load i64, ptr %frameNum, align 8
  %dec = add nsw i64 %12, -1
  store i64 %dec, ptr %frameNum, align 8
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %gtkflag, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.end
  %14 = load ptr, ptr %gfp.addr, align 8
  %silent = getelementptr inbounds %struct.lame_global_flags, ptr %14, i64 0, i32 7
  %15 = load i32, ptr %silent, align 8
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.then8, label %if.end13

if.then8:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %gfp.addr, align 8
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 3
  %17 = load i32, ptr %out_samplerate, align 8
  %frameNum9 = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 39
  %18 = load i64, ptr %frameNum9, align 8
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %16, i64 0, i32 40
  %19 = load i64, ptr %totalframes, align 8
  %20 = load ptr, ptr %gfp.addr, align 8
  %framesize10 = getelementptr inbounds %struct.lame_global_flags, ptr %20, i64 0, i32 42
  %21 = load i32, ptr %framesize10, align 4
  call void @timestatus(i32 noundef %17, i64 noundef %18, i64 noundef %19, i32 noundef %21) #9
  %22 = load ptr, ptr @__stderrp, align 8
  %fputc = call i32 @fputc(i32 10, ptr %22)
  %23 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 @fflush(ptr noundef %23) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %land.lhs.true, %while.end
  call void @III_FlushBitstream() #9
  %24 = load i32, ptr %mp3buffer_size.addr, align 4
  %25 = load i32, ptr %mp3count, align 4
  %sub14 = sub nsw i32 %24, %25
  %cmp15 = icmp eq i32 %24, 0
  %spec.select2 = select i1 %cmp15, i32 0, i32 %sub14
  %26 = load ptr, ptr %mp3buffer.addr, align 8
  %call18 = call i32 @copy_buffer(ptr noundef %26, i32 noundef %spec.select2, ptr noundef nonnull @bs) #9
  store i32 %call18, ptr %imp3, align 4
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end13
  call void @desalloc_buffer(ptr noundef nonnull @bs) #9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end13
  %27 = load i32, ptr %imp3, align 4
  %28 = load i32, ptr %mp3count, align 4
  %add22 = add nsw i32 %28, %27
  store i32 %add22, ptr %mp3count, align 4
  call void @desalloc_buffer(ptr noundef nonnull @bs) #9
  store i32 %add22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then4
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

declare void @desalloc_buffer(ptr noundef) #2

declare void @III_FlushBitstream() #2

; Function Attrs: nounwind ssp uwtable
define void @lame_mp3_tags(ptr noundef %gfp) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 5
  %0 = load i32, ptr %bWriteVbrTag, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %gfp.addr, align 8
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 22
  %2 = load i32, ptr %VBR_q, align 4
  %mul = mul nsw i32 %2, 100
  %div = sdiv i32 %mul, 9
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %1, i64 0, i32 32
  %3 = load ptr, ptr %outPath, align 8
  %4 = load ptr, ptr %gfp.addr, align 8
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %4, i64 0, i32 43
  %5 = load i32, ptr %version, align 8
  %sub = sub nsw i32 1, %5
  %call = call i32 @PutVbrTag(ptr noundef %3, i32 noundef %div, i32 noundef %sub) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr @id3tag, align 4
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @id3_buildtag(ptr noundef nonnull @id3tag) #9
  %7 = load ptr, ptr %gfp.addr, align 8
  %outPath3 = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 32
  %8 = load ptr, ptr %outPath3, align 8
  %call4 = call i32 @id3_writetag(ptr noundef %8, ptr noundef nonnull @id3tag) #9
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
  %call = call ptr @get_lame_version() #9
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %ostring, i1 false, i1 true, i1 false)
  %call1 = call ptr @__strncpy_chk(ptr noundef %ostring, ptr noundef %call, i64 noundef 20, i64 noundef %0) #9
  ret void
}

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

declare ptr @get_lame_version() #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) #8

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }

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
