; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_constant_argument/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jcphuff.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcphuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phuff_entropy_encoder = type { %struct.jpeg_entropy_encoder, i32, ptr, i64, i64, i32, ptr, [4 x i32], i32, i32, i32, ptr, i32, i32, [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_phuff_encoder(ptr noundef %cinfo) #0 {
entry:
  %entropy = alloca ptr, align 8
  %i = alloca i32, align 4
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 184) #5
  store ptr %call, ptr %entropy, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  store ptr %call, ptr %entropy1, align 8
  store ptr @start_pass_phuff, ptr %call, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %entropy, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %2, i64 0, i32 14, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %2, i64 0, i32 15, i64 %idxprom2
  store ptr null, ptr %arrayidx3, align 8
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 11
  store ptr null, ptr %bit_buffer, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_phuff(ptr noundef %cinfo, i32 noundef %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca ptr, align 8
  %is_DC_band = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %gather_statistics, ptr %gather_statistics.addr, align 4
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  store ptr %cinfo, ptr %cinfo2, align 8
  %gather_statistics3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  store i32 %gather_statistics, ptr %gather_statistics3, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 47
  %2 = load i32, ptr %Ss, align 4
  %cmp = icmp eq i32 %2, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %is_DC_band, align 4
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 49
  %3 = load i32, ptr %Ah, align 4
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %is_DC_band, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %5 = load ptr, ptr %entropy, align 8
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %5, i64 0, i32 1
  store ptr @encode_mcu_DC_first, ptr %encode_mcu, align 8
  br label %if.end23

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %entropy, align 8
  %encode_mcu8 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %6, i64 0, i32 1
  store ptr @encode_mcu_AC_first, ptr %encode_mcu8, align 8
  br label %if.end23

if.else9:                                         ; preds = %entry
  %7 = load i32, ptr %is_DC_band, align 4
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.else14, label %if.then11

if.then11:                                        ; preds = %if.else9
  %8 = load ptr, ptr %entropy, align 8
  %encode_mcu13 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %8, i64 0, i32 1
  store ptr @encode_mcu_DC_refine, ptr %encode_mcu13, align 8
  br label %if.end23

if.else14:                                        ; preds = %if.else9
  %9 = load ptr, ptr %entropy, align 8
  %encode_mcu16 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %9, i64 0, i32 1
  store ptr @encode_mcu_AC_refine, ptr %encode_mcu16, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %9, i64 0, i32 11
  %10 = load ptr, ptr %bit_buffer, align 8
  %cmp17 = icmp eq ptr %10, null
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.else14
  %11 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %mem, align 8
  %13 = load ptr, ptr %12, align 8
  %call = call ptr %13(ptr noundef %11, i32 noundef 1, i64 noundef 1000) #5
  %14 = load ptr, ptr %entropy, align 8
  %bit_buffer20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i64 0, i32 11
  store ptr %call, ptr %bit_buffer20, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.then19, %if.else14, %if.then6, %if.else
  %15 = load i32, ptr %gather_statistics.addr, align 4
  %tobool24.not = icmp eq i32 %15, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.end23
  %16 = load ptr, ptr %entropy, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %16, i64 0, i32 2
  store ptr @finish_pass_gather_phuff, ptr %finish_pass, align 8
  br label %if.end30

if.else27:                                        ; preds = %if.end23
  %17 = load ptr, ptr %entropy, align 8
  %finish_pass29 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %17, i64 0, i32 2
  store ptr @finish_pass_phuff, ptr %finish_pass29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %storemerge = phi i32 [ 0, %if.end30 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i64 0, i32 41
  %19 = load i32, ptr %comps_in_scan, align 4
  %cmp31 = icmp slt i32 %storemerge, %19
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 42, i64 %idxprom
  %22 = load ptr, ptr %arrayidx, align 8
  store ptr %22, ptr %compptr, align 8
  %23 = load ptr, ptr %entropy, align 8
  %idxprom33 = sext i32 %21 to i64
  %arrayidx34 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %23, i64 0, i32 7, i64 %idxprom33
  store i32 0, ptr %arrayidx34, align 4
  %24 = load i32, ptr %is_DC_band, align 4
  %tobool35.not = icmp eq i32 %24, 0
  br i1 %tobool35.not, label %if.else57, label %if.then36

if.then36:                                        ; preds = %for.body
  %25 = load ptr, ptr %cinfo.addr, align 8
  %Ah37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i64 0, i32 49
  %26 = load i32, ptr %Ah37, align 4
  %cmp38.not = icmp eq i32 %26, 0
  br i1 %cmp38.not, label %if.end41, label %for.inc

if.end41:                                         ; preds = %if.then36
  %27 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i64 0, i32 5
  %28 = load i32, ptr %dc_tbl_no, align 4
  store i32 %28, ptr %tbl, align 4
  %cmp42 = icmp slt i32 %28, 0
  %29 = load i32, ptr %tbl, align 4
  %cmp44 = icmp sgt i32 %29, 3
  %or.cond = select i1 %cmp42, i1 true, i1 %cmp44
  br i1 %or.cond, label %if.then52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end41
  %30 = load ptr, ptr %cinfo.addr, align 8
  %31 = load i32, ptr %tbl, align 4
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i64 0, i32 16, i64 %idxprom47
  %32 = load ptr, ptr %arrayidx48, align 8
  %cmp49 = icmp eq ptr %32, null
  %33 = load i32, ptr %gather_statistics.addr, align 4
  %tobool51.not = icmp eq i32 %33, 0
  %or.cond1 = select i1 %cmp49, i1 %tobool51.not, i1 false
  br i1 %or.cond1, label %if.then52, label %if.end80

if.then52:                                        ; preds = %lor.lhs.false46, %if.end41
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load ptr, ptr %34, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 49, ptr %msg_code, align 8
  %36 = load i32, ptr %tbl, align 4
  %37 = load ptr, ptr %34, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 6
  store i32 %36, ptr %msg_parm, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr noundef nonnull %38) #5
  br label %if.end80

if.else57:                                        ; preds = %for.body
  %41 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %41, i64 0, i32 6
  %42 = load i32, ptr %ac_tbl_no, align 8
  store i32 %42, ptr %tbl, align 4
  %43 = load ptr, ptr %entropy, align 8
  %ac_tbl_no58 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %43, i64 0, i32 8
  store i32 %42, ptr %ac_tbl_no58, align 8
  %cmp59 = icmp slt i32 %42, 0
  %44 = load i32, ptr %tbl, align 4
  %cmp62 = icmp sgt i32 %44, 3
  %or.cond2 = select i1 %cmp59, i1 true, i1 %cmp62
  br i1 %or.cond2, label %if.then71, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.else57
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load i32, ptr %tbl, align 4
  %idxprom65 = sext i32 %46 to i64
  %arrayidx66 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i64 0, i32 17, i64 %idxprom65
  %47 = load ptr, ptr %arrayidx66, align 8
  %cmp67 = icmp eq ptr %47, null
  %48 = load i32, ptr %gather_statistics.addr, align 4
  %tobool70.not = icmp eq i32 %48, 0
  %or.cond3 = select i1 %cmp67, i1 %tobool70.not, i1 false
  br i1 %or.cond3, label %if.then71, label %if.end80

if.then71:                                        ; preds = %lor.lhs.false64, %if.else57
  %49 = load ptr, ptr %cinfo.addr, align 8
  %50 = load ptr, ptr %49, align 8
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 5
  store i32 49, ptr %msg_code73, align 8
  %51 = load i32, ptr %tbl, align 4
  %52 = load ptr, ptr %49, align 8
  %msg_parm75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6
  store i32 %51, ptr %msg_parm75, align 4
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %54, align 8
  call void %55(ptr noundef nonnull %53) #5
  br label %if.end80

if.end80:                                         ; preds = %lor.lhs.false64, %if.then71, %lor.lhs.false46, %if.then52
  %56 = load i32, ptr %gather_statistics.addr, align 4
  %tobool81.not = icmp eq i32 %56, 0
  br i1 %tobool81.not, label %if.else102, label %if.then82

if.then82:                                        ; preds = %if.end80
  %57 = load ptr, ptr %entropy, align 8
  %58 = load i32, ptr %tbl, align 4
  %idxprom83 = sext i32 %58 to i64
  %arrayidx84 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %57, i64 0, i32 15, i64 %idxprom83
  %59 = load ptr, ptr %arrayidx84, align 8
  %cmp85 = icmp eq ptr %59, null
  br i1 %cmp85, label %if.then87, label %if.end94

if.then87:                                        ; preds = %if.then82
  %60 = load ptr, ptr %cinfo.addr, align 8
  %mem88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 1
  %61 = load ptr, ptr %mem88, align 8
  %62 = load ptr, ptr %61, align 8
  %call90 = call ptr %62(ptr noundef %60, i32 noundef 1, i64 noundef 2056) #5
  %63 = load ptr, ptr %entropy, align 8
  %64 = load i32, ptr %tbl, align 4
  %idxprom92 = sext i32 %64 to i64
  %arrayidx93 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %63, i64 0, i32 15, i64 %idxprom92
  store ptr %call90, ptr %arrayidx93, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %if.then82
  %65 = load ptr, ptr %entropy, align 8
  %66 = load i32, ptr %tbl, align 4
  %idxprom96 = sext i32 %66 to i64
  %arrayidx97 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %65, i64 0, i32 15, i64 %idxprom96
  %67 = load ptr, ptr %arrayidx97, align 8
  %idxprom99 = sext i32 %66 to i64
  %arrayidx100 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %65, i64 0, i32 15, i64 %idxprom99
  %68 = load ptr, ptr %arrayidx100, align 8
  %69 = call i64 @llvm.objectsize.i64.p0(ptr %68, i1 false, i1 true, i1 false)
  %call101 = call ptr @__memset_chk(ptr noundef %67, i32 noundef 0, i64 noundef 2056, i64 noundef %69) #5
  br label %for.inc

if.else102:                                       ; preds = %if.end80
  %70 = load i32, ptr %is_DC_band, align 4
  %tobool103.not = icmp eq i32 %70, 0
  br i1 %tobool103.not, label %if.else110, label %if.then104

if.then104:                                       ; preds = %if.else102
  %71 = load ptr, ptr %cinfo.addr, align 8
  %72 = load i32, ptr %tbl, align 4
  %idxprom106 = sext i32 %72 to i64
  %arrayidx107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i64 0, i32 16, i64 %idxprom106
  %73 = load ptr, ptr %arrayidx107, align 8
  %74 = load ptr, ptr %entropy, align 8
  %idxprom108 = sext i32 %72 to i64
  %arrayidx109 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %74, i64 0, i32 14, i64 %idxprom108
  call void @jpeg_make_c_derived_tbl(ptr noundef %71, ptr noundef %73, ptr noundef nonnull %arrayidx109) #5
  br label %for.inc

if.else110:                                       ; preds = %if.else102
  %75 = load ptr, ptr %cinfo.addr, align 8
  %76 = load i32, ptr %tbl, align 4
  %idxprom112 = sext i32 %76 to i64
  %arrayidx113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %75, i64 0, i32 17, i64 %idxprom112
  %77 = load ptr, ptr %arrayidx113, align 8
  %78 = load ptr, ptr %entropy, align 8
  %idxprom115 = sext i32 %76 to i64
  %arrayidx116 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %78, i64 0, i32 14, i64 %idxprom115
  call void @jpeg_make_c_derived_tbl(ptr noundef %75, ptr noundef %77, ptr noundef nonnull %arrayidx116) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end94, %if.else110, %if.then104, %if.then36
  %79 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %79, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %80 = load ptr, ptr %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %80, i64 0, i32 9
  store i32 0, ptr %EOBRUN, align 4
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %80, i64 0, i32 10
  store i32 0, ptr %BE, align 8
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %80, i64 0, i32 4
  store i64 0, ptr %put_buffer, align 8
  %81 = load ptr, ptr %entropy, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %81, i64 0, i32 5
  store i32 0, ptr %put_bits, align 8
  %82 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %82, i64 0, i32 29
  %83 = load i32, ptr %restart_interval, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %81, i64 0, i32 12
  store i32 %83, ptr %restarts_to_go, align 8
  %84 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %84, i64 0, i32 13
  store i32 0, ptr %next_restart_num, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_DC_first(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca ptr, align 8
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 50
  %1 = load i32, ptr %Al2, align 8
  store i32 %1, ptr %Al, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 5
  %3 = load ptr, ptr %dest, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %entropy, align 8
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 2
  store ptr %4, ptr %next_output_byte3, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i64 0, i32 5
  %7 = load ptr, ptr %dest4, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i64 0, i32 1
  %8 = load i64, ptr %free_in_buffer, align 8
  %9 = load ptr, ptr %entropy, align 8
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %9, i64 0, i32 3
  store i64 %8, ptr %free_in_buffer5, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 29
  %11 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %12, i64 0, i32 12
  %13 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then
  %14 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i64 0, i32 13
  %15 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %14, i32 noundef %15)
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then6, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %storemerge = phi i32 [ 0, %if.end7 ], [ %inc29, %for.inc ]
  store i32 %storemerge, ptr %blkn, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 45
  %17 = load i32, ptr %blocks_in_MCU, align 8
  %cmp8 = icmp slt i32 %storemerge, %17
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %MCU_data.addr, align 8
  %19 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  store ptr %20, ptr %block, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i64 0, i32 46, i64 %idxprom9
  %22 = load i32, ptr %arrayidx10, align 4
  store i32 %22, ptr %ci, align 4
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i64 0, i32 42, i64 %idxprom11
  %23 = load ptr, ptr %arrayidx12, align 8
  store ptr %23, ptr %compptr, align 8
  %24 = load ptr, ptr %block, align 8
  %25 = load i16, ptr %24, align 2
  %conv = sext i16 %25 to i32
  %26 = load i32, ptr %Al, align 4
  %shr = ashr i32 %conv, %26
  store i32 %shr, ptr %temp2, align 4
  %27 = load ptr, ptr %entropy, align 8
  %28 = load i32, ptr %ci, align 4
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %27, i64 0, i32 7, i64 %idxprom14
  %29 = load i32, ptr %arrayidx15, align 4
  %sub = sub nsw i32 %shr, %29
  store i32 %sub, ptr %temp, align 4
  %30 = load i32, ptr %temp2, align 4
  %31 = load ptr, ptr %entropy, align 8
  %32 = load i32, ptr %ci, align 4
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %31, i64 0, i32 7, i64 %idxprom17
  store i32 %30, ptr %arrayidx18, align 4
  %33 = load i32, ptr %temp, align 4
  store i32 %33, ptr %temp2, align 4
  %cmp19 = icmp slt i32 %33, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.body
  %34 = load i32, ptr %temp, align 4
  %sub22 = sub nsw i32 0, %34
  store i32 %sub22, ptr %temp, align 4
  %35 = load i32, ptr %temp2, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, ptr %temp2, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.body
  store i32 0, ptr %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %36 = load i32, ptr %temp, align 4
  %tobool24.not = icmp eq i32 %36, 0
  br i1 %tobool24.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %37 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %nbits, align 4
  %38 = load i32, ptr %temp, align 4
  %shr25 = ashr i32 %38, 1
  store i32 %shr25, ptr %temp, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %39 = load ptr, ptr %entropy, align 8
  %40 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 5
  %41 = load i32, ptr %dc_tbl_no, align 4
  %42 = load i32, ptr %nbits, align 4
  call void @emit_symbol(ptr noundef %39, i32 noundef %41, i32 noundef %42)
  %tobool26.not = icmp eq i32 %42, 0
  br i1 %tobool26.not, label %for.inc, label %if.then27

if.then27:                                        ; preds = %while.end
  %43 = load ptr, ptr %entropy, align 8
  %44 = load i32, ptr %temp2, align 4
  %45 = load i32, ptr %nbits, align 4
  call void @emit_bits(ptr noundef %43, i32 noundef %44, i32 noundef %45)
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then27
  %46 = load i32, ptr %blkn, align 4
  %inc29 = add nsw i32 %46, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %47 = load ptr, ptr %entropy, align 8
  %next_output_byte30 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %47, i64 0, i32 2
  %48 = load ptr, ptr %next_output_byte30, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %dest31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i64 0, i32 5
  %50 = load ptr, ptr %dest31, align 8
  store ptr %48, ptr %50, align 8
  %51 = load ptr, ptr %entropy, align 8
  %free_in_buffer33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %51, i64 0, i32 3
  %52 = load i64, ptr %free_in_buffer33, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  %dest34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i64 0, i32 5
  %54 = load ptr, ptr %dest34, align 8
  %free_in_buffer35 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %54, i64 0, i32 1
  store i64 %52, ptr %free_in_buffer35, align 8
  %restart_interval36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i64 0, i32 29
  %55 = load i32, ptr %restart_interval36, align 8
  %tobool37.not = icmp eq i32 %55, 0
  br i1 %tobool37.not, label %if.end51, label %if.then38

if.then38:                                        ; preds = %for.end
  %56 = load ptr, ptr %entropy, align 8
  %restarts_to_go39 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %56, i64 0, i32 12
  %57 = load i32, ptr %restarts_to_go39, align 8
  %cmp40 = icmp eq i32 %57, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.then38
  %58 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %58, i64 0, i32 29
  %59 = load i32, ptr %restart_interval43, align 8
  %60 = load ptr, ptr %entropy, align 8
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %60, i64 0, i32 12
  store i32 %59, ptr %restarts_to_go44, align 8
  %next_restart_num45 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %60, i64 0, i32 13
  %61 = load i32, ptr %next_restart_num45, align 4
  %inc46 = add nsw i32 %61, 1
  store i32 %inc46, ptr %next_restart_num45, align 4
  %62 = load ptr, ptr %entropy, align 8
  %next_restart_num47 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %62, i64 0, i32 13
  %63 = load i32, ptr %next_restart_num47, align 4
  %and = and i32 %63, 7
  store i32 %and, ptr %next_restart_num47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.then38
  %64 = load ptr, ptr %entropy, align 8
  %restarts_to_go49 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %64, i64 0, i32 12
  %65 = load i32, ptr %restarts_to_go49, align 8
  %dec50 = add i32 %65, -1
  store i32 %dec50, ptr %restarts_to_go49, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %for.end
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_AC_first(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  %1 = load i32, ptr %Se2, align 8
  store i32 %1, ptr %Se, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 50
  %3 = load i32, ptr %Al3, align 8
  store i32 %3, ptr %Al, align 4
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %dest, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %entropy, align 8
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %6, i64 0, i32 2
  store ptr %5, ptr %next_output_byte4, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %dest5, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %9 = load i64, ptr %free_in_buffer, align 8
  %10 = load ptr, ptr %entropy, align 8
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %10, i64 0, i32 3
  store i64 %9, ptr %free_in_buffer6, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 29
  %12 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %13, i64 0, i32 12
  %14 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then
  %15 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i64 0, i32 13
  %16 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %15, i32 noundef %16)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then7, %entry
  %17 = load ptr, ptr %MCU_data.addr, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %block, align 8
  store i32 0, ptr %r, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 47
  %20 = load i32, ptr %Ss, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %storemerge = phi i32 [ %20, %if.end8 ], [ %inc41, %for.inc ]
  store i32 %storemerge, ptr %k, align 4
  %21 = load i32, ptr %Se, align 4
  %cmp9.not = icmp sgt i32 %storemerge, %21
  br i1 %cmp9.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %block, align 8
  %23 = load i32, ptr %k, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom
  %24 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], ptr %22, i64 0, i64 %idxprom11
  %25 = load i16, ptr %arrayidx12, align 2
  %conv = sext i16 %25 to i32
  store i32 %conv, ptr %temp, align 4
  %cmp13 = icmp eq i16 %25, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  %26 = load i32, ptr %r, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %r, align 4
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %27 = load i32, ptr %temp, align 4
  %cmp17 = icmp slt i32 %27, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %28 = load i32, ptr %temp, align 4
  %sub = sub nsw i32 0, %28
  store i32 %sub, ptr %temp, align 4
  %29 = load i32, ptr %Al, align 4
  %shr = ashr i32 %sub, %29
  store i32 %shr, ptr %temp, align 4
  %neg = xor i32 %shr, -1
  br label %if.end21

if.else:                                          ; preds = %if.end16
  %30 = load i32, ptr %Al, align 4
  %31 = load i32, ptr %temp, align 4
  %shr20 = ashr i32 %31, %30
  store i32 %shr20, ptr %temp, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %storemerge1 = phi i32 [ %shr20, %if.else ], [ %neg, %if.then19 ]
  store i32 %storemerge1, ptr %temp2, align 4
  %32 = load i32, ptr %temp, align 4
  %cmp22 = icmp eq i32 %32, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %33 = load i32, ptr %r, align 4
  %inc25 = add nsw i32 %33, 1
  store i32 %inc25, ptr %r, align 4
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %34 = load ptr, ptr %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %34, i64 0, i32 9
  %35 = load i32, ptr %EOBRUN, align 4
  %cmp27.not = icmp eq i32 %35, 0
  br i1 %cmp27.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  %36 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %36)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end30
  %37 = load i32, ptr %r, align 4
  %cmp31 = icmp sgt i32 %37, 15
  br i1 %cmp31, label %while.body, label %while.cond34

while.body:                                       ; preds = %while.cond
  %38 = load ptr, ptr %entropy, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %38, i64 0, i32 8
  %39 = load i32, ptr %ac_tbl_no, align 8
  call void @emit_symbol(ptr noundef %38, i32 noundef %39, i32 noundef 240)
  %40 = load i32, ptr %r, align 4
  %sub33 = add nsw i32 %40, -16
  store i32 %sub33, ptr %r, align 4
  br label %while.cond, !llvm.loop !11

while.cond34:                                     ; preds = %while.cond, %while.body37
  %storemerge2 = phi i32 [ %inc38, %while.body37 ], [ 1, %while.cond ]
  store i32 %storemerge2, ptr %nbits, align 4
  %41 = load i32, ptr %temp, align 4
  %shr35 = ashr i32 %41, 1
  store i32 %shr35, ptr %temp, align 4
  %tobool36.not = icmp ult i32 %41, 2
  br i1 %tobool36.not, label %while.end39, label %while.body37

while.body37:                                     ; preds = %while.cond34
  %42 = load i32, ptr %nbits, align 4
  %inc38 = add nsw i32 %42, 1
  br label %while.cond34, !llvm.loop !12

while.end39:                                      ; preds = %while.cond34
  %43 = load ptr, ptr %entropy, align 8
  %ac_tbl_no40 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %43, i64 0, i32 8
  %44 = load i32, ptr %ac_tbl_no40, align 8
  %45 = load i32, ptr %r, align 4
  %shl = shl i32 %45, 4
  %46 = load i32, ptr %nbits, align 4
  %add = add nsw i32 %shl, %46
  call void @emit_symbol(ptr noundef %43, i32 noundef %44, i32 noundef %add)
  %47 = load ptr, ptr %entropy, align 8
  %48 = load i32, ptr %temp2, align 4
  call void @emit_bits(ptr noundef %47, i32 noundef %48, i32 noundef %46)
  store i32 0, ptr %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end39, %if.then24, %if.then15
  %49 = load i32, ptr %k, align 4
  %inc41 = add nsw i32 %49, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %50 = load i32, ptr %r, align 4
  %cmp42 = icmp sgt i32 %50, 0
  br i1 %cmp42, label %if.then44, label %if.end52

if.then44:                                        ; preds = %for.end
  %51 = load ptr, ptr %entropy, align 8
  %EOBRUN45 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %51, i64 0, i32 9
  %52 = load i32, ptr %EOBRUN45, align 4
  %inc46 = add i32 %52, 1
  store i32 %inc46, ptr %EOBRUN45, align 4
  %cmp48 = icmp eq i32 %inc46, 32767
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.then44
  %53 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %53)
  br label %if.end52

if.end52:                                         ; preds = %if.then44, %if.then50, %for.end
  %54 = load ptr, ptr %entropy, align 8
  %next_output_byte53 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %54, i64 0, i32 2
  %55 = load ptr, ptr %next_output_byte53, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  %dest54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %56, i64 0, i32 5
  %57 = load ptr, ptr %dest54, align 8
  store ptr %55, ptr %57, align 8
  %58 = load ptr, ptr %entropy, align 8
  %free_in_buffer56 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %58, i64 0, i32 3
  %59 = load i64, ptr %free_in_buffer56, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  %dest57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 5
  %61 = load ptr, ptr %dest57, align 8
  %free_in_buffer58 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %61, i64 0, i32 1
  store i64 %59, ptr %free_in_buffer58, align 8
  %restart_interval59 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %60, i64 0, i32 29
  %62 = load i32, ptr %restart_interval59, align 8
  %tobool60.not = icmp eq i32 %62, 0
  br i1 %tobool60.not, label %if.end73, label %if.then61

if.then61:                                        ; preds = %if.end52
  %63 = load ptr, ptr %entropy, align 8
  %restarts_to_go62 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %63, i64 0, i32 12
  %64 = load i32, ptr %restarts_to_go62, align 8
  %cmp63 = icmp eq i32 %64, 0
  br i1 %cmp63, label %if.then65, label %if.end71

if.then65:                                        ; preds = %if.then61
  %65 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval66 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %65, i64 0, i32 29
  %66 = load i32, ptr %restart_interval66, align 8
  %67 = load ptr, ptr %entropy, align 8
  %restarts_to_go67 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %67, i64 0, i32 12
  store i32 %66, ptr %restarts_to_go67, align 8
  %next_restart_num68 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %67, i64 0, i32 13
  %68 = load i32, ptr %next_restart_num68, align 4
  %inc69 = add nsw i32 %68, 1
  store i32 %inc69, ptr %next_restart_num68, align 4
  %69 = load ptr, ptr %entropy, align 8
  %next_restart_num70 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %69, i64 0, i32 13
  %70 = load i32, ptr %next_restart_num70, align 4
  %and = and i32 %70, 7
  store i32 %and, ptr %next_restart_num70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.then61
  %71 = load ptr, ptr %entropy, align 8
  %restarts_to_go72 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %71, i64 0, i32 12
  %72 = load i32, ptr %restarts_to_go72, align 8
  %dec = add i32 %72, -1
  store i32 %dec, ptr %restarts_to_go72, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %if.end52
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_DC_refine(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %blkn = alloca i32, align 4
  %Al = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 50
  %1 = load i32, ptr %Al2, align 8
  store i32 %1, ptr %Al, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 5
  %3 = load ptr, ptr %dest, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %entropy, align 8
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 2
  store ptr %4, ptr %next_output_byte3, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i64 0, i32 5
  %7 = load ptr, ptr %dest4, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i64 0, i32 1
  %8 = load i64, ptr %free_in_buffer, align 8
  %9 = load ptr, ptr %entropy, align 8
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %9, i64 0, i32 3
  store i64 %8, ptr %free_in_buffer5, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 29
  %11 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %12, i64 0, i32 12
  %13 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then
  %14 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i64 0, i32 13
  %15 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %14, i32 noundef %15)
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then6, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end7
  %storemerge = phi i32 [ 0, %if.end7 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %blkn, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 45
  %17 = load i32, ptr %blocks_in_MCU, align 8
  %cmp8 = icmp slt i32 %storemerge, %17
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %MCU_data.addr, align 8
  %19 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  %21 = load i16, ptr %20, align 2
  %conv = sext i16 %21 to i32
  %22 = load ptr, ptr %entropy, align 8
  %23 = load i32, ptr %Al, align 4
  %shr = ashr i32 %conv, %23
  call void @emit_bits(ptr noundef %22, i32 noundef %shr, i32 noundef 1)
  %24 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %24, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %entropy, align 8
  %next_output_byte10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %25, i64 0, i32 2
  %26 = load ptr, ptr %next_output_byte10, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i64 0, i32 5
  %28 = load ptr, ptr %dest11, align 8
  store ptr %26, ptr %28, align 8
  %29 = load ptr, ptr %entropy, align 8
  %free_in_buffer13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %29, i64 0, i32 3
  %30 = load i64, ptr %free_in_buffer13, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %dest14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 5
  %32 = load ptr, ptr %dest14, align 8
  %free_in_buffer15 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %32, i64 0, i32 1
  store i64 %30, ptr %free_in_buffer15, align 8
  %restart_interval16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i64 0, i32 29
  %33 = load i32, ptr %restart_interval16, align 8
  %tobool17.not = icmp eq i32 %33, 0
  br i1 %tobool17.not, label %if.end30, label %if.then18

if.then18:                                        ; preds = %for.end
  %34 = load ptr, ptr %entropy, align 8
  %restarts_to_go19 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %34, i64 0, i32 12
  %35 = load i32, ptr %restarts_to_go19, align 8
  %cmp20 = icmp eq i32 %35, 0
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.then18
  %36 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 29
  %37 = load i32, ptr %restart_interval23, align 8
  %38 = load ptr, ptr %entropy, align 8
  %restarts_to_go24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %38, i64 0, i32 12
  store i32 %37, ptr %restarts_to_go24, align 8
  %next_restart_num25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %38, i64 0, i32 13
  %39 = load i32, ptr %next_restart_num25, align 4
  %inc26 = add nsw i32 %39, 1
  store i32 %inc26, ptr %next_restart_num25, align 4
  %40 = load ptr, ptr %entropy, align 8
  %next_restart_num27 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %40, i64 0, i32 13
  %41 = load i32, ptr %next_restart_num27, align 4
  %and = and i32 %41, 7
  store i32 %and, ptr %next_restart_num27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.then18
  %42 = load ptr, ptr %entropy, align 8
  %restarts_to_go29 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %42, i64 0, i32 12
  %43 = load i32, ptr %restarts_to_go29, align 8
  %dec = add i32 %43, -1
  store i32 %dec, ptr %restarts_to_go29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %for.end
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_AC_refine(ptr noundef %cinfo, ptr noundef %MCU_data) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %MCU_data.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %temp = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %EOB = alloca i32, align 4
  %BR_buffer = alloca ptr, align 8
  %BR = alloca i32, align 4
  %Se = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca ptr, align 8
  %absvalues = alloca [64 x i32], align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 48
  %1 = load i32, ptr %Se2, align 8
  store i32 %1, ptr %Se, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 50
  %3 = load i32, ptr %Al3, align 8
  store i32 %3, ptr %Al, align 4
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %dest, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %entropy, align 8
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %6, i64 0, i32 2
  store ptr %5, ptr %next_output_byte4, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 5
  %8 = load ptr, ptr %dest5, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %9 = load i64, ptr %free_in_buffer, align 8
  %10 = load ptr, ptr %entropy, align 8
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %10, i64 0, i32 3
  store i64 %9, ptr %free_in_buffer6, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 29
  %12 = load i32, ptr %restart_interval, align 8
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %13, i64 0, i32 12
  %14 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then
  %15 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i64 0, i32 13
  %16 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %15, i32 noundef %16)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then7, %entry
  %17 = load ptr, ptr %MCU_data.addr, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %block, align 8
  store i32 0, ptr %EOB, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 47
  %20 = load i32, ptr %Ss, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %storemerge = phi i32 [ %20, %if.end8 ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %k, align 4
  %21 = load i32, ptr %Se, align 4
  %cmp9.not = icmp sgt i32 %storemerge, %21
  br i1 %cmp9.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %block, align 8
  %23 = load i32, ptr %k, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom
  %24 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], ptr %22, i64 0, i64 %idxprom11
  %25 = load i16, ptr %arrayidx12, align 2
  %conv = sext i16 %25 to i32
  store i32 %conv, ptr %temp, align 4
  %cmp13 = icmp slt i16 %25, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  %26 = load i32, ptr %temp, align 4
  %sub = sub nsw i32 0, %26
  store i32 %sub, ptr %temp, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body
  %27 = load i32, ptr %Al, align 4
  %28 = load i32, ptr %temp, align 4
  %shr = ashr i32 %28, %27
  store i32 %shr, ptr %temp, align 4
  %29 = load i32, ptr %k, align 4
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds [64 x i32], ptr %absvalues, i64 0, i64 %idxprom17
  store i32 %shr, ptr %arrayidx18, align 4
  %cmp19 = icmp eq i32 %shr, 1
  br i1 %cmp19, label %if.then21, label %for.inc

if.then21:                                        ; preds = %if.end16
  %30 = load i32, ptr %k, align 4
  store i32 %30, ptr %EOB, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.then21
  %31 = load i32, ptr %k, align 4
  %inc = add nsw i32 %31, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %r, align 4
  store i32 0, ptr %BR, align 4
  %32 = load ptr, ptr %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %32, i64 0, i32 11
  %33 = load ptr, ptr %bit_buffer, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %32, i64 0, i32 10
  %34 = load i32, ptr %BE, align 8
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  store ptr %add.ptr, ptr %BR_buffer, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %Ss23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i64 0, i32 47
  %36 = load i32, ptr %Ss23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc58, %for.end
  %storemerge1 = phi i32 [ %36, %for.end ], [ %inc59, %for.inc58 ]
  store i32 %storemerge1, ptr %k, align 4
  %37 = load i32, ptr %Se, align 4
  %cmp25.not = icmp sgt i32 %storemerge1, %37
  br i1 %cmp25.not, label %for.end60, label %for.body27

for.body27:                                       ; preds = %for.cond24
  %38 = load i32, ptr %k, align 4
  %idxprom28 = sext i32 %38 to i64
  %arrayidx29 = getelementptr inbounds [64 x i32], ptr %absvalues, i64 0, i64 %idxprom28
  %39 = load i32, ptr %arrayidx29, align 4
  store i32 %39, ptr %temp, align 4
  %cmp30 = icmp eq i32 %39, 0
  br i1 %cmp30, label %if.then32, label %while.cond

if.then32:                                        ; preds = %for.body27
  %40 = load i32, ptr %r, align 4
  %inc33 = add nsw i32 %40, 1
  store i32 %inc33, ptr %r, align 4
  br label %for.inc58

while.cond:                                       ; preds = %for.body27, %while.body
  %41 = load i32, ptr %r, align 4
  %cmp35 = icmp sgt i32 %41, 15
  %42 = load i32, ptr %k, align 4
  %43 = load i32, ptr %EOB, align 4
  %cmp37 = icmp sle i32 %42, %43
  %44 = select i1 %cmp35, i1 %cmp37, i1 false
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %45)
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %45, i64 0, i32 8
  %46 = load i32, ptr %ac_tbl_no, align 8
  call void @emit_symbol(ptr noundef %45, i32 noundef %46, i32 noundef 240)
  %47 = load i32, ptr %r, align 4
  %sub39 = add nsw i32 %47, -16
  store i32 %sub39, ptr %r, align 4
  %48 = load ptr, ptr %entropy, align 8
  %49 = load ptr, ptr %BR_buffer, align 8
  %50 = load i32, ptr %BR, align 4
  call void @emit_buffered_bits(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  %bit_buffer40 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %48, i64 0, i32 11
  %51 = load ptr, ptr %bit_buffer40, align 8
  store ptr %51, ptr %BR_buffer, align 8
  store i32 0, ptr %BR, align 4
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %52 = load i32, ptr %temp, align 4
  %cmp41 = icmp sgt i32 %52, 1
  br i1 %cmp41, label %if.then43, label %if.end48

if.then43:                                        ; preds = %while.end
  %53 = load i32, ptr %temp, align 4
  %54 = trunc i32 %53 to i8
  %conv44 = and i8 %54, 1
  %55 = load ptr, ptr %BR_buffer, align 8
  %56 = load i32, ptr %BR, align 4
  %inc45 = add i32 %56, 1
  store i32 %inc45, ptr %BR, align 4
  %idxprom46 = zext i32 %56 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %55, i64 %idxprom46
  store i8 %conv44, ptr %arrayidx47, align 1
  br label %for.inc58

if.end48:                                         ; preds = %while.end
  %57 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %57)
  %ac_tbl_no49 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %57, i64 0, i32 8
  %58 = load i32, ptr %ac_tbl_no49, align 8
  %59 = load i32, ptr %r, align 4
  %shl = shl i32 %59, 4
  %add = or i32 %shl, 1
  call void @emit_symbol(ptr noundef %57, i32 noundef %58, i32 noundef %add)
  %60 = load ptr, ptr %block, align 8
  %61 = load i32, ptr %k, align 4
  %idxprom50 = sext i32 %61 to i64
  %arrayidx51 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom50
  %62 = load i32, ptr %arrayidx51, align 4
  %idxprom52 = sext i32 %62 to i64
  %arrayidx53 = getelementptr inbounds [64 x i16], ptr %60, i64 0, i64 %idxprom52
  %63 = load i16, ptr %arrayidx53, align 2
  %cmp55 = icmp sgt i16 %63, -1
  %cond = zext i1 %cmp55 to i32
  store i32 %cond, ptr %temp, align 4
  %64 = load ptr, ptr %entropy, align 8
  call void @emit_bits(ptr noundef %64, i32 noundef %cond, i32 noundef 1)
  %65 = load ptr, ptr %BR_buffer, align 8
  %66 = load i32, ptr %BR, align 4
  call void @emit_buffered_bits(ptr noundef %64, ptr noundef %65, i32 noundef %66)
  %bit_buffer57 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %64, i64 0, i32 11
  %67 = load ptr, ptr %bit_buffer57, align 8
  store ptr %67, ptr %BR_buffer, align 8
  store i32 0, ptr %BR, align 4
  store i32 0, ptr %r, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %if.end48, %if.then43, %if.then32
  %68 = load i32, ptr %k, align 4
  %inc59 = add nsw i32 %68, 1
  br label %for.cond24, !llvm.loop !17

for.end60:                                        ; preds = %for.cond24
  %69 = load i32, ptr %r, align 4
  %cmp61 = icmp sle i32 %69, 0
  %70 = load i32, ptr %BR, align 4
  %cmp63.not = icmp eq i32 %70, 0
  %or.cond = select i1 %cmp61, i1 %cmp63.not, i1 false
  br i1 %or.cond, label %if.end78, label %if.then65

if.then65:                                        ; preds = %for.end60
  %71 = load ptr, ptr %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %71, i64 0, i32 9
  %72 = load i32, ptr %EOBRUN, align 4
  %inc66 = add i32 %72, 1
  store i32 %inc66, ptr %EOBRUN, align 4
  %73 = load i32, ptr %BR, align 4
  %BE67 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %71, i64 0, i32 10
  %74 = load i32, ptr %BE67, align 8
  %add68 = add i32 %74, %73
  store i32 %add68, ptr %BE67, align 8
  %75 = load ptr, ptr %entropy, align 8
  %EOBRUN69 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %75, i64 0, i32 9
  %76 = load i32, ptr %EOBRUN69, align 4
  %cmp70 = icmp eq i32 %76, 32767
  br i1 %cmp70, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then65
  %77 = load ptr, ptr %entropy, align 8
  %BE73 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %77, i64 0, i32 10
  %78 = load i32, ptr %BE73, align 8
  %cmp74 = icmp ugt i32 %78, 937
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %lor.lhs.false72, %if.then65
  %79 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %79)
  br label %if.end78

if.end78:                                         ; preds = %lor.lhs.false72, %if.then76, %for.end60
  %80 = load ptr, ptr %entropy, align 8
  %next_output_byte79 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %80, i64 0, i32 2
  %81 = load ptr, ptr %next_output_byte79, align 8
  %82 = load ptr, ptr %cinfo.addr, align 8
  %dest80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %82, i64 0, i32 5
  %83 = load ptr, ptr %dest80, align 8
  store ptr %81, ptr %83, align 8
  %84 = load ptr, ptr %entropy, align 8
  %free_in_buffer82 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %84, i64 0, i32 3
  %85 = load i64, ptr %free_in_buffer82, align 8
  %86 = load ptr, ptr %cinfo.addr, align 8
  %dest83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i64 0, i32 5
  %87 = load ptr, ptr %dest83, align 8
  %free_in_buffer84 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %87, i64 0, i32 1
  store i64 %85, ptr %free_in_buffer84, align 8
  %restart_interval85 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i64 0, i32 29
  %88 = load i32, ptr %restart_interval85, align 8
  %tobool86.not = icmp eq i32 %88, 0
  br i1 %tobool86.not, label %if.end100, label %if.then87

if.then87:                                        ; preds = %if.end78
  %89 = load ptr, ptr %entropy, align 8
  %restarts_to_go88 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %89, i64 0, i32 12
  %90 = load i32, ptr %restarts_to_go88, align 8
  %cmp89 = icmp eq i32 %90, 0
  br i1 %cmp89, label %if.then91, label %if.end98

if.then91:                                        ; preds = %if.then87
  %91 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %91, i64 0, i32 29
  %92 = load i32, ptr %restart_interval92, align 8
  %93 = load ptr, ptr %entropy, align 8
  %restarts_to_go93 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %93, i64 0, i32 12
  store i32 %92, ptr %restarts_to_go93, align 8
  %next_restart_num94 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %93, i64 0, i32 13
  %94 = load i32, ptr %next_restart_num94, align 4
  %inc95 = add nsw i32 %94, 1
  store i32 %inc95, ptr %next_restart_num94, align 4
  %95 = load ptr, ptr %entropy, align 8
  %next_restart_num96 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %95, i64 0, i32 13
  %96 = load i32, ptr %next_restart_num96, align 4
  %and97 = and i32 %96, 7
  store i32 %and97, ptr %next_restart_num96, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.then87
  %97 = load ptr, ptr %entropy, align 8
  %restarts_to_go99 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %97, i64 0, i32 12
  %98 = load i32, ptr %restarts_to_go99, align 8
  %dec = add i32 %98, -1
  store i32 %dec, ptr %restarts_to_go99, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.end98, %if.end78
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_gather_phuff(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %is_DC_band = alloca i32, align 4
  %ci = alloca i32, align 4
  %tbl = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %htblptr = alloca ptr, align 8
  %did = alloca [4 x i32], align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %0)
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 47
  %1 = load i32, ptr %Ss, align 4
  %cmp = icmp eq i32 %1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %is_DC_band, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %did, i8 0, i64 16, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 41
  %3 = load i32, ptr %comps_in_scan, align 4
  %cmp2 = icmp slt i32 %storemerge, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 42, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %compptr, align 8
  %7 = load i32, ptr %is_DC_band, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 49
  %9 = load i32, ptr %Ah, align 4
  %cmp4.not = icmp eq i32 %9, 0
  br i1 %cmp4.not, label %if.end, label %for.inc

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i64 0, i32 5
  br label %if.end7

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %11, i64 0, i32 6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %storemerge1.in = phi ptr [ %ac_tbl_no, %if.else ], [ %dc_tbl_no, %if.end ]
  %storemerge1 = load i32, ptr %storemerge1.in, align 4
  store i32 %storemerge1, ptr %tbl, align 4
  %idxprom8 = sext i32 %storemerge1 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], ptr %did, i64 0, i64 %idxprom8
  %12 = load i32, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.end7
  %13 = load i32, ptr %is_DC_band, align 4
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.else16, label %if.then13

if.then13:                                        ; preds = %if.then11
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load i32, ptr %tbl, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 16, i64 %idxprom14
  br label %if.end19

if.else16:                                        ; preds = %if.then11
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load i32, ptr %tbl, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 17, i64 %idxprom17
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then13
  %storemerge2 = phi ptr [ %arrayidx18, %if.else16 ], [ %arrayidx15, %if.then13 ]
  store ptr %storemerge2, ptr %htblptr, align 8
  %18 = load ptr, ptr %storemerge2, align 8
  %cmp20 = icmp eq ptr %18, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %19 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_huff_table(ptr noundef %19) #5
  %20 = load ptr, ptr %htblptr, align 8
  store ptr %call, ptr %20, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %htblptr, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %entropy, align 8
  %25 = load i32, ptr %tbl, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %24, i64 0, i32 15, i64 %idxprom24
  %26 = load ptr, ptr %arrayidx25, align 8
  call void @jpeg_gen_optimal_table(ptr noundef %21, ptr noundef %23, ptr noundef %26) #5
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr %did, i64 0, i64 %idxprom26
  store i32 1, ptr %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.end23, %if.then
  %27 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %27, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_phuff(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 59
  %0 = load ptr, ptr %entropy1, align 8
  store ptr %0, ptr %entropy, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 5
  %1 = load ptr, ptr %dest, align 8
  %2 = load ptr, ptr %1, align 8
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  store ptr %2, ptr %next_output_byte2, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 5
  %4 = load ptr, ptr %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 1
  %5 = load i64, ptr %free_in_buffer, align 8
  %6 = load ptr, ptr %entropy, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %6, i64 0, i32 3
  store i64 %5, ptr %free_in_buffer4, align 8
  call void @emit_eobrun(ptr noundef %6)
  call void @flush_bits(ptr noundef %6)
  %next_output_byte5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %6, i64 0, i32 2
  %7 = load ptr, ptr %next_output_byte5, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %dest6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 5
  %9 = load ptr, ptr %dest6, align 8
  store ptr %7, ptr %9, align 8
  %10 = load ptr, ptr %entropy, align 8
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %10, i64 0, i32 3
  %11 = load i64, ptr %free_in_buffer8, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %dest9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 5
  %13 = load ptr, ptr %dest9, align 8
  %free_in_buffer10 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %13, i64 0, i32 1
  store i64 %11, ptr %free_in_buffer10, align 8
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare void @jpeg_make_c_derived_tbl(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @emit_restart(ptr noundef %entropy, i32 noundef %restart_num) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  store i32 %restart_num, ptr %restart_num.addr, align 4
  call void @emit_eobrun(ptr noundef %entropy)
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 1
  %0 = load i32, ptr %gather_statistics, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entropy.addr, align 8
  call void @flush_bits(ptr noundef %1)
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i64 0, i32 2
  %2 = load ptr, ptr %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8
  store i8 -1, ptr %2, align 1
  %3 = load ptr, ptr %entropy.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 3
  %4 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %6 = load i32, ptr %restart_num.addr, align 4
  %7 = trunc i32 %6 to i8
  %conv = add i8 %7, -48
  %8 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %next_output_byte2, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr3, ptr %next_output_byte2, align 8
  store i8 %conv, ptr %9, align 1
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %8, i64 0, i32 3
  %10 = load i64, ptr %free_in_buffer4, align 8
  %dec5 = add i64 %10, -1
  store i64 %dec5, ptr %free_in_buffer4, align 8
  %cmp6 = icmp eq i64 %dec5, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %11 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %11)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then8, %entry
  %12 = load ptr, ptr %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %12, i64 0, i32 6
  %13 = load ptr, ptr %cinfo, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 47
  %14 = load i32, ptr %Ss, align 4
  %cmp11 = icmp eq i32 %14, 0
  br i1 %cmp11, label %for.cond, label %if.else

for.cond:                                         ; preds = %if.end10, %for.body
  %storemerge = phi i32 [ %inc, %for.body ], [ 0, %if.end10 ]
  store i32 %storemerge, ptr %ci, align 4
  %15 = load ptr, ptr %entropy.addr, align 8
  %cinfo14 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i64 0, i32 6
  %16 = load ptr, ptr %cinfo14, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 41
  %17 = load i32, ptr %comps_in_scan, align 4
  %cmp15 = icmp slt i32 %storemerge, %17
  br i1 %cmp15, label %for.body, label %if.end17

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %entropy.addr, align 8
  %19 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %18, i64 0, i32 7, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %20 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %20, 1
  br label %for.cond, !llvm.loop !19

if.else:                                          ; preds = %if.end10
  %21 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %21, i64 0, i32 9
  store i32 0, ptr %EOBRUN, align 4
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %21, i64 0, i32 10
  store i32 0, ptr %BE, align 8
  br label %if.end17

if.end17:                                         ; preds = %for.cond, %if.else
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_symbol(ptr noundef %entropy, i32 noundef %tbl_no, i32 noundef %symbol) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %tbl_no.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  store i32 %tbl_no, ptr %tbl_no.addr, align 4
  store i32 %symbol, ptr %symbol.addr, align 4
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 1
  %0 = load i32, ptr %gather_statistics, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entropy.addr, align 8
  %2 = load i32, ptr %tbl_no.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i64 0, i32 15, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = load i32, ptr %symbol.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i64, ptr %3, i64 %idxprom1
  %5 = load i64, ptr %arrayidx2, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, ptr %arrayidx2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %entropy.addr, align 8
  %7 = load i32, ptr %tbl_no.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %6, i64 0, i32 14, i64 %idxprom3
  %8 = load ptr, ptr %arrayidx4, align 8
  %9 = load i32, ptr %symbol.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr %8, i64 0, i64 %idxprom5
  %10 = load i32, ptr %arrayidx6, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds %struct.c_derived_tbl, ptr %8, i64 0, i32 1, i64 %idxprom7
  %11 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %11 to i32
  call void @emit_bits(ptr noundef %6, i32 noundef %10, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_bits(ptr noundef %entropy, i32 noundef %code, i32 noundef %size) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %conv = zext i32 %code to i64
  store i64 %conv, ptr %put_buffer, align 8
  %put_bits1 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 5
  %0 = load i32, ptr %put_bits1, align 8
  store i32 %0, ptr %put_bits, align 4
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i64 0, i32 6
  %2 = load ptr, ptr %cinfo, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  store i32 39, ptr %msg_code, align 8
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %cinfo3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %entropy.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %7, i64 0, i32 6
  %8 = load ptr, ptr %cinfo5, align 8
  call void %6(ptr noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %9, i64 0, i32 1
  %10 = load i32, ptr %gather_statistics, align 8
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end
  %11 = load i32, ptr %size.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %12 = load i64, ptr %put_buffer, align 8
  %and = and i64 %12, %sub
  store i64 %and, ptr %put_buffer, align 8
  %13 = load i32, ptr %size.addr, align 4
  %14 = load i32, ptr %put_bits, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, ptr %put_bits, align 4
  %sub8 = sub nsw i32 24, %add
  %sh_prom9 = zext i32 %sub8 to i64
  %shl10 = shl i64 %and, %sh_prom9
  store i64 %shl10, ptr %put_buffer, align 8
  %15 = load ptr, ptr %entropy.addr, align 8
  %put_buffer11 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i64 0, i32 4
  %16 = load i64, ptr %put_buffer11, align 8
  %or = or i64 %shl10, %16
  store i64 %or, ptr %put_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.end7
  %17 = load i32, ptr %put_bits, align 4
  %cmp12 = icmp sgt i32 %17, 7
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i64, ptr %put_buffer, align 8
  %19 = trunc i64 %18 to i32
  %20 = lshr i32 %19, 16
  %conv15 = and i32 %20, 255
  store i32 %conv15, ptr %c, align 4
  %conv16 = trunc i32 %20 to i8
  %21 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %21, i64 0, i32 2
  %22 = load ptr, ptr %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8
  store i8 %conv16, ptr %22, align 1
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %21, i64 0, i32 3
  %23 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %23, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp17 = icmp eq i64 %dec, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body
  %24 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %24)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %while.body
  %25 = load i32, ptr %c, align 4
  %cmp21 = icmp eq i32 %25, 255
  br i1 %cmp21, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end20
  %26 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %26, i64 0, i32 2
  %27 = load ptr, ptr %next_output_byte24, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr25, ptr %next_output_byte24, align 8
  store i8 0, ptr %27, align 1
  %free_in_buffer26 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %26, i64 0, i32 3
  %28 = load i64, ptr %free_in_buffer26, align 8
  %dec27 = add i64 %28, -1
  store i64 %dec27, ptr %free_in_buffer26, align 8
  %cmp28 = icmp eq i64 %dec27, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then23
  %29 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %29)
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.then30, %if.end20
  %30 = load i64, ptr %put_buffer, align 8
  %shl33 = shl i64 %30, 8
  store i64 %shl33, ptr %put_buffer, align 8
  %31 = load i32, ptr %put_bits, align 4
  %sub34 = add nsw i32 %31, -8
  store i32 %sub34, ptr %put_bits, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %32 = load i64, ptr %put_buffer, align 8
  %33 = load ptr, ptr %entropy.addr, align 8
  %put_buffer35 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %33, i64 0, i32 4
  store i64 %32, ptr %put_buffer35, align 8
  %34 = load i32, ptr %put_bits, align 4
  %put_bits36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %33, i64 0, i32 5
  store i32 %34, ptr %put_bits36, align 8
  br label %return

return:                                           ; preds = %if.end, %while.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_eobrun(ptr noundef %entropy) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 9
  %0 = load i32, ptr %EOBRUN, align 4
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN1 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i64 0, i32 9
  %2 = load i32, ptr %EOBRUN1, align 4
  store i32 %2, ptr %temp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %storemerge = phi i32 [ 0, %if.then ], [ %inc, %while.body ]
  store i32 %storemerge, ptr %nbits, align 4
  %3 = load i32, ptr %temp, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, ptr %temp, align 4
  %tobool.not = icmp ult i32 %3, 2
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %4, 1
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %entropy.addr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 8
  %6 = load i32, ptr %ac_tbl_no, align 8
  %7 = load i32, ptr %nbits, align 4
  %shl = shl i32 %7, 4
  call void @emit_symbol(ptr noundef %5, i32 noundef %6, i32 noundef %shl)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %while.end
  %8 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %8, i64 0, i32 9
  %9 = load i32, ptr %EOBRUN4, align 4
  %10 = load i32, ptr %nbits, align 4
  call void @emit_bits(ptr noundef %8, i32 noundef %9, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then3, %while.end
  %11 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i64 0, i32 9
  store i32 0, ptr %EOBRUN5, align 4
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i64 0, i32 11
  %12 = load ptr, ptr %bit_buffer, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %BE, align 8
  call void @emit_buffered_bits(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  %14 = load ptr, ptr %entropy.addr, align 8
  %BE6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i64 0, i32 10
  store i32 0, ptr %BE6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @flush_bits(ptr noundef %entropy) #0 {
entry:
  call void @emit_bits(ptr noundef %entropy, i32 noundef 127, i32 noundef 7)
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 4
  store i64 0, ptr %put_buffer, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 5
  store i32 0, ptr %put_bits, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @dump_buffer(ptr noundef %entropy) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %entropy, ptr %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 6
  %0 = load ptr, ptr %cinfo, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %1 = load ptr, ptr %dest1, align 8
  store ptr %1, ptr %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %1, i64 0, i32 3
  %2 = load ptr, ptr %empty_output_buffer, align 8
  %3 = load ptr, ptr %entropy.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 6
  %4 = load ptr, ptr %cinfo2, align 8
  %call = call i32 %2(ptr noundef %4) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %entropy.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 6
  %6 = load ptr, ptr %cinfo3, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %cinfo4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 6
  %8 = load ptr, ptr %cinfo4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %entropy.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i64 0, i32 6
  %12 = load ptr, ptr %cinfo6, align 8
  call void %10(ptr noundef %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %dest, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i64 0, i32 2
  store ptr %14, ptr %next_output_byte7, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %13, i64 0, i32 1
  %16 = load i64, ptr %free_in_buffer, align 8
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i64 0, i32 3
  store i64 %16, ptr %free_in_buffer8, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_buffered_bits(ptr noundef %entropy, ptr noundef %bufstart, i32 noundef %nbits) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %bufstart.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  store ptr %bufstart, ptr %bufstart.addr, align 8
  store i32 %nbits, ptr %nbits.addr, align 4
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %entropy, i64 0, i32 1
  %0 = load i32, ptr %gather_statistics, align 8
  %tobool.not = icmp ne i32 %0, 0
  %1 = load i32, ptr %nbits.addr, align 4
  %cmp.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %2 = load ptr, ptr %entropy.addr, align 8
  %3 = load ptr, ptr %bufstart.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  call void @emit_bits(ptr noundef %2, i32 noundef %conv, i32 noundef 1)
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %bufstart.addr, align 8
  %5 = load i32, ptr %nbits.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %nbits.addr, align 4
  %.old = load i32, ptr %nbits.addr, align 4
  %cmp.not.old = icmp eq i32 %.old, 0
  br i1 %cmp.not.old, label %while.end, label %while.body

while.end:                                        ; preds = %entry, %while.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @jpeg_alloc_huff_table(ptr noundef) #3

declare void @jpeg_gen_optimal_table(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
