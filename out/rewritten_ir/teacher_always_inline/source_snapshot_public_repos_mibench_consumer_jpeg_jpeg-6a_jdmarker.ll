; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdmarker.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmarker.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_resync_to_restart(ptr noundef %cinfo, i32 noundef %desired) #0 {
entry:
  %retval.i = alloca i32, align 4
  %cinfo.addr.i = alloca ptr, align 8
  %c.i = alloca i32, align 4
  %datasrc.i = alloca ptr, align 8
  %next_input_byte.i = alloca ptr, align 8
  %bytes_in_buffer.i = alloca i64, align 8
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %desired.addr = alloca i32, align 4
  %marker = alloca i32, align 4
  %action = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %desired, ptr %desired.addr, align 4
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %0 = load i32, ptr %unread_marker, align 4
  store i32 %0, ptr %marker, align 4
  store i32 1, ptr %action, align 4
  %1 = load ptr, ptr %cinfo, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 117, ptr %msg_code, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 %0, ptr %msg_parm, align 4
  %4 = load i32, ptr %desired.addr, align 4
  %5 = load ptr, ptr %2, align 8
  %arrayidx4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6, i32 0, i64 1
  store i32 %4, ptr %arrayidx4, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 1
  %8 = load ptr, ptr %emit_message, align 8
  call void %8(ptr noundef nonnull %6, i32 noundef -1) #5
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %9 = load i32, ptr %marker, align 4
  %cmp = icmp slt i32 %9, 192
  br i1 %cmp, label %if.end31, label %if.else

if.else:                                          ; preds = %for.cond
  %10 = load i32, ptr %marker, align 4
  %cmp6 = icmp slt i32 %10, 208
  %11 = load i32, ptr %marker, align 4
  %cmp7 = icmp sgt i32 %11, 215
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7
  br i1 %or.cond, label %if.end31, label %if.else9

if.else9:                                         ; preds = %if.else
  %12 = load i32, ptr %marker, align 4
  %13 = load i32, ptr %desired.addr, align 4
  %add = add nsw i32 %13, 1
  %and = and i32 %add, 7
  %add10 = or i32 %and, 208
  %cmp11 = icmp eq i32 %12, %add10
  br i1 %cmp11, label %if.end31, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else9
  %14 = load i32, ptr %marker, align 4
  %15 = load i32, ptr %desired.addr, align 4
  %add13 = add nsw i32 %15, 2
  %and14 = and i32 %add13, 7
  %add15 = or i32 %and14, 208
  %cmp16 = icmp eq i32 %14, %add15
  br i1 %cmp16, label %if.end31, label %if.else18

if.else18:                                        ; preds = %lor.lhs.false12
  %16 = load i32, ptr %marker, align 4
  %17 = load i32, ptr %desired.addr, align 4
  %sub = add i32 %17, 7
  %and19 = and i32 %sub, 7
  %add20 = or i32 %and19, 208
  %cmp21 = icmp eq i32 %16, %add20
  br i1 %cmp21, label %if.end31, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.else18
  %18 = load i32, ptr %marker, align 4
  %19 = load i32, ptr %desired.addr, align 4
  %sub23 = add i32 %19, 6
  %and24 = and i32 %sub23, 7
  %add25 = or i32 %and24, 208
  %cmp26 = icmp eq i32 %18, %add25
  %spec.select = select i1 %cmp26, i32 2, i32 1
  br label %if.end31

if.end31:                                         ; preds = %lor.lhs.false22, %if.else, %if.else18, %if.else9, %lor.lhs.false12, %for.cond
  %storemerge3 = phi i32 [ 2, %for.cond ], [ 3, %if.else ], [ 3, %lor.lhs.false12 ], [ 3, %if.else9 ], [ 2, %if.else18 ], [ %spec.select, %lor.lhs.false22 ]
  store i32 %storemerge3, ptr %action, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %msg_code33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 96, ptr %msg_code33, align 8
  %22 = load i32, ptr %marker, align 4
  %23 = load ptr, ptr %20, align 8
  %msg_parm35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 6
  store i32 %22, ptr %msg_parm35, align 4
  %24 = load i32, ptr %action, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %arrayidx39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 6, i32 0, i64 1
  store i32 %24, ptr %arrayidx39, align 4
  %27 = load ptr, ptr %25, align 8
  %emit_message41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 1
  %28 = load ptr, ptr %emit_message41, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  call void %28(ptr noundef %29, i32 noundef 4) #5
  %30 = load i32, ptr %action, align 4
  switch i32 %30, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb43
    i32 3, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.end31
  %31 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i64 0, i32 72
  store i32 0, ptr %unread_marker42, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %if.end31
  %32 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i)
  store ptr %32, ptr %cinfo.addr.i, align 8
  %src.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 5
  %33 = load ptr, ptr %src.i, align 8
  store ptr %33, ptr %datasrc.i, align 8
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %next_input_byte.i, align 8
  %bytes_in_buffer2.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %bytes_in_buffer2.i, align 8
  store i64 %35, ptr %bytes_in_buffer.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end50.i, %sw.bb43
  %36 = load i64, ptr %bytes_in_buffer.i, align 8
  %cmp.i = icmp eq i64 %36, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %for.cond.i
  %37 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i64 0, i32 3
  %38 = load ptr, ptr %fill_input_buffer.i, align 8
  %39 = load ptr, ptr %cinfo.addr.i, align 8
  %call.i = call i32 %38(ptr noundef %39) #5
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0.exit

if.end.i:                                         ; preds = %if.then.i
  %40 = load ptr, ptr %datasrc.i, align 8
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %next_input_byte.i, align 8
  %bytes_in_buffer5.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %40, i64 0, i32 1
  %42 = load i64, ptr %bytes_in_buffer5.i, align 8
  store i64 %42, ptr %bytes_in_buffer.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %for.cond.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end22.i, %if.end6.i
  %storemerge6.in = load i64, ptr %bytes_in_buffer.i, align 8
  %storemerge6 = add i64 %storemerge6.in, -1
  store i64 %storemerge6, ptr %bytes_in_buffer.i, align 8
  %storemerge4.in.in = load ptr, ptr %next_input_byte.i, align 8
  %storemerge5 = getelementptr inbounds i8, ptr %storemerge4.in.in, i64 1
  store ptr %storemerge5, ptr %next_input_byte.i, align 8
  %storemerge4.in = load i8, ptr %storemerge4.in.in, align 1
  %storemerge4 = zext i8 %storemerge4.in to i32
  store i32 %storemerge4, ptr %c.i, align 4
  %cmp7.i.not = icmp eq i8 %storemerge4.in, -1
  br i1 %cmp7.i.not, label %do.body27.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %43 = load ptr, ptr %cinfo.addr.i, align 8
  %marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i64 0, i32 78
  %44 = load ptr, ptr %marker.i, align 8
  %discarded_bytes.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %44, i64 0, i32 8
  %45 = load i32, ptr %discarded_bytes.i, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %discarded_bytes.i, align 4
  %46 = load ptr, ptr %next_input_byte.i, align 8
  %47 = load ptr, ptr %datasrc.i, align 8
  store ptr %46, ptr %47, align 8
  %48 = load i64, ptr %bytes_in_buffer.i, align 8
  %bytes_in_buffer10.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %47, i64 0, i32 1
  store i64 %48, ptr %bytes_in_buffer10.i, align 8
  %cmp12.i = icmp eq i64 %48, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end22.i

if.then14.i:                                      ; preds = %while.body.i
  %49 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer15.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %49, i64 0, i32 3
  %50 = load ptr, ptr %fill_input_buffer15.i, align 8
  %51 = load ptr, ptr %cinfo.addr.i, align 8
  %call16.i = call i32 %50(ptr noundef %51) #5
  %tobool17.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool17.i.not, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %if.then14.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0.exit

if.end19.i:                                       ; preds = %if.then14.i
  %52 = load ptr, ptr %datasrc.i, align 8
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %next_input_byte.i, align 8
  %bytes_in_buffer21.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %bytes_in_buffer21.i, align 8
  store i64 %54, ptr %bytes_in_buffer.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i, %while.body.i
  br label %while.cond.i, !llvm.loop !6

do.body27.i:                                      ; preds = %while.cond.i, %if.end39.i
  %55 = load i64, ptr %bytes_in_buffer.i, align 8
  %cmp29.i = icmp eq i64 %55, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end39.i

if.then31.i:                                      ; preds = %do.body27.i
  %56 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer32.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %56, i64 0, i32 3
  %57 = load ptr, ptr %fill_input_buffer32.i, align 8
  %58 = load ptr, ptr %cinfo.addr.i, align 8
  %call33.i = call i32 %57(ptr noundef %58) #5
  %tobool34.i.not = icmp eq i32 %call33.i, 0
  br i1 %tobool34.i.not, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %if.then31.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0.exit

if.end36.i:                                       ; preds = %if.then31.i
  %59 = load ptr, ptr %datasrc.i, align 8
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %next_input_byte.i, align 8
  %bytes_in_buffer38.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %59, i64 0, i32 1
  %61 = load i64, ptr %bytes_in_buffer38.i, align 8
  store i64 %61, ptr %bytes_in_buffer.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end36.i, %do.body27.i
  %62 = load i64, ptr %bytes_in_buffer.i, align 8
  %dec40.i = add i64 %62, -1
  store i64 %dec40.i, ptr %bytes_in_buffer.i, align 8
  %63 = load ptr, ptr %next_input_byte.i, align 8
  %incdec.ptr41.i = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %incdec.ptr41.i, ptr %next_input_byte.i, align 8
  %64 = load i8, ptr %63, align 1
  %conv42.i = zext i8 %64 to i32
  store i32 %conv42.i, ptr %c.i, align 4
  %cmp44.i = icmp eq i8 %64, -1
  br i1 %cmp44.i, label %do.body27.i, label %do.end46.i, !llvm.loop !8

do.end46.i:                                       ; preds = %if.end39.i
  %65 = load i32, ptr %c.i, align 4
  %cmp47.i.not = icmp eq i32 %65, 0
  br i1 %cmp47.i.not, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %do.end46.i
  %66 = load ptr, ptr %cinfo.addr.i, align 8
  %marker55.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i64 0, i32 78
  %67 = load ptr, ptr %marker55.i, align 8
  %discarded_bytes56.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %67, i64 0, i32 8
  %68 = load i32, ptr %discarded_bytes56.i, align 4
  %cmp57.i.not = icmp eq i32 %68, 0
  br i1 %cmp57.i.not, label %if.end69.i, label %if.then59.i

if.end50.i:                                       ; preds = %do.end46.i
  %69 = load ptr, ptr %cinfo.addr.i, align 8
  %marker51.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 78
  %70 = load ptr, ptr %marker51.i, align 8
  %discarded_bytes52.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %70, i64 0, i32 8
  %71 = load i32, ptr %discarded_bytes52.i, align 4
  %add.i = add i32 %71, 2
  store i32 %add.i, ptr %discarded_bytes52.i, align 4
  %72 = load ptr, ptr %next_input_byte.i, align 8
  %73 = load ptr, ptr %datasrc.i, align 8
  store ptr %72, ptr %73, align 8
  %74 = load i64, ptr %bytes_in_buffer.i, align 8
  %bytes_in_buffer54.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %73, i64 0, i32 1
  store i64 %74, ptr %bytes_in_buffer54.i, align 8
  br label %for.cond.i

if.then59.i:                                      ; preds = %if.then49.i
  %75 = load ptr, ptr %cinfo.addr.i, align 8
  %76 = load ptr, ptr %75, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 5
  store i32 112, ptr %msg_code.i, align 8
  %marker60.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 78
  %77 = load ptr, ptr %marker60.i, align 8
  %discarded_bytes61.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %77, i64 0, i32 8
  %78 = load i32, ptr %discarded_bytes61.i, align 4
  %79 = load ptr, ptr %cinfo.addr.i, align 8
  %80 = load ptr, ptr %79, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %80, i64 0, i32 6
  store i32 %78, ptr %msg_parm.i, align 4
  %81 = load i32, ptr %c.i, align 4
  %82 = load ptr, ptr %79, align 8
  %arrayidx65.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i64 0, i32 6, i32 0, i64 1
  store i32 %81, ptr %arrayidx65.i, align 4
  %83 = load ptr, ptr %cinfo.addr.i, align 8
  %84 = load ptr, ptr %83, align 8
  %emit_message.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 1
  %85 = load ptr, ptr %emit_message.i, align 8
  call void %85(ptr noundef nonnull %83, i32 noundef -1) #5
  %marker67.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i64 0, i32 78
  %86 = load ptr, ptr %marker67.i, align 8
  %discarded_bytes68.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %86, i64 0, i32 8
  store i32 0, ptr %discarded_bytes68.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then59.i, %if.then49.i
  %87 = load i32, ptr %c.i, align 4
  %88 = load ptr, ptr %cinfo.addr.i, align 8
  %unread_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i64 0, i32 72
  store i32 %87, ptr %unread_marker.i, align 4
  %89 = load ptr, ptr %next_input_byte.i, align 8
  %90 = load ptr, ptr %datasrc.i, align 8
  store ptr %89, ptr %90, align 8
  %91 = load i64, ptr %bytes_in_buffer.i, align 8
  %bytes_in_buffer71.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %90, i64 0, i32 1
  store i64 %91, ptr %bytes_in_buffer71.i, align 8
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0.exit: ; preds = %if.then3.i, %if.then18.i, %if.then35.i, %if.end69.i
  %92 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i)
  %tobool.not = icmp eq i32 %92, 0
  br i1 %tobool.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0.exit
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0.exit
  %93 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i64 0, i32 72
  %94 = load i32, ptr %unread_marker46, align 4
  store i32 %94, ptr %marker, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end31
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end45, %if.end31
  br label %for.cond

return:                                           ; preds = %sw.bb47, %if.then44, %sw.bb
  %95 = load i32, ptr %retval, align 4
  ret i32 %95
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_marker_reader(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr.i = alloca ptr, align 8
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 0, i64 noundef 176) #5
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 78
  store ptr %call, ptr %marker, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 78
  %3 = load ptr, ptr %marker1, align 8
  store ptr @reset_marker_reader, ptr %3, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 78
  %4 = load ptr, ptr %marker2, align 8
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i64 0, i32 1
  store ptr @read_markers, ptr %read_markers, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 78
  %6 = load ptr, ptr %marker3, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i64 0, i32 2
  store ptr @read_restart_marker, ptr %read_restart_marker, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 78
  %7 = load ptr, ptr %marker4, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i64 0, i32 3
  store ptr @skip_variable, ptr %process_COM, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cinfo.addr, align 8
  %marker5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i64 0, i32 78
  %9 = load ptr, ptr %marker5, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_marker_reader, ptr %9, i64 0, i32 4, i64 %idxprom
  store ptr @skip_variable, ptr %arrayidx, align 8
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %cinfo.addr, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 78
  %13 = load ptr, ptr %marker6, align 8
  %process_APPn7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %13, i64 0, i32 4
  store ptr @get_app0, ptr %process_APPn7, align 8
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 78
  %14 = load ptr, ptr %marker9, align 8
  %arrayidx11 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %14, i64 0, i32 4, i64 14
  store ptr @get_app14, ptr %arrayidx11, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  store ptr %15, ptr %cinfo.addr.i, align 8
  %comp_info.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 43
  store ptr null, ptr %comp_info.i, align 8
  %input_scan_number.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 34
  store i32 0, ptr %input_scan_number.i, align 4
  %unread_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 72
  store i32 0, ptr %unread_marker.i, align 4
  %16 = load ptr, ptr %cinfo.addr.i, align 8
  %marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 78
  %17 = load ptr, ptr %marker.i, align 8
  %saw_SOI.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %17, i64 0, i32 5
  store i32 0, ptr %saw_SOI.i, align 8
  %marker1.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 78
  %18 = load ptr, ptr %marker1.i, align 8
  %saw_SOF.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %18, i64 0, i32 6
  store i32 0, ptr %saw_SOF.i, align 4
  %19 = load ptr, ptr %cinfo.addr.i, align 8
  %marker2.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 78
  %20 = load ptr, ptr %marker2.i, align 8
  %discarded_bytes.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %20, i64 0, i32 8
  store i32 0, ptr %discarded_bytes.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @reset_marker_reader(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 43
  store ptr null, ptr %comp_info, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 34
  store i32 0, ptr %input_scan_number, align 4
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  store i32 0, ptr %unread_marker, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %1 = load ptr, ptr %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %1, i64 0, i32 5
  store i32 0, ptr %saw_SOI, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %2 = load ptr, ptr %marker1, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %2, i64 0, i32 6
  store i32 0, ptr %saw_SOF, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 78
  %4 = load ptr, ptr %marker2, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i64 0, i32 8
  store i32 0, ptr %discarded_bytes, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_markers(ptr noundef %cinfo) #0 {
entry:
  %retval.i1122 = alloca i32, align 4
  %cinfo.addr.i1123 = alloca ptr, align 8
  %length.i1124 = alloca i64, align 8
  %datasrc.i1125 = alloca ptr, align 8
  %next_input_byte.i1126 = alloca ptr, align 8
  %bytes_in_buffer.i1127 = alloca i64, align 8
  %retval.i1074 = alloca i32, align 4
  %cinfo.addr.i1075 = alloca ptr, align 8
  %length.i1076 = alloca i64, align 8
  %tmp.i1077 = alloca i32, align 4
  %datasrc.i1078 = alloca ptr, align 8
  %next_input_byte.i1079 = alloca ptr, align 8
  %bytes_in_buffer.i1080 = alloca i64, align 8
  %retval.i971 = alloca i32, align 4
  %cinfo.addr.i972 = alloca ptr, align 8
  %length.i973 = alloca i64, align 8
  %n.i974 = alloca i32, align 4
  %i.i975 = alloca i32, align 4
  %prec.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %quant_ptr.i = alloca ptr, align 8
  %datasrc.i976 = alloca ptr, align 8
  %next_input_byte.i977 = alloca ptr, align 8
  %bytes_in_buffer.i978 = alloca i64, align 8
  %_mp.i979 = alloca ptr, align 8
  %retval.i894 = alloca i32, align 4
  %cinfo.addr.i895 = alloca ptr, align 8
  %length.i896 = alloca i64, align 8
  %bits.i = alloca [17 x i8], align 1
  %huffval.i = alloca [256 x i8], align 1
  %i.i897 = alloca i32, align 4
  %index.i898 = alloca i32, align 4
  %count.i = alloca i32, align 4
  %htblptr.i = alloca ptr, align 8
  %datasrc.i899 = alloca ptr, align 8
  %next_input_byte.i900 = alloca ptr, align 8
  %bytes_in_buffer.i901 = alloca i64, align 8
  %_mp.i902 = alloca ptr, align 8
  %_mp99.i = alloca ptr, align 8
  %retval.i838 = alloca i32, align 4
  %cinfo.addr.i839 = alloca ptr, align 8
  %length.i840 = alloca i64, align 8
  %index.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %datasrc.i841 = alloca ptr, align 8
  %next_input_byte.i842 = alloca ptr, align 8
  %bytes_in_buffer.i843 = alloca i64, align 8
  %retval.i781 = alloca i32, align 4
  %cinfo.addr.i782 = alloca ptr, align 8
  %length.i783 = alloca i64, align 8
  %i.i784 = alloca i32, align 4
  %ci.i785 = alloca i32, align 4
  %n.i = alloca i32, align 4
  %c.i786 = alloca i32, align 4
  %cc.i = alloca i32, align 4
  %compptr.i787 = alloca ptr, align 8
  %datasrc.i788 = alloca ptr, align 8
  %next_input_byte.i789 = alloca ptr, align 8
  %bytes_in_buffer.i790 = alloca i64, align 8
  %_mp.i791 = alloca ptr, align 8
  %_mp181.i = alloca ptr, align 8
  %retval.i547 = alloca i32, align 4
  %cinfo.addr.i548 = alloca ptr, align 8
  %is_prog.addr.i549 = alloca i32, align 4
  %is_arith.addr.i550 = alloca i32, align 4
  %length.i551 = alloca i64, align 8
  %ci.i553 = alloca i32, align 4
  %compptr.i554 = alloca ptr, align 8
  %datasrc.i555 = alloca ptr, align 8
  %next_input_byte.i556 = alloca ptr, align 8
  %bytes_in_buffer.i557 = alloca i64, align 8
  %_mp.i558 = alloca ptr, align 8
  %_mp225.i559 = alloca ptr, align 8
  %retval.i313 = alloca i32, align 4
  %cinfo.addr.i314 = alloca ptr, align 8
  %is_prog.addr.i315 = alloca i32, align 4
  %is_arith.addr.i316 = alloca i32, align 4
  %length.i317 = alloca i64, align 8
  %ci.i319 = alloca i32, align 4
  %compptr.i320 = alloca ptr, align 8
  %datasrc.i321 = alloca ptr, align 8
  %next_input_byte.i322 = alloca ptr, align 8
  %bytes_in_buffer.i323 = alloca i64, align 8
  %_mp.i324 = alloca ptr, align 8
  %_mp225.i325 = alloca ptr, align 8
  %retval.i79 = alloca i32, align 4
  %cinfo.addr.i80 = alloca ptr, align 8
  %is_prog.addr.i81 = alloca i32, align 4
  %is_arith.addr.i82 = alloca i32, align 4
  %length.i83 = alloca i64, align 8
  %ci.i85 = alloca i32, align 4
  %compptr.i86 = alloca ptr, align 8
  %datasrc.i87 = alloca ptr, align 8
  %next_input_byte.i88 = alloca ptr, align 8
  %bytes_in_buffer.i89 = alloca i64, align 8
  %_mp.i90 = alloca ptr, align 8
  %_mp225.i91 = alloca ptr, align 8
  %retval.i35 = alloca i32, align 4
  %cinfo.addr.i36 = alloca ptr, align 8
  %is_prog.addr.i = alloca i32, align 4
  %is_arith.addr.i = alloca i32, align 4
  %length.i = alloca i64, align 8
  %ci.i = alloca i32, align 4
  %compptr.i = alloca ptr, align 8
  %datasrc.i38 = alloca ptr, align 8
  %next_input_byte.i39 = alloca ptr, align 8
  %bytes_in_buffer.i40 = alloca i64, align 8
  %_mp.i = alloca ptr, align 8
  %_mp225.i = alloca ptr, align 8
  %cinfo.addr.i25 = alloca ptr, align 8
  %i.i = alloca i32, align 4
  %retval.i1 = alloca i32, align 4
  %cinfo.addr.i2 = alloca ptr, align 8
  %c.i3 = alloca i32, align 4
  %datasrc.i4 = alloca ptr, align 8
  %next_input_byte.i5 = alloca ptr, align 8
  %bytes_in_buffer.i6 = alloca i64, align 8
  %retval.i = alloca i32, align 4
  %cinfo.addr.i = alloca ptr, align 8
  %c.i = alloca i32, align 4
  %c2.i = alloca i32, align 4
  %datasrc.i = alloca ptr, align 8
  %next_input_byte.i = alloca ptr, align 8
  %bytes_in_buffer.i = alloca i64, align 8
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %1 = load i32, ptr %unread_marker, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 78
  %3 = load ptr, ptr %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %3, i64 0, i32 5
  %4 = load i32, ptr %saw_SOI, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c2.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i)
  store ptr %5, ptr %cinfo.addr.i, align 8
  %src.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 5
  %6 = load ptr, ptr %src.i, align 8
  store ptr %6, ptr %datasrc.i, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %next_input_byte.i, align 8
  %bytes_in_buffer2.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %bytes_in_buffer2.i, align 8
  store i64 %8, ptr %bytes_in_buffer.i, align 8
  %cmp.i = icmp eq i64 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.then1
  %9 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %fill_input_buffer.i, align 8
  %11 = load ptr, ptr %cinfo.addr.i, align 8
  %call.i = call i32 %10(ptr noundef %11) #5
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_2.exit

if.end.i:                                         ; preds = %if.then.i
  %12 = load ptr, ptr %datasrc.i, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %next_input_byte.i, align 8
  %bytes_in_buffer5.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %bytes_in_buffer5.i, align 8
  store i64 %14, ptr %bytes_in_buffer.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %if.then1
  %15 = load i64, ptr %bytes_in_buffer.i, align 8
  %dec.i = add i64 %15, -1
  store i64 %dec.i, ptr %bytes_in_buffer.i, align 8
  %16 = load ptr, ptr %next_input_byte.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr.i, ptr %next_input_byte.i, align 8
  %17 = load i8, ptr %16, align 1
  %conv.i = zext i8 %17 to i32
  store i32 %conv.i, ptr %c.i, align 4
  %18 = load i64, ptr %bytes_in_buffer.i, align 8
  %cmp8.i = icmp eq i64 %18, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.end18.i

if.then10.i:                                      ; preds = %if.end6.i
  %19 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer11.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %19, i64 0, i32 3
  %20 = load ptr, ptr %fill_input_buffer11.i, align 8
  %21 = load ptr, ptr %cinfo.addr.i, align 8
  %call12.i = call i32 %20(ptr noundef %21) #5
  %tobool13.i.not = icmp eq i32 %call12.i, 0
  br i1 %tobool13.i.not, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.then10.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_2.exit

if.end15.i:                                       ; preds = %if.then10.i
  %22 = load ptr, ptr %datasrc.i, align 8
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %next_input_byte.i, align 8
  %bytes_in_buffer17.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %22, i64 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17.i, align 8
  store i64 %24, ptr %bytes_in_buffer.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end15.i, %if.end6.i
  %25 = load i64, ptr %bytes_in_buffer.i, align 8
  %dec19.i = add i64 %25, -1
  store i64 %dec19.i, ptr %bytes_in_buffer.i, align 8
  %26 = load ptr, ptr %next_input_byte.i, align 8
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr20.i, ptr %next_input_byte.i, align 8
  %27 = load i8, ptr %26, align 1
  %conv21.i = zext i8 %27 to i32
  store i32 %conv21.i, ptr %c2.i, align 4
  %28 = load i32, ptr %c.i, align 4
  %cmp23.i.not = icmp eq i32 %28, 255
  %29 = load i32, ptr %c2.i, align 4
  %cmp25.i.not = icmp eq i32 %29, 216
  %or.cond = select i1 %cmp23.i.not, i1 %cmp25.i.not, i1 false
  br i1 %or.cond, label %if.end33.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end18.i
  %30 = load ptr, ptr %cinfo.addr.i, align 8
  %31 = load ptr, ptr %30, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 52, ptr %msg_code.i, align 8
  %32 = load i32, ptr %c.i, align 4
  %33 = load ptr, ptr %30, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 6
  store i32 %32, ptr %msg_parm.i, align 4
  %34 = load i32, ptr %c2.i, align 4
  %35 = load ptr, ptr %cinfo.addr.i, align 8
  %36 = load ptr, ptr %35, align 8
  %arrayidx31.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %36, i64 0, i32 6, i32 0, i64 1
  store i32 %34, ptr %arrayidx31.i, align 4
  %37 = load ptr, ptr %35, align 8
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef nonnull %35) #5
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end18.i, %if.then27.i
  %39 = load i32, ptr %c2.i, align 4
  %40 = load ptr, ptr %cinfo.addr.i, align 8
  %unread_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i64 0, i32 72
  store i32 %39, ptr %unread_marker.i, align 4
  %41 = load ptr, ptr %next_input_byte.i, align 8
  %42 = load ptr, ptr %datasrc.i, align 8
  store ptr %41, ptr %42, align 8
  %43 = load i64, ptr %bytes_in_buffer.i, align 8
  %bytes_in_buffer35.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i64 0, i32 1
  store i64 %43, ptr %bytes_in_buffer35.i, align 8
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_2.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_2.exit: ; preds = %if.then3.i, %if.then14.i, %if.end33.i
  %44 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c2.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i)
  %tobool2.not = icmp eq i32 %44, 0
  br i1 %tobool2.not, label %if.then3, label %if.end9

if.then3:                                         ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_2.exit
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i6)
  store ptr %45, ptr %cinfo.addr.i2, align 8
  %src.i7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 5
  %46 = load ptr, ptr %src.i7, align 8
  store ptr %46, ptr %datasrc.i4, align 8
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %next_input_byte.i5, align 8
  %bytes_in_buffer2.i8 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %46, i64 0, i32 1
  %48 = load i64, ptr %bytes_in_buffer2.i8, align 8
  store i64 %48, ptr %bytes_in_buffer.i6, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end50.i, %if.else
  %49 = load i64, ptr %bytes_in_buffer.i6, align 8
  %cmp.i9 = icmp eq i64 %49, 0
  br i1 %cmp.i9, label %if.then.i13, label %if.end6.i20

if.then.i13:                                      ; preds = %for.cond.i
  %50 = load ptr, ptr %datasrc.i4, align 8
  %fill_input_buffer.i10 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %50, i64 0, i32 3
  %51 = load ptr, ptr %fill_input_buffer.i10, align 8
  %52 = load ptr, ptr %cinfo.addr.i2, align 8
  %call.i11 = call i32 %51(ptr noundef %52) #5
  %tobool.i12.not = icmp eq i32 %call.i11, 0
  br i1 %tobool.i12.not, label %if.then3.i14, label %if.end.i16

if.then3.i14:                                     ; preds = %if.then.i13
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_3.exit

if.end.i16:                                       ; preds = %if.then.i13
  %53 = load ptr, ptr %datasrc.i4, align 8
  %54 = load ptr, ptr %53, align 8
  store ptr %54, ptr %next_input_byte.i5, align 8
  %bytes_in_buffer5.i15 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %53, i64 0, i32 1
  %55 = load i64, ptr %bytes_in_buffer5.i15, align 8
  store i64 %55, ptr %bytes_in_buffer.i6, align 8
  br label %if.end6.i20

if.end6.i20:                                      ; preds = %if.end.i16, %for.cond.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end22.i, %if.end6.i20
  %storemerge1176.in = load i64, ptr %bytes_in_buffer.i6, align 8
  %storemerge1176 = add i64 %storemerge1176.in, -1
  store i64 %storemerge1176, ptr %bytes_in_buffer.i6, align 8
  %storemerge1174.in.in = load ptr, ptr %next_input_byte.i5, align 8
  %storemerge1175 = getelementptr inbounds i8, ptr %storemerge1174.in.in, i64 1
  store ptr %storemerge1175, ptr %next_input_byte.i5, align 8
  %storemerge1174.in = load i8, ptr %storemerge1174.in.in, align 1
  %storemerge1174 = zext i8 %storemerge1174.in to i32
  store i32 %storemerge1174, ptr %c.i3, align 4
  %cmp7.i.not = icmp eq i8 %storemerge1174.in, -1
  br i1 %cmp7.i.not, label %do.body27.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %56 = load ptr, ptr %cinfo.addr.i2, align 8
  %marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i64 0, i32 78
  %57 = load ptr, ptr %marker.i, align 8
  %discarded_bytes.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %57, i64 0, i32 8
  %58 = load i32, ptr %discarded_bytes.i, align 4
  %inc.i = add i32 %58, 1
  store i32 %inc.i, ptr %discarded_bytes.i, align 4
  %59 = load ptr, ptr %next_input_byte.i5, align 8
  %60 = load ptr, ptr %datasrc.i4, align 8
  store ptr %59, ptr %60, align 8
  %61 = load i64, ptr %bytes_in_buffer.i6, align 8
  %bytes_in_buffer10.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %60, i64 0, i32 1
  store i64 %61, ptr %bytes_in_buffer10.i, align 8
  %cmp12.i = icmp eq i64 %61, 0
  br i1 %cmp12.i, label %if.then14.i21, label %if.end22.i

if.then14.i21:                                    ; preds = %while.body.i
  %62 = load ptr, ptr %datasrc.i4, align 8
  %fill_input_buffer15.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %62, i64 0, i32 3
  %63 = load ptr, ptr %fill_input_buffer15.i, align 8
  %64 = load ptr, ptr %cinfo.addr.i2, align 8
  %call16.i = call i32 %63(ptr noundef %64) #5
  %tobool17.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool17.i.not, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %if.then14.i21
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_3.exit

if.end19.i:                                       ; preds = %if.then14.i21
  %65 = load ptr, ptr %datasrc.i4, align 8
  %66 = load ptr, ptr %65, align 8
  store ptr %66, ptr %next_input_byte.i5, align 8
  %bytes_in_buffer21.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %bytes_in_buffer21.i, align 8
  store i64 %67, ptr %bytes_in_buffer.i6, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i, %while.body.i
  br label %while.cond.i, !llvm.loop !6

do.body27.i:                                      ; preds = %while.cond.i, %if.end39.i
  %68 = load i64, ptr %bytes_in_buffer.i6, align 8
  %cmp29.i = icmp eq i64 %68, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end39.i

if.then31.i:                                      ; preds = %do.body27.i
  %69 = load ptr, ptr %datasrc.i4, align 8
  %fill_input_buffer32.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %69, i64 0, i32 3
  %70 = load ptr, ptr %fill_input_buffer32.i, align 8
  %71 = load ptr, ptr %cinfo.addr.i2, align 8
  %call33.i = call i32 %70(ptr noundef %71) #5
  %tobool34.i.not = icmp eq i32 %call33.i, 0
  br i1 %tobool34.i.not, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %if.then31.i
  store i32 0, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_3.exit

if.end36.i:                                       ; preds = %if.then31.i
  %72 = load ptr, ptr %datasrc.i4, align 8
  %73 = load ptr, ptr %72, align 8
  store ptr %73, ptr %next_input_byte.i5, align 8
  %bytes_in_buffer38.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %72, i64 0, i32 1
  %74 = load i64, ptr %bytes_in_buffer38.i, align 8
  store i64 %74, ptr %bytes_in_buffer.i6, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end36.i, %do.body27.i
  %75 = load i64, ptr %bytes_in_buffer.i6, align 8
  %dec40.i = add i64 %75, -1
  store i64 %dec40.i, ptr %bytes_in_buffer.i6, align 8
  %76 = load ptr, ptr %next_input_byte.i5, align 8
  %incdec.ptr41.i = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr41.i, ptr %next_input_byte.i5, align 8
  %77 = load i8, ptr %76, align 1
  %conv42.i = zext i8 %77 to i32
  store i32 %conv42.i, ptr %c.i3, align 4
  %cmp44.i = icmp eq i8 %77, -1
  br i1 %cmp44.i, label %do.body27.i, label %do.end46.i, !llvm.loop !8

do.end46.i:                                       ; preds = %if.end39.i
  %78 = load i32, ptr %c.i3, align 4
  %cmp47.i.not = icmp eq i32 %78, 0
  br i1 %cmp47.i.not, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %do.end46.i
  %79 = load ptr, ptr %cinfo.addr.i2, align 8
  %marker55.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i64 0, i32 78
  %80 = load ptr, ptr %marker55.i, align 8
  %discarded_bytes56.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %80, i64 0, i32 8
  %81 = load i32, ptr %discarded_bytes56.i, align 4
  %cmp57.i.not = icmp eq i32 %81, 0
  br i1 %cmp57.i.not, label %if.end69.i, label %if.then59.i

if.end50.i:                                       ; preds = %do.end46.i
  %82 = load ptr, ptr %cinfo.addr.i2, align 8
  %marker51.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 78
  %83 = load ptr, ptr %marker51.i, align 8
  %discarded_bytes52.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %83, i64 0, i32 8
  %84 = load i32, ptr %discarded_bytes52.i, align 4
  %add.i = add i32 %84, 2
  store i32 %add.i, ptr %discarded_bytes52.i, align 4
  %85 = load ptr, ptr %next_input_byte.i5, align 8
  %86 = load ptr, ptr %datasrc.i4, align 8
  store ptr %85, ptr %86, align 8
  %87 = load i64, ptr %bytes_in_buffer.i6, align 8
  %bytes_in_buffer54.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %86, i64 0, i32 1
  store i64 %87, ptr %bytes_in_buffer54.i, align 8
  br label %for.cond.i

if.then59.i:                                      ; preds = %if.then49.i
  %88 = load ptr, ptr %cinfo.addr.i2, align 8
  %89 = load ptr, ptr %88, align 8
  %msg_code.i22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 5
  store i32 112, ptr %msg_code.i22, align 8
  %marker60.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i64 0, i32 78
  %90 = load ptr, ptr %marker60.i, align 8
  %discarded_bytes61.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %90, i64 0, i32 8
  %91 = load i32, ptr %discarded_bytes61.i, align 4
  %92 = load ptr, ptr %cinfo.addr.i2, align 8
  %93 = load ptr, ptr %92, align 8
  %msg_parm.i23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i64 0, i32 6
  store i32 %91, ptr %msg_parm.i23, align 4
  %94 = load i32, ptr %c.i3, align 4
  %95 = load ptr, ptr %92, align 8
  %arrayidx65.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 6, i32 0, i64 1
  store i32 %94, ptr %arrayidx65.i, align 4
  %96 = load ptr, ptr %cinfo.addr.i2, align 8
  %97 = load ptr, ptr %96, align 8
  %emit_message.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i64 0, i32 1
  %98 = load ptr, ptr %emit_message.i, align 8
  call void %98(ptr noundef nonnull %96, i32 noundef -1) #5
  %marker67.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i64 0, i32 78
  %99 = load ptr, ptr %marker67.i, align 8
  %discarded_bytes68.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %99, i64 0, i32 8
  store i32 0, ptr %discarded_bytes68.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then59.i, %if.then49.i
  %100 = load i32, ptr %c.i3, align 4
  %101 = load ptr, ptr %cinfo.addr.i2, align 8
  %unread_marker.i24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %101, i64 0, i32 72
  store i32 %100, ptr %unread_marker.i24, align 4
  %102 = load ptr, ptr %next_input_byte.i5, align 8
  %103 = load ptr, ptr %datasrc.i4, align 8
  store ptr %102, ptr %103, align 8
  %104 = load i64, ptr %bytes_in_buffer.i6, align 8
  %bytes_in_buffer71.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %103, i64 0, i32 1
  store i64 %104, ptr %bytes_in_buffer71.i, align 8
  store i32 1, ptr %retval.i1, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_3.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_3.exit: ; preds = %if.then3.i14, %if.then18.i, %if.then35.i, %if.end69.i
  %105 = load i32, ptr %retval.i1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i6)
  %tobool5.not = icmp eq i32 %105, 0
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_3.exit
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_2.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_3.exit, %for.cond
  %106 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %106, i64 0, i32 72
  %107 = load i32, ptr %unread_marker10, align 4
  switch i32 %107, label %sw.default [
    i32 216, label %sw.bb
    i32 192, label %sw.bb15
    i32 193, label %sw.bb15
    i32 194, label %sw.bb20
    i32 201, label %sw.bb25
    i32 202, label %sw.bb30
    i32 195, label %sw.bb35
    i32 197, label %sw.bb35
    i32 198, label %sw.bb35
    i32 199, label %sw.bb35
    i32 200, label %sw.bb35
    i32 203, label %sw.bb35
    i32 205, label %sw.bb35
    i32 206, label %sw.bb35
    i32 207, label %sw.bb35
    i32 218, label %sw.bb39
    i32 217, label %sw.bb45
    i32 204, label %sw.bb50
    i32 196, label %sw.bb55
    i32 219, label %sw.bb60
    i32 221, label %sw.bb65
    i32 224, label %sw.bb70
    i32 225, label %sw.bb70
    i32 226, label %sw.bb70
    i32 227, label %sw.bb70
    i32 228, label %sw.bb70
    i32 229, label %sw.bb70
    i32 230, label %sw.bb70
    i32 231, label %sw.bb70
    i32 232, label %sw.bb70
    i32 233, label %sw.bb70
    i32 234, label %sw.bb70
    i32 235, label %sw.bb70
    i32 236, label %sw.bb70
    i32 237, label %sw.bb70
    i32 238, label %sw.bb70
    i32 239, label %sw.bb70
    i32 254, label %sw.bb78
    i32 208, label %sw.bb84
    i32 209, label %sw.bb84
    i32 210, label %sw.bb84
    i32 211, label %sw.bb84
    i32 212, label %sw.bb84
    i32 213, label %sw.bb84
    i32 214, label %sw.bb84
    i32 215, label %sw.bb84
    i32 1, label %sw.bb84
    i32 220, label %sw.bb93
  ]

sw.bb:                                            ; preds = %if.end9
  %108 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i25)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store ptr %108, ptr %cinfo.addr.i25, align 8
  %109 = load ptr, ptr %108, align 8
  %msg_code.i26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 101, ptr %msg_code.i26, align 8
  %110 = load ptr, ptr %108, align 8
  %emit_message.i27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i64 0, i32 1
  %111 = load ptr, ptr %emit_message.i27, align 8
  %112 = load ptr, ptr %cinfo.addr.i25, align 8
  call void %111(ptr noundef %112, i32 noundef 1) #5
  %marker.i28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %112, i64 0, i32 78
  %113 = load ptr, ptr %marker.i28, align 8
  %saw_SOI.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %113, i64 0, i32 5
  %114 = load i32, ptr %saw_SOI.i, align 8
  %tobool.i29.not = icmp eq i32 %114, 0
  br i1 %tobool.i29.not, label %if.end.i31, label %if.then.i30

if.then.i30:                                      ; preds = %sw.bb
  %115 = load ptr, ptr %cinfo.addr.i25, align 8
  %116 = load ptr, ptr %115, align 8
  %msg_code3.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %116, i64 0, i32 5
  store i32 60, ptr %msg_code3.i, align 8
  %117 = load ptr, ptr %115, align 8
  %118 = load ptr, ptr %117, align 8
  call void %118(ptr noundef nonnull %115) #5
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i30, %sw.bb
  br label %for.cond.i33

for.cond.i33:                                     ; preds = %for.body.i, %if.end.i31
  %storemerge1173 = phi i32 [ 0, %if.end.i31 ], [ %inc.i34, %for.body.i ]
  store i32 %storemerge1173, ptr %i.i, align 4
  %cmp.i32 = icmp slt i32 %storemerge1173, 16
  br i1 %cmp.i32, label %for.body.i, label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_4.exit

for.body.i:                                       ; preds = %for.cond.i33
  %119 = load ptr, ptr %cinfo.addr.i25, align 8
  %120 = load i32, ptr %i.i, align 4
  %idxprom.i = sext i32 %120 to i64
  %arrayidx.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %119, i64 0, i32 46, i64 %idxprom.i
  store i8 0, ptr %arrayidx.i, align 1
  %idxprom5.i = sext i32 %120 to i64
  %arrayidx6.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %119, i64 0, i32 47, i64 %idxprom5.i
  store i8 1, ptr %arrayidx6.i, align 1
  %121 = load ptr, ptr %cinfo.addr.i25, align 8
  %122 = load i32, ptr %i.i, align 4
  %idxprom7.i = sext i32 %122 to i64
  %arrayidx8.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %121, i64 0, i32 48, i64 %idxprom7.i
  store i8 5, ptr %arrayidx8.i, align 1
  %inc.i34 = add nsw i32 %122, 1
  br label %for.cond.i33, !llvm.loop !10

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_4.exit: ; preds = %for.cond.i33
  %123 = load ptr, ptr %cinfo.addr.i25, align 8
  %restart_interval.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i64 0, i32 49
  store i32 0, ptr %restart_interval.i, align 8
  %jpeg_color_space.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i64 0, i32 9
  store i32 0, ptr %jpeg_color_space.i, align 4
  %CCIR601_sampling.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i64 0, i32 56
  store i32 0, ptr %CCIR601_sampling.i, align 8
  %124 = load ptr, ptr %cinfo.addr.i25, align 8
  %saw_JFIF_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %124, i64 0, i32 50
  store i32 0, ptr %saw_JFIF_marker.i, align 4
  %density_unit.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %124, i64 0, i32 51
  store i8 0, ptr %density_unit.i, align 8
  %X_density.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %124, i64 0, i32 52
  store i16 1, ptr %X_density.i, align 2
  %125 = load ptr, ptr %cinfo.addr.i25, align 8
  %Y_density.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %125, i64 0, i32 53
  store i16 1, ptr %Y_density.i, align 4
  %saw_Adobe_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %125, i64 0, i32 54
  store i32 0, ptr %saw_Adobe_marker.i, align 8
  %Adobe_transform.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %125, i64 0, i32 55
  store i8 0, ptr %Adobe_transform.i, align 4
  %126 = load ptr, ptr %cinfo.addr.i25, align 8
  %marker9.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %126, i64 0, i32 78
  %127 = load ptr, ptr %marker9.i, align 8
  %saw_SOI10.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %127, i64 0, i32 5
  store i32 1, ptr %saw_SOI10.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9, %if.end9
  %128 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_prog.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_arith.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i38)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i39)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp225.i)
  store ptr %128, ptr %cinfo.addr.i36, align 8
  store i32 0, ptr %is_prog.addr.i, align 4
  store i32 0, ptr %is_arith.addr.i, align 4
  %src.i41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %128, i64 0, i32 5
  %129 = load ptr, ptr %src.i41, align 8
  store ptr %129, ptr %datasrc.i38, align 8
  %130 = load ptr, ptr %129, align 8
  store ptr %130, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer2.i42 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %129, i64 0, i32 1
  %131 = load i64, ptr %bytes_in_buffer2.i42, align 8
  store i64 %131, ptr %bytes_in_buffer.i40, align 8
  %132 = load i32, ptr %is_prog.addr.i, align 4
  %133 = load ptr, ptr %cinfo.addr.i36, align 8
  %progressive_mode.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %133, i64 0, i32 44
  store i32 %132, ptr %progressive_mode.i, align 8
  %134 = load i32, ptr %is_arith.addr.i, align 4
  %arith_code.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %133, i64 0, i32 45
  store i32 %134, ptr %arith_code.i, align 4
  %135 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp.i43 = icmp eq i64 %135, 0
  br i1 %cmp.i43, label %if.then.i47, label %if.end6.i55

if.then.i47:                                      ; preds = %sw.bb15
  %136 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer.i44 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %136, i64 0, i32 3
  %137 = load ptr, ptr %fill_input_buffer.i44, align 8
  %138 = load ptr, ptr %cinfo.addr.i36, align 8
  %call.i45 = call i32 %137(ptr noundef %138) #5
  %tobool.i46.not = icmp eq i32 %call.i45, 0
  br i1 %tobool.i46.not, label %if.then3.i48, label %if.end.i50

if.then3.i48:                                     ; preds = %if.then.i47
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end.i50:                                       ; preds = %if.then.i47
  %139 = load ptr, ptr %datasrc.i38, align 8
  %140 = load ptr, ptr %139, align 8
  store ptr %140, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer5.i49 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %139, i64 0, i32 1
  %141 = load i64, ptr %bytes_in_buffer5.i49, align 8
  store i64 %141, ptr %bytes_in_buffer.i40, align 8
  br label %if.end6.i55

if.end6.i55:                                      ; preds = %if.end.i50, %sw.bb15
  %142 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec.i51 = add i64 %142, -1
  store i64 %dec.i51, ptr %bytes_in_buffer.i40, align 8
  %143 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr.i52 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %incdec.ptr.i52, ptr %next_input_byte.i39, align 8
  %144 = load i8, ptr %143, align 1
  %conv.i53 = zext i8 %144 to i64
  %shl.i = shl nuw nsw i64 %conv.i53, 8
  store i64 %shl.i, ptr %length.i, align 8
  %145 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp8.i54 = icmp eq i64 %145, 0
  br i1 %cmp8.i54, label %if.then10.i59, label %if.end18.i67

if.then10.i59:                                    ; preds = %if.end6.i55
  %146 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer11.i56 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %146, i64 0, i32 3
  %147 = load ptr, ptr %fill_input_buffer11.i56, align 8
  %148 = load ptr, ptr %cinfo.addr.i36, align 8
  %call12.i57 = call i32 %147(ptr noundef %148) #5
  %tobool13.i58.not = icmp eq i32 %call12.i57, 0
  br i1 %tobool13.i58.not, label %if.then14.i60, label %if.end15.i62

if.then14.i60:                                    ; preds = %if.then10.i59
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end15.i62:                                     ; preds = %if.then10.i59
  %149 = load ptr, ptr %datasrc.i38, align 8
  %150 = load ptr, ptr %149, align 8
  store ptr %150, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer17.i61 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %149, i64 0, i32 1
  %151 = load i64, ptr %bytes_in_buffer17.i61, align 8
  store i64 %151, ptr %bytes_in_buffer.i40, align 8
  br label %if.end18.i67

if.end18.i67:                                     ; preds = %if.end15.i62, %if.end6.i55
  %152 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec19.i63 = add i64 %152, -1
  store i64 %dec19.i63, ptr %bytes_in_buffer.i40, align 8
  %153 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr20.i64 = getelementptr inbounds i8, ptr %153, i64 1
  store ptr %incdec.ptr20.i64, ptr %next_input_byte.i39, align 8
  %154 = load i8, ptr %153, align 1
  %conv21.i65 = zext i8 %154 to i64
  %155 = load i64, ptr %length.i, align 8
  %add.i66 = add nsw i64 %155, %conv21.i65
  store i64 %add.i66, ptr %length.i, align 8
  %156 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp23.i68 = icmp eq i64 %156, 0
  br i1 %cmp23.i68, label %if.then25.i, label %if.end33.i69

if.then25.i:                                      ; preds = %if.end18.i67
  %157 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer26.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %157, i64 0, i32 3
  %158 = load ptr, ptr %fill_input_buffer26.i, align 8
  %159 = load ptr, ptr %cinfo.addr.i36, align 8
  %call27.i = call i32 %158(ptr noundef %159) #5
  %tobool28.i.not = icmp eq i32 %call27.i, 0
  br i1 %tobool28.i.not, label %if.then29.i, label %if.end30.i

if.then29.i:                                      ; preds = %if.then25.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end30.i:                                       ; preds = %if.then25.i
  %160 = load ptr, ptr %datasrc.i38, align 8
  %161 = load ptr, ptr %160, align 8
  store ptr %161, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer32.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %160, i64 0, i32 1
  %162 = load i64, ptr %bytes_in_buffer32.i, align 8
  store i64 %162, ptr %bytes_in_buffer.i40, align 8
  br label %if.end33.i69

if.end33.i69:                                     ; preds = %if.end30.i, %if.end18.i67
  %163 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec34.i = add i64 %163, -1
  store i64 %dec34.i, ptr %bytes_in_buffer.i40, align 8
  %164 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr35.i = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %incdec.ptr35.i, ptr %next_input_byte.i39, align 8
  %165 = load i8, ptr %164, align 1
  %conv36.i = zext i8 %165 to i32
  %166 = load ptr, ptr %cinfo.addr.i36, align 8
  %data_precision.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %166, i64 0, i32 42
  store i32 %conv36.i, ptr %data_precision.i, align 8
  %167 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp39.i = icmp eq i64 %167, 0
  br i1 %cmp39.i, label %if.then41.i, label %if.end49.i

if.then41.i:                                      ; preds = %if.end33.i69
  %168 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer42.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %168, i64 0, i32 3
  %169 = load ptr, ptr %fill_input_buffer42.i, align 8
  %170 = load ptr, ptr %cinfo.addr.i36, align 8
  %call43.i = call i32 %169(ptr noundef %170) #5
  %tobool44.i.not = icmp eq i32 %call43.i, 0
  br i1 %tobool44.i.not, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %if.then41.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end46.i:                                       ; preds = %if.then41.i
  %171 = load ptr, ptr %datasrc.i38, align 8
  %172 = load ptr, ptr %171, align 8
  store ptr %172, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer48.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %171, i64 0, i32 1
  %173 = load i64, ptr %bytes_in_buffer48.i, align 8
  store i64 %173, ptr %bytes_in_buffer.i40, align 8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end46.i, %if.end33.i69
  %174 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec50.i = add i64 %174, -1
  store i64 %dec50.i, ptr %bytes_in_buffer.i40, align 8
  %175 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr51.i = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %incdec.ptr51.i, ptr %next_input_byte.i39, align 8
  %176 = load i8, ptr %175, align 1
  %conv52.i = zext i8 %176 to i32
  %shl53.i = shl nuw nsw i32 %conv52.i, 8
  %177 = load ptr, ptr %cinfo.addr.i36, align 8
  %image_height.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %177, i64 0, i32 7
  store i32 %shl53.i, ptr %image_height.i, align 4
  %178 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp54.i = icmp eq i64 %178, 0
  br i1 %cmp54.i, label %if.then56.i, label %if.end64.i

if.then56.i:                                      ; preds = %if.end49.i
  %179 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer57.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %179, i64 0, i32 3
  %180 = load ptr, ptr %fill_input_buffer57.i, align 8
  %181 = load ptr, ptr %cinfo.addr.i36, align 8
  %call58.i = call i32 %180(ptr noundef %181) #5
  %tobool59.i.not = icmp eq i32 %call58.i, 0
  br i1 %tobool59.i.not, label %if.then60.i, label %if.end61.i

if.then60.i:                                      ; preds = %if.then56.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end61.i:                                       ; preds = %if.then56.i
  %182 = load ptr, ptr %datasrc.i38, align 8
  %183 = load ptr, ptr %182, align 8
  store ptr %183, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer63.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %182, i64 0, i32 1
  %184 = load i64, ptr %bytes_in_buffer63.i, align 8
  store i64 %184, ptr %bytes_in_buffer.i40, align 8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end61.i, %if.end49.i
  %185 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec65.i = add i64 %185, -1
  store i64 %dec65.i, ptr %bytes_in_buffer.i40, align 8
  %186 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr66.i = getelementptr inbounds i8, ptr %186, i64 1
  store ptr %incdec.ptr66.i, ptr %next_input_byte.i39, align 8
  %187 = load i8, ptr %186, align 1
  %conv67.i = zext i8 %187 to i32
  %188 = load ptr, ptr %cinfo.addr.i36, align 8
  %image_height68.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %188, i64 0, i32 7
  %189 = load i32, ptr %image_height68.i, align 4
  %add69.i = add i32 %189, %conv67.i
  store i32 %add69.i, ptr %image_height68.i, align 4
  %190 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp72.i = icmp eq i64 %190, 0
  br i1 %cmp72.i, label %if.then74.i, label %if.end82.i

if.then74.i:                                      ; preds = %if.end64.i
  %191 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer75.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %191, i64 0, i32 3
  %192 = load ptr, ptr %fill_input_buffer75.i, align 8
  %193 = load ptr, ptr %cinfo.addr.i36, align 8
  %call76.i = call i32 %192(ptr noundef %193) #5
  %tobool77.i.not = icmp eq i32 %call76.i, 0
  br i1 %tobool77.i.not, label %if.then78.i, label %if.end79.i

if.then78.i:                                      ; preds = %if.then74.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end79.i:                                       ; preds = %if.then74.i
  %194 = load ptr, ptr %datasrc.i38, align 8
  %195 = load ptr, ptr %194, align 8
  store ptr %195, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer81.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %194, i64 0, i32 1
  %196 = load i64, ptr %bytes_in_buffer81.i, align 8
  store i64 %196, ptr %bytes_in_buffer.i40, align 8
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.end79.i, %if.end64.i
  %197 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec83.i = add i64 %197, -1
  store i64 %dec83.i, ptr %bytes_in_buffer.i40, align 8
  %198 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr84.i = getelementptr inbounds i8, ptr %198, i64 1
  store ptr %incdec.ptr84.i, ptr %next_input_byte.i39, align 8
  %199 = load i8, ptr %198, align 1
  %conv85.i = zext i8 %199 to i32
  %shl86.i = shl nuw nsw i32 %conv85.i, 8
  %200 = load ptr, ptr %cinfo.addr.i36, align 8
  %image_width.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %200, i64 0, i32 6
  store i32 %shl86.i, ptr %image_width.i, align 8
  %201 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp87.i = icmp eq i64 %201, 0
  br i1 %cmp87.i, label %if.then89.i, label %if.end97.i

if.then89.i:                                      ; preds = %if.end82.i
  %202 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer90.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %202, i64 0, i32 3
  %203 = load ptr, ptr %fill_input_buffer90.i, align 8
  %204 = load ptr, ptr %cinfo.addr.i36, align 8
  %call91.i = call i32 %203(ptr noundef %204) #5
  %tobool92.i.not = icmp eq i32 %call91.i, 0
  br i1 %tobool92.i.not, label %if.then93.i, label %if.end94.i

if.then93.i:                                      ; preds = %if.then89.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end94.i:                                       ; preds = %if.then89.i
  %205 = load ptr, ptr %datasrc.i38, align 8
  %206 = load ptr, ptr %205, align 8
  store ptr %206, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer96.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %205, i64 0, i32 1
  %207 = load i64, ptr %bytes_in_buffer96.i, align 8
  store i64 %207, ptr %bytes_in_buffer.i40, align 8
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end94.i, %if.end82.i
  %208 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec98.i = add i64 %208, -1
  store i64 %dec98.i, ptr %bytes_in_buffer.i40, align 8
  %209 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr99.i = getelementptr inbounds i8, ptr %209, i64 1
  store ptr %incdec.ptr99.i, ptr %next_input_byte.i39, align 8
  %210 = load i8, ptr %209, align 1
  %conv100.i = zext i8 %210 to i32
  %211 = load ptr, ptr %cinfo.addr.i36, align 8
  %image_width101.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %211, i64 0, i32 6
  %212 = load i32, ptr %image_width101.i, align 8
  %add102.i = add i32 %212, %conv100.i
  store i32 %add102.i, ptr %image_width101.i, align 8
  %213 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp105.i = icmp eq i64 %213, 0
  br i1 %cmp105.i, label %if.then107.i, label %if.end115.i

if.then107.i:                                     ; preds = %if.end97.i
  %214 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer108.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %214, i64 0, i32 3
  %215 = load ptr, ptr %fill_input_buffer108.i, align 8
  %216 = load ptr, ptr %cinfo.addr.i36, align 8
  %call109.i = call i32 %215(ptr noundef %216) #5
  %tobool110.i.not = icmp eq i32 %call109.i, 0
  br i1 %tobool110.i.not, label %if.then111.i, label %if.end112.i

if.then111.i:                                     ; preds = %if.then107.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end112.i:                                      ; preds = %if.then107.i
  %217 = load ptr, ptr %datasrc.i38, align 8
  %218 = load ptr, ptr %217, align 8
  store ptr %218, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer114.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %217, i64 0, i32 1
  %219 = load i64, ptr %bytes_in_buffer114.i, align 8
  store i64 %219, ptr %bytes_in_buffer.i40, align 8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.end112.i, %if.end97.i
  %220 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec116.i = add i64 %220, -1
  store i64 %dec116.i, ptr %bytes_in_buffer.i40, align 8
  %221 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr117.i = getelementptr inbounds i8, ptr %221, i64 1
  store ptr %incdec.ptr117.i, ptr %next_input_byte.i39, align 8
  %222 = load i8, ptr %221, align 1
  %conv118.i = zext i8 %222 to i32
  %223 = load ptr, ptr %cinfo.addr.i36, align 8
  %num_components.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %223, i64 0, i32 8
  store i32 %conv118.i, ptr %num_components.i, align 8
  %224 = load i64, ptr %length.i, align 8
  %sub.i = add nsw i64 %224, -8
  store i64 %sub.i, ptr %length.i, align 8
  %225 = load ptr, ptr %223, align 8
  %msg_parm.i70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %225, i64 0, i32 6
  store ptr %msg_parm.i70, ptr %_mp.i, align 8
  %226 = load ptr, ptr %cinfo.addr.i36, align 8
  %unread_marker.i71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %226, i64 0, i32 72
  %227 = load i32, ptr %unread_marker.i71, align 4
  store i32 %227, ptr %msg_parm.i70, align 4
  %image_width121.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %226, i64 0, i32 6
  %228 = load i32, ptr %image_width121.i, align 8
  %229 = load ptr, ptr %_mp.i, align 8
  %arrayidx122.i = getelementptr inbounds i32, ptr %229, i64 1
  store i32 %228, ptr %arrayidx122.i, align 4
  %230 = load ptr, ptr %cinfo.addr.i36, align 8
  %image_height123.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %230, i64 0, i32 7
  %231 = load i32, ptr %image_height123.i, align 4
  %arrayidx124.i = getelementptr inbounds i32, ptr %229, i64 2
  store i32 %231, ptr %arrayidx124.i, align 4
  %num_components125.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %230, i64 0, i32 8
  %232 = load i32, ptr %num_components125.i, align 8
  %233 = load ptr, ptr %_mp.i, align 8
  %arrayidx126.i = getelementptr inbounds i32, ptr %233, i64 3
  store i32 %232, ptr %arrayidx126.i, align 4
  %234 = load ptr, ptr %cinfo.addr.i36, align 8
  %235 = load ptr, ptr %234, align 8
  %msg_code.i72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %235, i64 0, i32 5
  store i32 99, ptr %msg_code.i72, align 8
  %236 = load ptr, ptr %234, align 8
  %emit_message.i73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %236, i64 0, i32 1
  %237 = load ptr, ptr %emit_message.i73, align 8
  %238 = load ptr, ptr %cinfo.addr.i36, align 8
  call void %237(ptr noundef %238, i32 noundef 1) #5
  %marker.i74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %238, i64 0, i32 78
  %239 = load ptr, ptr %marker.i74, align 8
  %saw_SOF.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %239, i64 0, i32 6
  %240 = load i32, ptr %saw_SOF.i, align 4
  %tobool130.i.not = icmp eq i32 %240, 0
  br i1 %tobool130.i.not, label %if.end135.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.end115.i
  %241 = load ptr, ptr %cinfo.addr.i36, align 8
  %242 = load ptr, ptr %241, align 8
  %msg_code133.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %242, i64 0, i32 5
  store i32 57, ptr %msg_code133.i, align 8
  %243 = load ptr, ptr %241, align 8
  %244 = load ptr, ptr %243, align 8
  call void %244(ptr noundef nonnull %241) #5
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then131.i, %if.end115.i
  %245 = load ptr, ptr %cinfo.addr.i36, align 8
  %image_height136.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %245, i64 0, i32 7
  %246 = load i32, ptr %image_height136.i, align 4
  %cmp137.i = icmp eq i32 %246, 0
  br i1 %cmp137.i, label %if.then146.i, label %lor.lhs.false.i75

lor.lhs.false.i75:                                ; preds = %if.end135.i
  %247 = load ptr, ptr %cinfo.addr.i36, align 8
  %image_width139.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %247, i64 0, i32 6
  %248 = load i32, ptr %image_width139.i, align 8
  %cmp140.i = icmp eq i32 %248, 0
  br i1 %cmp140.i, label %if.then146.i, label %lor.lhs.false142.i

lor.lhs.false142.i:                               ; preds = %lor.lhs.false.i75
  %249 = load ptr, ptr %cinfo.addr.i36, align 8
  %num_components143.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %249, i64 0, i32 8
  %250 = load i32, ptr %num_components143.i, align 8
  %cmp144.i = icmp slt i32 %250, 1
  br i1 %cmp144.i, label %if.then146.i, label %if.end151.i

if.then146.i:                                     ; preds = %lor.lhs.false142.i, %lor.lhs.false.i75, %if.end135.i
  %251 = load ptr, ptr %cinfo.addr.i36, align 8
  %252 = load ptr, ptr %251, align 8
  %msg_code148.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %252, i64 0, i32 5
  store i32 31, ptr %msg_code148.i, align 8
  %253 = load ptr, ptr %251, align 8
  %254 = load ptr, ptr %253, align 8
  call void %254(ptr noundef nonnull %251) #5
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then146.i, %lor.lhs.false142.i
  %255 = load i64, ptr %length.i, align 8
  %256 = load ptr, ptr %cinfo.addr.i36, align 8
  %num_components152.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %256, i64 0, i32 8
  %257 = load i32, ptr %num_components152.i, align 8
  %mul.i = mul nsw i32 %257, 3
  %conv153.i = sext i32 %mul.i to i64
  %cmp154.i.not = icmp eq i64 %255, %conv153.i
  br i1 %cmp154.i.not, label %if.end161.i, label %if.then156.i

if.then156.i:                                     ; preds = %if.end151.i
  %258 = load ptr, ptr %cinfo.addr.i36, align 8
  %259 = load ptr, ptr %258, align 8
  %msg_code158.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %259, i64 0, i32 5
  store i32 9, ptr %msg_code158.i, align 8
  %260 = load ptr, ptr %258, align 8
  %261 = load ptr, ptr %260, align 8
  call void %261(ptr noundef nonnull %258) #5
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then156.i, %if.end151.i
  %262 = load ptr, ptr %cinfo.addr.i36, align 8
  %comp_info.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %262, i64 0, i32 43
  %263 = load ptr, ptr %comp_info.i, align 8
  %cmp162.i = icmp eq ptr %263, null
  br i1 %cmp162.i, label %if.then164.i, label %if.end170.i

if.then164.i:                                     ; preds = %if.end161.i
  %264 = load ptr, ptr %cinfo.addr.i36, align 8
  %mem.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %264, i64 0, i32 1
  %265 = load ptr, ptr %mem.i, align 8
  %266 = load ptr, ptr %265, align 8
  %num_components165.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %264, i64 0, i32 8
  %267 = load i32, ptr %num_components165.i, align 8
  %conv166.i = sext i32 %267 to i64
  %mul167.i = mul nsw i64 %conv166.i, 96
  %call168.i = call ptr %266(ptr noundef %264, i32 noundef 1, i64 noundef %mul167.i) #5
  %268 = load ptr, ptr %cinfo.addr.i36, align 8
  %comp_info169.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %268, i64 0, i32 43
  store ptr %call168.i, ptr %comp_info169.i, align 8
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then164.i, %if.end161.i
  store i32 0, ptr %ci.i, align 4
  %269 = load ptr, ptr %cinfo.addr.i36, align 8
  %comp_info171.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %269, i64 0, i32 43
  %270 = load ptr, ptr %comp_info171.i, align 8
  br label %for.cond.i76

for.cond.i76:                                     ; preds = %if.end219.i, %if.end170.i
  %storemerge1172 = phi ptr [ %270, %if.end170.i ], [ %incdec.ptr242.i, %if.end219.i ]
  store ptr %storemerge1172, ptr %compptr.i, align 8
  %271 = load i32, ptr %ci.i, align 4
  %272 = load ptr, ptr %cinfo.addr.i36, align 8
  %num_components172.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %272, i64 0, i32 8
  %273 = load i32, ptr %num_components172.i, align 8
  %cmp173.i = icmp slt i32 %271, %273
  br i1 %cmp173.i, label %for.body.i77, label %for.end.i

for.body.i77:                                     ; preds = %for.cond.i76
  %274 = load i32, ptr %ci.i, align 4
  %275 = load ptr, ptr %compptr.i, align 8
  %component_index.i = getelementptr inbounds %struct.jpeg_component_info, ptr %275, i64 0, i32 1
  store i32 %274, ptr %component_index.i, align 4
  %276 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp176.i = icmp eq i64 %276, 0
  br i1 %cmp176.i, label %if.then178.i, label %if.end186.i

if.then178.i:                                     ; preds = %for.body.i77
  %277 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer179.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %277, i64 0, i32 3
  %278 = load ptr, ptr %fill_input_buffer179.i, align 8
  %279 = load ptr, ptr %cinfo.addr.i36, align 8
  %call180.i = call i32 %278(ptr noundef %279) #5
  %tobool181.i.not = icmp eq i32 %call180.i, 0
  br i1 %tobool181.i.not, label %if.then182.i, label %if.end183.i

if.then182.i:                                     ; preds = %if.then178.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end183.i:                                      ; preds = %if.then178.i
  %280 = load ptr, ptr %datasrc.i38, align 8
  %281 = load ptr, ptr %280, align 8
  store ptr %281, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer185.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %280, i64 0, i32 1
  %282 = load i64, ptr %bytes_in_buffer185.i, align 8
  store i64 %282, ptr %bytes_in_buffer.i40, align 8
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.end183.i, %for.body.i77
  %283 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec187.i = add i64 %283, -1
  store i64 %dec187.i, ptr %bytes_in_buffer.i40, align 8
  %284 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr188.i = getelementptr inbounds i8, ptr %284, i64 1
  store ptr %incdec.ptr188.i, ptr %next_input_byte.i39, align 8
  %285 = load i8, ptr %284, align 1
  %conv189.i = zext i8 %285 to i32
  %286 = load ptr, ptr %compptr.i, align 8
  store i32 %conv189.i, ptr %286, align 8
  %287 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp192.i = icmp eq i64 %287, 0
  br i1 %cmp192.i, label %if.then194.i, label %if.end202.i

if.then194.i:                                     ; preds = %if.end186.i
  %288 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer195.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %288, i64 0, i32 3
  %289 = load ptr, ptr %fill_input_buffer195.i, align 8
  %290 = load ptr, ptr %cinfo.addr.i36, align 8
  %call196.i = call i32 %289(ptr noundef %290) #5
  %tobool197.i.not = icmp eq i32 %call196.i, 0
  br i1 %tobool197.i.not, label %if.then198.i, label %if.end199.i

if.then198.i:                                     ; preds = %if.then194.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end199.i:                                      ; preds = %if.then194.i
  %291 = load ptr, ptr %datasrc.i38, align 8
  %292 = load ptr, ptr %291, align 8
  store ptr %292, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer201.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %291, i64 0, i32 1
  %293 = load i64, ptr %bytes_in_buffer201.i, align 8
  store i64 %293, ptr %bytes_in_buffer.i40, align 8
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.end199.i, %if.end186.i
  %294 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec203.i = add i64 %294, -1
  store i64 %dec203.i, ptr %bytes_in_buffer.i40, align 8
  %295 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr204.i = getelementptr inbounds i8, ptr %295, i64 1
  store ptr %incdec.ptr204.i, ptr %next_input_byte.i39, align 8
  %296 = load i8, ptr %295, align 1
  %conv205.i = zext i8 %296 to i32
  %297 = lshr i32 %conv205.i, 4
  %298 = load ptr, ptr %compptr.i, align 8
  %h_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %298, i64 0, i32 2
  store i32 %297, ptr %h_samp_factor.i, align 8
  %and207.i = and i32 %conv205.i, 15
  %v_samp_factor.i = getelementptr inbounds %struct.jpeg_component_info, ptr %298, i64 0, i32 3
  store i32 %and207.i, ptr %v_samp_factor.i, align 4
  %299 = load i64, ptr %bytes_in_buffer.i40, align 8
  %cmp209.i = icmp eq i64 %299, 0
  br i1 %cmp209.i, label %if.then211.i, label %if.end219.i

if.then211.i:                                     ; preds = %if.end202.i
  %300 = load ptr, ptr %datasrc.i38, align 8
  %fill_input_buffer212.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %300, i64 0, i32 3
  %301 = load ptr, ptr %fill_input_buffer212.i, align 8
  %302 = load ptr, ptr %cinfo.addr.i36, align 8
  %call213.i = call i32 %301(ptr noundef %302) #5
  %tobool214.i.not = icmp eq i32 %call213.i, 0
  br i1 %tobool214.i.not, label %if.then215.i, label %if.end216.i

if.then215.i:                                     ; preds = %if.then211.i
  store i32 0, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

if.end216.i:                                      ; preds = %if.then211.i
  %303 = load ptr, ptr %datasrc.i38, align 8
  %304 = load ptr, ptr %303, align 8
  store ptr %304, ptr %next_input_byte.i39, align 8
  %bytes_in_buffer218.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %303, i64 0, i32 1
  %305 = load i64, ptr %bytes_in_buffer218.i, align 8
  store i64 %305, ptr %bytes_in_buffer.i40, align 8
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.end216.i, %if.end202.i
  %306 = load i64, ptr %bytes_in_buffer.i40, align 8
  %dec220.i = add i64 %306, -1
  store i64 %dec220.i, ptr %bytes_in_buffer.i40, align 8
  %307 = load ptr, ptr %next_input_byte.i39, align 8
  %incdec.ptr221.i = getelementptr inbounds i8, ptr %307, i64 1
  store ptr %incdec.ptr221.i, ptr %next_input_byte.i39, align 8
  %308 = load i8, ptr %307, align 1
  %conv222.i = zext i8 %308 to i32
  %309 = load ptr, ptr %compptr.i, align 8
  %quant_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %309, i64 0, i32 4
  store i32 %conv222.i, ptr %quant_tbl_no.i, align 8
  %310 = load ptr, ptr %cinfo.addr.i36, align 8
  %311 = load ptr, ptr %310, align 8
  %msg_parm227.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %311, i64 0, i32 6
  store ptr %msg_parm227.i, ptr %_mp225.i, align 8
  %312 = load ptr, ptr %compptr.i, align 8
  %313 = load i32, ptr %312, align 8
  store i32 %313, ptr %msg_parm227.i, align 4
  %h_samp_factor231.i = getelementptr inbounds %struct.jpeg_component_info, ptr %312, i64 0, i32 2
  %314 = load i32, ptr %h_samp_factor231.i, align 8
  %arrayidx232.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %311, i64 0, i32 6, i32 0, i64 1
  store i32 %314, ptr %arrayidx232.i, align 4
  %315 = load ptr, ptr %compptr.i, align 8
  %v_samp_factor233.i = getelementptr inbounds %struct.jpeg_component_info, ptr %315, i64 0, i32 3
  %316 = load i32, ptr %v_samp_factor233.i, align 4
  %317 = load ptr, ptr %_mp225.i, align 8
  %arrayidx234.i = getelementptr inbounds i32, ptr %317, i64 2
  store i32 %316, ptr %arrayidx234.i, align 4
  %quant_tbl_no235.i = getelementptr inbounds %struct.jpeg_component_info, ptr %315, i64 0, i32 4
  %318 = load i32, ptr %quant_tbl_no235.i, align 8
  %arrayidx236.i = getelementptr inbounds i32, ptr %317, i64 3
  store i32 %318, ptr %arrayidx236.i, align 4
  %319 = load ptr, ptr %cinfo.addr.i36, align 8
  %320 = load ptr, ptr %319, align 8
  %msg_code238.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %320, i64 0, i32 5
  store i32 100, ptr %msg_code238.i, align 8
  %321 = load ptr, ptr %319, align 8
  %emit_message240.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %321, i64 0, i32 1
  %322 = load ptr, ptr %emit_message240.i, align 8
  %323 = load ptr, ptr %cinfo.addr.i36, align 8
  call void %322(ptr noundef %323, i32 noundef 1) #5
  %324 = load i32, ptr %ci.i, align 4
  %inc.i78 = add nsw i32 %324, 1
  store i32 %inc.i78, ptr %ci.i, align 4
  %325 = load ptr, ptr %compptr.i, align 8
  %incdec.ptr242.i = getelementptr inbounds %struct.jpeg_component_info, ptr %325, i64 1
  br label %for.cond.i76, !llvm.loop !11

for.end.i:                                        ; preds = %for.cond.i76
  %326 = load ptr, ptr %cinfo.addr.i36, align 8
  %marker243.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %326, i64 0, i32 78
  %327 = load ptr, ptr %marker243.i, align 8
  %saw_SOF244.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %327, i64 0, i32 6
  store i32 1, ptr %saw_SOF244.i, align 4
  %328 = load ptr, ptr %next_input_byte.i39, align 8
  %329 = load ptr, ptr %datasrc.i38, align 8
  store ptr %328, ptr %329, align 8
  %330 = load i64, ptr %bytes_in_buffer.i40, align 8
  %bytes_in_buffer246.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %329, i64 0, i32 1
  store i64 %330, ptr %bytes_in_buffer246.i, align 8
  store i32 1, ptr %retval.i35, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit: ; preds = %if.then3.i48, %if.then14.i60, %if.then29.i, %if.then45.i, %if.then60.i, %if.then78.i, %if.then93.i, %if.then111.i, %if.then182.i, %if.then198.i, %if.then215.i, %for.end.i
  %331 = load i32, ptr %retval.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i35)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_prog.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_arith.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i38)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i39)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i40)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp225.i)
  %tobool17.not = icmp eq i32 %331, 0
  br i1 %tobool17.not, label %if.then18, label %sw.epilog

if.then18:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb20:                                          ; preds = %if.end9
  %332 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i79)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_prog.addr.i81)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_arith.addr.i82)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i85)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i86)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i87)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i88)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i89)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp.i90)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp225.i91)
  store ptr %332, ptr %cinfo.addr.i80, align 8
  store i32 1, ptr %is_prog.addr.i81, align 4
  store i32 0, ptr %is_arith.addr.i82, align 4
  %src.i92 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %332, i64 0, i32 5
  %333 = load ptr, ptr %src.i92, align 8
  store ptr %333, ptr %datasrc.i87, align 8
  %334 = load ptr, ptr %333, align 8
  store ptr %334, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer2.i93 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %333, i64 0, i32 1
  %335 = load i64, ptr %bytes_in_buffer2.i93, align 8
  store i64 %335, ptr %bytes_in_buffer.i89, align 8
  %336 = load i32, ptr %is_prog.addr.i81, align 4
  %337 = load ptr, ptr %cinfo.addr.i80, align 8
  %progressive_mode.i94 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %337, i64 0, i32 44
  store i32 %336, ptr %progressive_mode.i94, align 8
  %338 = load i32, ptr %is_arith.addr.i82, align 4
  %arith_code.i95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %337, i64 0, i32 45
  store i32 %338, ptr %arith_code.i95, align 4
  %339 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp.i96 = icmp eq i64 %339, 0
  br i1 %cmp.i96, label %if.then.i100, label %if.end6.i110

if.then.i100:                                     ; preds = %sw.bb20
  %340 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer.i97 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %340, i64 0, i32 3
  %341 = load ptr, ptr %fill_input_buffer.i97, align 8
  %342 = load ptr, ptr %cinfo.addr.i80, align 8
  %call.i98 = call i32 %341(ptr noundef %342) #5
  %tobool.i99.not = icmp eq i32 %call.i98, 0
  br i1 %tobool.i99.not, label %if.then3.i101, label %if.end.i103

if.then3.i101:                                    ; preds = %if.then.i100
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end.i103:                                      ; preds = %if.then.i100
  %343 = load ptr, ptr %datasrc.i87, align 8
  %344 = load ptr, ptr %343, align 8
  store ptr %344, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer5.i102 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %343, i64 0, i32 1
  %345 = load i64, ptr %bytes_in_buffer5.i102, align 8
  store i64 %345, ptr %bytes_in_buffer.i89, align 8
  br label %if.end6.i110

if.end6.i110:                                     ; preds = %if.end.i103, %sw.bb20
  %346 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec.i104 = add i64 %346, -1
  store i64 %dec.i104, ptr %bytes_in_buffer.i89, align 8
  %347 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr.i105 = getelementptr inbounds i8, ptr %347, i64 1
  store ptr %incdec.ptr.i105, ptr %next_input_byte.i88, align 8
  %348 = load i8, ptr %347, align 1
  %conv.i106 = zext i8 %348 to i64
  %shl.i107 = shl nuw nsw i64 %conv.i106, 8
  store i64 %shl.i107, ptr %length.i83, align 8
  %349 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp8.i109 = icmp eq i64 %349, 0
  br i1 %cmp8.i109, label %if.then10.i114, label %if.end18.i122

if.then10.i114:                                   ; preds = %if.end6.i110
  %350 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer11.i111 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %350, i64 0, i32 3
  %351 = load ptr, ptr %fill_input_buffer11.i111, align 8
  %352 = load ptr, ptr %cinfo.addr.i80, align 8
  %call12.i112 = call i32 %351(ptr noundef %352) #5
  %tobool13.i113.not = icmp eq i32 %call12.i112, 0
  br i1 %tobool13.i113.not, label %if.then14.i115, label %if.end15.i117

if.then14.i115:                                   ; preds = %if.then10.i114
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end15.i117:                                    ; preds = %if.then10.i114
  %353 = load ptr, ptr %datasrc.i87, align 8
  %354 = load ptr, ptr %353, align 8
  store ptr %354, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer17.i116 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %353, i64 0, i32 1
  %355 = load i64, ptr %bytes_in_buffer17.i116, align 8
  store i64 %355, ptr %bytes_in_buffer.i89, align 8
  br label %if.end18.i122

if.end18.i122:                                    ; preds = %if.end15.i117, %if.end6.i110
  %356 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec19.i118 = add i64 %356, -1
  store i64 %dec19.i118, ptr %bytes_in_buffer.i89, align 8
  %357 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr20.i119 = getelementptr inbounds i8, ptr %357, i64 1
  store ptr %incdec.ptr20.i119, ptr %next_input_byte.i88, align 8
  %358 = load i8, ptr %357, align 1
  %conv21.i120 = zext i8 %358 to i64
  %359 = load i64, ptr %length.i83, align 8
  %add.i121 = add nsw i64 %359, %conv21.i120
  store i64 %add.i121, ptr %length.i83, align 8
  %360 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp23.i123 = icmp eq i64 %360, 0
  br i1 %cmp23.i123, label %if.then25.i127, label %if.end33.i135

if.then25.i127:                                   ; preds = %if.end18.i122
  %361 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer26.i124 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %361, i64 0, i32 3
  %362 = load ptr, ptr %fill_input_buffer26.i124, align 8
  %363 = load ptr, ptr %cinfo.addr.i80, align 8
  %call27.i125 = call i32 %362(ptr noundef %363) #5
  %tobool28.i126.not = icmp eq i32 %call27.i125, 0
  br i1 %tobool28.i126.not, label %if.then29.i128, label %if.end30.i130

if.then29.i128:                                   ; preds = %if.then25.i127
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end30.i130:                                    ; preds = %if.then25.i127
  %364 = load ptr, ptr %datasrc.i87, align 8
  %365 = load ptr, ptr %364, align 8
  store ptr %365, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer32.i129 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %364, i64 0, i32 1
  %366 = load i64, ptr %bytes_in_buffer32.i129, align 8
  store i64 %366, ptr %bytes_in_buffer.i89, align 8
  br label %if.end33.i135

if.end33.i135:                                    ; preds = %if.end30.i130, %if.end18.i122
  %367 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec34.i131 = add i64 %367, -1
  store i64 %dec34.i131, ptr %bytes_in_buffer.i89, align 8
  %368 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr35.i132 = getelementptr inbounds i8, ptr %368, i64 1
  store ptr %incdec.ptr35.i132, ptr %next_input_byte.i88, align 8
  %369 = load i8, ptr %368, align 1
  %conv36.i133 = zext i8 %369 to i32
  %370 = load ptr, ptr %cinfo.addr.i80, align 8
  %data_precision.i134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %370, i64 0, i32 42
  store i32 %conv36.i133, ptr %data_precision.i134, align 8
  %371 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp39.i136 = icmp eq i64 %371, 0
  br i1 %cmp39.i136, label %if.then41.i140, label %if.end49.i150

if.then41.i140:                                   ; preds = %if.end33.i135
  %372 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer42.i137 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %372, i64 0, i32 3
  %373 = load ptr, ptr %fill_input_buffer42.i137, align 8
  %374 = load ptr, ptr %cinfo.addr.i80, align 8
  %call43.i138 = call i32 %373(ptr noundef %374) #5
  %tobool44.i139.not = icmp eq i32 %call43.i138, 0
  br i1 %tobool44.i139.not, label %if.then45.i141, label %if.end46.i143

if.then45.i141:                                   ; preds = %if.then41.i140
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end46.i143:                                    ; preds = %if.then41.i140
  %375 = load ptr, ptr %datasrc.i87, align 8
  %376 = load ptr, ptr %375, align 8
  store ptr %376, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer48.i142 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %375, i64 0, i32 1
  %377 = load i64, ptr %bytes_in_buffer48.i142, align 8
  store i64 %377, ptr %bytes_in_buffer.i89, align 8
  br label %if.end49.i150

if.end49.i150:                                    ; preds = %if.end46.i143, %if.end33.i135
  %378 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec50.i144 = add i64 %378, -1
  store i64 %dec50.i144, ptr %bytes_in_buffer.i89, align 8
  %379 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr51.i145 = getelementptr inbounds i8, ptr %379, i64 1
  store ptr %incdec.ptr51.i145, ptr %next_input_byte.i88, align 8
  %380 = load i8, ptr %379, align 1
  %conv52.i146 = zext i8 %380 to i32
  %shl53.i147 = shl nuw nsw i32 %conv52.i146, 8
  %381 = load ptr, ptr %cinfo.addr.i80, align 8
  %image_height.i148 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %381, i64 0, i32 7
  store i32 %shl53.i147, ptr %image_height.i148, align 4
  %382 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp54.i149 = icmp eq i64 %382, 0
  br i1 %cmp54.i149, label %if.then56.i154, label %if.end64.i163

if.then56.i154:                                   ; preds = %if.end49.i150
  %383 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer57.i151 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %383, i64 0, i32 3
  %384 = load ptr, ptr %fill_input_buffer57.i151, align 8
  %385 = load ptr, ptr %cinfo.addr.i80, align 8
  %call58.i152 = call i32 %384(ptr noundef %385) #5
  %tobool59.i153.not = icmp eq i32 %call58.i152, 0
  br i1 %tobool59.i153.not, label %if.then60.i155, label %if.end61.i157

if.then60.i155:                                   ; preds = %if.then56.i154
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end61.i157:                                    ; preds = %if.then56.i154
  %386 = load ptr, ptr %datasrc.i87, align 8
  %387 = load ptr, ptr %386, align 8
  store ptr %387, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer63.i156 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %386, i64 0, i32 1
  %388 = load i64, ptr %bytes_in_buffer63.i156, align 8
  store i64 %388, ptr %bytes_in_buffer.i89, align 8
  br label %if.end64.i163

if.end64.i163:                                    ; preds = %if.end61.i157, %if.end49.i150
  %389 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec65.i158 = add i64 %389, -1
  store i64 %dec65.i158, ptr %bytes_in_buffer.i89, align 8
  %390 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr66.i159 = getelementptr inbounds i8, ptr %390, i64 1
  store ptr %incdec.ptr66.i159, ptr %next_input_byte.i88, align 8
  %391 = load i8, ptr %390, align 1
  %conv67.i160 = zext i8 %391 to i32
  %392 = load ptr, ptr %cinfo.addr.i80, align 8
  %image_height68.i161 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %392, i64 0, i32 7
  %393 = load i32, ptr %image_height68.i161, align 4
  %add69.i162 = add i32 %393, %conv67.i160
  store i32 %add69.i162, ptr %image_height68.i161, align 4
  %394 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp72.i164 = icmp eq i64 %394, 0
  br i1 %cmp72.i164, label %if.then74.i168, label %if.end82.i178

if.then74.i168:                                   ; preds = %if.end64.i163
  %395 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer75.i165 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %395, i64 0, i32 3
  %396 = load ptr, ptr %fill_input_buffer75.i165, align 8
  %397 = load ptr, ptr %cinfo.addr.i80, align 8
  %call76.i166 = call i32 %396(ptr noundef %397) #5
  %tobool77.i167.not = icmp eq i32 %call76.i166, 0
  br i1 %tobool77.i167.not, label %if.then78.i169, label %if.end79.i171

if.then78.i169:                                   ; preds = %if.then74.i168
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end79.i171:                                    ; preds = %if.then74.i168
  %398 = load ptr, ptr %datasrc.i87, align 8
  %399 = load ptr, ptr %398, align 8
  store ptr %399, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer81.i170 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %398, i64 0, i32 1
  %400 = load i64, ptr %bytes_in_buffer81.i170, align 8
  store i64 %400, ptr %bytes_in_buffer.i89, align 8
  br label %if.end82.i178

if.end82.i178:                                    ; preds = %if.end79.i171, %if.end64.i163
  %401 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec83.i172 = add i64 %401, -1
  store i64 %dec83.i172, ptr %bytes_in_buffer.i89, align 8
  %402 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr84.i173 = getelementptr inbounds i8, ptr %402, i64 1
  store ptr %incdec.ptr84.i173, ptr %next_input_byte.i88, align 8
  %403 = load i8, ptr %402, align 1
  %conv85.i174 = zext i8 %403 to i32
  %shl86.i175 = shl nuw nsw i32 %conv85.i174, 8
  %404 = load ptr, ptr %cinfo.addr.i80, align 8
  %image_width.i176 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %404, i64 0, i32 6
  store i32 %shl86.i175, ptr %image_width.i176, align 8
  %405 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp87.i177 = icmp eq i64 %405, 0
  br i1 %cmp87.i177, label %if.then89.i182, label %if.end97.i191

if.then89.i182:                                   ; preds = %if.end82.i178
  %406 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer90.i179 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %406, i64 0, i32 3
  %407 = load ptr, ptr %fill_input_buffer90.i179, align 8
  %408 = load ptr, ptr %cinfo.addr.i80, align 8
  %call91.i180 = call i32 %407(ptr noundef %408) #5
  %tobool92.i181.not = icmp eq i32 %call91.i180, 0
  br i1 %tobool92.i181.not, label %if.then93.i183, label %if.end94.i185

if.then93.i183:                                   ; preds = %if.then89.i182
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end94.i185:                                    ; preds = %if.then89.i182
  %409 = load ptr, ptr %datasrc.i87, align 8
  %410 = load ptr, ptr %409, align 8
  store ptr %410, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer96.i184 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %409, i64 0, i32 1
  %411 = load i64, ptr %bytes_in_buffer96.i184, align 8
  store i64 %411, ptr %bytes_in_buffer.i89, align 8
  br label %if.end97.i191

if.end97.i191:                                    ; preds = %if.end94.i185, %if.end82.i178
  %412 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec98.i186 = add i64 %412, -1
  store i64 %dec98.i186, ptr %bytes_in_buffer.i89, align 8
  %413 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr99.i187 = getelementptr inbounds i8, ptr %413, i64 1
  store ptr %incdec.ptr99.i187, ptr %next_input_byte.i88, align 8
  %414 = load i8, ptr %413, align 1
  %conv100.i188 = zext i8 %414 to i32
  %415 = load ptr, ptr %cinfo.addr.i80, align 8
  %image_width101.i189 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %415, i64 0, i32 6
  %416 = load i32, ptr %image_width101.i189, align 8
  %add102.i190 = add i32 %416, %conv100.i188
  store i32 %add102.i190, ptr %image_width101.i189, align 8
  %417 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp105.i192 = icmp eq i64 %417, 0
  br i1 %cmp105.i192, label %if.then107.i196, label %if.end115.i204

if.then107.i196:                                  ; preds = %if.end97.i191
  %418 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer108.i193 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %418, i64 0, i32 3
  %419 = load ptr, ptr %fill_input_buffer108.i193, align 8
  %420 = load ptr, ptr %cinfo.addr.i80, align 8
  %call109.i194 = call i32 %419(ptr noundef %420) #5
  %tobool110.i195.not = icmp eq i32 %call109.i194, 0
  br i1 %tobool110.i195.not, label %if.then111.i197, label %if.end112.i199

if.then111.i197:                                  ; preds = %if.then107.i196
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end112.i199:                                   ; preds = %if.then107.i196
  %421 = load ptr, ptr %datasrc.i87, align 8
  %422 = load ptr, ptr %421, align 8
  store ptr %422, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer114.i198 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %421, i64 0, i32 1
  %423 = load i64, ptr %bytes_in_buffer114.i198, align 8
  store i64 %423, ptr %bytes_in_buffer.i89, align 8
  br label %if.end115.i204

if.end115.i204:                                   ; preds = %if.end112.i199, %if.end97.i191
  %424 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec116.i200 = add i64 %424, -1
  store i64 %dec116.i200, ptr %bytes_in_buffer.i89, align 8
  %425 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr117.i201 = getelementptr inbounds i8, ptr %425, i64 1
  store ptr %incdec.ptr117.i201, ptr %next_input_byte.i88, align 8
  %426 = load i8, ptr %425, align 1
  %conv118.i202 = zext i8 %426 to i32
  %427 = load ptr, ptr %cinfo.addr.i80, align 8
  %num_components.i203 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %427, i64 0, i32 8
  store i32 %conv118.i202, ptr %num_components.i203, align 8
  %428 = load i64, ptr %length.i83, align 8
  %sub.i205 = add nsw i64 %428, -8
  store i64 %sub.i205, ptr %length.i83, align 8
  %429 = load ptr, ptr %427, align 8
  %msg_parm.i206 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %429, i64 0, i32 6
  store ptr %msg_parm.i206, ptr %_mp.i90, align 8
  %430 = load ptr, ptr %cinfo.addr.i80, align 8
  %unread_marker.i207 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %430, i64 0, i32 72
  %431 = load i32, ptr %unread_marker.i207, align 4
  store i32 %431, ptr %msg_parm.i206, align 4
  %image_width121.i208 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %430, i64 0, i32 6
  %432 = load i32, ptr %image_width121.i208, align 8
  %433 = load ptr, ptr %_mp.i90, align 8
  %arrayidx122.i209 = getelementptr inbounds i32, ptr %433, i64 1
  store i32 %432, ptr %arrayidx122.i209, align 4
  %434 = load ptr, ptr %cinfo.addr.i80, align 8
  %image_height123.i210 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %434, i64 0, i32 7
  %435 = load i32, ptr %image_height123.i210, align 4
  %arrayidx124.i211 = getelementptr inbounds i32, ptr %433, i64 2
  store i32 %435, ptr %arrayidx124.i211, align 4
  %num_components125.i212 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %434, i64 0, i32 8
  %436 = load i32, ptr %num_components125.i212, align 8
  %437 = load ptr, ptr %_mp.i90, align 8
  %arrayidx126.i213 = getelementptr inbounds i32, ptr %437, i64 3
  store i32 %436, ptr %arrayidx126.i213, align 4
  %438 = load ptr, ptr %cinfo.addr.i80, align 8
  %439 = load ptr, ptr %438, align 8
  %msg_code.i214 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %439, i64 0, i32 5
  store i32 99, ptr %msg_code.i214, align 8
  %440 = load ptr, ptr %438, align 8
  %emit_message.i215 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %440, i64 0, i32 1
  %441 = load ptr, ptr %emit_message.i215, align 8
  %442 = load ptr, ptr %cinfo.addr.i80, align 8
  call void %441(ptr noundef %442, i32 noundef 1) #5
  %marker.i216 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %442, i64 0, i32 78
  %443 = load ptr, ptr %marker.i216, align 8
  %saw_SOF.i217 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %443, i64 0, i32 6
  %444 = load i32, ptr %saw_SOF.i217, align 4
  %tobool130.i218.not = icmp eq i32 %444, 0
  br i1 %tobool130.i218.not, label %if.end135.i223, label %if.then131.i220

if.then131.i220:                                  ; preds = %if.end115.i204
  %445 = load ptr, ptr %cinfo.addr.i80, align 8
  %446 = load ptr, ptr %445, align 8
  %msg_code133.i219 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %446, i64 0, i32 5
  store i32 57, ptr %msg_code133.i219, align 8
  %447 = load ptr, ptr %445, align 8
  %448 = load ptr, ptr %447, align 8
  call void %448(ptr noundef nonnull %445) #5
  br label %if.end135.i223

if.end135.i223:                                   ; preds = %if.then131.i220, %if.end115.i204
  %449 = load ptr, ptr %cinfo.addr.i80, align 8
  %image_height136.i221 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %449, i64 0, i32 7
  %450 = load i32, ptr %image_height136.i221, align 4
  %cmp137.i222 = icmp eq i32 %450, 0
  br i1 %cmp137.i222, label %if.then146.i231, label %lor.lhs.false.i226

lor.lhs.false.i226:                               ; preds = %if.end135.i223
  %451 = load ptr, ptr %cinfo.addr.i80, align 8
  %image_width139.i224 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %451, i64 0, i32 6
  %452 = load i32, ptr %image_width139.i224, align 8
  %cmp140.i225 = icmp eq i32 %452, 0
  br i1 %cmp140.i225, label %if.then146.i231, label %lor.lhs.false142.i229

lor.lhs.false142.i229:                            ; preds = %lor.lhs.false.i226
  %453 = load ptr, ptr %cinfo.addr.i80, align 8
  %num_components143.i227 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %453, i64 0, i32 8
  %454 = load i32, ptr %num_components143.i227, align 8
  %cmp144.i228 = icmp slt i32 %454, 1
  br i1 %cmp144.i228, label %if.then146.i231, label %if.end151.i236

if.then146.i231:                                  ; preds = %lor.lhs.false142.i229, %lor.lhs.false.i226, %if.end135.i223
  %455 = load ptr, ptr %cinfo.addr.i80, align 8
  %456 = load ptr, ptr %455, align 8
  %msg_code148.i230 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %456, i64 0, i32 5
  store i32 31, ptr %msg_code148.i230, align 8
  %457 = load ptr, ptr %455, align 8
  %458 = load ptr, ptr %457, align 8
  call void %458(ptr noundef nonnull %455) #5
  br label %if.end151.i236

if.end151.i236:                                   ; preds = %if.then146.i231, %lor.lhs.false142.i229
  %459 = load i64, ptr %length.i83, align 8
  %460 = load ptr, ptr %cinfo.addr.i80, align 8
  %num_components152.i232 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %460, i64 0, i32 8
  %461 = load i32, ptr %num_components152.i232, align 8
  %mul.i233 = mul nsw i32 %461, 3
  %conv153.i234 = sext i32 %mul.i233 to i64
  %cmp154.i235.not = icmp eq i64 %459, %conv153.i234
  br i1 %cmp154.i235.not, label %if.end161.i241, label %if.then156.i238

if.then156.i238:                                  ; preds = %if.end151.i236
  %462 = load ptr, ptr %cinfo.addr.i80, align 8
  %463 = load ptr, ptr %462, align 8
  %msg_code158.i237 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %463, i64 0, i32 5
  store i32 9, ptr %msg_code158.i237, align 8
  %464 = load ptr, ptr %462, align 8
  %465 = load ptr, ptr %464, align 8
  call void %465(ptr noundef nonnull %462) #5
  br label %if.end161.i241

if.end161.i241:                                   ; preds = %if.then156.i238, %if.end151.i236
  %466 = load ptr, ptr %cinfo.addr.i80, align 8
  %comp_info.i239 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %466, i64 0, i32 43
  %467 = load ptr, ptr %comp_info.i239, align 8
  %cmp162.i240 = icmp eq ptr %467, null
  br i1 %cmp162.i240, label %if.then164.i248, label %if.end170.i250

if.then164.i248:                                  ; preds = %if.end161.i241
  %468 = load ptr, ptr %cinfo.addr.i80, align 8
  %mem.i242 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %468, i64 0, i32 1
  %469 = load ptr, ptr %mem.i242, align 8
  %470 = load ptr, ptr %469, align 8
  %num_components165.i243 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %468, i64 0, i32 8
  %471 = load i32, ptr %num_components165.i243, align 8
  %conv166.i244 = sext i32 %471 to i64
  %mul167.i245 = mul nsw i64 %conv166.i244, 96
  %call168.i246 = call ptr %470(ptr noundef %468, i32 noundef 1, i64 noundef %mul167.i245) #5
  %472 = load ptr, ptr %cinfo.addr.i80, align 8
  %comp_info169.i247 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %472, i64 0, i32 43
  store ptr %call168.i246, ptr %comp_info169.i247, align 8
  br label %if.end170.i250

if.end170.i250:                                   ; preds = %if.then164.i248, %if.end161.i241
  store i32 0, ptr %ci.i85, align 4
  %473 = load ptr, ptr %cinfo.addr.i80, align 8
  %comp_info171.i249 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %473, i64 0, i32 43
  %474 = load ptr, ptr %comp_info171.i249, align 8
  br label %for.cond.i253

for.cond.i253:                                    ; preds = %if.end219.i297, %if.end170.i250
  %storemerge1171 = phi ptr [ %474, %if.end170.i250 ], [ %incdec.ptr242.i308, %if.end219.i297 ]
  store ptr %storemerge1171, ptr %compptr.i86, align 8
  %475 = load i32, ptr %ci.i85, align 4
  %476 = load ptr, ptr %cinfo.addr.i80, align 8
  %num_components172.i251 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %476, i64 0, i32 8
  %477 = load i32, ptr %num_components172.i251, align 8
  %cmp173.i252 = icmp slt i32 %475, %477
  br i1 %cmp173.i252, label %for.body.i255, label %for.end.i312

for.body.i255:                                    ; preds = %for.cond.i253
  %478 = load i32, ptr %ci.i85, align 4
  %479 = load ptr, ptr %compptr.i86, align 8
  %component_index.i254 = getelementptr inbounds %struct.jpeg_component_info, ptr %479, i64 0, i32 1
  store i32 %478, ptr %component_index.i254, align 4
  %480 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp176.i256 = icmp eq i64 %480, 0
  br i1 %cmp176.i256, label %if.then178.i260, label %if.end186.i267

if.then178.i260:                                  ; preds = %for.body.i255
  %481 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer179.i257 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %481, i64 0, i32 3
  %482 = load ptr, ptr %fill_input_buffer179.i257, align 8
  %483 = load ptr, ptr %cinfo.addr.i80, align 8
  %call180.i258 = call i32 %482(ptr noundef %483) #5
  %tobool181.i259.not = icmp eq i32 %call180.i258, 0
  br i1 %tobool181.i259.not, label %if.then182.i261, label %if.end183.i263

if.then182.i261:                                  ; preds = %if.then178.i260
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end183.i263:                                   ; preds = %if.then178.i260
  %484 = load ptr, ptr %datasrc.i87, align 8
  %485 = load ptr, ptr %484, align 8
  store ptr %485, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer185.i262 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %484, i64 0, i32 1
  %486 = load i64, ptr %bytes_in_buffer185.i262, align 8
  store i64 %486, ptr %bytes_in_buffer.i89, align 8
  br label %if.end186.i267

if.end186.i267:                                   ; preds = %if.end183.i263, %for.body.i255
  %487 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec187.i264 = add i64 %487, -1
  store i64 %dec187.i264, ptr %bytes_in_buffer.i89, align 8
  %488 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr188.i265 = getelementptr inbounds i8, ptr %488, i64 1
  store ptr %incdec.ptr188.i265, ptr %next_input_byte.i88, align 8
  %489 = load i8, ptr %488, align 1
  %conv189.i266 = zext i8 %489 to i32
  %490 = load ptr, ptr %compptr.i86, align 8
  store i32 %conv189.i266, ptr %490, align 8
  %491 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp192.i268 = icmp eq i64 %491, 0
  br i1 %cmp192.i268, label %if.then194.i272, label %if.end202.i279

if.then194.i272:                                  ; preds = %if.end186.i267
  %492 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer195.i269 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %492, i64 0, i32 3
  %493 = load ptr, ptr %fill_input_buffer195.i269, align 8
  %494 = load ptr, ptr %cinfo.addr.i80, align 8
  %call196.i270 = call i32 %493(ptr noundef %494) #5
  %tobool197.i271.not = icmp eq i32 %call196.i270, 0
  br i1 %tobool197.i271.not, label %if.then198.i273, label %if.end199.i275

if.then198.i273:                                  ; preds = %if.then194.i272
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end199.i275:                                   ; preds = %if.then194.i272
  %495 = load ptr, ptr %datasrc.i87, align 8
  %496 = load ptr, ptr %495, align 8
  store ptr %496, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer201.i274 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %495, i64 0, i32 1
  %497 = load i64, ptr %bytes_in_buffer201.i274, align 8
  store i64 %497, ptr %bytes_in_buffer.i89, align 8
  br label %if.end202.i279

if.end202.i279:                                   ; preds = %if.end199.i275, %if.end186.i267
  %498 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec203.i276 = add i64 %498, -1
  store i64 %dec203.i276, ptr %bytes_in_buffer.i89, align 8
  %499 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr204.i277 = getelementptr inbounds i8, ptr %499, i64 1
  store ptr %incdec.ptr204.i277, ptr %next_input_byte.i88, align 8
  %500 = load i8, ptr %499, align 1
  %conv205.i278 = zext i8 %500 to i32
  %501 = lshr i32 %conv205.i278, 4
  %502 = load ptr, ptr %compptr.i86, align 8
  %h_samp_factor.i282 = getelementptr inbounds %struct.jpeg_component_info, ptr %502, i64 0, i32 2
  store i32 %501, ptr %h_samp_factor.i282, align 8
  %and207.i283 = and i32 %conv205.i278, 15
  %v_samp_factor.i284 = getelementptr inbounds %struct.jpeg_component_info, ptr %502, i64 0, i32 3
  store i32 %and207.i283, ptr %v_samp_factor.i284, align 4
  %503 = load i64, ptr %bytes_in_buffer.i89, align 8
  %cmp209.i285 = icmp eq i64 %503, 0
  br i1 %cmp209.i285, label %if.then211.i289, label %if.end219.i297

if.then211.i289:                                  ; preds = %if.end202.i279
  %504 = load ptr, ptr %datasrc.i87, align 8
  %fill_input_buffer212.i286 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %504, i64 0, i32 3
  %505 = load ptr, ptr %fill_input_buffer212.i286, align 8
  %506 = load ptr, ptr %cinfo.addr.i80, align 8
  %call213.i287 = call i32 %505(ptr noundef %506) #5
  %tobool214.i288.not = icmp eq i32 %call213.i287, 0
  br i1 %tobool214.i288.not, label %if.then215.i290, label %if.end216.i292

if.then215.i290:                                  ; preds = %if.then211.i289
  store i32 0, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

if.end216.i292:                                   ; preds = %if.then211.i289
  %507 = load ptr, ptr %datasrc.i87, align 8
  %508 = load ptr, ptr %507, align 8
  store ptr %508, ptr %next_input_byte.i88, align 8
  %bytes_in_buffer218.i291 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %507, i64 0, i32 1
  %509 = load i64, ptr %bytes_in_buffer218.i291, align 8
  store i64 %509, ptr %bytes_in_buffer.i89, align 8
  br label %if.end219.i297

if.end219.i297:                                   ; preds = %if.end216.i292, %if.end202.i279
  %510 = load i64, ptr %bytes_in_buffer.i89, align 8
  %dec220.i293 = add i64 %510, -1
  store i64 %dec220.i293, ptr %bytes_in_buffer.i89, align 8
  %511 = load ptr, ptr %next_input_byte.i88, align 8
  %incdec.ptr221.i294 = getelementptr inbounds i8, ptr %511, i64 1
  store ptr %incdec.ptr221.i294, ptr %next_input_byte.i88, align 8
  %512 = load i8, ptr %511, align 1
  %conv222.i295 = zext i8 %512 to i32
  %513 = load ptr, ptr %compptr.i86, align 8
  %quant_tbl_no.i296 = getelementptr inbounds %struct.jpeg_component_info, ptr %513, i64 0, i32 4
  store i32 %conv222.i295, ptr %quant_tbl_no.i296, align 8
  %514 = load ptr, ptr %cinfo.addr.i80, align 8
  %515 = load ptr, ptr %514, align 8
  %msg_parm227.i298 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %515, i64 0, i32 6
  store ptr %msg_parm227.i298, ptr %_mp225.i91, align 8
  %516 = load ptr, ptr %compptr.i86, align 8
  %517 = load i32, ptr %516, align 8
  store i32 %517, ptr %msg_parm227.i298, align 4
  %h_samp_factor231.i299 = getelementptr inbounds %struct.jpeg_component_info, ptr %516, i64 0, i32 2
  %518 = load i32, ptr %h_samp_factor231.i299, align 8
  %arrayidx232.i300 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %515, i64 0, i32 6, i32 0, i64 1
  store i32 %518, ptr %arrayidx232.i300, align 4
  %519 = load ptr, ptr %compptr.i86, align 8
  %v_samp_factor233.i301 = getelementptr inbounds %struct.jpeg_component_info, ptr %519, i64 0, i32 3
  %520 = load i32, ptr %v_samp_factor233.i301, align 4
  %521 = load ptr, ptr %_mp225.i91, align 8
  %arrayidx234.i302 = getelementptr inbounds i32, ptr %521, i64 2
  store i32 %520, ptr %arrayidx234.i302, align 4
  %quant_tbl_no235.i303 = getelementptr inbounds %struct.jpeg_component_info, ptr %519, i64 0, i32 4
  %522 = load i32, ptr %quant_tbl_no235.i303, align 8
  %arrayidx236.i304 = getelementptr inbounds i32, ptr %521, i64 3
  store i32 %522, ptr %arrayidx236.i304, align 4
  %523 = load ptr, ptr %cinfo.addr.i80, align 8
  %524 = load ptr, ptr %523, align 8
  %msg_code238.i305 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %524, i64 0, i32 5
  store i32 100, ptr %msg_code238.i305, align 8
  %525 = load ptr, ptr %523, align 8
  %emit_message240.i306 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %525, i64 0, i32 1
  %526 = load ptr, ptr %emit_message240.i306, align 8
  %527 = load ptr, ptr %cinfo.addr.i80, align 8
  call void %526(ptr noundef %527, i32 noundef 1) #5
  %528 = load i32, ptr %ci.i85, align 4
  %inc.i307 = add nsw i32 %528, 1
  store i32 %inc.i307, ptr %ci.i85, align 4
  %529 = load ptr, ptr %compptr.i86, align 8
  %incdec.ptr242.i308 = getelementptr inbounds %struct.jpeg_component_info, ptr %529, i64 1
  br label %for.cond.i253, !llvm.loop !11

for.end.i312:                                     ; preds = %for.cond.i253
  %530 = load ptr, ptr %cinfo.addr.i80, align 8
  %marker243.i309 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %530, i64 0, i32 78
  %531 = load ptr, ptr %marker243.i309, align 8
  %saw_SOF244.i310 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %531, i64 0, i32 6
  store i32 1, ptr %saw_SOF244.i310, align 4
  %532 = load ptr, ptr %next_input_byte.i88, align 8
  %533 = load ptr, ptr %datasrc.i87, align 8
  store ptr %532, ptr %533, align 8
  %534 = load i64, ptr %bytes_in_buffer.i89, align 8
  %bytes_in_buffer246.i311 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %533, i64 0, i32 1
  store i64 %534, ptr %bytes_in_buffer246.i311, align 8
  store i32 1, ptr %retval.i79, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit: ; preds = %if.then3.i101, %if.then14.i115, %if.then29.i128, %if.then45.i141, %if.then60.i155, %if.then78.i169, %if.then93.i183, %if.then111.i197, %if.then182.i261, %if.then198.i273, %if.then215.i290, %for.end.i312
  %535 = load i32, ptr %retval.i79, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i79)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i80)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_prog.addr.i81)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_arith.addr.i82)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i83)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i85)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i86)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i87)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i88)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i89)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp.i90)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp225.i91)
  %tobool22.not = icmp eq i32 %535, 0
  br i1 %tobool22.not, label %if.then23, label %sw.epilog

if.then23:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %if.end9
  %536 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i313)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i314)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_prog.addr.i315)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_arith.addr.i316)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i317)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i319)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i320)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i321)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i322)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i323)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp.i324)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp225.i325)
  store ptr %536, ptr %cinfo.addr.i314, align 8
  store i32 0, ptr %is_prog.addr.i315, align 4
  store i32 1, ptr %is_arith.addr.i316, align 4
  %src.i326 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %536, i64 0, i32 5
  %537 = load ptr, ptr %src.i326, align 8
  store ptr %537, ptr %datasrc.i321, align 8
  %538 = load ptr, ptr %537, align 8
  store ptr %538, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer2.i327 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %537, i64 0, i32 1
  %539 = load i64, ptr %bytes_in_buffer2.i327, align 8
  store i64 %539, ptr %bytes_in_buffer.i323, align 8
  %540 = load i32, ptr %is_prog.addr.i315, align 4
  %541 = load ptr, ptr %cinfo.addr.i314, align 8
  %progressive_mode.i328 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %541, i64 0, i32 44
  store i32 %540, ptr %progressive_mode.i328, align 8
  %542 = load i32, ptr %is_arith.addr.i316, align 4
  %arith_code.i329 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %541, i64 0, i32 45
  store i32 %542, ptr %arith_code.i329, align 4
  %543 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp.i330 = icmp eq i64 %543, 0
  br i1 %cmp.i330, label %if.then.i334, label %if.end6.i344

if.then.i334:                                     ; preds = %sw.bb25
  %544 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer.i331 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %544, i64 0, i32 3
  %545 = load ptr, ptr %fill_input_buffer.i331, align 8
  %546 = load ptr, ptr %cinfo.addr.i314, align 8
  %call.i332 = call i32 %545(ptr noundef %546) #5
  %tobool.i333.not = icmp eq i32 %call.i332, 0
  br i1 %tobool.i333.not, label %if.then3.i335, label %if.end.i337

if.then3.i335:                                    ; preds = %if.then.i334
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end.i337:                                      ; preds = %if.then.i334
  %547 = load ptr, ptr %datasrc.i321, align 8
  %548 = load ptr, ptr %547, align 8
  store ptr %548, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer5.i336 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %547, i64 0, i32 1
  %549 = load i64, ptr %bytes_in_buffer5.i336, align 8
  store i64 %549, ptr %bytes_in_buffer.i323, align 8
  br label %if.end6.i344

if.end6.i344:                                     ; preds = %if.end.i337, %sw.bb25
  %550 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec.i338 = add i64 %550, -1
  store i64 %dec.i338, ptr %bytes_in_buffer.i323, align 8
  %551 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr.i339 = getelementptr inbounds i8, ptr %551, i64 1
  store ptr %incdec.ptr.i339, ptr %next_input_byte.i322, align 8
  %552 = load i8, ptr %551, align 1
  %conv.i340 = zext i8 %552 to i64
  %shl.i341 = shl nuw nsw i64 %conv.i340, 8
  store i64 %shl.i341, ptr %length.i317, align 8
  %553 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp8.i343 = icmp eq i64 %553, 0
  br i1 %cmp8.i343, label %if.then10.i348, label %if.end18.i356

if.then10.i348:                                   ; preds = %if.end6.i344
  %554 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer11.i345 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %554, i64 0, i32 3
  %555 = load ptr, ptr %fill_input_buffer11.i345, align 8
  %556 = load ptr, ptr %cinfo.addr.i314, align 8
  %call12.i346 = call i32 %555(ptr noundef %556) #5
  %tobool13.i347.not = icmp eq i32 %call12.i346, 0
  br i1 %tobool13.i347.not, label %if.then14.i349, label %if.end15.i351

if.then14.i349:                                   ; preds = %if.then10.i348
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end15.i351:                                    ; preds = %if.then10.i348
  %557 = load ptr, ptr %datasrc.i321, align 8
  %558 = load ptr, ptr %557, align 8
  store ptr %558, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer17.i350 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %557, i64 0, i32 1
  %559 = load i64, ptr %bytes_in_buffer17.i350, align 8
  store i64 %559, ptr %bytes_in_buffer.i323, align 8
  br label %if.end18.i356

if.end18.i356:                                    ; preds = %if.end15.i351, %if.end6.i344
  %560 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec19.i352 = add i64 %560, -1
  store i64 %dec19.i352, ptr %bytes_in_buffer.i323, align 8
  %561 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr20.i353 = getelementptr inbounds i8, ptr %561, i64 1
  store ptr %incdec.ptr20.i353, ptr %next_input_byte.i322, align 8
  %562 = load i8, ptr %561, align 1
  %conv21.i354 = zext i8 %562 to i64
  %563 = load i64, ptr %length.i317, align 8
  %add.i355 = add nsw i64 %563, %conv21.i354
  store i64 %add.i355, ptr %length.i317, align 8
  %564 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp23.i357 = icmp eq i64 %564, 0
  br i1 %cmp23.i357, label %if.then25.i361, label %if.end33.i369

if.then25.i361:                                   ; preds = %if.end18.i356
  %565 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer26.i358 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %565, i64 0, i32 3
  %566 = load ptr, ptr %fill_input_buffer26.i358, align 8
  %567 = load ptr, ptr %cinfo.addr.i314, align 8
  %call27.i359 = call i32 %566(ptr noundef %567) #5
  %tobool28.i360.not = icmp eq i32 %call27.i359, 0
  br i1 %tobool28.i360.not, label %if.then29.i362, label %if.end30.i364

if.then29.i362:                                   ; preds = %if.then25.i361
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end30.i364:                                    ; preds = %if.then25.i361
  %568 = load ptr, ptr %datasrc.i321, align 8
  %569 = load ptr, ptr %568, align 8
  store ptr %569, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer32.i363 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %568, i64 0, i32 1
  %570 = load i64, ptr %bytes_in_buffer32.i363, align 8
  store i64 %570, ptr %bytes_in_buffer.i323, align 8
  br label %if.end33.i369

if.end33.i369:                                    ; preds = %if.end30.i364, %if.end18.i356
  %571 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec34.i365 = add i64 %571, -1
  store i64 %dec34.i365, ptr %bytes_in_buffer.i323, align 8
  %572 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr35.i366 = getelementptr inbounds i8, ptr %572, i64 1
  store ptr %incdec.ptr35.i366, ptr %next_input_byte.i322, align 8
  %573 = load i8, ptr %572, align 1
  %conv36.i367 = zext i8 %573 to i32
  %574 = load ptr, ptr %cinfo.addr.i314, align 8
  %data_precision.i368 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %574, i64 0, i32 42
  store i32 %conv36.i367, ptr %data_precision.i368, align 8
  %575 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp39.i370 = icmp eq i64 %575, 0
  br i1 %cmp39.i370, label %if.then41.i374, label %if.end49.i384

if.then41.i374:                                   ; preds = %if.end33.i369
  %576 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer42.i371 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %576, i64 0, i32 3
  %577 = load ptr, ptr %fill_input_buffer42.i371, align 8
  %578 = load ptr, ptr %cinfo.addr.i314, align 8
  %call43.i372 = call i32 %577(ptr noundef %578) #5
  %tobool44.i373.not = icmp eq i32 %call43.i372, 0
  br i1 %tobool44.i373.not, label %if.then45.i375, label %if.end46.i377

if.then45.i375:                                   ; preds = %if.then41.i374
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end46.i377:                                    ; preds = %if.then41.i374
  %579 = load ptr, ptr %datasrc.i321, align 8
  %580 = load ptr, ptr %579, align 8
  store ptr %580, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer48.i376 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %579, i64 0, i32 1
  %581 = load i64, ptr %bytes_in_buffer48.i376, align 8
  store i64 %581, ptr %bytes_in_buffer.i323, align 8
  br label %if.end49.i384

if.end49.i384:                                    ; preds = %if.end46.i377, %if.end33.i369
  %582 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec50.i378 = add i64 %582, -1
  store i64 %dec50.i378, ptr %bytes_in_buffer.i323, align 8
  %583 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr51.i379 = getelementptr inbounds i8, ptr %583, i64 1
  store ptr %incdec.ptr51.i379, ptr %next_input_byte.i322, align 8
  %584 = load i8, ptr %583, align 1
  %conv52.i380 = zext i8 %584 to i32
  %shl53.i381 = shl nuw nsw i32 %conv52.i380, 8
  %585 = load ptr, ptr %cinfo.addr.i314, align 8
  %image_height.i382 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %585, i64 0, i32 7
  store i32 %shl53.i381, ptr %image_height.i382, align 4
  %586 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp54.i383 = icmp eq i64 %586, 0
  br i1 %cmp54.i383, label %if.then56.i388, label %if.end64.i397

if.then56.i388:                                   ; preds = %if.end49.i384
  %587 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer57.i385 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %587, i64 0, i32 3
  %588 = load ptr, ptr %fill_input_buffer57.i385, align 8
  %589 = load ptr, ptr %cinfo.addr.i314, align 8
  %call58.i386 = call i32 %588(ptr noundef %589) #5
  %tobool59.i387.not = icmp eq i32 %call58.i386, 0
  br i1 %tobool59.i387.not, label %if.then60.i389, label %if.end61.i391

if.then60.i389:                                   ; preds = %if.then56.i388
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end61.i391:                                    ; preds = %if.then56.i388
  %590 = load ptr, ptr %datasrc.i321, align 8
  %591 = load ptr, ptr %590, align 8
  store ptr %591, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer63.i390 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %590, i64 0, i32 1
  %592 = load i64, ptr %bytes_in_buffer63.i390, align 8
  store i64 %592, ptr %bytes_in_buffer.i323, align 8
  br label %if.end64.i397

if.end64.i397:                                    ; preds = %if.end61.i391, %if.end49.i384
  %593 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec65.i392 = add i64 %593, -1
  store i64 %dec65.i392, ptr %bytes_in_buffer.i323, align 8
  %594 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr66.i393 = getelementptr inbounds i8, ptr %594, i64 1
  store ptr %incdec.ptr66.i393, ptr %next_input_byte.i322, align 8
  %595 = load i8, ptr %594, align 1
  %conv67.i394 = zext i8 %595 to i32
  %596 = load ptr, ptr %cinfo.addr.i314, align 8
  %image_height68.i395 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %596, i64 0, i32 7
  %597 = load i32, ptr %image_height68.i395, align 4
  %add69.i396 = add i32 %597, %conv67.i394
  store i32 %add69.i396, ptr %image_height68.i395, align 4
  %598 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp72.i398 = icmp eq i64 %598, 0
  br i1 %cmp72.i398, label %if.then74.i402, label %if.end82.i412

if.then74.i402:                                   ; preds = %if.end64.i397
  %599 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer75.i399 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %599, i64 0, i32 3
  %600 = load ptr, ptr %fill_input_buffer75.i399, align 8
  %601 = load ptr, ptr %cinfo.addr.i314, align 8
  %call76.i400 = call i32 %600(ptr noundef %601) #5
  %tobool77.i401.not = icmp eq i32 %call76.i400, 0
  br i1 %tobool77.i401.not, label %if.then78.i403, label %if.end79.i405

if.then78.i403:                                   ; preds = %if.then74.i402
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end79.i405:                                    ; preds = %if.then74.i402
  %602 = load ptr, ptr %datasrc.i321, align 8
  %603 = load ptr, ptr %602, align 8
  store ptr %603, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer81.i404 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %602, i64 0, i32 1
  %604 = load i64, ptr %bytes_in_buffer81.i404, align 8
  store i64 %604, ptr %bytes_in_buffer.i323, align 8
  br label %if.end82.i412

if.end82.i412:                                    ; preds = %if.end79.i405, %if.end64.i397
  %605 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec83.i406 = add i64 %605, -1
  store i64 %dec83.i406, ptr %bytes_in_buffer.i323, align 8
  %606 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr84.i407 = getelementptr inbounds i8, ptr %606, i64 1
  store ptr %incdec.ptr84.i407, ptr %next_input_byte.i322, align 8
  %607 = load i8, ptr %606, align 1
  %conv85.i408 = zext i8 %607 to i32
  %shl86.i409 = shl nuw nsw i32 %conv85.i408, 8
  %608 = load ptr, ptr %cinfo.addr.i314, align 8
  %image_width.i410 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %608, i64 0, i32 6
  store i32 %shl86.i409, ptr %image_width.i410, align 8
  %609 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp87.i411 = icmp eq i64 %609, 0
  br i1 %cmp87.i411, label %if.then89.i416, label %if.end97.i425

if.then89.i416:                                   ; preds = %if.end82.i412
  %610 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer90.i413 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %610, i64 0, i32 3
  %611 = load ptr, ptr %fill_input_buffer90.i413, align 8
  %612 = load ptr, ptr %cinfo.addr.i314, align 8
  %call91.i414 = call i32 %611(ptr noundef %612) #5
  %tobool92.i415.not = icmp eq i32 %call91.i414, 0
  br i1 %tobool92.i415.not, label %if.then93.i417, label %if.end94.i419

if.then93.i417:                                   ; preds = %if.then89.i416
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end94.i419:                                    ; preds = %if.then89.i416
  %613 = load ptr, ptr %datasrc.i321, align 8
  %614 = load ptr, ptr %613, align 8
  store ptr %614, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer96.i418 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %613, i64 0, i32 1
  %615 = load i64, ptr %bytes_in_buffer96.i418, align 8
  store i64 %615, ptr %bytes_in_buffer.i323, align 8
  br label %if.end97.i425

if.end97.i425:                                    ; preds = %if.end94.i419, %if.end82.i412
  %616 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec98.i420 = add i64 %616, -1
  store i64 %dec98.i420, ptr %bytes_in_buffer.i323, align 8
  %617 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr99.i421 = getelementptr inbounds i8, ptr %617, i64 1
  store ptr %incdec.ptr99.i421, ptr %next_input_byte.i322, align 8
  %618 = load i8, ptr %617, align 1
  %conv100.i422 = zext i8 %618 to i32
  %619 = load ptr, ptr %cinfo.addr.i314, align 8
  %image_width101.i423 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %619, i64 0, i32 6
  %620 = load i32, ptr %image_width101.i423, align 8
  %add102.i424 = add i32 %620, %conv100.i422
  store i32 %add102.i424, ptr %image_width101.i423, align 8
  %621 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp105.i426 = icmp eq i64 %621, 0
  br i1 %cmp105.i426, label %if.then107.i430, label %if.end115.i438

if.then107.i430:                                  ; preds = %if.end97.i425
  %622 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer108.i427 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %622, i64 0, i32 3
  %623 = load ptr, ptr %fill_input_buffer108.i427, align 8
  %624 = load ptr, ptr %cinfo.addr.i314, align 8
  %call109.i428 = call i32 %623(ptr noundef %624) #5
  %tobool110.i429.not = icmp eq i32 %call109.i428, 0
  br i1 %tobool110.i429.not, label %if.then111.i431, label %if.end112.i433

if.then111.i431:                                  ; preds = %if.then107.i430
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end112.i433:                                   ; preds = %if.then107.i430
  %625 = load ptr, ptr %datasrc.i321, align 8
  %626 = load ptr, ptr %625, align 8
  store ptr %626, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer114.i432 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %625, i64 0, i32 1
  %627 = load i64, ptr %bytes_in_buffer114.i432, align 8
  store i64 %627, ptr %bytes_in_buffer.i323, align 8
  br label %if.end115.i438

if.end115.i438:                                   ; preds = %if.end112.i433, %if.end97.i425
  %628 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec116.i434 = add i64 %628, -1
  store i64 %dec116.i434, ptr %bytes_in_buffer.i323, align 8
  %629 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr117.i435 = getelementptr inbounds i8, ptr %629, i64 1
  store ptr %incdec.ptr117.i435, ptr %next_input_byte.i322, align 8
  %630 = load i8, ptr %629, align 1
  %conv118.i436 = zext i8 %630 to i32
  %631 = load ptr, ptr %cinfo.addr.i314, align 8
  %num_components.i437 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %631, i64 0, i32 8
  store i32 %conv118.i436, ptr %num_components.i437, align 8
  %632 = load i64, ptr %length.i317, align 8
  %sub.i439 = add nsw i64 %632, -8
  store i64 %sub.i439, ptr %length.i317, align 8
  %633 = load ptr, ptr %631, align 8
  %msg_parm.i440 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %633, i64 0, i32 6
  store ptr %msg_parm.i440, ptr %_mp.i324, align 8
  %634 = load ptr, ptr %cinfo.addr.i314, align 8
  %unread_marker.i441 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %634, i64 0, i32 72
  %635 = load i32, ptr %unread_marker.i441, align 4
  store i32 %635, ptr %msg_parm.i440, align 4
  %image_width121.i442 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %634, i64 0, i32 6
  %636 = load i32, ptr %image_width121.i442, align 8
  %637 = load ptr, ptr %_mp.i324, align 8
  %arrayidx122.i443 = getelementptr inbounds i32, ptr %637, i64 1
  store i32 %636, ptr %arrayidx122.i443, align 4
  %638 = load ptr, ptr %cinfo.addr.i314, align 8
  %image_height123.i444 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %638, i64 0, i32 7
  %639 = load i32, ptr %image_height123.i444, align 4
  %arrayidx124.i445 = getelementptr inbounds i32, ptr %637, i64 2
  store i32 %639, ptr %arrayidx124.i445, align 4
  %num_components125.i446 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %638, i64 0, i32 8
  %640 = load i32, ptr %num_components125.i446, align 8
  %641 = load ptr, ptr %_mp.i324, align 8
  %arrayidx126.i447 = getelementptr inbounds i32, ptr %641, i64 3
  store i32 %640, ptr %arrayidx126.i447, align 4
  %642 = load ptr, ptr %cinfo.addr.i314, align 8
  %643 = load ptr, ptr %642, align 8
  %msg_code.i448 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %643, i64 0, i32 5
  store i32 99, ptr %msg_code.i448, align 8
  %644 = load ptr, ptr %642, align 8
  %emit_message.i449 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %644, i64 0, i32 1
  %645 = load ptr, ptr %emit_message.i449, align 8
  %646 = load ptr, ptr %cinfo.addr.i314, align 8
  call void %645(ptr noundef %646, i32 noundef 1) #5
  %marker.i450 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %646, i64 0, i32 78
  %647 = load ptr, ptr %marker.i450, align 8
  %saw_SOF.i451 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %647, i64 0, i32 6
  %648 = load i32, ptr %saw_SOF.i451, align 4
  %tobool130.i452.not = icmp eq i32 %648, 0
  br i1 %tobool130.i452.not, label %if.end135.i457, label %if.then131.i454

if.then131.i454:                                  ; preds = %if.end115.i438
  %649 = load ptr, ptr %cinfo.addr.i314, align 8
  %650 = load ptr, ptr %649, align 8
  %msg_code133.i453 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %650, i64 0, i32 5
  store i32 57, ptr %msg_code133.i453, align 8
  %651 = load ptr, ptr %649, align 8
  %652 = load ptr, ptr %651, align 8
  call void %652(ptr noundef nonnull %649) #5
  br label %if.end135.i457

if.end135.i457:                                   ; preds = %if.then131.i454, %if.end115.i438
  %653 = load ptr, ptr %cinfo.addr.i314, align 8
  %image_height136.i455 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %653, i64 0, i32 7
  %654 = load i32, ptr %image_height136.i455, align 4
  %cmp137.i456 = icmp eq i32 %654, 0
  br i1 %cmp137.i456, label %if.then146.i465, label %lor.lhs.false.i460

lor.lhs.false.i460:                               ; preds = %if.end135.i457
  %655 = load ptr, ptr %cinfo.addr.i314, align 8
  %image_width139.i458 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %655, i64 0, i32 6
  %656 = load i32, ptr %image_width139.i458, align 8
  %cmp140.i459 = icmp eq i32 %656, 0
  br i1 %cmp140.i459, label %if.then146.i465, label %lor.lhs.false142.i463

lor.lhs.false142.i463:                            ; preds = %lor.lhs.false.i460
  %657 = load ptr, ptr %cinfo.addr.i314, align 8
  %num_components143.i461 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %657, i64 0, i32 8
  %658 = load i32, ptr %num_components143.i461, align 8
  %cmp144.i462 = icmp slt i32 %658, 1
  br i1 %cmp144.i462, label %if.then146.i465, label %if.end151.i470

if.then146.i465:                                  ; preds = %lor.lhs.false142.i463, %lor.lhs.false.i460, %if.end135.i457
  %659 = load ptr, ptr %cinfo.addr.i314, align 8
  %660 = load ptr, ptr %659, align 8
  %msg_code148.i464 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %660, i64 0, i32 5
  store i32 31, ptr %msg_code148.i464, align 8
  %661 = load ptr, ptr %659, align 8
  %662 = load ptr, ptr %661, align 8
  call void %662(ptr noundef nonnull %659) #5
  br label %if.end151.i470

if.end151.i470:                                   ; preds = %if.then146.i465, %lor.lhs.false142.i463
  %663 = load i64, ptr %length.i317, align 8
  %664 = load ptr, ptr %cinfo.addr.i314, align 8
  %num_components152.i466 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %664, i64 0, i32 8
  %665 = load i32, ptr %num_components152.i466, align 8
  %mul.i467 = mul nsw i32 %665, 3
  %conv153.i468 = sext i32 %mul.i467 to i64
  %cmp154.i469.not = icmp eq i64 %663, %conv153.i468
  br i1 %cmp154.i469.not, label %if.end161.i475, label %if.then156.i472

if.then156.i472:                                  ; preds = %if.end151.i470
  %666 = load ptr, ptr %cinfo.addr.i314, align 8
  %667 = load ptr, ptr %666, align 8
  %msg_code158.i471 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %667, i64 0, i32 5
  store i32 9, ptr %msg_code158.i471, align 8
  %668 = load ptr, ptr %666, align 8
  %669 = load ptr, ptr %668, align 8
  call void %669(ptr noundef nonnull %666) #5
  br label %if.end161.i475

if.end161.i475:                                   ; preds = %if.then156.i472, %if.end151.i470
  %670 = load ptr, ptr %cinfo.addr.i314, align 8
  %comp_info.i473 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %670, i64 0, i32 43
  %671 = load ptr, ptr %comp_info.i473, align 8
  %cmp162.i474 = icmp eq ptr %671, null
  br i1 %cmp162.i474, label %if.then164.i482, label %if.end170.i484

if.then164.i482:                                  ; preds = %if.end161.i475
  %672 = load ptr, ptr %cinfo.addr.i314, align 8
  %mem.i476 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %672, i64 0, i32 1
  %673 = load ptr, ptr %mem.i476, align 8
  %674 = load ptr, ptr %673, align 8
  %num_components165.i477 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %672, i64 0, i32 8
  %675 = load i32, ptr %num_components165.i477, align 8
  %conv166.i478 = sext i32 %675 to i64
  %mul167.i479 = mul nsw i64 %conv166.i478, 96
  %call168.i480 = call ptr %674(ptr noundef %672, i32 noundef 1, i64 noundef %mul167.i479) #5
  %676 = load ptr, ptr %cinfo.addr.i314, align 8
  %comp_info169.i481 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %676, i64 0, i32 43
  store ptr %call168.i480, ptr %comp_info169.i481, align 8
  br label %if.end170.i484

if.end170.i484:                                   ; preds = %if.then164.i482, %if.end161.i475
  store i32 0, ptr %ci.i319, align 4
  %677 = load ptr, ptr %cinfo.addr.i314, align 8
  %comp_info171.i483 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %677, i64 0, i32 43
  %678 = load ptr, ptr %comp_info171.i483, align 8
  br label %for.cond.i487

for.cond.i487:                                    ; preds = %if.end219.i531, %if.end170.i484
  %storemerge1170 = phi ptr [ %678, %if.end170.i484 ], [ %incdec.ptr242.i542, %if.end219.i531 ]
  store ptr %storemerge1170, ptr %compptr.i320, align 8
  %679 = load i32, ptr %ci.i319, align 4
  %680 = load ptr, ptr %cinfo.addr.i314, align 8
  %num_components172.i485 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %680, i64 0, i32 8
  %681 = load i32, ptr %num_components172.i485, align 8
  %cmp173.i486 = icmp slt i32 %679, %681
  br i1 %cmp173.i486, label %for.body.i489, label %for.end.i546

for.body.i489:                                    ; preds = %for.cond.i487
  %682 = load i32, ptr %ci.i319, align 4
  %683 = load ptr, ptr %compptr.i320, align 8
  %component_index.i488 = getelementptr inbounds %struct.jpeg_component_info, ptr %683, i64 0, i32 1
  store i32 %682, ptr %component_index.i488, align 4
  %684 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp176.i490 = icmp eq i64 %684, 0
  br i1 %cmp176.i490, label %if.then178.i494, label %if.end186.i501

if.then178.i494:                                  ; preds = %for.body.i489
  %685 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer179.i491 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %685, i64 0, i32 3
  %686 = load ptr, ptr %fill_input_buffer179.i491, align 8
  %687 = load ptr, ptr %cinfo.addr.i314, align 8
  %call180.i492 = call i32 %686(ptr noundef %687) #5
  %tobool181.i493.not = icmp eq i32 %call180.i492, 0
  br i1 %tobool181.i493.not, label %if.then182.i495, label %if.end183.i497

if.then182.i495:                                  ; preds = %if.then178.i494
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end183.i497:                                   ; preds = %if.then178.i494
  %688 = load ptr, ptr %datasrc.i321, align 8
  %689 = load ptr, ptr %688, align 8
  store ptr %689, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer185.i496 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %688, i64 0, i32 1
  %690 = load i64, ptr %bytes_in_buffer185.i496, align 8
  store i64 %690, ptr %bytes_in_buffer.i323, align 8
  br label %if.end186.i501

if.end186.i501:                                   ; preds = %if.end183.i497, %for.body.i489
  %691 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec187.i498 = add i64 %691, -1
  store i64 %dec187.i498, ptr %bytes_in_buffer.i323, align 8
  %692 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr188.i499 = getelementptr inbounds i8, ptr %692, i64 1
  store ptr %incdec.ptr188.i499, ptr %next_input_byte.i322, align 8
  %693 = load i8, ptr %692, align 1
  %conv189.i500 = zext i8 %693 to i32
  %694 = load ptr, ptr %compptr.i320, align 8
  store i32 %conv189.i500, ptr %694, align 8
  %695 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp192.i502 = icmp eq i64 %695, 0
  br i1 %cmp192.i502, label %if.then194.i506, label %if.end202.i513

if.then194.i506:                                  ; preds = %if.end186.i501
  %696 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer195.i503 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %696, i64 0, i32 3
  %697 = load ptr, ptr %fill_input_buffer195.i503, align 8
  %698 = load ptr, ptr %cinfo.addr.i314, align 8
  %call196.i504 = call i32 %697(ptr noundef %698) #5
  %tobool197.i505.not = icmp eq i32 %call196.i504, 0
  br i1 %tobool197.i505.not, label %if.then198.i507, label %if.end199.i509

if.then198.i507:                                  ; preds = %if.then194.i506
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end199.i509:                                   ; preds = %if.then194.i506
  %699 = load ptr, ptr %datasrc.i321, align 8
  %700 = load ptr, ptr %699, align 8
  store ptr %700, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer201.i508 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %699, i64 0, i32 1
  %701 = load i64, ptr %bytes_in_buffer201.i508, align 8
  store i64 %701, ptr %bytes_in_buffer.i323, align 8
  br label %if.end202.i513

if.end202.i513:                                   ; preds = %if.end199.i509, %if.end186.i501
  %702 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec203.i510 = add i64 %702, -1
  store i64 %dec203.i510, ptr %bytes_in_buffer.i323, align 8
  %703 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr204.i511 = getelementptr inbounds i8, ptr %703, i64 1
  store ptr %incdec.ptr204.i511, ptr %next_input_byte.i322, align 8
  %704 = load i8, ptr %703, align 1
  %conv205.i512 = zext i8 %704 to i32
  %705 = lshr i32 %conv205.i512, 4
  %706 = load ptr, ptr %compptr.i320, align 8
  %h_samp_factor.i516 = getelementptr inbounds %struct.jpeg_component_info, ptr %706, i64 0, i32 2
  store i32 %705, ptr %h_samp_factor.i516, align 8
  %and207.i517 = and i32 %conv205.i512, 15
  %v_samp_factor.i518 = getelementptr inbounds %struct.jpeg_component_info, ptr %706, i64 0, i32 3
  store i32 %and207.i517, ptr %v_samp_factor.i518, align 4
  %707 = load i64, ptr %bytes_in_buffer.i323, align 8
  %cmp209.i519 = icmp eq i64 %707, 0
  br i1 %cmp209.i519, label %if.then211.i523, label %if.end219.i531

if.then211.i523:                                  ; preds = %if.end202.i513
  %708 = load ptr, ptr %datasrc.i321, align 8
  %fill_input_buffer212.i520 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %708, i64 0, i32 3
  %709 = load ptr, ptr %fill_input_buffer212.i520, align 8
  %710 = load ptr, ptr %cinfo.addr.i314, align 8
  %call213.i521 = call i32 %709(ptr noundef %710) #5
  %tobool214.i522.not = icmp eq i32 %call213.i521, 0
  br i1 %tobool214.i522.not, label %if.then215.i524, label %if.end216.i526

if.then215.i524:                                  ; preds = %if.then211.i523
  store i32 0, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

if.end216.i526:                                   ; preds = %if.then211.i523
  %711 = load ptr, ptr %datasrc.i321, align 8
  %712 = load ptr, ptr %711, align 8
  store ptr %712, ptr %next_input_byte.i322, align 8
  %bytes_in_buffer218.i525 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %711, i64 0, i32 1
  %713 = load i64, ptr %bytes_in_buffer218.i525, align 8
  store i64 %713, ptr %bytes_in_buffer.i323, align 8
  br label %if.end219.i531

if.end219.i531:                                   ; preds = %if.end216.i526, %if.end202.i513
  %714 = load i64, ptr %bytes_in_buffer.i323, align 8
  %dec220.i527 = add i64 %714, -1
  store i64 %dec220.i527, ptr %bytes_in_buffer.i323, align 8
  %715 = load ptr, ptr %next_input_byte.i322, align 8
  %incdec.ptr221.i528 = getelementptr inbounds i8, ptr %715, i64 1
  store ptr %incdec.ptr221.i528, ptr %next_input_byte.i322, align 8
  %716 = load i8, ptr %715, align 1
  %conv222.i529 = zext i8 %716 to i32
  %717 = load ptr, ptr %compptr.i320, align 8
  %quant_tbl_no.i530 = getelementptr inbounds %struct.jpeg_component_info, ptr %717, i64 0, i32 4
  store i32 %conv222.i529, ptr %quant_tbl_no.i530, align 8
  %718 = load ptr, ptr %cinfo.addr.i314, align 8
  %719 = load ptr, ptr %718, align 8
  %msg_parm227.i532 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %719, i64 0, i32 6
  store ptr %msg_parm227.i532, ptr %_mp225.i325, align 8
  %720 = load ptr, ptr %compptr.i320, align 8
  %721 = load i32, ptr %720, align 8
  store i32 %721, ptr %msg_parm227.i532, align 4
  %h_samp_factor231.i533 = getelementptr inbounds %struct.jpeg_component_info, ptr %720, i64 0, i32 2
  %722 = load i32, ptr %h_samp_factor231.i533, align 8
  %arrayidx232.i534 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %719, i64 0, i32 6, i32 0, i64 1
  store i32 %722, ptr %arrayidx232.i534, align 4
  %723 = load ptr, ptr %compptr.i320, align 8
  %v_samp_factor233.i535 = getelementptr inbounds %struct.jpeg_component_info, ptr %723, i64 0, i32 3
  %724 = load i32, ptr %v_samp_factor233.i535, align 4
  %725 = load ptr, ptr %_mp225.i325, align 8
  %arrayidx234.i536 = getelementptr inbounds i32, ptr %725, i64 2
  store i32 %724, ptr %arrayidx234.i536, align 4
  %quant_tbl_no235.i537 = getelementptr inbounds %struct.jpeg_component_info, ptr %723, i64 0, i32 4
  %726 = load i32, ptr %quant_tbl_no235.i537, align 8
  %arrayidx236.i538 = getelementptr inbounds i32, ptr %725, i64 3
  store i32 %726, ptr %arrayidx236.i538, align 4
  %727 = load ptr, ptr %cinfo.addr.i314, align 8
  %728 = load ptr, ptr %727, align 8
  %msg_code238.i539 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %728, i64 0, i32 5
  store i32 100, ptr %msg_code238.i539, align 8
  %729 = load ptr, ptr %727, align 8
  %emit_message240.i540 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %729, i64 0, i32 1
  %730 = load ptr, ptr %emit_message240.i540, align 8
  %731 = load ptr, ptr %cinfo.addr.i314, align 8
  call void %730(ptr noundef %731, i32 noundef 1) #5
  %732 = load i32, ptr %ci.i319, align 4
  %inc.i541 = add nsw i32 %732, 1
  store i32 %inc.i541, ptr %ci.i319, align 4
  %733 = load ptr, ptr %compptr.i320, align 8
  %incdec.ptr242.i542 = getelementptr inbounds %struct.jpeg_component_info, ptr %733, i64 1
  br label %for.cond.i487, !llvm.loop !11

for.end.i546:                                     ; preds = %for.cond.i487
  %734 = load ptr, ptr %cinfo.addr.i314, align 8
  %marker243.i543 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %734, i64 0, i32 78
  %735 = load ptr, ptr %marker243.i543, align 8
  %saw_SOF244.i544 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %735, i64 0, i32 6
  store i32 1, ptr %saw_SOF244.i544, align 4
  %736 = load ptr, ptr %next_input_byte.i322, align 8
  %737 = load ptr, ptr %datasrc.i321, align 8
  store ptr %736, ptr %737, align 8
  %738 = load i64, ptr %bytes_in_buffer.i323, align 8
  %bytes_in_buffer246.i545 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %737, i64 0, i32 1
  store i64 %738, ptr %bytes_in_buffer246.i545, align 8
  store i32 1, ptr %retval.i313, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit: ; preds = %if.then3.i335, %if.then14.i349, %if.then29.i362, %if.then45.i375, %if.then60.i389, %if.then78.i403, %if.then93.i417, %if.then111.i431, %if.then182.i495, %if.then198.i507, %if.then215.i524, %for.end.i546
  %739 = load i32, ptr %retval.i313, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i313)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i314)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_prog.addr.i315)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_arith.addr.i316)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i317)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i319)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i320)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i321)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i322)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i323)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp.i324)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp225.i325)
  %tobool27.not = icmp eq i32 %739, 0
  br i1 %tobool27.not, label %if.then28, label %sw.epilog

if.then28:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb30:                                          ; preds = %if.end9
  %740 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i547)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i548)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_prog.addr.i549)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_arith.addr.i550)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i551)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i553)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i554)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i555)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i556)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i557)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp.i558)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp225.i559)
  store ptr %740, ptr %cinfo.addr.i548, align 8
  store i32 1, ptr %is_prog.addr.i549, align 4
  store i32 1, ptr %is_arith.addr.i550, align 4
  %src.i560 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %740, i64 0, i32 5
  %741 = load ptr, ptr %src.i560, align 8
  store ptr %741, ptr %datasrc.i555, align 8
  %742 = load ptr, ptr %741, align 8
  store ptr %742, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer2.i561 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %741, i64 0, i32 1
  %743 = load i64, ptr %bytes_in_buffer2.i561, align 8
  store i64 %743, ptr %bytes_in_buffer.i557, align 8
  %744 = load i32, ptr %is_prog.addr.i549, align 4
  %745 = load ptr, ptr %cinfo.addr.i548, align 8
  %progressive_mode.i562 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %745, i64 0, i32 44
  store i32 %744, ptr %progressive_mode.i562, align 8
  %746 = load i32, ptr %is_arith.addr.i550, align 4
  %arith_code.i563 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %745, i64 0, i32 45
  store i32 %746, ptr %arith_code.i563, align 4
  %747 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp.i564 = icmp eq i64 %747, 0
  br i1 %cmp.i564, label %if.then.i568, label %if.end6.i578

if.then.i568:                                     ; preds = %sw.bb30
  %748 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer.i565 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %748, i64 0, i32 3
  %749 = load ptr, ptr %fill_input_buffer.i565, align 8
  %750 = load ptr, ptr %cinfo.addr.i548, align 8
  %call.i566 = call i32 %749(ptr noundef %750) #5
  %tobool.i567.not = icmp eq i32 %call.i566, 0
  br i1 %tobool.i567.not, label %if.then3.i569, label %if.end.i571

if.then3.i569:                                    ; preds = %if.then.i568
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end.i571:                                      ; preds = %if.then.i568
  %751 = load ptr, ptr %datasrc.i555, align 8
  %752 = load ptr, ptr %751, align 8
  store ptr %752, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer5.i570 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %751, i64 0, i32 1
  %753 = load i64, ptr %bytes_in_buffer5.i570, align 8
  store i64 %753, ptr %bytes_in_buffer.i557, align 8
  br label %if.end6.i578

if.end6.i578:                                     ; preds = %if.end.i571, %sw.bb30
  %754 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec.i572 = add i64 %754, -1
  store i64 %dec.i572, ptr %bytes_in_buffer.i557, align 8
  %755 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr.i573 = getelementptr inbounds i8, ptr %755, i64 1
  store ptr %incdec.ptr.i573, ptr %next_input_byte.i556, align 8
  %756 = load i8, ptr %755, align 1
  %conv.i574 = zext i8 %756 to i64
  %shl.i575 = shl nuw nsw i64 %conv.i574, 8
  store i64 %shl.i575, ptr %length.i551, align 8
  %757 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp8.i577 = icmp eq i64 %757, 0
  br i1 %cmp8.i577, label %if.then10.i582, label %if.end18.i590

if.then10.i582:                                   ; preds = %if.end6.i578
  %758 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer11.i579 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %758, i64 0, i32 3
  %759 = load ptr, ptr %fill_input_buffer11.i579, align 8
  %760 = load ptr, ptr %cinfo.addr.i548, align 8
  %call12.i580 = call i32 %759(ptr noundef %760) #5
  %tobool13.i581.not = icmp eq i32 %call12.i580, 0
  br i1 %tobool13.i581.not, label %if.then14.i583, label %if.end15.i585

if.then14.i583:                                   ; preds = %if.then10.i582
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end15.i585:                                    ; preds = %if.then10.i582
  %761 = load ptr, ptr %datasrc.i555, align 8
  %762 = load ptr, ptr %761, align 8
  store ptr %762, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer17.i584 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %761, i64 0, i32 1
  %763 = load i64, ptr %bytes_in_buffer17.i584, align 8
  store i64 %763, ptr %bytes_in_buffer.i557, align 8
  br label %if.end18.i590

if.end18.i590:                                    ; preds = %if.end15.i585, %if.end6.i578
  %764 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec19.i586 = add i64 %764, -1
  store i64 %dec19.i586, ptr %bytes_in_buffer.i557, align 8
  %765 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr20.i587 = getelementptr inbounds i8, ptr %765, i64 1
  store ptr %incdec.ptr20.i587, ptr %next_input_byte.i556, align 8
  %766 = load i8, ptr %765, align 1
  %conv21.i588 = zext i8 %766 to i64
  %767 = load i64, ptr %length.i551, align 8
  %add.i589 = add nsw i64 %767, %conv21.i588
  store i64 %add.i589, ptr %length.i551, align 8
  %768 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp23.i591 = icmp eq i64 %768, 0
  br i1 %cmp23.i591, label %if.then25.i595, label %if.end33.i603

if.then25.i595:                                   ; preds = %if.end18.i590
  %769 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer26.i592 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %769, i64 0, i32 3
  %770 = load ptr, ptr %fill_input_buffer26.i592, align 8
  %771 = load ptr, ptr %cinfo.addr.i548, align 8
  %call27.i593 = call i32 %770(ptr noundef %771) #5
  %tobool28.i594.not = icmp eq i32 %call27.i593, 0
  br i1 %tobool28.i594.not, label %if.then29.i596, label %if.end30.i598

if.then29.i596:                                   ; preds = %if.then25.i595
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end30.i598:                                    ; preds = %if.then25.i595
  %772 = load ptr, ptr %datasrc.i555, align 8
  %773 = load ptr, ptr %772, align 8
  store ptr %773, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer32.i597 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %772, i64 0, i32 1
  %774 = load i64, ptr %bytes_in_buffer32.i597, align 8
  store i64 %774, ptr %bytes_in_buffer.i557, align 8
  br label %if.end33.i603

if.end33.i603:                                    ; preds = %if.end30.i598, %if.end18.i590
  %775 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec34.i599 = add i64 %775, -1
  store i64 %dec34.i599, ptr %bytes_in_buffer.i557, align 8
  %776 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr35.i600 = getelementptr inbounds i8, ptr %776, i64 1
  store ptr %incdec.ptr35.i600, ptr %next_input_byte.i556, align 8
  %777 = load i8, ptr %776, align 1
  %conv36.i601 = zext i8 %777 to i32
  %778 = load ptr, ptr %cinfo.addr.i548, align 8
  %data_precision.i602 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %778, i64 0, i32 42
  store i32 %conv36.i601, ptr %data_precision.i602, align 8
  %779 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp39.i604 = icmp eq i64 %779, 0
  br i1 %cmp39.i604, label %if.then41.i608, label %if.end49.i618

if.then41.i608:                                   ; preds = %if.end33.i603
  %780 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer42.i605 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %780, i64 0, i32 3
  %781 = load ptr, ptr %fill_input_buffer42.i605, align 8
  %782 = load ptr, ptr %cinfo.addr.i548, align 8
  %call43.i606 = call i32 %781(ptr noundef %782) #5
  %tobool44.i607.not = icmp eq i32 %call43.i606, 0
  br i1 %tobool44.i607.not, label %if.then45.i609, label %if.end46.i611

if.then45.i609:                                   ; preds = %if.then41.i608
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end46.i611:                                    ; preds = %if.then41.i608
  %783 = load ptr, ptr %datasrc.i555, align 8
  %784 = load ptr, ptr %783, align 8
  store ptr %784, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer48.i610 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %783, i64 0, i32 1
  %785 = load i64, ptr %bytes_in_buffer48.i610, align 8
  store i64 %785, ptr %bytes_in_buffer.i557, align 8
  br label %if.end49.i618

if.end49.i618:                                    ; preds = %if.end46.i611, %if.end33.i603
  %786 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec50.i612 = add i64 %786, -1
  store i64 %dec50.i612, ptr %bytes_in_buffer.i557, align 8
  %787 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr51.i613 = getelementptr inbounds i8, ptr %787, i64 1
  store ptr %incdec.ptr51.i613, ptr %next_input_byte.i556, align 8
  %788 = load i8, ptr %787, align 1
  %conv52.i614 = zext i8 %788 to i32
  %shl53.i615 = shl nuw nsw i32 %conv52.i614, 8
  %789 = load ptr, ptr %cinfo.addr.i548, align 8
  %image_height.i616 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %789, i64 0, i32 7
  store i32 %shl53.i615, ptr %image_height.i616, align 4
  %790 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp54.i617 = icmp eq i64 %790, 0
  br i1 %cmp54.i617, label %if.then56.i622, label %if.end64.i631

if.then56.i622:                                   ; preds = %if.end49.i618
  %791 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer57.i619 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %791, i64 0, i32 3
  %792 = load ptr, ptr %fill_input_buffer57.i619, align 8
  %793 = load ptr, ptr %cinfo.addr.i548, align 8
  %call58.i620 = call i32 %792(ptr noundef %793) #5
  %tobool59.i621.not = icmp eq i32 %call58.i620, 0
  br i1 %tobool59.i621.not, label %if.then60.i623, label %if.end61.i625

if.then60.i623:                                   ; preds = %if.then56.i622
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end61.i625:                                    ; preds = %if.then56.i622
  %794 = load ptr, ptr %datasrc.i555, align 8
  %795 = load ptr, ptr %794, align 8
  store ptr %795, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer63.i624 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %794, i64 0, i32 1
  %796 = load i64, ptr %bytes_in_buffer63.i624, align 8
  store i64 %796, ptr %bytes_in_buffer.i557, align 8
  br label %if.end64.i631

if.end64.i631:                                    ; preds = %if.end61.i625, %if.end49.i618
  %797 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec65.i626 = add i64 %797, -1
  store i64 %dec65.i626, ptr %bytes_in_buffer.i557, align 8
  %798 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr66.i627 = getelementptr inbounds i8, ptr %798, i64 1
  store ptr %incdec.ptr66.i627, ptr %next_input_byte.i556, align 8
  %799 = load i8, ptr %798, align 1
  %conv67.i628 = zext i8 %799 to i32
  %800 = load ptr, ptr %cinfo.addr.i548, align 8
  %image_height68.i629 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %800, i64 0, i32 7
  %801 = load i32, ptr %image_height68.i629, align 4
  %add69.i630 = add i32 %801, %conv67.i628
  store i32 %add69.i630, ptr %image_height68.i629, align 4
  %802 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp72.i632 = icmp eq i64 %802, 0
  br i1 %cmp72.i632, label %if.then74.i636, label %if.end82.i646

if.then74.i636:                                   ; preds = %if.end64.i631
  %803 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer75.i633 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %803, i64 0, i32 3
  %804 = load ptr, ptr %fill_input_buffer75.i633, align 8
  %805 = load ptr, ptr %cinfo.addr.i548, align 8
  %call76.i634 = call i32 %804(ptr noundef %805) #5
  %tobool77.i635.not = icmp eq i32 %call76.i634, 0
  br i1 %tobool77.i635.not, label %if.then78.i637, label %if.end79.i639

if.then78.i637:                                   ; preds = %if.then74.i636
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end79.i639:                                    ; preds = %if.then74.i636
  %806 = load ptr, ptr %datasrc.i555, align 8
  %807 = load ptr, ptr %806, align 8
  store ptr %807, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer81.i638 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %806, i64 0, i32 1
  %808 = load i64, ptr %bytes_in_buffer81.i638, align 8
  store i64 %808, ptr %bytes_in_buffer.i557, align 8
  br label %if.end82.i646

if.end82.i646:                                    ; preds = %if.end79.i639, %if.end64.i631
  %809 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec83.i640 = add i64 %809, -1
  store i64 %dec83.i640, ptr %bytes_in_buffer.i557, align 8
  %810 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr84.i641 = getelementptr inbounds i8, ptr %810, i64 1
  store ptr %incdec.ptr84.i641, ptr %next_input_byte.i556, align 8
  %811 = load i8, ptr %810, align 1
  %conv85.i642 = zext i8 %811 to i32
  %shl86.i643 = shl nuw nsw i32 %conv85.i642, 8
  %812 = load ptr, ptr %cinfo.addr.i548, align 8
  %image_width.i644 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %812, i64 0, i32 6
  store i32 %shl86.i643, ptr %image_width.i644, align 8
  %813 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp87.i645 = icmp eq i64 %813, 0
  br i1 %cmp87.i645, label %if.then89.i650, label %if.end97.i659

if.then89.i650:                                   ; preds = %if.end82.i646
  %814 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer90.i647 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %814, i64 0, i32 3
  %815 = load ptr, ptr %fill_input_buffer90.i647, align 8
  %816 = load ptr, ptr %cinfo.addr.i548, align 8
  %call91.i648 = call i32 %815(ptr noundef %816) #5
  %tobool92.i649.not = icmp eq i32 %call91.i648, 0
  br i1 %tobool92.i649.not, label %if.then93.i651, label %if.end94.i653

if.then93.i651:                                   ; preds = %if.then89.i650
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end94.i653:                                    ; preds = %if.then89.i650
  %817 = load ptr, ptr %datasrc.i555, align 8
  %818 = load ptr, ptr %817, align 8
  store ptr %818, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer96.i652 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %817, i64 0, i32 1
  %819 = load i64, ptr %bytes_in_buffer96.i652, align 8
  store i64 %819, ptr %bytes_in_buffer.i557, align 8
  br label %if.end97.i659

if.end97.i659:                                    ; preds = %if.end94.i653, %if.end82.i646
  %820 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec98.i654 = add i64 %820, -1
  store i64 %dec98.i654, ptr %bytes_in_buffer.i557, align 8
  %821 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr99.i655 = getelementptr inbounds i8, ptr %821, i64 1
  store ptr %incdec.ptr99.i655, ptr %next_input_byte.i556, align 8
  %822 = load i8, ptr %821, align 1
  %conv100.i656 = zext i8 %822 to i32
  %823 = load ptr, ptr %cinfo.addr.i548, align 8
  %image_width101.i657 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %823, i64 0, i32 6
  %824 = load i32, ptr %image_width101.i657, align 8
  %add102.i658 = add i32 %824, %conv100.i656
  store i32 %add102.i658, ptr %image_width101.i657, align 8
  %825 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp105.i660 = icmp eq i64 %825, 0
  br i1 %cmp105.i660, label %if.then107.i664, label %if.end115.i672

if.then107.i664:                                  ; preds = %if.end97.i659
  %826 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer108.i661 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %826, i64 0, i32 3
  %827 = load ptr, ptr %fill_input_buffer108.i661, align 8
  %828 = load ptr, ptr %cinfo.addr.i548, align 8
  %call109.i662 = call i32 %827(ptr noundef %828) #5
  %tobool110.i663.not = icmp eq i32 %call109.i662, 0
  br i1 %tobool110.i663.not, label %if.then111.i665, label %if.end112.i667

if.then111.i665:                                  ; preds = %if.then107.i664
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end112.i667:                                   ; preds = %if.then107.i664
  %829 = load ptr, ptr %datasrc.i555, align 8
  %830 = load ptr, ptr %829, align 8
  store ptr %830, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer114.i666 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %829, i64 0, i32 1
  %831 = load i64, ptr %bytes_in_buffer114.i666, align 8
  store i64 %831, ptr %bytes_in_buffer.i557, align 8
  br label %if.end115.i672

if.end115.i672:                                   ; preds = %if.end112.i667, %if.end97.i659
  %832 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec116.i668 = add i64 %832, -1
  store i64 %dec116.i668, ptr %bytes_in_buffer.i557, align 8
  %833 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr117.i669 = getelementptr inbounds i8, ptr %833, i64 1
  store ptr %incdec.ptr117.i669, ptr %next_input_byte.i556, align 8
  %834 = load i8, ptr %833, align 1
  %conv118.i670 = zext i8 %834 to i32
  %835 = load ptr, ptr %cinfo.addr.i548, align 8
  %num_components.i671 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %835, i64 0, i32 8
  store i32 %conv118.i670, ptr %num_components.i671, align 8
  %836 = load i64, ptr %length.i551, align 8
  %sub.i673 = add nsw i64 %836, -8
  store i64 %sub.i673, ptr %length.i551, align 8
  %837 = load ptr, ptr %835, align 8
  %msg_parm.i674 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %837, i64 0, i32 6
  store ptr %msg_parm.i674, ptr %_mp.i558, align 8
  %838 = load ptr, ptr %cinfo.addr.i548, align 8
  %unread_marker.i675 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %838, i64 0, i32 72
  %839 = load i32, ptr %unread_marker.i675, align 4
  store i32 %839, ptr %msg_parm.i674, align 4
  %image_width121.i676 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %838, i64 0, i32 6
  %840 = load i32, ptr %image_width121.i676, align 8
  %841 = load ptr, ptr %_mp.i558, align 8
  %arrayidx122.i677 = getelementptr inbounds i32, ptr %841, i64 1
  store i32 %840, ptr %arrayidx122.i677, align 4
  %842 = load ptr, ptr %cinfo.addr.i548, align 8
  %image_height123.i678 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %842, i64 0, i32 7
  %843 = load i32, ptr %image_height123.i678, align 4
  %arrayidx124.i679 = getelementptr inbounds i32, ptr %841, i64 2
  store i32 %843, ptr %arrayidx124.i679, align 4
  %num_components125.i680 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %842, i64 0, i32 8
  %844 = load i32, ptr %num_components125.i680, align 8
  %845 = load ptr, ptr %_mp.i558, align 8
  %arrayidx126.i681 = getelementptr inbounds i32, ptr %845, i64 3
  store i32 %844, ptr %arrayidx126.i681, align 4
  %846 = load ptr, ptr %cinfo.addr.i548, align 8
  %847 = load ptr, ptr %846, align 8
  %msg_code.i682 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %847, i64 0, i32 5
  store i32 99, ptr %msg_code.i682, align 8
  %848 = load ptr, ptr %846, align 8
  %emit_message.i683 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %848, i64 0, i32 1
  %849 = load ptr, ptr %emit_message.i683, align 8
  %850 = load ptr, ptr %cinfo.addr.i548, align 8
  call void %849(ptr noundef %850, i32 noundef 1) #5
  %marker.i684 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %850, i64 0, i32 78
  %851 = load ptr, ptr %marker.i684, align 8
  %saw_SOF.i685 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %851, i64 0, i32 6
  %852 = load i32, ptr %saw_SOF.i685, align 4
  %tobool130.i686.not = icmp eq i32 %852, 0
  br i1 %tobool130.i686.not, label %if.end135.i691, label %if.then131.i688

if.then131.i688:                                  ; preds = %if.end115.i672
  %853 = load ptr, ptr %cinfo.addr.i548, align 8
  %854 = load ptr, ptr %853, align 8
  %msg_code133.i687 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %854, i64 0, i32 5
  store i32 57, ptr %msg_code133.i687, align 8
  %855 = load ptr, ptr %853, align 8
  %856 = load ptr, ptr %855, align 8
  call void %856(ptr noundef nonnull %853) #5
  br label %if.end135.i691

if.end135.i691:                                   ; preds = %if.then131.i688, %if.end115.i672
  %857 = load ptr, ptr %cinfo.addr.i548, align 8
  %image_height136.i689 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %857, i64 0, i32 7
  %858 = load i32, ptr %image_height136.i689, align 4
  %cmp137.i690 = icmp eq i32 %858, 0
  br i1 %cmp137.i690, label %if.then146.i699, label %lor.lhs.false.i694

lor.lhs.false.i694:                               ; preds = %if.end135.i691
  %859 = load ptr, ptr %cinfo.addr.i548, align 8
  %image_width139.i692 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %859, i64 0, i32 6
  %860 = load i32, ptr %image_width139.i692, align 8
  %cmp140.i693 = icmp eq i32 %860, 0
  br i1 %cmp140.i693, label %if.then146.i699, label %lor.lhs.false142.i697

lor.lhs.false142.i697:                            ; preds = %lor.lhs.false.i694
  %861 = load ptr, ptr %cinfo.addr.i548, align 8
  %num_components143.i695 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %861, i64 0, i32 8
  %862 = load i32, ptr %num_components143.i695, align 8
  %cmp144.i696 = icmp slt i32 %862, 1
  br i1 %cmp144.i696, label %if.then146.i699, label %if.end151.i704

if.then146.i699:                                  ; preds = %lor.lhs.false142.i697, %lor.lhs.false.i694, %if.end135.i691
  %863 = load ptr, ptr %cinfo.addr.i548, align 8
  %864 = load ptr, ptr %863, align 8
  %msg_code148.i698 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %864, i64 0, i32 5
  store i32 31, ptr %msg_code148.i698, align 8
  %865 = load ptr, ptr %863, align 8
  %866 = load ptr, ptr %865, align 8
  call void %866(ptr noundef nonnull %863) #5
  br label %if.end151.i704

if.end151.i704:                                   ; preds = %if.then146.i699, %lor.lhs.false142.i697
  %867 = load i64, ptr %length.i551, align 8
  %868 = load ptr, ptr %cinfo.addr.i548, align 8
  %num_components152.i700 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %868, i64 0, i32 8
  %869 = load i32, ptr %num_components152.i700, align 8
  %mul.i701 = mul nsw i32 %869, 3
  %conv153.i702 = sext i32 %mul.i701 to i64
  %cmp154.i703.not = icmp eq i64 %867, %conv153.i702
  br i1 %cmp154.i703.not, label %if.end161.i709, label %if.then156.i706

if.then156.i706:                                  ; preds = %if.end151.i704
  %870 = load ptr, ptr %cinfo.addr.i548, align 8
  %871 = load ptr, ptr %870, align 8
  %msg_code158.i705 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %871, i64 0, i32 5
  store i32 9, ptr %msg_code158.i705, align 8
  %872 = load ptr, ptr %870, align 8
  %873 = load ptr, ptr %872, align 8
  call void %873(ptr noundef nonnull %870) #5
  br label %if.end161.i709

if.end161.i709:                                   ; preds = %if.then156.i706, %if.end151.i704
  %874 = load ptr, ptr %cinfo.addr.i548, align 8
  %comp_info.i707 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %874, i64 0, i32 43
  %875 = load ptr, ptr %comp_info.i707, align 8
  %cmp162.i708 = icmp eq ptr %875, null
  br i1 %cmp162.i708, label %if.then164.i716, label %if.end170.i718

if.then164.i716:                                  ; preds = %if.end161.i709
  %876 = load ptr, ptr %cinfo.addr.i548, align 8
  %mem.i710 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %876, i64 0, i32 1
  %877 = load ptr, ptr %mem.i710, align 8
  %878 = load ptr, ptr %877, align 8
  %num_components165.i711 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %876, i64 0, i32 8
  %879 = load i32, ptr %num_components165.i711, align 8
  %conv166.i712 = sext i32 %879 to i64
  %mul167.i713 = mul nsw i64 %conv166.i712, 96
  %call168.i714 = call ptr %878(ptr noundef %876, i32 noundef 1, i64 noundef %mul167.i713) #5
  %880 = load ptr, ptr %cinfo.addr.i548, align 8
  %comp_info169.i715 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %880, i64 0, i32 43
  store ptr %call168.i714, ptr %comp_info169.i715, align 8
  br label %if.end170.i718

if.end170.i718:                                   ; preds = %if.then164.i716, %if.end161.i709
  store i32 0, ptr %ci.i553, align 4
  %881 = load ptr, ptr %cinfo.addr.i548, align 8
  %comp_info171.i717 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %881, i64 0, i32 43
  %882 = load ptr, ptr %comp_info171.i717, align 8
  br label %for.cond.i721

for.cond.i721:                                    ; preds = %if.end219.i765, %if.end170.i718
  %storemerge1169 = phi ptr [ %882, %if.end170.i718 ], [ %incdec.ptr242.i776, %if.end219.i765 ]
  store ptr %storemerge1169, ptr %compptr.i554, align 8
  %883 = load i32, ptr %ci.i553, align 4
  %884 = load ptr, ptr %cinfo.addr.i548, align 8
  %num_components172.i719 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %884, i64 0, i32 8
  %885 = load i32, ptr %num_components172.i719, align 8
  %cmp173.i720 = icmp slt i32 %883, %885
  br i1 %cmp173.i720, label %for.body.i723, label %for.end.i780

for.body.i723:                                    ; preds = %for.cond.i721
  %886 = load i32, ptr %ci.i553, align 4
  %887 = load ptr, ptr %compptr.i554, align 8
  %component_index.i722 = getelementptr inbounds %struct.jpeg_component_info, ptr %887, i64 0, i32 1
  store i32 %886, ptr %component_index.i722, align 4
  %888 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp176.i724 = icmp eq i64 %888, 0
  br i1 %cmp176.i724, label %if.then178.i728, label %if.end186.i735

if.then178.i728:                                  ; preds = %for.body.i723
  %889 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer179.i725 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %889, i64 0, i32 3
  %890 = load ptr, ptr %fill_input_buffer179.i725, align 8
  %891 = load ptr, ptr %cinfo.addr.i548, align 8
  %call180.i726 = call i32 %890(ptr noundef %891) #5
  %tobool181.i727.not = icmp eq i32 %call180.i726, 0
  br i1 %tobool181.i727.not, label %if.then182.i729, label %if.end183.i731

if.then182.i729:                                  ; preds = %if.then178.i728
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end183.i731:                                   ; preds = %if.then178.i728
  %892 = load ptr, ptr %datasrc.i555, align 8
  %893 = load ptr, ptr %892, align 8
  store ptr %893, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer185.i730 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %892, i64 0, i32 1
  %894 = load i64, ptr %bytes_in_buffer185.i730, align 8
  store i64 %894, ptr %bytes_in_buffer.i557, align 8
  br label %if.end186.i735

if.end186.i735:                                   ; preds = %if.end183.i731, %for.body.i723
  %895 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec187.i732 = add i64 %895, -1
  store i64 %dec187.i732, ptr %bytes_in_buffer.i557, align 8
  %896 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr188.i733 = getelementptr inbounds i8, ptr %896, i64 1
  store ptr %incdec.ptr188.i733, ptr %next_input_byte.i556, align 8
  %897 = load i8, ptr %896, align 1
  %conv189.i734 = zext i8 %897 to i32
  %898 = load ptr, ptr %compptr.i554, align 8
  store i32 %conv189.i734, ptr %898, align 8
  %899 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp192.i736 = icmp eq i64 %899, 0
  br i1 %cmp192.i736, label %if.then194.i740, label %if.end202.i747

if.then194.i740:                                  ; preds = %if.end186.i735
  %900 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer195.i737 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %900, i64 0, i32 3
  %901 = load ptr, ptr %fill_input_buffer195.i737, align 8
  %902 = load ptr, ptr %cinfo.addr.i548, align 8
  %call196.i738 = call i32 %901(ptr noundef %902) #5
  %tobool197.i739.not = icmp eq i32 %call196.i738, 0
  br i1 %tobool197.i739.not, label %if.then198.i741, label %if.end199.i743

if.then198.i741:                                  ; preds = %if.then194.i740
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end199.i743:                                   ; preds = %if.then194.i740
  %903 = load ptr, ptr %datasrc.i555, align 8
  %904 = load ptr, ptr %903, align 8
  store ptr %904, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer201.i742 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %903, i64 0, i32 1
  %905 = load i64, ptr %bytes_in_buffer201.i742, align 8
  store i64 %905, ptr %bytes_in_buffer.i557, align 8
  br label %if.end202.i747

if.end202.i747:                                   ; preds = %if.end199.i743, %if.end186.i735
  %906 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec203.i744 = add i64 %906, -1
  store i64 %dec203.i744, ptr %bytes_in_buffer.i557, align 8
  %907 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr204.i745 = getelementptr inbounds i8, ptr %907, i64 1
  store ptr %incdec.ptr204.i745, ptr %next_input_byte.i556, align 8
  %908 = load i8, ptr %907, align 1
  %conv205.i746 = zext i8 %908 to i32
  %909 = lshr i32 %conv205.i746, 4
  %910 = load ptr, ptr %compptr.i554, align 8
  %h_samp_factor.i750 = getelementptr inbounds %struct.jpeg_component_info, ptr %910, i64 0, i32 2
  store i32 %909, ptr %h_samp_factor.i750, align 8
  %and207.i751 = and i32 %conv205.i746, 15
  %v_samp_factor.i752 = getelementptr inbounds %struct.jpeg_component_info, ptr %910, i64 0, i32 3
  store i32 %and207.i751, ptr %v_samp_factor.i752, align 4
  %911 = load i64, ptr %bytes_in_buffer.i557, align 8
  %cmp209.i753 = icmp eq i64 %911, 0
  br i1 %cmp209.i753, label %if.then211.i757, label %if.end219.i765

if.then211.i757:                                  ; preds = %if.end202.i747
  %912 = load ptr, ptr %datasrc.i555, align 8
  %fill_input_buffer212.i754 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %912, i64 0, i32 3
  %913 = load ptr, ptr %fill_input_buffer212.i754, align 8
  %914 = load ptr, ptr %cinfo.addr.i548, align 8
  %call213.i755 = call i32 %913(ptr noundef %914) #5
  %tobool214.i756.not = icmp eq i32 %call213.i755, 0
  br i1 %tobool214.i756.not, label %if.then215.i758, label %if.end216.i760

if.then215.i758:                                  ; preds = %if.then211.i757
  store i32 0, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

if.end216.i760:                                   ; preds = %if.then211.i757
  %915 = load ptr, ptr %datasrc.i555, align 8
  %916 = load ptr, ptr %915, align 8
  store ptr %916, ptr %next_input_byte.i556, align 8
  %bytes_in_buffer218.i759 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %915, i64 0, i32 1
  %917 = load i64, ptr %bytes_in_buffer218.i759, align 8
  store i64 %917, ptr %bytes_in_buffer.i557, align 8
  br label %if.end219.i765

if.end219.i765:                                   ; preds = %if.end216.i760, %if.end202.i747
  %918 = load i64, ptr %bytes_in_buffer.i557, align 8
  %dec220.i761 = add i64 %918, -1
  store i64 %dec220.i761, ptr %bytes_in_buffer.i557, align 8
  %919 = load ptr, ptr %next_input_byte.i556, align 8
  %incdec.ptr221.i762 = getelementptr inbounds i8, ptr %919, i64 1
  store ptr %incdec.ptr221.i762, ptr %next_input_byte.i556, align 8
  %920 = load i8, ptr %919, align 1
  %conv222.i763 = zext i8 %920 to i32
  %921 = load ptr, ptr %compptr.i554, align 8
  %quant_tbl_no.i764 = getelementptr inbounds %struct.jpeg_component_info, ptr %921, i64 0, i32 4
  store i32 %conv222.i763, ptr %quant_tbl_no.i764, align 8
  %922 = load ptr, ptr %cinfo.addr.i548, align 8
  %923 = load ptr, ptr %922, align 8
  %msg_parm227.i766 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %923, i64 0, i32 6
  store ptr %msg_parm227.i766, ptr %_mp225.i559, align 8
  %924 = load ptr, ptr %compptr.i554, align 8
  %925 = load i32, ptr %924, align 8
  store i32 %925, ptr %msg_parm227.i766, align 4
  %h_samp_factor231.i767 = getelementptr inbounds %struct.jpeg_component_info, ptr %924, i64 0, i32 2
  %926 = load i32, ptr %h_samp_factor231.i767, align 8
  %arrayidx232.i768 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %923, i64 0, i32 6, i32 0, i64 1
  store i32 %926, ptr %arrayidx232.i768, align 4
  %927 = load ptr, ptr %compptr.i554, align 8
  %v_samp_factor233.i769 = getelementptr inbounds %struct.jpeg_component_info, ptr %927, i64 0, i32 3
  %928 = load i32, ptr %v_samp_factor233.i769, align 4
  %929 = load ptr, ptr %_mp225.i559, align 8
  %arrayidx234.i770 = getelementptr inbounds i32, ptr %929, i64 2
  store i32 %928, ptr %arrayidx234.i770, align 4
  %quant_tbl_no235.i771 = getelementptr inbounds %struct.jpeg_component_info, ptr %927, i64 0, i32 4
  %930 = load i32, ptr %quant_tbl_no235.i771, align 8
  %arrayidx236.i772 = getelementptr inbounds i32, ptr %929, i64 3
  store i32 %930, ptr %arrayidx236.i772, align 4
  %931 = load ptr, ptr %cinfo.addr.i548, align 8
  %932 = load ptr, ptr %931, align 8
  %msg_code238.i773 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %932, i64 0, i32 5
  store i32 100, ptr %msg_code238.i773, align 8
  %933 = load ptr, ptr %931, align 8
  %emit_message240.i774 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %933, i64 0, i32 1
  %934 = load ptr, ptr %emit_message240.i774, align 8
  %935 = load ptr, ptr %cinfo.addr.i548, align 8
  call void %934(ptr noundef %935, i32 noundef 1) #5
  %936 = load i32, ptr %ci.i553, align 4
  %inc.i775 = add nsw i32 %936, 1
  store i32 %inc.i775, ptr %ci.i553, align 4
  %937 = load ptr, ptr %compptr.i554, align 8
  %incdec.ptr242.i776 = getelementptr inbounds %struct.jpeg_component_info, ptr %937, i64 1
  br label %for.cond.i721, !llvm.loop !11

for.end.i780:                                     ; preds = %for.cond.i721
  %938 = load ptr, ptr %cinfo.addr.i548, align 8
  %marker243.i777 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %938, i64 0, i32 78
  %939 = load ptr, ptr %marker243.i777, align 8
  %saw_SOF244.i778 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %939, i64 0, i32 6
  store i32 1, ptr %saw_SOF244.i778, align 4
  %940 = load ptr, ptr %next_input_byte.i556, align 8
  %941 = load ptr, ptr %datasrc.i555, align 8
  store ptr %940, ptr %941, align 8
  %942 = load i64, ptr %bytes_in_buffer.i557, align 8
  %bytes_in_buffer246.i779 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %941, i64 0, i32 1
  store i64 %942, ptr %bytes_in_buffer246.i779, align 8
  store i32 1, ptr %retval.i547, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit: ; preds = %if.then3.i569, %if.then14.i583, %if.then29.i596, %if.then45.i609, %if.then60.i623, %if.then78.i637, %if.then93.i651, %if.then111.i665, %if.then182.i729, %if.then198.i741, %if.then215.i758, %for.end.i780
  %943 = load i32, ptr %retval.i547, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i547)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i548)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_prog.addr.i549)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_arith.addr.i550)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i551)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i553)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i554)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i555)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i556)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i557)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp.i558)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp225.i559)
  %tobool32.not = icmp eq i32 %943, 0
  br i1 %tobool32.not, label %if.then33, label %sw.epilog

if.then33:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb35:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %944 = load ptr, ptr %cinfo.addr, align 8
  %945 = load ptr, ptr %944, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %945, i64 0, i32 5
  store i32 59, ptr %msg_code, align 8
  %unread_marker36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %944, i64 0, i32 72
  %946 = load i32, ptr %unread_marker36, align 4
  %947 = load ptr, ptr %944, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %947, i64 0, i32 6
  store i32 %946, ptr %msg_parm, align 4
  %948 = load ptr, ptr %cinfo.addr, align 8
  %949 = load ptr, ptr %948, align 8
  %950 = load ptr, ptr %949, align 8
  call void %950(ptr noundef nonnull %948) #5
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end9
  %951 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i781)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i782)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i783)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i784)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ci.i785)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i786)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %compptr.i787)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i788)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i789)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i790)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp.i791)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp181.i)
  store ptr %951, ptr %cinfo.addr.i782, align 8
  %src.i792 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %951, i64 0, i32 5
  %952 = load ptr, ptr %src.i792, align 8
  store ptr %952, ptr %datasrc.i788, align 8
  %953 = load ptr, ptr %952, align 8
  store ptr %953, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer2.i793 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %952, i64 0, i32 1
  %954 = load i64, ptr %bytes_in_buffer2.i793, align 8
  store i64 %954, ptr %bytes_in_buffer.i790, align 8
  %955 = load ptr, ptr %cinfo.addr.i782, align 8
  %marker.i794 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %955, i64 0, i32 78
  %956 = load ptr, ptr %marker.i794, align 8
  %saw_SOF.i795 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %956, i64 0, i32 6
  %957 = load i32, ptr %saw_SOF.i795, align 4
  %tobool.i796.not = icmp eq i32 %957, 0
  br i1 %tobool.i796.not, label %if.then.i798, label %if.end.i799

if.then.i798:                                     ; preds = %sw.bb39
  %958 = load ptr, ptr %cinfo.addr.i782, align 8
  %959 = load ptr, ptr %958, align 8
  %msg_code.i797 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %959, i64 0, i32 5
  store i32 61, ptr %msg_code.i797, align 8
  %960 = load ptr, ptr %958, align 8
  %961 = load ptr, ptr %960, align 8
  call void %961(ptr noundef nonnull %958) #5
  br label %if.end.i799

if.end.i799:                                      ; preds = %if.then.i798, %sw.bb39
  %962 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp.i800 = icmp eq i64 %962, 0
  br i1 %cmp.i800, label %if.then4.i, label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i799
  %963 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer.i801 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %963, i64 0, i32 3
  %964 = load ptr, ptr %fill_input_buffer.i801, align 8
  %965 = load ptr, ptr %cinfo.addr.i782, align 8
  %call.i802 = call i32 %964(ptr noundef %965) #5
  %tobool5.i.not = icmp eq i32 %call.i802, 0
  br i1 %tobool5.i.not, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end7.i:                                        ; preds = %if.then4.i
  %966 = load ptr, ptr %datasrc.i788, align 8
  %967 = load ptr, ptr %966, align 8
  store ptr %967, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer9.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %966, i64 0, i32 1
  %968 = load i64, ptr %bytes_in_buffer9.i, align 8
  store i64 %968, ptr %bytes_in_buffer.i790, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end7.i, %if.end.i799
  %969 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec.i803 = add i64 %969, -1
  store i64 %dec.i803, ptr %bytes_in_buffer.i790, align 8
  %970 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr.i804 = getelementptr inbounds i8, ptr %970, i64 1
  store ptr %incdec.ptr.i804, ptr %next_input_byte.i789, align 8
  %971 = load i8, ptr %970, align 1
  %conv.i805 = zext i8 %971 to i64
  %shl.i806 = shl nuw nsw i64 %conv.i805, 8
  store i64 %shl.i806, ptr %length.i783, align 8
  %972 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp12.i807 = icmp eq i64 %972, 0
  br i1 %cmp12.i807, label %if.then14.i811, label %if.end22.i819

if.then14.i811:                                   ; preds = %if.end10.i
  %973 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer15.i808 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %973, i64 0, i32 3
  %974 = load ptr, ptr %fill_input_buffer15.i808, align 8
  %975 = load ptr, ptr %cinfo.addr.i782, align 8
  %call16.i809 = call i32 %974(ptr noundef %975) #5
  %tobool17.i810.not = icmp eq i32 %call16.i809, 0
  br i1 %tobool17.i810.not, label %if.then18.i812, label %if.end19.i814

if.then18.i812:                                   ; preds = %if.then14.i811
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end19.i814:                                    ; preds = %if.then14.i811
  %976 = load ptr, ptr %datasrc.i788, align 8
  %977 = load ptr, ptr %976, align 8
  store ptr %977, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer21.i813 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %976, i64 0, i32 1
  %978 = load i64, ptr %bytes_in_buffer21.i813, align 8
  store i64 %978, ptr %bytes_in_buffer.i790, align 8
  br label %if.end22.i819

if.end22.i819:                                    ; preds = %if.end19.i814, %if.end10.i
  %979 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec23.i815 = add i64 %979, -1
  store i64 %dec23.i815, ptr %bytes_in_buffer.i790, align 8
  %980 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr24.i816 = getelementptr inbounds i8, ptr %980, i64 1
  store ptr %incdec.ptr24.i816, ptr %next_input_byte.i789, align 8
  %981 = load i8, ptr %980, align 1
  %conv25.i817 = zext i8 %981 to i64
  %982 = load i64, ptr %length.i783, align 8
  %add.i818 = add nsw i64 %982, %conv25.i817
  store i64 %add.i818, ptr %length.i783, align 8
  %983 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp27.i = icmp eq i64 %983, 0
  br i1 %cmp27.i, label %if.then29.i820, label %if.end37.i

if.then29.i820:                                   ; preds = %if.end22.i819
  %984 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer30.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %984, i64 0, i32 3
  %985 = load ptr, ptr %fill_input_buffer30.i, align 8
  %986 = load ptr, ptr %cinfo.addr.i782, align 8
  %call31.i = call i32 %985(ptr noundef %986) #5
  %tobool32.i.not = icmp eq i32 %call31.i, 0
  br i1 %tobool32.i.not, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %if.then29.i820
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end34.i:                                       ; preds = %if.then29.i820
  %987 = load ptr, ptr %datasrc.i788, align 8
  %988 = load ptr, ptr %987, align 8
  store ptr %988, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer36.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %987, i64 0, i32 1
  %989 = load i64, ptr %bytes_in_buffer36.i, align 8
  store i64 %989, ptr %bytes_in_buffer.i790, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end34.i, %if.end22.i819
  %990 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec38.i = add i64 %990, -1
  store i64 %dec38.i, ptr %bytes_in_buffer.i790, align 8
  %991 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr39.i = getelementptr inbounds i8, ptr %991, i64 1
  store ptr %incdec.ptr39.i, ptr %next_input_byte.i789, align 8
  %992 = load i8, ptr %991, align 1
  %conv40.i = zext i8 %992 to i32
  store i32 %conv40.i, ptr %n.i, align 4
  %993 = load i64, ptr %length.i783, align 8
  %mul.i821 = shl nuw nsw i32 %conv40.i, 1
  %add42.i = add nuw nsw i32 %mul.i821, 6
  %conv43.i = zext i32 %add42.i to i64
  %cmp44.i822.not = icmp ne i64 %993, %conv43.i
  %994 = load i32, ptr %n.i, align 4
  %cmp46.i = icmp slt i32 %994, 1
  %or.cond1177 = select i1 %cmp44.i822.not, i1 true, i1 %cmp46.i
  %995 = load i32, ptr %n.i, align 4
  %cmp49.i = icmp sgt i32 %995, 4
  %or.cond1178 = select i1 %or.cond1177, i1 true, i1 %cmp49.i
  br i1 %or.cond1178, label %if.then51.i, label %if.end56.i

if.then51.i:                                      ; preds = %if.end37.i
  %996 = load ptr, ptr %cinfo.addr.i782, align 8
  %997 = load ptr, ptr %996, align 8
  %msg_code53.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %997, i64 0, i32 5
  store i32 9, ptr %msg_code53.i, align 8
  %998 = load ptr, ptr %996, align 8
  %999 = load ptr, ptr %998, align 8
  call void %999(ptr noundef nonnull %996) #5
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end37.i, %if.then51.i
  %1000 = load ptr, ptr %cinfo.addr.i782, align 8
  %1001 = load ptr, ptr %1000, align 8
  %msg_code58.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1001, i64 0, i32 5
  store i32 102, ptr %msg_code58.i, align 8
  %1002 = load i32, ptr %n.i, align 4
  %1003 = load ptr, ptr %1000, align 8
  %msg_parm.i824 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1003, i64 0, i32 6
  store i32 %1002, ptr %msg_parm.i824, align 4
  %1004 = load ptr, ptr %cinfo.addr.i782, align 8
  %1005 = load ptr, ptr %1004, align 8
  %emit_message.i825 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1005, i64 0, i32 1
  %1006 = load ptr, ptr %emit_message.i825, align 8
  call void %1006(ptr noundef nonnull %1004, i32 noundef 1) #5
  %1007 = load i32, ptr %n.i, align 4
  %comps_in_scan.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1004, i64 0, i32 62
  store i32 %1007, ptr %comps_in_scan.i, align 8
  br label %for.cond.i826

for.cond.i826:                                    ; preds = %id_found.i, %if.end56.i
  %storemerge1167 = phi i32 [ 0, %if.end56.i ], [ %inc127.i, %id_found.i ]
  store i32 %storemerge1167, ptr %i.i784, align 4
  %1008 = load i32, ptr %n.i, align 4
  %cmp61.i = icmp slt i32 %storemerge1167, %1008
  br i1 %cmp61.i, label %for.body.i827, label %for.end128.i

for.body.i827:                                    ; preds = %for.cond.i826
  %1009 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp64.i = icmp eq i64 %1009, 0
  br i1 %cmp64.i, label %if.then66.i, label %if.end74.i

if.then66.i:                                      ; preds = %for.body.i827
  %1010 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer67.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1010, i64 0, i32 3
  %1011 = load ptr, ptr %fill_input_buffer67.i, align 8
  %1012 = load ptr, ptr %cinfo.addr.i782, align 8
  %call68.i = call i32 %1011(ptr noundef %1012) #5
  %tobool69.i.not = icmp eq i32 %call68.i, 0
  br i1 %tobool69.i.not, label %if.then70.i, label %if.end71.i

if.then70.i:                                      ; preds = %if.then66.i
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end71.i:                                       ; preds = %if.then66.i
  %1013 = load ptr, ptr %datasrc.i788, align 8
  %1014 = load ptr, ptr %1013, align 8
  store ptr %1014, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer73.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1013, i64 0, i32 1
  %1015 = load i64, ptr %bytes_in_buffer73.i, align 8
  store i64 %1015, ptr %bytes_in_buffer.i790, align 8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end71.i, %for.body.i827
  %1016 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec75.i = add i64 %1016, -1
  store i64 %dec75.i, ptr %bytes_in_buffer.i790, align 8
  %1017 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr76.i = getelementptr inbounds i8, ptr %1017, i64 1
  store ptr %incdec.ptr76.i, ptr %next_input_byte.i789, align 8
  %1018 = load i8, ptr %1017, align 1
  %conv77.i = zext i8 %1018 to i32
  store i32 %conv77.i, ptr %cc.i, align 4
  %1019 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp80.i = icmp eq i64 %1019, 0
  br i1 %cmp80.i, label %if.then82.i, label %if.end90.i

if.then82.i:                                      ; preds = %if.end74.i
  %1020 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer83.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1020, i64 0, i32 3
  %1021 = load ptr, ptr %fill_input_buffer83.i, align 8
  %1022 = load ptr, ptr %cinfo.addr.i782, align 8
  %call84.i = call i32 %1021(ptr noundef %1022) #5
  %tobool85.i.not = icmp eq i32 %call84.i, 0
  br i1 %tobool85.i.not, label %if.then86.i, label %if.end87.i

if.then86.i:                                      ; preds = %if.then82.i
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end87.i:                                       ; preds = %if.then82.i
  %1023 = load ptr, ptr %datasrc.i788, align 8
  %1024 = load ptr, ptr %1023, align 8
  store ptr %1024, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer89.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1023, i64 0, i32 1
  %1025 = load i64, ptr %bytes_in_buffer89.i, align 8
  store i64 %1025, ptr %bytes_in_buffer.i790, align 8
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end87.i, %if.end74.i
  %1026 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec91.i = add i64 %1026, -1
  store i64 %dec91.i, ptr %bytes_in_buffer.i790, align 8
  %1027 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr92.i = getelementptr inbounds i8, ptr %1027, i64 1
  store ptr %incdec.ptr92.i, ptr %next_input_byte.i789, align 8
  %1028 = load i8, ptr %1027, align 1
  %conv93.i = zext i8 %1028 to i32
  store i32 %conv93.i, ptr %c.i786, align 4
  store i32 0, ptr %ci.i785, align 4
  %1029 = load ptr, ptr %cinfo.addr.i782, align 8
  %comp_info.i828 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1029, i64 0, i32 43
  %1030 = load ptr, ptr %comp_info.i828, align 8
  br label %for.cond95.i

for.cond95.i:                                     ; preds = %if.end102.i, %if.end90.i
  %storemerge1168 = phi ptr [ %1030, %if.end90.i ], [ %incdec.ptr103.i, %if.end102.i ]
  store ptr %storemerge1168, ptr %compptr.i787, align 8
  %1031 = load i32, ptr %ci.i785, align 4
  %1032 = load ptr, ptr %cinfo.addr.i782, align 8
  %num_components.i829 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1032, i64 0, i32 8
  %1033 = load i32, ptr %num_components.i829, align 8
  %cmp96.i = icmp slt i32 %1031, %1033
  br i1 %cmp96.i, label %for.body98.i, label %for.end.i831

for.body98.i:                                     ; preds = %for.cond95.i
  %1034 = load i32, ptr %cc.i, align 4
  %1035 = load ptr, ptr %compptr.i787, align 8
  %1036 = load i32, ptr %1035, align 8
  %cmp99.i = icmp eq i32 %1034, %1036
  br i1 %cmp99.i, label %id_found.i, label %if.end102.i

if.end102.i:                                      ; preds = %for.body98.i
  %1037 = load i32, ptr %ci.i785, align 4
  %inc.i830 = add nsw i32 %1037, 1
  store i32 %inc.i830, ptr %ci.i785, align 4
  %1038 = load ptr, ptr %compptr.i787, align 8
  %incdec.ptr103.i = getelementptr inbounds %struct.jpeg_component_info, ptr %1038, i64 1
  br label %for.cond95.i, !llvm.loop !12

for.end.i831:                                     ; preds = %for.cond95.i
  %1039 = load ptr, ptr %cinfo.addr.i782, align 8
  %1040 = load ptr, ptr %1039, align 8
  %msg_code105.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1040, i64 0, i32 5
  store i32 5, ptr %msg_code105.i, align 8
  %1041 = load i32, ptr %cc.i, align 4
  %1042 = load ptr, ptr %1039, align 8
  %msg_parm107.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1042, i64 0, i32 6
  store i32 %1041, ptr %msg_parm107.i, align 4
  %1043 = load ptr, ptr %cinfo.addr.i782, align 8
  %1044 = load ptr, ptr %1043, align 8
  %1045 = load ptr, ptr %1044, align 8
  call void %1045(ptr noundef nonnull %1043) #5
  br label %id_found.i

id_found.i:                                       ; preds = %for.body98.i, %for.end.i831
  %1046 = load ptr, ptr %compptr.i787, align 8
  %1047 = load ptr, ptr %cinfo.addr.i782, align 8
  %1048 = load i32, ptr %i.i784, align 4
  %idxprom.i832 = sext i32 %1048 to i64
  %arrayidx111.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1047, i64 0, i32 63, i64 %idxprom.i832
  store ptr %1046, ptr %arrayidx111.i, align 8
  %1049 = load i32, ptr %c.i786, align 4
  %1050 = lshr i32 %1049, 4
  %and.i834 = and i32 %1050, 15
  %1051 = load ptr, ptr %compptr.i787, align 8
  %dc_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %1051, i64 0, i32 5
  store i32 %and.i834, ptr %dc_tbl_no.i, align 4
  %and112.i = and i32 %1049, 15
  %ac_tbl_no.i = getelementptr inbounds %struct.jpeg_component_info, ptr %1051, i64 0, i32 6
  store i32 %and112.i, ptr %ac_tbl_no.i, align 8
  %1052 = load ptr, ptr %cinfo.addr.i782, align 8
  %1053 = load ptr, ptr %1052, align 8
  %msg_parm115.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1053, i64 0, i32 6
  store ptr %msg_parm115.i, ptr %_mp.i791, align 8
  %1054 = load i32, ptr %cc.i, align 4
  store i32 %1054, ptr %msg_parm115.i, align 4
  %1055 = load ptr, ptr %compptr.i787, align 8
  %dc_tbl_no117.i = getelementptr inbounds %struct.jpeg_component_info, ptr %1055, i64 0, i32 5
  %1056 = load i32, ptr %dc_tbl_no117.i, align 4
  %arrayidx118.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1053, i64 0, i32 6, i32 0, i64 1
  store i32 %1056, ptr %arrayidx118.i, align 4
  %ac_tbl_no119.i = getelementptr inbounds %struct.jpeg_component_info, ptr %1055, i64 0, i32 6
  %1057 = load i32, ptr %ac_tbl_no119.i, align 8
  %1058 = load ptr, ptr %_mp.i791, align 8
  %arrayidx120.i = getelementptr inbounds i32, ptr %1058, i64 2
  store i32 %1057, ptr %arrayidx120.i, align 4
  %1059 = load ptr, ptr %cinfo.addr.i782, align 8
  %1060 = load ptr, ptr %1059, align 8
  %msg_code122.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1060, i64 0, i32 5
  store i32 103, ptr %msg_code122.i, align 8
  %1061 = load ptr, ptr %1059, align 8
  %emit_message124.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1061, i64 0, i32 1
  %1062 = load ptr, ptr %emit_message124.i, align 8
  %1063 = load ptr, ptr %cinfo.addr.i782, align 8
  call void %1062(ptr noundef %1063, i32 noundef 1) #5
  %1064 = load i32, ptr %i.i784, align 4
  %inc127.i = add nsw i32 %1064, 1
  br label %for.cond.i826, !llvm.loop !13

for.end128.i:                                     ; preds = %for.cond.i826
  %1065 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp130.i = icmp eq i64 %1065, 0
  br i1 %cmp130.i, label %if.then132.i, label %if.end140.i

if.then132.i:                                     ; preds = %for.end128.i
  %1066 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer133.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1066, i64 0, i32 3
  %1067 = load ptr, ptr %fill_input_buffer133.i, align 8
  %1068 = load ptr, ptr %cinfo.addr.i782, align 8
  %call134.i = call i32 %1067(ptr noundef %1068) #5
  %tobool135.i.not = icmp eq i32 %call134.i, 0
  br i1 %tobool135.i.not, label %if.then136.i, label %if.end137.i

if.then136.i:                                     ; preds = %if.then132.i
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end137.i:                                      ; preds = %if.then132.i
  %1069 = load ptr, ptr %datasrc.i788, align 8
  %1070 = load ptr, ptr %1069, align 8
  store ptr %1070, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer139.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1069, i64 0, i32 1
  %1071 = load i64, ptr %bytes_in_buffer139.i, align 8
  store i64 %1071, ptr %bytes_in_buffer.i790, align 8
  br label %if.end140.i

if.end140.i:                                      ; preds = %if.end137.i, %for.end128.i
  %1072 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec141.i = add i64 %1072, -1
  store i64 %dec141.i, ptr %bytes_in_buffer.i790, align 8
  %1073 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr142.i = getelementptr inbounds i8, ptr %1073, i64 1
  store ptr %incdec.ptr142.i, ptr %next_input_byte.i789, align 8
  %1074 = load i8, ptr %1073, align 1
  %conv143.i = zext i8 %1074 to i32
  store i32 %conv143.i, ptr %c.i786, align 4
  %1075 = load ptr, ptr %cinfo.addr.i782, align 8
  %Ss.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1075, i64 0, i32 68
  store i32 %conv143.i, ptr %Ss.i, align 4
  %1076 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp146.i = icmp eq i64 %1076, 0
  br i1 %cmp146.i, label %if.then148.i, label %if.end156.i

if.then148.i:                                     ; preds = %if.end140.i
  %1077 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer149.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1077, i64 0, i32 3
  %1078 = load ptr, ptr %fill_input_buffer149.i, align 8
  %1079 = load ptr, ptr %cinfo.addr.i782, align 8
  %call150.i = call i32 %1078(ptr noundef %1079) #5
  %tobool151.i.not = icmp eq i32 %call150.i, 0
  br i1 %tobool151.i.not, label %if.then152.i, label %if.end153.i

if.then152.i:                                     ; preds = %if.then148.i
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end153.i:                                      ; preds = %if.then148.i
  %1080 = load ptr, ptr %datasrc.i788, align 8
  %1081 = load ptr, ptr %1080, align 8
  store ptr %1081, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer155.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1080, i64 0, i32 1
  %1082 = load i64, ptr %bytes_in_buffer155.i, align 8
  store i64 %1082, ptr %bytes_in_buffer.i790, align 8
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.end153.i, %if.end140.i
  %1083 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec157.i = add i64 %1083, -1
  store i64 %dec157.i, ptr %bytes_in_buffer.i790, align 8
  %1084 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr158.i = getelementptr inbounds i8, ptr %1084, i64 1
  store ptr %incdec.ptr158.i, ptr %next_input_byte.i789, align 8
  %1085 = load i8, ptr %1084, align 1
  %conv159.i = zext i8 %1085 to i32
  store i32 %conv159.i, ptr %c.i786, align 4
  %1086 = load ptr, ptr %cinfo.addr.i782, align 8
  %Se.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1086, i64 0, i32 69
  store i32 %conv159.i, ptr %Se.i, align 8
  %1087 = load i64, ptr %bytes_in_buffer.i790, align 8
  %cmp162.i835 = icmp eq i64 %1087, 0
  br i1 %cmp162.i835, label %if.then164.i836, label %if.end172.i

if.then164.i836:                                  ; preds = %if.end156.i
  %1088 = load ptr, ptr %datasrc.i788, align 8
  %fill_input_buffer165.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1088, i64 0, i32 3
  %1089 = load ptr, ptr %fill_input_buffer165.i, align 8
  %1090 = load ptr, ptr %cinfo.addr.i782, align 8
  %call166.i = call i32 %1089(ptr noundef %1090) #5
  %tobool167.i.not = icmp eq i32 %call166.i, 0
  br i1 %tobool167.i.not, label %if.then168.i, label %if.end169.i

if.then168.i:                                     ; preds = %if.then164.i836
  store i32 0, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

if.end169.i:                                      ; preds = %if.then164.i836
  %1091 = load ptr, ptr %datasrc.i788, align 8
  %1092 = load ptr, ptr %1091, align 8
  store ptr %1092, ptr %next_input_byte.i789, align 8
  %bytes_in_buffer171.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1091, i64 0, i32 1
  %1093 = load i64, ptr %bytes_in_buffer171.i, align 8
  store i64 %1093, ptr %bytes_in_buffer.i790, align 8
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.end169.i, %if.end156.i
  %1094 = load i64, ptr %bytes_in_buffer.i790, align 8
  %dec173.i = add i64 %1094, -1
  store i64 %dec173.i, ptr %bytes_in_buffer.i790, align 8
  %1095 = load ptr, ptr %next_input_byte.i789, align 8
  %incdec.ptr174.i = getelementptr inbounds i8, ptr %1095, i64 1
  store ptr %incdec.ptr174.i, ptr %next_input_byte.i789, align 8
  %1096 = load i8, ptr %1095, align 1
  %conv175.i = zext i8 %1096 to i32
  store i32 %conv175.i, ptr %c.i786, align 4
  %1097 = lshr i32 %conv175.i, 4
  %1098 = load ptr, ptr %cinfo.addr.i782, align 8
  %Ah.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1098, i64 0, i32 70
  store i32 %1097, ptr %Ah.i, align 4
  %and179.i = and i32 %conv175.i, 15
  %Al.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1098, i64 0, i32 71
  store i32 %and179.i, ptr %Al.i, align 8
  %1099 = load ptr, ptr %1098, align 8
  %msg_parm183.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1099, i64 0, i32 6
  store ptr %msg_parm183.i, ptr %_mp181.i, align 8
  %1100 = load ptr, ptr %cinfo.addr.i782, align 8
  %Ss185.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1100, i64 0, i32 68
  %1101 = load i32, ptr %Ss185.i, align 4
  store i32 %1101, ptr %msg_parm183.i, align 4
  %Se187.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1100, i64 0, i32 69
  %1102 = load i32, ptr %Se187.i, align 8
  %1103 = load ptr, ptr %_mp181.i, align 8
  %arrayidx188.i = getelementptr inbounds i32, ptr %1103, i64 1
  store i32 %1102, ptr %arrayidx188.i, align 4
  %1104 = load ptr, ptr %cinfo.addr.i782, align 8
  %Ah189.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1104, i64 0, i32 70
  %1105 = load i32, ptr %Ah189.i, align 4
  %arrayidx190.i = getelementptr inbounds i32, ptr %1103, i64 2
  store i32 %1105, ptr %arrayidx190.i, align 4
  %Al191.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1104, i64 0, i32 71
  %1106 = load i32, ptr %Al191.i, align 8
  %1107 = load ptr, ptr %_mp181.i, align 8
  %arrayidx192.i = getelementptr inbounds i32, ptr %1107, i64 3
  store i32 %1106, ptr %arrayidx192.i, align 4
  %1108 = load ptr, ptr %cinfo.addr.i782, align 8
  %1109 = load ptr, ptr %1108, align 8
  %msg_code194.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1109, i64 0, i32 5
  store i32 104, ptr %msg_code194.i, align 8
  %1110 = load ptr, ptr %1108, align 8
  %emit_message196.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1110, i64 0, i32 1
  %1111 = load ptr, ptr %emit_message196.i, align 8
  %1112 = load ptr, ptr %cinfo.addr.i782, align 8
  call void %1111(ptr noundef %1112, i32 noundef 1) #5
  %marker198.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1112, i64 0, i32 78
  %1113 = load ptr, ptr %marker198.i, align 8
  %next_restart_num.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %1113, i64 0, i32 7
  store i32 0, ptr %next_restart_num.i, align 8
  %input_scan_number.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1112, i64 0, i32 34
  %1114 = load i32, ptr %input_scan_number.i, align 4
  %inc199.i = add nsw i32 %1114, 1
  store i32 %inc199.i, ptr %input_scan_number.i, align 4
  %1115 = load ptr, ptr %next_input_byte.i789, align 8
  %1116 = load ptr, ptr %datasrc.i788, align 8
  store ptr %1115, ptr %1116, align 8
  %1117 = load i64, ptr %bytes_in_buffer.i790, align 8
  %bytes_in_buffer201.i837 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1116, i64 0, i32 1
  store i64 %1117, ptr %bytes_in_buffer201.i837, align 8
  store i32 1, ptr %retval.i781, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit: ; preds = %if.then6.i, %if.then18.i812, %if.then33.i, %if.then70.i, %if.then86.i, %if.then136.i, %if.then152.i, %if.then168.i, %if.end172.i
  %1118 = load i32, ptr %retval.i781, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i781)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i782)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i783)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i784)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ci.i785)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i786)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %compptr.i787)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i788)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i789)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i790)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp.i791)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp181.i)
  %tobool41.not = icmp eq i32 %1118, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_9.exit
  %1119 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1119, i64 0, i32 72
  store i32 0, ptr %unread_marker44, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %if.end9
  %1120 = load ptr, ptr %cinfo.addr, align 8
  %1121 = load ptr, ptr %1120, align 8
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1121, i64 0, i32 5
  store i32 84, ptr %msg_code47, align 8
  %1122 = load ptr, ptr %1120, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1122, i64 0, i32 1
  %1123 = load ptr, ptr %emit_message, align 8
  %1124 = load ptr, ptr %cinfo.addr, align 8
  call void %1123(ptr noundef %1124, i32 noundef 1) #5
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1124, i64 0, i32 72
  store i32 0, ptr %unread_marker49, align 4
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb50:                                          ; preds = %if.end9
  %1125 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i838)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i839)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i840)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i841)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i842)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i843)
  store ptr %1125, ptr %cinfo.addr.i839, align 8
  %src.i844 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1125, i64 0, i32 5
  %1126 = load ptr, ptr %src.i844, align 8
  store ptr %1126, ptr %datasrc.i841, align 8
  %1127 = load ptr, ptr %1126, align 8
  store ptr %1127, ptr %next_input_byte.i842, align 8
  %bytes_in_buffer2.i845 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1126, i64 0, i32 1
  %1128 = load i64, ptr %bytes_in_buffer2.i845, align 8
  store i64 %1128, ptr %bytes_in_buffer.i843, align 8
  %cmp.i846 = icmp eq i64 %1128, 0
  br i1 %cmp.i846, label %if.then.i850, label %if.end6.i860

if.then.i850:                                     ; preds = %sw.bb50
  %1129 = load ptr, ptr %datasrc.i841, align 8
  %fill_input_buffer.i847 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1129, i64 0, i32 3
  %1130 = load ptr, ptr %fill_input_buffer.i847, align 8
  %1131 = load ptr, ptr %cinfo.addr.i839, align 8
  %call.i848 = call i32 %1130(ptr noundef %1131) #5
  %tobool.i849.not = icmp eq i32 %call.i848, 0
  br i1 %tobool.i849.not, label %if.then3.i851, label %if.end.i853

if.then3.i851:                                    ; preds = %if.then.i850
  store i32 0, ptr %retval.i838, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit

if.end.i853:                                      ; preds = %if.then.i850
  %1132 = load ptr, ptr %datasrc.i841, align 8
  %1133 = load ptr, ptr %1132, align 8
  store ptr %1133, ptr %next_input_byte.i842, align 8
  %bytes_in_buffer5.i852 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1132, i64 0, i32 1
  %1134 = load i64, ptr %bytes_in_buffer5.i852, align 8
  store i64 %1134, ptr %bytes_in_buffer.i843, align 8
  br label %if.end6.i860

if.end6.i860:                                     ; preds = %if.end.i853, %sw.bb50
  %1135 = load i64, ptr %bytes_in_buffer.i843, align 8
  %dec.i854 = add i64 %1135, -1
  store i64 %dec.i854, ptr %bytes_in_buffer.i843, align 8
  %1136 = load ptr, ptr %next_input_byte.i842, align 8
  %incdec.ptr.i855 = getelementptr inbounds i8, ptr %1136, i64 1
  store ptr %incdec.ptr.i855, ptr %next_input_byte.i842, align 8
  %1137 = load i8, ptr %1136, align 1
  %conv.i856 = zext i8 %1137 to i64
  %shl.i857 = shl nuw nsw i64 %conv.i856, 8
  store i64 %shl.i857, ptr %length.i840, align 8
  %1138 = load i64, ptr %bytes_in_buffer.i843, align 8
  %cmp8.i859 = icmp eq i64 %1138, 0
  br i1 %cmp8.i859, label %if.then10.i864, label %if.end18.i872

if.then10.i864:                                   ; preds = %if.end6.i860
  %1139 = load ptr, ptr %datasrc.i841, align 8
  %fill_input_buffer11.i861 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1139, i64 0, i32 3
  %1140 = load ptr, ptr %fill_input_buffer11.i861, align 8
  %1141 = load ptr, ptr %cinfo.addr.i839, align 8
  %call12.i862 = call i32 %1140(ptr noundef %1141) #5
  %tobool13.i863.not = icmp eq i32 %call12.i862, 0
  br i1 %tobool13.i863.not, label %if.then14.i865, label %if.end15.i867

if.then14.i865:                                   ; preds = %if.then10.i864
  store i32 0, ptr %retval.i838, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit

if.end15.i867:                                    ; preds = %if.then10.i864
  %1142 = load ptr, ptr %datasrc.i841, align 8
  %1143 = load ptr, ptr %1142, align 8
  store ptr %1143, ptr %next_input_byte.i842, align 8
  %bytes_in_buffer17.i866 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1142, i64 0, i32 1
  %1144 = load i64, ptr %bytes_in_buffer17.i866, align 8
  store i64 %1144, ptr %bytes_in_buffer.i843, align 8
  br label %if.end18.i872

if.end18.i872:                                    ; preds = %if.end15.i867, %if.end6.i860
  %1145 = load i64, ptr %bytes_in_buffer.i843, align 8
  %dec19.i868 = add i64 %1145, -1
  store i64 %dec19.i868, ptr %bytes_in_buffer.i843, align 8
  %1146 = load ptr, ptr %next_input_byte.i842, align 8
  %incdec.ptr20.i869 = getelementptr inbounds i8, ptr %1146, i64 1
  store ptr %incdec.ptr20.i869, ptr %next_input_byte.i842, align 8
  %1147 = load i8, ptr %1146, align 1
  %conv21.i870 = zext i8 %1147 to i64
  %1148 = load i64, ptr %length.i840, align 8
  %add.i871 = add nsw i64 %1148, %conv21.i870
  %sub.i873 = add nsw i64 %add.i871, -2
  store i64 %sub.i873, ptr %length.i840, align 8
  br label %while.cond.i874

while.cond.i874:                                  ; preds = %if.end105.i, %if.end18.i872
  %1149 = load i64, ptr %length.i840, align 8
  %cmp22.i = icmp sgt i64 %1149, 0
  br i1 %cmp22.i, label %while.body.i875, label %while.end.i893

while.body.i875:                                  ; preds = %while.cond.i874
  %1150 = load i64, ptr %bytes_in_buffer.i843, align 8
  %cmp25.i876 = icmp eq i64 %1150, 0
  br i1 %cmp25.i876, label %if.then27.i877, label %if.end35.i

if.then27.i877:                                   ; preds = %while.body.i875
  %1151 = load ptr, ptr %datasrc.i841, align 8
  %fill_input_buffer28.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1151, i64 0, i32 3
  %1152 = load ptr, ptr %fill_input_buffer28.i, align 8
  %1153 = load ptr, ptr %cinfo.addr.i839, align 8
  %call29.i = call i32 %1152(ptr noundef %1153) #5
  %tobool30.i.not = icmp eq i32 %call29.i, 0
  br i1 %tobool30.i.not, label %if.then31.i878, label %if.end32.i

if.then31.i878:                                   ; preds = %if.then27.i877
  store i32 0, ptr %retval.i838, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit

if.end32.i:                                       ; preds = %if.then27.i877
  %1154 = load ptr, ptr %datasrc.i841, align 8
  %1155 = load ptr, ptr %1154, align 8
  store ptr %1155, ptr %next_input_byte.i842, align 8
  %bytes_in_buffer34.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1154, i64 0, i32 1
  %1156 = load i64, ptr %bytes_in_buffer34.i, align 8
  store i64 %1156, ptr %bytes_in_buffer.i843, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end32.i, %while.body.i875
  %1157 = load i64, ptr %bytes_in_buffer.i843, align 8
  %dec36.i = add i64 %1157, -1
  store i64 %dec36.i, ptr %bytes_in_buffer.i843, align 8
  %1158 = load ptr, ptr %next_input_byte.i842, align 8
  %incdec.ptr37.i = getelementptr inbounds i8, ptr %1158, i64 1
  store ptr %incdec.ptr37.i, ptr %next_input_byte.i842, align 8
  %1159 = load i8, ptr %1158, align 1
  %conv38.i = zext i8 %1159 to i32
  store i32 %conv38.i, ptr %index.i, align 4
  %1160 = load i64, ptr %bytes_in_buffer.i843, align 8
  %cmp41.i = icmp eq i64 %1160, 0
  br i1 %cmp41.i, label %if.then43.i, label %if.end51.i

if.then43.i:                                      ; preds = %if.end35.i
  %1161 = load ptr, ptr %datasrc.i841, align 8
  %fill_input_buffer44.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1161, i64 0, i32 3
  %1162 = load ptr, ptr %fill_input_buffer44.i, align 8
  %1163 = load ptr, ptr %cinfo.addr.i839, align 8
  %call45.i = call i32 %1162(ptr noundef %1163) #5
  %tobool46.i.not = icmp eq i32 %call45.i, 0
  br i1 %tobool46.i.not, label %if.then47.i, label %if.end48.i

if.then47.i:                                      ; preds = %if.then43.i
  store i32 0, ptr %retval.i838, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit

if.end48.i:                                       ; preds = %if.then43.i
  %1164 = load ptr, ptr %datasrc.i841, align 8
  %1165 = load ptr, ptr %1164, align 8
  store ptr %1165, ptr %next_input_byte.i842, align 8
  %bytes_in_buffer50.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1164, i64 0, i32 1
  %1166 = load i64, ptr %bytes_in_buffer50.i, align 8
  store i64 %1166, ptr %bytes_in_buffer.i843, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end48.i, %if.end35.i
  %1167 = load i64, ptr %bytes_in_buffer.i843, align 8
  %dec52.i = add i64 %1167, -1
  store i64 %dec52.i, ptr %bytes_in_buffer.i843, align 8
  %1168 = load ptr, ptr %next_input_byte.i842, align 8
  %incdec.ptr53.i = getelementptr inbounds i8, ptr %1168, i64 1
  store ptr %incdec.ptr53.i, ptr %next_input_byte.i842, align 8
  %1169 = load i8, ptr %1168, align 1
  %conv54.i = zext i8 %1169 to i32
  store i32 %conv54.i, ptr %val.i, align 4
  %1170 = load i64, ptr %length.i840, align 8
  %sub56.i = add nsw i64 %1170, -2
  store i64 %sub56.i, ptr %length.i840, align 8
  %1171 = load ptr, ptr %cinfo.addr.i839, align 8
  %1172 = load ptr, ptr %1171, align 8
  %msg_code.i879 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1172, i64 0, i32 5
  store i32 78, ptr %msg_code.i879, align 8
  %1173 = load i32, ptr %index.i, align 4
  %1174 = load ptr, ptr %1171, align 8
  %msg_parm.i880 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1174, i64 0, i32 6
  store i32 %1173, ptr %msg_parm.i880, align 4
  %1175 = load i32, ptr %val.i, align 4
  %1176 = load ptr, ptr %cinfo.addr.i839, align 8
  %1177 = load ptr, ptr %1176, align 8
  %arrayidx60.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1177, i64 0, i32 6, i32 0, i64 1
  store i32 %1175, ptr %arrayidx60.i, align 4
  %1178 = load ptr, ptr %1176, align 8
  %emit_message.i881 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1178, i64 0, i32 1
  %1179 = load ptr, ptr %emit_message.i881, align 8
  %1180 = load ptr, ptr %cinfo.addr.i839, align 8
  call void %1179(ptr noundef %1180, i32 noundef 1) #5
  %1181 = load i32, ptr %index.i, align 4
  %cmp62.i = icmp slt i32 %1181, 0
  %1182 = load i32, ptr %index.i, align 4
  %cmp64.i882 = icmp sgt i32 %1182, 31
  %or.cond1179 = select i1 %cmp62.i, i1 true, i1 %cmp64.i882
  br i1 %or.cond1179, label %if.then66.i884, label %if.end73.i

if.then66.i884:                                   ; preds = %if.end51.i
  %1183 = load ptr, ptr %cinfo.addr.i839, align 8
  %1184 = load ptr, ptr %1183, align 8
  %msg_code68.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1184, i64 0, i32 5
  store i32 26, ptr %msg_code68.i, align 8
  %1185 = load i32, ptr %index.i, align 4
  %1186 = load ptr, ptr %1183, align 8
  %msg_parm70.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1186, i64 0, i32 6
  store i32 %1185, ptr %msg_parm70.i, align 4
  %1187 = load ptr, ptr %cinfo.addr.i839, align 8
  %1188 = load ptr, ptr %1187, align 8
  %1189 = load ptr, ptr %1188, align 8
  call void %1189(ptr noundef nonnull %1187) #5
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.end51.i, %if.then66.i884
  %1190 = load i32, ptr %index.i, align 4
  %cmp74.i = icmp sgt i32 %1190, 15
  br i1 %cmp74.i, label %if.then76.i, label %if.else.i

if.then76.i:                                      ; preds = %if.end73.i
  %1191 = load i32, ptr %val.i, align 4
  %conv77.i885 = trunc i32 %1191 to i8
  %1192 = load ptr, ptr %cinfo.addr.i839, align 8
  %1193 = load i32, ptr %index.i, align 4
  %sub78.i = add nsw i32 %1193, -16
  %idxprom.i887 = sext i32 %sub78.i to i64
  %arrayidx79.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1192, i64 0, i32 48, i64 %idxprom.i887
  store i8 %conv77.i885, ptr %arrayidx79.i, align 1
  br label %if.end105.i

if.else.i:                                        ; preds = %if.end73.i
  %1194 = load i32, ptr %val.i, align 4
  %1195 = trunc i32 %1194 to i8
  %conv80.i = and i8 %1195, 15
  %1196 = load ptr, ptr %cinfo.addr.i839, align 8
  %1197 = load i32, ptr %index.i, align 4
  %idxprom81.i = sext i32 %1197 to i64
  %arrayidx82.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1196, i64 0, i32 46, i64 %idxprom81.i
  store i8 %conv80.i, ptr %arrayidx82.i, align 1
  %1198 = load i32, ptr %val.i, align 4
  %1199 = lshr i32 %1198, 4
  %conv83.i = trunc i32 %1199 to i8
  %1200 = load ptr, ptr %cinfo.addr.i839, align 8
  %1201 = load i32, ptr %index.i, align 4
  %idxprom84.i = sext i32 %1201 to i64
  %arrayidx85.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1200, i64 0, i32 47, i64 %idxprom84.i
  store i8 %conv83.i, ptr %arrayidx85.i, align 1
  %idxprom87.i = sext i32 %1201 to i64
  %arrayidx88.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1200, i64 0, i32 46, i64 %idxprom87.i
  %1202 = load i8, ptr %arrayidx88.i, align 1
  %1203 = load ptr, ptr %cinfo.addr.i839, align 8
  %1204 = load i32, ptr %index.i, align 4
  %idxprom91.i = sext i32 %1204 to i64
  %arrayidx92.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1203, i64 0, i32 47, i64 %idxprom91.i
  %1205 = load i8, ptr %arrayidx92.i, align 1
  %cmp94.i = icmp ugt i8 %1202, %1205
  br i1 %cmp94.i, label %if.then96.i, label %if.end105.i

if.then96.i:                                      ; preds = %if.else.i
  %1206 = load ptr, ptr %cinfo.addr.i839, align 8
  %1207 = load ptr, ptr %1206, align 8
  %msg_code98.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1207, i64 0, i32 5
  store i32 27, ptr %msg_code98.i, align 8
  %1208 = load i32, ptr %val.i, align 4
  %1209 = load ptr, ptr %1206, align 8
  %msg_parm100.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1209, i64 0, i32 6
  store i32 %1208, ptr %msg_parm100.i, align 4
  %1210 = load ptr, ptr %cinfo.addr.i839, align 8
  %1211 = load ptr, ptr %1210, align 8
  %1212 = load ptr, ptr %1211, align 8
  call void %1212(ptr noundef nonnull %1210) #5
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else.i, %if.then96.i, %if.then76.i
  br label %while.cond.i874, !llvm.loop !14

while.end.i893:                                   ; preds = %while.cond.i874
  %1213 = load ptr, ptr %next_input_byte.i842, align 8
  %1214 = load ptr, ptr %datasrc.i841, align 8
  store ptr %1213, ptr %1214, align 8
  %1215 = load i64, ptr %bytes_in_buffer.i843, align 8
  %bytes_in_buffer107.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1214, i64 0, i32 1
  store i64 %1215, ptr %bytes_in_buffer107.i, align 8
  store i32 1, ptr %retval.i838, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit: ; preds = %if.then3.i851, %if.then14.i865, %if.then31.i878, %if.then47.i, %while.end.i893
  %1216 = load i32, ptr %retval.i838, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i838)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i839)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i840)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i841)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i842)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i843)
  %tobool52.not = icmp eq i32 %1216, 0
  br i1 %tobool52.not, label %if.then53, label %sw.epilog

if.then53:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb55:                                          ; preds = %if.end9
  %1217 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i894)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i895)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i896)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %bits.i)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %huffval.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i897)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i898)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %htblptr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i899)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i900)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i901)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp.i902)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp99.i)
  store ptr %1217, ptr %cinfo.addr.i895, align 8
  %src.i903 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1217, i64 0, i32 5
  %1218 = load ptr, ptr %src.i903, align 8
  store ptr %1218, ptr %datasrc.i899, align 8
  %1219 = load ptr, ptr %1218, align 8
  store ptr %1219, ptr %next_input_byte.i900, align 8
  %bytes_in_buffer2.i904 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1218, i64 0, i32 1
  %1220 = load i64, ptr %bytes_in_buffer2.i904, align 8
  store i64 %1220, ptr %bytes_in_buffer.i901, align 8
  %cmp.i905 = icmp eq i64 %1220, 0
  br i1 %cmp.i905, label %if.then.i909, label %if.end6.i919

if.then.i909:                                     ; preds = %sw.bb55
  %1221 = load ptr, ptr %datasrc.i899, align 8
  %fill_input_buffer.i906 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1221, i64 0, i32 3
  %1222 = load ptr, ptr %fill_input_buffer.i906, align 8
  %1223 = load ptr, ptr %cinfo.addr.i895, align 8
  %call.i907 = call i32 %1222(ptr noundef %1223) #5
  %tobool.i908.not = icmp eq i32 %call.i907, 0
  br i1 %tobool.i908.not, label %if.then3.i910, label %if.end.i912

if.then3.i910:                                    ; preds = %if.then.i909
  store i32 0, ptr %retval.i894, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit

if.end.i912:                                      ; preds = %if.then.i909
  %1224 = load ptr, ptr %datasrc.i899, align 8
  %1225 = load ptr, ptr %1224, align 8
  store ptr %1225, ptr %next_input_byte.i900, align 8
  %bytes_in_buffer5.i911 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1224, i64 0, i32 1
  %1226 = load i64, ptr %bytes_in_buffer5.i911, align 8
  store i64 %1226, ptr %bytes_in_buffer.i901, align 8
  br label %if.end6.i919

if.end6.i919:                                     ; preds = %if.end.i912, %sw.bb55
  %1227 = load i64, ptr %bytes_in_buffer.i901, align 8
  %dec.i913 = add i64 %1227, -1
  store i64 %dec.i913, ptr %bytes_in_buffer.i901, align 8
  %1228 = load ptr, ptr %next_input_byte.i900, align 8
  %incdec.ptr.i914 = getelementptr inbounds i8, ptr %1228, i64 1
  store ptr %incdec.ptr.i914, ptr %next_input_byte.i900, align 8
  %1229 = load i8, ptr %1228, align 1
  %conv.i915 = zext i8 %1229 to i64
  %shl.i916 = shl nuw nsw i64 %conv.i915, 8
  store i64 %shl.i916, ptr %length.i896, align 8
  %1230 = load i64, ptr %bytes_in_buffer.i901, align 8
  %cmp8.i918 = icmp eq i64 %1230, 0
  br i1 %cmp8.i918, label %if.then10.i923, label %if.end18.i931

if.then10.i923:                                   ; preds = %if.end6.i919
  %1231 = load ptr, ptr %datasrc.i899, align 8
  %fill_input_buffer11.i920 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1231, i64 0, i32 3
  %1232 = load ptr, ptr %fill_input_buffer11.i920, align 8
  %1233 = load ptr, ptr %cinfo.addr.i895, align 8
  %call12.i921 = call i32 %1232(ptr noundef %1233) #5
  %tobool13.i922.not = icmp eq i32 %call12.i921, 0
  br i1 %tobool13.i922.not, label %if.then14.i924, label %if.end15.i926

if.then14.i924:                                   ; preds = %if.then10.i923
  store i32 0, ptr %retval.i894, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit

if.end15.i926:                                    ; preds = %if.then10.i923
  %1234 = load ptr, ptr %datasrc.i899, align 8
  %1235 = load ptr, ptr %1234, align 8
  store ptr %1235, ptr %next_input_byte.i900, align 8
  %bytes_in_buffer17.i925 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1234, i64 0, i32 1
  %1236 = load i64, ptr %bytes_in_buffer17.i925, align 8
  store i64 %1236, ptr %bytes_in_buffer.i901, align 8
  br label %if.end18.i931

if.end18.i931:                                    ; preds = %if.end15.i926, %if.end6.i919
  %1237 = load i64, ptr %bytes_in_buffer.i901, align 8
  %dec19.i927 = add i64 %1237, -1
  store i64 %dec19.i927, ptr %bytes_in_buffer.i901, align 8
  %1238 = load ptr, ptr %next_input_byte.i900, align 8
  %incdec.ptr20.i928 = getelementptr inbounds i8, ptr %1238, i64 1
  store ptr %incdec.ptr20.i928, ptr %next_input_byte.i900, align 8
  %1239 = load i8, ptr %1238, align 1
  %conv21.i929 = zext i8 %1239 to i64
  %1240 = load i64, ptr %length.i896, align 8
  %add.i930 = add nsw i64 %1240, %conv21.i929
  %sub.i932 = add nsw i64 %add.i930, -2
  store i64 %sub.i932, ptr %length.i896, align 8
  br label %while.cond.i934

while.cond.i934:                                  ; preds = %if.end194.i, %if.end18.i931
  %1241 = load i64, ptr %length.i896, align 8
  %cmp22.i933 = icmp sgt i64 %1241, 0
  br i1 %cmp22.i933, label %while.body.i935, label %while.end.i970

while.body.i935:                                  ; preds = %while.cond.i934
  %1242 = load i64, ptr %bytes_in_buffer.i901, align 8
  %cmp25.i936 = icmp eq i64 %1242, 0
  br i1 %cmp25.i936, label %if.then27.i940, label %if.end35.i947

if.then27.i940:                                   ; preds = %while.body.i935
  %1243 = load ptr, ptr %datasrc.i899, align 8
  %fill_input_buffer28.i937 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1243, i64 0, i32 3
  %1244 = load ptr, ptr %fill_input_buffer28.i937, align 8
  %1245 = load ptr, ptr %cinfo.addr.i895, align 8
  %call29.i938 = call i32 %1244(ptr noundef %1245) #5
  %tobool30.i939.not = icmp eq i32 %call29.i938, 0
  br i1 %tobool30.i939.not, label %if.then31.i941, label %if.end32.i943

if.then31.i941:                                   ; preds = %if.then27.i940
  store i32 0, ptr %retval.i894, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit

if.end32.i943:                                    ; preds = %if.then27.i940
  %1246 = load ptr, ptr %datasrc.i899, align 8
  %1247 = load ptr, ptr %1246, align 8
  store ptr %1247, ptr %next_input_byte.i900, align 8
  %bytes_in_buffer34.i942 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1246, i64 0, i32 1
  %1248 = load i64, ptr %bytes_in_buffer34.i942, align 8
  store i64 %1248, ptr %bytes_in_buffer.i901, align 8
  br label %if.end35.i947

if.end35.i947:                                    ; preds = %if.end32.i943, %while.body.i935
  %1249 = load i64, ptr %bytes_in_buffer.i901, align 8
  %dec36.i944 = add i64 %1249, -1
  store i64 %dec36.i944, ptr %bytes_in_buffer.i901, align 8
  %1250 = load ptr, ptr %next_input_byte.i900, align 8
  %incdec.ptr37.i945 = getelementptr inbounds i8, ptr %1250, i64 1
  store ptr %incdec.ptr37.i945, ptr %next_input_byte.i900, align 8
  %1251 = load i8, ptr %1250, align 1
  %conv38.i946 = zext i8 %1251 to i32
  store i32 %conv38.i946, ptr %index.i898, align 4
  %1252 = load ptr, ptr %cinfo.addr.i895, align 8
  %1253 = load ptr, ptr %1252, align 8
  %msg_code.i948 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1253, i64 0, i32 5
  store i32 79, ptr %msg_code.i948, align 8
  %1254 = load ptr, ptr %1252, align 8
  %msg_parm.i949 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1254, i64 0, i32 6
  store i32 %conv38.i946, ptr %msg_parm.i949, align 4
  %1255 = load ptr, ptr %cinfo.addr.i895, align 8
  %1256 = load ptr, ptr %1255, align 8
  %emit_message.i950 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1256, i64 0, i32 1
  %1257 = load ptr, ptr %emit_message.i950, align 8
  call void %1257(ptr noundef nonnull %1255, i32 noundef 1) #5
  store i8 0, ptr %bits.i, align 1
  store i32 0, ptr %count.i, align 4
  br label %for.cond.i951

for.cond.i951:                                    ; preds = %if.end56.i955, %if.end35.i947
  %storemerge1164 = phi i32 [ 1, %if.end35.i947 ], [ %inc.i956, %if.end56.i955 ]
  store i32 %storemerge1164, ptr %i.i897, align 4
  %cmp43.i = icmp slt i32 %storemerge1164, 17
  br i1 %cmp43.i, label %for.body.i952, label %for.end.i957

for.body.i952:                                    ; preds = %for.cond.i951
  %1258 = load i64, ptr %bytes_in_buffer.i901, align 8
  %cmp46.i953 = icmp eq i64 %1258, 0
  br i1 %cmp46.i953, label %if.then48.i, label %if.end56.i955

if.then48.i:                                      ; preds = %for.body.i952
  %1259 = load ptr, ptr %datasrc.i899, align 8
  %fill_input_buffer49.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1259, i64 0, i32 3
  %1260 = load ptr, ptr %fill_input_buffer49.i, align 8
  %1261 = load ptr, ptr %cinfo.addr.i895, align 8
  %call50.i = call i32 %1260(ptr noundef %1261) #5
  %tobool51.i.not = icmp eq i32 %call50.i, 0
  br i1 %tobool51.i.not, label %if.then52.i, label %if.end53.i

if.then52.i:                                      ; preds = %if.then48.i
  store i32 0, ptr %retval.i894, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit

if.end53.i:                                       ; preds = %if.then48.i
  %1262 = load ptr, ptr %datasrc.i899, align 8
  %1263 = load ptr, ptr %1262, align 8
  store ptr %1263, ptr %next_input_byte.i900, align 8
  %bytes_in_buffer55.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1262, i64 0, i32 1
  %1264 = load i64, ptr %bytes_in_buffer55.i, align 8
  store i64 %1264, ptr %bytes_in_buffer.i901, align 8
  br label %if.end56.i955

if.end56.i955:                                    ; preds = %if.end53.i, %for.body.i952
  %1265 = load i64, ptr %bytes_in_buffer.i901, align 8
  %dec57.i = add i64 %1265, -1
  store i64 %dec57.i, ptr %bytes_in_buffer.i901, align 8
  %1266 = load ptr, ptr %next_input_byte.i900, align 8
  %incdec.ptr58.i = getelementptr inbounds i8, ptr %1266, i64 1
  store ptr %incdec.ptr58.i, ptr %next_input_byte.i900, align 8
  %1267 = load i8, ptr %1266, align 1
  %1268 = load i32, ptr %i.i897, align 4
  %idxprom.i954 = sext i32 %1268 to i64
  %arrayidx59.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 %idxprom.i954
  store i8 %1267, ptr %arrayidx59.i, align 1
  %idxprom61.i = sext i32 %1268 to i64
  %arrayidx62.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 %idxprom61.i
  %1269 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = zext i8 %1269 to i32
  %1270 = load i32, ptr %count.i, align 4
  %add64.i = add nsw i32 %1270, %conv63.i
  store i32 %add64.i, ptr %count.i, align 4
  %1271 = load i32, ptr %i.i897, align 4
  %inc.i956 = add nsw i32 %1271, 1
  br label %for.cond.i951, !llvm.loop !15

for.end.i957:                                     ; preds = %for.cond.i951
  %1272 = load i64, ptr %length.i896, align 8
  %sub65.i = add nsw i64 %1272, -17
  store i64 %sub65.i, ptr %length.i896, align 8
  %1273 = load ptr, ptr %cinfo.addr.i895, align 8
  %1274 = load ptr, ptr %1273, align 8
  %msg_parm68.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1274, i64 0, i32 6
  store ptr %msg_parm68.i, ptr %_mp.i902, align 8
  %arrayidx69.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 1
  %1275 = load i8, ptr %arrayidx69.i, align 1
  %conv70.i = zext i8 %1275 to i32
  store i32 %conv70.i, ptr %msg_parm68.i, align 4
  %arrayidx72.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 2
  %1276 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %1276 to i32
  %1277 = load ptr, ptr %_mp.i902, align 8
  %arrayidx74.i = getelementptr inbounds i32, ptr %1277, i64 1
  store i32 %conv73.i, ptr %arrayidx74.i, align 4
  %arrayidx75.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 3
  %1278 = load i8, ptr %arrayidx75.i, align 1
  %conv76.i = zext i8 %1278 to i32
  %arrayidx77.i = getelementptr inbounds i32, ptr %1277, i64 2
  store i32 %conv76.i, ptr %arrayidx77.i, align 4
  %arrayidx78.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 4
  %1279 = load i8, ptr %arrayidx78.i, align 1
  %conv79.i = zext i8 %1279 to i32
  %1280 = load ptr, ptr %_mp.i902, align 8
  %arrayidx80.i = getelementptr inbounds i32, ptr %1280, i64 3
  store i32 %conv79.i, ptr %arrayidx80.i, align 4
  %arrayidx81.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 5
  %1281 = load i8, ptr %arrayidx81.i, align 1
  %conv82.i = zext i8 %1281 to i32
  %arrayidx83.i = getelementptr inbounds i32, ptr %1280, i64 4
  store i32 %conv82.i, ptr %arrayidx83.i, align 4
  %arrayidx84.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 6
  %1282 = load i8, ptr %arrayidx84.i, align 1
  %conv85.i958 = zext i8 %1282 to i32
  %1283 = load ptr, ptr %_mp.i902, align 8
  %arrayidx86.i = getelementptr inbounds i32, ptr %1283, i64 5
  store i32 %conv85.i958, ptr %arrayidx86.i, align 4
  %arrayidx87.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 7
  %1284 = load i8, ptr %arrayidx87.i, align 1
  %conv88.i = zext i8 %1284 to i32
  %arrayidx89.i = getelementptr inbounds i32, ptr %1283, i64 6
  store i32 %conv88.i, ptr %arrayidx89.i, align 4
  %arrayidx90.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 8
  %1285 = load i8, ptr %arrayidx90.i, align 1
  %conv91.i = zext i8 %1285 to i32
  %1286 = load ptr, ptr %_mp.i902, align 8
  %arrayidx92.i959 = getelementptr inbounds i32, ptr %1286, i64 7
  store i32 %conv91.i, ptr %arrayidx92.i959, align 4
  %1287 = load ptr, ptr %cinfo.addr.i895, align 8
  %1288 = load ptr, ptr %1287, align 8
  %msg_code94.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1288, i64 0, i32 5
  store i32 85, ptr %msg_code94.i, align 8
  %1289 = load ptr, ptr %1287, align 8
  %emit_message96.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1289, i64 0, i32 1
  %1290 = load ptr, ptr %emit_message96.i, align 8
  %1291 = load ptr, ptr %cinfo.addr.i895, align 8
  call void %1290(ptr noundef %1291, i32 noundef 2) #5
  %1292 = load ptr, ptr %1291, align 8
  %msg_parm101.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1292, i64 0, i32 6
  store ptr %msg_parm101.i, ptr %_mp99.i, align 8
  %arrayidx103.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 9
  %1293 = load i8, ptr %arrayidx103.i, align 1
  %conv104.i = zext i8 %1293 to i32
  store i32 %conv104.i, ptr %msg_parm101.i, align 4
  %arrayidx106.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 10
  %1294 = load i8, ptr %arrayidx106.i, align 1
  %conv107.i = zext i8 %1294 to i32
  %1295 = load ptr, ptr %_mp99.i, align 8
  %arrayidx108.i = getelementptr inbounds i32, ptr %1295, i64 1
  store i32 %conv107.i, ptr %arrayidx108.i, align 4
  %arrayidx109.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 11
  %1296 = load i8, ptr %arrayidx109.i, align 1
  %conv110.i = zext i8 %1296 to i32
  %arrayidx111.i960 = getelementptr inbounds i32, ptr %1295, i64 2
  store i32 %conv110.i, ptr %arrayidx111.i960, align 4
  %arrayidx112.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 12
  %1297 = load i8, ptr %arrayidx112.i, align 1
  %conv113.i = zext i8 %1297 to i32
  %1298 = load ptr, ptr %_mp99.i, align 8
  %arrayidx114.i = getelementptr inbounds i32, ptr %1298, i64 3
  store i32 %conv113.i, ptr %arrayidx114.i, align 4
  %arrayidx115.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 13
  %1299 = load i8, ptr %arrayidx115.i, align 1
  %conv116.i = zext i8 %1299 to i32
  %arrayidx117.i = getelementptr inbounds i32, ptr %1298, i64 4
  store i32 %conv116.i, ptr %arrayidx117.i, align 4
  %arrayidx118.i961 = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 14
  %1300 = load i8, ptr %arrayidx118.i961, align 1
  %conv119.i = zext i8 %1300 to i32
  %1301 = load ptr, ptr %_mp99.i, align 8
  %arrayidx120.i962 = getelementptr inbounds i32, ptr %1301, i64 5
  store i32 %conv119.i, ptr %arrayidx120.i962, align 4
  %arrayidx121.i = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 15
  %1302 = load i8, ptr %arrayidx121.i, align 1
  %conv122.i = zext i8 %1302 to i32
  %arrayidx123.i = getelementptr inbounds i32, ptr %1301, i64 6
  store i32 %conv122.i, ptr %arrayidx123.i, align 4
  %arrayidx124.i963 = getelementptr inbounds [17 x i8], ptr %bits.i, i64 0, i64 16
  %1303 = load i8, ptr %arrayidx124.i963, align 1
  %conv125.i = zext i8 %1303 to i32
  %1304 = load ptr, ptr %_mp99.i, align 8
  %arrayidx126.i964 = getelementptr inbounds i32, ptr %1304, i64 7
  store i32 %conv125.i, ptr %arrayidx126.i964, align 4
  %1305 = load ptr, ptr %cinfo.addr.i895, align 8
  %1306 = load ptr, ptr %1305, align 8
  %msg_code128.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1306, i64 0, i32 5
  store i32 85, ptr %msg_code128.i, align 8
  %1307 = load ptr, ptr %1305, align 8
  %emit_message130.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1307, i64 0, i32 1
  %1308 = load ptr, ptr %emit_message130.i, align 8
  %1309 = load ptr, ptr %cinfo.addr.i895, align 8
  call void %1308(ptr noundef %1309, i32 noundef 2) #5
  %1310 = load i32, ptr %count.i, align 4
  %cmp132.i = icmp sgt i32 %1310, 256
  br i1 %cmp132.i, label %if.then137.i, label %lor.lhs.false.i965

lor.lhs.false.i965:                               ; preds = %for.end.i957
  %1311 = load i32, ptr %count.i, align 4
  %conv134.i = sext i32 %1311 to i64
  %1312 = load i64, ptr %length.i896, align 8
  %cmp135.i = icmp slt i64 %1312, %conv134.i
  br i1 %cmp135.i, label %if.then137.i, label %if.end141.i

if.then137.i:                                     ; preds = %lor.lhs.false.i965, %for.end.i957
  %1313 = load ptr, ptr %cinfo.addr.i895, align 8
  %1314 = load ptr, ptr %1313, align 8
  %msg_code139.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1314, i64 0, i32 5
  store i32 28, ptr %msg_code139.i, align 8
  %1315 = load ptr, ptr %1313, align 8
  %1316 = load ptr, ptr %1315, align 8
  call void %1316(ptr noundef nonnull %1313) #5
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then137.i, %lor.lhs.false.i965
  br label %for.cond142.i

for.cond142.i:                                    ; preds = %if.end157.i, %if.end141.i
  %storemerge1165 = phi i32 [ 0, %if.end141.i ], [ %inc164.i, %if.end157.i ]
  store i32 %storemerge1165, ptr %i.i897, align 4
  %1317 = load i32, ptr %count.i, align 4
  %cmp143.i = icmp slt i32 %storemerge1165, %1317
  br i1 %cmp143.i, label %for.body145.i, label %for.end165.i

for.body145.i:                                    ; preds = %for.cond142.i
  %1318 = load i64, ptr %bytes_in_buffer.i901, align 8
  %cmp147.i = icmp eq i64 %1318, 0
  br i1 %cmp147.i, label %if.then149.i, label %if.end157.i

if.then149.i:                                     ; preds = %for.body145.i
  %1319 = load ptr, ptr %datasrc.i899, align 8
  %fill_input_buffer150.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1319, i64 0, i32 3
  %1320 = load ptr, ptr %fill_input_buffer150.i, align 8
  %1321 = load ptr, ptr %cinfo.addr.i895, align 8
  %call151.i = call i32 %1320(ptr noundef %1321) #5
  %tobool152.i.not = icmp eq i32 %call151.i, 0
  br i1 %tobool152.i.not, label %if.then153.i, label %if.end154.i

if.then153.i:                                     ; preds = %if.then149.i
  store i32 0, ptr %retval.i894, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit

if.end154.i:                                      ; preds = %if.then149.i
  %1322 = load ptr, ptr %datasrc.i899, align 8
  %1323 = load ptr, ptr %1322, align 8
  store ptr %1323, ptr %next_input_byte.i900, align 8
  %bytes_in_buffer156.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1322, i64 0, i32 1
  %1324 = load i64, ptr %bytes_in_buffer156.i, align 8
  store i64 %1324, ptr %bytes_in_buffer.i901, align 8
  br label %if.end157.i

if.end157.i:                                      ; preds = %if.end154.i, %for.body145.i
  %1325 = load i64, ptr %bytes_in_buffer.i901, align 8
  %dec158.i = add i64 %1325, -1
  store i64 %dec158.i, ptr %bytes_in_buffer.i901, align 8
  %1326 = load ptr, ptr %next_input_byte.i900, align 8
  %incdec.ptr159.i = getelementptr inbounds i8, ptr %1326, i64 1
  store ptr %incdec.ptr159.i, ptr %next_input_byte.i900, align 8
  %1327 = load i8, ptr %1326, align 1
  %1328 = load i32, ptr %i.i897, align 4
  %idxprom160.i = sext i32 %1328 to i64
  %arrayidx161.i = getelementptr inbounds [256 x i8], ptr %huffval.i, i64 0, i64 %idxprom160.i
  store i8 %1327, ptr %arrayidx161.i, align 1
  %inc164.i = add nsw i32 %1328, 1
  br label %for.cond142.i, !llvm.loop !16

for.end165.i:                                     ; preds = %for.cond142.i
  %1329 = load i32, ptr %count.i, align 4
  %conv166.i966 = sext i32 %1329 to i64
  %1330 = load i64, ptr %length.i896, align 8
  %sub167.i = sub nsw i64 %1330, %conv166.i966
  store i64 %sub167.i, ptr %length.i896, align 8
  %1331 = load i32, ptr %index.i898, align 4
  %and.i967 = and i32 %1331, 16
  %tobool168.i.not = icmp eq i32 %and.i967, 0
  br i1 %tobool168.i.not, label %if.else.i968, label %if.then169.i

if.then169.i:                                     ; preds = %for.end165.i
  %1332 = load i32, ptr %index.i898, align 4
  %sub170.i = add nsw i32 %1332, -16
  store i32 %sub170.i, ptr %index.i898, align 4
  %1333 = load ptr, ptr %cinfo.addr.i895, align 8
  %idxprom171.i = sext i32 %sub170.i to i64
  %arrayidx172.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1333, i64 0, i32 41, i64 %idxprom171.i
  br label %if.end175.i

if.else.i968:                                     ; preds = %for.end165.i
  %1334 = load ptr, ptr %cinfo.addr.i895, align 8
  %1335 = load i32, ptr %index.i898, align 4
  %idxprom173.i = sext i32 %1335 to i64
  %arrayidx174.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1334, i64 0, i32 40, i64 %idxprom173.i
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.else.i968, %if.then169.i
  %storemerge1166 = phi ptr [ %arrayidx174.i, %if.else.i968 ], [ %arrayidx172.i, %if.then169.i ]
  store ptr %storemerge1166, ptr %htblptr.i, align 8
  %1336 = load i32, ptr %index.i898, align 4
  %cmp176.i969 = icmp slt i32 %1336, 0
  %1337 = load i32, ptr %index.i898, align 4
  %cmp179.i = icmp sgt i32 %1337, 3
  %or.cond1180 = select i1 %cmp176.i969, i1 true, i1 %cmp179.i
  br i1 %or.cond1180, label %if.then181.i, label %if.end189.i

if.then181.i:                                     ; preds = %if.end175.i
  %1338 = load ptr, ptr %cinfo.addr.i895, align 8
  %1339 = load ptr, ptr %1338, align 8
  %msg_code183.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1339, i64 0, i32 5
  store i32 29, ptr %msg_code183.i, align 8
  %1340 = load i32, ptr %index.i898, align 4
  %1341 = load ptr, ptr %1338, align 8
  %msg_parm185.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1341, i64 0, i32 6
  store i32 %1340, ptr %msg_parm185.i, align 4
  %1342 = load ptr, ptr %cinfo.addr.i895, align 8
  %1343 = load ptr, ptr %1342, align 8
  %1344 = load ptr, ptr %1343, align 8
  call void %1344(ptr noundef nonnull %1342) #5
  br label %if.end189.i

if.end189.i:                                      ; preds = %if.end175.i, %if.then181.i
  %1345 = load ptr, ptr %htblptr.i, align 8
  %1346 = load ptr, ptr %1345, align 8
  %cmp190.i = icmp eq ptr %1346, null
  br i1 %cmp190.i, label %if.then192.i, label %if.end194.i

if.then192.i:                                     ; preds = %if.end189.i
  %1347 = load ptr, ptr %cinfo.addr.i895, align 8
  %call193.i = call ptr @jpeg_alloc_huff_table(ptr noundef %1347) #5
  %1348 = load ptr, ptr %htblptr.i, align 8
  store ptr %call193.i, ptr %1348, align 8
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.then192.i, %if.end189.i
  %1349 = load ptr, ptr %htblptr.i, align 8
  %1350 = load ptr, ptr %1349, align 8
  %1351 = call i64 @llvm.objectsize.i64.p0(ptr %1350, i1 false, i1 true, i1 false)
  %call200.i = call ptr @__memcpy_chk(ptr noundef %1350, ptr noundef nonnull %bits.i, i64 noundef 17, i64 noundef %1351) #5
  %1352 = load ptr, ptr %1349, align 8
  %huffval201.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %1352, i64 0, i32 1
  %huffval204.i = getelementptr inbounds %struct.JHUFF_TBL, ptr %1352, i64 0, i32 1
  %1353 = call i64 @llvm.objectsize.i64.p0(ptr %huffval204.i, i1 false, i1 true, i1 false)
  %call206.i = call ptr @__memcpy_chk(ptr noundef nonnull %huffval201.i, ptr noundef nonnull %huffval.i, i64 noundef 256, i64 noundef %1353) #5
  br label %while.cond.i934, !llvm.loop !17

while.end.i970:                                   ; preds = %while.cond.i934
  %1354 = load ptr, ptr %next_input_byte.i900, align 8
  %1355 = load ptr, ptr %datasrc.i899, align 8
  store ptr %1354, ptr %1355, align 8
  %1356 = load i64, ptr %bytes_in_buffer.i901, align 8
  %bytes_in_buffer208.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1355, i64 0, i32 1
  store i64 %1356, ptr %bytes_in_buffer208.i, align 8
  store i32 1, ptr %retval.i894, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit: ; preds = %if.then3.i910, %if.then14.i924, %if.then31.i941, %if.then52.i, %if.then153.i, %while.end.i970
  %1357 = load i32, ptr %retval.i894, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i894)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i895)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i896)
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %bits.i)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %huffval.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i897)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i898)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %htblptr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i899)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i900)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i901)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp.i902)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp99.i)
  %tobool57.not = icmp eq i32 %1357, 0
  br i1 %tobool57.not, label %if.then58, label %sw.epilog

if.then58:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb60:                                          ; preds = %if.end9
  %1358 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i971)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i972)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i973)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i974)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i975)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prec.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %quant_ptr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i976)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i977)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i978)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_mp.i979)
  store ptr %1358, ptr %cinfo.addr.i972, align 8
  %src.i980 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1358, i64 0, i32 5
  %1359 = load ptr, ptr %src.i980, align 8
  store ptr %1359, ptr %datasrc.i976, align 8
  %1360 = load ptr, ptr %1359, align 8
  store ptr %1360, ptr %next_input_byte.i977, align 8
  %bytes_in_buffer2.i981 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1359, i64 0, i32 1
  %1361 = load i64, ptr %bytes_in_buffer2.i981, align 8
  store i64 %1361, ptr %bytes_in_buffer.i978, align 8
  %cmp.i982 = icmp eq i64 %1361, 0
  br i1 %cmp.i982, label %if.then.i986, label %if.end6.i996

if.then.i986:                                     ; preds = %sw.bb60
  %1362 = load ptr, ptr %datasrc.i976, align 8
  %fill_input_buffer.i983 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1362, i64 0, i32 3
  %1363 = load ptr, ptr %fill_input_buffer.i983, align 8
  %1364 = load ptr, ptr %cinfo.addr.i972, align 8
  %call.i984 = call i32 %1363(ptr noundef %1364) #5
  %tobool.i985.not = icmp eq i32 %call.i984, 0
  br i1 %tobool.i985.not, label %if.then3.i987, label %if.end.i989

if.then3.i987:                                    ; preds = %if.then.i986
  store i32 0, ptr %retval.i971, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit

if.end.i989:                                      ; preds = %if.then.i986
  %1365 = load ptr, ptr %datasrc.i976, align 8
  %1366 = load ptr, ptr %1365, align 8
  store ptr %1366, ptr %next_input_byte.i977, align 8
  %bytes_in_buffer5.i988 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1365, i64 0, i32 1
  %1367 = load i64, ptr %bytes_in_buffer5.i988, align 8
  store i64 %1367, ptr %bytes_in_buffer.i978, align 8
  br label %if.end6.i996

if.end6.i996:                                     ; preds = %if.end.i989, %sw.bb60
  %1368 = load i64, ptr %bytes_in_buffer.i978, align 8
  %dec.i990 = add i64 %1368, -1
  store i64 %dec.i990, ptr %bytes_in_buffer.i978, align 8
  %1369 = load ptr, ptr %next_input_byte.i977, align 8
  %incdec.ptr.i991 = getelementptr inbounds i8, ptr %1369, i64 1
  store ptr %incdec.ptr.i991, ptr %next_input_byte.i977, align 8
  %1370 = load i8, ptr %1369, align 1
  %conv.i992 = zext i8 %1370 to i64
  %shl.i993 = shl nuw nsw i64 %conv.i992, 8
  store i64 %shl.i993, ptr %length.i973, align 8
  %1371 = load i64, ptr %bytes_in_buffer.i978, align 8
  %cmp8.i995 = icmp eq i64 %1371, 0
  br i1 %cmp8.i995, label %if.then10.i1000, label %if.end18.i1008

if.then10.i1000:                                  ; preds = %if.end6.i996
  %1372 = load ptr, ptr %datasrc.i976, align 8
  %fill_input_buffer11.i997 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1372, i64 0, i32 3
  %1373 = load ptr, ptr %fill_input_buffer11.i997, align 8
  %1374 = load ptr, ptr %cinfo.addr.i972, align 8
  %call12.i998 = call i32 %1373(ptr noundef %1374) #5
  %tobool13.i999.not = icmp eq i32 %call12.i998, 0
  br i1 %tobool13.i999.not, label %if.then14.i1001, label %if.end15.i1003

if.then14.i1001:                                  ; preds = %if.then10.i1000
  store i32 0, ptr %retval.i971, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit

if.end15.i1003:                                   ; preds = %if.then10.i1000
  %1375 = load ptr, ptr %datasrc.i976, align 8
  %1376 = load ptr, ptr %1375, align 8
  store ptr %1376, ptr %next_input_byte.i977, align 8
  %bytes_in_buffer17.i1002 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1375, i64 0, i32 1
  %1377 = load i64, ptr %bytes_in_buffer17.i1002, align 8
  store i64 %1377, ptr %bytes_in_buffer.i978, align 8
  br label %if.end18.i1008

if.end18.i1008:                                   ; preds = %if.end15.i1003, %if.end6.i996
  %1378 = load i64, ptr %bytes_in_buffer.i978, align 8
  %dec19.i1004 = add i64 %1378, -1
  store i64 %dec19.i1004, ptr %bytes_in_buffer.i978, align 8
  %1379 = load ptr, ptr %next_input_byte.i977, align 8
  %incdec.ptr20.i1005 = getelementptr inbounds i8, ptr %1379, i64 1
  store ptr %incdec.ptr20.i1005, ptr %next_input_byte.i977, align 8
  %1380 = load i8, ptr %1379, align 1
  %conv21.i1006 = zext i8 %1380 to i64
  %1381 = load i64, ptr %length.i973, align 8
  %add.i1007 = add nsw i64 %1381, %conv21.i1006
  %sub.i1009 = add nsw i64 %add.i1007, -2
  store i64 %sub.i1009, ptr %length.i973, align 8
  br label %while.cond.i1011

while.cond.i1011:                                 ; preds = %if.end196.i, %if.end18.i1008
  %1382 = load i64, ptr %length.i973, align 8
  %cmp22.i1010 = icmp sgt i64 %1382, 0
  br i1 %cmp22.i1010, label %while.body.i1012, label %while.end.i1073

while.body.i1012:                                 ; preds = %while.cond.i1011
  %1383 = load i64, ptr %bytes_in_buffer.i978, align 8
  %cmp25.i1013 = icmp eq i64 %1383, 0
  br i1 %cmp25.i1013, label %if.then27.i1017, label %if.end35.i1024

if.then27.i1017:                                  ; preds = %while.body.i1012
  %1384 = load ptr, ptr %datasrc.i976, align 8
  %fill_input_buffer28.i1014 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1384, i64 0, i32 3
  %1385 = load ptr, ptr %fill_input_buffer28.i1014, align 8
  %1386 = load ptr, ptr %cinfo.addr.i972, align 8
  %call29.i1015 = call i32 %1385(ptr noundef %1386) #5
  %tobool30.i1016.not = icmp eq i32 %call29.i1015, 0
  br i1 %tobool30.i1016.not, label %if.then31.i1018, label %if.end32.i1020

if.then31.i1018:                                  ; preds = %if.then27.i1017
  store i32 0, ptr %retval.i971, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit

if.end32.i1020:                                   ; preds = %if.then27.i1017
  %1387 = load ptr, ptr %datasrc.i976, align 8
  %1388 = load ptr, ptr %1387, align 8
  store ptr %1388, ptr %next_input_byte.i977, align 8
  %bytes_in_buffer34.i1019 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1387, i64 0, i32 1
  %1389 = load i64, ptr %bytes_in_buffer34.i1019, align 8
  store i64 %1389, ptr %bytes_in_buffer.i978, align 8
  br label %if.end35.i1024

if.end35.i1024:                                   ; preds = %if.end32.i1020, %while.body.i1012
  %1390 = load i64, ptr %bytes_in_buffer.i978, align 8
  %dec36.i1021 = add i64 %1390, -1
  store i64 %dec36.i1021, ptr %bytes_in_buffer.i978, align 8
  %1391 = load ptr, ptr %next_input_byte.i977, align 8
  %incdec.ptr37.i1022 = getelementptr inbounds i8, ptr %1391, i64 1
  store ptr %incdec.ptr37.i1022, ptr %next_input_byte.i977, align 8
  %1392 = load i8, ptr %1391, align 1
  %conv38.i1023 = zext i8 %1392 to i32
  store i32 %conv38.i1023, ptr %n.i974, align 4
  %1393 = lshr i32 %conv38.i1023, 4
  store i32 %1393, ptr %prec.i, align 4
  %and.i1026 = and i32 %conv38.i1023, 15
  store i32 %and.i1026, ptr %n.i974, align 4
  %1394 = load ptr, ptr %cinfo.addr.i972, align 8
  %1395 = load ptr, ptr %1394, align 8
  %msg_code.i1027 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1395, i64 0, i32 5
  store i32 80, ptr %msg_code.i1027, align 8
  %1396 = load ptr, ptr %1394, align 8
  %msg_parm.i1028 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1396, i64 0, i32 6
  store i32 %and.i1026, ptr %msg_parm.i1028, align 4
  %1397 = load i32, ptr %prec.i, align 4
  %1398 = load ptr, ptr %cinfo.addr.i972, align 8
  %1399 = load ptr, ptr %1398, align 8
  %arrayidx43.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1399, i64 0, i32 6, i32 0, i64 1
  store i32 %1397, ptr %arrayidx43.i, align 4
  %1400 = load ptr, ptr %1398, align 8
  %emit_message.i1029 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1400, i64 0, i32 1
  %1401 = load ptr, ptr %emit_message.i1029, align 8
  %1402 = load ptr, ptr %cinfo.addr.i972, align 8
  call void %1401(ptr noundef %1402, i32 noundef 1) #5
  %1403 = load i32, ptr %n.i974, align 4
  %cmp45.i = icmp sgt i32 %1403, 3
  br i1 %cmp45.i, label %if.then47.i1030, label %if.end54.i

if.then47.i1030:                                  ; preds = %if.end35.i1024
  %1404 = load ptr, ptr %cinfo.addr.i972, align 8
  %1405 = load ptr, ptr %1404, align 8
  %msg_code49.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1405, i64 0, i32 5
  store i32 30, ptr %msg_code49.i, align 8
  %1406 = load i32, ptr %n.i974, align 4
  %1407 = load ptr, ptr %1404, align 8
  %msg_parm51.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1407, i64 0, i32 6
  store i32 %1406, ptr %msg_parm51.i, align 4
  %1408 = load ptr, ptr %cinfo.addr.i972, align 8
  %1409 = load ptr, ptr %1408, align 8
  %1410 = load ptr, ptr %1409, align 8
  call void %1410(ptr noundef nonnull %1408) #5
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then47.i1030, %if.end35.i1024
  %1411 = load ptr, ptr %cinfo.addr.i972, align 8
  %1412 = load i32, ptr %n.i974, align 4
  %idxprom.i1031 = sext i32 %1412 to i64
  %arrayidx55.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1411, i64 0, i32 39, i64 %idxprom.i1031
  %1413 = load ptr, ptr %arrayidx55.i, align 8
  %cmp56.i = icmp eq ptr %1413, null
  br i1 %cmp56.i, label %if.then58.i, label %if.end63.i

if.then58.i:                                      ; preds = %if.end54.i
  %1414 = load ptr, ptr %cinfo.addr.i972, align 8
  %call59.i = call ptr @jpeg_alloc_quant_table(ptr noundef %1414) #5
  %1415 = load i32, ptr %n.i974, align 4
  %idxprom61.i1032 = sext i32 %1415 to i64
  %arrayidx62.i1033 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1414, i64 0, i32 39, i64 %idxprom61.i1032
  store ptr %call59.i, ptr %arrayidx62.i1033, align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then58.i, %if.end54.i
  %1416 = load ptr, ptr %cinfo.addr.i972, align 8
  %1417 = load i32, ptr %n.i974, align 4
  %idxprom65.i = sext i32 %1417 to i64
  %arrayidx66.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1416, i64 0, i32 39, i64 %idxprom65.i
  %1418 = load ptr, ptr %arrayidx66.i, align 8
  store ptr %1418, ptr %quant_ptr.i, align 8
  br label %for.cond.i1034

for.cond.i1034:                                   ; preds = %if.end119.i, %if.end63.i
  %storemerge = phi i32 [ 0, %if.end63.i ], [ %inc.i1066, %if.end119.i ]
  store i32 %storemerge, ptr %i.i975, align 4
  %cmp67.i = icmp slt i32 %storemerge, 64
  br i1 %cmp67.i, label %for.body.i1036, label %for.end.i1067

for.body.i1036:                                   ; preds = %for.cond.i1034
  %1419 = load i32, ptr %prec.i, align 4
  %tobool69.i1035.not = icmp eq i32 %1419, 0
  br i1 %tobool69.i1035.not, label %if.else.i1063, label %if.then70.i1037

if.then70.i1037:                                  ; preds = %for.body.i1036
  %1420 = load i64, ptr %bytes_in_buffer.i978, align 8
  %cmp72.i1038 = icmp eq i64 %1420, 0
  br i1 %cmp72.i1038, label %if.then74.i1042, label %if.end82.i1051

if.then74.i1042:                                  ; preds = %if.then70.i1037
  %1421 = load ptr, ptr %datasrc.i976, align 8
  %fill_input_buffer75.i1039 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1421, i64 0, i32 3
  %1422 = load ptr, ptr %fill_input_buffer75.i1039, align 8
  %1423 = load ptr, ptr %cinfo.addr.i972, align 8
  %call76.i1040 = call i32 %1422(ptr noundef %1423) #5
  %tobool77.i1041.not = icmp eq i32 %call76.i1040, 0
  br i1 %tobool77.i1041.not, label %if.then78.i1043, label %if.end79.i1045

if.then78.i1043:                                  ; preds = %if.then74.i1042
  store i32 0, ptr %retval.i971, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit

if.end79.i1045:                                   ; preds = %if.then74.i1042
  %1424 = load ptr, ptr %datasrc.i976, align 8
  %1425 = load ptr, ptr %1424, align 8
  store ptr %1425, ptr %next_input_byte.i977, align 8
  %bytes_in_buffer81.i1044 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1424, i64 0, i32 1
  %1426 = load i64, ptr %bytes_in_buffer81.i1044, align 8
  store i64 %1426, ptr %bytes_in_buffer.i978, align 8
  br label %if.end82.i1051

if.end82.i1051:                                   ; preds = %if.end79.i1045, %if.then70.i1037
  %1427 = load i64, ptr %bytes_in_buffer.i978, align 8
  %dec83.i1046 = add i64 %1427, -1
  store i64 %dec83.i1046, ptr %bytes_in_buffer.i978, align 8
  %1428 = load ptr, ptr %next_input_byte.i977, align 8
  %incdec.ptr84.i1047 = getelementptr inbounds i8, ptr %1428, i64 1
  store ptr %incdec.ptr84.i1047, ptr %next_input_byte.i977, align 8
  %1429 = load i8, ptr %1428, align 1
  %conv85.i1048 = zext i8 %1429 to i32
  %shl86.i1049 = shl nuw nsw i32 %conv85.i1048, 8
  store i32 %shl86.i1049, ptr %tmp.i, align 4
  %1430 = load i64, ptr %bytes_in_buffer.i978, align 8
  %cmp87.i1050 = icmp eq i64 %1430, 0
  br i1 %cmp87.i1050, label %if.then89.i1055, label %if.end97.i1062

if.then89.i1055:                                  ; preds = %if.end82.i1051
  %1431 = load ptr, ptr %datasrc.i976, align 8
  %fill_input_buffer90.i1052 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1431, i64 0, i32 3
  %1432 = load ptr, ptr %fill_input_buffer90.i1052, align 8
  %1433 = load ptr, ptr %cinfo.addr.i972, align 8
  %call91.i1053 = call i32 %1432(ptr noundef %1433) #5
  %tobool92.i1054.not = icmp eq i32 %call91.i1053, 0
  br i1 %tobool92.i1054.not, label %if.then93.i1056, label %if.end94.i1058

if.then93.i1056:                                  ; preds = %if.then89.i1055
  store i32 0, ptr %retval.i971, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit

if.end94.i1058:                                   ; preds = %if.then89.i1055
  %1434 = load ptr, ptr %datasrc.i976, align 8
  %1435 = load ptr, ptr %1434, align 8
  store ptr %1435, ptr %next_input_byte.i977, align 8
  %bytes_in_buffer96.i1057 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1434, i64 0, i32 1
  %1436 = load i64, ptr %bytes_in_buffer96.i1057, align 8
  store i64 %1436, ptr %bytes_in_buffer.i978, align 8
  br label %if.end97.i1062

if.end97.i1062:                                   ; preds = %if.end94.i1058, %if.end82.i1051
  %1437 = load i64, ptr %bytes_in_buffer.i978, align 8
  %dec98.i1059 = add i64 %1437, -1
  store i64 %dec98.i1059, ptr %bytes_in_buffer.i978, align 8
  %1438 = load ptr, ptr %next_input_byte.i977, align 8
  %incdec.ptr99.i1060 = getelementptr inbounds i8, ptr %1438, i64 1
  store ptr %incdec.ptr99.i1060, ptr %next_input_byte.i977, align 8
  %1439 = load i8, ptr %1438, align 1
  %conv100.i1061 = zext i8 %1439 to i32
  %1440 = load i32, ptr %tmp.i, align 4
  %add101.i = add i32 %1440, %conv100.i1061
  br label %if.end119.i

if.else.i1063:                                    ; preds = %for.body.i1036
  %1441 = load i64, ptr %bytes_in_buffer.i978, align 8
  %cmp104.i = icmp eq i64 %1441, 0
  br i1 %cmp104.i, label %if.then106.i, label %if.end114.i

if.then106.i:                                     ; preds = %if.else.i1063
  %1442 = load ptr, ptr %datasrc.i976, align 8
  %fill_input_buffer107.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1442, i64 0, i32 3
  %1443 = load ptr, ptr %fill_input_buffer107.i, align 8
  %1444 = load ptr, ptr %cinfo.addr.i972, align 8
  %call108.i = call i32 %1443(ptr noundef %1444) #5
  %tobool109.i.not = icmp eq i32 %call108.i, 0
  br i1 %tobool109.i.not, label %if.then110.i, label %if.end111.i

if.then110.i:                                     ; preds = %if.then106.i
  store i32 0, ptr %retval.i971, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit

if.end111.i:                                      ; preds = %if.then106.i
  %1445 = load ptr, ptr %datasrc.i976, align 8
  %1446 = load ptr, ptr %1445, align 8
  store ptr %1446, ptr %next_input_byte.i977, align 8
  %bytes_in_buffer113.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1445, i64 0, i32 1
  %1447 = load i64, ptr %bytes_in_buffer113.i, align 8
  store i64 %1447, ptr %bytes_in_buffer.i978, align 8
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.end111.i, %if.else.i1063
  %1448 = load i64, ptr %bytes_in_buffer.i978, align 8
  %dec115.i = add i64 %1448, -1
  store i64 %dec115.i, ptr %bytes_in_buffer.i978, align 8
  %1449 = load ptr, ptr %next_input_byte.i977, align 8
  %incdec.ptr116.i = getelementptr inbounds i8, ptr %1449, i64 1
  store ptr %incdec.ptr116.i, ptr %next_input_byte.i977, align 8
  %1450 = load i8, ptr %1449, align 1
  %conv117.i = zext i8 %1450 to i32
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.end114.i, %if.end97.i1062
  %storemerge1163 = phi i32 [ %conv117.i, %if.end114.i ], [ %add101.i, %if.end97.i1062 ]
  store i32 %storemerge1163, ptr %tmp.i, align 4
  %conv120.i = trunc i32 %storemerge1163 to i16
  %1451 = load ptr, ptr %quant_ptr.i, align 8
  %1452 = load i32, ptr %i.i975, align 4
  %idxprom121.i = sext i32 %1452 to i64
  %arrayidx122.i1064 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom121.i
  %1453 = load i32, ptr %arrayidx122.i1064, align 4
  %idxprom123.i = sext i32 %1453 to i64
  %arrayidx124.i1065 = getelementptr inbounds [64 x i16], ptr %1451, i64 0, i64 %idxprom123.i
  store i16 %conv120.i, ptr %arrayidx124.i1065, align 2
  %1454 = load i32, ptr %i.i975, align 4
  %inc.i1066 = add nsw i32 %1454, 1
  br label %for.cond.i1034, !llvm.loop !18

for.end.i1067:                                    ; preds = %for.cond.i1034
  %1455 = load ptr, ptr %cinfo.addr.i972, align 8
  %1456 = load ptr, ptr %1455, align 8
  %trace_level.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1456, i64 0, i32 7
  %1457 = load i32, ptr %trace_level.i, align 4
  %cmp126.i = icmp sgt i32 %1457, 1
  br i1 %cmp126.i, label %for.cond129.i, label %if.end191.i

for.cond129.i:                                    ; preds = %for.end.i1067, %for.body132.i
  %storemerge1162 = phi i32 [ %add189.i, %for.body132.i ], [ 0, %for.end.i1067 ]
  store i32 %storemerge1162, ptr %i.i975, align 4
  %cmp130.i1068 = icmp slt i32 %storemerge1162, 64
  br i1 %cmp130.i1068, label %for.body132.i, label %if.end191.i

for.body132.i:                                    ; preds = %for.cond129.i
  %1458 = load ptr, ptr %cinfo.addr.i972, align 8
  %1459 = load ptr, ptr %1458, align 8
  %msg_parm135.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1459, i64 0, i32 6
  store ptr %msg_parm135.i, ptr %_mp.i979, align 8
  %1460 = load ptr, ptr %quant_ptr.i, align 8
  %1461 = load i32, ptr %i.i975, align 4
  %idxprom137.i = sext i32 %1461 to i64
  %arrayidx138.i = getelementptr inbounds [64 x i16], ptr %1460, i64 0, i64 %idxprom137.i
  %1462 = load i16, ptr %arrayidx138.i, align 2
  %conv139.i = zext i16 %1462 to i32
  %1463 = load ptr, ptr %_mp.i979, align 8
  store i32 %conv139.i, ptr %1463, align 4
  %1464 = load ptr, ptr %quant_ptr.i, align 8
  %1465 = load i32, ptr %i.i975, align 4
  %add142.i = add nsw i32 %1465, 1
  %idxprom143.i = sext i32 %add142.i to i64
  %arrayidx144.i = getelementptr inbounds [64 x i16], ptr %1464, i64 0, i64 %idxprom143.i
  %1466 = load i16, ptr %arrayidx144.i, align 2
  %conv145.i = zext i16 %1466 to i32
  %1467 = load ptr, ptr %_mp.i979, align 8
  %arrayidx146.i = getelementptr inbounds i32, ptr %1467, i64 1
  store i32 %conv145.i, ptr %arrayidx146.i, align 4
  %1468 = load ptr, ptr %quant_ptr.i, align 8
  %1469 = load i32, ptr %i.i975, align 4
  %add148.i = add nsw i32 %1469, 2
  %idxprom149.i = sext i32 %add148.i to i64
  %arrayidx150.i = getelementptr inbounds [64 x i16], ptr %1468, i64 0, i64 %idxprom149.i
  %1470 = load i16, ptr %arrayidx150.i, align 2
  %conv151.i = zext i16 %1470 to i32
  %1471 = load ptr, ptr %_mp.i979, align 8
  %arrayidx152.i = getelementptr inbounds i32, ptr %1471, i64 2
  store i32 %conv151.i, ptr %arrayidx152.i, align 4
  %1472 = load ptr, ptr %quant_ptr.i, align 8
  %1473 = load i32, ptr %i.i975, align 4
  %add154.i = add nsw i32 %1473, 3
  %idxprom155.i = sext i32 %add154.i to i64
  %arrayidx156.i = getelementptr inbounds [64 x i16], ptr %1472, i64 0, i64 %idxprom155.i
  %1474 = load i16, ptr %arrayidx156.i, align 2
  %conv157.i = zext i16 %1474 to i32
  %1475 = load ptr, ptr %_mp.i979, align 8
  %arrayidx158.i = getelementptr inbounds i32, ptr %1475, i64 3
  store i32 %conv157.i, ptr %arrayidx158.i, align 4
  %1476 = load ptr, ptr %quant_ptr.i, align 8
  %1477 = load i32, ptr %i.i975, align 4
  %add160.i = add nsw i32 %1477, 4
  %idxprom161.i = sext i32 %add160.i to i64
  %arrayidx162.i = getelementptr inbounds [64 x i16], ptr %1476, i64 0, i64 %idxprom161.i
  %1478 = load i16, ptr %arrayidx162.i, align 2
  %conv163.i = zext i16 %1478 to i32
  %1479 = load ptr, ptr %_mp.i979, align 8
  %arrayidx164.i = getelementptr inbounds i32, ptr %1479, i64 4
  store i32 %conv163.i, ptr %arrayidx164.i, align 4
  %1480 = load ptr, ptr %quant_ptr.i, align 8
  %1481 = load i32, ptr %i.i975, align 4
  %add166.i = add nsw i32 %1481, 5
  %idxprom167.i = sext i32 %add166.i to i64
  %arrayidx168.i = getelementptr inbounds [64 x i16], ptr %1480, i64 0, i64 %idxprom167.i
  %1482 = load i16, ptr %arrayidx168.i, align 2
  %conv169.i = zext i16 %1482 to i32
  %1483 = load ptr, ptr %_mp.i979, align 8
  %arrayidx170.i = getelementptr inbounds i32, ptr %1483, i64 5
  store i32 %conv169.i, ptr %arrayidx170.i, align 4
  %1484 = load ptr, ptr %quant_ptr.i, align 8
  %1485 = load i32, ptr %i.i975, align 4
  %add172.i = add nsw i32 %1485, 6
  %idxprom173.i1069 = sext i32 %add172.i to i64
  %arrayidx174.i1070 = getelementptr inbounds [64 x i16], ptr %1484, i64 0, i64 %idxprom173.i1069
  %1486 = load i16, ptr %arrayidx174.i1070, align 2
  %conv175.i1071 = zext i16 %1486 to i32
  %1487 = load ptr, ptr %_mp.i979, align 8
  %arrayidx176.i = getelementptr inbounds i32, ptr %1487, i64 6
  store i32 %conv175.i1071, ptr %arrayidx176.i, align 4
  %1488 = load ptr, ptr %quant_ptr.i, align 8
  %1489 = load i32, ptr %i.i975, align 4
  %add178.i = add nsw i32 %1489, 7
  %idxprom179.i = sext i32 %add178.i to i64
  %arrayidx180.i = getelementptr inbounds [64 x i16], ptr %1488, i64 0, i64 %idxprom179.i
  %1490 = load i16, ptr %arrayidx180.i, align 2
  %conv181.i = zext i16 %1490 to i32
  %1491 = load ptr, ptr %_mp.i979, align 8
  %arrayidx182.i = getelementptr inbounds i32, ptr %1491, i64 7
  store i32 %conv181.i, ptr %arrayidx182.i, align 4
  %1492 = load ptr, ptr %cinfo.addr.i972, align 8
  %1493 = load ptr, ptr %1492, align 8
  %msg_code184.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1493, i64 0, i32 5
  store i32 92, ptr %msg_code184.i, align 8
  %1494 = load ptr, ptr %1492, align 8
  %emit_message186.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1494, i64 0, i32 1
  %1495 = load ptr, ptr %emit_message186.i, align 8
  %1496 = load ptr, ptr %cinfo.addr.i972, align 8
  call void %1495(ptr noundef %1496, i32 noundef 2) #5
  %1497 = load i32, ptr %i.i975, align 4
  %add189.i = add nsw i32 %1497, 8
  br label %for.cond129.i, !llvm.loop !19

if.end191.i:                                      ; preds = %for.cond129.i, %for.end.i1067
  %1498 = load i64, ptr %length.i973, align 8
  %sub192.i = add nsw i64 %1498, -65
  store i64 %sub192.i, ptr %length.i973, align 8
  %1499 = load i32, ptr %prec.i, align 4
  %tobool193.i.not = icmp eq i32 %1499, 0
  br i1 %tobool193.i.not, label %if.end196.i, label %if.then194.i1072

if.then194.i1072:                                 ; preds = %if.end191.i
  %1500 = load i64, ptr %length.i973, align 8
  %sub195.i = add nsw i64 %1500, -64
  store i64 %sub195.i, ptr %length.i973, align 8
  br label %if.end196.i

if.end196.i:                                      ; preds = %if.then194.i1072, %if.end191.i
  br label %while.cond.i1011, !llvm.loop !20

while.end.i1073:                                  ; preds = %while.cond.i1011
  %1501 = load ptr, ptr %next_input_byte.i977, align 8
  %1502 = load ptr, ptr %datasrc.i976, align 8
  store ptr %1501, ptr %1502, align 8
  %1503 = load i64, ptr %bytes_in_buffer.i978, align 8
  %bytes_in_buffer198.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1502, i64 0, i32 1
  store i64 %1503, ptr %bytes_in_buffer198.i, align 8
  store i32 1, ptr %retval.i971, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit: ; preds = %if.then3.i987, %if.then14.i1001, %if.then31.i1018, %if.then78.i1043, %if.then93.i1056, %if.then110.i, %while.end.i1073
  %1504 = load i32, ptr %retval.i971, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i971)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i972)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i973)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i974)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i975)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prec.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %quant_ptr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i976)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i977)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i978)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_mp.i979)
  %tobool62.not = icmp eq i32 %1504, 0
  br i1 %tobool62.not, label %if.then63, label %sw.epilog

if.then63:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb65:                                          ; preds = %if.end9
  %1505 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1074)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1075)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i1076)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1077)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i1078)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i1079)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i1080)
  store ptr %1505, ptr %cinfo.addr.i1075, align 8
  %src.i1081 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1505, i64 0, i32 5
  %1506 = load ptr, ptr %src.i1081, align 8
  store ptr %1506, ptr %datasrc.i1078, align 8
  %1507 = load ptr, ptr %1506, align 8
  store ptr %1507, ptr %next_input_byte.i1079, align 8
  %bytes_in_buffer2.i1082 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1506, i64 0, i32 1
  %1508 = load i64, ptr %bytes_in_buffer2.i1082, align 8
  store i64 %1508, ptr %bytes_in_buffer.i1080, align 8
  %cmp.i1083 = icmp eq i64 %1508, 0
  br i1 %cmp.i1083, label %if.then.i1087, label %if.end6.i1097

if.then.i1087:                                    ; preds = %sw.bb65
  %1509 = load ptr, ptr %datasrc.i1078, align 8
  %fill_input_buffer.i1084 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1509, i64 0, i32 3
  %1510 = load ptr, ptr %fill_input_buffer.i1084, align 8
  %1511 = load ptr, ptr %cinfo.addr.i1075, align 8
  %call.i1085 = call i32 %1510(ptr noundef %1511) #5
  %tobool.i1086.not = icmp eq i32 %call.i1085, 0
  br i1 %tobool.i1086.not, label %if.then3.i1088, label %if.end.i1090

if.then3.i1088:                                   ; preds = %if.then.i1087
  store i32 0, ptr %retval.i1074, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit

if.end.i1090:                                     ; preds = %if.then.i1087
  %1512 = load ptr, ptr %datasrc.i1078, align 8
  %1513 = load ptr, ptr %1512, align 8
  store ptr %1513, ptr %next_input_byte.i1079, align 8
  %bytes_in_buffer5.i1089 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1512, i64 0, i32 1
  %1514 = load i64, ptr %bytes_in_buffer5.i1089, align 8
  store i64 %1514, ptr %bytes_in_buffer.i1080, align 8
  br label %if.end6.i1097

if.end6.i1097:                                    ; preds = %if.end.i1090, %sw.bb65
  %1515 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %dec.i1091 = add i64 %1515, -1
  store i64 %dec.i1091, ptr %bytes_in_buffer.i1080, align 8
  %1516 = load ptr, ptr %next_input_byte.i1079, align 8
  %incdec.ptr.i1092 = getelementptr inbounds i8, ptr %1516, i64 1
  store ptr %incdec.ptr.i1092, ptr %next_input_byte.i1079, align 8
  %1517 = load i8, ptr %1516, align 1
  %conv.i1093 = zext i8 %1517 to i64
  %shl.i1094 = shl nuw nsw i64 %conv.i1093, 8
  store i64 %shl.i1094, ptr %length.i1076, align 8
  %1518 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %cmp8.i1096 = icmp eq i64 %1518, 0
  br i1 %cmp8.i1096, label %if.then10.i1101, label %if.end18.i1109

if.then10.i1101:                                  ; preds = %if.end6.i1097
  %1519 = load ptr, ptr %datasrc.i1078, align 8
  %fill_input_buffer11.i1098 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1519, i64 0, i32 3
  %1520 = load ptr, ptr %fill_input_buffer11.i1098, align 8
  %1521 = load ptr, ptr %cinfo.addr.i1075, align 8
  %call12.i1099 = call i32 %1520(ptr noundef %1521) #5
  %tobool13.i1100.not = icmp eq i32 %call12.i1099, 0
  br i1 %tobool13.i1100.not, label %if.then14.i1102, label %if.end15.i1104

if.then14.i1102:                                  ; preds = %if.then10.i1101
  store i32 0, ptr %retval.i1074, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit

if.end15.i1104:                                   ; preds = %if.then10.i1101
  %1522 = load ptr, ptr %datasrc.i1078, align 8
  %1523 = load ptr, ptr %1522, align 8
  store ptr %1523, ptr %next_input_byte.i1079, align 8
  %bytes_in_buffer17.i1103 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1522, i64 0, i32 1
  %1524 = load i64, ptr %bytes_in_buffer17.i1103, align 8
  store i64 %1524, ptr %bytes_in_buffer.i1080, align 8
  br label %if.end18.i1109

if.end18.i1109:                                   ; preds = %if.end15.i1104, %if.end6.i1097
  %1525 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %dec19.i1105 = add i64 %1525, -1
  store i64 %dec19.i1105, ptr %bytes_in_buffer.i1080, align 8
  %1526 = load ptr, ptr %next_input_byte.i1079, align 8
  %incdec.ptr20.i1106 = getelementptr inbounds i8, ptr %1526, i64 1
  store ptr %incdec.ptr20.i1106, ptr %next_input_byte.i1079, align 8
  %1527 = load i8, ptr %1526, align 1
  %conv21.i1107 = zext i8 %1527 to i64
  %1528 = load i64, ptr %length.i1076, align 8
  %add.i1108 = add nsw i64 %1528, %conv21.i1107
  store i64 %add.i1108, ptr %length.i1076, align 8
  %cmp22.i1110.not = icmp eq i64 %add.i1108, 4
  br i1 %cmp22.i1110.not, label %if.end26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end18.i1109
  %1529 = load ptr, ptr %cinfo.addr.i1075, align 8
  %1530 = load ptr, ptr %1529, align 8
  %msg_code.i1111 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1530, i64 0, i32 5
  store i32 9, ptr %msg_code.i1111, align 8
  %1531 = load ptr, ptr %1529, align 8
  %1532 = load ptr, ptr %1531, align 8
  call void %1532(ptr noundef nonnull %1529) #5
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end18.i1109
  %1533 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %cmp28.i = icmp eq i64 %1533, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.end38.i

if.then30.i:                                      ; preds = %if.end26.i
  %1534 = load ptr, ptr %datasrc.i1078, align 8
  %fill_input_buffer31.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1534, i64 0, i32 3
  %1535 = load ptr, ptr %fill_input_buffer31.i, align 8
  %1536 = load ptr, ptr %cinfo.addr.i1075, align 8
  %call32.i = call i32 %1535(ptr noundef %1536) #5
  %tobool33.i.not = icmp eq i32 %call32.i, 0
  br i1 %tobool33.i.not, label %if.then34.i, label %if.end35.i1113

if.then34.i:                                      ; preds = %if.then30.i
  store i32 0, ptr %retval.i1074, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit

if.end35.i1113:                                   ; preds = %if.then30.i
  %1537 = load ptr, ptr %datasrc.i1078, align 8
  %1538 = load ptr, ptr %1537, align 8
  store ptr %1538, ptr %next_input_byte.i1079, align 8
  %bytes_in_buffer37.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1537, i64 0, i32 1
  %1539 = load i64, ptr %bytes_in_buffer37.i, align 8
  store i64 %1539, ptr %bytes_in_buffer.i1080, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end35.i1113, %if.end26.i
  %1540 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %dec39.i = add i64 %1540, -1
  store i64 %dec39.i, ptr %bytes_in_buffer.i1080, align 8
  %1541 = load ptr, ptr %next_input_byte.i1079, align 8
  %incdec.ptr40.i = getelementptr inbounds i8, ptr %1541, i64 1
  store ptr %incdec.ptr40.i, ptr %next_input_byte.i1079, align 8
  %1542 = load i8, ptr %1541, align 1
  %conv41.i = zext i8 %1542 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 8
  store i32 %shl42.i, ptr %tmp.i1077, align 4
  %1543 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %cmp43.i1114 = icmp eq i64 %1543, 0
  br i1 %cmp43.i1114, label %if.then45.i1115, label %if.end53.i1118

if.then45.i1115:                                  ; preds = %if.end38.i
  %1544 = load ptr, ptr %datasrc.i1078, align 8
  %fill_input_buffer46.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1544, i64 0, i32 3
  %1545 = load ptr, ptr %fill_input_buffer46.i, align 8
  %1546 = load ptr, ptr %cinfo.addr.i1075, align 8
  %call47.i = call i32 %1545(ptr noundef %1546) #5
  %tobool48.i.not = icmp eq i32 %call47.i, 0
  br i1 %tobool48.i.not, label %if.then49.i1116, label %if.end50.i1117

if.then49.i1116:                                  ; preds = %if.then45.i1115
  store i32 0, ptr %retval.i1074, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit

if.end50.i1117:                                   ; preds = %if.then45.i1115
  %1547 = load ptr, ptr %datasrc.i1078, align 8
  %1548 = load ptr, ptr %1547, align 8
  store ptr %1548, ptr %next_input_byte.i1079, align 8
  %bytes_in_buffer52.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1547, i64 0, i32 1
  %1549 = load i64, ptr %bytes_in_buffer52.i, align 8
  store i64 %1549, ptr %bytes_in_buffer.i1080, align 8
  br label %if.end53.i1118

if.end53.i1118:                                   ; preds = %if.end50.i1117, %if.end38.i
  %1550 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %dec54.i = add i64 %1550, -1
  store i64 %dec54.i, ptr %bytes_in_buffer.i1080, align 8
  %1551 = load ptr, ptr %next_input_byte.i1079, align 8
  %incdec.ptr55.i = getelementptr inbounds i8, ptr %1551, i64 1
  store ptr %incdec.ptr55.i, ptr %next_input_byte.i1079, align 8
  %1552 = load i8, ptr %1551, align 1
  %conv56.i = zext i8 %1552 to i32
  %1553 = load i32, ptr %tmp.i1077, align 4
  %add57.i = add i32 %1553, %conv56.i
  store i32 %add57.i, ptr %tmp.i1077, align 4
  %1554 = load ptr, ptr %cinfo.addr.i1075, align 8
  %1555 = load ptr, ptr %1554, align 8
  %msg_code60.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1555, i64 0, i32 5
  store i32 81, ptr %msg_code60.i, align 8
  %1556 = load ptr, ptr %1554, align 8
  %msg_parm.i1119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1556, i64 0, i32 6
  store i32 %add57.i, ptr %msg_parm.i1119, align 4
  %1557 = load ptr, ptr %cinfo.addr.i1075, align 8
  %1558 = load ptr, ptr %1557, align 8
  %emit_message.i1120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1558, i64 0, i32 1
  %1559 = load ptr, ptr %emit_message.i1120, align 8
  call void %1559(ptr noundef nonnull %1557, i32 noundef 1) #5
  %1560 = load i32, ptr %tmp.i1077, align 4
  %restart_interval.i1121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1557, i64 0, i32 49
  store i32 %1560, ptr %restart_interval.i1121, align 8
  %1561 = load ptr, ptr %next_input_byte.i1079, align 8
  %1562 = load ptr, ptr %datasrc.i1078, align 8
  store ptr %1561, ptr %1562, align 8
  %1563 = load i64, ptr %bytes_in_buffer.i1080, align 8
  %bytes_in_buffer64.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1562, i64 0, i32 1
  store i64 %1563, ptr %bytes_in_buffer64.i, align 8
  store i32 1, ptr %retval.i1074, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit: ; preds = %if.then3.i1088, %if.then14.i1102, %if.then34.i, %if.then49.i1116, %if.end53.i1118
  %1564 = load i32, ptr %retval.i1074, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1074)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1075)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i1076)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1077)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i1078)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i1079)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i1080)
  %tobool67.not = icmp eq i32 %1564, 0
  br i1 %tobool67.not, label %if.then68, label %sw.epilog

if.then68:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb70:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %1565 = load ptr, ptr %cinfo.addr, align 8
  %marker71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1565, i64 0, i32 78
  %1566 = load ptr, ptr %marker71, align 8
  %unread_marker72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1565, i64 0, i32 72
  %1567 = load i32, ptr %unread_marker72, align 4
  %sub = add nsw i32 %1567, -224
  %idxprom = sext i32 %sub to i64
  %arrayidx73 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %1566, i64 0, i32 4, i64 %idxprom
  %1568 = load ptr, ptr %arrayidx73, align 8
  %1569 = load ptr, ptr %cinfo.addr, align 8
  %call74 = call i32 %1568(ptr noundef %1569) #5
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %sw.epilog

if.then76:                                        ; preds = %sw.bb70
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb78:                                          ; preds = %if.end9
  %1570 = load ptr, ptr %cinfo.addr, align 8
  %marker79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1570, i64 0, i32 78
  %1571 = load ptr, ptr %marker79, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %1571, i64 0, i32 3
  %1572 = load ptr, ptr %process_COM, align 8
  %call80 = call i32 %1572(ptr noundef %1570) #5
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %sw.epilog

if.then82:                                        ; preds = %sw.bb78
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb84:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %1573 = load ptr, ptr %cinfo.addr, align 8
  %1574 = load ptr, ptr %1573, align 8
  %msg_code86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1574, i64 0, i32 5
  store i32 91, ptr %msg_code86, align 8
  %unread_marker87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1573, i64 0, i32 72
  %1575 = load i32, ptr %unread_marker87, align 4
  %1576 = load ptr, ptr %1573, align 8
  %msg_parm89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1576, i64 0, i32 6
  store i32 %1575, ptr %msg_parm89, align 4
  %1577 = load ptr, ptr %cinfo.addr, align 8
  %1578 = load ptr, ptr %1577, align 8
  %emit_message92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1578, i64 0, i32 1
  %1579 = load ptr, ptr %emit_message92, align 8
  call void %1579(ptr noundef nonnull %1577, i32 noundef 1) #5
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end9
  %1580 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i1122)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i1123)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %length.i1124)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i1125)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i1126)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i1127)
  store ptr %1580, ptr %cinfo.addr.i1123, align 8
  %src.i1128 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1580, i64 0, i32 5
  %1581 = load ptr, ptr %src.i1128, align 8
  store ptr %1581, ptr %datasrc.i1125, align 8
  %1582 = load ptr, ptr %1581, align 8
  store ptr %1582, ptr %next_input_byte.i1126, align 8
  %bytes_in_buffer2.i1129 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1581, i64 0, i32 1
  %1583 = load i64, ptr %bytes_in_buffer2.i1129, align 8
  store i64 %1583, ptr %bytes_in_buffer.i1127, align 8
  %cmp.i1130 = icmp eq i64 %1583, 0
  br i1 %cmp.i1130, label %if.then.i1134, label %if.end6.i1144

if.then.i1134:                                    ; preds = %sw.bb93
  %1584 = load ptr, ptr %datasrc.i1125, align 8
  %fill_input_buffer.i1131 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1584, i64 0, i32 3
  %1585 = load ptr, ptr %fill_input_buffer.i1131, align 8
  %1586 = load ptr, ptr %cinfo.addr.i1123, align 8
  %call.i1132 = call i32 %1585(ptr noundef %1586) #5
  %tobool.i1133.not = icmp eq i32 %call.i1132, 0
  br i1 %tobool.i1133.not, label %if.then3.i1135, label %if.end.i1137

if.then3.i1135:                                   ; preds = %if.then.i1134
  store i32 0, ptr %retval.i1122, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_14.exit

if.end.i1137:                                     ; preds = %if.then.i1134
  %1587 = load ptr, ptr %datasrc.i1125, align 8
  %1588 = load ptr, ptr %1587, align 8
  store ptr %1588, ptr %next_input_byte.i1126, align 8
  %bytes_in_buffer5.i1136 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1587, i64 0, i32 1
  %1589 = load i64, ptr %bytes_in_buffer5.i1136, align 8
  store i64 %1589, ptr %bytes_in_buffer.i1127, align 8
  br label %if.end6.i1144

if.end6.i1144:                                    ; preds = %if.end.i1137, %sw.bb93
  %1590 = load i64, ptr %bytes_in_buffer.i1127, align 8
  %dec.i1138 = add i64 %1590, -1
  store i64 %dec.i1138, ptr %bytes_in_buffer.i1127, align 8
  %1591 = load ptr, ptr %next_input_byte.i1126, align 8
  %incdec.ptr.i1139 = getelementptr inbounds i8, ptr %1591, i64 1
  store ptr %incdec.ptr.i1139, ptr %next_input_byte.i1126, align 8
  %1592 = load i8, ptr %1591, align 1
  %conv.i1140 = zext i8 %1592 to i64
  %shl.i1141 = shl nuw nsw i64 %conv.i1140, 8
  store i64 %shl.i1141, ptr %length.i1124, align 8
  %1593 = load i64, ptr %bytes_in_buffer.i1127, align 8
  %cmp8.i1143 = icmp eq i64 %1593, 0
  br i1 %cmp8.i1143, label %if.then10.i1148, label %if.end18.i1156

if.then10.i1148:                                  ; preds = %if.end6.i1144
  %1594 = load ptr, ptr %datasrc.i1125, align 8
  %fill_input_buffer11.i1145 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1594, i64 0, i32 3
  %1595 = load ptr, ptr %fill_input_buffer11.i1145, align 8
  %1596 = load ptr, ptr %cinfo.addr.i1123, align 8
  %call12.i1146 = call i32 %1595(ptr noundef %1596) #5
  %tobool13.i1147.not = icmp eq i32 %call12.i1146, 0
  br i1 %tobool13.i1147.not, label %if.then14.i1149, label %if.end15.i1151

if.then14.i1149:                                  ; preds = %if.then10.i1148
  store i32 0, ptr %retval.i1122, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_14.exit

if.end15.i1151:                                   ; preds = %if.then10.i1148
  %1597 = load ptr, ptr %datasrc.i1125, align 8
  %1598 = load ptr, ptr %1597, align 8
  store ptr %1598, ptr %next_input_byte.i1126, align 8
  %bytes_in_buffer17.i1150 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1597, i64 0, i32 1
  %1599 = load i64, ptr %bytes_in_buffer17.i1150, align 8
  store i64 %1599, ptr %bytes_in_buffer.i1127, align 8
  br label %if.end18.i1156

if.end18.i1156:                                   ; preds = %if.end15.i1151, %if.end6.i1144
  %1600 = load i64, ptr %bytes_in_buffer.i1127, align 8
  %dec19.i1152 = add i64 %1600, -1
  store i64 %dec19.i1152, ptr %bytes_in_buffer.i1127, align 8
  %1601 = load ptr, ptr %next_input_byte.i1126, align 8
  %incdec.ptr20.i1153 = getelementptr inbounds i8, ptr %1601, i64 1
  store ptr %incdec.ptr20.i1153, ptr %next_input_byte.i1126, align 8
  %1602 = load i8, ptr %1601, align 1
  %conv21.i1154 = zext i8 %1602 to i64
  %1603 = load i64, ptr %length.i1124, align 8
  %add.i1155 = add nsw i64 %1603, %conv21.i1154
  store i64 %add.i1155, ptr %length.i1124, align 8
  %1604 = load ptr, ptr %cinfo.addr.i1123, align 8
  %1605 = load ptr, ptr %1604, align 8
  %msg_code.i1157 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1605, i64 0, i32 5
  store i32 90, ptr %msg_code.i1157, align 8
  %unread_marker.i1158 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1604, i64 0, i32 72
  %1606 = load i32, ptr %unread_marker.i1158, align 4
  %1607 = load ptr, ptr %1604, align 8
  %msg_parm.i1159 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1607, i64 0, i32 6
  store i32 %1606, ptr %msg_parm.i1159, align 4
  %1608 = load i64, ptr %length.i1124, align 8
  %conv23.i = trunc i64 %1608 to i32
  %1609 = load ptr, ptr %cinfo.addr.i1123, align 8
  %1610 = load ptr, ptr %1609, align 8
  %arrayidx26.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1610, i64 0, i32 6, i32 0, i64 1
  store i32 %conv23.i, ptr %arrayidx26.i, align 4
  %1611 = load ptr, ptr %1609, align 8
  %emit_message.i1160 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1611, i64 0, i32 1
  %1612 = load ptr, ptr %emit_message.i1160, align 8
  %1613 = load ptr, ptr %cinfo.addr.i1123, align 8
  call void %1612(ptr noundef %1613, i32 noundef 1) #5
  %1614 = load ptr, ptr %next_input_byte.i1126, align 8
  %1615 = load ptr, ptr %datasrc.i1125, align 8
  store ptr %1614, ptr %1615, align 8
  %1616 = load i64, ptr %bytes_in_buffer.i1127, align 8
  %bytes_in_buffer29.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1615, i64 0, i32 1
  store i64 %1616, ptr %bytes_in_buffer29.i, align 8
  %1617 = load ptr, ptr %cinfo.addr.i1123, align 8
  %src30.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1617, i64 0, i32 5
  %1618 = load ptr, ptr %src30.i, align 8
  %skip_input_data.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %1618, i64 0, i32 4
  %1619 = load ptr, ptr %skip_input_data.i, align 8
  %1620 = load i64, ptr %length.i1124, align 8
  %sub.i1161 = add nsw i64 %1620, -2
  call void %1619(ptr noundef %1617, i64 noundef %sub.i1161) #5
  store i32 1, ptr %retval.i1122, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_14.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_14.exit: ; preds = %if.then3.i1135, %if.then14.i1149, %if.end18.i1156
  %1621 = load i32, ptr %retval.i1122, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i1122)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i1123)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %length.i1124)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i1125)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i1126)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i1127)
  %tobool95.not = icmp eq i32 %1621, 0
  br i1 %tobool95.not, label %if.then96, label %sw.epilog

if.then96:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_14.exit
  store i32 0, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end9
  %1622 = load ptr, ptr %cinfo.addr, align 8
  %1623 = load ptr, ptr %1622, align 8
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1623, i64 0, i32 5
  store i32 67, ptr %msg_code99, align 8
  %unread_marker100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1622, i64 0, i32 72
  %1624 = load i32, ptr %unread_marker100, align 4
  %1625 = load ptr, ptr %1622, align 8
  %msg_parm102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1625, i64 0, i32 6
  store i32 %1624, ptr %msg_parm102, align 4
  %1626 = load ptr, ptr %cinfo.addr, align 8
  %1627 = load ptr, ptr %1626, align 8
  %1628 = load ptr, ptr %1627, align 8
  call void %1628(ptr noundef nonnull %1626) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_14.exit, %sw.bb78, %sw.bb70, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_13.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_12.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_11.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_10.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_8.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_7.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_6.exit, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_5.exit, %sw.default, %sw.bb84, %sw.bb35, %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_4.exit
  %1629 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1629, i64 0, i32 72
  store i32 0, ptr %unread_marker106, align 4
  br label %for.cond

return:                                           ; preds = %if.then96, %if.then82, %if.then76, %if.then68, %if.then63, %if.then58, %if.then53, %sw.bb45, %if.end43, %if.then42, %if.then33, %if.then28, %if.then23, %if.then18, %if.then6, %if.then3
  %1630 = load i32, ptr %retval, align 4
  ret i32 %1630
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_restart_marker(ptr noundef %cinfo) #0 {
entry:
  %retval.i = alloca i32, align 4
  %cinfo.addr.i = alloca ptr, align 8
  %c.i = alloca i32, align 4
  %datasrc.i = alloca ptr, align 8
  %next_input_byte.i = alloca ptr, align 8
  %bytes_in_buffer.i = alloca i64, align 8
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %0 = load i32, ptr %unread_marker, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %datasrc.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_input_byte.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes_in_buffer.i)
  store ptr %1, ptr %cinfo.addr.i, align 8
  %src.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 5
  %2 = load ptr, ptr %src.i, align 8
  store ptr %2, ptr %datasrc.i, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %next_input_byte.i, align 8
  %bytes_in_buffer2.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i64 0, i32 1
  %4 = load i64, ptr %bytes_in_buffer2.i, align 8
  store i64 %4, ptr %bytes_in_buffer.i, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end50.i, %if.then
  %5 = load i64, ptr %bytes_in_buffer.i, align 8
  %cmp.i = icmp eq i64 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %for.cond.i
  %6 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %6, i64 0, i32 3
  %7 = load ptr, ptr %fill_input_buffer.i, align 8
  %8 = load ptr, ptr %cinfo.addr.i, align 8
  %call.i = call i32 %7(ptr noundef %8) #5
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %if.then3.i, label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_15.exit

if.end.i:                                         ; preds = %if.then.i
  %9 = load ptr, ptr %datasrc.i, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %next_input_byte.i, align 8
  %bytes_in_buffer5.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %bytes_in_buffer5.i, align 8
  store i64 %11, ptr %bytes_in_buffer.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i, %for.cond.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end22.i, %if.end6.i
  %storemerge2.in = load i64, ptr %bytes_in_buffer.i, align 8
  %storemerge2 = add i64 %storemerge2.in, -1
  store i64 %storemerge2, ptr %bytes_in_buffer.i, align 8
  %storemerge.in.in = load ptr, ptr %next_input_byte.i, align 8
  %storemerge1 = getelementptr inbounds i8, ptr %storemerge.in.in, i64 1
  store ptr %storemerge1, ptr %next_input_byte.i, align 8
  %storemerge.in = load i8, ptr %storemerge.in.in, align 1
  %storemerge = zext i8 %storemerge.in to i32
  store i32 %storemerge, ptr %c.i, align 4
  %cmp7.i.not = icmp eq i8 %storemerge.in, -1
  br i1 %cmp7.i.not, label %do.body27.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %12 = load ptr, ptr %cinfo.addr.i, align 8
  %marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 78
  %13 = load ptr, ptr %marker.i, align 8
  %discarded_bytes.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %13, i64 0, i32 8
  %14 = load i32, ptr %discarded_bytes.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %discarded_bytes.i, align 4
  %15 = load ptr, ptr %next_input_byte.i, align 8
  %16 = load ptr, ptr %datasrc.i, align 8
  store ptr %15, ptr %16, align 8
  %17 = load i64, ptr %bytes_in_buffer.i, align 8
  %bytes_in_buffer10.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %16, i64 0, i32 1
  store i64 %17, ptr %bytes_in_buffer10.i, align 8
  %cmp12.i = icmp eq i64 %17, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end22.i

if.then14.i:                                      ; preds = %while.body.i
  %18 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer15.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i64 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer15.i, align 8
  %20 = load ptr, ptr %cinfo.addr.i, align 8
  %call16.i = call i32 %19(ptr noundef %20) #5
  %tobool17.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool17.i.not, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %if.then14.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_15.exit

if.end19.i:                                       ; preds = %if.then14.i
  %21 = load ptr, ptr %datasrc.i, align 8
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %next_input_byte.i, align 8
  %bytes_in_buffer21.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %bytes_in_buffer21.i, align 8
  store i64 %23, ptr %bytes_in_buffer.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end19.i, %while.body.i
  br label %while.cond.i, !llvm.loop !6

do.body27.i:                                      ; preds = %while.cond.i, %if.end39.i
  %24 = load i64, ptr %bytes_in_buffer.i, align 8
  %cmp29.i = icmp eq i64 %24, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end39.i

if.then31.i:                                      ; preds = %do.body27.i
  %25 = load ptr, ptr %datasrc.i, align 8
  %fill_input_buffer32.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %25, i64 0, i32 3
  %26 = load ptr, ptr %fill_input_buffer32.i, align 8
  %27 = load ptr, ptr %cinfo.addr.i, align 8
  %call33.i = call i32 %26(ptr noundef %27) #5
  %tobool34.i.not = icmp eq i32 %call33.i, 0
  br i1 %tobool34.i.not, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %if.then31.i
  store i32 0, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_15.exit

if.end36.i:                                       ; preds = %if.then31.i
  %28 = load ptr, ptr %datasrc.i, align 8
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %next_input_byte.i, align 8
  %bytes_in_buffer38.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %28, i64 0, i32 1
  %30 = load i64, ptr %bytes_in_buffer38.i, align 8
  store i64 %30, ptr %bytes_in_buffer.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end36.i, %do.body27.i
  %31 = load i64, ptr %bytes_in_buffer.i, align 8
  %dec40.i = add i64 %31, -1
  store i64 %dec40.i, ptr %bytes_in_buffer.i, align 8
  %32 = load ptr, ptr %next_input_byte.i, align 8
  %incdec.ptr41.i = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr41.i, ptr %next_input_byte.i, align 8
  %33 = load i8, ptr %32, align 1
  %conv42.i = zext i8 %33 to i32
  store i32 %conv42.i, ptr %c.i, align 4
  %cmp44.i = icmp eq i8 %33, -1
  br i1 %cmp44.i, label %do.body27.i, label %do.end46.i, !llvm.loop !8

do.end46.i:                                       ; preds = %if.end39.i
  %34 = load i32, ptr %c.i, align 4
  %cmp47.i.not = icmp eq i32 %34, 0
  br i1 %cmp47.i.not, label %if.end50.i, label %if.then49.i

if.then49.i:                                      ; preds = %do.end46.i
  %35 = load ptr, ptr %cinfo.addr.i, align 8
  %marker55.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 78
  %36 = load ptr, ptr %marker55.i, align 8
  %discarded_bytes56.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %36, i64 0, i32 8
  %37 = load i32, ptr %discarded_bytes56.i, align 4
  %cmp57.i.not = icmp eq i32 %37, 0
  br i1 %cmp57.i.not, label %if.end69.i, label %if.then59.i

if.end50.i:                                       ; preds = %do.end46.i
  %38 = load ptr, ptr %cinfo.addr.i, align 8
  %marker51.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i64 0, i32 78
  %39 = load ptr, ptr %marker51.i, align 8
  %discarded_bytes52.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %39, i64 0, i32 8
  %40 = load i32, ptr %discarded_bytes52.i, align 4
  %add.i = add i32 %40, 2
  store i32 %add.i, ptr %discarded_bytes52.i, align 4
  %41 = load ptr, ptr %next_input_byte.i, align 8
  %42 = load ptr, ptr %datasrc.i, align 8
  store ptr %41, ptr %42, align 8
  %43 = load i64, ptr %bytes_in_buffer.i, align 8
  %bytes_in_buffer54.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i64 0, i32 1
  store i64 %43, ptr %bytes_in_buffer54.i, align 8
  br label %for.cond.i

if.then59.i:                                      ; preds = %if.then49.i
  %44 = load ptr, ptr %cinfo.addr.i, align 8
  %45 = load ptr, ptr %44, align 8
  %msg_code.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 112, ptr %msg_code.i, align 8
  %marker60.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i64 0, i32 78
  %46 = load ptr, ptr %marker60.i, align 8
  %discarded_bytes61.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %46, i64 0, i32 8
  %47 = load i32, ptr %discarded_bytes61.i, align 4
  %48 = load ptr, ptr %cinfo.addr.i, align 8
  %49 = load ptr, ptr %48, align 8
  %msg_parm.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 6
  store i32 %47, ptr %msg_parm.i, align 4
  %50 = load i32, ptr %c.i, align 4
  %51 = load ptr, ptr %48, align 8
  %arrayidx65.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6, i32 0, i64 1
  store i32 %50, ptr %arrayidx65.i, align 4
  %52 = load ptr, ptr %cinfo.addr.i, align 8
  %53 = load ptr, ptr %52, align 8
  %emit_message.i = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 1
  %54 = load ptr, ptr %emit_message.i, align 8
  call void %54(ptr noundef nonnull %52, i32 noundef -1) #5
  %marker67.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i64 0, i32 78
  %55 = load ptr, ptr %marker67.i, align 8
  %discarded_bytes68.i = getelementptr inbounds %struct.jpeg_marker_reader, ptr %55, i64 0, i32 8
  store i32 0, ptr %discarded_bytes68.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then59.i, %if.then49.i
  %56 = load i32, ptr %c.i, align 4
  %57 = load ptr, ptr %cinfo.addr.i, align 8
  %unread_marker.i = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i64 0, i32 72
  store i32 %56, ptr %unread_marker.i, align 4
  %58 = load ptr, ptr %next_input_byte.i, align 8
  %59 = load ptr, ptr %datasrc.i, align 8
  store ptr %58, ptr %59, align 8
  %60 = load i64, ptr %bytes_in_buffer.i, align 8
  %bytes_in_buffer71.i = getelementptr inbounds %struct.jpeg_source_mgr, ptr %59, i64 0, i32 1
  store i64 %60, ptr %bytes_in_buffer71.i, align 8
  store i32 1, ptr %retval.i, align 4
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_15.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_15.exit: ; preds = %if.then3.i, %if.then18.i, %if.then35.i, %if.end69.i
  %61 = load i32, ptr %retval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cinfo.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %datasrc.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_input_byte.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes_in_buffer.i)
  %tobool.not = icmp eq i32 %61, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_15.exit
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_15.exit, %entry
  %62 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 72
  %63 = load i32, ptr %unread_marker3, align 4
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 78
  %64 = load ptr, ptr %marker, align 8
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %64, i64 0, i32 7
  %65 = load i32, ptr %next_restart_num, align 8
  %add = add nsw i32 %65, 208
  %cmp4 = icmp eq i32 %63, %add
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  %66 = load ptr, ptr %cinfo.addr, align 8
  %67 = load ptr, ptr %66, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 5
  store i32 97, ptr %msg_code, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i64 0, i32 78
  %68 = load ptr, ptr %marker6, align 8
  %next_restart_num7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %68, i64 0, i32 7
  %69 = load i32, ptr %next_restart_num7, align 8
  %70 = load ptr, ptr %cinfo.addr, align 8
  %71 = load ptr, ptr %70, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i64 0, i32 6
  store i32 %69, ptr %msg_parm, align 4
  %72 = load ptr, ptr %70, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i64 0, i32 1
  %73 = load ptr, ptr %emit_message, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  call void %73(ptr noundef %74, i32 noundef 3) #5
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i64 0, i32 72
  store i32 0, ptr %unread_marker10, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end2
  %75 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 5
  %76 = load ptr, ptr %src, align 8
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, ptr %76, i64 0, i32 5
  %77 = load ptr, ptr %resync_to_restart, align 8
  %marker11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 78
  %78 = load ptr, ptr %marker11, align 8
  %next_restart_num12 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %78, i64 0, i32 7
  %79 = load i32, ptr %next_restart_num12, align 8
  %call13 = call i32 %77(ptr noundef %75, i32 noundef %79) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.else, %if.then5
  %80 = load ptr, ptr %cinfo.addr, align 8
  %marker18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i64 0, i32 78
  %81 = load ptr, ptr %marker18, align 8
  %next_restart_num19 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %81, i64 0, i32 7
  %82 = load i32, ptr %next_restart_num19, align 8
  %add20 = add nsw i32 %82, 1
  %and = and i32 %add20, 7
  %83 = load ptr, ptr %cinfo.addr, align 8
  %marker21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i64 0, i32 78
  %84 = load ptr, ptr %marker21, align 8
  %next_restart_num22 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %84, i64 0, i32 7
  store i32 %and, ptr %next_restart_num22, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then1
  %85 = load i32, ptr %retval, align 4
  ret i32 %85
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @skip_variable(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8
  store ptr %0, ptr %datasrc, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %next_input_byte, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %2, ptr %bytes_in_buffer, align 8
  %3 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %5(ptr noundef %6) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %datasrc, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %next_input_byte, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %9, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %10, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %11 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %12 = load i8, ptr %11, align 1
  %conv = zext i8 %12 to i64
  %shl = shl nuw nsw i64 %conv, 8
  store i64 %shl, ptr %length, align 8
  %13 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %13, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %14 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %fill_input_buffer11, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %15(ptr noundef %16) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %17 = load ptr, ptr %datasrc, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %next_input_byte, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %19, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %20 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %20, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %21 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %22 = load i8, ptr %21, align 1
  %conv21 = zext i8 %22 to i64
  %23 = load i64, ptr %length, align 8
  %add = add nsw i64 %23, %conv21
  store i64 %add, ptr %length, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 90, ptr %msg_code, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 72
  %26 = load i32, ptr %unread_marker, align 4
  %27 = load ptr, ptr %24, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 6
  store i32 %26, ptr %msg_parm, align 4
  %28 = load i64, ptr %length, align 8
  %conv23 = trunc i64 %28 to i32
  %29 = load ptr, ptr %cinfo.addr, align 8
  %30 = load ptr, ptr %29, align 8
  %arrayidx26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i64 0, i32 6, i32 0, i64 1
  store i32 %conv23, ptr %arrayidx26, align 4
  %31 = load ptr, ptr %29, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 1
  %32 = load ptr, ptr %emit_message, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void %32(ptr noundef %33, i32 noundef 1) #5
  %34 = load ptr, ptr %next_input_byte, align 8
  %35 = load ptr, ptr %datasrc, align 8
  store ptr %34, ptr %35, align 8
  %36 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer29 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %35, i64 0, i32 1
  store i64 %36, ptr %bytes_in_buffer29, align 8
  %37 = load ptr, ptr %cinfo.addr, align 8
  %src30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 5
  %38 = load ptr, ptr %src30, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %38, i64 0, i32 4
  %39 = load ptr, ptr %skip_input_data, align 8
  %40 = load i64, ptr %length, align 8
  %sub = add nsw i64 %40, -2
  call void %39(ptr noundef %37, i64 noundef %sub) #5
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then14, %if.then3
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_app0(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %b = alloca [14 x i8], align 1
  %buffp = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8
  store ptr %0, ptr %datasrc, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %next_input_byte, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %2, ptr %bytes_in_buffer, align 8
  %3 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %5(ptr noundef %6) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %datasrc, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %next_input_byte, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %9, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %10, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %11 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %12 = load i8, ptr %11, align 1
  %conv = zext i8 %12 to i64
  %shl = shl nuw nsw i64 %conv, 8
  store i64 %shl, ptr %length, align 8
  %13 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %13, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %14 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %fill_input_buffer11, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %15(ptr noundef %16) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %17 = load ptr, ptr %datasrc, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %next_input_byte, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %19, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %20 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %20, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %21 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %22 = load i8, ptr %21, align 1
  %conv21 = zext i8 %22 to i64
  %23 = load i64, ptr %length, align 8
  %add = add nsw i64 %23, %conv21
  store i64 %add, ptr %length, align 8
  %24 = load i64, ptr %length, align 8
  %sub = add nsw i64 %24, -2
  store i64 %sub, ptr %length, align 8
  %cmp22 = icmp sgt i64 %24, 15
  br i1 %cmp22, label %for.cond, label %if.else184

for.cond:                                         ; preds = %if.end18, %if.end38
  %storemerge = phi i32 [ %inc, %if.end38 ], [ 0, %if.end18 ]
  store i32 %storemerge, ptr %buffp, align 4
  %cmp25 = icmp slt i32 %storemerge, 14
  br i1 %cmp25, label %do.body27, label %for.end

do.body27:                                        ; preds = %for.cond
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %25, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %do.body27
  %26 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %26, i64 0, i32 3
  %27 = load ptr, ptr %fill_input_buffer31, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %call32 = call i32 %27(ptr noundef %28) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then30
  %29 = load ptr, ptr %datasrc, align 8
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %next_input_byte, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %bytes_in_buffer37, align 8
  store i64 %31, ptr %bytes_in_buffer, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %do.body27
  %32 = load i64, ptr %bytes_in_buffer, align 8
  %dec39 = add i64 %32, -1
  store i64 %dec39, ptr %bytes_in_buffer, align 8
  %33 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr40, ptr %next_input_byte, align 8
  %34 = load i8, ptr %33, align 1
  %35 = load i32, ptr %buffp, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 %idxprom
  store i8 %34, ptr %arrayidx, align 1
  %36 = load i32, ptr %buffp, align 4
  %inc = add nsw i32 %36, 1
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %37 = load i64, ptr %length, align 8
  %sub42 = add nsw i64 %37, -14
  store i64 %sub42, ptr %length, align 8
  %38 = load i8, ptr %b, align 1
  %cmp45 = icmp eq i8 %38, 74
  %arrayidx47 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 1
  %39 = load i8, ptr %arrayidx47, align 1
  %cmp49 = icmp eq i8 %39, 70
  %or.cond = select i1 %cmp45, i1 %cmp49, i1 false
  %arrayidx52 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 2
  %40 = load i8, ptr %arrayidx52, align 1
  %cmp54 = icmp eq i8 %40, 73
  %or.cond2 = select i1 %or.cond, i1 %cmp54, i1 false
  %arrayidx57 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 3
  %41 = load i8, ptr %arrayidx57, align 1
  %cmp59 = icmp eq i8 %41, 70
  %or.cond3 = select i1 %or.cond2, i1 %cmp59, i1 false
  %arrayidx62 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 4
  %42 = load i8, ptr %arrayidx62, align 1
  %cmp64 = icmp eq i8 %42, 0
  %or.cond4 = select i1 %or.cond3, i1 %cmp64, i1 false
  br i1 %or.cond4, label %if.then66, label %if.else173

if.then66:                                        ; preds = %for.end
  %arrayidx67 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 5
  %43 = load i8, ptr %arrayidx67, align 1
  %cmp69.not = icmp eq i8 %43, 1
  br i1 %cmp69.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.then66
  %44 = load ptr, ptr %cinfo.addr, align 8
  %45 = load ptr, ptr %44, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 115, ptr %msg_code, align 8
  %arrayidx72 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 5
  %46 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %46 to i32
  %47 = load ptr, ptr %cinfo.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 6
  store i32 %conv73, ptr %msg_parm, align 4
  %arrayidx76 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 6
  %49 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %49 to i32
  %50 = load ptr, ptr %cinfo.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %arrayidx80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6, i32 0, i64 1
  store i32 %conv77, ptr %arrayidx80, align 4
  %52 = load ptr, ptr %50, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 1
  %53 = load ptr, ptr %emit_message, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  call void %53(ptr noundef %54, i32 noundef -1) #5
  br label %if.end102

if.else:                                          ; preds = %if.then66
  %arrayidx82 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 6
  %55 = load i8, ptr %arrayidx82, align 1
  %cmp84 = icmp ugt i8 %55, 2
  br i1 %cmp84, label %if.then86, label %if.end102

if.then86:                                        ; preds = %if.else
  %56 = load ptr, ptr %cinfo.addr, align 8
  %57 = load ptr, ptr %56, align 8
  %msg_code88 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 88, ptr %msg_code88, align 8
  %arrayidx89 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 5
  %58 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %58 to i32
  %59 = load ptr, ptr %cinfo.addr, align 8
  %60 = load ptr, ptr %59, align 8
  %msg_parm92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 6
  store i32 %conv90, ptr %msg_parm92, align 4
  %arrayidx94 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 6
  %61 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %61 to i32
  %62 = load ptr, ptr %cinfo.addr, align 8
  %63 = load ptr, ptr %62, align 8
  %arrayidx98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 6, i32 0, i64 1
  store i32 %conv95, ptr %arrayidx98, align 4
  %64 = load ptr, ptr %62, align 8
  %emit_message100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i64 0, i32 1
  %65 = load ptr, ptr %emit_message100, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  call void %65(ptr noundef %66, i32 noundef 1) #5
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then86, %if.then71
  %67 = load ptr, ptr %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i64 0, i32 50
  store i32 1, ptr %saw_JFIF_marker, align 4
  %arrayidx103 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 7
  %68 = load i8, ptr %arrayidx103, align 1
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i64 0, i32 51
  store i8 %68, ptr %density_unit, align 8
  %arrayidx104 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 8
  %69 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %69 to i16
  %shl106 = shl nuw i16 %conv105, 8
  %arrayidx107 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 9
  %70 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %70 to i16
  %add109 = or i16 %shl106, %conv108
  %71 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %71, i64 0, i32 52
  store i16 %add109, ptr %X_density, align 2
  %arrayidx111 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 10
  %72 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %72 to i16
  %shl113 = shl nuw i16 %conv112, 8
  %arrayidx114 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 11
  %73 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %73 to i16
  %add116 = or i16 %shl113, %conv115
  %74 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i64 0, i32 53
  store i16 %add116, ptr %Y_density, align 4
  %75 = load ptr, ptr %cinfo.addr, align 8
  %76 = load ptr, ptr %75, align 8
  %msg_parm120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 6
  store ptr %msg_parm120, ptr %_mp, align 8
  %X_density121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i64 0, i32 52
  %77 = load i16, ptr %X_density121, align 2
  %conv122 = zext i16 %77 to i32
  store i32 %conv122, ptr %msg_parm120, align 4
  %78 = load ptr, ptr %cinfo.addr, align 8
  %Y_density124 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %78, i64 0, i32 53
  %79 = load i16, ptr %Y_density124, align 4
  %conv125 = zext i16 %79 to i32
  %80 = load ptr, ptr %_mp, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %80, i64 1
  store i32 %conv125, ptr %arrayidx126, align 4
  %81 = load ptr, ptr %cinfo.addr, align 8
  %density_unit127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i64 0, i32 51
  %82 = load i8, ptr %density_unit127, align 8
  %conv128 = zext i8 %82 to i32
  %83 = load ptr, ptr %_mp, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %83, i64 2
  store i32 %conv128, ptr %arrayidx129, align 4
  %84 = load ptr, ptr %cinfo.addr, align 8
  %85 = load ptr, ptr %84, align 8
  %msg_code131 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i64 0, i32 5
  store i32 86, ptr %msg_code131, align 8
  %86 = load ptr, ptr %84, align 8
  %emit_message133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 1
  %87 = load ptr, ptr %emit_message133, align 8
  %88 = load ptr, ptr %cinfo.addr, align 8
  call void %87(ptr noundef %88, i32 noundef 1) #5
  %arrayidx135 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 12
  %89 = load i8, ptr %arrayidx135, align 1
  %arrayidx137 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 13
  %90 = load i8, ptr %arrayidx137, align 1
  %or1 = or i8 %89, %90
  %tobool139.not = icmp eq i8 %or1, 0
  br i1 %tobool139.not, label %if.end155, label %if.then140

if.then140:                                       ; preds = %if.end102
  %91 = load ptr, ptr %cinfo.addr, align 8
  %92 = load ptr, ptr %91, align 8
  %msg_code142 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 89, ptr %msg_code142, align 8
  %arrayidx143 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 12
  %93 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %93 to i32
  %94 = load ptr, ptr %cinfo.addr, align 8
  %95 = load ptr, ptr %94, align 8
  %msg_parm146 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 6
  store i32 %conv144, ptr %msg_parm146, align 4
  %arrayidx148 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 13
  %96 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %96 to i32
  %97 = load ptr, ptr %cinfo.addr, align 8
  %98 = load ptr, ptr %97, align 8
  %arrayidx152 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 6, i32 0, i64 1
  store i32 %conv149, ptr %arrayidx152, align 4
  %99 = load ptr, ptr %97, align 8
  %emit_message154 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 1
  %100 = load ptr, ptr %emit_message154, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  call void %100(ptr noundef %101, i32 noundef 1) #5
  br label %if.end155

if.end155:                                        ; preds = %if.then140, %if.end102
  %102 = load i64, ptr %length, align 8
  %arrayidx156 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 12
  %103 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %103 to i64
  %arrayidx158 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 13
  %104 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %104 to i64
  %mul = mul nuw nsw i64 %conv157, %conv159
  %mul160 = mul nuw nsw i64 %mul, 3
  %cmp161.not = icmp eq i64 %102, %mul160
  br i1 %cmp161.not, label %if.end193, label %if.then163

if.then163:                                       ; preds = %if.end155
  %105 = load ptr, ptr %cinfo.addr, align 8
  %106 = load ptr, ptr %105, align 8
  %msg_code165 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i64 0, i32 5
  store i32 87, ptr %msg_code165, align 8
  %107 = load i64, ptr %length, align 8
  %conv166 = trunc i64 %107 to i32
  %108 = load ptr, ptr %105, align 8
  %msg_parm168 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 6
  store i32 %conv166, ptr %msg_parm168, align 4
  %109 = load ptr, ptr %cinfo.addr, align 8
  %110 = load ptr, ptr %109, align 8
  %emit_message171 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i64 0, i32 1
  %111 = load ptr, ptr %emit_message171, align 8
  call void %111(ptr noundef nonnull %109, i32 noundef 1) #5
  br label %if.end193

if.else173:                                       ; preds = %for.end
  %112 = load ptr, ptr %cinfo.addr, align 8
  %113 = load ptr, ptr %112, align 8
  %msg_code175 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 76, ptr %msg_code175, align 8
  %114 = load i64, ptr %length, align 8
  %conv176 = trunc i64 %114 to i32
  %add177 = add nsw i32 %conv176, 14
  %115 = load ptr, ptr %cinfo.addr, align 8
  %116 = load ptr, ptr %115, align 8
  %msg_parm179 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %116, i64 0, i32 6
  store i32 %add177, ptr %msg_parm179, align 4
  %117 = load ptr, ptr %115, align 8
  %emit_message182 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i64 0, i32 1
  %118 = load ptr, ptr %emit_message182, align 8
  %119 = load ptr, ptr %cinfo.addr, align 8
  call void %118(ptr noundef %119, i32 noundef 1) #5
  br label %if.end193

if.else184:                                       ; preds = %if.end18
  %120 = load ptr, ptr %cinfo.addr, align 8
  %121 = load ptr, ptr %120, align 8
  %msg_code186 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 5
  store i32 76, ptr %msg_code186, align 8
  %122 = load i64, ptr %length, align 8
  %conv187 = trunc i64 %122 to i32
  %123 = load ptr, ptr %120, align 8
  %msg_parm189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i64 0, i32 6
  store i32 %conv187, ptr %msg_parm189, align 4
  %124 = load ptr, ptr %cinfo.addr, align 8
  %125 = load ptr, ptr %124, align 8
  %emit_message192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %125, i64 0, i32 1
  %126 = load ptr, ptr %emit_message192, align 8
  call void %126(ptr noundef nonnull %124, i32 noundef 1) #5
  br label %if.end193

if.end193:                                        ; preds = %if.else173, %if.then163, %if.end155, %if.else184
  %127 = load ptr, ptr %next_input_byte, align 8
  %128 = load ptr, ptr %datasrc, align 8
  store ptr %127, ptr %128, align 8
  %129 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer195 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %128, i64 0, i32 1
  store i64 %129, ptr %bytes_in_buffer195, align 8
  %130 = load i64, ptr %length, align 8
  %cmp196 = icmp sgt i64 %130, 0
  br i1 %cmp196, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.end193
  %131 = load ptr, ptr %cinfo.addr, align 8
  %src199 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %131, i64 0, i32 5
  %132 = load ptr, ptr %src199, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %132, i64 0, i32 4
  %133 = load ptr, ptr %skip_input_data, align 8
  %134 = load i64, ptr %length, align 8
  call void %133(ptr noundef %131, i64 noundef %134) #5
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.end193
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end200, %if.then34, %if.then14, %if.then3
  %135 = load i32, ptr %retval, align 4
  ret i32 %135
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_app14(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %b = alloca [12 x i8], align 1
  %buffp = alloca i32, align 4
  %version = alloca i32, align 4
  %flags0 = alloca i32, align 4
  %flags1 = alloca i32, align 4
  %transform = alloca i32, align 4
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8
  store ptr %0, ptr %datasrc, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %next_input_byte, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %2, ptr %bytes_in_buffer, align 8
  %3 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %5(ptr noundef %6) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %datasrc, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %next_input_byte, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %9, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %10, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %11 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %12 = load i8, ptr %11, align 1
  %conv = zext i8 %12 to i64
  %shl = shl nuw nsw i64 %conv, 8
  store i64 %shl, ptr %length, align 8
  %13 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %13, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %14 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %fill_input_buffer11, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %15(ptr noundef %16) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %17 = load ptr, ptr %datasrc, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %next_input_byte, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %19, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %20 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %20, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %21 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %22 = load i8, ptr %21, align 1
  %conv21 = zext i8 %22 to i64
  %23 = load i64, ptr %length, align 8
  %add = add nsw i64 %23, %conv21
  store i64 %add, ptr %length, align 8
  %24 = load i64, ptr %length, align 8
  %sub = add nsw i64 %24, -2
  store i64 %sub, ptr %length, align 8
  %cmp22 = icmp sgt i64 %24, 13
  br i1 %cmp22, label %for.cond, label %if.else106

for.cond:                                         ; preds = %if.end18, %if.end38
  %storemerge = phi i32 [ %inc, %if.end38 ], [ 0, %if.end18 ]
  store i32 %storemerge, ptr %buffp, align 4
  %cmp25 = icmp slt i32 %storemerge, 12
  br i1 %cmp25, label %do.body27, label %for.end

do.body27:                                        ; preds = %for.cond
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %25, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %do.body27
  %26 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %26, i64 0, i32 3
  %27 = load ptr, ptr %fill_input_buffer31, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %call32 = call i32 %27(ptr noundef %28) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then30
  %29 = load ptr, ptr %datasrc, align 8
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %next_input_byte, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i64 0, i32 1
  %31 = load i64, ptr %bytes_in_buffer37, align 8
  store i64 %31, ptr %bytes_in_buffer, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %do.body27
  %32 = load i64, ptr %bytes_in_buffer, align 8
  %dec39 = add i64 %32, -1
  store i64 %dec39, ptr %bytes_in_buffer, align 8
  %33 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %incdec.ptr40, ptr %next_input_byte, align 8
  %34 = load i8, ptr %33, align 1
  %35 = load i32, ptr %buffp, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 %idxprom
  store i8 %34, ptr %arrayidx, align 1
  %36 = load i32, ptr %buffp, align 4
  %inc = add nsw i32 %36, 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %37 = load i64, ptr %length, align 8
  %sub42 = add nsw i64 %37, -12
  store i64 %sub42, ptr %length, align 8
  %38 = load i8, ptr %b, align 1
  %cmp45 = icmp eq i8 %38, 65
  %arrayidx47 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 1
  %39 = load i8, ptr %arrayidx47, align 1
  %cmp49 = icmp eq i8 %39, 100
  %or.cond = select i1 %cmp45, i1 %cmp49, i1 false
  %arrayidx52 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 2
  %40 = load i8, ptr %arrayidx52, align 1
  %cmp54 = icmp eq i8 %40, 111
  %or.cond1 = select i1 %or.cond, i1 %cmp54, i1 false
  %arrayidx57 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 3
  %41 = load i8, ptr %arrayidx57, align 1
  %cmp59 = icmp eq i8 %41, 98
  %or.cond2 = select i1 %or.cond1, i1 %cmp59, i1 false
  %arrayidx62 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 4
  %42 = load i8, ptr %arrayidx62, align 1
  %cmp64 = icmp eq i8 %42, 101
  %or.cond3 = select i1 %or.cond2, i1 %cmp64, i1 false
  br i1 %or.cond3, label %if.then66, label %if.else

if.then66:                                        ; preds = %for.end
  %arrayidx67 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 5
  %43 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %43 to i32
  %shl69 = shl nuw nsw i32 %conv68, 8
  %arrayidx70 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 6
  %44 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %44 to i32
  %add72 = or i32 %shl69, %conv71
  store i32 %add72, ptr %version, align 4
  %arrayidx73 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 7
  %45 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %45 to i32
  %shl75 = shl nuw nsw i32 %conv74, 8
  %arrayidx76 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 8
  %46 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %46 to i32
  %add78 = or i32 %shl75, %conv77
  store i32 %add78, ptr %flags0, align 4
  %arrayidx79 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 9
  %47 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %47 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %arrayidx82 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 10
  %48 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %48 to i32
  %add84 = or i32 %shl81, %conv83
  store i32 %add84, ptr %flags1, align 4
  %arrayidx85 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 11
  %49 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %49 to i32
  store i32 %conv86, ptr %transform, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6
  store ptr %msg_parm, ptr %_mp, align 8
  %52 = load i32, ptr %version, align 4
  store i32 %52, ptr %msg_parm, align 4
  %53 = load i32, ptr %flags0, align 4
  %arrayidx89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6, i32 0, i64 1
  store i32 %53, ptr %arrayidx89, align 4
  %54 = load i32, ptr %flags1, align 4
  %55 = load ptr, ptr %_mp, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %55, i64 2
  store i32 %54, ptr %arrayidx90, align 4
  %56 = load i32, ptr %transform, align 4
  %arrayidx91 = getelementptr inbounds i32, ptr %55, i64 3
  store i32 %56, ptr %arrayidx91, align 4
  %57 = load ptr, ptr %cinfo.addr, align 8
  %58 = load ptr, ptr %57, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 75, ptr %msg_code, align 8
  %59 = load ptr, ptr %57, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 1
  %60 = load ptr, ptr %emit_message, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  call void %60(ptr noundef %61, i32 noundef 1) #5
  %62 = load ptr, ptr %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 54
  store i32 1, ptr %saw_Adobe_marker, align 8
  %63 = load i32, ptr %transform, align 4
  %conv95 = trunc i32 %63 to i8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 55
  store i8 %conv95, ptr %Adobe_transform, align 4
  br label %if.end115

if.else:                                          ; preds = %for.end
  %64 = load ptr, ptr %cinfo.addr, align 8
  %65 = load ptr, ptr %64, align 8
  %msg_code97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 77, ptr %msg_code97, align 8
  %66 = load i64, ptr %length, align 8
  %conv98 = trunc i64 %66 to i32
  %add99 = add nsw i32 %conv98, 12
  %67 = load ptr, ptr %cinfo.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 6
  store i32 %add99, ptr %msg_parm101, align 4
  %69 = load ptr, ptr %67, align 8
  %emit_message104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i64 0, i32 1
  %70 = load ptr, ptr %emit_message104, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  call void %70(ptr noundef %71, i32 noundef 1) #5
  br label %if.end115

if.else106:                                       ; preds = %if.end18
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %msg_code108 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 77, ptr %msg_code108, align 8
  %74 = load i64, ptr %length, align 8
  %conv109 = trunc i64 %74 to i32
  %75 = load ptr, ptr %72, align 8
  %msg_parm111 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %75, i64 0, i32 6
  store i32 %conv109, ptr %msg_parm111, align 4
  %76 = load ptr, ptr %cinfo.addr, align 8
  %77 = load ptr, ptr %76, align 8
  %emit_message114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 1
  %78 = load ptr, ptr %emit_message114, align 8
  call void %78(ptr noundef nonnull %76, i32 noundef 1) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then66, %if.else, %if.else106
  %79 = load ptr, ptr %next_input_byte, align 8
  %80 = load ptr, ptr %datasrc, align 8
  store ptr %79, ptr %80, align 8
  %81 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer117 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %80, i64 0, i32 1
  store i64 %81, ptr %bytes_in_buffer117, align 8
  %82 = load i64, ptr %length, align 8
  %cmp118 = icmp sgt i64 %82, 0
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end115
  %83 = load ptr, ptr %cinfo.addr, align 8
  %src121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i64 0, i32 5
  %84 = load ptr, ptr %src121, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %84, i64 0, i32 4
  %85 = load ptr, ptr %skip_input_data, align 8
  %86 = load i64, ptr %length, align 8
  call void %85(ptr noundef %83, i64 noundef %86) #5
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end115
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end122, %if.then34, %if.then14, %if.then3
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!22 = distinct !{!22, !7}
