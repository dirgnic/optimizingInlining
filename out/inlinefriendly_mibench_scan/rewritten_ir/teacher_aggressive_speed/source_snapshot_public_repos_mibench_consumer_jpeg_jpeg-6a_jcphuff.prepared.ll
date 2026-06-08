; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcphuff.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcphuff.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
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
  %cinfo.addr = alloca ptr, align 8
  %entropy = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 184)
  store ptr %call, ptr %entropy, align 8
  %4 = load ptr, ptr %entropy, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 59
  store ptr %4, ptr %entropy1, align 8
  %6 = load ptr, ptr %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub, i32 0, i32 0
  store ptr @start_pass_phuff, ptr %start_pass, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %8, i32 0, i32 14
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %derived_tbls, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %10 = load ptr, ptr %entropy, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %10, i32 0, i32 15
  %11 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds [4 x ptr], ptr %count_ptrs, i64 0, i64 %idxprom2
  store ptr null, ptr %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %13, i32 0, i32 11
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %entropy, align 8
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i32 0, i32 6
  store ptr %2, ptr %cinfo2, align 8
  %4 = load i32, ptr %gather_statistics.addr, align 4
  %5 = load ptr, ptr %entropy, align 8
  %gather_statistics3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i32 0, i32 1
  store i32 %4, ptr %gather_statistics3, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 47
  %7 = load i32, ptr %Ss, align 4
  %cmp = icmp eq i32 %7, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %is_DC_band, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 49
  %9 = load i32, ptr %Ah, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %is_DC_band, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %entropy, align 8
  %pub = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub, i32 0, i32 1
  store ptr @encode_mcu_DC_first, ptr %encode_mcu, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %entropy, align 8
  %pub7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %12, i32 0, i32 0
  %encode_mcu8 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub7, i32 0, i32 1
  store ptr @encode_mcu_AC_first, ptr %encode_mcu8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end23

if.else9:                                         ; preds = %entry
  %13 = load i32, ptr %is_DC_band, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else9
  %14 = load ptr, ptr %entropy, align 8
  %pub12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i32 0, i32 0
  %encode_mcu13 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub12, i32 0, i32 1
  store ptr @encode_mcu_DC_refine, ptr %encode_mcu13, align 8
  br label %if.end22

if.else14:                                        ; preds = %if.else9
  %15 = load ptr, ptr %entropy, align 8
  %pub15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i32 0, i32 0
  %encode_mcu16 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub15, i32 0, i32 1
  store ptr @encode_mcu_AC_refine, ptr %encode_mcu16, align 8
  %16 = load ptr, ptr %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %bit_buffer, align 8
  %cmp17 = icmp eq ptr %17, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.else14
  %18 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %alloc_small, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %20(ptr noundef %21, i32 noundef 1, i64 noundef 1000)
  %22 = load ptr, ptr %entropy, align 8
  %bit_buffer20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %22, i32 0, i32 11
  store ptr %call, ptr %bit_buffer20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then11
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %23 = load i32, ptr %gather_statistics.addr, align 4
  %tobool24 = icmp ne i32 %23, 0
  br i1 %tobool24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.end23
  %24 = load ptr, ptr %entropy, align 8
  %pub26 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %24, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub26, i32 0, i32 2
  store ptr @finish_pass_gather_phuff, ptr %finish_pass, align 8
  br label %if.end30

if.else27:                                        ; preds = %if.end23
  %25 = load ptr, ptr %entropy, align 8
  %pub28 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %25, i32 0, i32 0
  %finish_pass29 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %pub28, i32 0, i32 2
  store ptr @finish_pass_phuff, ptr %finish_pass29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then25
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %26 = load i32, ptr %ci, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 41
  %28 = load i32, ptr %comps_in_scan, align 4
  %cmp31 = icmp slt i32 %26, %28
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 42
  %30 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %31 = load ptr, ptr %arrayidx, align 8
  store ptr %31, ptr %compptr, align 8
  %32 = load ptr, ptr %entropy, align 8
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %32, i32 0, i32 7
  %33 = load i32, ptr %ci, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom33
  store i32 0, ptr %arrayidx34, align 4
  %34 = load i32, ptr %is_DC_band, align 4
  %tobool35 = icmp ne i32 %34, 0
  br i1 %tobool35, label %if.then36, label %if.else57

if.then36:                                        ; preds = %for.body
  %35 = load ptr, ptr %cinfo.addr, align 8
  %Ah37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 49
  %36 = load i32, ptr %Ah37, align 4
  %cmp38 = icmp ne i32 %36, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.then36
  br label %for.inc

if.end41:                                         ; preds = %if.then36
  %37 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %37, i32 0, i32 5
  %38 = load i32, ptr %dc_tbl_no, align 4
  store i32 %38, ptr %tbl, align 4
  %39 = load i32, ptr %tbl, align 4
  %cmp42 = icmp slt i32 %39, 0
  br i1 %cmp42, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end41
  %40 = load i32, ptr %tbl, align 4
  %cmp44 = icmp sge i32 %40, 4
  br i1 %cmp44, label %if.then52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 16
  %42 = load i32, ptr %tbl, align 4
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom47
  %43 = load ptr, ptr %arrayidx48, align 8
  %cmp49 = icmp eq ptr %43, null
  br i1 %cmp49, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %lor.lhs.false46
  %44 = load i32, ptr %gather_statistics.addr, align 4
  %tobool51 = icmp ne i32 %44, 0
  br i1 %tobool51, label %if.end56, label %if.then52

if.then52:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end41
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 5
  store i32 49, ptr %msg_code, align 8
  %47 = load i32, ptr %tbl, align 4
  %48 = load ptr, ptr %cinfo.addr, align 8
  %err53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %err53, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i32 0, i32 6
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %47, ptr %arrayidx54, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %err55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err55, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %error_exit, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  call void %52(ptr noundef %53)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %land.lhs.true, %lor.lhs.false46
  br label %if.end80

if.else57:                                        ; preds = %for.body
  %54 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i32 0, i32 6
  %55 = load i32, ptr %ac_tbl_no, align 8
  store i32 %55, ptr %tbl, align 4
  %56 = load ptr, ptr %entropy, align 8
  %ac_tbl_no58 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %56, i32 0, i32 8
  store i32 %55, ptr %ac_tbl_no58, align 8
  %57 = load i32, ptr %tbl, align 4
  %cmp59 = icmp slt i32 %57, 0
  br i1 %cmp59, label %if.then71, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.else57
  %58 = load i32, ptr %tbl, align 4
  %cmp62 = icmp sge i32 %58, 4
  br i1 %cmp62, label %if.then71, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %59 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i32 0, i32 17
  %60 = load i32, ptr %tbl, align 4
  %idxprom65 = sext i32 %60 to i64
  %arrayidx66 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom65
  %61 = load ptr, ptr %arrayidx66, align 8
  %cmp67 = icmp eq ptr %61, null
  br i1 %cmp67, label %land.lhs.true69, label %if.end79

land.lhs.true69:                                  ; preds = %lor.lhs.false64
  %62 = load i32, ptr %gather_statistics.addr, align 4
  %tobool70 = icmp ne i32 %62, 0
  br i1 %tobool70, label %if.end79, label %if.then71

if.then71:                                        ; preds = %land.lhs.true69, %lor.lhs.false61, %if.else57
  %63 = load ptr, ptr %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %err72, align 8
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i32 0, i32 5
  store i32 49, ptr %msg_code73, align 8
  %65 = load i32, ptr %tbl, align 4
  %66 = load ptr, ptr %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %err74, align 8
  %msg_parm75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i32 0, i32 6
  %arrayidx76 = getelementptr inbounds [8 x i32], ptr %msg_parm75, i64 0, i64 0
  store i32 %65, ptr %arrayidx76, align 4
  %68 = load ptr, ptr %cinfo.addr, align 8
  %err77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %err77, align 8
  %error_exit78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %error_exit78, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  call void %70(ptr noundef %71)
  br label %if.end79

if.end79:                                         ; preds = %if.then71, %land.lhs.true69, %lor.lhs.false64
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end56
  %72 = load i32, ptr %gather_statistics.addr, align 4
  %tobool81 = icmp ne i32 %72, 0
  br i1 %tobool81, label %if.then82, label %if.else102

if.then82:                                        ; preds = %if.end80
  %73 = load ptr, ptr %entropy, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %73, i32 0, i32 15
  %74 = load i32, ptr %tbl, align 4
  %idxprom83 = sext i32 %74 to i64
  %arrayidx84 = getelementptr inbounds [4 x ptr], ptr %count_ptrs, i64 0, i64 %idxprom83
  %75 = load ptr, ptr %arrayidx84, align 8
  %cmp85 = icmp eq ptr %75, null
  br i1 %cmp85, label %if.then87, label %if.end94

if.then87:                                        ; preds = %if.then82
  %76 = load ptr, ptr %cinfo.addr, align 8
  %mem88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %mem88, align 8
  %alloc_small89 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %alloc_small89, align 8
  %79 = load ptr, ptr %cinfo.addr, align 8
  %call90 = call ptr %78(ptr noundef %79, i32 noundef 1, i64 noundef 2056)
  %80 = load ptr, ptr %entropy, align 8
  %count_ptrs91 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %80, i32 0, i32 15
  %81 = load i32, ptr %tbl, align 4
  %idxprom92 = sext i32 %81 to i64
  %arrayidx93 = getelementptr inbounds [4 x ptr], ptr %count_ptrs91, i64 0, i64 %idxprom92
  store ptr %call90, ptr %arrayidx93, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %if.then82
  %82 = load ptr, ptr %entropy, align 8
  %count_ptrs95 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %82, i32 0, i32 15
  %83 = load i32, ptr %tbl, align 4
  %idxprom96 = sext i32 %83 to i64
  %arrayidx97 = getelementptr inbounds [4 x ptr], ptr %count_ptrs95, i64 0, i64 %idxprom96
  %84 = load ptr, ptr %arrayidx97, align 8
  %85 = load ptr, ptr %entropy, align 8
  %count_ptrs98 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %85, i32 0, i32 15
  %86 = load i32, ptr %tbl, align 4
  %idxprom99 = sext i32 %86 to i64
  %arrayidx100 = getelementptr inbounds [4 x ptr], ptr %count_ptrs98, i64 0, i64 %idxprom99
  %87 = load ptr, ptr %arrayidx100, align 8
  %88 = call i64 @llvm.objectsize.i64.p0(ptr %87, i1 false, i1 true, i1 false)
  %call101 = call ptr @__memset_chk(ptr noundef %84, i32 noundef 0, i64 noundef 2056, i64 noundef %88) #5
  br label %if.end118

if.else102:                                       ; preds = %if.end80
  %89 = load i32, ptr %is_DC_band, align 4
  %tobool103 = icmp ne i32 %89, 0
  br i1 %tobool103, label %if.then104, label %if.else110

if.then104:                                       ; preds = %if.else102
  %90 = load ptr, ptr %cinfo.addr, align 8
  %91 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %91, i32 0, i32 16
  %92 = load i32, ptr %tbl, align 4
  %idxprom106 = sext i32 %92 to i64
  %arrayidx107 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs105, i64 0, i64 %idxprom106
  %93 = load ptr, ptr %arrayidx107, align 8
  %94 = load ptr, ptr %entropy, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %94, i32 0, i32 14
  %95 = load i32, ptr %tbl, align 4
  %idxprom108 = sext i32 %95 to i64
  %arrayidx109 = getelementptr inbounds [4 x ptr], ptr %derived_tbls, i64 0, i64 %idxprom108
  call void @jpeg_make_c_derived_tbl(ptr noundef %90, ptr noundef %93, ptr noundef %arrayidx109)
  br label %if.end117

if.else110:                                       ; preds = %if.else102
  %96 = load ptr, ptr %cinfo.addr, align 8
  %97 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs111 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %97, i32 0, i32 17
  %98 = load i32, ptr %tbl, align 4
  %idxprom112 = sext i32 %98 to i64
  %arrayidx113 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs111, i64 0, i64 %idxprom112
  %99 = load ptr, ptr %arrayidx113, align 8
  %100 = load ptr, ptr %entropy, align 8
  %derived_tbls114 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %100, i32 0, i32 14
  %101 = load i32, ptr %tbl, align 4
  %idxprom115 = sext i32 %101 to i64
  %arrayidx116 = getelementptr inbounds [4 x ptr], ptr %derived_tbls114, i64 0, i64 %idxprom115
  call void @jpeg_make_c_derived_tbl(ptr noundef %96, ptr noundef %99, ptr noundef %arrayidx116)
  br label %if.end117

if.end117:                                        ; preds = %if.else110, %if.then104
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end94
  br label %for.inc

for.inc:                                          ; preds = %if.end118, %if.then40
  %102 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %103 = load ptr, ptr %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %103, i32 0, i32 9
  store i32 0, ptr %EOBRUN, align 4
  %104 = load ptr, ptr %entropy, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %104, i32 0, i32 10
  store i32 0, ptr %BE, align 8
  %105 = load ptr, ptr %entropy, align 8
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %105, i32 0, i32 4
  store i64 0, ptr %put_buffer, align 8
  %106 = load ptr, ptr %entropy, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %106, i32 0, i32 5
  store i32 0, ptr %put_bits, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %107, i32 0, i32 29
  %108 = load i32, ptr %restart_interval, align 8
  %109 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %109, i32 0, i32 12
  store i32 %108, ptr %restarts_to_go, align 8
  %110 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %110, i32 0, i32 13
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %Al2, align 8
  store i32 %3, ptr %Al, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next_output_byte, align 8
  %7 = load ptr, ptr %entropy, align 8
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 2
  store ptr %6, ptr %next_output_byte3, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %dest4, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %free_in_buffer, align 8
  %11 = load ptr, ptr %entropy, align 8
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i32 0, i32 3
  store i64 %10, ptr %free_in_buffer5, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 29
  %13 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i32 0, i32 12
  %15 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %16 = load ptr, ptr %entropy, align 8
  %17 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %16, i32 noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  store i32 0, ptr %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %19 = load i32, ptr %blkn, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 45
  %21 = load i32, ptr %blocks_in_MCU, align 8
  %cmp8 = icmp slt i32 %19, %21
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %MCU_data.addr, align 8
  %23 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %idxprom
  %24 = load ptr, ptr %arrayidx, align 8
  store ptr %24, ptr %block, align 8
  %25 = load ptr, ptr %cinfo.addr, align 8
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 46
  %26 = load i32, ptr %blkn, align 4
  %idxprom9 = sext i32 %26 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr %MCU_membership, i64 0, i64 %idxprom9
  %27 = load i32, ptr %arrayidx10, align 4
  store i32 %27, ptr %ci, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 42
  %29 = load i32, ptr %ci, align 4
  %idxprom11 = sext i32 %29 to i64
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom11
  %30 = load ptr, ptr %arrayidx12, align 8
  store ptr %30, ptr %compptr, align 8
  %31 = load ptr, ptr %block, align 8
  %arrayidx13 = getelementptr inbounds [64 x i16], ptr %31, i64 0, i64 0
  %32 = load i16, ptr %arrayidx13, align 2
  %conv = sext i16 %32 to i32
  %33 = load i32, ptr %Al, align 4
  %shr = ashr i32 %conv, %33
  store i32 %shr, ptr %temp2, align 4
  %34 = load i32, ptr %temp2, align 4
  %35 = load ptr, ptr %entropy, align 8
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %35, i32 0, i32 7
  %36 = load i32, ptr %ci, align 4
  %idxprom14 = sext i32 %36 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom14
  %37 = load i32, ptr %arrayidx15, align 4
  %sub = sub nsw i32 %34, %37
  store i32 %sub, ptr %temp, align 4
  %38 = load i32, ptr %temp2, align 4
  %39 = load ptr, ptr %entropy, align 8
  %last_dc_val16 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %39, i32 0, i32 7
  %40 = load i32, ptr %ci, align 4
  %idxprom17 = sext i32 %40 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], ptr %last_dc_val16, i64 0, i64 %idxprom17
  store i32 %38, ptr %arrayidx18, align 4
  %41 = load i32, ptr %temp, align 4
  store i32 %41, ptr %temp2, align 4
  %42 = load i32, ptr %temp, align 4
  %cmp19 = icmp slt i32 %42, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.body
  %43 = load i32, ptr %temp, align 4
  %sub22 = sub nsw i32 0, %43
  store i32 %sub22, ptr %temp, align 4
  %44 = load i32, ptr %temp2, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, ptr %temp2, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %for.body
  store i32 0, ptr %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %45 = load i32, ptr %temp, align 4
  %tobool24 = icmp ne i32 %45, 0
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %nbits, align 4
  %47 = load i32, ptr %temp, align 4
  %shr25 = ashr i32 %47, 1
  store i32 %shr25, ptr %temp, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %48 = load ptr, ptr %entropy, align 8
  %49 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %dc_tbl_no, align 4
  %51 = load i32, ptr %nbits, align 4
  call void @emit_symbol(ptr noundef %48, i32 noundef %50, i32 noundef %51)
  %52 = load i32, ptr %nbits, align 4
  %tobool26 = icmp ne i32 %52, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %while.end
  %53 = load ptr, ptr %entropy, align 8
  %54 = load i32, ptr %temp2, align 4
  %55 = load i32, ptr %nbits, align 4
  call void @emit_bits(ptr noundef %53, i32 noundef %54, i32 noundef %55)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %56 = load i32, ptr %blkn, align 4
  %inc29 = add nsw i32 %56, 1
  store i32 %inc29, ptr %blkn, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr %entropy, align 8
  %next_output_byte30 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %next_output_byte30, align 8
  %59 = load ptr, ptr %cinfo.addr, align 8
  %dest31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i32 0, i32 5
  %60 = load ptr, ptr %dest31, align 8
  %next_output_byte32 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %60, i32 0, i32 0
  store ptr %58, ptr %next_output_byte32, align 8
  %61 = load ptr, ptr %entropy, align 8
  %free_in_buffer33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %61, i32 0, i32 3
  %62 = load i64, ptr %free_in_buffer33, align 8
  %63 = load ptr, ptr %cinfo.addr, align 8
  %dest34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i32 0, i32 5
  %64 = load ptr, ptr %dest34, align 8
  %free_in_buffer35 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %64, i32 0, i32 1
  store i64 %62, ptr %free_in_buffer35, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %65, i32 0, i32 29
  %66 = load i32, ptr %restart_interval36, align 8
  %tobool37 = icmp ne i32 %66, 0
  br i1 %tobool37, label %if.then38, label %if.end51

if.then38:                                        ; preds = %for.end
  %67 = load ptr, ptr %entropy, align 8
  %restarts_to_go39 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %67, i32 0, i32 12
  %68 = load i32, ptr %restarts_to_go39, align 8
  %cmp40 = icmp eq i32 %68, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.then38
  %69 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i32 0, i32 29
  %70 = load i32, ptr %restart_interval43, align 8
  %71 = load ptr, ptr %entropy, align 8
  %restarts_to_go44 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %71, i32 0, i32 12
  store i32 %70, ptr %restarts_to_go44, align 8
  %72 = load ptr, ptr %entropy, align 8
  %next_restart_num45 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %72, i32 0, i32 13
  %73 = load i32, ptr %next_restart_num45, align 4
  %inc46 = add nsw i32 %73, 1
  store i32 %inc46, ptr %next_restart_num45, align 4
  %74 = load ptr, ptr %entropy, align 8
  %next_restart_num47 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %74, i32 0, i32 13
  %75 = load i32, ptr %next_restart_num47, align 4
  %and = and i32 %75, 7
  store i32 %and, ptr %next_restart_num47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.then38
  %76 = load ptr, ptr %entropy, align 8
  %restarts_to_go49 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %76, i32 0, i32 12
  %77 = load i32, ptr %restarts_to_go49, align 8
  %dec50 = add i32 %77, -1
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 48
  %3 = load i32, ptr %Se2, align 8
  store i32 %3, ptr %Se, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 50
  %5 = load i32, ptr %Al3, align 8
  store i32 %5, ptr %Al, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next_output_byte, align 8
  %9 = load ptr, ptr %entropy, align 8
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %9, i32 0, i32 2
  store ptr %8, ptr %next_output_byte4, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %dest5, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %free_in_buffer, align 8
  %13 = load ptr, ptr %entropy, align 8
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %13, i32 0, i32 3
  store i64 %12, ptr %free_in_buffer6, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 29
  %15 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %16, i32 0, i32 12
  %17 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %18 = load ptr, ptr %entropy, align 8
  %19 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %19, i32 0, i32 13
  %20 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %18, i32 noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %21 = load ptr, ptr %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx, align 8
  store ptr %22, ptr %block, align 8
  store i32 0, ptr %r, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 47
  %24 = load i32, ptr %Ss, align 4
  store i32 %24, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %25 = load i32, ptr %k, align 4
  %26 = load i32, ptr %Se, align 4
  %cmp9 = icmp sle i32 %25, %26
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %block, align 8
  %28 = load i32, ptr %k, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom
  %29 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %29 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], ptr %27, i64 0, i64 %idxprom11
  %30 = load i16, ptr %arrayidx12, align 2
  %conv = sext i16 %30 to i32
  store i32 %conv, ptr %temp, align 4
  %cmp13 = icmp eq i32 %conv, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  %31 = load i32, ptr %r, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %r, align 4
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %32 = load i32, ptr %temp, align 4
  %cmp17 = icmp slt i32 %32, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %33 = load i32, ptr %temp, align 4
  %sub = sub nsw i32 0, %33
  store i32 %sub, ptr %temp, align 4
  %34 = load i32, ptr %Al, align 4
  %35 = load i32, ptr %temp, align 4
  %shr = ashr i32 %35, %34
  store i32 %shr, ptr %temp, align 4
  %36 = load i32, ptr %temp, align 4
  %neg = xor i32 %36, -1
  store i32 %neg, ptr %temp2, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end16
  %37 = load i32, ptr %Al, align 4
  %38 = load i32, ptr %temp, align 4
  %shr20 = ashr i32 %38, %37
  store i32 %shr20, ptr %temp, align 4
  %39 = load i32, ptr %temp, align 4
  store i32 %39, ptr %temp2, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %40 = load i32, ptr %temp, align 4
  %cmp22 = icmp eq i32 %40, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %41 = load i32, ptr %r, align 4
  %inc25 = add nsw i32 %41, 1
  store i32 %inc25, ptr %r, align 4
  br label %for.inc

if.end26:                                         ; preds = %if.end21
  %42 = load ptr, ptr %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %42, i32 0, i32 9
  %43 = load i32, ptr %EOBRUN, align 4
  %cmp27 = icmp ugt i32 %43, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  %44 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %44)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end30
  %45 = load i32, ptr %r, align 4
  %cmp31 = icmp sgt i32 %45, 15
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load ptr, ptr %entropy, align 8
  %47 = load ptr, ptr %entropy, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %47, i32 0, i32 8
  %48 = load i32, ptr %ac_tbl_no, align 8
  call void @emit_symbol(ptr noundef %46, i32 noundef %48, i32 noundef 240)
  %49 = load i32, ptr %r, align 4
  %sub33 = sub nsw i32 %49, 16
  store i32 %sub33, ptr %r, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %nbits, align 4
  br label %while.cond34

while.cond34:                                     ; preds = %while.body37, %while.end
  %50 = load i32, ptr %temp, align 4
  %shr35 = ashr i32 %50, 1
  store i32 %shr35, ptr %temp, align 4
  %tobool36 = icmp ne i32 %shr35, 0
  br i1 %tobool36, label %while.body37, label %while.end39

while.body37:                                     ; preds = %while.cond34
  %51 = load i32, ptr %nbits, align 4
  %inc38 = add nsw i32 %51, 1
  store i32 %inc38, ptr %nbits, align 4
  br label %while.cond34, !llvm.loop !12

while.end39:                                      ; preds = %while.cond34
  %52 = load ptr, ptr %entropy, align 8
  %53 = load ptr, ptr %entropy, align 8
  %ac_tbl_no40 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %53, i32 0, i32 8
  %54 = load i32, ptr %ac_tbl_no40, align 8
  %55 = load i32, ptr %r, align 4
  %shl = shl i32 %55, 4
  %56 = load i32, ptr %nbits, align 4
  %add = add nsw i32 %shl, %56
  call void @emit_symbol(ptr noundef %52, i32 noundef %54, i32 noundef %add)
  %57 = load ptr, ptr %entropy, align 8
  %58 = load i32, ptr %temp2, align 4
  %59 = load i32, ptr %nbits, align 4
  call void @emit_bits(ptr noundef %57, i32 noundef %58, i32 noundef %59)
  store i32 0, ptr %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end39, %if.then24, %if.then15
  %60 = load i32, ptr %k, align 4
  %inc41 = add nsw i32 %60, 1
  store i32 %inc41, ptr %k, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %61 = load i32, ptr %r, align 4
  %cmp42 = icmp sgt i32 %61, 0
  br i1 %cmp42, label %if.then44, label %if.end52

if.then44:                                        ; preds = %for.end
  %62 = load ptr, ptr %entropy, align 8
  %EOBRUN45 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %62, i32 0, i32 9
  %63 = load i32, ptr %EOBRUN45, align 4
  %inc46 = add i32 %63, 1
  store i32 %inc46, ptr %EOBRUN45, align 4
  %64 = load ptr, ptr %entropy, align 8
  %EOBRUN47 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %64, i32 0, i32 9
  %65 = load i32, ptr %EOBRUN47, align 4
  %cmp48 = icmp eq i32 %65, 32767
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then44
  %66 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %66)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then44
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %for.end
  %67 = load ptr, ptr %entropy, align 8
  %next_output_byte53 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %67, i32 0, i32 2
  %68 = load ptr, ptr %next_output_byte53, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  %dest54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i32 0, i32 5
  %70 = load ptr, ptr %dest54, align 8
  %next_output_byte55 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %70, i32 0, i32 0
  store ptr %68, ptr %next_output_byte55, align 8
  %71 = load ptr, ptr %entropy, align 8
  %free_in_buffer56 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %71, i32 0, i32 3
  %72 = load i64, ptr %free_in_buffer56, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  %dest57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i32 0, i32 5
  %74 = load ptr, ptr %dest57, align 8
  %free_in_buffer58 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %74, i32 0, i32 1
  store i64 %72, ptr %free_in_buffer58, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval59 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %75, i32 0, i32 29
  %76 = load i32, ptr %restart_interval59, align 8
  %tobool60 = icmp ne i32 %76, 0
  br i1 %tobool60, label %if.then61, label %if.end73

if.then61:                                        ; preds = %if.end52
  %77 = load ptr, ptr %entropy, align 8
  %restarts_to_go62 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %77, i32 0, i32 12
  %78 = load i32, ptr %restarts_to_go62, align 8
  %cmp63 = icmp eq i32 %78, 0
  br i1 %cmp63, label %if.then65, label %if.end71

if.then65:                                        ; preds = %if.then61
  %79 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval66 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %79, i32 0, i32 29
  %80 = load i32, ptr %restart_interval66, align 8
  %81 = load ptr, ptr %entropy, align 8
  %restarts_to_go67 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %81, i32 0, i32 12
  store i32 %80, ptr %restarts_to_go67, align 8
  %82 = load ptr, ptr %entropy, align 8
  %next_restart_num68 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %82, i32 0, i32 13
  %83 = load i32, ptr %next_restart_num68, align 4
  %inc69 = add nsw i32 %83, 1
  store i32 %inc69, ptr %next_restart_num68, align 4
  %84 = load ptr, ptr %entropy, align 8
  %next_restart_num70 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %84, i32 0, i32 13
  %85 = load i32, ptr %next_restart_num70, align 4
  %and = and i32 %85, 7
  store i32 %and, ptr %next_restart_num70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.then61
  %86 = load ptr, ptr %entropy, align 8
  %restarts_to_go72 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %86, i32 0, i32 12
  %87 = load i32, ptr %restarts_to_go72, align 8
  %dec = add i32 %87, -1
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
  %temp = alloca i32, align 4
  %blkn = alloca i32, align 4
  %Al = alloca i32, align 4
  %block = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %MCU_data, ptr %MCU_data.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Al2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %Al2, align 8
  store i32 %3, ptr %Al, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next_output_byte, align 8
  %7 = load ptr, ptr %entropy, align 8
  %next_output_byte3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 2
  store ptr %6, ptr %next_output_byte3, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %dest4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %dest4, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %free_in_buffer, align 8
  %11 = load ptr, ptr %entropy, align 8
  %free_in_buffer5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i32 0, i32 3
  store i64 %10, ptr %free_in_buffer5, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 29
  %13 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i32 0, i32 12
  %15 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %16 = load ptr, ptr %entropy, align 8
  %17 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %16, i32 noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  store i32 0, ptr %blkn, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %19 = load i32, ptr %blkn, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 45
  %21 = load i32, ptr %blocks_in_MCU, align 8
  %cmp8 = icmp slt i32 %19, %21
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %MCU_data.addr, align 8
  %23 = load i32, ptr %blkn, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %22, i64 %idxprom
  %24 = load ptr, ptr %arrayidx, align 8
  store ptr %24, ptr %block, align 8
  %25 = load ptr, ptr %block, align 8
  %arrayidx9 = getelementptr inbounds [64 x i16], ptr %25, i64 0, i64 0
  %26 = load i16, ptr %arrayidx9, align 2
  %conv = sext i16 %26 to i32
  store i32 %conv, ptr %temp, align 4
  %27 = load ptr, ptr %entropy, align 8
  %28 = load i32, ptr %temp, align 4
  %29 = load i32, ptr %Al, align 4
  %shr = ashr i32 %28, %29
  call void @emit_bits(ptr noundef %27, i32 noundef %shr, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %blkn, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %blkn, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %entropy, align 8
  %next_output_byte10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %next_output_byte10, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %dest11, align 8
  %next_output_byte12 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %34, i32 0, i32 0
  store ptr %32, ptr %next_output_byte12, align 8
  %35 = load ptr, ptr %entropy, align 8
  %free_in_buffer13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %35, i32 0, i32 3
  %36 = load i64, ptr %free_in_buffer13, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %dest14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %dest14, align 8
  %free_in_buffer15 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %38, i32 0, i32 1
  store i64 %36, ptr %free_in_buffer15, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 29
  %40 = load i32, ptr %restart_interval16, align 8
  %tobool17 = icmp ne i32 %40, 0
  br i1 %tobool17, label %if.then18, label %if.end30

if.then18:                                        ; preds = %for.end
  %41 = load ptr, ptr %entropy, align 8
  %restarts_to_go19 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %41, i32 0, i32 12
  %42 = load i32, ptr %restarts_to_go19, align 8
  %cmp20 = icmp eq i32 %42, 0
  br i1 %cmp20, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.then18
  %43 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 29
  %44 = load i32, ptr %restart_interval23, align 8
  %45 = load ptr, ptr %entropy, align 8
  %restarts_to_go24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %45, i32 0, i32 12
  store i32 %44, ptr %restarts_to_go24, align 8
  %46 = load ptr, ptr %entropy, align 8
  %next_restart_num25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %46, i32 0, i32 13
  %47 = load i32, ptr %next_restart_num25, align 4
  %inc26 = add nsw i32 %47, 1
  store i32 %inc26, ptr %next_restart_num25, align 4
  %48 = load ptr, ptr %entropy, align 8
  %next_restart_num27 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %48, i32 0, i32 13
  %49 = load i32, ptr %next_restart_num27, align 4
  %and = and i32 %49, 7
  store i32 %and, ptr %next_restart_num27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.then18
  %50 = load ptr, ptr %entropy, align 8
  %restarts_to_go29 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %50, i32 0, i32 12
  %51 = load i32, ptr %restarts_to_go29, align 8
  %dec = add i32 %51, -1
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %Se2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 48
  %3 = load i32, ptr %Se2, align 8
  store i32 %3, ptr %Se, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %Al3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 50
  %5 = load i32, ptr %Al3, align 8
  store i32 %5, ptr %Al, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %next_output_byte, align 8
  %9 = load ptr, ptr %entropy, align 8
  %next_output_byte4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %9, i32 0, i32 2
  store ptr %8, ptr %next_output_byte4, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %dest5, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %free_in_buffer, align 8
  %13 = load ptr, ptr %entropy, align 8
  %free_in_buffer6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %13, i32 0, i32 3
  store i64 %12, ptr %free_in_buffer6, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 29
  %15 = load i32, ptr %restart_interval, align 8
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %entropy, align 8
  %restarts_to_go = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %16, i32 0, i32 12
  %17 = load i32, ptr %restarts_to_go, align 8
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %18 = load ptr, ptr %entropy, align 8
  %19 = load ptr, ptr %entropy, align 8
  %next_restart_num = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %19, i32 0, i32 13
  %20 = load i32, ptr %next_restart_num, align 4
  call void @emit_restart(ptr noundef %18, i32 noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %21 = load ptr, ptr %MCU_data.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx, align 8
  store ptr %22, ptr %block, align 8
  store i32 0, ptr %EOB, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 47
  %24 = load i32, ptr %Ss, align 4
  store i32 %24, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %25 = load i32, ptr %k, align 4
  %26 = load i32, ptr %Se, align 4
  %cmp9 = icmp sle i32 %25, %26
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %block, align 8
  %28 = load i32, ptr %k, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom
  %29 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %29 to i64
  %arrayidx12 = getelementptr inbounds [64 x i16], ptr %27, i64 0, i64 %idxprom11
  %30 = load i16, ptr %arrayidx12, align 2
  %conv = sext i16 %30 to i32
  store i32 %conv, ptr %temp, align 4
  %31 = load i32, ptr %temp, align 4
  %cmp13 = icmp slt i32 %31, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  %32 = load i32, ptr %temp, align 4
  %sub = sub nsw i32 0, %32
  store i32 %sub, ptr %temp, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body
  %33 = load i32, ptr %Al, align 4
  %34 = load i32, ptr %temp, align 4
  %shr = ashr i32 %34, %33
  store i32 %shr, ptr %temp, align 4
  %35 = load i32, ptr %temp, align 4
  %36 = load i32, ptr %k, align 4
  %idxprom17 = sext i32 %36 to i64
  %arrayidx18 = getelementptr inbounds [64 x i32], ptr %absvalues, i64 0, i64 %idxprom17
  store i32 %35, ptr %arrayidx18, align 4
  %37 = load i32, ptr %temp, align 4
  %cmp19 = icmp eq i32 %37, 1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  %38 = load i32, ptr %k, align 4
  store i32 %38, ptr %EOB, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %39 = load i32, ptr %k, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %r, align 4
  store i32 0, ptr %BR, align 4
  %40 = load ptr, ptr %entropy, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %40, i32 0, i32 11
  %41 = load ptr, ptr %bit_buffer, align 8
  %42 = load ptr, ptr %entropy, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %42, i32 0, i32 10
  %43 = load i32, ptr %BE, align 8
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %BR_buffer, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %Ss23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i32 0, i32 47
  %45 = load i32, ptr %Ss23, align 4
  store i32 %45, ptr %k, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc58, %for.end
  %46 = load i32, ptr %k, align 4
  %47 = load i32, ptr %Se, align 4
  %cmp25 = icmp sle i32 %46, %47
  br i1 %cmp25, label %for.body27, label %for.end60

for.body27:                                       ; preds = %for.cond24
  %48 = load i32, ptr %k, align 4
  %idxprom28 = sext i32 %48 to i64
  %arrayidx29 = getelementptr inbounds [64 x i32], ptr %absvalues, i64 0, i64 %idxprom28
  %49 = load i32, ptr %arrayidx29, align 4
  store i32 %49, ptr %temp, align 4
  %cmp30 = icmp eq i32 %49, 0
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %for.body27
  %50 = load i32, ptr %r, align 4
  %inc33 = add nsw i32 %50, 1
  store i32 %inc33, ptr %r, align 4
  br label %for.inc58

if.end34:                                         ; preds = %for.body27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end34
  %51 = load i32, ptr %r, align 4
  %cmp35 = icmp sgt i32 %51, 15
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %52 = load i32, ptr %k, align 4
  %53 = load i32, ptr %EOB, align 4
  %cmp37 = icmp sle i32 %52, %53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %54 = phi i1 [ false, %while.cond ], [ %cmp37, %land.rhs ]
  br i1 %54, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %55 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %55)
  %56 = load ptr, ptr %entropy, align 8
  %57 = load ptr, ptr %entropy, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %57, i32 0, i32 8
  %58 = load i32, ptr %ac_tbl_no, align 8
  call void @emit_symbol(ptr noundef %56, i32 noundef %58, i32 noundef 240)
  %59 = load i32, ptr %r, align 4
  %sub39 = sub nsw i32 %59, 16
  store i32 %sub39, ptr %r, align 4
  %60 = load ptr, ptr %entropy, align 8
  %61 = load ptr, ptr %BR_buffer, align 8
  %62 = load i32, ptr %BR, align 4
  call void @emit_buffered_bits(ptr noundef %60, ptr noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %entropy, align 8
  %bit_buffer40 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %63, i32 0, i32 11
  %64 = load ptr, ptr %bit_buffer40, align 8
  store ptr %64, ptr %BR_buffer, align 8
  store i32 0, ptr %BR, align 4
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %land.end
  %65 = load i32, ptr %temp, align 4
  %cmp41 = icmp sgt i32 %65, 1
  br i1 %cmp41, label %if.then43, label %if.end48

if.then43:                                        ; preds = %while.end
  %66 = load i32, ptr %temp, align 4
  %and = and i32 %66, 1
  %conv44 = trunc i32 %and to i8
  %67 = load ptr, ptr %BR_buffer, align 8
  %68 = load i32, ptr %BR, align 4
  %inc45 = add i32 %68, 1
  store i32 %inc45, ptr %BR, align 4
  %idxprom46 = zext i32 %68 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %67, i64 %idxprom46
  store i8 %conv44, ptr %arrayidx47, align 1
  br label %for.inc58

if.end48:                                         ; preds = %while.end
  %69 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %69)
  %70 = load ptr, ptr %entropy, align 8
  %71 = load ptr, ptr %entropy, align 8
  %ac_tbl_no49 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %71, i32 0, i32 8
  %72 = load i32, ptr %ac_tbl_no49, align 8
  %73 = load i32, ptr %r, align 4
  %shl = shl i32 %73, 4
  %add = add nsw i32 %shl, 1
  call void @emit_symbol(ptr noundef %70, i32 noundef %72, i32 noundef %add)
  %74 = load ptr, ptr %block, align 8
  %75 = load i32, ptr %k, align 4
  %idxprom50 = sext i32 %75 to i64
  %arrayidx51 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom50
  %76 = load i32, ptr %arrayidx51, align 4
  %idxprom52 = sext i32 %76 to i64
  %arrayidx53 = getelementptr inbounds [64 x i16], ptr %74, i64 0, i64 %idxprom52
  %77 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %77 to i32
  %cmp55 = icmp slt i32 %conv54, 0
  %78 = zext i1 %cmp55 to i64
  %cond = select i1 %cmp55, i32 0, i32 1
  store i32 %cond, ptr %temp, align 4
  %79 = load ptr, ptr %entropy, align 8
  %80 = load i32, ptr %temp, align 4
  call void @emit_bits(ptr noundef %79, i32 noundef %80, i32 noundef 1)
  %81 = load ptr, ptr %entropy, align 8
  %82 = load ptr, ptr %BR_buffer, align 8
  %83 = load i32, ptr %BR, align 4
  call void @emit_buffered_bits(ptr noundef %81, ptr noundef %82, i32 noundef %83)
  %84 = load ptr, ptr %entropy, align 8
  %bit_buffer57 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %84, i32 0, i32 11
  %85 = load ptr, ptr %bit_buffer57, align 8
  store ptr %85, ptr %BR_buffer, align 8
  store i32 0, ptr %BR, align 4
  store i32 0, ptr %r, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %if.end48, %if.then43, %if.then32
  %86 = load i32, ptr %k, align 4
  %inc59 = add nsw i32 %86, 1
  store i32 %inc59, ptr %k, align 4
  br label %for.cond24, !llvm.loop !17

for.end60:                                        ; preds = %for.cond24
  %87 = load i32, ptr %r, align 4
  %cmp61 = icmp sgt i32 %87, 0
  br i1 %cmp61, label %if.then65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end60
  %88 = load i32, ptr %BR, align 4
  %cmp63 = icmp ugt i32 %88, 0
  br i1 %cmp63, label %if.then65, label %if.end78

if.then65:                                        ; preds = %lor.lhs.false, %for.end60
  %89 = load ptr, ptr %entropy, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %89, i32 0, i32 9
  %90 = load i32, ptr %EOBRUN, align 4
  %inc66 = add i32 %90, 1
  store i32 %inc66, ptr %EOBRUN, align 4
  %91 = load i32, ptr %BR, align 4
  %92 = load ptr, ptr %entropy, align 8
  %BE67 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %92, i32 0, i32 10
  %93 = load i32, ptr %BE67, align 8
  %add68 = add i32 %93, %91
  store i32 %add68, ptr %BE67, align 8
  %94 = load ptr, ptr %entropy, align 8
  %EOBRUN69 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %94, i32 0, i32 9
  %95 = load i32, ptr %EOBRUN69, align 4
  %cmp70 = icmp eq i32 %95, 32767
  br i1 %cmp70, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then65
  %96 = load ptr, ptr %entropy, align 8
  %BE73 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %96, i32 0, i32 10
  %97 = load i32, ptr %BE73, align 8
  %cmp74 = icmp ugt i32 %97, 937
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %lor.lhs.false72, %if.then65
  %98 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %98)
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %lor.lhs.false72
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %lor.lhs.false
  %99 = load ptr, ptr %entropy, align 8
  %next_output_byte79 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %99, i32 0, i32 2
  %100 = load ptr, ptr %next_output_byte79, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  %dest80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %101, i32 0, i32 5
  %102 = load ptr, ptr %dest80, align 8
  %next_output_byte81 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %102, i32 0, i32 0
  store ptr %100, ptr %next_output_byte81, align 8
  %103 = load ptr, ptr %entropy, align 8
  %free_in_buffer82 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %103, i32 0, i32 3
  %104 = load i64, ptr %free_in_buffer82, align 8
  %105 = load ptr, ptr %cinfo.addr, align 8
  %dest83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %105, i32 0, i32 5
  %106 = load ptr, ptr %dest83, align 8
  %free_in_buffer84 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %106, i32 0, i32 1
  store i64 %104, ptr %free_in_buffer84, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval85 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %107, i32 0, i32 29
  %108 = load i32, ptr %restart_interval85, align 8
  %tobool86 = icmp ne i32 %108, 0
  br i1 %tobool86, label %if.then87, label %if.end100

if.then87:                                        ; preds = %if.end78
  %109 = load ptr, ptr %entropy, align 8
  %restarts_to_go88 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %109, i32 0, i32 12
  %110 = load i32, ptr %restarts_to_go88, align 8
  %cmp89 = icmp eq i32 %110, 0
  br i1 %cmp89, label %if.then91, label %if.end98

if.then91:                                        ; preds = %if.then87
  %111 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %111, i32 0, i32 29
  %112 = load i32, ptr %restart_interval92, align 8
  %113 = load ptr, ptr %entropy, align 8
  %restarts_to_go93 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %113, i32 0, i32 12
  store i32 %112, ptr %restarts_to_go93, align 8
  %114 = load ptr, ptr %entropy, align 8
  %next_restart_num94 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %114, i32 0, i32 13
  %115 = load i32, ptr %next_restart_num94, align 4
  %inc95 = add nsw i32 %115, 1
  store i32 %inc95, ptr %next_restart_num94, align 4
  %116 = load ptr, ptr %entropy, align 8
  %next_restart_num96 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %116, i32 0, i32 13
  %117 = load i32, ptr %next_restart_num96, align 4
  %and97 = and i32 %117, 7
  store i32 %and97, ptr %next_restart_num96, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.then87
  %118 = load ptr, ptr %entropy, align 8
  %restarts_to_go99 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %118, i32 0, i32 12
  %119 = load i32, ptr %restarts_to_go99, align 8
  %dec = add i32 %119, -1
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %2)
  %3 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 47
  %4 = load i32, ptr %Ss, align 4
  %cmp = icmp eq i32 %4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %is_DC_band, align 4
  %arraydecay = getelementptr inbounds [4 x i32], ptr %did, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay, i8 0, i64 16, i1 false)
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %ci, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 41
  %7 = load i32, ptr %comps_in_scan, align 4
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 42
  %9 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  store ptr %10, ptr %compptr, align 8
  %11 = load i32, ptr %is_DC_band, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 49
  %13 = load i32, ptr %Ah, align 4
  %cmp4 = icmp ne i32 %13, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %dc_tbl_no, align 4
  store i32 %15, ptr %tbl, align 4
  br label %if.end7

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %ac_tbl_no, align 8
  store i32 %17, ptr %tbl, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %18 = load i32, ptr %tbl, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], ptr %did, i64 0, i64 %idxprom8
  %19 = load i32, ptr %arrayidx9, align 4
  %tobool10 = icmp ne i32 %19, 0
  br i1 %tobool10, label %if.end28, label %if.then11

if.then11:                                        ; preds = %if.end7
  %20 = load i32, ptr %is_DC_band, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.then11
  %21 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 16
  %22 = load i32, ptr %tbl, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom14
  store ptr %arrayidx15, ptr %htblptr, align 8
  br label %if.end19

if.else16:                                        ; preds = %if.then11
  %23 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 17
  %24 = load i32, ptr %tbl, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom17
  store ptr %arrayidx18, ptr %htblptr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.then13
  %25 = load ptr, ptr %htblptr, align 8
  %26 = load ptr, ptr %25, align 8
  %cmp20 = icmp eq ptr %26, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %27 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr @jpeg_alloc_huff_table(ptr noundef %27)
  %28 = load ptr, ptr %htblptr, align 8
  store ptr %call, ptr %28, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  %29 = load ptr, ptr %cinfo.addr, align 8
  %30 = load ptr, ptr %htblptr, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %entropy, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %32, i32 0, i32 15
  %33 = load i32, ptr %tbl, align 4
  %idxprom24 = sext i32 %33 to i64
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %count_ptrs, i64 0, i64 %idxprom24
  %34 = load ptr, ptr %arrayidx25, align 8
  call void @jpeg_gen_optimal_table(ptr noundef %29, ptr noundef %31, ptr noundef %34)
  %35 = load i32, ptr %tbl, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr %did, i64 0, i64 %idxprom26
  store i32 1, ptr %arrayidx27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.end7
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.then6
  %36 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %ci, align 4
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %entropy1, align 8
  store ptr %1, ptr %entropy, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next_output_byte, align 8
  %5 = load ptr, ptr %entropy, align 8
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i32 0, i32 2
  store ptr %4, ptr %next_output_byte2, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %dest3, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i32 0, i32 1
  %8 = load i64, ptr %free_in_buffer, align 8
  %9 = load ptr, ptr %entropy, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %9, i32 0, i32 3
  store i64 %8, ptr %free_in_buffer4, align 8
  %10 = load ptr, ptr %entropy, align 8
  call void @emit_eobrun(ptr noundef %10)
  %11 = load ptr, ptr %entropy, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcphuff_0(ptr noundef %11)
  %12 = load ptr, ptr %entropy, align 8
  %next_output_byte5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %next_output_byte5, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %dest6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %dest6, align 8
  %next_output_byte7 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %15, i32 0, i32 0
  store ptr %13, ptr %next_output_byte7, align 8
  %16 = load ptr, ptr %entropy, align 8
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %16, i32 0, i32 3
  %17 = load i64, ptr %free_in_buffer8, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %dest9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %dest9, align 8
  %free_in_buffer10 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %19, i32 0, i32 1
  store i64 %17, ptr %free_in_buffer10, align 8
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
  %0 = load ptr, ptr %entropy.addr, align 8
  call void @emit_eobrun(ptr noundef %0)
  %1 = load ptr, ptr %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %gather_statistics, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %entropy.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcphuff_1(ptr noundef %3)
  %4 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8
  store i8 -1, ptr %5, align 1
  %6 = load ptr, ptr %entropy.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %7, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %8 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %9 = load i32, ptr %restart_num.addr, align 4
  %add = add nsw i32 208, %9
  %conv = trunc i32 %add to i8
  %10 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %next_output_byte2, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr3, ptr %next_output_byte2, align 8
  store i8 %conv, ptr %11, align 1
  %12 = load ptr, ptr %entropy.addr, align 8
  %free_in_buffer4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %free_in_buffer4, align 8
  %dec5 = add i64 %13, -1
  store i64 %dec5, ptr %free_in_buffer4, align 8
  %cmp6 = icmp eq i64 %dec5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %14 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %14)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %15 = load ptr, ptr %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %cinfo, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 47
  %17 = load i32, ptr %Ss, align 4
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then13
  %18 = load i32, ptr %ci, align 4
  %19 = load ptr, ptr %entropy.addr, align 8
  %cinfo14 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %cinfo14, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 41
  %21 = load i32, ptr %comps_in_scan, align 4
  %cmp15 = icmp slt i32 %18, %21
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %entropy.addr, align 8
  %last_dc_val = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %22, i32 0, i32 7
  %23 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %last_dc_val, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %ci, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  br label %if.end17

if.else:                                          ; preds = %if.end10
  %25 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %25, i32 0, i32 9
  store i32 0, ptr %EOBRUN, align 4
  %26 = load ptr, ptr %entropy.addr, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %26, i32 0, i32 10
  store i32 0, ptr %BE, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_symbol(ptr noundef %entropy, i32 noundef %tbl_no, i32 noundef %symbol) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %tbl_no.addr = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %tbl = alloca ptr, align 8
  store ptr %entropy, ptr %entropy.addr, align 8
  store i32 %tbl_no, ptr %tbl_no.addr, align 4
  store i32 %symbol, ptr %symbol.addr, align 4
  %0 = load ptr, ptr %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %gather_statistics, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %entropy.addr, align 8
  %count_ptrs = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %tbl_no.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %count_ptrs, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load i32, ptr %symbol.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i64, ptr %4, i64 %idxprom1
  %6 = load i64, ptr %arrayidx2, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, ptr %arrayidx2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %entropy.addr, align 8
  %derived_tbls = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 14
  %8 = load i32, ptr %tbl_no.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [4 x ptr], ptr %derived_tbls, i64 0, i64 %idxprom3
  %9 = load ptr, ptr %arrayidx4, align 8
  store ptr %9, ptr %tbl, align 8
  %10 = load ptr, ptr %entropy.addr, align 8
  %11 = load ptr, ptr %tbl, align 8
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %symbol.addr, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [256 x i32], ptr %ehufco, i64 0, i64 %idxprom5
  %13 = load i32, ptr %arrayidx6, align 4
  %14 = load ptr, ptr %tbl, align 8
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %symbol.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr %ehufsi, i64 0, i64 %idxprom7
  %16 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %16 to i32
  call void @emit_bits(ptr noundef %10, i32 noundef %13, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_bits(ptr noundef %entropy, i32 noundef %code, i32 noundef %size) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  store i32 %code, ptr %code.addr, align 4
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, ptr %put_buffer, align 8
  %1 = load ptr, ptr %entropy.addr, align 8
  %put_bits1 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %put_bits1, align 8
  store i32 %2, ptr %put_bits, align 4
  %3 = load i32, ptr %size.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %cinfo, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 5
  store i32 39, ptr %msg_code, align 8
  %7 = load ptr, ptr %entropy.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %cinfo3, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %entropy.addr, align 8
  %cinfo5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %cinfo5, align 8
  call void %10(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %gather_statistics, align 8
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %return

if.end7:                                          ; preds = %if.end
  %15 = load i32, ptr %size.addr, align 4
  %sh_prom = zext i32 %15 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %16 = load i64, ptr %put_buffer, align 8
  %and = and i64 %16, %sub
  store i64 %and, ptr %put_buffer, align 8
  %17 = load i32, ptr %size.addr, align 4
  %18 = load i32, ptr %put_bits, align 4
  %add = add nsw i32 %18, %17
  store i32 %add, ptr %put_bits, align 4
  %19 = load i32, ptr %put_bits, align 4
  %sub8 = sub nsw i32 24, %19
  %20 = load i64, ptr %put_buffer, align 8
  %sh_prom9 = zext i32 %sub8 to i64
  %shl10 = shl i64 %20, %sh_prom9
  store i64 %shl10, ptr %put_buffer, align 8
  %21 = load ptr, ptr %entropy.addr, align 8
  %put_buffer11 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %21, i32 0, i32 4
  %22 = load i64, ptr %put_buffer11, align 8
  %23 = load i64, ptr %put_buffer, align 8
  %or = or i64 %23, %22
  store i64 %or, ptr %put_buffer, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.end7
  %24 = load i32, ptr %put_bits, align 4
  %cmp12 = icmp sge i32 %24, 8
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i64, ptr %put_buffer, align 8
  %shr = ashr i64 %25, 16
  %and14 = and i64 %shr, 255
  %conv15 = trunc i64 %and14 to i32
  store i32 %conv15, ptr %c, align 4
  %26 = load i32, ptr %c, align 4
  %conv16 = trunc i32 %26 to i8
  %27 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8
  store i8 %conv16, ptr %28, align 1
  %29 = load ptr, ptr %entropy.addr, align 8
  %free_in_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %29, i32 0, i32 3
  %30 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %30, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp17 = icmp eq i64 %dec, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body
  %31 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %31)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %while.body
  %32 = load i32, ptr %c, align 4
  %cmp21 = icmp eq i32 %32, 255
  br i1 %cmp21, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end20
  %33 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %next_output_byte24, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr25, ptr %next_output_byte24, align 8
  store i8 0, ptr %34, align 1
  %35 = load ptr, ptr %entropy.addr, align 8
  %free_in_buffer26 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %35, i32 0, i32 3
  %36 = load i64, ptr %free_in_buffer26, align 8
  %dec27 = add i64 %36, -1
  store i64 %dec27, ptr %free_in_buffer26, align 8
  %cmp28 = icmp eq i64 %dec27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then23
  %37 = load ptr, ptr %entropy.addr, align 8
  call void @dump_buffer(ptr noundef %37)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then23
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end20
  %38 = load i64, ptr %put_buffer, align 8
  %shl33 = shl i64 %38, 8
  store i64 %shl33, ptr %put_buffer, align 8
  %39 = load i32, ptr %put_bits, align 4
  %sub34 = sub nsw i32 %39, 8
  store i32 %sub34, ptr %put_bits, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %40 = load i64, ptr %put_buffer, align 8
  %41 = load ptr, ptr %entropy.addr, align 8
  %put_buffer35 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %41, i32 0, i32 4
  store i64 %40, ptr %put_buffer35, align 8
  %42 = load i32, ptr %put_bits, align 4
  %43 = load ptr, ptr %entropy.addr, align 8
  %put_bits36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %43, i32 0, i32 5
  store i32 %42, ptr %put_bits36, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_eobrun(ptr noundef %entropy) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  %0 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %EOBRUN, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN1 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %EOBRUN1, align 4
  store i32 %3, ptr %temp, align 4
  store i32 0, ptr %nbits, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, ptr %temp, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, ptr %temp, align 4
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %nbits, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %nbits, align 4
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %entropy.addr, align 8
  %7 = load ptr, ptr %entropy.addr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 8
  %8 = load i32, ptr %ac_tbl_no, align 8
  %9 = load i32, ptr %nbits, align 4
  %shl = shl i32 %9, 4
  call void @emit_symbol(ptr noundef %6, i32 noundef %8, i32 noundef %shl)
  %10 = load i32, ptr %nbits, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.end
  %11 = load ptr, ptr %entropy.addr, align 8
  %12 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %12, i32 0, i32 9
  %13 = load i32, ptr %EOBRUN4, align 4
  %14 = load i32, ptr %nbits, align 4
  call void @emit_bits(ptr noundef %11, i32 noundef %13, i32 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then3, %while.end
  %15 = load ptr, ptr %entropy.addr, align 8
  %EOBRUN5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %15, i32 0, i32 9
  store i32 0, ptr %EOBRUN5, align 4
  %16 = load ptr, ptr %entropy.addr, align 8
  %17 = load ptr, ptr %entropy.addr, align 8
  %bit_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %bit_buffer, align 8
  %19 = load ptr, ptr %entropy.addr, align 8
  %BE = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %19, i32 0, i32 10
  %20 = load i32, ptr %BE, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcphuff_2(ptr noundef %16, ptr noundef %18, i32 noundef %20)
  %21 = load ptr, ptr %entropy.addr, align 8
  %BE6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %21, i32 0, i32 10
  store i32 0, ptr %BE6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @flush_bits(ptr noundef %entropy) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  store ptr %entropy, ptr %entropy.addr, align 8
  %0 = load ptr, ptr %entropy.addr, align 8
  call void @emit_bits(ptr noundef %0, i32 noundef 127, i32 noundef 7)
  %1 = load ptr, ptr %entropy.addr, align 8
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i32 0, i32 4
  store i64 0, ptr %put_buffer, align 8
  %2 = load ptr, ptr %entropy.addr, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %2, i32 0, i32 5
  store i32 0, ptr %put_bits, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @dump_buffer(ptr noundef %entropy) #0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %entropy, ptr %entropy.addr, align 8
  %0 = load ptr, ptr %entropy.addr, align 8
  %cinfo = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %cinfo, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %dest1, align 8
  store ptr %2, ptr %dest, align 8
  %3 = load ptr, ptr %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %empty_output_buffer, align 8
  %5 = load ptr, ptr %entropy.addr, align 8
  %cinfo2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %cinfo2, align 8
  %call = call i32 %4(ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %entropy.addr, align 8
  %cinfo3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %cinfo3, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %10 = load ptr, ptr %entropy.addr, align 8
  %cinfo4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %cinfo4, align 8
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8
  %14 = load ptr, ptr %entropy.addr, align 8
  %cinfo6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %cinfo6, align 8
  call void %13(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next_output_byte, align 8
  %18 = load ptr, ptr %entropy.addr, align 8
  %next_output_byte7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %18, i32 0, i32 2
  store ptr %17, ptr %next_output_byte7, align 8
  %19 = load ptr, ptr %dest, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %19, i32 0, i32 1
  %20 = load i64, ptr %free_in_buffer, align 8
  %21 = load ptr, ptr %entropy.addr, align 8
  %free_in_buffer8 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %21, i32 0, i32 3
  store i64 %20, ptr %free_in_buffer8, align 8
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
  %0 = load ptr, ptr %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %gather_statistics, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, ptr %nbits.addr, align 4
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %entropy.addr, align 8
  %4 = load ptr, ptr %bufstart.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  call void @emit_bits(ptr noundef %3, i32 noundef %conv, i32 noundef 1)
  %6 = load ptr, ptr %bufstart.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %bufstart.addr, align 8
  %7 = load i32, ptr %nbits.addr, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %nbits.addr, align 4
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %if.then, %while.cond
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


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcphuff_0(ptr noundef %entropy)  alwaysinline#0 {
entry:
  %entropy.addr = alloca ptr, align 8
  store ptr %entropy, ptr %entropy.addr, align 8
  %0 = load ptr, ptr %entropy.addr, align 8
  call void @emit_bits(ptr noundef %0, i32 noundef 127, i32 noundef 7)
  %1 = load ptr, ptr %entropy.addr, align 8
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i32 0, i32 4
  store i64 0, ptr %put_buffer, align 8
  %2 = load ptr, ptr %entropy.addr, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %2, i32 0, i32 5
  store i32 0, ptr %put_bits, align 8
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcphuff_1(ptr noundef %entropy)  alwaysinline#0 {
entry:
  %entropy.addr = alloca ptr, align 8
  store ptr %entropy, ptr %entropy.addr, align 8
  %0 = load ptr, ptr %entropy.addr, align 8
  call void @emit_bits(ptr noundef %0, i32 noundef 127, i32 noundef 7)
  %1 = load ptr, ptr %entropy.addr, align 8
  %put_buffer = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1, i32 0, i32 4
  store i64 0, ptr %put_buffer, align 8
  %2 = load ptr, ptr %entropy.addr, align 8
  %put_bits = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %2, i32 0, i32 5
  store i32 0, ptr %put_bits, align 8
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jcphuff_2(ptr noundef %entropy, ptr noundef %bufstart, i32 noundef %nbits)  alwaysinline#0 {
entry:
  %entropy.addr = alloca ptr, align 8
  %bufstart.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %entropy, ptr %entropy.addr, align 8
  store ptr %bufstart, ptr %bufstart.addr, align 8
  store i32 %nbits, ptr %nbits.addr, align 4
  %0 = load ptr, ptr %entropy.addr, align 8
  %gather_statistics = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %gather_statistics, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, ptr %nbits.addr, align 4
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %entropy.addr, align 8
  %4 = load ptr, ptr %bufstart.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv = sext i8 %5 to i32
  call void @emit_bits(ptr noundef %3, i32 noundef %conv, i32 noundef 1)
  %6 = load ptr, ptr %bufstart.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %bufstart.addr, align 8
  %7 = load i32, ptr %nbits.addr, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %nbits.addr, align 4
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %if.then, %while.cond
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
