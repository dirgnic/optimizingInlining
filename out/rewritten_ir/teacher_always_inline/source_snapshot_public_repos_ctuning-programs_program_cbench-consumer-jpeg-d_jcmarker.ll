; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-jpeg-d_jcmarker.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-d/jcmarker.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
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
  %cinfo.addr.i2 = alloca ptr, align 8
  %dest.i = alloca ptr, align 8
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
  call void @emit_byte(ptr noundef %0, i32 noundef 255)
  call void @emit_byte(ptr noundef %0, i32 noundef %1)
  %2 = load i32, ptr %datalen.addr, align 4
  %add = add i32 %2, 2
  %3 = lshr i32 %add, 8
  %and.i = and i32 %3, 255
  call void @emit_byte(ptr noundef %0, i32 noundef %and.i)
  %and1.i = and i32 %add, 255
  call void @emit_byte(ptr noundef %0, i32 noundef %and1.i)
  br label %while.cond

while.cond:                                       ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_2.exit, %if.then
  %4 = load i32, ptr %datalen.addr, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %datalen.addr, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %cinfo.addr, align 8
  %6 = load ptr, ptr %dataptr.addr, align 8
  %7 = load i8, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest.i)
  store ptr %5, ptr %cinfo.addr.i2, align 8
  %dest1.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %dest1.i, align 8
  store ptr %8, ptr %dest.i, align 8
  %9 = load ptr, ptr %8, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr.i, ptr %8, align 8
  store i8 %7, ptr %9, align 1
  %free_in_buffer.i = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %free_in_buffer.i, align 8
  %dec.i = add i64 %10, -1
  store i64 %dec.i, ptr %free_in_buffer.i, align 8
  %cmp.i = icmp eq i64 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_2.exit

if.then.i:                                        ; preds = %while.body
  %11 = load ptr, ptr %dest.i, align 8
  %empty_output_buffer.i = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %empty_output_buffer.i, align 8
  %13 = load ptr, ptr %cinfo.addr.i2, align 8
  %call.i = call i32 %12(ptr noundef %13) #2
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then3.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_2.exit

if.then3.i:                                       ; preds = %if.then.i
  %14 = load ptr, ptr %cinfo.addr.i2, align 8
  %15 = load ptr, ptr %14, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 22, ptr %msg_code.i, align 8
  %16 = load ptr, ptr %14, align 8
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull %14) #2
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_2.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_2.exit: ; preds = %if.then.i, %if.then3.i, %while.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest.i)
  %18 = load ptr, ptr %dataptr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %dataptr.addr, align 8
  br label %while.cond, !llvm.loop !6

if.end:                                           ; preds = %while.cond, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr.i2 = alloca ptr, align 8
  %cinfo.addr.i1 = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 255)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 216)
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 31
  %0 = load i32, ptr %write_JFIF_header, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  store ptr %1, ptr %cinfo.addr.i1, align 8
  call void @emit_marker(ptr noundef %1, i32 noundef 224)
  call void @emit_2bytes(ptr noundef %1, i32 noundef 16)
  call void @emit_byte(ptr noundef %1, i32 noundef 74)
  call void @emit_byte(ptr noundef %1, i32 noundef 70)
  call void @emit_byte(ptr noundef %1, i32 noundef 73)
  call void @emit_byte(ptr noundef %1, i32 noundef 70)
  %2 = load ptr, ptr %cinfo.addr.i1, align 8
  call void @emit_byte(ptr noundef %2, i32 noundef 0)
  call void @emit_byte(ptr noundef %2, i32 noundef 1)
  call void @emit_byte(ptr noundef %2, i32 noundef 1)
  %density_unit.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i64 0, i32 32
  %3 = load i8, ptr %density_unit.i, align 4
  %conv.i = zext i8 %3 to i32
  call void @emit_byte(ptr noundef %2, i32 noundef %conv.i)
  %4 = load ptr, ptr %cinfo.addr.i1, align 8
  %X_density.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 33
  %5 = load i16, ptr %X_density.i, align 2
  %conv1.i = zext i16 %5 to i32
  call void @emit_2bytes(ptr noundef %4, i32 noundef %conv1.i)
  %Y_density.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 34
  %6 = load i16, ptr %Y_density.i, align 8
  %conv2.i = zext i16 %6 to i32
  call void @emit_2bytes(ptr noundef %4, i32 noundef %conv2.i)
  %7 = load ptr, ptr %cinfo.addr.i1, align 8
  call void @emit_byte(ptr noundef %7, i32 noundef 0)
  call void @emit_byte(ptr noundef %7, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 35
  %9 = load i32, ptr %write_Adobe_marker, align 4
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  store ptr %10, ptr %cinfo.addr.i2, align 8
  call void @emit_marker(ptr noundef %10, i32 noundef 238)
  call void @emit_2bytes(ptr noundef %10, i32 noundef 14)
  call void @emit_byte(ptr noundef %10, i32 noundef 65)
  call void @emit_byte(ptr noundef %10, i32 noundef 100)
  call void @emit_byte(ptr noundef %10, i32 noundef 111)
  call void @emit_byte(ptr noundef %10, i32 noundef 98)
  %11 = load ptr, ptr %cinfo.addr.i2, align 8
  call void @emit_byte(ptr noundef %11, i32 noundef 101)
  call void @emit_2bytes(ptr noundef %11, i32 noundef 100)
  call void @emit_2bytes(ptr noundef %11, i32 noundef 0)
  call void @emit_2bytes(ptr noundef %11, i32 noundef 0)
  %jpeg_color_space.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 13
  %12 = load i32, ptr %jpeg_color_space.i, align 8
  switch i32 %12, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 5, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.then2
  %13 = load ptr, ptr %cinfo.addr.i2, align 8
  call void @emit_byte(ptr noundef %13, i32 noundef 1)
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_5.exit

sw.bb1.i:                                         ; preds = %if.then2
  %14 = load ptr, ptr %cinfo.addr.i2, align 8
  call void @emit_byte(ptr noundef %14, i32 noundef 2)
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_5.exit

sw.default.i:                                     ; preds = %if.then2
  %15 = load ptr, ptr %cinfo.addr.i2, align 8
  call void @emit_byte(ptr noundef %15, i32 noundef 0)
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_5.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_5.exit: ; preds = %sw.bb.i, %sw.bb1.i, %sw.default.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  br label %if.end3

if.end3:                                          ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_5.exit, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_frame_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr.i88 = alloca ptr, align 8
  %ci.i90 = alloca i32, align 4
  %compptr.i91 = alloca ptr, align 8
  %cinfo.addr.i51 = alloca ptr, align 8
  %ci.i53 = alloca i32, align 4
  %compptr.i54 = alloca ptr, align 8
  %cinfo.addr.i14 = alloca ptr, align 8
  %ci.i16 = alloca i32, align 4
  %compptr.i17 = alloca ptr, align 8
  %cinfo.addr.i1 = alloca ptr, align 8
  %ci.i = alloca i32, align 4
  %compptr.i = alloca ptr, align 8
  %cinfo.addr.i = alloca ptr, align 8
  %index.addr.i = alloca i32, align 4
  %qtbl.i = alloca ptr, align 8
  %prec.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %qval.i = alloca i32, align 4
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

for.cond:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_6.exit, %entry
  %storemerge = phi ptr [ %0, %entry ], [ %incdec.ptr, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_6.exit ]
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qtbl.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prec.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qval.i)
  store ptr %4, ptr %cinfo.addr.i, align 8
  store i32 %6, ptr %index.addr.i, align 4
  %idxprom.i = sext i32 %6 to i64
  %arrayidx.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i64 0, i32 15, i64 %idxprom.i
  %7 = load ptr, ptr %arrayidx.i, align 8
  store ptr %7, ptr %qtbl.i, align 8
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  %8 = load ptr, ptr %cinfo.addr.i, align 8
  %9 = load ptr, ptr %8, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 51, ptr %msg_code.i, align 8
  %10 = load i32, ptr %index.addr.i, align 4
  %11 = load ptr, ptr %8, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %10, ptr %msg_parm.i, align 4
  %12 = load ptr, ptr %cinfo.addr.i, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull %12) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body
  store i32 0, ptr %prec.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end10.i, %if.end.i
  %storemerge130 = phi i32 [ 0, %if.end.i ], [ %inc.i, %if.end10.i ]
  store i32 %storemerge130, ptr %i.i, align 4
  %cmp4.i = icmp slt i32 %storemerge130, 64
  br i1 %cmp4.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %15 = load ptr, ptr %qtbl.i, align 8
  %16 = load i32, ptr %i.i, align 4
  %idxprom5.i = sext i32 %16 to i64
  %arrayidx6.i = getelementptr inbounds [64 x i16], ptr %15, i64 0, i64 %idxprom5.i
  %17 = load i16, ptr %arrayidx6.i, align 2
  %cmp7.i = icmp ugt i16 %17, 255
  br i1 %cmp7.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %for.body.i
  store i32 1, ptr %prec.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %for.body.i
  %18 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %18, 1
  br label %for.cond.i, !llvm.loop !8

for.end.i:                                        ; preds = %for.cond.i
  %19 = load ptr, ptr %qtbl.i, align 8
  %sent_table.i = getelementptr inbounds %struct.JQUANT_TBL, ptr %19, i64 0, i32 1
  %20 = load i32, ptr %sent_table.i, align 4
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.then11.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_6.exit

if.then11.i:                                      ; preds = %for.end.i
  %21 = load ptr, ptr %cinfo.addr.i, align 8
  call void @emit_marker(ptr noundef %21, i32 noundef 219)
  %22 = load i32, ptr %prec.i, align 4
  %tobool12.i.not = icmp eq i32 %22, 0
  %cond.i = select i1 %tobool12.i.not, i32 67, i32 131
  call void @emit_2bytes(ptr noundef %21, i32 noundef %cond.i)
  %23 = load i32, ptr %index.addr.i, align 4
  %shl.i = shl i32 %22, 4
  %add.i = add nsw i32 %23, %shl.i
  call void @emit_byte(ptr noundef %21, i32 noundef %add.i)
  br label %for.cond13.i

for.cond13.i:                                     ; preds = %if.end25.i, %if.then11.i
  %storemerge131 = phi i32 [ 0, %if.then11.i ], [ %inc27.i, %if.end25.i ]
  store i32 %storemerge131, ptr %i.i, align 4
  %cmp14.i = icmp slt i32 %storemerge131, 64
  br i1 %cmp14.i, label %for.body16.i, label %for.end28.i

for.body16.i:                                     ; preds = %for.cond13.i
  %24 = load ptr, ptr %qtbl.i, align 8
  %25 = load i32, ptr %i.i, align 4
  %idxprom18.i = sext i32 %25 to i64
  %arrayidx19.i = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom18.i
  %26 = load i32, ptr %arrayidx19.i, align 4
  %idxprom20.i = sext i32 %26 to i64
  %arrayidx21.i = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 %idxprom20.i
  %27 = load i16, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %27 to i32
  store i32 %conv22.i, ptr %qval.i, align 4
  %28 = load i32, ptr %prec.i, align 4
  %tobool23.i.not = icmp eq i32 %28, 0
  br i1 %tobool23.i.not, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body16.i
  %29 = load ptr, ptr %cinfo.addr.i, align 8
  %30 = load i32, ptr %qval.i, align 4
  %shr.i = lshr i32 %30, 8
  call void @emit_byte(ptr noundef %29, i32 noundef %shr.i)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %for.body16.i
  %31 = load ptr, ptr %cinfo.addr.i, align 8
  %32 = load i32, ptr %qval.i, align 4
  %and.i = and i32 %32, 255
  call void @emit_byte(ptr noundef %31, i32 noundef %and.i)
  %33 = load i32, ptr %i.i, align 4
  %inc27.i = add nsw i32 %33, 1
  br label %for.cond13.i, !llvm.loop !9

for.end28.i:                                      ; preds = %for.cond13.i
  %34 = load ptr, ptr %qtbl.i, align 8
  %sent_table29.i = getelementptr inbounds %struct.JQUANT_TBL, ptr %34, i64 0, i32 1
  store i32 1, ptr %sent_table29.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_6.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_6.exit: ; preds = %for.end.i, %for.end28.i
  %35 = load i32, ptr %prec.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qtbl.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prec.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qval.i)
  %36 = load i32, ptr %prec, align 4
  %add = add nsw i32 %36, %35
  store i32 %add, ptr %prec, align 4
  %37 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %ci, align 4
  %38 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %39, i64 0, i32 24
  %40 = load i32, ptr %arith_code, align 4
  %tobool.not = icmp eq i32 %40, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end
  %41 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i64 0, i32 37
  %42 = load i32, ptr %progressive_mode, align 4
  %tobool1.not = icmp eq i32 %42, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %43 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i64 0, i32 11
  %44 = load i32, ptr %data_precision, align 8
  %cmp3.not = icmp eq i32 %44, 8
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %for.end
  store i32 0, ptr %is_baseline, align 4
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false2
  store i32 1, ptr %is_baseline, align 4
  store i32 0, ptr %ci, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %comp_info4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i64 0, i32 14
  %46 = load ptr, ptr %comp_info4, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %if.else
  %storemerge125 = phi ptr [ %46, %if.else ], [ %incdec.ptr15, %for.inc13 ]
  store ptr %storemerge125, ptr %compptr, align 8
  %47 = load i32, ptr %ci, align 4
  %48 = load ptr, ptr %cinfo.addr, align 8
  %num_components6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i64 0, i32 12
  %49 = load i32, ptr %num_components6, align 4
  %cmp7 = icmp slt i32 %47, %49
  br i1 %cmp7, label %for.body8, label %for.end16

for.body8:                                        ; preds = %for.cond5
  %50 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i64 0, i32 5
  %51 = load i32, ptr %dc_tbl_no, align 4
  %cmp9 = icmp sgt i32 %51, 1
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %for.body8
  %52 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 6
  %53 = load i32, ptr %ac_tbl_no, align 8
  %cmp11 = icmp sgt i32 %53, 1
  br i1 %cmp11, label %if.then12, label %for.inc13

if.then12:                                        ; preds = %lor.lhs.false10, %for.body8
  store i32 0, ptr %is_baseline, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %lor.lhs.false10, %if.then12
  %54 = load i32, ptr %ci, align 4
  %inc14 = add nsw i32 %54, 1
  store i32 %inc14, ptr %ci, align 4
  %55 = load ptr, ptr %compptr, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.jpeg_component_info, ptr %55, i64 1
  br label %for.cond5, !llvm.loop !11

for.end16:                                        ; preds = %for.cond5
  %56 = load i32, ptr %prec, align 4
  %tobool17.not = icmp eq i32 %56, 0
  %57 = load i32, ptr %is_baseline, align 4
  %tobool18.not = icmp eq i32 %57, 0
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.end22, label %if.then19

if.then19:                                        ; preds = %for.end16
  store i32 0, ptr %is_baseline, align 4
  %58 = load ptr, ptr %cinfo.addr, align 8
  %59 = load ptr, ptr %58, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 5
  store i32 74, ptr %msg_code, align 8
  %60 = load ptr, ptr %58, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 1
  %61 = load ptr, ptr %emit_message, align 8
  %62 = load ptr, ptr %cinfo.addr, align 8
  call void %61(ptr noundef %62, i32 noundef 0) #2
  br label %if.end22

if.end22:                                         ; preds = %for.end16, %if.then19, %if.then
  %63 = load ptr, ptr %cinfo.addr, align 8
  %arith_code23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %63, i64 0, i32 24
  %64 = load i32, ptr %arith_code23, align 4
  %tobool24.not = icmp eq i32 %64, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.end22
  %65 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i)
  store ptr %65, ptr %cinfo.addr.i1, align 8
  call void @emit_marker(ptr noundef %65, i32 noundef 201)
  %num_components.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %65, i64 0, i32 12
  %66 = load i32, ptr %num_components.i, align 4
  %mul.i = mul nsw i32 %66, 3
  %add2.i = add nsw i32 %mul.i, 8
  call void @emit_2bytes(ptr noundef %65, i32 noundef %add2.i)
  %67 = load ptr, ptr %cinfo.addr.i1, align 8
  %image_height.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %67, i64 0, i32 7
  %68 = load i32, ptr %image_height.i, align 4
  %cmp.i4 = icmp ugt i32 %68, 65535
  br i1 %cmp.i4, label %if.then.i7, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then25
  %69 = load ptr, ptr %cinfo.addr.i1, align 8
  %image_width.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %69, i64 0, i32 6
  %70 = load i32, ptr %image_width.i, align 8
  %cmp5.i = icmp ugt i32 %70, 65535
  br i1 %cmp5.i, label %if.then.i7, label %if.end.i8

if.then.i7:                                       ; preds = %lor.lhs.false.i, %if.then25
  %71 = load ptr, ptr %cinfo.addr.i1, align 8
  %72 = load ptr, ptr %71, align 8
  %msg_code.i5 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i64 0, i32 5
  store i32 40, ptr %msg_code.i5, align 8
  %73 = load ptr, ptr %71, align 8
  %msg_parm.i6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 6
  store i32 65535, ptr %msg_parm.i6, align 4
  %74 = load ptr, ptr %cinfo.addr.i1, align 8
  %75 = load ptr, ptr %74, align 8
  %76 = load ptr, ptr %75, align 8
  call void %76(ptr noundef nonnull %74) #2
  br label %if.end.i8

if.end.i8:                                        ; preds = %if.then.i7, %lor.lhs.false.i
  %77 = load ptr, ptr %cinfo.addr.i1, align 8
  %data_precision.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %77, i64 0, i32 11
  %78 = load i32, ptr %data_precision.i, align 8
  call void @emit_byte(ptr noundef %77, i32 noundef %78)
  %image_height9.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %77, i64 0, i32 7
  %79 = load i32, ptr %image_height9.i, align 4
  call void @emit_2bytes(ptr noundef %77, i32 noundef %79)
  %80 = load ptr, ptr %cinfo.addr.i1, align 8
  %image_width10.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i64 0, i32 6
  %81 = load i32, ptr %image_width10.i, align 8
  call void @emit_2bytes(ptr noundef %80, i32 noundef %81)
  %num_components11.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %80, i64 0, i32 12
  %82 = load i32, ptr %num_components11.i, align 4
  call void @emit_byte(ptr noundef %80, i32 noundef %82)
  store i32 0, ptr %ci.i, align 4
  %83 = load ptr, ptr %cinfo.addr.i1, align 8
  %comp_info.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %83, i64 0, i32 14
  %84 = load ptr, ptr %comp_info.i, align 8
  br label %for.cond.i9

for.cond.i9:                                      ; preds = %for.body.i11, %if.end.i8
  %storemerge129 = phi ptr [ %84, %if.end.i8 ], [ %incdec.ptr.i, %for.body.i11 ]
  store ptr %storemerge129, ptr %compptr.i, align 8
  %85 = load i32, ptr %ci.i, align 4
  %86 = load ptr, ptr %cinfo.addr.i1, align 8
  %num_components12.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %86, i64 0, i32 12
  %87 = load i32, ptr %num_components12.i, align 4
  %cmp13.i = icmp slt i32 %85, %87
  br i1 %cmp13.i, label %for.body.i11, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_7.exit

for.body.i11:                                     ; preds = %for.cond.i9
  %88 = load ptr, ptr %cinfo.addr.i1, align 8
  %89 = load ptr, ptr %compptr.i, align 8
  %90 = load i32, ptr %89, align 8
  call void @emit_byte(ptr noundef %88, i32 noundef %90)
  %h_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %h_samp_factor.i, align 8
  %shl.i10 = shl i32 %91, 4
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %89, i64 0, i32 3
  %92 = load i32, ptr %v_samp_factor.i, align 4
  %add15.i = add nsw i32 %shl.i10, %92
  call void @emit_byte(ptr noundef %88, i32 noundef %add15.i)
  %93 = load ptr, ptr %cinfo.addr.i1, align 8
  %94 = load ptr, ptr %compptr.i, align 8
  %quant_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %94, i64 0, i32 4
  %95 = load i32, ptr %quant_tbl_no.i, align 8
  call void @emit_byte(ptr noundef %93, i32 noundef %95)
  %96 = load i32, ptr %ci.i, align 4
  %inc.i12 = add nsw i32 %96, 1
  store i32 %inc.i12, ptr %ci.i, align 4
  %97 = load ptr, ptr %compptr.i, align 8
  %incdec.ptr.i = getelementptr inbounds %struct.jpeg_component_info, ptr %97, i64 1
  br label %for.cond.i9, !llvm.loop !12

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_7.exit: ; preds = %for.cond.i9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i)
  br label %if.end36

if.else26:                                        ; preds = %if.end22
  %98 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %98, i64 0, i32 37
  %99 = load i32, ptr %progressive_mode27, align 4
  %tobool28.not = icmp eq i32 %99, 0
  br i1 %tobool28.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.else26
  %100 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i17)
  store ptr %100, ptr %cinfo.addr.i14, align 8
  call void @emit_marker(ptr noundef %100, i32 noundef 194)
  %num_components.i18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %100, i64 0, i32 12
  %101 = load i32, ptr %num_components.i18, align 4
  %mul.i19 = mul nsw i32 %101, 3
  %add2.i22 = add nsw i32 %mul.i19, 8
  call void @emit_2bytes(ptr noundef %100, i32 noundef %add2.i22)
  %102 = load ptr, ptr %cinfo.addr.i14, align 8
  %image_height.i23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %102, i64 0, i32 7
  %103 = load i32, ptr %image_height.i23, align 4
  %cmp.i25 = icmp ugt i32 %103, 65535
  br i1 %cmp.i25, label %if.then.i32, label %lor.lhs.false.i29

lor.lhs.false.i29:                                ; preds = %if.then29
  %104 = load ptr, ptr %cinfo.addr.i14, align 8
  %image_width.i26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %104, i64 0, i32 6
  %105 = load i32, ptr %image_width.i26, align 8
  %cmp5.i28 = icmp ugt i32 %105, 65535
  br i1 %cmp5.i28, label %if.then.i32, label %if.end.i38

if.then.i32:                                      ; preds = %lor.lhs.false.i29, %if.then29
  %106 = load ptr, ptr %cinfo.addr.i14, align 8
  %107 = load ptr, ptr %106, align 8
  %msg_code.i30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 5
  store i32 40, ptr %msg_code.i30, align 8
  %108 = load ptr, ptr %106, align 8
  %msg_parm.i31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 6
  store i32 65535, ptr %msg_parm.i31, align 4
  %109 = load ptr, ptr %cinfo.addr.i14, align 8
  %110 = load ptr, ptr %109, align 8
  %111 = load ptr, ptr %110, align 8
  call void %111(ptr noundef nonnull %109) #2
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then.i32, %lor.lhs.false.i29
  %112 = load ptr, ptr %cinfo.addr.i14, align 8
  %data_precision.i33 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %112, i64 0, i32 11
  %113 = load i32, ptr %data_precision.i33, align 8
  call void @emit_byte(ptr noundef %112, i32 noundef %113)
  %image_height9.i34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %112, i64 0, i32 7
  %114 = load i32, ptr %image_height9.i34, align 4
  call void @emit_2bytes(ptr noundef %112, i32 noundef %114)
  %115 = load ptr, ptr %cinfo.addr.i14, align 8
  %image_width10.i35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %115, i64 0, i32 6
  %116 = load i32, ptr %image_width10.i35, align 8
  call void @emit_2bytes(ptr noundef %115, i32 noundef %116)
  %num_components11.i36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %115, i64 0, i32 12
  %117 = load i32, ptr %num_components11.i36, align 4
  call void @emit_byte(ptr noundef %115, i32 noundef %117)
  store i32 0, ptr %ci.i16, align 4
  %118 = load ptr, ptr %cinfo.addr.i14, align 8
  %comp_info.i37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %118, i64 0, i32 14
  %119 = load ptr, ptr %comp_info.i37, align 8
  br label %for.cond.i41

for.cond.i41:                                     ; preds = %for.body.i47, %if.end.i38
  %storemerge128 = phi ptr [ %119, %if.end.i38 ], [ %incdec.ptr.i49, %for.body.i47 ]
  store ptr %storemerge128, ptr %compptr.i17, align 8
  %120 = load i32, ptr %ci.i16, align 4
  %121 = load ptr, ptr %cinfo.addr.i14, align 8
  %num_components12.i39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %121, i64 0, i32 12
  %122 = load i32, ptr %num_components12.i39, align 4
  %cmp13.i40 = icmp slt i32 %120, %122
  br i1 %cmp13.i40, label %for.body.i47, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_8.exit

for.body.i47:                                     ; preds = %for.cond.i41
  %123 = load ptr, ptr %cinfo.addr.i14, align 8
  %124 = load ptr, ptr %compptr.i17, align 8
  %125 = load i32, ptr %124, align 8
  call void @emit_byte(ptr noundef %123, i32 noundef %125)
  %h_samp_factor.i42 = getelementptr inbounds %struct.jpeg_component_info, ptr %124, i64 0, i32 2
  %126 = load i32, ptr %h_samp_factor.i42, align 8
  %shl.i43 = shl i32 %126, 4
  %v_samp_factor.i44 = getelementptr inbounds %struct.jpeg_component_info, ptr %124, i64 0, i32 3
  %127 = load i32, ptr %v_samp_factor.i44, align 4
  %add15.i45 = add nsw i32 %shl.i43, %127
  call void @emit_byte(ptr noundef %123, i32 noundef %add15.i45)
  %128 = load ptr, ptr %cinfo.addr.i14, align 8
  %129 = load ptr, ptr %compptr.i17, align 8
  %quant_tbl_no.i46 = getelementptr inbounds %struct.jpeg_component_info, ptr %129, i64 0, i32 4
  %130 = load i32, ptr %quant_tbl_no.i46, align 8
  call void @emit_byte(ptr noundef %128, i32 noundef %130)
  %131 = load i32, ptr %ci.i16, align 4
  %inc.i48 = add nsw i32 %131, 1
  store i32 %inc.i48, ptr %ci.i16, align 4
  %132 = load ptr, ptr %compptr.i17, align 8
  %incdec.ptr.i49 = getelementptr inbounds %struct.jpeg_component_info, ptr %132, i64 1
  br label %for.cond.i41, !llvm.loop !12

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_8.exit: ; preds = %for.cond.i41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i17)
  br label %if.end36

if.else30:                                        ; preds = %if.else26
  %133 = load i32, ptr %is_baseline, align 4
  %tobool31.not = icmp eq i32 %133, 0
  br i1 %tobool31.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.else30
  %134 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i51)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i53)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i54)
  store ptr %134, ptr %cinfo.addr.i51, align 8
  call void @emit_marker(ptr noundef %134, i32 noundef 192)
  %num_components.i55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %134, i64 0, i32 12
  %135 = load i32, ptr %num_components.i55, align 4
  %mul.i56 = mul nsw i32 %135, 3
  %add2.i59 = add nsw i32 %mul.i56, 8
  call void @emit_2bytes(ptr noundef %134, i32 noundef %add2.i59)
  %136 = load ptr, ptr %cinfo.addr.i51, align 8
  %image_height.i60 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %136, i64 0, i32 7
  %137 = load i32, ptr %image_height.i60, align 4
  %cmp.i62 = icmp ugt i32 %137, 65535
  br i1 %cmp.i62, label %if.then.i69, label %lor.lhs.false.i66

lor.lhs.false.i66:                                ; preds = %if.then32
  %138 = load ptr, ptr %cinfo.addr.i51, align 8
  %image_width.i63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %138, i64 0, i32 6
  %139 = load i32, ptr %image_width.i63, align 8
  %cmp5.i65 = icmp ugt i32 %139, 65535
  br i1 %cmp5.i65, label %if.then.i69, label %if.end.i75

if.then.i69:                                      ; preds = %lor.lhs.false.i66, %if.then32
  %140 = load ptr, ptr %cinfo.addr.i51, align 8
  %141 = load ptr, ptr %140, align 8
  %msg_code.i67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %141, i64 0, i32 5
  store i32 40, ptr %msg_code.i67, align 8
  %142 = load ptr, ptr %140, align 8
  %msg_parm.i68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %142, i64 0, i32 6
  store i32 65535, ptr %msg_parm.i68, align 4
  %143 = load ptr, ptr %cinfo.addr.i51, align 8
  %144 = load ptr, ptr %143, align 8
  %145 = load ptr, ptr %144, align 8
  call void %145(ptr noundef nonnull %143) #2
  br label %if.end.i75

if.end.i75:                                       ; preds = %if.then.i69, %lor.lhs.false.i66
  %146 = load ptr, ptr %cinfo.addr.i51, align 8
  %data_precision.i70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %146, i64 0, i32 11
  %147 = load i32, ptr %data_precision.i70, align 8
  call void @emit_byte(ptr noundef %146, i32 noundef %147)
  %image_height9.i71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %146, i64 0, i32 7
  %148 = load i32, ptr %image_height9.i71, align 4
  call void @emit_2bytes(ptr noundef %146, i32 noundef %148)
  %149 = load ptr, ptr %cinfo.addr.i51, align 8
  %image_width10.i72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %149, i64 0, i32 6
  %150 = load i32, ptr %image_width10.i72, align 8
  call void @emit_2bytes(ptr noundef %149, i32 noundef %150)
  %num_components11.i73 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %149, i64 0, i32 12
  %151 = load i32, ptr %num_components11.i73, align 4
  call void @emit_byte(ptr noundef %149, i32 noundef %151)
  store i32 0, ptr %ci.i53, align 4
  %152 = load ptr, ptr %cinfo.addr.i51, align 8
  %comp_info.i74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %152, i64 0, i32 14
  %153 = load ptr, ptr %comp_info.i74, align 8
  br label %for.cond.i78

for.cond.i78:                                     ; preds = %for.body.i84, %if.end.i75
  %storemerge127 = phi ptr [ %153, %if.end.i75 ], [ %incdec.ptr.i86, %for.body.i84 ]
  store ptr %storemerge127, ptr %compptr.i54, align 8
  %154 = load i32, ptr %ci.i53, align 4
  %155 = load ptr, ptr %cinfo.addr.i51, align 8
  %num_components12.i76 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %155, i64 0, i32 12
  %156 = load i32, ptr %num_components12.i76, align 4
  %cmp13.i77 = icmp slt i32 %154, %156
  br i1 %cmp13.i77, label %for.body.i84, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_9.exit

for.body.i84:                                     ; preds = %for.cond.i78
  %157 = load ptr, ptr %cinfo.addr.i51, align 8
  %158 = load ptr, ptr %compptr.i54, align 8
  %159 = load i32, ptr %158, align 8
  call void @emit_byte(ptr noundef %157, i32 noundef %159)
  %h_samp_factor.i79 = getelementptr inbounds %struct.jpeg_component_info, ptr %158, i64 0, i32 2
  %160 = load i32, ptr %h_samp_factor.i79, align 8
  %shl.i80 = shl i32 %160, 4
  %v_samp_factor.i81 = getelementptr inbounds %struct.jpeg_component_info, ptr %158, i64 0, i32 3
  %161 = load i32, ptr %v_samp_factor.i81, align 4
  %add15.i82 = add nsw i32 %shl.i80, %161
  call void @emit_byte(ptr noundef %157, i32 noundef %add15.i82)
  %162 = load ptr, ptr %cinfo.addr.i51, align 8
  %163 = load ptr, ptr %compptr.i54, align 8
  %quant_tbl_no.i83 = getelementptr inbounds %struct.jpeg_component_info, ptr %163, i64 0, i32 4
  %164 = load i32, ptr %quant_tbl_no.i83, align 8
  call void @emit_byte(ptr noundef %162, i32 noundef %164)
  %165 = load i32, ptr %ci.i53, align 4
  %inc.i85 = add nsw i32 %165, 1
  store i32 %inc.i85, ptr %ci.i53, align 4
  %166 = load ptr, ptr %compptr.i54, align 8
  %incdec.ptr.i86 = getelementptr inbounds %struct.jpeg_component_info, ptr %166, i64 1
  br label %for.cond.i78, !llvm.loop !12

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_9.exit: ; preds = %for.cond.i78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i51)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i53)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i54)
  br label %if.end36

if.else33:                                        ; preds = %if.else30
  %167 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i90)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i91)
  store ptr %167, ptr %cinfo.addr.i88, align 8
  call void @emit_marker(ptr noundef %167, i32 noundef 193)
  %num_components.i92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %167, i64 0, i32 12
  %168 = load i32, ptr %num_components.i92, align 4
  %mul.i93 = mul nsw i32 %168, 3
  %add2.i96 = add nsw i32 %mul.i93, 8
  call void @emit_2bytes(ptr noundef %167, i32 noundef %add2.i96)
  %169 = load ptr, ptr %cinfo.addr.i88, align 8
  %image_height.i97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %169, i64 0, i32 7
  %170 = load i32, ptr %image_height.i97, align 4
  %cmp.i99 = icmp ugt i32 %170, 65535
  br i1 %cmp.i99, label %if.then.i106, label %lor.lhs.false.i103

lor.lhs.false.i103:                               ; preds = %if.else33
  %171 = load ptr, ptr %cinfo.addr.i88, align 8
  %image_width.i100 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %171, i64 0, i32 6
  %172 = load i32, ptr %image_width.i100, align 8
  %cmp5.i102 = icmp ugt i32 %172, 65535
  br i1 %cmp5.i102, label %if.then.i106, label %if.end.i112

if.then.i106:                                     ; preds = %lor.lhs.false.i103, %if.else33
  %173 = load ptr, ptr %cinfo.addr.i88, align 8
  %174 = load ptr, ptr %173, align 8
  %msg_code.i104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %174, i64 0, i32 5
  store i32 40, ptr %msg_code.i104, align 8
  %175 = load ptr, ptr %173, align 8
  %msg_parm.i105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %175, i64 0, i32 6
  store i32 65535, ptr %msg_parm.i105, align 4
  %176 = load ptr, ptr %cinfo.addr.i88, align 8
  %177 = load ptr, ptr %176, align 8
  %178 = load ptr, ptr %177, align 8
  call void %178(ptr noundef nonnull %176) #2
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.then.i106, %lor.lhs.false.i103
  %179 = load ptr, ptr %cinfo.addr.i88, align 8
  %data_precision.i107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %179, i64 0, i32 11
  %180 = load i32, ptr %data_precision.i107, align 8
  call void @emit_byte(ptr noundef %179, i32 noundef %180)
  %image_height9.i108 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %179, i64 0, i32 7
  %181 = load i32, ptr %image_height9.i108, align 4
  call void @emit_2bytes(ptr noundef %179, i32 noundef %181)
  %182 = load ptr, ptr %cinfo.addr.i88, align 8
  %image_width10.i109 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %182, i64 0, i32 6
  %183 = load i32, ptr %image_width10.i109, align 8
  call void @emit_2bytes(ptr noundef %182, i32 noundef %183)
  %num_components11.i110 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %182, i64 0, i32 12
  %184 = load i32, ptr %num_components11.i110, align 4
  call void @emit_byte(ptr noundef %182, i32 noundef %184)
  store i32 0, ptr %ci.i90, align 4
  %185 = load ptr, ptr %cinfo.addr.i88, align 8
  %comp_info.i111 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %185, i64 0, i32 14
  %186 = load ptr, ptr %comp_info.i111, align 8
  br label %for.cond.i115

for.cond.i115:                                    ; preds = %for.body.i121, %if.end.i112
  %storemerge126 = phi ptr [ %186, %if.end.i112 ], [ %incdec.ptr.i123, %for.body.i121 ]
  store ptr %storemerge126, ptr %compptr.i91, align 8
  %187 = load i32, ptr %ci.i90, align 4
  %188 = load ptr, ptr %cinfo.addr.i88, align 8
  %num_components12.i113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %188, i64 0, i32 12
  %189 = load i32, ptr %num_components12.i113, align 4
  %cmp13.i114 = icmp slt i32 %187, %189
  br i1 %cmp13.i114, label %for.body.i121, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_10.exit

for.body.i121:                                    ; preds = %for.cond.i115
  %190 = load ptr, ptr %cinfo.addr.i88, align 8
  %191 = load ptr, ptr %compptr.i91, align 8
  %192 = load i32, ptr %191, align 8
  call void @emit_byte(ptr noundef %190, i32 noundef %192)
  %h_samp_factor.i116 = getelementptr inbounds %struct.jpeg_component_info, ptr %191, i64 0, i32 2
  %193 = load i32, ptr %h_samp_factor.i116, align 8
  %shl.i117 = shl i32 %193, 4
  %v_samp_factor.i118 = getelementptr inbounds %struct.jpeg_component_info, ptr %191, i64 0, i32 3
  %194 = load i32, ptr %v_samp_factor.i118, align 4
  %add15.i119 = add nsw i32 %shl.i117, %194
  call void @emit_byte(ptr noundef %190, i32 noundef %add15.i119)
  %195 = load ptr, ptr %cinfo.addr.i88, align 8
  %196 = load ptr, ptr %compptr.i91, align 8
  %quant_tbl_no.i120 = getelementptr inbounds %struct.jpeg_component_info, ptr %196, i64 0, i32 4
  %197 = load i32, ptr %quant_tbl_no.i120, align 8
  call void @emit_byte(ptr noundef %195, i32 noundef %197)
  %198 = load i32, ptr %ci.i90, align 4
  %inc.i122 = add nsw i32 %198, 1
  store i32 %inc.i122, ptr %ci.i90, align 4
  %199 = load ptr, ptr %compptr.i91, align 8
  %incdec.ptr.i123 = getelementptr inbounds %struct.jpeg_component_info, ptr %199, i64 1
  br label %for.cond.i115, !llvm.loop !12

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_10.exit: ; preds = %for.cond.i115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i88)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i90)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i91)
  br label %if.end36

if.end36:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_8.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_10.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_9.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_7.exit
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_scan_header(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr.i168 = alloca ptr, align 8
  %i.i169 = alloca i32, align 4
  %td.i = alloca i32, align 4
  %ta.i = alloca i32, align 4
  %cinfo.addr.i112 = alloca ptr, align 8
  %index.addr.i113 = alloca i32, align 4
  %htbl.i115 = alloca ptr, align 8
  %length.i116 = alloca i32, align 4
  %i.i117 = alloca i32, align 4
  %cinfo.addr.i57 = alloca ptr, align 8
  %index.addr.i58 = alloca i32, align 4
  %htbl.i60 = alloca ptr, align 8
  %length.i61 = alloca i32, align 4
  %i.i62 = alloca i32, align 4
  %cinfo.addr.i2 = alloca ptr, align 8
  %index.addr.i3 = alloca i32, align 4
  %htbl.i5 = alloca ptr, align 8
  %length.i6 = alloca i32, align 4
  %i.i7 = alloca i32, align 4
  %cinfo.addr.i1 = alloca ptr, align 8
  %index.addr.i = alloca i32, align 4
  %htbl.i = alloca ptr, align 8
  %length.i = alloca i32, align 4
  %i.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %htbl.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store ptr %11, ptr %cinfo.addr.i1, align 8
  store i32 %13, ptr %index.addr.i, align 4
  %14 = load ptr, ptr %cinfo.addr.i1, align 8
  %15 = load i32, ptr %index.addr.i, align 4
  %idxprom1.i = sext i32 %15 to i64
  %arrayidx2.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i64 0, i32 16, i64 %idxprom1.i
  %16 = load ptr, ptr %arrayidx2.i, align 8
  store ptr %16, ptr %htbl.i, align 8
  %17 = load ptr, ptr %htbl.i, align 8
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.then6
  %18 = load ptr, ptr %cinfo.addr.i1, align 8
  %19 = load ptr, ptr %18, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 49, ptr %msg_code.i, align 8
  %20 = load i32, ptr %index.addr.i, align 4
  %21 = load ptr, ptr %18, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 6
  store i32 %20, ptr %msg_parm.i, align 4
  %22 = load ptr, ptr %cinfo.addr.i1, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr noundef nonnull %22) #2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.then6
  %25 = load ptr, ptr %htbl.i, align 8
  %sent_table.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %25, i64 0, i32 2
  %26 = load i32, ptr %sent_table.i, align 4
  %tobool8.i.not = icmp eq i32 %26, 0
  br i1 %tobool8.i.not, label %if.then9.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_12.exit

if.then9.i:                                       ; preds = %if.end7.i
  %27 = load ptr, ptr %cinfo.addr.i1, align 8
  call void @emit_marker(ptr noundef %27, i32 noundef 196)
  store i32 0, ptr %length.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then9.i
  %storemerge195 = phi i32 [ 1, %if.then9.i ], [ %inc.i, %for.body.i ]
  store i32 %storemerge195, ptr %i.i, align 4
  %cmp10.i = icmp slt i32 %storemerge195, 17
  br i1 %cmp10.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %28 = load ptr, ptr %htbl.i, align 8
  %29 = load i32, ptr %i.i, align 4
  %idxprom11.i = sext i32 %29 to i64
  %arrayidx12.i = getelementptr inbounds [17 x i8], ptr %28, i64 0, i64 %idxprom11.i
  %30 = load i8, ptr %arrayidx12.i, align 1
  %conv.i = zext i8 %30 to i32
  %31 = load i32, ptr %length.i, align 4
  %add13.i = add nsw i32 %31, %conv.i
  store i32 %add13.i, ptr %length.i, align 4
  %32 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %32, 1
  br label %for.cond.i, !llvm.loop !13

for.end.i:                                        ; preds = %for.cond.i
  %33 = load ptr, ptr %cinfo.addr.i1, align 8
  %34 = load i32, ptr %length.i, align 4
  %add16.i = add nsw i32 %34, 19
  call void @emit_2bytes(ptr noundef %33, i32 noundef %add16.i)
  %35 = load i32, ptr %index.addr.i, align 4
  call void @emit_byte(ptr noundef %33, i32 noundef %35)
  br label %for.cond17.i

for.cond17.i:                                     ; preds = %for.body20.i, %for.end.i
  %storemerge196 = phi i32 [ 1, %for.end.i ], [ %inc26.i, %for.body20.i ]
  store i32 %storemerge196, ptr %i.i, align 4
  %cmp18.i = icmp slt i32 %storemerge196, 17
  br i1 %cmp18.i, label %for.body20.i, label %for.cond28.i

for.body20.i:                                     ; preds = %for.cond17.i
  %36 = load ptr, ptr %cinfo.addr.i1, align 8
  %37 = load ptr, ptr %htbl.i, align 8
  %38 = load i32, ptr %i.i, align 4
  %idxprom22.i = sext i32 %38 to i64
  %arrayidx23.i = getelementptr inbounds [17 x i8], ptr %37, i64 0, i64 %idxprom22.i
  %39 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %39 to i32
  call void @emit_byte(ptr noundef %36, i32 noundef %conv24.i)
  %inc26.i = add nsw i32 %38, 1
  br label %for.cond17.i, !llvm.loop !14

for.cond28.i:                                     ; preds = %for.cond17.i, %for.body31.i
  %storemerge197 = phi i32 [ %inc36.i, %for.body31.i ], [ 0, %for.cond17.i ]
  store i32 %storemerge197, ptr %i.i, align 4
  %40 = load i32, ptr %length.i, align 4
  %cmp29.i = icmp slt i32 %storemerge197, %40
  br i1 %cmp29.i, label %for.body31.i, label %for.end37.i

for.body31.i:                                     ; preds = %for.cond28.i
  %41 = load ptr, ptr %cinfo.addr.i1, align 8
  %42 = load ptr, ptr %htbl.i, align 8
  %43 = load i32, ptr %i.i, align 4
  %idxprom32.i = sext i32 %43 to i64
  %arrayidx33.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %42, i64 0, i32 1, i64 %idxprom32.i
  %44 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %44 to i32
  call void @emit_byte(ptr noundef %41, i32 noundef %conv34.i)
  %inc36.i = add nsw i32 %43, 1
  br label %for.cond28.i, !llvm.loop !15

for.end37.i:                                      ; preds = %for.cond28.i
  %45 = load ptr, ptr %htbl.i, align 8
  %sent_table38.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %45, i64 0, i32 2
  store i32 1, ptr %sent_table38.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_12.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_12.exit: ; preds = %if.end7.i, %for.end37.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %htbl.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  br label %for.inc

if.else7:                                         ; preds = %if.then2
  %46 = load ptr, ptr %cinfo.addr, align 8
  %47 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %47, i64 0, i32 6
  %48 = load i32, ptr %ac_tbl_no, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %htbl.i5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i7)
  store ptr %46, ptr %cinfo.addr.i2, align 8
  store i32 %48, ptr %index.addr.i3, align 4
  %49 = load ptr, ptr %cinfo.addr.i2, align 8
  %50 = load i32, ptr %index.addr.i3, align 4
  %idxprom.i10 = sext i32 %50 to i64
  %arrayidx.i11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i64 0, i32 17, i64 %idxprom.i10
  %51 = load ptr, ptr %arrayidx.i11, align 8
  store ptr %51, ptr %htbl.i5, align 8
  %add.i12 = add nsw i32 %50, 16
  store i32 %add.i12, ptr %index.addr.i3, align 4
  %52 = load ptr, ptr %htbl.i5, align 8
  %cmp.i18 = icmp eq ptr %52, null
  br i1 %cmp.i18, label %if.then3.i22, label %if.end7.i25

if.then3.i22:                                     ; preds = %if.else7
  %53 = load ptr, ptr %cinfo.addr.i2, align 8
  %54 = load ptr, ptr %53, align 8
  %msg_code.i20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 5
  store i32 49, ptr %msg_code.i20, align 8
  %55 = load i32, ptr %index.addr.i3, align 4
  %56 = load ptr, ptr %53, align 8
  %msg_parm.i21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 6
  store i32 %55, ptr %msg_parm.i21, align 4
  %57 = load ptr, ptr %cinfo.addr.i2, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull %57) #2
  br label %if.end7.i25

if.end7.i25:                                      ; preds = %if.then3.i22, %if.else7
  %60 = load ptr, ptr %htbl.i5, align 8
  %sent_table.i23 = getelementptr inbounds %struct.JHUFF_TBL, ptr %60, i64 0, i32 2
  %61 = load i32, ptr %sent_table.i23, align 4
  %tobool8.i24.not = icmp eq i32 %61, 0
  br i1 %tobool8.i24.not, label %if.then9.i26, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_13.exit

if.then9.i26:                                     ; preds = %if.end7.i25
  %62 = load ptr, ptr %cinfo.addr.i2, align 8
  call void @emit_marker(ptr noundef %62, i32 noundef 196)
  store i32 0, ptr %length.i6, align 4
  br label %for.cond.i28

for.cond.i28:                                     ; preds = %for.body.i33, %if.then9.i26
  %storemerge192 = phi i32 [ 1, %if.then9.i26 ], [ %inc.i34, %for.body.i33 ]
  store i32 %storemerge192, ptr %i.i7, align 4
  %cmp10.i27 = icmp slt i32 %storemerge192, 17
  br i1 %cmp10.i27, label %for.body.i33, label %for.end.i38

for.body.i33:                                     ; preds = %for.cond.i28
  %63 = load ptr, ptr %htbl.i5, align 8
  %64 = load i32, ptr %i.i7, align 4
  %idxprom11.i29 = sext i32 %64 to i64
  %arrayidx12.i30 = getelementptr inbounds [17 x i8], ptr %63, i64 0, i64 %idxprom11.i29
  %65 = load i8, ptr %arrayidx12.i30, align 1
  %conv.i31 = zext i8 %65 to i32
  %66 = load i32, ptr %length.i6, align 4
  %add13.i32 = add nsw i32 %66, %conv.i31
  store i32 %add13.i32, ptr %length.i6, align 4
  %67 = load i32, ptr %i.i7, align 4
  %inc.i34 = add nsw i32 %67, 1
  br label %for.cond.i28, !llvm.loop !13

for.end.i38:                                      ; preds = %for.cond.i28
  %68 = load ptr, ptr %cinfo.addr.i2, align 8
  %69 = load i32, ptr %length.i6, align 4
  %add16.i37 = add nsw i32 %69, 19
  call void @emit_2bytes(ptr noundef %68, i32 noundef %add16.i37)
  %70 = load i32, ptr %index.addr.i3, align 4
  call void @emit_byte(ptr noundef %68, i32 noundef %70)
  br label %for.cond17.i40

for.cond17.i40:                                   ; preds = %for.body20.i44, %for.end.i38
  %storemerge193 = phi i32 [ 1, %for.end.i38 ], [ %inc26.i45, %for.body20.i44 ]
  store i32 %storemerge193, ptr %i.i7, align 4
  %cmp18.i39 = icmp slt i32 %storemerge193, 17
  br i1 %cmp18.i39, label %for.body20.i44, label %for.cond28.i48

for.body20.i44:                                   ; preds = %for.cond17.i40
  %71 = load ptr, ptr %cinfo.addr.i2, align 8
  %72 = load ptr, ptr %htbl.i5, align 8
  %73 = load i32, ptr %i.i7, align 4
  %idxprom22.i41 = sext i32 %73 to i64
  %arrayidx23.i42 = getelementptr inbounds [17 x i8], ptr %72, i64 0, i64 %idxprom22.i41
  %74 = load i8, ptr %arrayidx23.i42, align 1
  %conv24.i43 = zext i8 %74 to i32
  call void @emit_byte(ptr noundef %71, i32 noundef %conv24.i43)
  %inc26.i45 = add nsw i32 %73, 1
  br label %for.cond17.i40, !llvm.loop !14

for.cond28.i48:                                   ; preds = %for.cond17.i40, %for.body31.i53
  %storemerge194 = phi i32 [ %inc36.i54, %for.body31.i53 ], [ 0, %for.cond17.i40 ]
  store i32 %storemerge194, ptr %i.i7, align 4
  %75 = load i32, ptr %length.i6, align 4
  %cmp29.i47 = icmp slt i32 %storemerge194, %75
  br i1 %cmp29.i47, label %for.body31.i53, label %for.end37.i56

for.body31.i53:                                   ; preds = %for.cond28.i48
  %76 = load ptr, ptr %cinfo.addr.i2, align 8
  %77 = load ptr, ptr %htbl.i5, align 8
  %78 = load i32, ptr %i.i7, align 4
  %idxprom32.i50 = sext i32 %78 to i64
  %arrayidx33.i51 = getelementptr inbounds %struct.JHUFF_TBL, ptr %77, i64 0, i32 1, i64 %idxprom32.i50
  %79 = load i8, ptr %arrayidx33.i51, align 1
  %conv34.i52 = zext i8 %79 to i32
  call void @emit_byte(ptr noundef %76, i32 noundef %conv34.i52)
  %inc36.i54 = add nsw i32 %78, 1
  br label %for.cond28.i48, !llvm.loop !15

for.end37.i56:                                    ; preds = %for.cond28.i48
  %80 = load ptr, ptr %htbl.i5, align 8
  %sent_table38.i55 = getelementptr inbounds %struct.JHUFF_TBL, ptr %80, i64 0, i32 2
  store i32 1, ptr %sent_table38.i55, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_13.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_13.exit: ; preds = %if.end7.i25, %for.end37.i56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %htbl.i5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i7)
  br label %for.inc

if.else9:                                         ; preds = %for.body
  %81 = load ptr, ptr %cinfo.addr, align 8
  %82 = load ptr, ptr %compptr, align 8
  %dc_tbl_no10 = getelementptr inbounds %struct.jpeg_component_info, ptr %82, i64 0, i32 5
  %83 = load i32, ptr %dc_tbl_no10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i57)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i58)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %htbl.i60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i61)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i62)
  store ptr %81, ptr %cinfo.addr.i57, align 8
  store i32 %83, ptr %index.addr.i58, align 4
  %84 = load ptr, ptr %cinfo.addr.i57, align 8
  %85 = load i32, ptr %index.addr.i58, align 4
  %idxprom1.i70 = sext i32 %85 to i64
  %arrayidx2.i71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %84, i64 0, i32 16, i64 %idxprom1.i70
  %86 = load ptr, ptr %arrayidx2.i71, align 8
  store ptr %86, ptr %htbl.i60, align 8
  %87 = load ptr, ptr %htbl.i60, align 8
  %cmp.i73 = icmp eq ptr %87, null
  br i1 %cmp.i73, label %if.then3.i77, label %if.end7.i80

if.then3.i77:                                     ; preds = %if.else9
  %88 = load ptr, ptr %cinfo.addr.i57, align 8
  %89 = load ptr, ptr %88, align 8
  %msg_code.i75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 5
  store i32 49, ptr %msg_code.i75, align 8
  %90 = load i32, ptr %index.addr.i58, align 4
  %91 = load ptr, ptr %88, align 8
  %msg_parm.i76 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i64 0, i32 6
  store i32 %90, ptr %msg_parm.i76, align 4
  %92 = load ptr, ptr %cinfo.addr.i57, align 8
  %93 = load ptr, ptr %92, align 8
  %94 = load ptr, ptr %93, align 8
  call void %94(ptr noundef nonnull %92) #2
  br label %if.end7.i80

if.end7.i80:                                      ; preds = %if.then3.i77, %if.else9
  %95 = load ptr, ptr %htbl.i60, align 8
  %sent_table.i78 = getelementptr inbounds %struct.JHUFF_TBL, ptr %95, i64 0, i32 2
  %96 = load i32, ptr %sent_table.i78, align 4
  %tobool8.i79.not = icmp eq i32 %96, 0
  br i1 %tobool8.i79.not, label %if.then9.i81, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_14.exit

if.then9.i81:                                     ; preds = %if.end7.i80
  %97 = load ptr, ptr %cinfo.addr.i57, align 8
  call void @emit_marker(ptr noundef %97, i32 noundef 196)
  store i32 0, ptr %length.i61, align 4
  br label %for.cond.i83

for.cond.i83:                                     ; preds = %for.body.i88, %if.then9.i81
  %storemerge186 = phi i32 [ 1, %if.then9.i81 ], [ %inc.i89, %for.body.i88 ]
  store i32 %storemerge186, ptr %i.i62, align 4
  %cmp10.i82 = icmp slt i32 %storemerge186, 17
  br i1 %cmp10.i82, label %for.body.i88, label %for.end.i93

for.body.i88:                                     ; preds = %for.cond.i83
  %98 = load ptr, ptr %htbl.i60, align 8
  %99 = load i32, ptr %i.i62, align 4
  %idxprom11.i84 = sext i32 %99 to i64
  %arrayidx12.i85 = getelementptr inbounds [17 x i8], ptr %98, i64 0, i64 %idxprom11.i84
  %100 = load i8, ptr %arrayidx12.i85, align 1
  %conv.i86 = zext i8 %100 to i32
  %101 = load i32, ptr %length.i61, align 4
  %add13.i87 = add nsw i32 %101, %conv.i86
  store i32 %add13.i87, ptr %length.i61, align 4
  %102 = load i32, ptr %i.i62, align 4
  %inc.i89 = add nsw i32 %102, 1
  br label %for.cond.i83, !llvm.loop !13

for.end.i93:                                      ; preds = %for.cond.i83
  %103 = load ptr, ptr %cinfo.addr.i57, align 8
  %104 = load i32, ptr %length.i61, align 4
  %add16.i92 = add nsw i32 %104, 19
  call void @emit_2bytes(ptr noundef %103, i32 noundef %add16.i92)
  %105 = load i32, ptr %index.addr.i58, align 4
  call void @emit_byte(ptr noundef %103, i32 noundef %105)
  br label %for.cond17.i95

for.cond17.i95:                                   ; preds = %for.body20.i99, %for.end.i93
  %storemerge187 = phi i32 [ 1, %for.end.i93 ], [ %inc26.i100, %for.body20.i99 ]
  store i32 %storemerge187, ptr %i.i62, align 4
  %cmp18.i94 = icmp slt i32 %storemerge187, 17
  br i1 %cmp18.i94, label %for.body20.i99, label %for.cond28.i103

for.body20.i99:                                   ; preds = %for.cond17.i95
  %106 = load ptr, ptr %cinfo.addr.i57, align 8
  %107 = load ptr, ptr %htbl.i60, align 8
  %108 = load i32, ptr %i.i62, align 4
  %idxprom22.i96 = sext i32 %108 to i64
  %arrayidx23.i97 = getelementptr inbounds [17 x i8], ptr %107, i64 0, i64 %idxprom22.i96
  %109 = load i8, ptr %arrayidx23.i97, align 1
  %conv24.i98 = zext i8 %109 to i32
  call void @emit_byte(ptr noundef %106, i32 noundef %conv24.i98)
  %inc26.i100 = add nsw i32 %108, 1
  br label %for.cond17.i95, !llvm.loop !14

for.cond28.i103:                                  ; preds = %for.cond17.i95, %for.body31.i108
  %storemerge188 = phi i32 [ %inc36.i109, %for.body31.i108 ], [ 0, %for.cond17.i95 ]
  store i32 %storemerge188, ptr %i.i62, align 4
  %110 = load i32, ptr %length.i61, align 4
  %cmp29.i102 = icmp slt i32 %storemerge188, %110
  br i1 %cmp29.i102, label %for.body31.i108, label %for.end37.i111

for.body31.i108:                                  ; preds = %for.cond28.i103
  %111 = load ptr, ptr %cinfo.addr.i57, align 8
  %112 = load ptr, ptr %htbl.i60, align 8
  %113 = load i32, ptr %i.i62, align 4
  %idxprom32.i105 = sext i32 %113 to i64
  %arrayidx33.i106 = getelementptr inbounds %struct.JHUFF_TBL, ptr %112, i64 0, i32 1, i64 %idxprom32.i105
  %114 = load i8, ptr %arrayidx33.i106, align 1
  %conv34.i107 = zext i8 %114 to i32
  call void @emit_byte(ptr noundef %111, i32 noundef %conv34.i107)
  %inc36.i109 = add nsw i32 %113, 1
  br label %for.cond28.i103, !llvm.loop !15

for.end37.i111:                                   ; preds = %for.cond28.i103
  %115 = load ptr, ptr %htbl.i60, align 8
  %sent_table38.i110 = getelementptr inbounds %struct.JHUFF_TBL, ptr %115, i64 0, i32 2
  store i32 1, ptr %sent_table38.i110, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_14.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_14.exit: ; preds = %if.end7.i80, %for.end37.i111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i57)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i58)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %htbl.i60)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i61)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i62)
  %116 = load ptr, ptr %cinfo.addr, align 8
  %117 = load ptr, ptr %compptr, align 8
  %ac_tbl_no11 = getelementptr inbounds %struct.jpeg_component_info, ptr %117, i64 0, i32 6
  %118 = load i32, ptr %ac_tbl_no11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i112)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i113)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %htbl.i115)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i116)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i117)
  store ptr %116, ptr %cinfo.addr.i112, align 8
  store i32 %118, ptr %index.addr.i113, align 4
  %119 = load ptr, ptr %cinfo.addr.i112, align 8
  %120 = load i32, ptr %index.addr.i113, align 4
  %idxprom.i120 = sext i32 %120 to i64
  %arrayidx.i121 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %119, i64 0, i32 17, i64 %idxprom.i120
  %121 = load ptr, ptr %arrayidx.i121, align 8
  store ptr %121, ptr %htbl.i115, align 8
  %add.i122 = add nsw i32 %120, 16
  store i32 %add.i122, ptr %index.addr.i113, align 4
  %122 = load ptr, ptr %htbl.i115, align 8
  %cmp.i128 = icmp eq ptr %122, null
  br i1 %cmp.i128, label %if.then3.i132, label %if.end7.i135

if.then3.i132:                                    ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_14.exit
  %123 = load ptr, ptr %cinfo.addr.i112, align 8
  %124 = load ptr, ptr %123, align 8
  %msg_code.i130 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 5
  store i32 49, ptr %msg_code.i130, align 8
  %125 = load i32, ptr %index.addr.i113, align 4
  %126 = load ptr, ptr %123, align 8
  %msg_parm.i131 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %126, i64 0, i32 6
  store i32 %125, ptr %msg_parm.i131, align 4
  %127 = load ptr, ptr %cinfo.addr.i112, align 8
  %128 = load ptr, ptr %127, align 8
  %129 = load ptr, ptr %128, align 8
  call void %129(ptr noundef nonnull %127) #2
  br label %if.end7.i135

if.end7.i135:                                     ; preds = %if.then3.i132, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_14.exit
  %130 = load ptr, ptr %htbl.i115, align 8
  %sent_table.i133 = getelementptr inbounds %struct.JHUFF_TBL, ptr %130, i64 0, i32 2
  %131 = load i32, ptr %sent_table.i133, align 4
  %tobool8.i134.not = icmp eq i32 %131, 0
  br i1 %tobool8.i134.not, label %if.then9.i136, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_15.exit

if.then9.i136:                                    ; preds = %if.end7.i135
  %132 = load ptr, ptr %cinfo.addr.i112, align 8
  call void @emit_marker(ptr noundef %132, i32 noundef 196)
  store i32 0, ptr %length.i116, align 4
  br label %for.cond.i138

for.cond.i138:                                    ; preds = %for.body.i143, %if.then9.i136
  %storemerge189 = phi i32 [ 1, %if.then9.i136 ], [ %inc.i144, %for.body.i143 ]
  store i32 %storemerge189, ptr %i.i117, align 4
  %cmp10.i137 = icmp slt i32 %storemerge189, 17
  br i1 %cmp10.i137, label %for.body.i143, label %for.end.i148

for.body.i143:                                    ; preds = %for.cond.i138
  %133 = load ptr, ptr %htbl.i115, align 8
  %134 = load i32, ptr %i.i117, align 4
  %idxprom11.i139 = sext i32 %134 to i64
  %arrayidx12.i140 = getelementptr inbounds [17 x i8], ptr %133, i64 0, i64 %idxprom11.i139
  %135 = load i8, ptr %arrayidx12.i140, align 1
  %conv.i141 = zext i8 %135 to i32
  %136 = load i32, ptr %length.i116, align 4
  %add13.i142 = add nsw i32 %136, %conv.i141
  store i32 %add13.i142, ptr %length.i116, align 4
  %137 = load i32, ptr %i.i117, align 4
  %inc.i144 = add nsw i32 %137, 1
  br label %for.cond.i138, !llvm.loop !13

for.end.i148:                                     ; preds = %for.cond.i138
  %138 = load ptr, ptr %cinfo.addr.i112, align 8
  %139 = load i32, ptr %length.i116, align 4
  %add16.i147 = add nsw i32 %139, 19
  call void @emit_2bytes(ptr noundef %138, i32 noundef %add16.i147)
  %140 = load i32, ptr %index.addr.i113, align 4
  call void @emit_byte(ptr noundef %138, i32 noundef %140)
  br label %for.cond17.i150

for.cond17.i150:                                  ; preds = %for.body20.i154, %for.end.i148
  %storemerge190 = phi i32 [ 1, %for.end.i148 ], [ %inc26.i155, %for.body20.i154 ]
  store i32 %storemerge190, ptr %i.i117, align 4
  %cmp18.i149 = icmp slt i32 %storemerge190, 17
  br i1 %cmp18.i149, label %for.body20.i154, label %for.cond28.i158

for.body20.i154:                                  ; preds = %for.cond17.i150
  %141 = load ptr, ptr %cinfo.addr.i112, align 8
  %142 = load ptr, ptr %htbl.i115, align 8
  %143 = load i32, ptr %i.i117, align 4
  %idxprom22.i151 = sext i32 %143 to i64
  %arrayidx23.i152 = getelementptr inbounds [17 x i8], ptr %142, i64 0, i64 %idxprom22.i151
  %144 = load i8, ptr %arrayidx23.i152, align 1
  %conv24.i153 = zext i8 %144 to i32
  call void @emit_byte(ptr noundef %141, i32 noundef %conv24.i153)
  %inc26.i155 = add nsw i32 %143, 1
  br label %for.cond17.i150, !llvm.loop !14

for.cond28.i158:                                  ; preds = %for.cond17.i150, %for.body31.i163
  %storemerge191 = phi i32 [ %inc36.i164, %for.body31.i163 ], [ 0, %for.cond17.i150 ]
  store i32 %storemerge191, ptr %i.i117, align 4
  %145 = load i32, ptr %length.i116, align 4
  %cmp29.i157 = icmp slt i32 %storemerge191, %145
  br i1 %cmp29.i157, label %for.body31.i163, label %for.end37.i166

for.body31.i163:                                  ; preds = %for.cond28.i158
  %146 = load ptr, ptr %cinfo.addr.i112, align 8
  %147 = load ptr, ptr %htbl.i115, align 8
  %148 = load i32, ptr %i.i117, align 4
  %idxprom32.i160 = sext i32 %148 to i64
  %arrayidx33.i161 = getelementptr inbounds %struct.JHUFF_TBL, ptr %147, i64 0, i32 1, i64 %idxprom32.i160
  %149 = load i8, ptr %arrayidx33.i161, align 1
  %conv34.i162 = zext i8 %149 to i32
  call void @emit_byte(ptr noundef %146, i32 noundef %conv34.i162)
  %inc36.i164 = add nsw i32 %148, 1
  br label %for.cond28.i158, !llvm.loop !15

for.end37.i166:                                   ; preds = %for.cond28.i158
  %150 = load ptr, ptr %htbl.i115, align 8
  %sent_table38.i165 = getelementptr inbounds %struct.JHUFF_TBL, ptr %150, i64 0, i32 2
  store i32 1, ptr %sent_table38.i165, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_15.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_15.exit: ; preds = %if.end7.i135, %for.end37.i166
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i112)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i113)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %htbl.i115)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i116)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i117)
  br label %for.inc

for.inc:                                          ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_15.exit, %if.then4, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_12.exit, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_13.exit
  %151 = load i32, ptr %i, align 4
  %inc = add nsw i32 %151, 1
  br label %for.cond, !llvm.loop !16

if.end13:                                         ; preds = %for.cond, %entry
  %152 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, ptr %152, i64 0, i32 29
  %153 = load i32, ptr %restart_interval, align 8
  %tobool14.not = icmp eq i32 %153, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  %154 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_marker(ptr noundef %154, i32 noundef 221)
  call void @emit_2bytes(ptr noundef %154, i32 noundef 4)
  %restart_interval.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %154, i64 0, i32 29
  %155 = load i32, ptr %restart_interval.i, align 8
  call void @emit_2bytes(ptr noundef %154, i32 noundef %155)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  %156 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i168)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i169)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %td.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ta.i)
  store ptr %156, ptr %cinfo.addr.i168, align 8
  call void @emit_marker(ptr noundef %156, i32 noundef 218)
  %comps_in_scan.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %156, i64 0, i32 41
  %157 = load i32, ptr %comps_in_scan.i, align 4
  %mul.i = shl nsw i32 %157, 1
  %add2.i = add nsw i32 %mul.i, 6
  call void @emit_2bytes(ptr noundef %156, i32 noundef %add2.i)
  %158 = load ptr, ptr %cinfo.addr.i168, align 8
  %comps_in_scan3.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %158, i64 0, i32 41
  %159 = load i32, ptr %comps_in_scan3.i, align 4
  call void @emit_byte(ptr noundef %158, i32 noundef %159)
  br label %for.cond.i172

for.cond.i172:                                    ; preds = %if.end11.i, %if.end16
  %storemerge185 = phi i32 [ 0, %if.end16 ], [ %inc.i182, %if.end11.i ]
  store i32 %storemerge185, ptr %i.i169, align 4
  %160 = load ptr, ptr %cinfo.addr.i168, align 8
  %comps_in_scan4.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %160, i64 0, i32 41
  %161 = load i32, ptr %comps_in_scan4.i, align 4
  %cmp.i171 = icmp slt i32 %storemerge185, %161
  br i1 %cmp.i171, label %for.body.i176, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_17.exit

for.body.i176:                                    ; preds = %for.cond.i172
  %162 = load ptr, ptr %cinfo.addr.i168, align 8
  %163 = load i32, ptr %i.i169, align 4
  %idxprom.i173 = sext i32 %163 to i64
  %arrayidx.i174 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %162, i64 0, i32 42, i64 %idxprom.i173
  %164 = load ptr, ptr %arrayidx.i174, align 8
  %165 = load i32, ptr %164, align 8
  call void @emit_byte(ptr noundef %162, i32 noundef %165)
  %dc_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %164, i64 0, i32 5
  %166 = load i32, ptr %dc_tbl_no.i, align 4
  store i32 %166, ptr %td.i, align 4
  %ac_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %164, i64 0, i32 6
  %167 = load i32, ptr %ac_tbl_no.i, align 8
  store i32 %167, ptr %ta.i, align 4
  %168 = load ptr, ptr %cinfo.addr.i168, align 8
  %progressive_mode.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %168, i64 0, i32 37
  %169 = load i32, ptr %progressive_mode.i, align 4
  %tobool.i175.not = icmp eq i32 %169, 0
  br i1 %tobool.i175.not, label %if.end11.i, label %if.then.i177

if.then.i177:                                     ; preds = %for.body.i176
  %170 = load ptr, ptr %cinfo.addr.i168, align 8
  %Ss.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %170, i64 0, i32 47
  %171 = load i32, ptr %Ss.i, align 4
  %cmp5.i = icmp eq i32 %171, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i181

if.then6.i:                                       ; preds = %if.then.i177
  store i32 0, ptr %ta.i, align 4
  %172 = load ptr, ptr %cinfo.addr.i168, align 8
  %Ah.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %172, i64 0, i32 49
  %173 = load i32, ptr %Ah.i, align 4
  %cmp7.i.not = icmp eq i32 %173, 0
  br i1 %cmp7.i.not, label %if.end11.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then6.i
  %174 = load ptr, ptr %cinfo.addr.i168, align 8
  %arith_code.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %174, i64 0, i32 24
  %175 = load i32, ptr %arith_code.i, align 4
  %tobool8.i178.not = icmp eq i32 %175, 0
  br i1 %tobool8.i178.not, label %if.then9.i179, label %if.end11.i

if.then9.i179:                                    ; preds = %land.lhs.true.i
  store i32 0, ptr %td.i, align 4
  br label %if.end11.i

if.else.i181:                                     ; preds = %if.then.i177
  store i32 0, ptr %td.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i181, %if.then9.i179, %land.lhs.true.i, %if.then6.i, %for.body.i176
  %176 = load ptr, ptr %cinfo.addr.i168, align 8
  %177 = load i32, ptr %td.i, align 4
  %shl.i = shl i32 %177, 4
  %178 = load i32, ptr %ta.i, align 4
  %add12.i = add nsw i32 %shl.i, %178
  call void @emit_byte(ptr noundef %176, i32 noundef %add12.i)
  %179 = load i32, ptr %i.i169, align 4
  %inc.i182 = add nsw i32 %179, 1
  br label %for.cond.i172, !llvm.loop !17

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_17.exit: ; preds = %for.cond.i172
  %180 = load ptr, ptr %cinfo.addr.i168, align 8
  %Ss13.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %180, i64 0, i32 47
  %181 = load i32, ptr %Ss13.i, align 4
  call void @emit_byte(ptr noundef %180, i32 noundef %181)
  %Se.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %180, i64 0, i32 48
  %182 = load i32, ptr %Se.i, align 8
  call void @emit_byte(ptr noundef %180, i32 noundef %182)
  %183 = load ptr, ptr %cinfo.addr.i168, align 8
  %Ah14.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %183, i64 0, i32 49
  %184 = load i32, ptr %Ah14.i, align 4
  %shl15.i = shl i32 %184, 4
  %Al.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %183, i64 0, i32 50
  %185 = load i32, ptr %Al.i, align 8
  %add16.i183 = add nsw i32 %shl15.i, %185
  call void @emit_byte(ptr noundef %183, i32 noundef %add16.i183)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i168)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i169)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %td.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ta.i)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_file_trailer(ptr noundef %cinfo) #0 {
entry:
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 255)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 217)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @write_tables_only(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr.i21 = alloca ptr, align 8
  %index.addr.i22 = alloca i32, align 4
  %htbl.i24 = alloca ptr, align 8
  %length.i25 = alloca i32, align 4
  %i.i26 = alloca i32, align 4
  %cinfo.addr.i2 = alloca ptr, align 8
  %index.addr.i3 = alloca i32, align 4
  %htbl.i = alloca ptr, align 8
  %length.i = alloca i32, align 4
  %i.i4 = alloca i32, align 4
  %cinfo.addr.i1 = alloca ptr, align 8
  %index.addr.i = alloca i32, align 4
  %qtbl.i = alloca ptr, align 8
  %prec.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %qval.i = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 255)
  call void @emit_byte(ptr noundef %cinfo, i32 noundef 216)
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qtbl.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prec.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qval.i)
  store ptr %3, ptr %cinfo.addr.i1, align 8
  store i32 %4, ptr %index.addr.i, align 4
  %idxprom.i = sext i32 %4 to i64
  %arrayidx.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 15, i64 %idxprom.i
  %5 = load ptr, ptr %arrayidx.i, align 8
  store ptr %5, ptr %qtbl.i, align 8
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr.i1, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 51, ptr %msg_code.i, align 8
  %8 = load i32, ptr %index.addr.i, align 4
  %9 = load ptr, ptr %6, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 %8, ptr %msg_parm.i, align 4
  %10 = load ptr, ptr %cinfo.addr.i1, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr noundef nonnull %10) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then
  store i32 0, ptr %prec.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end10.i, %if.end.i
  %storemerge85 = phi i32 [ 0, %if.end.i ], [ %inc.i, %if.end10.i ]
  store i32 %storemerge85, ptr %i.i, align 4
  %cmp4.i = icmp slt i32 %storemerge85, 64
  br i1 %cmp4.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %13 = load ptr, ptr %qtbl.i, align 8
  %14 = load i32, ptr %i.i, align 4
  %idxprom5.i = sext i32 %14 to i64
  %arrayidx6.i = getelementptr inbounds [64 x i16], ptr %13, i64 0, i64 %idxprom5.i
  %15 = load i16, ptr %arrayidx6.i, align 2
  %cmp7.i = icmp ugt i16 %15, 255
  br i1 %cmp7.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %for.body.i
  store i32 1, ptr %prec.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %for.body.i
  %16 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %16, 1
  br label %for.cond.i, !llvm.loop !8

for.end.i:                                        ; preds = %for.cond.i
  %17 = load ptr, ptr %qtbl.i, align 8
  %sent_table.i = getelementptr inbounds %struct.JQUANT_TBL, ptr %17, i64 0, i32 1
  %18 = load i32, ptr %sent_table.i, align 4
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %if.then11.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_20.exit

if.then11.i:                                      ; preds = %for.end.i
  %19 = load ptr, ptr %cinfo.addr.i1, align 8
  call void @emit_marker(ptr noundef %19, i32 noundef 219)
  %20 = load i32, ptr %prec.i, align 4
  %tobool12.i.not = icmp eq i32 %20, 0
  %cond.i = select i1 %tobool12.i.not, i32 67, i32 131
  call void @emit_2bytes(ptr noundef %19, i32 noundef %cond.i)
  %21 = load i32, ptr %index.addr.i, align 4
  %shl.i = shl i32 %20, 4
  %add.i = add nsw i32 %21, %shl.i
  call void @emit_byte(ptr noundef %19, i32 noundef %add.i)
  br label %for.cond13.i

for.cond13.i:                                     ; preds = %if.end25.i, %if.then11.i
  %storemerge86 = phi i32 [ 0, %if.then11.i ], [ %inc27.i, %if.end25.i ]
  store i32 %storemerge86, ptr %i.i, align 4
  %cmp14.i = icmp slt i32 %storemerge86, 64
  br i1 %cmp14.i, label %for.body16.i, label %for.end28.i

for.body16.i:                                     ; preds = %for.cond13.i
  %22 = load ptr, ptr %qtbl.i, align 8
  %23 = load i32, ptr %i.i, align 4
  %idxprom18.i = sext i32 %23 to i64
  %arrayidx19.i = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom18.i
  %24 = load i32, ptr %arrayidx19.i, align 4
  %idxprom20.i = sext i32 %24 to i64
  %arrayidx21.i = getelementptr inbounds [64 x i16], ptr %22, i64 0, i64 %idxprom20.i
  %25 = load i16, ptr %arrayidx21.i, align 2
  %conv22.i = zext i16 %25 to i32
  store i32 %conv22.i, ptr %qval.i, align 4
  %26 = load i32, ptr %prec.i, align 4
  %tobool23.i.not = icmp eq i32 %26, 0
  br i1 %tobool23.i.not, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %for.body16.i
  %27 = load ptr, ptr %cinfo.addr.i1, align 8
  %28 = load i32, ptr %qval.i, align 4
  %shr.i = lshr i32 %28, 8
  call void @emit_byte(ptr noundef %27, i32 noundef %shr.i)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %for.body16.i
  %29 = load ptr, ptr %cinfo.addr.i1, align 8
  %30 = load i32, ptr %qval.i, align 4
  %and.i = and i32 %30, 255
  call void @emit_byte(ptr noundef %29, i32 noundef %and.i)
  %31 = load i32, ptr %i.i, align 4
  %inc27.i = add nsw i32 %31, 1
  br label %for.cond13.i, !llvm.loop !9

for.end28.i:                                      ; preds = %for.cond13.i
  %32 = load ptr, ptr %qtbl.i, align 8
  %sent_table29.i = getelementptr inbounds %struct.JQUANT_TBL, ptr %32, i64 0, i32 1
  store i32 1, ptr %sent_table29.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_20.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_20.exit: ; preds = %for.end.i, %for.end28.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qtbl.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prec.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qval.i)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_20.exit
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i64 0, i32 24
  %35 = load i32, ptr %arith_code, align 4
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %for.cond3, label %if.end19

for.cond3:                                        ; preds = %for.end, %for.inc16
  %storemerge78 = phi i32 [ %inc17, %for.inc16 ], [ 0, %for.end ]
  store i32 %storemerge78, ptr %i, align 4
  %cmp4 = icmp slt i32 %storemerge78, 4
  br i1 %cmp4, label %for.body5, label %if.end19

for.body5:                                        ; preds = %for.cond3
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %37 to i64
  %arrayidx7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 16, i64 %idxprom6
  %38 = load ptr, ptr %arrayidx7, align 8
  %cmp8.not = icmp eq ptr %38, null
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.body5
  %39 = load ptr, ptr %cinfo.addr, align 8
  %40 = load i32, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %htbl.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i4)
  store ptr %39, ptr %cinfo.addr.i2, align 8
  store i32 %40, ptr %index.addr.i3, align 4
  %41 = load ptr, ptr %cinfo.addr.i2, align 8
  %42 = load i32, ptr %index.addr.i3, align 4
  %idxprom1.i = sext i32 %42 to i64
  %arrayidx2.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %41, i64 0, i32 16, i64 %idxprom1.i
  %43 = load ptr, ptr %arrayidx2.i, align 8
  store ptr %43, ptr %htbl.i, align 8
  %44 = load ptr, ptr %htbl.i, align 8
  %cmp.i10 = icmp eq ptr %44, null
  br i1 %cmp.i10, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.then9
  %45 = load ptr, ptr %cinfo.addr.i2, align 8
  %46 = load ptr, ptr %45, align 8
  %msg_code.i12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 49, ptr %msg_code.i12, align 8
  %47 = load i32, ptr %index.addr.i3, align 4
  %48 = load ptr, ptr %45, align 8
  %msg_parm.i13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 6
  store i32 %47, ptr %msg_parm.i13, align 4
  %49 = load ptr, ptr %cinfo.addr.i2, align 8
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %50, align 8
  call void %51(ptr noundef nonnull %49) #2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.then9
  %52 = load ptr, ptr %htbl.i, align 8
  %sent_table.i14 = getelementptr inbounds %struct.JHUFF_TBL, ptr %52, i64 0, i32 2
  %53 = load i32, ptr %sent_table.i14, align 4
  %tobool8.i.not = icmp eq i32 %53, 0
  br i1 %tobool8.i.not, label %if.then9.i15, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_21.exit

if.then9.i15:                                     ; preds = %if.end7.i
  %54 = load ptr, ptr %cinfo.addr.i2, align 8
  call void @emit_marker(ptr noundef %54, i32 noundef 196)
  store i32 0, ptr %length.i, align 4
  br label %for.cond.i16

for.cond.i16:                                     ; preds = %for.body.i18, %if.then9.i15
  %storemerge82 = phi i32 [ 1, %if.then9.i15 ], [ %inc.i19, %for.body.i18 ]
  store i32 %storemerge82, ptr %i.i4, align 4
  %cmp10.i = icmp slt i32 %storemerge82, 17
  br i1 %cmp10.i, label %for.body.i18, label %for.end.i20

for.body.i18:                                     ; preds = %for.cond.i16
  %55 = load ptr, ptr %htbl.i, align 8
  %56 = load i32, ptr %i.i4, align 4
  %idxprom11.i = sext i32 %56 to i64
  %arrayidx12.i = getelementptr inbounds [17 x i8], ptr %55, i64 0, i64 %idxprom11.i
  %57 = load i8, ptr %arrayidx12.i, align 1
  %conv.i17 = zext i8 %57 to i32
  %58 = load i32, ptr %length.i, align 4
  %add13.i = add nsw i32 %58, %conv.i17
  store i32 %add13.i, ptr %length.i, align 4
  %59 = load i32, ptr %i.i4, align 4
  %inc.i19 = add nsw i32 %59, 1
  br label %for.cond.i16, !llvm.loop !13

for.end.i20:                                      ; preds = %for.cond.i16
  %60 = load ptr, ptr %cinfo.addr.i2, align 8
  %61 = load i32, ptr %length.i, align 4
  %add16.i = add nsw i32 %61, 19
  call void @emit_2bytes(ptr noundef %60, i32 noundef %add16.i)
  %62 = load i32, ptr %index.addr.i3, align 4
  call void @emit_byte(ptr noundef %60, i32 noundef %62)
  br label %for.cond17.i

for.cond17.i:                                     ; preds = %for.body20.i, %for.end.i20
  %storemerge83 = phi i32 [ 1, %for.end.i20 ], [ %inc26.i, %for.body20.i ]
  store i32 %storemerge83, ptr %i.i4, align 4
  %cmp18.i = icmp slt i32 %storemerge83, 17
  br i1 %cmp18.i, label %for.body20.i, label %for.cond28.i

for.body20.i:                                     ; preds = %for.cond17.i
  %63 = load ptr, ptr %cinfo.addr.i2, align 8
  %64 = load ptr, ptr %htbl.i, align 8
  %65 = load i32, ptr %i.i4, align 4
  %idxprom22.i = sext i32 %65 to i64
  %arrayidx23.i = getelementptr inbounds [17 x i8], ptr %64, i64 0, i64 %idxprom22.i
  %66 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %66 to i32
  call void @emit_byte(ptr noundef %63, i32 noundef %conv24.i)
  %inc26.i = add nsw i32 %65, 1
  br label %for.cond17.i, !llvm.loop !14

for.cond28.i:                                     ; preds = %for.cond17.i, %for.body31.i
  %storemerge84 = phi i32 [ %inc36.i, %for.body31.i ], [ 0, %for.cond17.i ]
  store i32 %storemerge84, ptr %i.i4, align 4
  %67 = load i32, ptr %length.i, align 4
  %cmp29.i = icmp slt i32 %storemerge84, %67
  br i1 %cmp29.i, label %for.body31.i, label %for.end37.i

for.body31.i:                                     ; preds = %for.cond28.i
  %68 = load ptr, ptr %cinfo.addr.i2, align 8
  %69 = load ptr, ptr %htbl.i, align 8
  %70 = load i32, ptr %i.i4, align 4
  %idxprom32.i = sext i32 %70 to i64
  %arrayidx33.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %69, i64 0, i32 1, i64 %idxprom32.i
  %71 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %71 to i32
  call void @emit_byte(ptr noundef %68, i32 noundef %conv34.i)
  %inc36.i = add nsw i32 %70, 1
  br label %for.cond28.i, !llvm.loop !15

for.end37.i:                                      ; preds = %for.cond28.i
  %72 = load ptr, ptr %htbl.i, align 8
  %sent_table38.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %72, i64 0, i32 2
  store i32 1, ptr %sent_table38.i, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_21.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_21.exit: ; preds = %if.end7.i, %for.end37.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %htbl.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i4)
  br label %if.end10

if.end10:                                         ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_21.exit, %for.body5
  %73 = load ptr, ptr %cinfo.addr, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %74 to i64
  %arrayidx12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %73, i64 0, i32 17, i64 %idxprom11
  %75 = load ptr, ptr %arrayidx12, align 8
  %cmp13.not = icmp eq ptr %75, null
  br i1 %cmp13.not, label %for.inc16, label %if.then14

if.then14:                                        ; preds = %if.end10
  %76 = load ptr, ptr %cinfo.addr, align 8
  %77 = load i32, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.addr.i22)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %htbl.i24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i26)
  store ptr %76, ptr %cinfo.addr.i21, align 8
  store i32 %77, ptr %index.addr.i22, align 4
  %78 = load ptr, ptr %cinfo.addr.i21, align 8
  %79 = load i32, ptr %index.addr.i22, align 4
  %idxprom.i29 = sext i32 %79 to i64
  %arrayidx.i30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %78, i64 0, i32 17, i64 %idxprom.i29
  %80 = load ptr, ptr %arrayidx.i30, align 8
  store ptr %80, ptr %htbl.i24, align 8
  %add.i31 = add nsw i32 %79, 16
  store i32 %add.i31, ptr %index.addr.i22, align 4
  %81 = load ptr, ptr %htbl.i24, align 8
  %cmp.i37 = icmp eq ptr %81, null
  br i1 %cmp.i37, label %if.then3.i41, label %if.end7.i44

if.then3.i41:                                     ; preds = %if.then14
  %82 = load ptr, ptr %cinfo.addr.i21, align 8
  %83 = load ptr, ptr %82, align 8
  %msg_code.i39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 5
  store i32 49, ptr %msg_code.i39, align 8
  %84 = load i32, ptr %index.addr.i22, align 4
  %85 = load ptr, ptr %82, align 8
  %msg_parm.i40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i64 0, i32 6
  store i32 %84, ptr %msg_parm.i40, align 4
  %86 = load ptr, ptr %cinfo.addr.i21, align 8
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %87, align 8
  call void %88(ptr noundef nonnull %86) #2
  br label %if.end7.i44

if.end7.i44:                                      ; preds = %if.then3.i41, %if.then14
  %89 = load ptr, ptr %htbl.i24, align 8
  %sent_table.i42 = getelementptr inbounds %struct.JHUFF_TBL, ptr %89, i64 0, i32 2
  %90 = load i32, ptr %sent_table.i42, align 4
  %tobool8.i43.not = icmp eq i32 %90, 0
  br i1 %tobool8.i43.not, label %if.then9.i45, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_22.exit

if.then9.i45:                                     ; preds = %if.end7.i44
  %91 = load ptr, ptr %cinfo.addr.i21, align 8
  call void @emit_marker(ptr noundef %91, i32 noundef 196)
  store i32 0, ptr %length.i25, align 4
  br label %for.cond.i47

for.cond.i47:                                     ; preds = %for.body.i52, %if.then9.i45
  %storemerge79 = phi i32 [ 1, %if.then9.i45 ], [ %inc.i53, %for.body.i52 ]
  store i32 %storemerge79, ptr %i.i26, align 4
  %cmp10.i46 = icmp slt i32 %storemerge79, 17
  br i1 %cmp10.i46, label %for.body.i52, label %for.end.i57

for.body.i52:                                     ; preds = %for.cond.i47
  %92 = load ptr, ptr %htbl.i24, align 8
  %93 = load i32, ptr %i.i26, align 4
  %idxprom11.i48 = sext i32 %93 to i64
  %arrayidx12.i49 = getelementptr inbounds [17 x i8], ptr %92, i64 0, i64 %idxprom11.i48
  %94 = load i8, ptr %arrayidx12.i49, align 1
  %conv.i50 = zext i8 %94 to i32
  %95 = load i32, ptr %length.i25, align 4
  %add13.i51 = add nsw i32 %95, %conv.i50
  store i32 %add13.i51, ptr %length.i25, align 4
  %96 = load i32, ptr %i.i26, align 4
  %inc.i53 = add nsw i32 %96, 1
  br label %for.cond.i47, !llvm.loop !13

for.end.i57:                                      ; preds = %for.cond.i47
  %97 = load ptr, ptr %cinfo.addr.i21, align 8
  %98 = load i32, ptr %length.i25, align 4
  %add16.i56 = add nsw i32 %98, 19
  call void @emit_2bytes(ptr noundef %97, i32 noundef %add16.i56)
  %99 = load i32, ptr %index.addr.i22, align 4
  call void @emit_byte(ptr noundef %97, i32 noundef %99)
  br label %for.cond17.i59

for.cond17.i59:                                   ; preds = %for.body20.i63, %for.end.i57
  %storemerge80 = phi i32 [ 1, %for.end.i57 ], [ %inc26.i64, %for.body20.i63 ]
  store i32 %storemerge80, ptr %i.i26, align 4
  %cmp18.i58 = icmp slt i32 %storemerge80, 17
  br i1 %cmp18.i58, label %for.body20.i63, label %for.cond28.i67

for.body20.i63:                                   ; preds = %for.cond17.i59
  %100 = load ptr, ptr %cinfo.addr.i21, align 8
  %101 = load ptr, ptr %htbl.i24, align 8
  %102 = load i32, ptr %i.i26, align 4
  %idxprom22.i60 = sext i32 %102 to i64
  %arrayidx23.i61 = getelementptr inbounds [17 x i8], ptr %101, i64 0, i64 %idxprom22.i60
  %103 = load i8, ptr %arrayidx23.i61, align 1
  %conv24.i62 = zext i8 %103 to i32
  call void @emit_byte(ptr noundef %100, i32 noundef %conv24.i62)
  %inc26.i64 = add nsw i32 %102, 1
  br label %for.cond17.i59, !llvm.loop !14

for.cond28.i67:                                   ; preds = %for.cond17.i59, %for.body31.i72
  %storemerge81 = phi i32 [ %inc36.i73, %for.body31.i72 ], [ 0, %for.cond17.i59 ]
  store i32 %storemerge81, ptr %i.i26, align 4
  %104 = load i32, ptr %length.i25, align 4
  %cmp29.i66 = icmp slt i32 %storemerge81, %104
  br i1 %cmp29.i66, label %for.body31.i72, label %for.end37.i75

for.body31.i72:                                   ; preds = %for.cond28.i67
  %105 = load ptr, ptr %cinfo.addr.i21, align 8
  %106 = load ptr, ptr %htbl.i24, align 8
  %107 = load i32, ptr %i.i26, align 4
  %idxprom32.i69 = sext i32 %107 to i64
  %arrayidx33.i70 = getelementptr inbounds %struct.JHUFF_TBL, ptr %106, i64 0, i32 1, i64 %idxprom32.i69
  %108 = load i8, ptr %arrayidx33.i70, align 1
  %conv34.i71 = zext i8 %108 to i32
  call void @emit_byte(ptr noundef %105, i32 noundef %conv34.i71)
  %inc36.i73 = add nsw i32 %107, 1
  br label %for.cond28.i67, !llvm.loop !15

for.end37.i75:                                    ; preds = %for.cond28.i67
  %109 = load ptr, ptr %htbl.i24, align 8
  %sent_table38.i74 = getelementptr inbounds %struct.JHUFF_TBL, ptr %109, i64 0, i32 2
  store i32 1, ptr %sent_table38.i74, align 4
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_22.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_22.exit: ; preds = %if.end7.i44, %for.end37.i75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.addr.i22)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %htbl.i24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i26)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end10, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_22.exit
  %110 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %110, 1
  br label %for.cond3, !llvm.loop !19

if.end19:                                         ; preds = %for.cond3, %for.end
  %111 = load ptr, ptr %cinfo.addr, align 8
  call void @emit_byte(ptr noundef %111, i32 noundef 255)
  call void @emit_byte(ptr noundef %111, i32 noundef 217)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_marker(ptr noundef %cinfo, i32 noundef %mark) #0 {
entry:
  %cinfo.addr.i1 = alloca ptr, align 8
  %dest.i3 = alloca ptr, align 8
  %cinfo.addr.i = alloca ptr, align 8
  %dest.i = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  %mark.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %mark, ptr %mark.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest.i)
  store ptr %cinfo, ptr %cinfo.addr.i, align 8
  %dest1.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %dest1.i, align 8
  store ptr %0, ptr %dest.i, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %1, i64 1
  store ptr %incdec.ptr.i, ptr %0, align 8
  store i8 -1, ptr %1, align 1
  %free_in_buffer.i = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %free_in_buffer.i, align 8
  %dec.i = add i64 %2, -1
  store i64 %dec.i, ptr %free_in_buffer.i, align 8
  %cmp.i = icmp eq i64 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_24.exit

if.then.i:                                        ; preds = %entry
  %3 = load ptr, ptr %dest.i, align 8
  %empty_output_buffer.i = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 3
  %4 = load ptr, ptr %empty_output_buffer.i, align 8
  %5 = load ptr, ptr %cinfo.addr.i, align 8
  %call.i = call i32 %4(ptr noundef %5) #2
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then3.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_24.exit

if.then3.i:                                       ; preds = %if.then.i
  %6 = load ptr, ptr %cinfo.addr.i, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 22, ptr %msg_code.i, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #2
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_24.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_24.exit: ; preds = %if.then.i, %if.then3.i, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest.i)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load i32, ptr %mark.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest.i3)
  store ptr %10, ptr %cinfo.addr.i1, align 8
  %dest1.i4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %dest1.i4, align 8
  store ptr %12, ptr %dest.i3, align 8
  %conv.i5 = trunc i32 %11 to i8
  %13 = load ptr, ptr %12, align 8
  %incdec.ptr.i6 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr.i6, ptr %12, align 8
  store i8 %conv.i5, ptr %13, align 1
  %free_in_buffer.i7 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %free_in_buffer.i7, align 8
  %dec.i8 = add i64 %14, -1
  store i64 %dec.i8, ptr %free_in_buffer.i7, align 8
  %cmp.i9 = icmp eq i64 %dec.i8, 0
  br i1 %cmp.i9, label %if.then.i13, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_25.exit

if.then.i13:                                      ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_24.exit
  %15 = load ptr, ptr %dest.i3, align 8
  %empty_output_buffer.i10 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %15, i64 0, i32 3
  %16 = load ptr, ptr %empty_output_buffer.i10, align 8
  %17 = load ptr, ptr %cinfo.addr.i1, align 8
  %call.i11 = call i32 %16(ptr noundef %17) #2
  %tobool.i12.not = icmp eq i32 %call.i11, 0
  br i1 %tobool.i12.not, label %if.then3.i15, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_25.exit

if.then3.i15:                                     ; preds = %if.then.i13
  %18 = load ptr, ptr %cinfo.addr.i1, align 8
  %19 = load ptr, ptr %18, align 8
  %msg_code.i14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 22, ptr %msg_code.i14, align 8
  %20 = load ptr, ptr %18, align 8
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef nonnull %18) #2
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_25.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_25.exit: ; preds = %if.then.i13, %if.then3.i15, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_24.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest.i3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_2bytes(ptr noundef %cinfo, i32 noundef %value) #0 {
entry:
  %cinfo.addr.i1 = alloca ptr, align 8
  %dest.i3 = alloca ptr, align 8
  %cinfo.addr.i = alloca ptr, align 8
  %dest.i = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = lshr i32 %value, 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest.i)
  store ptr %cinfo, ptr %cinfo.addr.i, align 8
  %dest1.i = getelementptr inbounds %struct.jpeg_compress_struct, ptr %cinfo, i64 0, i32 5
  %1 = load ptr, ptr %dest1.i, align 8
  store ptr %1, ptr %dest.i, align 8
  %conv.i = trunc i32 %0 to i8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr.i, ptr %1, align 8
  store i8 %conv.i, ptr %2, align 1
  %free_in_buffer.i = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %1, i64 0, i32 1
  %3 = load i64, ptr %free_in_buffer.i, align 8
  %dec.i = add i64 %3, -1
  store i64 %dec.i, ptr %free_in_buffer.i, align 8
  %cmp.i = icmp eq i64 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_26.exit

if.then.i:                                        ; preds = %entry
  %4 = load ptr, ptr %dest.i, align 8
  %empty_output_buffer.i = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %empty_output_buffer.i, align 8
  %6 = load ptr, ptr %cinfo.addr.i, align 8
  %call.i = call i32 %5(ptr noundef %6) #2
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then3.i, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_26.exit

if.then3.i:                                       ; preds = %if.then.i
  %7 = load ptr, ptr %cinfo.addr.i, align 8
  %8 = load ptr, ptr %7, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 22, ptr %msg_code.i, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull %7) #2
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_26.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_26.exit: ; preds = %if.then.i, %if.then3.i, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest.i)
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load i32, ptr %value.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest.i3)
  store ptr %11, ptr %cinfo.addr.i1, align 8
  %dest1.i4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %dest1.i4, align 8
  store ptr %13, ptr %dest.i3, align 8
  %conv.i5 = trunc i32 %12 to i8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr.i6 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr.i6, ptr %13, align 8
  store i8 %conv.i5, ptr %14, align 1
  %free_in_buffer.i7 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %free_in_buffer.i7, align 8
  %dec.i8 = add i64 %15, -1
  store i64 %dec.i8, ptr %free_in_buffer.i7, align 8
  %cmp.i9 = icmp eq i64 %dec.i8, 0
  br i1 %cmp.i9, label %if.then.i13, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_27.exit

if.then.i13:                                      ; preds = %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_26.exit
  %16 = load ptr, ptr %dest.i3, align 8
  %empty_output_buffer.i10 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %16, i64 0, i32 3
  %17 = load ptr, ptr %empty_output_buffer.i10, align 8
  %18 = load ptr, ptr %cinfo.addr.i1, align 8
  %call.i11 = call i32 %17(ptr noundef %18) #2
  %tobool.i12.not = icmp eq i32 %call.i11, 0
  br i1 %tobool.i12.not, label %if.then3.i15, label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_27.exit

if.then3.i15:                                     ; preds = %if.then.i13
  %19 = load ptr, ptr %cinfo.addr.i1, align 8
  %20 = load ptr, ptr %19, align 8
  %msg_code.i14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 22, ptr %msg_code.i14, align 8
  %21 = load ptr, ptr %19, align 8
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr noundef nonnull %19) #2
  br label %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_27.exit

pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_27.exit: ; preds = %if.then.i13, %if.then3.i15, %pc_inline_source_snapshot_public_repos_ctuning_programs_program_cbench_consumer_jpeg_d_jcmarker_26.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest.i3)
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
