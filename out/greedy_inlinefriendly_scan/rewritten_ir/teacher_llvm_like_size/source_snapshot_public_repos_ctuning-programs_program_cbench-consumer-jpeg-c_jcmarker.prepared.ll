; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcmarker.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcmarker.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jinit_marker_writer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 48)
  %4 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 55
  store ptr %call, ptr %marker, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 55
  %6 = load ptr, ptr %marker1, align 8
  %write_any_marker = getelementptr inbounds %struct.jpeg_marker_writer, ptr %6, i32 0, i32 0
  store ptr @write_any_marker, ptr %write_any_marker, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 55
  %8 = load ptr, ptr %marker2, align 8
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %8, i32 0, i32 1
  store ptr @write_file_header, ptr %write_file_header, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %marker3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 55
  %10 = load ptr, ptr %marker3, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %10, i32 0, i32 2
  store ptr @write_frame_header, ptr %write_frame_header, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 55
  %12 = load ptr, ptr %marker4, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %12, i32 0, i32 3
  store ptr @write_scan_header, ptr %write_scan_header, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %marker5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 55
  %14 = load ptr, ptr %marker5, align 8
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, ptr %14, i32 0, i32 4
  store ptr @write_file_trailer, ptr %write_file_trailer, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 55
  %16 = load ptr, ptr %marker6, align 8
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, ptr %16, i32 0, i32 5
  store ptr @write_tables_only, ptr %write_tables_only, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_any_marker(ptr noundef %cinfo, i32 noundef %marker, ptr noundef %dataptr, i32 noundef %datalen) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker.addr = alloca i32, align 4
  %dataptr.addr = alloca ptr, align 8
  %datalen.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %marker, ptr %marker.addr, align 4
  store ptr %dataptr, ptr %dataptr.addr, align 8
  store i32 %datalen, ptr %datalen.addr, align 4
  %0 = load i32, ptr %datalen.addr, align 4
  %cmp = icmp ule i32 %0, 65533
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load i32, ptr %marker.addr, align 4
  call void @emit_marker(ptr noundef %1, i32 noundef %2)
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %datalen.addr, align 4
  %add = add i32 %4, 2
  call void @emit_2bytes(ptr noundef %3, i32 noundef %add)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i32, ptr %datalen.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %datalen.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %dataptr.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i32
  call void @emit_byte(ptr noundef %6, i32 noundef %conv)
  %9 = load ptr, ptr %dataptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %dataptr.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %0, i32 noundef 216)
  %1 = load ptr, ptr %cinfo.addr, align 8
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 31
  %2 = load i32, ptr %write_JFIF_header, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_jfif_app0(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 35
  %5 = load i32, ptr %write_Adobe_marker, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_adobe_app14(ptr noundef %6)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_frame_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %prec = alloca i32, align 4
  %is_baseline = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 0, ptr %prec, align 4
  store i32 0, ptr %ci, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 14
  %1 = load ptr, ptr %comp_info, align 8
  store ptr %1, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %ci, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %quant_tbl_no, align 8
  %call = call i32 @emit_dqt(ptr noundef %5, i32 noundef %7)
  %8 = load i32, ptr %prec, align 4
  %add = add nsw i32 %8, %call
  store i32 %add, ptr %prec, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %ci, align 4
  %10 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 24
  %12 = load i32, ptr %arith_code, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %13 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 37
  %14 = load i32, ptr %progressive_mode, align 4
  %tobool1 = icmp ne i32 %14, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %15 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 11
  %16 = load i32, ptr %data_precision, align 8
  %cmp3 = icmp ne i32 %16, 8
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %for.end
  store i32 0, ptr %is_baseline, align 4
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false2
  store i32 1, ptr %is_baseline, align 4
  store i32 0, ptr %ci, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 14
  %18 = load ptr, ptr %comp_info4, align 8
  store ptr %18, ptr %compptr, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %if.else
  %19 = load i32, ptr %ci, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %num_components6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 12
  %21 = load i32, ptr %num_components6, align 4
  %cmp7 = icmp slt i32 %19, %21
  br i1 %cmp7, label %for.body8, label %for.end16

for.body8:                                        ; preds = %for.cond5
  %22 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %dc_tbl_no, align 4
  %cmp9 = icmp sgt i32 %23, 1
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %for.body8
  %24 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %ac_tbl_no, align 8
  %cmp11 = icmp sgt i32 %25, 1
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %lor.lhs.false10, %for.body8
  store i32 0, ptr %is_baseline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %lor.lhs.false10
  br label %for.inc13

for.inc13:                                        ; preds = %if.end
  %26 = load i32, ptr %ci, align 4
  %inc14 = add nsw i32 %26, 1
  store i32 %inc14, ptr %ci, align 4
  %27 = load ptr, ptr %compptr, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.jpeg_component_info, ptr %27, i32 1
  store ptr %incdec.ptr15, ptr %compptr, align 8
  br label %for.cond5, !llvm.loop !9

for.end16:                                        ; preds = %for.cond5
  %28 = load i32, ptr %prec, align 4
  %tobool17 = icmp ne i32 %28, 0
  br i1 %tobool17, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %for.end16
  %29 = load i32, ptr %is_baseline, align 4
  %tobool18 = icmp ne i32 %29, 0
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  store i32 0, ptr %is_baseline, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5
  store i32 74, ptr %msg_code, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err20, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %emit_message, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35, i32 noundef 0)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true, %for.end16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %36 = load ptr, ptr %cinfo.addr, align 8
  %arith_code23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 24
  %37 = load i32, ptr %arith_code23, align 4
  %tobool24 = icmp ne i32 %37, 0
  br i1 %tobool24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end22
  %38 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %38, i32 noundef 201)
  br label %if.end36

if.else26:                                        ; preds = %if.end22
  %39 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 37
  %40 = load i32, ptr %progressive_mode27, align 4
  %tobool28 = icmp ne i32 %40, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else26
  %41 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %41, i32 noundef 194)
  br label %if.end35

if.else30:                                        ; preds = %if.else26
  %42 = load i32, ptr %is_baseline, align 4
  %tobool31 = icmp ne i32 %42, 0
  br i1 %tobool31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else30
  %43 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %43, i32 noundef 192)
  br label %if.end34

if.else33:                                        ; preds = %if.else30
  %44 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %44, i32 noundef 193)
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then29
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then25
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_scan_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 24
  %1 = load i32, ptr %arith_code, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcmarker_0(ptr noundef %2)
  br label %if.end13

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 41
  %5 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 42
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %compptr, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 37
  %10 = load i32, ptr %progressive_mode, align 4
  %tobool1 = icmp ne i32 %10, 0
  br i1 %tobool1, label %if.then2, label %if.else9

if.then2:                                         ; preds = %for.body
  %11 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 47
  %12 = load i32, ptr %Ss, align 4
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.then2
  %13 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 49
  %14 = load i32, ptr %Ah, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %dc_tbl_no, align 4
  call void @emit_dht(ptr noundef %15, i32 noundef %17, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then4
  br label %if.end8

if.else7:                                         ; preds = %if.then2
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %ac_tbl_no, align 8
  call void @emit_dht(ptr noundef %18, i32 noundef %20, i32 noundef 1)
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.end
  br label %if.end12

if.else9:                                         ; preds = %for.body
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load ptr, ptr %compptr, align 8
  %dc_tbl_no10 = getelementptr inbounds %struct.jpeg_component_info, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %dc_tbl_no10, align 4
  call void @emit_dht(ptr noundef %21, i32 noundef %23, i32 noundef 0)
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %compptr, align 8
  %ac_tbl_no11 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %ac_tbl_no11, align 8
  call void @emit_dht(ptr noundef %24, i32 noundef %26, i32 noundef 1)
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.end8
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.then
  %28 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %28, i32 0, i32 29
  %29 = load i32, ptr %restart_interval, align 8
  %tobool14 = icmp ne i32 %29, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %30 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_dri(ptr noundef %30)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sos(ptr noundef %31)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_trailer(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %0, i32 noundef 217)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_tables_only(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %0, i32 noundef 216)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load i32, ptr %i, align 4
  %call = call i32 @emit_dqt(ptr noundef %5, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 24
  %9 = load i32, ptr %arith_code, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end19, label %if.then2

if.then2:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %if.then2
  %10 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %10, 4
  br i1 %cmp4, label %for.body5, label %for.end18

for.body5:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 16
  %12 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom6
  %13 = load ptr, ptr %arrayidx7, align 8
  %cmp8 = icmp ne ptr %13, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body5
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load i32, ptr %i, align 4
  call void @emit_dht(ptr noundef %14, i32 noundef %15, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body5
  %16 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 17
  %17 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom11
  %18 = load ptr, ptr %arrayidx12, align 8
  %cmp13 = icmp ne ptr %18, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load i32, ptr %i, align 4
  call void @emit_dht(ptr noundef %19, i32 noundef %20, i32 noundef 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  br label %for.inc16

for.inc16:                                        ; preds = %if.end15
  %21 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond3, !llvm.loop !12

for.end18:                                        ; preds = %for.cond3
  br label %if.end19

if.end19:                                         ; preds = %for.end18, %for.end
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %22, i32 noundef 217)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_marker(ptr noundef %cinfo, i32 noundef %mark) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %mark.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %mark, ptr %mark.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %0, i32 noundef 255)
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load i32, ptr %mark.addr, align 4
  call void @emit_byte(ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_2bytes(ptr noundef %cinfo, i32 noundef %value) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load i32, ptr %value.addr, align 4
  %shr = ashr i32 %1, 8
  %and = and i32 %shr, 255
  call void @emit_byte(ptr noundef %0, i32 noundef %and)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load i32, ptr %value.addr, align 4
  %and1 = and i32 %3, 255
  call void @emit_byte(ptr noundef %2, i32 noundef %and1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_byte(ptr noundef %cinfo, i32 noundef %val) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %dest1, align 8
  store ptr %1, ptr %dest, align 8
  %2 = load i32, ptr %val.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load ptr, ptr %dest, align 8
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %next_output_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %next_output_byte, align 8
  store i8 %conv, ptr %4, align 1
  %5 = load ptr, ptr %dest, align 8
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %empty_output_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_jfif_app0(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %0, i32 noundef 224)
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_2bytes(ptr noundef %1, i32 noundef 16)
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %2, i32 noundef 74)
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %3, i32 noundef 70)
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %4, i32 noundef 73)
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %5, i32 noundef 70)
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %6, i32 noundef 0)
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %7, i32 noundef 1)
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %8, i32 noundef 1)
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 32
  %11 = load i8, ptr %density_unit, align 4
  %conv = zext i8 %11 to i32
  call void @emit_byte(ptr noundef %9, i32 noundef %conv)
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 33
  %14 = load i16, ptr %X_density, align 2
  %conv1 = zext i16 %14 to i32
  call void @emit_2bytes(ptr noundef %12, i32 noundef %conv1)
  %15 = load ptr, ptr %cinfo.addr, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 34
  %17 = load i16, ptr %Y_density, align 8
  %conv2 = zext i16 %17 to i32
  call void @emit_2bytes(ptr noundef %15, i32 noundef %conv2)
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %18, i32 noundef 0)
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %19, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_adobe_app14(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %0, i32 noundef 238)
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_2bytes(ptr noundef %1, i32 noundef 14)
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %2, i32 noundef 65)
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %3, i32 noundef 100)
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %4, i32 noundef 111)
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %5, i32 noundef 98)
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %6, i32 noundef 101)
  %7 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_2bytes(ptr noundef %7, i32 noundef 100)
  %8 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_2bytes(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_2bytes(ptr noundef %9, i32 noundef 0)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 13
  %11 = load i32, ptr %jpeg_color_space, align 8
  switch i32 %11, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %12, i32 noundef 1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %13, i32 noundef 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %14, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_dqt(ptr noundef %cinfo, i32 noundef %index) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %qtbl = alloca ptr, align 8
  %prec = alloca i32, align 4
  %i = alloca i32, align 4
  %qval = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 15
  %1 = load i32, ptr %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %qtbl, align 8
  %3 = load ptr, ptr %qtbl, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 51, ptr %msg_code, align 8
  %6 = load i32, ptr %index.addr, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %6, ptr %arrayidx2, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %prec, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %13, 64
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %qtbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 %idxprom5
  %16 = load i16, ptr %arrayidx6, align 2
  %conv = zext i16 %16 to i32
  %cmp7 = icmp sgt i32 %conv, 255
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body
  store i32 1, ptr %prec, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %qtbl, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %sent_table, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end30, label %if.then11

if.then11:                                        ; preds = %for.end
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %20, i32 noundef 219)
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load i32, ptr %prec, align 4
  %tobool12 = icmp ne i32 %22, 0
  %23 = zext i1 %tobool12 to i64
  %cond = select i1 %tobool12, i32 131, i32 67
  call void @emit_2bytes(ptr noundef %21, i32 noundef %cond)
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load i32, ptr %index.addr, align 4
  %26 = load i32, ptr %prec, align 4
  %shl = shl i32 %26, 4
  %add = add nsw i32 %25, %shl
  call void @emit_byte(ptr noundef %24, i32 noundef %add)
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %if.then11
  %27 = load i32, ptr %i, align 4
  %cmp14 = icmp slt i32 %27, 64
  br i1 %cmp14, label %for.body16, label %for.end28

for.body16:                                       ; preds = %for.cond13
  %28 = load ptr, ptr %qtbl, align 8
  %quantval17 = getelementptr inbounds %struct.JQUANT_TBL, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom18
  %30 = load i32, ptr %arrayidx19, align 4
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds [64 x i16], ptr %quantval17, i64 0, i64 %idxprom20
  %31 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %31 to i32
  store i32 %conv22, ptr %qval, align 4
  %32 = load i32, ptr %prec, align 4
  %tobool23 = icmp ne i32 %32, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body16
  %33 = load ptr, ptr %cinfo.addr, align 8
  %34 = load i32, ptr %qval, align 4
  %shr = lshr i32 %34, 8
  call void @emit_byte(ptr noundef %33, i32 noundef %shr)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.body16
  %35 = load ptr, ptr %cinfo.addr, align 8
  %36 = load i32, ptr %qval, align 4
  %and = and i32 %36, 255
  call void @emit_byte(ptr noundef %35, i32 noundef %and)
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %37 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %37, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond13, !llvm.loop !14

for.end28:                                        ; preds = %for.cond13
  %38 = load ptr, ptr %qtbl, align 8
  %sent_table29 = getelementptr inbounds %struct.JQUANT_TBL, ptr %38, i32 0, i32 1
  store i32 1, ptr %sent_table29, align 4
  br label %if.end30

if.end30:                                         ; preds = %for.end28, %for.end
  %39 = load i32, ptr %prec, align 4
  ret i32 %39
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_sof(ptr noundef %cinfo, i32 noundef %code) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %code, ptr %code.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load i32, ptr %code.addr, align 4
  call void @emit_marker(ptr noundef %0, i32 noundef %1)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %num_components, align 4
  %mul = mul nsw i32 3, %4
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 5
  %add2 = add nsw i32 %add1, 1
  call void @emit_2bytes(ptr noundef %2, i32 noundef %add2)
  %5 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %image_height, align 4
  %conv = zext i32 %6 to i64
  %cmp = icmp sgt i64 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %image_width, align 8
  %conv4 = zext i32 %8 to i64
  %cmp5 = icmp sgt i64 %conv4, 65535
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5
  store i32 40, ptr %msg_code, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err7, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 65535, ptr %arrayidx, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 11
  %19 = load i32, ptr %data_precision, align 8
  call void @emit_byte(ptr noundef %17, i32 noundef %19)
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %image_height9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 7
  %22 = load i32, ptr %image_height9, align 4
  call void @emit_2bytes(ptr noundef %20, i32 noundef %22)
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %image_width10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %image_width10, align 8
  call void @emit_2bytes(ptr noundef %23, i32 noundef %25)
  %26 = load ptr, ptr %cinfo.addr, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %num_components11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %27, i32 0, i32 12
  %28 = load i32, ptr %num_components11, align 4
  call void @emit_byte(ptr noundef %26, i32 noundef %28)
  store i32 0, ptr %ci, align 4
  %29 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %29, i32 0, i32 14
  %30 = load ptr, ptr %comp_info, align 8
  store ptr %30, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, ptr %ci, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %num_components12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 12
  %33 = load i32, ptr %num_components12, align 4
  %cmp13 = icmp slt i32 %31, %33
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load ptr, ptr %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %component_id, align 8
  call void @emit_byte(ptr noundef %34, i32 noundef %36)
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %h_samp_factor, align 8
  %shl = shl i32 %39, 4
  %40 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %v_samp_factor, align 4
  %add15 = add nsw i32 %shl, %41
  call void @emit_byte(ptr noundef %37, i32 noundef %add15)
  %42 = load ptr, ptr %cinfo.addr, align 8
  %43 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %quant_tbl_no, align 8
  call void @emit_byte(ptr noundef %42, i32 noundef %44)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %ci, align 4
  %46 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dac(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dht(ptr noundef %cinfo, i32 noundef %index, i32 noundef %is_ac) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %is_ac.addr = alloca i32, align 4
  %htbl = alloca ptr, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  store i32 %is_ac, ptr %is_ac.addr, align 4
  %0 = load i32, ptr %is_ac.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 17
  %2 = load i32, ptr %index.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %htbl, align 8
  %4 = load i32, ptr %index.addr, align 4
  %add = add nsw i32 %4, 16
  store i32 %add, ptr %index.addr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %index.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom1
  %7 = load ptr, ptr %arrayidx2, align 8
  store ptr %7, ptr %htbl, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %htbl, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5
  store i32 49, ptr %msg_code, align 8
  %11 = load i32, ptr %index.addr, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 6
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %11, ptr %arrayidx5, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err6, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %error_exit, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void %16(ptr noundef %17)
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %18 = load ptr, ptr %htbl, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %sent_table, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.end39, label %if.then9

if.then9:                                         ; preds = %if.end7
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %20, i32 noundef 196)
  store i32 0, ptr %length, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %21 = load i32, ptr %i, align 4
  %cmp10 = icmp sle i32 %21, 16
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %htbl, align 8
  %bits = getelementptr inbounds %struct.JHUFF_TBL, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom11
  %24 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %24 to i32
  %25 = load i32, ptr %length, align 4
  %add13 = add nsw i32 %25, %conv
  store i32 %add13, ptr %length, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load i32, ptr %length, align 4
  %add14 = add nsw i32 %28, 2
  %add15 = add nsw i32 %add14, 1
  %add16 = add nsw i32 %add15, 16
  call void @emit_2bytes(ptr noundef %27, i32 noundef %add16)
  %29 = load ptr, ptr %cinfo.addr, align 8
  %30 = load i32, ptr %index.addr, align 4
  call void @emit_byte(ptr noundef %29, i32 noundef %30)
  store i32 1, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end
  %31 = load i32, ptr %i, align 4
  %cmp18 = icmp sle i32 %31, 16
  br i1 %cmp18, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond17
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %htbl, align 8
  %bits21 = getelementptr inbounds %struct.JHUFF_TBL, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds [17 x i8], ptr %bits21, i64 0, i64 %idxprom22
  %35 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %35 to i32
  call void @emit_byte(ptr noundef %32, i32 noundef %conv24)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %36 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %36, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond17, !llvm.loop !17

for.end27:                                        ; preds = %for.cond17
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.end27
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %length, align 4
  %cmp29 = icmp slt i32 %37, %38
  br i1 %cmp29, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond28
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load ptr, ptr %htbl, align 8
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %41 to i64
  %arrayidx33 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom32
  %42 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %42 to i32
  call void @emit_byte(ptr noundef %39, i32 noundef %conv34)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  %43 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %43, 1
  store i32 %inc36, ptr %i, align 4
  br label %for.cond28, !llvm.loop !18

for.end37:                                        ; preds = %for.cond28
  %44 = load ptr, ptr %htbl, align 8
  %sent_table38 = getelementptr inbounds %struct.JHUFF_TBL, ptr %44, i32 0, i32 2
  store i32 1, ptr %sent_table38, align 4
  br label %if.end39

if.end39:                                         ; preds = %for.end37, %if.end7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dri(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %0, i32 noundef 221)
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_2bytes(ptr noundef %1, i32 noundef 4)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i32 0, i32 29
  %4 = load i32, ptr %restart_interval, align 8
  call void @emit_2bytes(ptr noundef %2, i32 noundef %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_sos(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %td = alloca i32, align 4
  %ta = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %0, i32 noundef 218)
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 41
  %3 = load i32, ptr %comps_in_scan, align 4
  %mul = mul nsw i32 2, %3
  %add = add nsw i32 %mul, 2
  %add1 = add nsw i32 %add, 1
  %add2 = add nsw i32 %add1, 3
  call void @emit_2bytes(ptr noundef %1, i32 noundef %add2)
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 41
  %6 = load i32, ptr %comps_in_scan3, align 4
  call void @emit_byte(ptr noundef %4, i32 noundef %6)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 41
  %9 = load i32, ptr %comps_in_scan4, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 42
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %compptr, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %component_id, align 8
  call void @emit_byte(ptr noundef %13, i32 noundef %15)
  %16 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %dc_tbl_no, align 4
  store i32 %17, ptr %td, align 4
  %18 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %ac_tbl_no, align 8
  store i32 %19, ptr %ta, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 37
  %21 = load i32, ptr %progressive_mode, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %22 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 47
  %23 = load i32, ptr %Ss, align 4
  %cmp5 = icmp eq i32 %23, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  store i32 0, ptr %ta, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 49
  %25 = load i32, ptr %Ah, align 4
  %cmp7 = icmp ne i32 %25, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then6
  %26 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 24
  %27 = load i32, ptr %arith_code, align 4
  %tobool8 = icmp ne i32 %27, 0
  br i1 %tobool8, label %if.end, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %td, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %if.then6
  br label %if.end10

if.else:                                          ; preds = %if.then
  store i32 0, ptr %td, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %for.body
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = load i32, ptr %td, align 4
  %shl = shl i32 %29, 4
  %30 = load i32, ptr %ta, align 4
  %add12 = add nsw i32 %shl, %30
  call void @emit_byte(ptr noundef %28, i32 noundef %add12)
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %cinfo.addr, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %Ss13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 47
  %34 = load i32, ptr %Ss13, align 4
  call void @emit_byte(ptr noundef %32, i32 noundef %34)
  %35 = load ptr, ptr %cinfo.addr, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 48
  %37 = load i32, ptr %Se, align 8
  call void @emit_byte(ptr noundef %35, i32 noundef %37)
  %38 = load ptr, ptr %cinfo.addr, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %Ah14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i32 0, i32 49
  %40 = load i32, ptr %Ah14, align 4
  %shl15 = shl i32 %40, 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i32 0, i32 50
  %42 = load i32, ptr %Al, align 8
  %add16 = add nsw i32 %shl15, %42
  call void @emit_byte(ptr noundef %38, i32 noundef %add16)
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_c_jcmarker_0(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
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
