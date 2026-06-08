; ModuleID = './out/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_jcmarker.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcmarker.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 1, i64 noundef 48) #2
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 55
  store ptr %call, ptr %marker, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 55
  %3 = load ptr, ptr %marker1, align 8
  store ptr @write_any_marker, ptr %3, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 55
  %4 = load ptr, ptr %marker2, align 8
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %4, i64 0, i32 1
  store ptr @write_file_header, ptr %write_file_header, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %marker3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 55
  %6 = load ptr, ptr %marker3, align 8
  %write_frame_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %6, i64 0, i32 2
  store ptr @write_frame_header, ptr %write_frame_header, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 55
  %7 = load ptr, ptr %marker4, align 8
  %write_scan_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %7, i64 0, i32 3
  store ptr @write_scan_header, ptr %write_scan_header, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %marker5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 55
  %9 = load ptr, ptr %marker5, align 8
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, ptr %9, i64 0, i32 4
  store ptr @write_file_trailer, ptr %write_file_trailer, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 55
  %10 = load ptr, ptr %marker6, align 8
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, ptr %10, i64 0, i32 5
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
  %cmp = icmp ult i32 %datalen, 65534
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load i32, ptr %marker.addr, align 4
  call void @emit_marker(ptr noundef %0, i32 noundef %1)
  %2 = load i32, ptr %datalen.addr, align 4
  %add = add i32 %2, 2
  call void @emit_2bytes(ptr noundef %0, i32 noundef %add)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load i32, ptr %datalen.addr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %datalen.addr, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %dataptr.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv = zext i8 %6 to i32
  call void @emit_byte(ptr noundef %4, i32 noundef %conv)
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %dataptr.addr, align 8
  br label %while.cond, !llvm.loop !6

if.end:                                           ; preds = %while.cond, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %cinfo, i32 noundef 216)
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 31
  %0 = load i32, ptr %write_JFIF_header, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_jfif_app0(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 35
  %3 = load i32, ptr %write_Adobe_marker, align 4
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_adobe_app14(ptr noundef %4)
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
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 14
  %0 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi ptr [ %0, %entry ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge, ptr %compptr, align 8
  %1 = load i32, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 12
  %3 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i64 0, i32 4
  %6 = load i32, ptr %quant_tbl_no, align 8
  %call = call i32 @emit_dqt(ptr noundef %4, i32 noundef %6)
  %7 = load i32, ptr %prec, align 4
  %add = add nsw i32 %7, %call
  store i32 %add, ptr %prec, align 4
  %8 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %ci, align 4
  %9 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 24
  %11 = load i32, ptr %arith_code, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end
  %12 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i64 0, i32 37
  %13 = load i32, ptr %progressive_mode, align 4
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %14 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 11
  %15 = load i32, ptr %data_precision, align 8
  %cmp3.not = icmp eq i32 %15, 8
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %for.end
  store i32 0, ptr %is_baseline, align 4
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false2
  store i32 1, ptr %is_baseline, align 4
  store i32 0, ptr %ci, align 4
  %16 = load ptr, ptr %cinfo.addr, align 8
  %comp_info4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i64 0, i32 14
  %17 = load ptr, ptr %comp_info4, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %if.else
  %storemerge1 = phi ptr [ %17, %if.else ], [ %incdec.ptr15, %for.inc13 ]
  store ptr %storemerge1, ptr %compptr, align 8
  %18 = load i32, ptr %ci, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %num_components6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i64 0, i32 12
  %20 = load i32, ptr %num_components6, align 4
  %cmp7 = icmp slt i32 %18, %20
  br i1 %cmp7, label %for.body8, label %for.end16

for.body8:                                        ; preds = %for.cond5
  %21 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 5
  %22 = load i32, ptr %dc_tbl_no, align 4
  %cmp9 = icmp sgt i32 %22, 1
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %for.body8
  %23 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i64 0, i32 6
  %24 = load i32, ptr %ac_tbl_no, align 8
  %cmp11 = icmp sgt i32 %24, 1
  br i1 %cmp11, label %if.then12, label %for.inc13

if.then12:                                        ; preds = %lor.lhs.false10, %for.body8
  store i32 0, ptr %is_baseline, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %lor.lhs.false10, %if.then12
  %25 = load i32, ptr %ci, align 4
  %inc14 = add nsw i32 %25, 1
  store i32 %inc14, ptr %ci, align 4
  %26 = load ptr, ptr %compptr, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 1
  br label %for.cond5, !llvm.loop !9

for.end16:                                        ; preds = %for.cond5
  %27 = load i32, ptr %prec, align 4
  %tobool17.not = icmp eq i32 %27, 0
  %28 = load i32, ptr %is_baseline, align 4
  %tobool18.not = icmp eq i32 %28, 0
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.end22, label %if.then19

if.then19:                                        ; preds = %for.end16
  store i32 0, ptr %is_baseline, align 4
  %29 = load ptr, ptr %cinfo.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i64 0, i32 5
  store i32 74, ptr %msg_code, align 8
  %31 = load ptr, ptr %29, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 1
  %32 = load ptr, ptr %emit_message, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void %32(ptr noundef %33, i32 noundef 0) #2
  br label %if.end22

if.end22:                                         ; preds = %for.end16, %if.then19, %if.then
  %34 = load ptr, ptr %cinfo.addr, align 8
  %arith_code23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i64 0, i32 24
  %35 = load i32, ptr %arith_code23, align 4
  %tobool24.not = icmp eq i32 %35, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.end22
  %36 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %36, i32 noundef 201)
  br label %if.end36

if.else26:                                        ; preds = %if.end22
  %37 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %37, i64 0, i32 37
  %38 = load i32, ptr %progressive_mode27, align 4
  %tobool28.not = icmp eq i32 %38, 0
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.else26
  %39 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %39, i32 noundef 194)
  br label %if.end36

if.else30:                                        ; preds = %if.else26
  %40 = load i32, ptr %is_baseline, align 4
  %tobool31.not = icmp eq i32 %40, 0
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.else30
  %41 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %41, i32 noundef 192)
  br label %if.end36

if.else33:                                        ; preds = %if.else30
  %42 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sof(ptr noundef %42, i32 noundef 193)
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.else33, %if.then32, %if.then25
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_scan_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 24
  %0 = load i32, ptr %arith_code, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.cond, label %if.end13

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 41
  %2 = load i32, ptr %comps_in_scan, align 4
  %cmp = icmp slt i32 %storemerge, %2
  br i1 %cmp, label %for.body, label %if.end13

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 42, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  store ptr %5, ptr %compptr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 37
  %6 = load i32, ptr %progressive_mode, align 4
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.else9, label %if.then2

if.then2:                                         ; preds = %for.body
  %7 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i64 0, i32 47
  %8 = load i32, ptr %Ss, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.then2
  %9 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i64 0, i32 49
  %10 = load i32, ptr %Ah, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %12, i64 0, i32 5
  %13 = load i32, ptr %dc_tbl_no, align 4
  call void @emit_dht(ptr noundef %11, i32 noundef %13, i32 noundef 0)
  br label %for.inc

if.else7:                                         ; preds = %if.then2
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 6
  %16 = load i32, ptr %ac_tbl_no, align 8
  call void @emit_dht(ptr noundef %14, i32 noundef %16, i32 noundef 1)
  br label %for.inc

if.else9:                                         ; preds = %for.body
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %compptr, align 8
  %dc_tbl_no10 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 5
  %19 = load i32, ptr %dc_tbl_no10, align 4
  call void @emit_dht(ptr noundef %17, i32 noundef %19, i32 noundef 0)
  %ac_tbl_no11 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 6
  %20 = load i32, ptr %ac_tbl_no11, align 8
  call void @emit_dht(ptr noundef %17, i32 noundef %20, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.else9, %if.then4, %if.then6, %if.else7
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !10

if.end13:                                         ; preds = %for.cond, %entry
  %22 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i64 0, i32 29
  %23 = load i32, ptr %restart_interval, align 8
  %tobool14.not = icmp eq i32 %23, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_dri(ptr noundef %24)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %25 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_sos(ptr noundef %25)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_trailer(ptr noundef %cinfo) #0 {
entry:
  call void @emit_marker(ptr noundef %cinfo, i32 noundef 217)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_tables_only(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %cinfo, i32 noundef 216)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %i, align 4
  %call = call i32 @emit_dqt(ptr noundef %3, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i64 0, i32 24
  %7 = load i32, ptr %arith_code, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.cond3, label %if.end19

for.cond3:                                        ; preds = %for.end, %for.inc16
  %storemerge1 = phi i32 [ %inc17, %for.inc16 ], [ 0, %for.end ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp4 = icmp slt i32 %storemerge1, 4
  br i1 %cmp4, label %for.body5, label %if.end19

for.body5:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 16, i64 %idxprom6
  %10 = load ptr, ptr %arrayidx7, align 8
  %cmp8.not = icmp eq ptr %10, null
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.body5
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load i32, ptr %i, align 4
  call void @emit_dht(ptr noundef %11, i32 noundef %12, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.body5
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 17, i64 %idxprom11
  %15 = load ptr, ptr %arrayidx12, align 8
  %cmp13.not = icmp eq ptr %15, null
  br i1 %cmp13.not, label %for.inc16, label %if.then14

if.then14:                                        ; preds = %if.end10
  %16 = load ptr, ptr %cinfo.addr, align 8
  %17 = load i32, ptr %i, align 4
  call void @emit_dht(ptr noundef %16, i32 noundef %17, i32 noundef 1)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end10, %if.then14
  %18 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %18, 1
  br label %for.cond3, !llvm.loop !12

if.end19:                                         ; preds = %for.cond3, %for.end
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %19, i32 noundef 217)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_marker(ptr noundef %cinfo, i32 noundef %mark) #0 {
entry:
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 255)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef %mark)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_2bytes(ptr noundef %cinfo, i32 noundef %value) #0 {
entry:
  %0 = lshr i32 %value, 8
  %and = and i32 %0, 255
  call void @emit_byte(ptr noundef %cinfo, i32 noundef %and)
  %and1 = and i32 %value, 255
  call void @emit_byte(ptr noundef %cinfo, i32 noundef %and1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_byte(ptr noundef %cinfo, i32 noundef %val) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %dest = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %dest1, align 8
  store ptr %0, ptr %dest, align 8
  %conv = trunc i32 %val to i8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %0, align 8
  store i8 %conv, ptr %1, align 1
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %free_in_buffer, align 8
  %dec = add i64 %2, -1
  store i64 %dec, ptr %free_in_buffer, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dest, align 8
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %empty_output_buffer, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %4(ptr noundef %5) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 22, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #2
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then3, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_jfif_app0(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %cinfo, i32 noundef 224)
  call void @emit_2bytes(ptr noundef %cinfo, i32 noundef 16)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 74)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 70)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 73)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 70)
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %0, i32 noundef 0)
  call void @emit_byte(ptr noundef %0, i32 noundef 1)
  call void @emit_byte(ptr noundef %0, i32 noundef 1)
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  %1 = load i8, ptr %density_unit, align 4
  %conv = zext i8 %1 to i32
  call void @emit_byte(ptr noundef %0, i32 noundef %conv)
  %2 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 33
  %3 = load i16, ptr %X_density, align 2
  %conv1 = zext i16 %3 to i32
  call void @emit_2bytes(ptr noundef %2, i32 noundef %conv1)
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 34
  %4 = load i16, ptr %Y_density, align 8
  %conv2 = zext i16 %4 to i32
  call void @emit_2bytes(ptr noundef %2, i32 noundef %conv2)
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %5, i32 noundef 0)
  call void @emit_byte(ptr noundef %5, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_adobe_app14(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %cinfo, i32 noundef 238)
  call void @emit_2bytes(ptr noundef %cinfo, i32 noundef 14)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 65)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 100)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 111)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 98)
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %0, i32 noundef 101)
  call void @emit_2bytes(ptr noundef %0, i32 noundef 100)
  call void @emit_2bytes(ptr noundef %0, i32 noundef 0)
  call void @emit_2bytes(ptr noundef %0, i32 noundef 0)
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %1 = load i32, ptr %jpeg_color_space, align 8
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %2, i32 noundef 1)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %3, i32 noundef 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %4, i32 noundef 0)
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
  %idxprom = sext i32 %index to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 15, i64 %idxprom
  %0 = load ptr, ptr %arrayidx, align 8
  store ptr %0, ptr %qtbl, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 51, ptr %msg_code, align 8
  %3 = load i32, ptr %index.addr, align 4
  %4 = load ptr, ptr %1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 6
  store i32 %3, ptr %msg_parm, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %5) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %prec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp4 = icmp slt i32 %storemerge, 64
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %qtbl, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [64 x i16], ptr %8, i64 0, i64 %idxprom5
  %10 = load i16, ptr %arrayidx6, align 2
  %cmp7 = icmp ugt i16 %10, 255
  br i1 %cmp7, label %if.then9, label %for.inc

if.then9:                                         ; preds = %for.body
  store i32 1, ptr %prec, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then9
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %qtbl, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %12, i64 0, i32 1
  %13 = load i32, ptr %sent_table, align 4
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then11, label %if.end30

if.then11:                                        ; preds = %for.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %14, i32 noundef 219)
  %15 = load i32, ptr %prec, align 4
  %tobool12.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool12.not, i32 67, i32 131
  call void @emit_2bytes(ptr noundef %14, i32 noundef %cond)
  %16 = load i32, ptr %index.addr, align 4
  %shl = shl i32 %15, 4
  %add = add nsw i32 %16, %shl
  call void @emit_byte(ptr noundef %14, i32 noundef %add)
  br label %for.cond13

for.cond13:                                       ; preds = %if.end25, %if.then11
  %storemerge1 = phi i32 [ 0, %if.then11 ], [ %inc27, %if.end25 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp14 = icmp slt i32 %storemerge1, 64
  br i1 %cmp14, label %for.body16, label %for.end28

for.body16:                                       ; preds = %for.cond13
  %17 = load ptr, ptr %qtbl, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom18
  %19 = load i32, ptr %arrayidx19, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [64 x i16], ptr %17, i64 0, i64 %idxprom20
  %20 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %20 to i32
  store i32 %conv22, ptr %qval, align 4
  %21 = load i32, ptr %prec, align 4
  %tobool23.not = icmp eq i32 %21, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %for.body16
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load i32, ptr %qval, align 4
  %shr = lshr i32 %23, 8
  call void @emit_byte(ptr noundef %22, i32 noundef %shr)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.body16
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load i32, ptr %qval, align 4
  %and = and i32 %25, 255
  call void @emit_byte(ptr noundef %24, i32 noundef %and)
  %26 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %26, 1
  br label %for.cond13, !llvm.loop !14

for.end28:                                        ; preds = %for.cond13
  %27 = load ptr, ptr %qtbl, align 8
  %sent_table29 = getelementptr inbounds %struct.JQUANT_TBL, ptr %27, i64 0, i32 1
  store i32 1, ptr %sent_table29, align 4
  br label %if.end30

if.end30:                                         ; preds = %for.end28, %for.end
  %28 = load i32, ptr %prec, align 4
  ret i32 %28
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_sof(ptr noundef %cinfo, i32 noundef %code) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %cinfo, i32 noundef %code)
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 12
  %0 = load i32, ptr %num_components, align 4
  %mul = mul nsw i32 %0, 3
  %add2 = add nsw i32 %mul, 8
  call void @emit_2bytes(ptr noundef %cinfo, i32 noundef %add2)
  %1 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 7
  %2 = load i32, ptr %image_height, align 4
  %cmp = icmp ugt i32 %2, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 6
  %4 = load i32, ptr %image_width, align 8
  %cmp5 = icmp ugt i32 %4, 65535
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 40, ptr %msg_code, align 8
  %7 = load ptr, ptr %5, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 65535, ptr %msg_parm, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull %8) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %11 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 11
  %12 = load i32, ptr %data_precision, align 8
  call void @emit_byte(ptr noundef %11, i32 noundef %12)
  %image_height9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %image_height9, align 4
  call void @emit_2bytes(ptr noundef %11, i32 noundef %13)
  %14 = load ptr, ptr %cinfo.addr, align 8
  %image_width10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 6
  %15 = load i32, ptr %image_width10, align 8
  call void @emit_2bytes(ptr noundef %14, i32 noundef %15)
  %num_components11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 12
  %16 = load i32, ptr %num_components11, align 4
  call void @emit_byte(ptr noundef %14, i32 noundef %16)
  store i32 0, ptr %ci, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 14
  %18 = load ptr, ptr %comp_info, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi ptr [ %18, %if.end ], [ %incdec.ptr, %for.body ]
  store ptr %storemerge, ptr %compptr, align 8
  %19 = load i32, ptr %ci, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %num_components12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i64 0, i32 12
  %21 = load i32, ptr %num_components12, align 4
  %cmp13 = icmp slt i32 %19, %21
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load ptr, ptr %compptr, align 8
  %24 = load i32, ptr %23, align 8
  call void @emit_byte(ptr noundef %22, i32 noundef %24)
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %h_samp_factor, align 8
  %shl = shl i32 %25, 4
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i64 0, i32 3
  %26 = load i32, ptr %v_samp_factor, align 4
  %add15 = add nsw i32 %shl, %26
  call void @emit_byte(ptr noundef %22, i32 noundef %add15)
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 4
  %29 = load i32, ptr %quant_tbl_no, align 8
  call void @emit_byte(ptr noundef %27, i32 noundef %29)
  %30 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %ci, align 4
  %31 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dht(ptr noundef %cinfo, i32 noundef %index, i32 noundef %is_ac) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %htbl = alloca ptr, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %tobool.not = icmp eq i32 %is_ac, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load i32, ptr %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %htbl, align 8
  %add = add nsw i32 %1, 16
  store i32 %add, ptr %index.addr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load i32, ptr %index.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 16, i64 %idxprom1
  %5 = load ptr, ptr %arrayidx2, align 8
  store ptr %5, ptr %htbl, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %htbl, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 49, ptr %msg_code, align 8
  %9 = load i32, ptr %index.addr, align 4
  %10 = load ptr, ptr %7, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 6
  store i32 %9, ptr %msg_parm, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  call void %13(ptr noundef nonnull %11) #2
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %14 = load ptr, ptr %htbl, align 8
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, ptr %14, i64 0, i32 2
  %15 = load i32, ptr %sent_table, align 4
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.then9, label %if.end39

if.then9:                                         ; preds = %if.end7
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %16, i32 noundef 196)
  store i32 0, ptr %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then9
  %storemerge = phi i32 [ 1, %if.then9 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp10 = icmp slt i32 %storemerge, 17
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %htbl, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [17 x i8], ptr %17, i64 0, i64 %idxprom11
  %19 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, ptr %length, align 4
  %add13 = add nsw i32 %20, %conv
  store i32 %add13, ptr %length, align 4
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %cinfo.addr, align 8
  %23 = load i32, ptr %length, align 4
  %add16 = add nsw i32 %23, 19
  call void @emit_2bytes(ptr noundef %22, i32 noundef %add16)
  %24 = load i32, ptr %index.addr, align 4
  call void @emit_byte(ptr noundef %22, i32 noundef %24)
  br label %for.cond17

for.cond17:                                       ; preds = %for.body20, %for.end
  %storemerge1 = phi i32 [ 1, %for.end ], [ %inc26, %for.body20 ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp18 = icmp slt i32 %storemerge1, 17
  br i1 %cmp18, label %for.body20, label %for.cond28

for.body20:                                       ; preds = %for.cond17
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %htbl, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [17 x i8], ptr %26, i64 0, i64 %idxprom22
  %28 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %28 to i32
  call void @emit_byte(ptr noundef %25, i32 noundef %conv24)
  %29 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %29, 1
  br label %for.cond17, !llvm.loop !17

for.cond28:                                       ; preds = %for.cond17, %for.body31
  %storemerge2 = phi i32 [ %inc36, %for.body31 ], [ 0, %for.cond17 ]
  store i32 %storemerge2, ptr %i, align 4
  %30 = load i32, ptr %length, align 4
  %cmp29 = icmp slt i32 %storemerge2, %30
  br i1 %cmp29, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond28
  %31 = load ptr, ptr %cinfo.addr, align 8
  %32 = load ptr, ptr %htbl, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds %struct.JHUFF_TBL, ptr %32, i64 0, i32 1, i64 %idxprom32
  %34 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %34 to i32
  call void @emit_byte(ptr noundef %31, i32 noundef %conv34)
  %35 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %35, 1
  br label %for.cond28, !llvm.loop !18

for.end37:                                        ; preds = %for.cond28
  %36 = load ptr, ptr %htbl, align 8
  %sent_table38 = getelementptr inbounds %struct.JHUFF_TBL, ptr %36, i64 0, i32 2
  store i32 1, ptr %sent_table38, align 4
  br label %if.end39

if.end39:                                         ; preds = %for.end37, %if.end7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_dri(ptr noundef %cinfo) #0 {
entry:
  call void @emit_marker(ptr noundef %cinfo, i32 noundef 221)
  call void @emit_2bytes(ptr noundef %cinfo, i32 noundef 4)
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 29
  %0 = load i32, ptr %restart_interval, align 8
  call void @emit_2bytes(ptr noundef %cinfo, i32 noundef %0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_sos(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %td = alloca i32, align 4
  %ta = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %cinfo, i32 noundef 218)
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 41
  %0 = load i32, ptr %comps_in_scan, align 4
  %mul = shl nsw i32 %0, 1
  %add2 = add nsw i32 %mul, 6
  call void @emit_2bytes(ptr noundef %cinfo, i32 noundef %add2)
  %1 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 41
  %2 = load i32, ptr %comps_in_scan3, align 4
  call void @emit_byte(ptr noundef %1, i32 noundef %2)
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %if.end11 ]
  store i32 %storemerge, ptr %i, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 41
  %4 = load i32, ptr %comps_in_scan4, align 4
  %cmp = icmp slt i32 %storemerge, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 42, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %7, align 8
  call void @emit_byte(ptr noundef %5, i32 noundef %8)
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %dc_tbl_no, align 4
  store i32 %9, ptr %td, align 4
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 6
  %10 = load i32, ptr %ac_tbl_no, align 8
  store i32 %10, ptr %ta, align 4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 37
  %12 = load i32, ptr %progressive_mode, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i64 0, i32 47
  %14 = load i32, ptr %Ss, align 4
  %cmp5 = icmp eq i32 %14, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  store i32 0, ptr %ta, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i64 0, i32 49
  %16 = load i32, ptr %Ah, align 4
  %cmp7.not = icmp eq i32 %16, 0
  br i1 %cmp7.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then6
  %17 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i64 0, i32 24
  %18 = load i32, ptr %arith_code, align 4
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %td, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then
  store i32 0, ptr %td, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %land.lhs.true, %if.then6, %for.body
  %19 = load ptr, ptr %cinfo.addr, align 8
  %20 = load i32, ptr %td, align 4
  %shl = shl i32 %20, 4
  %21 = load i32, ptr %ta, align 4
  %add12 = add nsw i32 %shl, %21
  call void @emit_byte(ptr noundef %19, i32 noundef %add12)
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %cinfo.addr, align 8
  %Ss13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 47
  %24 = load i32, ptr %Ss13, align 4
  call void @emit_byte(ptr noundef %23, i32 noundef %24)
  %Se = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i64 0, i32 48
  %25 = load i32, ptr %Se, align 8
  call void @emit_byte(ptr noundef %23, i32 noundef %25)
  %26 = load ptr, ptr %cinfo.addr, align 8
  %Ah14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 49
  %27 = load i32, ptr %Ah14, align 4
  %shl15 = shl i32 %27, 4
  %Al = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 50
  %28 = load i32, ptr %Al, align 8
  %add16 = add nsw i32 %shl15, %28
  call void @emit_byte(ptr noundef %26, i32 noundef %add16)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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
