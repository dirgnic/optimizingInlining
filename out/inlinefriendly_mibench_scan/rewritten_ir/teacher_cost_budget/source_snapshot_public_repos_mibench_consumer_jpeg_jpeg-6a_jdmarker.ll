; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_cost_budget/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdmarker.prepared.ll'
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
  call void %8(ptr noundef nonnull %6, i32 noundef -1) #4
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
  call void %28(ptr noundef %29, i32 noundef 4) #4
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
  %call = call i32 @next_marker(ptr noundef %32)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.bb43
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %sw.bb43
  %33 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 72
  %34 = load i32, ptr %unread_marker46, align 4
  store i32 %34, ptr %marker, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end31
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end45, %if.end31
  br label %for.cond

return:                                           ; preds = %sw.bb47, %if.then44, %sw.bb
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @next_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %c = alloca i32, align 4
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
  br label %for.cond

for.cond:                                         ; preds = %if.end50, %entry
  %3 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %for.cond
  %4 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 3
  %5 = load ptr, ptr %fill_input_buffer, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %5(ptr noundef %6) #4
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

if.end6:                                          ; preds = %if.end, %for.cond
  %10 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %10, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %11 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %12 = load i8, ptr %11, align 1
  %conv = zext i8 %12 to i32
  store i32 %conv, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end6
  %13 = load i32, ptr %c, align 4
  %cmp7.not = icmp eq i32 %13, 255
  br i1 %cmp7.not, label %do.body27, label %while.body

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 78
  %15 = load ptr, ptr %marker, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %15, i64 0, i32 8
  %16 = load i32, ptr %discarded_bytes, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %discarded_bytes, align 4
  %17 = load ptr, ptr %next_input_byte, align 8
  %18 = load ptr, ptr %datasrc, align 8
  store ptr %17, ptr %18, align 8
  %19 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i64 0, i32 1
  store i64 %19, ptr %bytes_in_buffer10, align 8
  %20 = load i64, ptr %bytes_in_buffer, align 8
  %cmp12 = icmp eq i64 %20, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %while.body
  %21 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %fill_input_buffer15, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %call16 = call i32 %22(ptr noundef %23) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  %24 = load ptr, ptr %datasrc, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %next_input_byte, align 8
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %24, i64 0, i32 1
  %26 = load i64, ptr %bytes_in_buffer21, align 8
  store i64 %26, ptr %bytes_in_buffer, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %while.body
  %27 = load i64, ptr %bytes_in_buffer, align 8
  %dec23 = add i64 %27, -1
  store i64 %dec23, ptr %bytes_in_buffer, align 8
  %28 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr24, ptr %next_input_byte, align 8
  %29 = load i8, ptr %28, align 1
  %conv25 = zext i8 %29 to i32
  store i32 %conv25, ptr %c, align 4
  br label %while.cond, !llvm.loop !6

do.body27:                                        ; preds = %while.cond, %if.end39
  %30 = load i64, ptr %bytes_in_buffer, align 8
  %cmp29 = icmp eq i64 %30, 0
  br i1 %cmp29, label %if.then31, label %if.end39

if.then31:                                        ; preds = %do.body27
  %31 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %31, i64 0, i32 3
  %32 = load ptr, ptr %fill_input_buffer32, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  %call33 = call i32 %32(ptr noundef %33) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then31
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then31
  %34 = load ptr, ptr %datasrc, align 8
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %next_input_byte, align 8
  %bytes_in_buffer38 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %bytes_in_buffer38, align 8
  store i64 %36, ptr %bytes_in_buffer, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %do.body27
  %37 = load i64, ptr %bytes_in_buffer, align 8
  %dec40 = add i64 %37, -1
  store i64 %dec40, ptr %bytes_in_buffer, align 8
  %38 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr41, ptr %next_input_byte, align 8
  %39 = load i8, ptr %38, align 1
  %conv42 = zext i8 %39 to i32
  store i32 %conv42, ptr %c, align 4
  %40 = load i32, ptr %c, align 4
  %cmp44 = icmp eq i32 %40, 255
  br i1 %cmp44, label %do.body27, label %do.end46, !llvm.loop !8

do.end46:                                         ; preds = %if.end39
  %41 = load i32, ptr %c, align 4
  %cmp47.not = icmp eq i32 %41, 0
  br i1 %cmp47.not, label %if.end50, label %for.end

if.end50:                                         ; preds = %do.end46
  %42 = load ptr, ptr %cinfo.addr, align 8
  %marker51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i64 0, i32 78
  %43 = load ptr, ptr %marker51, align 8
  %discarded_bytes52 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %43, i64 0, i32 8
  %44 = load i32, ptr %discarded_bytes52, align 4
  %add = add i32 %44, 2
  store i32 %add, ptr %discarded_bytes52, align 4
  %45 = load ptr, ptr %next_input_byte, align 8
  %46 = load ptr, ptr %datasrc, align 8
  store ptr %45, ptr %46, align 8
  %47 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer54 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %46, i64 0, i32 1
  store i64 %47, ptr %bytes_in_buffer54, align 8
  br label %for.cond

for.end:                                          ; preds = %do.end46
  %48 = load ptr, ptr %cinfo.addr, align 8
  %marker55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i64 0, i32 78
  %49 = load ptr, ptr %marker55, align 8
  %discarded_bytes56 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %49, i64 0, i32 8
  %50 = load i32, ptr %discarded_bytes56, align 4
  %cmp57.not = icmp eq i32 %50, 0
  br i1 %cmp57.not, label %if.end69, label %if.then59

if.then59:                                        ; preds = %for.end
  %51 = load ptr, ptr %cinfo.addr, align 8
  %52 = load ptr, ptr %51, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 112, ptr %msg_code, align 8
  %marker60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i64 0, i32 78
  %53 = load ptr, ptr %marker60, align 8
  %discarded_bytes61 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %53, i64 0, i32 8
  %54 = load i32, ptr %discarded_bytes61, align 4
  %55 = load ptr, ptr %cinfo.addr, align 8
  %56 = load ptr, ptr %55, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 6
  store i32 %54, ptr %msg_parm, align 4
  %57 = load i32, ptr %c, align 4
  %58 = load ptr, ptr %55, align 8
  %arrayidx65 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 6, i32 0, i64 1
  store i32 %57, ptr %arrayidx65, align 4
  %59 = load ptr, ptr %cinfo.addr, align 8
  %60 = load ptr, ptr %59, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 1
  %61 = load ptr, ptr %emit_message, align 8
  call void %61(ptr noundef nonnull %59, i32 noundef -1) #4
  %marker67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i64 0, i32 78
  %62 = load ptr, ptr %marker67, align 8
  %discarded_bytes68 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %62, i64 0, i32 8
  store i32 0, ptr %discarded_bytes68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then59, %for.end
  %63 = load i32, ptr %c, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i64 0, i32 72
  store i32 %63, ptr %unread_marker, align 4
  %65 = load ptr, ptr %next_input_byte, align 8
  %66 = load ptr, ptr %datasrc, align 8
  store ptr %65, ptr %66, align 8
  %67 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer71 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %66, i64 0, i32 1
  store i64 %67, ptr %bytes_in_buffer71, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then35, %if.then18, %if.then3
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_marker_reader(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  %0 = load ptr, ptr %mem, align 8
  %1 = load ptr, ptr %0, align 8
  %call = call ptr %1(ptr noundef %cinfo, i32 noundef 0, i64 noundef 176) #4
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
  call void @reset_marker_reader(ptr noundef %15)
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
  %call = call i32 @first_marker(ptr noundef %5)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.then1
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call i32 @next_marker(ptr noundef %6)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then1, %if.else, %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 72
  %8 = load i32, ptr %unread_marker10, align 4
  switch i32 %8, label %sw.default [
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
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call11 = call i32 @get_soi(ptr noundef %9)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %sw.epilog

if.then13:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %if.end9, %if.end9
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call16 = call i32 @get_sof(ptr noundef %10, i32 noundef 0, i32 noundef 0)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %sw.epilog

if.then18:                                        ; preds = %sw.bb15
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb20:                                          ; preds = %if.end9
  %11 = load ptr, ptr %cinfo.addr, align 8
  %call21 = call i32 @get_sof(ptr noundef %11, i32 noundef 1, i32 noundef 0)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %sw.epilog

if.then23:                                        ; preds = %sw.bb20
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %if.end9
  %12 = load ptr, ptr %cinfo.addr, align 8
  %call26 = call i32 @get_sof(ptr noundef %12, i32 noundef 0, i32 noundef 1)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %sw.epilog

if.then28:                                        ; preds = %sw.bb25
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb30:                                          ; preds = %if.end9
  %13 = load ptr, ptr %cinfo.addr, align 8
  %call31 = call i32 @get_sof(ptr noundef %13, i32 noundef 1, i32 noundef 1)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %sw.epilog

if.then33:                                        ; preds = %sw.bb30
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb35:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 59, ptr %msg_code, align 8
  %unread_marker36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 72
  %16 = load i32, ptr %unread_marker36, align 4
  %17 = load ptr, ptr %14, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 %16, ptr %msg_parm, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef nonnull %18) #4
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end9
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call40 = call i32 @get_sos(ptr noundef %21)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.bb39
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb39
  %22 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i64 0, i32 72
  store i32 0, ptr %unread_marker44, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %if.end9
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 84, ptr %msg_code47, align 8
  %25 = load ptr, ptr %23, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 1
  %26 = load ptr, ptr %emit_message, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  call void %26(ptr noundef %27, i32 noundef 1) #4
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 72
  store i32 0, ptr %unread_marker49, align 4
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb50:                                          ; preds = %if.end9
  %28 = load ptr, ptr %cinfo.addr, align 8
  %call51 = call i32 @get_dac(ptr noundef %28)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %sw.epilog

if.then53:                                        ; preds = %sw.bb50
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb55:                                          ; preds = %if.end9
  %29 = load ptr, ptr %cinfo.addr, align 8
  %call56 = call i32 @get_dht(ptr noundef %29)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then58, label %sw.epilog

if.then58:                                        ; preds = %sw.bb55
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb60:                                          ; preds = %if.end9
  %30 = load ptr, ptr %cinfo.addr, align 8
  %call61 = call i32 @get_dqt(ptr noundef %30)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %sw.epilog

if.then63:                                        ; preds = %sw.bb60
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb65:                                          ; preds = %if.end9
  %31 = load ptr, ptr %cinfo.addr, align 8
  %call66 = call i32 @get_dri(ptr noundef %31)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %sw.epilog

if.then68:                                        ; preds = %sw.bb65
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb70:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %32 = load ptr, ptr %cinfo.addr, align 8
  %marker71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 78
  %33 = load ptr, ptr %marker71, align 8
  %unread_marker72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i64 0, i32 72
  %34 = load i32, ptr %unread_marker72, align 4
  %sub = add nsw i32 %34, -224
  %idxprom = sext i32 %sub to i64
  %arrayidx73 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %33, i64 0, i32 4, i64 %idxprom
  %35 = load ptr, ptr %arrayidx73, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %call74 = call i32 %35(ptr noundef %36) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %sw.epilog

if.then76:                                        ; preds = %sw.bb70
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb78:                                          ; preds = %if.end9
  %37 = load ptr, ptr %cinfo.addr, align 8
  %marker79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 78
  %38 = load ptr, ptr %marker79, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %38, i64 0, i32 3
  %39 = load ptr, ptr %process_COM, align 8
  %call80 = call i32 %39(ptr noundef %37) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %sw.epilog

if.then82:                                        ; preds = %sw.bb78
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb84:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %40 = load ptr, ptr %cinfo.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %msg_code86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 5
  store i32 91, ptr %msg_code86, align 8
  %unread_marker87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i64 0, i32 72
  %42 = load i32, ptr %unread_marker87, align 4
  %43 = load ptr, ptr %40, align 8
  %msg_parm89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 6
  store i32 %42, ptr %msg_parm89, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %45 = load ptr, ptr %44, align 8
  %emit_message92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 1
  %46 = load ptr, ptr %emit_message92, align 8
  call void %46(ptr noundef nonnull %44, i32 noundef 1) #4
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end9
  %47 = load ptr, ptr %cinfo.addr, align 8
  %call94 = call i32 @skip_variable(ptr noundef %47)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then96, label %sw.epilog

if.then96:                                        ; preds = %sw.bb93
  store i32 0, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end9
  %48 = load ptr, ptr %cinfo.addr, align 8
  %49 = load ptr, ptr %48, align 8
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 67, ptr %msg_code99, align 8
  %unread_marker100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i64 0, i32 72
  %50 = load i32, ptr %unread_marker100, align 4
  %51 = load ptr, ptr %48, align 8
  %msg_parm102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 6
  store i32 %50, ptr %msg_parm102, align 4
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef nonnull %52) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb93, %sw.bb78, %sw.bb70, %sw.bb65, %sw.bb60, %sw.bb55, %sw.bb50, %sw.bb30, %sw.bb25, %sw.bb20, %sw.bb15, %sw.bb, %sw.default, %sw.bb84, %sw.bb35
  %55 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i64 0, i32 72
  store i32 0, ptr %unread_marker106, align 4
  br label %for.cond

return:                                           ; preds = %if.then96, %if.then82, %if.then76, %if.then68, %if.then63, %if.then58, %if.then53, %sw.bb45, %if.end43, %if.then42, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then6, %if.then3
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_restart_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 72
  %0 = load i32, ptr %unread_marker, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @next_marker(ptr noundef %1)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.then, %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 72
  %3 = load i32, ptr %unread_marker3, align 4
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 78
  %4 = load ptr, ptr %marker, align 8
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i64 0, i32 7
  %5 = load i32, ptr %next_restart_num, align 8
  %add = add nsw i32 %5, 208
  %cmp4 = icmp eq i32 %3, %add
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 97, ptr %msg_code, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 78
  %8 = load ptr, ptr %marker6, align 8
  %next_restart_num7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %8, i64 0, i32 7
  %9 = load i32, ptr %next_restart_num7, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %9, ptr %msg_parm, align 4
  %12 = load ptr, ptr %10, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %emit_message, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void %13(ptr noundef %14, i32 noundef 3) #4
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 72
  store i32 0, ptr %unread_marker10, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end2
  %15 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 5
  %16 = load ptr, ptr %src, align 8
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, ptr %16, i64 0, i32 5
  %17 = load ptr, ptr %resync_to_restart, align 8
  %marker11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 78
  %18 = load ptr, ptr %marker11, align 8
  %next_restart_num12 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %18, i64 0, i32 7
  %19 = load i32, ptr %next_restart_num12, align 8
  %call13 = call i32 %17(ptr noundef %15, i32 noundef %19) #4
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.else, %if.then5
  %20 = load ptr, ptr %cinfo.addr, align 8
  %marker18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 78
  %21 = load ptr, ptr %marker18, align 8
  %next_restart_num19 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %21, i64 0, i32 7
  %22 = load i32, ptr %next_restart_num19, align 8
  %add20 = add nsw i32 %22, 1
  %and = and i32 %add20, 7
  %23 = load ptr, ptr %cinfo.addr, align 8
  %marker21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 78
  %24 = load ptr, ptr %marker21, align 8
  %next_restart_num22 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %24, i64 0, i32 7
  store i32 %and, ptr %next_restart_num22, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then1
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %call12 = call i32 %15(ptr noundef %16) #4
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
  call void %32(ptr noundef %33, i32 noundef 1) #4
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
  call void %39(ptr noundef %37, i64 noundef %sub) #4
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %call12 = call i32 %15(ptr noundef %16) #4
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
  %call32 = call i32 %27(ptr noundef %28) #4
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
  br label %for.cond, !llvm.loop !10

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
  call void %53(ptr noundef %54, i32 noundef -1) #4
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
  call void %65(ptr noundef %66, i32 noundef 1) #4
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
  call void %87(ptr noundef %88, i32 noundef 1) #4
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
  call void %100(ptr noundef %101, i32 noundef 1) #4
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
  call void %111(ptr noundef nonnull %109, i32 noundef 1) #4
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
  call void %118(ptr noundef %119, i32 noundef 1) #4
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
  call void %126(ptr noundef nonnull %124, i32 noundef 1) #4
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
  call void %133(ptr noundef %131, i64 noundef %134) #4
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %call12 = call i32 %15(ptr noundef %16) #4
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
  %call32 = call i32 %27(ptr noundef %28) #4
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
  br label %for.cond, !llvm.loop !11

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
  call void %60(ptr noundef %61, i32 noundef 1) #4
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
  call void %70(ptr noundef %71, i32 noundef 1) #4
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
  call void %78(ptr noundef nonnull %76, i32 noundef 1) #4
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
  call void %85(ptr noundef %83, i64 noundef %86) #4
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end115
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end122, %if.then34, %if.then14, %if.then3
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @first_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %conv = zext i8 %12 to i32
  store i32 %conv, ptr %c, align 4
  %13 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %13, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %14 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i64 0, i32 3
  %15 = load ptr, ptr %fill_input_buffer11, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %15(ptr noundef %16) #4
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
  %conv21 = zext i8 %22 to i32
  store i32 %conv21, ptr %c2, align 4
  %23 = load i32, ptr %c, align 4
  %cmp23.not = icmp eq i32 %23, 255
  %24 = load i32, ptr %c2, align 4
  %cmp25.not = icmp eq i32 %24, 216
  %or.cond = select i1 %cmp23.not, i1 %cmp25.not, i1 false
  br i1 %or.cond, label %if.end33, label %if.then27

if.then27:                                        ; preds = %if.end18
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 52, ptr %msg_code, align 8
  %27 = load i32, ptr %c, align 4
  %28 = load ptr, ptr %25, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 %27, ptr %msg_parm, align 4
  %29 = load i32, ptr %c2, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %31 = load ptr, ptr %30, align 8
  %arrayidx31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6, i32 0, i64 1
  store i32 %29, ptr %arrayidx31, align 4
  %32 = load ptr, ptr %30, align 8
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull %30) #4
  br label %if.end33

if.end33:                                         ; preds = %if.end18, %if.then27
  %34 = load i32, ptr %c2, align 4
  %35 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i64 0, i32 72
  store i32 %34, ptr %unread_marker, align 4
  %36 = load ptr, ptr %next_input_byte, align 8
  %37 = load ptr, ptr %datasrc, align 8
  store ptr %36, ptr %37, align 8
  %38 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i64 0, i32 1
  store i64 %38, ptr %bytes_in_buffer35, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then14, %if.then3
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_soi(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %0, i64 0, i32 5
  store i32 101, ptr %msg_code, align 8
  %1 = load ptr, ptr %cinfo, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %emit_message, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  call void %2(ptr noundef %3, i32 noundef 1) #4
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 78
  %4 = load ptr, ptr %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i64 0, i32 5
  %5 = load i32, ptr %saw_SOI, align 8
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 60, ptr %msg_code3, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %cinfo.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 46, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 47, i64 %idxprom5
  store i8 1, ptr %arrayidx6, align 1
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 48, i64 %idxprom7
  store i8 5, ptr %arrayidx8, align 1
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 49
  store i32 0, ptr %restart_interval, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 9
  store i32 0, ptr %jpeg_color_space, align 4
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 56
  store i32 0, ptr %CCIR601_sampling, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 50
  store i32 0, ptr %saw_JFIF_marker, align 4
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 51
  store i8 0, ptr %density_unit, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i64 0, i32 52
  store i16 1, ptr %X_density, align 2
  %17 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 53
  store i16 1, ptr %Y_density, align 4
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 54
  store i32 0, ptr %saw_Adobe_marker, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 55
  store i8 0, ptr %Adobe_transform, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 78
  %19 = load ptr, ptr %marker9, align 8
  %saw_SOI10 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i64 0, i32 5
  store i32 1, ptr %saw_SOI10, align 8
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_sof(ptr noundef %cinfo, i32 noundef %is_prog, i32 noundef %is_arith) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %is_prog.addr = alloca i32, align 4
  %is_arith.addr = alloca i32, align 4
  %length = alloca i64, align 8
  %c = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca ptr, align 8
  %_mp225 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %is_prog, ptr %is_prog.addr, align 4
  store i32 %is_arith, ptr %is_arith.addr, align 4
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8
  store ptr %0, ptr %datasrc, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %next_input_byte, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %2, ptr %bytes_in_buffer, align 8
  %3 = load i32, ptr %is_prog.addr, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 44
  store i32 %3, ptr %progressive_mode, align 8
  %5 = load i32, ptr %is_arith.addr, align 4
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 45
  store i32 %5, ptr %arith_code, align 4
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i64 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %12, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %13 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %13, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %14 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %15 = load i8, ptr %14, align 1
  %conv = zext i8 %15 to i64
  %shl = shl nuw nsw i64 %conv, 8
  store i64 %shl, ptr %length, align 8
  %16 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %16, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %17 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %17, i64 0, i32 3
  %18 = load ptr, ptr %fill_input_buffer11, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %18(ptr noundef %19) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %20 = load ptr, ptr %datasrc, align 8
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %next_input_byte, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %22, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %23 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %23, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %24 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %25 = load i8, ptr %24, align 1
  %conv21 = zext i8 %25 to i64
  %26 = load i64, ptr %length, align 8
  %add = add nsw i64 %26, %conv21
  store i64 %add, ptr %length, align 8
  %27 = load i64, ptr %bytes_in_buffer, align 8
  %cmp23 = icmp eq i64 %27, 0
  br i1 %cmp23, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end18
  %28 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer26 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %28, i64 0, i32 3
  %29 = load ptr, ptr %fill_input_buffer26, align 8
  %30 = load ptr, ptr %cinfo.addr, align 8
  %call27 = call i32 %29(ptr noundef %30) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then25
  %31 = load ptr, ptr %datasrc, align 8
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %next_input_byte, align 8
  %bytes_in_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %31, i64 0, i32 1
  %33 = load i64, ptr %bytes_in_buffer32, align 8
  store i64 %33, ptr %bytes_in_buffer, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.end18
  %34 = load i64, ptr %bytes_in_buffer, align 8
  %dec34 = add i64 %34, -1
  store i64 %dec34, ptr %bytes_in_buffer, align 8
  %35 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %incdec.ptr35, ptr %next_input_byte, align 8
  %36 = load i8, ptr %35, align 1
  %conv36 = zext i8 %36 to i32
  %37 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i64 0, i32 42
  store i32 %conv36, ptr %data_precision, align 8
  %38 = load i64, ptr %bytes_in_buffer, align 8
  %cmp39 = icmp eq i64 %38, 0
  br i1 %cmp39, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.end33
  %39 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer42 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %39, i64 0, i32 3
  %40 = load ptr, ptr %fill_input_buffer42, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %call43 = call i32 %40(ptr noundef %41) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then41
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then41
  %42 = load ptr, ptr %datasrc, align 8
  %43 = load ptr, ptr %42, align 8
  store ptr %43, ptr %next_input_byte, align 8
  %bytes_in_buffer48 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i64 0, i32 1
  %44 = load i64, ptr %bytes_in_buffer48, align 8
  store i64 %44, ptr %bytes_in_buffer, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %if.end33
  %45 = load i64, ptr %bytes_in_buffer, align 8
  %dec50 = add i64 %45, -1
  store i64 %dec50, ptr %bytes_in_buffer, align 8
  %46 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %incdec.ptr51, ptr %next_input_byte, align 8
  %47 = load i8, ptr %46, align 1
  %conv52 = zext i8 %47 to i32
  %shl53 = shl nuw nsw i32 %conv52, 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i64 0, i32 7
  store i32 %shl53, ptr %image_height, align 4
  %49 = load i64, ptr %bytes_in_buffer, align 8
  %cmp54 = icmp eq i64 %49, 0
  br i1 %cmp54, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.end49
  %50 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer57 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %50, i64 0, i32 3
  %51 = load ptr, ptr %fill_input_buffer57, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  %call58 = call i32 %51(ptr noundef %52) #4
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.then56
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then56
  %53 = load ptr, ptr %datasrc, align 8
  %54 = load ptr, ptr %53, align 8
  store ptr %54, ptr %next_input_byte, align 8
  %bytes_in_buffer63 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %53, i64 0, i32 1
  %55 = load i64, ptr %bytes_in_buffer63, align 8
  store i64 %55, ptr %bytes_in_buffer, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.end49
  %56 = load i64, ptr %bytes_in_buffer, align 8
  %dec65 = add i64 %56, -1
  store i64 %dec65, ptr %bytes_in_buffer, align 8
  %57 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %incdec.ptr66, ptr %next_input_byte, align 8
  %58 = load i8, ptr %57, align 1
  %conv67 = zext i8 %58 to i32
  %59 = load ptr, ptr %cinfo.addr, align 8
  %image_height68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i64 0, i32 7
  %60 = load i32, ptr %image_height68, align 4
  %add69 = add i32 %60, %conv67
  store i32 %add69, ptr %image_height68, align 4
  %61 = load i64, ptr %bytes_in_buffer, align 8
  %cmp72 = icmp eq i64 %61, 0
  br i1 %cmp72, label %if.then74, label %if.end82

if.then74:                                        ; preds = %if.end64
  %62 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %62, i64 0, i32 3
  %63 = load ptr, ptr %fill_input_buffer75, align 8
  %64 = load ptr, ptr %cinfo.addr, align 8
  %call76 = call i32 %63(ptr noundef %64) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then74
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.then74
  %65 = load ptr, ptr %datasrc, align 8
  %66 = load ptr, ptr %65, align 8
  store ptr %66, ptr %next_input_byte, align 8
  %bytes_in_buffer81 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %bytes_in_buffer81, align 8
  store i64 %67, ptr %bytes_in_buffer, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %if.end64
  %68 = load i64, ptr %bytes_in_buffer, align 8
  %dec83 = add i64 %68, -1
  store i64 %dec83, ptr %bytes_in_buffer, align 8
  %69 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %incdec.ptr84, ptr %next_input_byte, align 8
  %70 = load i8, ptr %69, align 1
  %conv85 = zext i8 %70 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %71, i64 0, i32 6
  store i32 %shl86, ptr %image_width, align 8
  %72 = load i64, ptr %bytes_in_buffer, align 8
  %cmp87 = icmp eq i64 %72, 0
  br i1 %cmp87, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end82
  %73 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer90 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %73, i64 0, i32 3
  %74 = load ptr, ptr %fill_input_buffer90, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  %call91 = call i32 %74(ptr noundef %75) #4
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then89
  store i32 0, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then89
  %76 = load ptr, ptr %datasrc, align 8
  %77 = load ptr, ptr %76, align 8
  store ptr %77, ptr %next_input_byte, align 8
  %bytes_in_buffer96 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %76, i64 0, i32 1
  %78 = load i64, ptr %bytes_in_buffer96, align 8
  store i64 %78, ptr %bytes_in_buffer, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end82
  %79 = load i64, ptr %bytes_in_buffer, align 8
  %dec98 = add i64 %79, -1
  store i64 %dec98, ptr %bytes_in_buffer, align 8
  %80 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %incdec.ptr99, ptr %next_input_byte, align 8
  %81 = load i8, ptr %80, align 1
  %conv100 = zext i8 %81 to i32
  %82 = load ptr, ptr %cinfo.addr, align 8
  %image_width101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i64 0, i32 6
  %83 = load i32, ptr %image_width101, align 8
  %add102 = add i32 %83, %conv100
  store i32 %add102, ptr %image_width101, align 8
  %84 = load i64, ptr %bytes_in_buffer, align 8
  %cmp105 = icmp eq i64 %84, 0
  br i1 %cmp105, label %if.then107, label %if.end115

if.then107:                                       ; preds = %if.end97
  %85 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer108 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %85, i64 0, i32 3
  %86 = load ptr, ptr %fill_input_buffer108, align 8
  %87 = load ptr, ptr %cinfo.addr, align 8
  %call109 = call i32 %86(ptr noundef %87) #4
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.then107
  store i32 0, ptr %retval, align 4
  br label %return

if.end112:                                        ; preds = %if.then107
  %88 = load ptr, ptr %datasrc, align 8
  %89 = load ptr, ptr %88, align 8
  store ptr %89, ptr %next_input_byte, align 8
  %bytes_in_buffer114 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %88, i64 0, i32 1
  %90 = load i64, ptr %bytes_in_buffer114, align 8
  store i64 %90, ptr %bytes_in_buffer, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end112, %if.end97
  %91 = load i64, ptr %bytes_in_buffer, align 8
  %dec116 = add i64 %91, -1
  store i64 %dec116, ptr %bytes_in_buffer, align 8
  %92 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %incdec.ptr117, ptr %next_input_byte, align 8
  %93 = load i8, ptr %92, align 1
  %conv118 = zext i8 %93 to i32
  %94 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i64 0, i32 8
  store i32 %conv118, ptr %num_components, align 8
  %95 = load i64, ptr %length, align 8
  %sub = add nsw i64 %95, -8
  store i64 %sub, ptr %length, align 8
  %96 = load ptr, ptr %cinfo.addr, align 8
  %97 = load ptr, ptr %96, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i64 0, i32 6
  store ptr %msg_parm, ptr %_mp, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i64 0, i32 72
  %98 = load i32, ptr %unread_marker, align 4
  store i32 %98, ptr %msg_parm, align 4
  %99 = load ptr, ptr %cinfo.addr, align 8
  %image_width121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %99, i64 0, i32 6
  %100 = load i32, ptr %image_width121, align 8
  %101 = load ptr, ptr %_mp, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %101, i64 1
  store i32 %100, ptr %arrayidx122, align 4
  %image_height123 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %99, i64 0, i32 7
  %102 = load i32, ptr %image_height123, align 4
  %arrayidx124 = getelementptr inbounds i32, ptr %101, i64 2
  store i32 %102, ptr %arrayidx124, align 4
  %103 = load ptr, ptr %cinfo.addr, align 8
  %num_components125 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %103, i64 0, i32 8
  %104 = load i32, ptr %num_components125, align 8
  %105 = load ptr, ptr %_mp, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %105, i64 3
  store i32 %104, ptr %arrayidx126, align 4
  %106 = load ptr, ptr %103, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i64 0, i32 5
  store i32 99, ptr %msg_code, align 8
  %107 = load ptr, ptr %cinfo.addr, align 8
  %108 = load ptr, ptr %107, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 1
  %109 = load ptr, ptr %emit_message, align 8
  call void %109(ptr noundef nonnull %107, i32 noundef 1) #4
  %110 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %110, i64 0, i32 78
  %111 = load ptr, ptr %marker, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %111, i64 0, i32 6
  %112 = load i32, ptr %saw_SOF, align 4
  %tobool130.not = icmp eq i32 %112, 0
  br i1 %tobool130.not, label %if.end135, label %if.then131

if.then131:                                       ; preds = %if.end115
  %113 = load ptr, ptr %cinfo.addr, align 8
  %114 = load ptr, ptr %113, align 8
  %msg_code133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %114, i64 0, i32 5
  store i32 57, ptr %msg_code133, align 8
  %115 = load ptr, ptr %113, align 8
  %116 = load ptr, ptr %115, align 8
  call void %116(ptr noundef nonnull %113) #4
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %if.end115
  %117 = load ptr, ptr %cinfo.addr, align 8
  %image_height136 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %117, i64 0, i32 7
  %118 = load i32, ptr %image_height136, align 4
  %cmp137 = icmp eq i32 %118, 0
  br i1 %cmp137, label %if.then146, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end135
  %119 = load ptr, ptr %cinfo.addr, align 8
  %image_width139 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %119, i64 0, i32 6
  %120 = load i32, ptr %image_width139, align 8
  %cmp140 = icmp eq i32 %120, 0
  br i1 %cmp140, label %if.then146, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false
  %121 = load ptr, ptr %cinfo.addr, align 8
  %num_components143 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %121, i64 0, i32 8
  %122 = load i32, ptr %num_components143, align 8
  %cmp144 = icmp slt i32 %122, 1
  br i1 %cmp144, label %if.then146, label %if.end151

if.then146:                                       ; preds = %lor.lhs.false142, %lor.lhs.false, %if.end135
  %123 = load ptr, ptr %cinfo.addr, align 8
  %124 = load ptr, ptr %123, align 8
  %msg_code148 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 5
  store i32 31, ptr %msg_code148, align 8
  %125 = load ptr, ptr %123, align 8
  %126 = load ptr, ptr %125, align 8
  call void %126(ptr noundef nonnull %123) #4
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %lor.lhs.false142
  %127 = load i64, ptr %length, align 8
  %128 = load ptr, ptr %cinfo.addr, align 8
  %num_components152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %128, i64 0, i32 8
  %129 = load i32, ptr %num_components152, align 8
  %mul = mul nsw i32 %129, 3
  %conv153 = sext i32 %mul to i64
  %cmp154.not = icmp eq i64 %127, %conv153
  br i1 %cmp154.not, label %if.end161, label %if.then156

if.then156:                                       ; preds = %if.end151
  %130 = load ptr, ptr %cinfo.addr, align 8
  %131 = load ptr, ptr %130, align 8
  %msg_code158 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 5
  store i32 9, ptr %msg_code158, align 8
  %132 = load ptr, ptr %130, align 8
  %133 = load ptr, ptr %132, align 8
  call void %133(ptr noundef nonnull %130) #4
  br label %if.end161

if.end161:                                        ; preds = %if.then156, %if.end151
  %134 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %134, i64 0, i32 43
  %135 = load ptr, ptr %comp_info, align 8
  %cmp162 = icmp eq ptr %135, null
  br i1 %cmp162, label %if.then164, label %if.end170

if.then164:                                       ; preds = %if.end161
  %136 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %136, i64 0, i32 1
  %137 = load ptr, ptr %mem, align 8
  %138 = load ptr, ptr %137, align 8
  %num_components165 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %136, i64 0, i32 8
  %139 = load i32, ptr %num_components165, align 8
  %conv166 = sext i32 %139 to i64
  %mul167 = mul nsw i64 %conv166, 96
  %call168 = call ptr %138(ptr noundef %136, i32 noundef 1, i64 noundef %mul167) #4
  %140 = load ptr, ptr %cinfo.addr, align 8
  %comp_info169 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %140, i64 0, i32 43
  store ptr %call168, ptr %comp_info169, align 8
  br label %if.end170

if.end170:                                        ; preds = %if.then164, %if.end161
  store i32 0, ptr %ci, align 4
  %141 = load ptr, ptr %cinfo.addr, align 8
  %comp_info171 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %141, i64 0, i32 43
  %142 = load ptr, ptr %comp_info171, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end219, %if.end170
  %storemerge = phi ptr [ %142, %if.end170 ], [ %incdec.ptr242, %if.end219 ]
  store ptr %storemerge, ptr %compptr, align 8
  %143 = load i32, ptr %ci, align 4
  %144 = load ptr, ptr %cinfo.addr, align 8
  %num_components172 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %144, i64 0, i32 8
  %145 = load i32, ptr %num_components172, align 8
  %cmp173 = icmp slt i32 %143, %145
  br i1 %cmp173, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %146 = load i32, ptr %ci, align 4
  %147 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %147, i64 0, i32 1
  store i32 %146, ptr %component_index, align 4
  %148 = load i64, ptr %bytes_in_buffer, align 8
  %cmp176 = icmp eq i64 %148, 0
  br i1 %cmp176, label %if.then178, label %if.end186

if.then178:                                       ; preds = %for.body
  %149 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer179 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %149, i64 0, i32 3
  %150 = load ptr, ptr %fill_input_buffer179, align 8
  %151 = load ptr, ptr %cinfo.addr, align 8
  %call180 = call i32 %150(ptr noundef %151) #4
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then182, label %if.end183

if.then182:                                       ; preds = %if.then178
  store i32 0, ptr %retval, align 4
  br label %return

if.end183:                                        ; preds = %if.then178
  %152 = load ptr, ptr %datasrc, align 8
  %153 = load ptr, ptr %152, align 8
  store ptr %153, ptr %next_input_byte, align 8
  %bytes_in_buffer185 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %152, i64 0, i32 1
  %154 = load i64, ptr %bytes_in_buffer185, align 8
  store i64 %154, ptr %bytes_in_buffer, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.end183, %for.body
  %155 = load i64, ptr %bytes_in_buffer, align 8
  %dec187 = add i64 %155, -1
  store i64 %dec187, ptr %bytes_in_buffer, align 8
  %156 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr188 = getelementptr inbounds i8, ptr %156, i64 1
  store ptr %incdec.ptr188, ptr %next_input_byte, align 8
  %157 = load i8, ptr %156, align 1
  %conv189 = zext i8 %157 to i32
  %158 = load ptr, ptr %compptr, align 8
  store i32 %conv189, ptr %158, align 8
  %159 = load i64, ptr %bytes_in_buffer, align 8
  %cmp192 = icmp eq i64 %159, 0
  br i1 %cmp192, label %if.then194, label %if.end202

if.then194:                                       ; preds = %if.end186
  %160 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer195 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %160, i64 0, i32 3
  %161 = load ptr, ptr %fill_input_buffer195, align 8
  %162 = load ptr, ptr %cinfo.addr, align 8
  %call196 = call i32 %161(ptr noundef %162) #4
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then198, label %if.end199

if.then198:                                       ; preds = %if.then194
  store i32 0, ptr %retval, align 4
  br label %return

if.end199:                                        ; preds = %if.then194
  %163 = load ptr, ptr %datasrc, align 8
  %164 = load ptr, ptr %163, align 8
  store ptr %164, ptr %next_input_byte, align 8
  %bytes_in_buffer201 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %163, i64 0, i32 1
  %165 = load i64, ptr %bytes_in_buffer201, align 8
  store i64 %165, ptr %bytes_in_buffer, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.end199, %if.end186
  %166 = load i64, ptr %bytes_in_buffer, align 8
  %dec203 = add i64 %166, -1
  store i64 %dec203, ptr %bytes_in_buffer, align 8
  %167 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr204 = getelementptr inbounds i8, ptr %167, i64 1
  store ptr %incdec.ptr204, ptr %next_input_byte, align 8
  %168 = load i8, ptr %167, align 1
  %conv205 = zext i8 %168 to i32
  store i32 %conv205, ptr %c, align 4
  %169 = load i32, ptr %c, align 4
  %170 = lshr i32 %169, 4
  %and = and i32 %170, 15
  %171 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %171, i64 0, i32 2
  store i32 %and, ptr %h_samp_factor, align 8
  %and207 = and i32 %169, 15
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %171, i64 0, i32 3
  store i32 %and207, ptr %v_samp_factor, align 4
  %172 = load i64, ptr %bytes_in_buffer, align 8
  %cmp209 = icmp eq i64 %172, 0
  br i1 %cmp209, label %if.then211, label %if.end219

if.then211:                                       ; preds = %if.end202
  %173 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer212 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %173, i64 0, i32 3
  %174 = load ptr, ptr %fill_input_buffer212, align 8
  %175 = load ptr, ptr %cinfo.addr, align 8
  %call213 = call i32 %174(ptr noundef %175) #4
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.then211
  store i32 0, ptr %retval, align 4
  br label %return

if.end216:                                        ; preds = %if.then211
  %176 = load ptr, ptr %datasrc, align 8
  %177 = load ptr, ptr %176, align 8
  store ptr %177, ptr %next_input_byte, align 8
  %bytes_in_buffer218 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %176, i64 0, i32 1
  %178 = load i64, ptr %bytes_in_buffer218, align 8
  store i64 %178, ptr %bytes_in_buffer, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.end216, %if.end202
  %179 = load i64, ptr %bytes_in_buffer, align 8
  %dec220 = add i64 %179, -1
  store i64 %dec220, ptr %bytes_in_buffer, align 8
  %180 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %180, i64 1
  store ptr %incdec.ptr221, ptr %next_input_byte, align 8
  %181 = load i8, ptr %180, align 1
  %conv222 = zext i8 %181 to i32
  %182 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %182, i64 0, i32 4
  store i32 %conv222, ptr %quant_tbl_no, align 8
  %183 = load ptr, ptr %cinfo.addr, align 8
  %184 = load ptr, ptr %183, align 8
  %msg_parm227 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %184, i64 0, i32 6
  store ptr %msg_parm227, ptr %_mp225, align 8
  %185 = load ptr, ptr %compptr, align 8
  %186 = load i32, ptr %185, align 8
  store i32 %186, ptr %msg_parm227, align 4
  %h_samp_factor231 = getelementptr inbounds %struct.jpeg_component_info, ptr %185, i64 0, i32 2
  %187 = load i32, ptr %h_samp_factor231, align 8
  %arrayidx232 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %184, i64 0, i32 6, i32 0, i64 1
  store i32 %187, ptr %arrayidx232, align 4
  %188 = load ptr, ptr %compptr, align 8
  %v_samp_factor233 = getelementptr inbounds %struct.jpeg_component_info, ptr %188, i64 0, i32 3
  %189 = load i32, ptr %v_samp_factor233, align 4
  %190 = load ptr, ptr %_mp225, align 8
  %arrayidx234 = getelementptr inbounds i32, ptr %190, i64 2
  store i32 %189, ptr %arrayidx234, align 4
  %quant_tbl_no235 = getelementptr inbounds %struct.jpeg_component_info, ptr %188, i64 0, i32 4
  %191 = load i32, ptr %quant_tbl_no235, align 8
  %arrayidx236 = getelementptr inbounds i32, ptr %190, i64 3
  store i32 %191, ptr %arrayidx236, align 4
  %192 = load ptr, ptr %cinfo.addr, align 8
  %193 = load ptr, ptr %192, align 8
  %msg_code238 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %193, i64 0, i32 5
  store i32 100, ptr %msg_code238, align 8
  %194 = load ptr, ptr %192, align 8
  %emit_message240 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %194, i64 0, i32 1
  %195 = load ptr, ptr %emit_message240, align 8
  %196 = load ptr, ptr %cinfo.addr, align 8
  call void %195(ptr noundef %196, i32 noundef 1) #4
  %197 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %197, 1
  store i32 %inc, ptr %ci, align 4
  %198 = load ptr, ptr %compptr, align 8
  %incdec.ptr242 = getelementptr inbounds %struct.jpeg_component_info, ptr %198, i64 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %199 = load ptr, ptr %cinfo.addr, align 8
  %marker243 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %199, i64 0, i32 78
  %200 = load ptr, ptr %marker243, align 8
  %saw_SOF244 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %200, i64 0, i32 6
  store i32 1, ptr %saw_SOF244, align 4
  %201 = load ptr, ptr %next_input_byte, align 8
  %202 = load ptr, ptr %datasrc, align 8
  store ptr %201, ptr %202, align 8
  %203 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer246 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %202, i64 0, i32 1
  store i64 %203, ptr %bytes_in_buffer246, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then215, %if.then198, %if.then182, %if.then111, %if.then93, %if.then78, %if.then60, %if.then45, %if.then29, %if.then14, %if.then3
  %204 = load i32, ptr %retval, align 4
  ret i32 %204
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_sos(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %i = alloca i32, align 4
  %ci = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %cc = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca ptr, align 8
  %_mp181 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 5
  %0 = load ptr, ptr %src, align 8
  store ptr %0, ptr %datasrc, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %next_input_byte, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %0, i64 0, i32 1
  %2 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %2, ptr %bytes_in_buffer, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 78
  %4 = load ptr, ptr %marker, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i64 0, i32 6
  %5 = load i32, ptr %saw_SOF, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %cinfo.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 61, ptr %msg_code, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %6) #4
  br label %do.body

do.body:                                          ; preds = %entry, %if.then
  %10 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then4, label %if.end10

if.then4:                                         ; preds = %do.body
  %11 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i64 0, i32 3
  %12 = load ptr, ptr %fill_input_buffer, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %12(ptr noundef %13) #4
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then4
  %14 = load ptr, ptr %datasrc, align 8
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %next_input_byte, align 8
  %bytes_in_buffer9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i64 0, i32 1
  %16 = load i64, ptr %bytes_in_buffer9, align 8
  store i64 %16, ptr %bytes_in_buffer, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %do.body
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %17, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %18 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %19 = load i8, ptr %18, align 1
  %conv = zext i8 %19 to i64
  %shl = shl nuw nsw i64 %conv, 8
  store i64 %shl, ptr %length, align 8
  %20 = load i64, ptr %bytes_in_buffer, align 8
  %cmp12 = icmp eq i64 %20, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end10
  %21 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %fill_input_buffer15, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %call16 = call i32 %22(ptr noundef %23) #4
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  %24 = load ptr, ptr %datasrc, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %next_input_byte, align 8
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %24, i64 0, i32 1
  %26 = load i64, ptr %bytes_in_buffer21, align 8
  store i64 %26, ptr %bytes_in_buffer, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end10
  %27 = load i64, ptr %bytes_in_buffer, align 8
  %dec23 = add i64 %27, -1
  store i64 %dec23, ptr %bytes_in_buffer, align 8
  %28 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr24, ptr %next_input_byte, align 8
  %29 = load i8, ptr %28, align 1
  %conv25 = zext i8 %29 to i64
  %30 = load i64, ptr %length, align 8
  %add = add nsw i64 %30, %conv25
  store i64 %add, ptr %length, align 8
  %31 = load i64, ptr %bytes_in_buffer, align 8
  %cmp27 = icmp eq i64 %31, 0
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end22
  %32 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %32, i64 0, i32 3
  %33 = load ptr, ptr %fill_input_buffer30, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call31 = call i32 %33(ptr noundef %34) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then29
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then29
  %35 = load ptr, ptr %datasrc, align 8
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %next_input_byte, align 8
  %bytes_in_buffer36 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %bytes_in_buffer36, align 8
  store i64 %37, ptr %bytes_in_buffer, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.end22
  %38 = load i64, ptr %bytes_in_buffer, align 8
  %dec38 = add i64 %38, -1
  store i64 %dec38, ptr %bytes_in_buffer, align 8
  %39 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr39, ptr %next_input_byte, align 8
  %40 = load i8, ptr %39, align 1
  %conv40 = zext i8 %40 to i32
  store i32 %conv40, ptr %n, align 4
  %41 = load i64, ptr %length, align 8
  %42 = load i32, ptr %n, align 4
  %mul = shl nsw i32 %42, 1
  %add42 = add nsw i32 %mul, 6
  %conv43 = sext i32 %add42 to i64
  %cmp44.not = icmp ne i64 %41, %conv43
  %43 = load i32, ptr %n, align 4
  %cmp46 = icmp slt i32 %43, 1
  %or.cond = select i1 %cmp44.not, i1 true, i1 %cmp46
  %44 = load i32, ptr %n, align 4
  %cmp49 = icmp sgt i32 %44, 4
  %or.cond2 = select i1 %or.cond, i1 true, i1 %cmp49
  br i1 %or.cond2, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.end37
  %45 = load ptr, ptr %cinfo.addr, align 8
  %46 = load ptr, ptr %45, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i64 0, i32 5
  store i32 9, ptr %msg_code53, align 8
  %47 = load ptr, ptr %45, align 8
  %48 = load ptr, ptr %47, align 8
  call void %48(ptr noundef nonnull %45) #4
  br label %if.end56

if.end56:                                         ; preds = %if.end37, %if.then51
  %49 = load ptr, ptr %cinfo.addr, align 8
  %50 = load ptr, ptr %49, align 8
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 5
  store i32 102, ptr %msg_code58, align 8
  %51 = load i32, ptr %n, align 4
  %52 = load ptr, ptr %49, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6
  store i32 %51, ptr %msg_parm, align 4
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 1
  %55 = load ptr, ptr %emit_message, align 8
  call void %55(ptr noundef nonnull %53, i32 noundef 1) #4
  %56 = load i32, ptr %n, align 4
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i64 0, i32 62
  store i32 %56, ptr %comps_in_scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %id_found, %if.end56
  %storemerge = phi i32 [ 0, %if.end56 ], [ %inc127, %id_found ]
  store i32 %storemerge, ptr %i, align 4
  %57 = load i32, ptr %n, align 4
  %cmp61 = icmp slt i32 %storemerge, %57
  br i1 %cmp61, label %do.body63, label %do.body129

do.body63:                                        ; preds = %for.cond
  %58 = load i64, ptr %bytes_in_buffer, align 8
  %cmp64 = icmp eq i64 %58, 0
  br i1 %cmp64, label %if.then66, label %if.end74

if.then66:                                        ; preds = %do.body63
  %59 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer67 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %59, i64 0, i32 3
  %60 = load ptr, ptr %fill_input_buffer67, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  %call68 = call i32 %60(ptr noundef %61) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then66
  store i32 0, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.then66
  %62 = load ptr, ptr %datasrc, align 8
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %next_input_byte, align 8
  %bytes_in_buffer73 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %62, i64 0, i32 1
  %64 = load i64, ptr %bytes_in_buffer73, align 8
  store i64 %64, ptr %bytes_in_buffer, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %do.body63
  %65 = load i64, ptr %bytes_in_buffer, align 8
  %dec75 = add i64 %65, -1
  store i64 %dec75, ptr %bytes_in_buffer, align 8
  %66 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %incdec.ptr76, ptr %next_input_byte, align 8
  %67 = load i8, ptr %66, align 1
  %conv77 = zext i8 %67 to i32
  store i32 %conv77, ptr %cc, align 4
  %68 = load i64, ptr %bytes_in_buffer, align 8
  %cmp80 = icmp eq i64 %68, 0
  br i1 %cmp80, label %if.then82, label %if.end90

if.then82:                                        ; preds = %if.end74
  %69 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer83 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %69, i64 0, i32 3
  %70 = load ptr, ptr %fill_input_buffer83, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  %call84 = call i32 %70(ptr noundef %71) #4
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.then82
  store i32 0, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.then82
  %72 = load ptr, ptr %datasrc, align 8
  %73 = load ptr, ptr %72, align 8
  store ptr %73, ptr %next_input_byte, align 8
  %bytes_in_buffer89 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %72, i64 0, i32 1
  %74 = load i64, ptr %bytes_in_buffer89, align 8
  store i64 %74, ptr %bytes_in_buffer, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %if.end74
  %75 = load i64, ptr %bytes_in_buffer, align 8
  %dec91 = add i64 %75, -1
  store i64 %dec91, ptr %bytes_in_buffer, align 8
  %76 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr92, ptr %next_input_byte, align 8
  %77 = load i8, ptr %76, align 1
  %conv93 = zext i8 %77 to i32
  store i32 %conv93, ptr %c, align 4
  store i32 0, ptr %ci, align 4
  %78 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %78, i64 0, i32 43
  %79 = load ptr, ptr %comp_info, align 8
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc, %if.end90
  %storemerge1 = phi ptr [ %79, %if.end90 ], [ %incdec.ptr103, %for.inc ]
  store ptr %storemerge1, ptr %compptr, align 8
  %80 = load i32, ptr %ci, align 4
  %81 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i64 0, i32 8
  %82 = load i32, ptr %num_components, align 8
  %cmp96 = icmp slt i32 %80, %82
  br i1 %cmp96, label %for.body98, label %for.end

for.body98:                                       ; preds = %for.cond95
  %83 = load i32, ptr %cc, align 4
  %84 = load ptr, ptr %compptr, align 8
  %85 = load i32, ptr %84, align 8
  %cmp99 = icmp eq i32 %83, %85
  br i1 %cmp99, label %id_found, label %for.inc

for.inc:                                          ; preds = %for.body98
  %86 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, ptr %ci, align 4
  %87 = load ptr, ptr %compptr, align 8
  %incdec.ptr103 = getelementptr inbounds %struct.jpeg_component_info, ptr %87, i64 1
  br label %for.cond95, !llvm.loop !14

for.end:                                          ; preds = %for.cond95
  %88 = load ptr, ptr %cinfo.addr, align 8
  %89 = load ptr, ptr %88, align 8
  %msg_code105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %89, i64 0, i32 5
  store i32 5, ptr %msg_code105, align 8
  %90 = load i32, ptr %cc, align 4
  %91 = load ptr, ptr %88, align 8
  %msg_parm107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i64 0, i32 6
  store i32 %90, ptr %msg_parm107, align 4
  %92 = load ptr, ptr %cinfo.addr, align 8
  %93 = load ptr, ptr %92, align 8
  %94 = load ptr, ptr %93, align 8
  call void %94(ptr noundef nonnull %92) #4
  br label %id_found

id_found:                                         ; preds = %for.body98, %for.end
  %95 = load ptr, ptr %compptr, align 8
  %96 = load ptr, ptr %cinfo.addr, align 8
  %97 = load i32, ptr %i, align 4
  %idxprom = sext i32 %97 to i64
  %arrayidx111 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i64 0, i32 63, i64 %idxprom
  store ptr %95, ptr %arrayidx111, align 8
  %98 = load i32, ptr %c, align 4
  %99 = lshr i32 %98, 4
  %and = and i32 %99, 15
  %100 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i64 0, i32 5
  store i32 %and, ptr %dc_tbl_no, align 4
  %and112 = and i32 %98, 15
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i64 0, i32 6
  store i32 %and112, ptr %ac_tbl_no, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  %102 = load ptr, ptr %101, align 8
  %msg_parm115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i64 0, i32 6
  store ptr %msg_parm115, ptr %_mp, align 8
  %103 = load i32, ptr %cc, align 4
  store i32 %103, ptr %msg_parm115, align 4
  %104 = load ptr, ptr %compptr, align 8
  %dc_tbl_no117 = getelementptr inbounds %struct.jpeg_component_info, ptr %104, i64 0, i32 5
  %105 = load i32, ptr %dc_tbl_no117, align 4
  %arrayidx118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i64 0, i32 6, i32 0, i64 1
  store i32 %105, ptr %arrayidx118, align 4
  %ac_tbl_no119 = getelementptr inbounds %struct.jpeg_component_info, ptr %104, i64 0, i32 6
  %106 = load i32, ptr %ac_tbl_no119, align 8
  %107 = load ptr, ptr %_mp, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %107, i64 2
  store i32 %106, ptr %arrayidx120, align 4
  %108 = load ptr, ptr %cinfo.addr, align 8
  %109 = load ptr, ptr %108, align 8
  %msg_code122 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 103, ptr %msg_code122, align 8
  %110 = load ptr, ptr %108, align 8
  %emit_message124 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i64 0, i32 1
  %111 = load ptr, ptr %emit_message124, align 8
  %112 = load ptr, ptr %cinfo.addr, align 8
  call void %111(ptr noundef %112, i32 noundef 1) #4
  %113 = load i32, ptr %i, align 4
  %inc127 = add nsw i32 %113, 1
  br label %for.cond, !llvm.loop !15

do.body129:                                       ; preds = %for.cond
  %114 = load i64, ptr %bytes_in_buffer, align 8
  %cmp130 = icmp eq i64 %114, 0
  br i1 %cmp130, label %if.then132, label %if.end140

if.then132:                                       ; preds = %do.body129
  %115 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer133 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %115, i64 0, i32 3
  %116 = load ptr, ptr %fill_input_buffer133, align 8
  %117 = load ptr, ptr %cinfo.addr, align 8
  %call134 = call i32 %116(ptr noundef %117) #4
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.then132
  store i32 0, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.then132
  %118 = load ptr, ptr %datasrc, align 8
  %119 = load ptr, ptr %118, align 8
  store ptr %119, ptr %next_input_byte, align 8
  %bytes_in_buffer139 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %118, i64 0, i32 1
  %120 = load i64, ptr %bytes_in_buffer139, align 8
  store i64 %120, ptr %bytes_in_buffer, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.end137, %do.body129
  %121 = load i64, ptr %bytes_in_buffer, align 8
  %dec141 = add i64 %121, -1
  store i64 %dec141, ptr %bytes_in_buffer, align 8
  %122 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr142 = getelementptr inbounds i8, ptr %122, i64 1
  store ptr %incdec.ptr142, ptr %next_input_byte, align 8
  %123 = load i8, ptr %122, align 1
  %conv143 = zext i8 %123 to i32
  store i32 %conv143, ptr %c, align 4
  %124 = load i32, ptr %c, align 4
  %125 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %125, i64 0, i32 68
  store i32 %124, ptr %Ss, align 4
  %126 = load i64, ptr %bytes_in_buffer, align 8
  %cmp146 = icmp eq i64 %126, 0
  br i1 %cmp146, label %if.then148, label %if.end156

if.then148:                                       ; preds = %if.end140
  %127 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer149 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %127, i64 0, i32 3
  %128 = load ptr, ptr %fill_input_buffer149, align 8
  %129 = load ptr, ptr %cinfo.addr, align 8
  %call150 = call i32 %128(ptr noundef %129) #4
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.then148
  store i32 0, ptr %retval, align 4
  br label %return

if.end153:                                        ; preds = %if.then148
  %130 = load ptr, ptr %datasrc, align 8
  %131 = load ptr, ptr %130, align 8
  store ptr %131, ptr %next_input_byte, align 8
  %bytes_in_buffer155 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %130, i64 0, i32 1
  %132 = load i64, ptr %bytes_in_buffer155, align 8
  store i64 %132, ptr %bytes_in_buffer, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.end153, %if.end140
  %133 = load i64, ptr %bytes_in_buffer, align 8
  %dec157 = add i64 %133, -1
  store i64 %dec157, ptr %bytes_in_buffer, align 8
  %134 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr158 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %incdec.ptr158, ptr %next_input_byte, align 8
  %135 = load i8, ptr %134, align 1
  %conv159 = zext i8 %135 to i32
  store i32 %conv159, ptr %c, align 4
  %136 = load i32, ptr %c, align 4
  %137 = load ptr, ptr %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %137, i64 0, i32 69
  store i32 %136, ptr %Se, align 8
  %138 = load i64, ptr %bytes_in_buffer, align 8
  %cmp162 = icmp eq i64 %138, 0
  br i1 %cmp162, label %if.then164, label %if.end172

if.then164:                                       ; preds = %if.end156
  %139 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer165 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %139, i64 0, i32 3
  %140 = load ptr, ptr %fill_input_buffer165, align 8
  %141 = load ptr, ptr %cinfo.addr, align 8
  %call166 = call i32 %140(ptr noundef %141) #4
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.then164
  store i32 0, ptr %retval, align 4
  br label %return

if.end169:                                        ; preds = %if.then164
  %142 = load ptr, ptr %datasrc, align 8
  %143 = load ptr, ptr %142, align 8
  store ptr %143, ptr %next_input_byte, align 8
  %bytes_in_buffer171 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %142, i64 0, i32 1
  %144 = load i64, ptr %bytes_in_buffer171, align 8
  store i64 %144, ptr %bytes_in_buffer, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.end169, %if.end156
  %145 = load i64, ptr %bytes_in_buffer, align 8
  %dec173 = add i64 %145, -1
  store i64 %dec173, ptr %bytes_in_buffer, align 8
  %146 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %incdec.ptr174, ptr %next_input_byte, align 8
  %147 = load i8, ptr %146, align 1
  %conv175 = zext i8 %147 to i32
  store i32 %conv175, ptr %c, align 4
  %148 = load i32, ptr %c, align 4
  %149 = lshr i32 %148, 4
  %and178 = and i32 %149, 15
  %150 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %150, i64 0, i32 70
  store i32 %and178, ptr %Ah, align 4
  %and179 = and i32 %148, 15
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %150, i64 0, i32 71
  store i32 %and179, ptr %Al, align 8
  %151 = load ptr, ptr %cinfo.addr, align 8
  %152 = load ptr, ptr %151, align 8
  %msg_parm183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %152, i64 0, i32 6
  store ptr %msg_parm183, ptr %_mp181, align 8
  %Ss185 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %151, i64 0, i32 68
  %153 = load i32, ptr %Ss185, align 4
  store i32 %153, ptr %msg_parm183, align 4
  %154 = load ptr, ptr %cinfo.addr, align 8
  %Se187 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %154, i64 0, i32 69
  %155 = load i32, ptr %Se187, align 8
  %156 = load ptr, ptr %_mp181, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %156, i64 1
  store i32 %155, ptr %arrayidx188, align 4
  %Ah189 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %154, i64 0, i32 70
  %157 = load i32, ptr %Ah189, align 4
  %arrayidx190 = getelementptr inbounds i32, ptr %156, i64 2
  store i32 %157, ptr %arrayidx190, align 4
  %158 = load ptr, ptr %cinfo.addr, align 8
  %Al191 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %158, i64 0, i32 71
  %159 = load i32, ptr %Al191, align 8
  %160 = load ptr, ptr %_mp181, align 8
  %arrayidx192 = getelementptr inbounds i32, ptr %160, i64 3
  store i32 %159, ptr %arrayidx192, align 4
  %161 = load ptr, ptr %158, align 8
  %msg_code194 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %161, i64 0, i32 5
  store i32 104, ptr %msg_code194, align 8
  %162 = load ptr, ptr %cinfo.addr, align 8
  %163 = load ptr, ptr %162, align 8
  %emit_message196 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %163, i64 0, i32 1
  %164 = load ptr, ptr %emit_message196, align 8
  call void %164(ptr noundef nonnull %162, i32 noundef 1) #4
  %165 = load ptr, ptr %cinfo.addr, align 8
  %marker198 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %165, i64 0, i32 78
  %166 = load ptr, ptr %marker198, align 8
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %166, i64 0, i32 7
  store i32 0, ptr %next_restart_num, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %165, i64 0, i32 34
  %167 = load i32, ptr %input_scan_number, align 4
  %inc199 = add nsw i32 %167, 1
  store i32 %inc199, ptr %input_scan_number, align 4
  %168 = load ptr, ptr %next_input_byte, align 8
  %169 = load ptr, ptr %datasrc, align 8
  store ptr %168, ptr %169, align 8
  %170 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer201 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %169, i64 0, i32 1
  store i64 %170, ptr %bytes_in_buffer201, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end172, %if.then168, %if.then152, %if.then136, %if.then86, %if.then70, %if.then33, %if.then18, %if.then6
  %171 = load i32, ptr %retval, align 4
  ret i32 %171
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dac(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %index = alloca i32, align 4
  %val = alloca i32, align 4
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %call12 = call i32 %15(ptr noundef %16) #4
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
  br label %while.cond

while.cond:                                       ; preds = %if.end105, %if.end18
  %25 = load i64, ptr %length, align 8
  %cmp22 = icmp sgt i64 %25, 0
  br i1 %cmp22, label %do.body24, label %while.end

do.body24:                                        ; preds = %while.cond
  %26 = load i64, ptr %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %26, 0
  br i1 %cmp25, label %if.then27, label %if.end35

if.then27:                                        ; preds = %do.body24
  %27 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %28 = load ptr, ptr %fill_input_buffer28, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %call29 = call i32 %28(ptr noundef %29) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then27
  %30 = load ptr, ptr %datasrc, align 8
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %next_input_byte, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %bytes_in_buffer34, align 8
  store i64 %32, ptr %bytes_in_buffer, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %do.body24
  %33 = load i64, ptr %bytes_in_buffer, align 8
  %dec36 = add i64 %33, -1
  store i64 %dec36, ptr %bytes_in_buffer, align 8
  %34 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr37, ptr %next_input_byte, align 8
  %35 = load i8, ptr %34, align 1
  %conv38 = zext i8 %35 to i32
  store i32 %conv38, ptr %index, align 4
  %36 = load i64, ptr %bytes_in_buffer, align 8
  %cmp41 = icmp eq i64 %36, 0
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %if.end35
  %37 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer44 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i64 0, i32 3
  %38 = load ptr, ptr %fill_input_buffer44, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %call45 = call i32 %38(ptr noundef %39) #4
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then43
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then43
  %40 = load ptr, ptr %datasrc, align 8
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %next_input_byte, align 8
  %bytes_in_buffer50 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %40, i64 0, i32 1
  %42 = load i64, ptr %bytes_in_buffer50, align 8
  store i64 %42, ptr %bytes_in_buffer, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.end35
  %43 = load i64, ptr %bytes_in_buffer, align 8
  %dec52 = add i64 %43, -1
  store i64 %dec52, ptr %bytes_in_buffer, align 8
  %44 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %incdec.ptr53, ptr %next_input_byte, align 8
  %45 = load i8, ptr %44, align 1
  %conv54 = zext i8 %45 to i32
  store i32 %conv54, ptr %val, align 4
  %46 = load i64, ptr %length, align 8
  %sub56 = add nsw i64 %46, -2
  store i64 %sub56, ptr %length, align 8
  %47 = load ptr, ptr %cinfo.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 78, ptr %msg_code, align 8
  %49 = load i32, ptr %index, align 4
  %50 = load ptr, ptr %47, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6
  store i32 %49, ptr %msg_parm, align 4
  %51 = load i32, ptr %val, align 4
  %52 = load ptr, ptr %cinfo.addr, align 8
  %53 = load ptr, ptr %52, align 8
  %arrayidx60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 6, i32 0, i64 1
  store i32 %51, ptr %arrayidx60, align 4
  %54 = load ptr, ptr %52, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 1
  %55 = load ptr, ptr %emit_message, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  call void %55(ptr noundef %56, i32 noundef 1) #4
  %57 = load i32, ptr %index, align 4
  %cmp62 = icmp slt i32 %57, 0
  %58 = load i32, ptr %index, align 4
  %cmp64 = icmp sgt i32 %58, 31
  %or.cond = select i1 %cmp62, i1 true, i1 %cmp64
  br i1 %or.cond, label %if.then66, label %if.end73

if.then66:                                        ; preds = %if.end51
  %59 = load ptr, ptr %cinfo.addr, align 8
  %60 = load ptr, ptr %59, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 5
  store i32 26, ptr %msg_code68, align 8
  %61 = load i32, ptr %index, align 4
  %62 = load ptr, ptr %59, align 8
  %msg_parm70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 6
  store i32 %61, ptr %msg_parm70, align 4
  %63 = load ptr, ptr %cinfo.addr, align 8
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr %64, align 8
  call void %65(ptr noundef nonnull %63) #4
  br label %if.end73

if.end73:                                         ; preds = %if.end51, %if.then66
  %66 = load i32, ptr %index, align 4
  %cmp74 = icmp sgt i32 %66, 15
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.end73
  %67 = load i32, ptr %val, align 4
  %conv77 = trunc i32 %67 to i8
  %68 = load ptr, ptr %cinfo.addr, align 8
  %69 = load i32, ptr %index, align 4
  %sub78 = add nsw i32 %69, -16
  %idxprom = sext i32 %sub78 to i64
  %arrayidx79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i64 0, i32 48, i64 %idxprom
  store i8 %conv77, ptr %arrayidx79, align 1
  br label %if.end105

if.else:                                          ; preds = %if.end73
  %70 = load i32, ptr %val, align 4
  %71 = trunc i32 %70 to i8
  %conv80 = and i8 %71, 15
  %72 = load ptr, ptr %cinfo.addr, align 8
  %73 = load i32, ptr %index, align 4
  %idxprom81 = sext i32 %73 to i64
  %arrayidx82 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i64 0, i32 46, i64 %idxprom81
  store i8 %conv80, ptr %arrayidx82, align 1
  %74 = load i32, ptr %val, align 4
  %75 = lshr i32 %74, 4
  %conv83 = trunc i32 %75 to i8
  %76 = load ptr, ptr %cinfo.addr, align 8
  %77 = load i32, ptr %index, align 4
  %idxprom84 = sext i32 %77 to i64
  %arrayidx85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i64 0, i32 47, i64 %idxprom84
  store i8 %conv83, ptr %arrayidx85, align 1
  %idxprom87 = sext i32 %77 to i64
  %arrayidx88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i64 0, i32 46, i64 %idxprom87
  %78 = load i8, ptr %arrayidx88, align 1
  %79 = load ptr, ptr %cinfo.addr, align 8
  %80 = load i32, ptr %index, align 4
  %idxprom91 = sext i32 %80 to i64
  %arrayidx92 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i64 0, i32 47, i64 %idxprom91
  %81 = load i8, ptr %arrayidx92, align 1
  %cmp94 = icmp ugt i8 %78, %81
  br i1 %cmp94, label %if.then96, label %if.end105

if.then96:                                        ; preds = %if.else
  %82 = load ptr, ptr %cinfo.addr, align 8
  %83 = load ptr, ptr %82, align 8
  %msg_code98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 5
  store i32 27, ptr %msg_code98, align 8
  %84 = load i32, ptr %val, align 4
  %85 = load ptr, ptr %82, align 8
  %msg_parm100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %85, i64 0, i32 6
  store i32 %84, ptr %msg_parm100, align 4
  %86 = load ptr, ptr %cinfo.addr, align 8
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %87, align 8
  call void %88(ptr noundef nonnull %86) #4
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then96, %if.then76
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %89 = load ptr, ptr %next_input_byte, align 8
  %90 = load ptr, ptr %datasrc, align 8
  store ptr %89, ptr %90, align 8
  %91 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer107 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %90, i64 0, i32 1
  store i64 %91, ptr %bytes_in_buffer107, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then47, %if.then31, %if.then14, %if.then3
  %92 = load i32, ptr %retval, align 4
  ret i32 %92
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dht(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %bits = alloca [17 x i8], align 1
  %huffval = alloca [256 x i8], align 1
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %count = alloca i32, align 4
  %htblptr = alloca ptr, align 8
  %datasrc = alloca ptr, align 8
  %next_input_byte = alloca ptr, align 8
  %bytes_in_buffer = alloca i64, align 8
  %_mp = alloca ptr, align 8
  %_mp99 = alloca ptr, align 8
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %call12 = call i32 %15(ptr noundef %16) #4
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
  br label %while.cond

while.cond:                                       ; preds = %if.end194, %if.end18
  %25 = load i64, ptr %length, align 8
  %cmp22 = icmp sgt i64 %25, 0
  br i1 %cmp22, label %do.body24, label %while.end

do.body24:                                        ; preds = %while.cond
  %26 = load i64, ptr %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %26, 0
  br i1 %cmp25, label %if.then27, label %if.end35

if.then27:                                        ; preds = %do.body24
  %27 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %28 = load ptr, ptr %fill_input_buffer28, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %call29 = call i32 %28(ptr noundef %29) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then27
  %30 = load ptr, ptr %datasrc, align 8
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %next_input_byte, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %bytes_in_buffer34, align 8
  store i64 %32, ptr %bytes_in_buffer, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %do.body24
  %33 = load i64, ptr %bytes_in_buffer, align 8
  %dec36 = add i64 %33, -1
  store i64 %dec36, ptr %bytes_in_buffer, align 8
  %34 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr37, ptr %next_input_byte, align 8
  %35 = load i8, ptr %34, align 1
  %conv38 = zext i8 %35 to i32
  store i32 %conv38, ptr %index, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 79, ptr %msg_code, align 8
  %38 = load i32, ptr %index, align 4
  %39 = load ptr, ptr %36, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 6
  store i32 %38, ptr %msg_parm, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 1
  %42 = load ptr, ptr %emit_message, align 8
  call void %42(ptr noundef nonnull %40, i32 noundef 1) #4
  store i8 0, ptr %bits, align 1
  store i32 0, ptr %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end56, %if.end35
  %storemerge = phi i32 [ 1, %if.end35 ], [ %inc, %if.end56 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp43 = icmp slt i32 %storemerge, 17
  br i1 %cmp43, label %do.body45, label %for.end

do.body45:                                        ; preds = %for.cond
  %43 = load i64, ptr %bytes_in_buffer, align 8
  %cmp46 = icmp eq i64 %43, 0
  br i1 %cmp46, label %if.then48, label %if.end56

if.then48:                                        ; preds = %do.body45
  %44 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer49 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %44, i64 0, i32 3
  %45 = load ptr, ptr %fill_input_buffer49, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  %call50 = call i32 %45(ptr noundef %46) #4
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then48
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then48
  %47 = load ptr, ptr %datasrc, align 8
  %48 = load ptr, ptr %47, align 8
  store ptr %48, ptr %next_input_byte, align 8
  %bytes_in_buffer55 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %47, i64 0, i32 1
  %49 = load i64, ptr %bytes_in_buffer55, align 8
  store i64 %49, ptr %bytes_in_buffer, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %do.body45
  %50 = load i64, ptr %bytes_in_buffer, align 8
  %dec57 = add i64 %50, -1
  store i64 %dec57, ptr %bytes_in_buffer, align 8
  %51 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr58, ptr %next_input_byte, align 8
  %52 = load i8, ptr %51, align 1
  %53 = load i32, ptr %i, align 4
  %idxprom = sext i32 %53 to i64
  %arrayidx59 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom
  store i8 %52, ptr %arrayidx59, align 1
  %54 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %54 to i64
  %arrayidx62 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom61
  %55 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %55 to i32
  %56 = load i32, ptr %count, align 4
  %add64 = add nsw i32 %56, %conv63
  store i32 %add64, ptr %count, align 4
  %57 = load i32, ptr %i, align 4
  %inc = add nsw i32 %57, 1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %58 = load i64, ptr %length, align 8
  %sub65 = add nsw i64 %58, -17
  store i64 %sub65, ptr %length, align 8
  %59 = load ptr, ptr %cinfo.addr, align 8
  %60 = load ptr, ptr %59, align 8
  %msg_parm68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 6
  store ptr %msg_parm68, ptr %_mp, align 8
  %arrayidx69 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 1
  %61 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %61 to i32
  store i32 %conv70, ptr %msg_parm68, align 4
  %arrayidx72 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 2
  %62 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %62 to i32
  %63 = load ptr, ptr %_mp, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %63, i64 1
  store i32 %conv73, ptr %arrayidx74, align 4
  %arrayidx75 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 3
  %64 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %64 to i32
  %arrayidx77 = getelementptr inbounds i32, ptr %63, i64 2
  store i32 %conv76, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 4
  %65 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %65 to i32
  %66 = load ptr, ptr %_mp, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %66, i64 3
  store i32 %conv79, ptr %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 5
  %67 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %67 to i32
  %arrayidx83 = getelementptr inbounds i32, ptr %66, i64 4
  store i32 %conv82, ptr %arrayidx83, align 4
  %arrayidx84 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 6
  %68 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %68 to i32
  %69 = load ptr, ptr %_mp, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %69, i64 5
  store i32 %conv85, ptr %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 7
  %70 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %70 to i32
  %arrayidx89 = getelementptr inbounds i32, ptr %69, i64 6
  store i32 %conv88, ptr %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 8
  %71 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %71 to i32
  %72 = load ptr, ptr %_mp, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %72, i64 7
  store i32 %conv91, ptr %arrayidx92, align 4
  %73 = load ptr, ptr %cinfo.addr, align 8
  %74 = load ptr, ptr %73, align 8
  %msg_code94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 85, ptr %msg_code94, align 8
  %75 = load ptr, ptr %73, align 8
  %emit_message96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %75, i64 0, i32 1
  %76 = load ptr, ptr %emit_message96, align 8
  %77 = load ptr, ptr %cinfo.addr, align 8
  call void %76(ptr noundef %77, i32 noundef 2) #4
  %78 = load ptr, ptr %cinfo.addr, align 8
  %79 = load ptr, ptr %78, align 8
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i64 0, i32 6
  store ptr %msg_parm101, ptr %_mp99, align 8
  %arrayidx103 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 9
  %80 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %80 to i32
  store i32 %conv104, ptr %msg_parm101, align 4
  %arrayidx106 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 10
  %81 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %81 to i32
  %82 = load ptr, ptr %_mp99, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %82, i64 1
  store i32 %conv107, ptr %arrayidx108, align 4
  %arrayidx109 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 11
  %83 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %83 to i32
  %arrayidx111 = getelementptr inbounds i32, ptr %82, i64 2
  store i32 %conv110, ptr %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 12
  %84 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %84 to i32
  %85 = load ptr, ptr %_mp99, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %85, i64 3
  store i32 %conv113, ptr %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 13
  %86 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %86 to i32
  %arrayidx117 = getelementptr inbounds i32, ptr %85, i64 4
  store i32 %conv116, ptr %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 14
  %87 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %87 to i32
  %88 = load ptr, ptr %_mp99, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %88, i64 5
  store i32 %conv119, ptr %arrayidx120, align 4
  %arrayidx121 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 15
  %89 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %89 to i32
  %arrayidx123 = getelementptr inbounds i32, ptr %88, i64 6
  store i32 %conv122, ptr %arrayidx123, align 4
  %arrayidx124 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 16
  %90 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %90 to i32
  %91 = load ptr, ptr %_mp99, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %91, i64 7
  store i32 %conv125, ptr %arrayidx126, align 4
  %92 = load ptr, ptr %cinfo.addr, align 8
  %93 = load ptr, ptr %92, align 8
  %msg_code128 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i64 0, i32 5
  store i32 85, ptr %msg_code128, align 8
  %94 = load ptr, ptr %92, align 8
  %emit_message130 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %94, i64 0, i32 1
  %95 = load ptr, ptr %emit_message130, align 8
  %96 = load ptr, ptr %cinfo.addr, align 8
  call void %95(ptr noundef %96, i32 noundef 2) #4
  %97 = load i32, ptr %count, align 4
  %cmp132 = icmp sgt i32 %97, 256
  br i1 %cmp132, label %if.then137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %98 = load i32, ptr %count, align 4
  %conv134 = sext i32 %98 to i64
  %99 = load i64, ptr %length, align 8
  %cmp135 = icmp slt i64 %99, %conv134
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %lor.lhs.false, %for.end
  %100 = load ptr, ptr %cinfo.addr, align 8
  %101 = load ptr, ptr %100, align 8
  %msg_code139 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i64 0, i32 5
  store i32 28, ptr %msg_code139, align 8
  %102 = load ptr, ptr %100, align 8
  %103 = load ptr, ptr %102, align 8
  call void %103(ptr noundef nonnull %100) #4
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %lor.lhs.false
  br label %for.cond142

for.cond142:                                      ; preds = %if.end157, %if.end141
  %storemerge1 = phi i32 [ 0, %if.end141 ], [ %inc164, %if.end157 ]
  store i32 %storemerge1, ptr %i, align 4
  %104 = load i32, ptr %count, align 4
  %cmp143 = icmp slt i32 %storemerge1, %104
  br i1 %cmp143, label %do.body146, label %for.end165

do.body146:                                       ; preds = %for.cond142
  %105 = load i64, ptr %bytes_in_buffer, align 8
  %cmp147 = icmp eq i64 %105, 0
  br i1 %cmp147, label %if.then149, label %if.end157

if.then149:                                       ; preds = %do.body146
  %106 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer150 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %106, i64 0, i32 3
  %107 = load ptr, ptr %fill_input_buffer150, align 8
  %108 = load ptr, ptr %cinfo.addr, align 8
  %call151 = call i32 %107(ptr noundef %108) #4
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.then149
  store i32 0, ptr %retval, align 4
  br label %return

if.end154:                                        ; preds = %if.then149
  %109 = load ptr, ptr %datasrc, align 8
  %110 = load ptr, ptr %109, align 8
  store ptr %110, ptr %next_input_byte, align 8
  %bytes_in_buffer156 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %109, i64 0, i32 1
  %111 = load i64, ptr %bytes_in_buffer156, align 8
  store i64 %111, ptr %bytes_in_buffer, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.end154, %do.body146
  %112 = load i64, ptr %bytes_in_buffer, align 8
  %dec158 = add i64 %112, -1
  store i64 %dec158, ptr %bytes_in_buffer, align 8
  %113 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr159 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %incdec.ptr159, ptr %next_input_byte, align 8
  %114 = load i8, ptr %113, align 1
  %115 = load i32, ptr %i, align 4
  %idxprom160 = sext i32 %115 to i64
  %arrayidx161 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom160
  store i8 %114, ptr %arrayidx161, align 1
  %116 = load i32, ptr %i, align 4
  %inc164 = add nsw i32 %116, 1
  br label %for.cond142, !llvm.loop !18

for.end165:                                       ; preds = %for.cond142
  %117 = load i32, ptr %count, align 4
  %conv166 = sext i32 %117 to i64
  %118 = load i64, ptr %length, align 8
  %sub167 = sub nsw i64 %118, %conv166
  store i64 %sub167, ptr %length, align 8
  %119 = load i32, ptr %index, align 4
  %and = and i32 %119, 16
  %tobool168.not = icmp eq i32 %and, 0
  br i1 %tobool168.not, label %if.else, label %if.then169

if.then169:                                       ; preds = %for.end165
  %120 = load i32, ptr %index, align 4
  %sub170 = add nsw i32 %120, -16
  store i32 %sub170, ptr %index, align 4
  %121 = load ptr, ptr %cinfo.addr, align 8
  %idxprom171 = sext i32 %sub170 to i64
  %arrayidx172 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %121, i64 0, i32 41, i64 %idxprom171
  br label %if.end175

if.else:                                          ; preds = %for.end165
  %122 = load ptr, ptr %cinfo.addr, align 8
  %123 = load i32, ptr %index, align 4
  %idxprom173 = sext i32 %123 to i64
  %arrayidx174 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %122, i64 0, i32 40, i64 %idxprom173
  br label %if.end175

if.end175:                                        ; preds = %if.else, %if.then169
  %storemerge2 = phi ptr [ %arrayidx174, %if.else ], [ %arrayidx172, %if.then169 ]
  store ptr %storemerge2, ptr %htblptr, align 8
  %124 = load i32, ptr %index, align 4
  %cmp176 = icmp slt i32 %124, 0
  %125 = load i32, ptr %index, align 4
  %cmp179 = icmp sgt i32 %125, 3
  %or.cond = select i1 %cmp176, i1 true, i1 %cmp179
  br i1 %or.cond, label %if.then181, label %if.end189

if.then181:                                       ; preds = %if.end175
  %126 = load ptr, ptr %cinfo.addr, align 8
  %127 = load ptr, ptr %126, align 8
  %msg_code183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 5
  store i32 29, ptr %msg_code183, align 8
  %128 = load i32, ptr %index, align 4
  %129 = load ptr, ptr %126, align 8
  %msg_parm185 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %129, i64 0, i32 6
  store i32 %128, ptr %msg_parm185, align 4
  %130 = load ptr, ptr %cinfo.addr, align 8
  %131 = load ptr, ptr %130, align 8
  %132 = load ptr, ptr %131, align 8
  call void %132(ptr noundef nonnull %130) #4
  br label %if.end189

if.end189:                                        ; preds = %if.end175, %if.then181
  %133 = load ptr, ptr %htblptr, align 8
  %134 = load ptr, ptr %133, align 8
  %cmp190 = icmp eq ptr %134, null
  br i1 %cmp190, label %if.then192, label %if.end194

if.then192:                                       ; preds = %if.end189
  %135 = load ptr, ptr %cinfo.addr, align 8
  %call193 = call ptr @jpeg_alloc_huff_table(ptr noundef %135) #4
  %136 = load ptr, ptr %htblptr, align 8
  store ptr %call193, ptr %136, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end189
  %137 = load ptr, ptr %htblptr, align 8
  %138 = load ptr, ptr %137, align 8
  %139 = call i64 @llvm.objectsize.i64.p0(ptr %138, i1 false, i1 true, i1 false)
  %call200 = call ptr @__memcpy_chk(ptr noundef %138, ptr noundef nonnull %bits, i64 noundef 17, i64 noundef %139) #4
  %140 = load ptr, ptr %137, align 8
  %huffval201 = getelementptr inbounds %struct.JHUFF_TBL, ptr %140, i64 0, i32 1
  %huffval204 = getelementptr inbounds %struct.JHUFF_TBL, ptr %140, i64 0, i32 1
  %141 = call i64 @llvm.objectsize.i64.p0(ptr %huffval204, i1 false, i1 true, i1 false)
  %call206 = call ptr @__memcpy_chk(ptr noundef nonnull %huffval201, ptr noundef nonnull %huffval, i64 noundef 256, i64 noundef %141) #4
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %142 = load ptr, ptr %next_input_byte, align 8
  %143 = load ptr, ptr %datasrc, align 8
  store ptr %142, ptr %143, align 8
  %144 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer208 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %143, i64 0, i32 1
  store i64 %144, ptr %bytes_in_buffer208, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then153, %if.then52, %if.then31, %if.then14, %if.then3
  %145 = load i32, ptr %retval, align 4
  ret i32 %145
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dqt(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %prec = alloca i32, align 4
  %tmp = alloca i32, align 4
  %quant_ptr = alloca ptr, align 8
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %call12 = call i32 %15(ptr noundef %16) #4
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
  br label %while.cond

while.cond:                                       ; preds = %if.end196, %if.end18
  %25 = load i64, ptr %length, align 8
  %cmp22 = icmp sgt i64 %25, 0
  br i1 %cmp22, label %do.body24, label %while.end

do.body24:                                        ; preds = %while.cond
  %26 = load i64, ptr %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %26, 0
  br i1 %cmp25, label %if.then27, label %if.end35

if.then27:                                        ; preds = %do.body24
  %27 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i64 0, i32 3
  %28 = load ptr, ptr %fill_input_buffer28, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %call29 = call i32 %28(ptr noundef %29) #4
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then27
  %30 = load ptr, ptr %datasrc, align 8
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %next_input_byte, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %bytes_in_buffer34, align 8
  store i64 %32, ptr %bytes_in_buffer, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %do.body24
  %33 = load i64, ptr %bytes_in_buffer, align 8
  %dec36 = add i64 %33, -1
  store i64 %dec36, ptr %bytes_in_buffer, align 8
  %34 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %incdec.ptr37, ptr %next_input_byte, align 8
  %35 = load i8, ptr %34, align 1
  %conv38 = zext i8 %35 to i32
  store i32 %conv38, ptr %n, align 4
  %36 = load i32, ptr %n, align 4
  %shr = ashr i32 %36, 4
  store i32 %shr, ptr %prec, align 4
  %and = and i32 %36, 15
  store i32 %and, ptr %n, align 4
  %37 = load ptr, ptr %cinfo.addr, align 8
  %38 = load ptr, ptr %37, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 80, ptr %msg_code, align 8
  %39 = load ptr, ptr %37, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 6
  store i32 %and, ptr %msg_parm, align 4
  %40 = load i32, ptr %prec, align 4
  %41 = load ptr, ptr %cinfo.addr, align 8
  %42 = load ptr, ptr %41, align 8
  %arrayidx43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6, i32 0, i64 1
  store i32 %40, ptr %arrayidx43, align 4
  %43 = load ptr, ptr %41, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 1
  %44 = load ptr, ptr %emit_message, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  call void %44(ptr noundef %45, i32 noundef 1) #4
  %46 = load i32, ptr %n, align 4
  %cmp45 = icmp sgt i32 %46, 3
  br i1 %cmp45, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.end35
  %47 = load ptr, ptr %cinfo.addr, align 8
  %48 = load ptr, ptr %47, align 8
  %msg_code49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 5
  store i32 30, ptr %msg_code49, align 8
  %49 = load i32, ptr %n, align 4
  %50 = load ptr, ptr %47, align 8
  %msg_parm51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6
  store i32 %49, ptr %msg_parm51, align 4
  %51 = load ptr, ptr %cinfo.addr, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %52, align 8
  call void %53(ptr noundef nonnull %51) #4
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.end35
  %54 = load ptr, ptr %cinfo.addr, align 8
  %55 = load i32, ptr %n, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i64 0, i32 39, i64 %idxprom
  %56 = load ptr, ptr %arrayidx55, align 8
  %cmp56 = icmp eq ptr %56, null
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.end54
  %57 = load ptr, ptr %cinfo.addr, align 8
  %call59 = call ptr @jpeg_alloc_quant_table(ptr noundef %57) #4
  %58 = load i32, ptr %n, align 4
  %idxprom61 = sext i32 %58 to i64
  %arrayidx62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i64 0, i32 39, i64 %idxprom61
  store ptr %call59, ptr %arrayidx62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end54
  %59 = load ptr, ptr %cinfo.addr, align 8
  %60 = load i32, ptr %n, align 4
  %idxprom65 = sext i32 %60 to i64
  %arrayidx66 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i64 0, i32 39, i64 %idxprom65
  %61 = load ptr, ptr %arrayidx66, align 8
  store ptr %61, ptr %quant_ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end119, %if.end63
  %storemerge = phi i32 [ 0, %if.end63 ], [ %inc, %if.end119 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp67 = icmp slt i32 %storemerge, 64
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i32, ptr %prec, align 4
  %tobool69.not = icmp eq i32 %62, 0
  br i1 %tobool69.not, label %do.body103, label %do.body71

do.body71:                                        ; preds = %for.body
  %63 = load i64, ptr %bytes_in_buffer, align 8
  %cmp72 = icmp eq i64 %63, 0
  br i1 %cmp72, label %if.then74, label %if.end82

if.then74:                                        ; preds = %do.body71
  %64 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %64, i64 0, i32 3
  %65 = load ptr, ptr %fill_input_buffer75, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  %call76 = call i32 %65(ptr noundef %66) #4
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then74
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.then74
  %67 = load ptr, ptr %datasrc, align 8
  %68 = load ptr, ptr %67, align 8
  store ptr %68, ptr %next_input_byte, align 8
  %bytes_in_buffer81 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %67, i64 0, i32 1
  %69 = load i64, ptr %bytes_in_buffer81, align 8
  store i64 %69, ptr %bytes_in_buffer, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %do.body71
  %70 = load i64, ptr %bytes_in_buffer, align 8
  %dec83 = add i64 %70, -1
  store i64 %dec83, ptr %bytes_in_buffer, align 8
  %71 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %incdec.ptr84, ptr %next_input_byte, align 8
  %72 = load i8, ptr %71, align 1
  %conv85 = zext i8 %72 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  store i32 %shl86, ptr %tmp, align 4
  %73 = load i64, ptr %bytes_in_buffer, align 8
  %cmp87 = icmp eq i64 %73, 0
  br i1 %cmp87, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end82
  %74 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer90 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %74, i64 0, i32 3
  %75 = load ptr, ptr %fill_input_buffer90, align 8
  %76 = load ptr, ptr %cinfo.addr, align 8
  %call91 = call i32 %75(ptr noundef %76) #4
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then89
  store i32 0, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then89
  %77 = load ptr, ptr %datasrc, align 8
  %78 = load ptr, ptr %77, align 8
  store ptr %78, ptr %next_input_byte, align 8
  %bytes_in_buffer96 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %77, i64 0, i32 1
  %79 = load i64, ptr %bytes_in_buffer96, align 8
  store i64 %79, ptr %bytes_in_buffer, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end82
  %80 = load i64, ptr %bytes_in_buffer, align 8
  %dec98 = add i64 %80, -1
  store i64 %dec98, ptr %bytes_in_buffer, align 8
  %81 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %incdec.ptr99, ptr %next_input_byte, align 8
  %82 = load i8, ptr %81, align 1
  %conv100 = zext i8 %82 to i32
  %83 = load i32, ptr %tmp, align 4
  %add101 = add i32 %83, %conv100
  store i32 %add101, ptr %tmp, align 4
  br label %if.end119

do.body103:                                       ; preds = %for.body
  %84 = load i64, ptr %bytes_in_buffer, align 8
  %cmp104 = icmp eq i64 %84, 0
  br i1 %cmp104, label %if.then106, label %if.end114

if.then106:                                       ; preds = %do.body103
  %85 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer107 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %85, i64 0, i32 3
  %86 = load ptr, ptr %fill_input_buffer107, align 8
  %87 = load ptr, ptr %cinfo.addr, align 8
  %call108 = call i32 %86(ptr noundef %87) #4
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then106
  store i32 0, ptr %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.then106
  %88 = load ptr, ptr %datasrc, align 8
  %89 = load ptr, ptr %88, align 8
  store ptr %89, ptr %next_input_byte, align 8
  %bytes_in_buffer113 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %88, i64 0, i32 1
  %90 = load i64, ptr %bytes_in_buffer113, align 8
  store i64 %90, ptr %bytes_in_buffer, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.end111, %do.body103
  %91 = load i64, ptr %bytes_in_buffer, align 8
  %dec115 = add i64 %91, -1
  store i64 %dec115, ptr %bytes_in_buffer, align 8
  %92 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr116 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %incdec.ptr116, ptr %next_input_byte, align 8
  %93 = load i8, ptr %92, align 1
  %conv117 = zext i8 %93 to i32
  store i32 %conv117, ptr %tmp, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.end114, %if.end97
  %94 = load i32, ptr %tmp, align 4
  %conv120 = trunc i32 %94 to i16
  %95 = load ptr, ptr %quant_ptr, align 8
  %96 = load i32, ptr %i, align 4
  %idxprom121 = sext i32 %96 to i64
  %arrayidx122 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom121
  %97 = load i32, ptr %arrayidx122, align 4
  %idxprom123 = sext i32 %97 to i64
  %arrayidx124 = getelementptr inbounds [64 x i16], ptr %95, i64 0, i64 %idxprom123
  store i16 %conv120, ptr %arrayidx124, align 2
  %98 = load i32, ptr %i, align 4
  %inc = add nsw i32 %98, 1
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %99 = load ptr, ptr %cinfo.addr, align 8
  %100 = load ptr, ptr %99, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i64 0, i32 7
  %101 = load i32, ptr %trace_level, align 4
  %cmp126 = icmp sgt i32 %101, 1
  br i1 %cmp126, label %for.cond129, label %if.end191

for.cond129:                                      ; preds = %for.end, %do.body133
  %storemerge1 = phi i32 [ %add189, %do.body133 ], [ 0, %for.end ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp130 = icmp slt i32 %storemerge1, 64
  br i1 %cmp130, label %do.body133, label %if.end191

do.body133:                                       ; preds = %for.cond129
  %102 = load ptr, ptr %cinfo.addr, align 8
  %103 = load ptr, ptr %102, align 8
  %msg_parm135 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 6
  store ptr %msg_parm135, ptr %_mp, align 8
  %104 = load ptr, ptr %quant_ptr, align 8
  %105 = load i32, ptr %i, align 4
  %idxprom137 = sext i32 %105 to i64
  %arrayidx138 = getelementptr inbounds [64 x i16], ptr %104, i64 0, i64 %idxprom137
  %106 = load i16, ptr %arrayidx138, align 2
  %conv139 = zext i16 %106 to i32
  %107 = load ptr, ptr %_mp, align 8
  store i32 %conv139, ptr %107, align 4
  %108 = load ptr, ptr %quant_ptr, align 8
  %109 = load i32, ptr %i, align 4
  %add142 = add nsw i32 %109, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [64 x i16], ptr %108, i64 0, i64 %idxprom143
  %110 = load i16, ptr %arrayidx144, align 2
  %conv145 = zext i16 %110 to i32
  %111 = load ptr, ptr %_mp, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %111, i64 1
  store i32 %conv145, ptr %arrayidx146, align 4
  %112 = load ptr, ptr %quant_ptr, align 8
  %113 = load i32, ptr %i, align 4
  %add148 = add nsw i32 %113, 2
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [64 x i16], ptr %112, i64 0, i64 %idxprom149
  %114 = load i16, ptr %arrayidx150, align 2
  %conv151 = zext i16 %114 to i32
  %115 = load ptr, ptr %_mp, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %115, i64 2
  store i32 %conv151, ptr %arrayidx152, align 4
  %116 = load ptr, ptr %quant_ptr, align 8
  %117 = load i32, ptr %i, align 4
  %add154 = add nsw i32 %117, 3
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [64 x i16], ptr %116, i64 0, i64 %idxprom155
  %118 = load i16, ptr %arrayidx156, align 2
  %conv157 = zext i16 %118 to i32
  %119 = load ptr, ptr %_mp, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %119, i64 3
  store i32 %conv157, ptr %arrayidx158, align 4
  %120 = load ptr, ptr %quant_ptr, align 8
  %121 = load i32, ptr %i, align 4
  %add160 = add nsw i32 %121, 4
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [64 x i16], ptr %120, i64 0, i64 %idxprom161
  %122 = load i16, ptr %arrayidx162, align 2
  %conv163 = zext i16 %122 to i32
  %123 = load ptr, ptr %_mp, align 8
  %arrayidx164 = getelementptr inbounds i32, ptr %123, i64 4
  store i32 %conv163, ptr %arrayidx164, align 4
  %124 = load ptr, ptr %quant_ptr, align 8
  %125 = load i32, ptr %i, align 4
  %add166 = add nsw i32 %125, 5
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [64 x i16], ptr %124, i64 0, i64 %idxprom167
  %126 = load i16, ptr %arrayidx168, align 2
  %conv169 = zext i16 %126 to i32
  %127 = load ptr, ptr %_mp, align 8
  %arrayidx170 = getelementptr inbounds i32, ptr %127, i64 5
  store i32 %conv169, ptr %arrayidx170, align 4
  %128 = load ptr, ptr %quant_ptr, align 8
  %129 = load i32, ptr %i, align 4
  %add172 = add nsw i32 %129, 6
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds [64 x i16], ptr %128, i64 0, i64 %idxprom173
  %130 = load i16, ptr %arrayidx174, align 2
  %conv175 = zext i16 %130 to i32
  %131 = load ptr, ptr %_mp, align 8
  %arrayidx176 = getelementptr inbounds i32, ptr %131, i64 6
  store i32 %conv175, ptr %arrayidx176, align 4
  %132 = load ptr, ptr %quant_ptr, align 8
  %133 = load i32, ptr %i, align 4
  %add178 = add nsw i32 %133, 7
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [64 x i16], ptr %132, i64 0, i64 %idxprom179
  %134 = load i16, ptr %arrayidx180, align 2
  %conv181 = zext i16 %134 to i32
  %135 = load ptr, ptr %_mp, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %135, i64 7
  store i32 %conv181, ptr %arrayidx182, align 4
  %136 = load ptr, ptr %cinfo.addr, align 8
  %137 = load ptr, ptr %136, align 8
  %msg_code184 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %137, i64 0, i32 5
  store i32 92, ptr %msg_code184, align 8
  %138 = load ptr, ptr %136, align 8
  %emit_message186 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %138, i64 0, i32 1
  %139 = load ptr, ptr %emit_message186, align 8
  %140 = load ptr, ptr %cinfo.addr, align 8
  call void %139(ptr noundef %140, i32 noundef 2) #4
  %141 = load i32, ptr %i, align 4
  %add189 = add nsw i32 %141, 8
  br label %for.cond129, !llvm.loop !21

if.end191:                                        ; preds = %for.cond129, %for.end
  %142 = load i64, ptr %length, align 8
  %sub192 = add nsw i64 %142, -65
  store i64 %sub192, ptr %length, align 8
  %143 = load i32, ptr %prec, align 4
  %tobool193.not = icmp eq i32 %143, 0
  br i1 %tobool193.not, label %if.end196, label %if.then194

if.then194:                                       ; preds = %if.end191
  %144 = load i64, ptr %length, align 8
  %sub195 = add nsw i64 %144, -64
  store i64 %sub195, ptr %length, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %if.end191
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %145 = load ptr, ptr %next_input_byte, align 8
  %146 = load ptr, ptr %datasrc, align 8
  store ptr %145, ptr %146, align 8
  %147 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer198 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %146, i64 0, i32 1
  store i64 %147, ptr %bytes_in_buffer198, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then110, %if.then93, %if.then78, %if.then31, %if.then14, %if.then3
  %148 = load i32, ptr %retval, align 4
  ret i32 %148
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_dri(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %tmp = alloca i32, align 4
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
  %call = call i32 %5(ptr noundef %6) #4
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
  %call12 = call i32 %15(ptr noundef %16) #4
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
  %cmp22.not = icmp eq i64 %24, 4
  br i1 %cmp22.not, label %do.body27, label %if.then24

if.then24:                                        ; preds = %if.end18
  %25 = load ptr, ptr %cinfo.addr, align 8
  %26 = load ptr, ptr %25, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 9, ptr %msg_code, align 8
  %27 = load ptr, ptr %25, align 8
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull %25) #4
  br label %do.body27

do.body27:                                        ; preds = %if.end18, %if.then24
  %29 = load i64, ptr %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %29, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %do.body27
  %30 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %30, i64 0, i32 3
  %31 = load ptr, ptr %fill_input_buffer31, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %call32 = call i32 %31(ptr noundef %32) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then30
  %33 = load ptr, ptr %datasrc, align 8
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %next_input_byte, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %33, i64 0, i32 1
  %35 = load i64, ptr %bytes_in_buffer37, align 8
  store i64 %35, ptr %bytes_in_buffer, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %do.body27
  %36 = load i64, ptr %bytes_in_buffer, align 8
  %dec39 = add i64 %36, -1
  store i64 %dec39, ptr %bytes_in_buffer, align 8
  %37 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %incdec.ptr40, ptr %next_input_byte, align 8
  %38 = load i8, ptr %37, align 1
  %conv41 = zext i8 %38 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  store i32 %shl42, ptr %tmp, align 4
  %39 = load i64, ptr %bytes_in_buffer, align 8
  %cmp43 = icmp eq i64 %39, 0
  br i1 %cmp43, label %if.then45, label %if.end53

if.then45:                                        ; preds = %if.end38
  %40 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer46 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %40, i64 0, i32 3
  %41 = load ptr, ptr %fill_input_buffer46, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  %call47 = call i32 %41(ptr noundef %42) #4
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then45
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then45
  %43 = load ptr, ptr %datasrc, align 8
  %44 = load ptr, ptr %43, align 8
  store ptr %44, ptr %next_input_byte, align 8
  %bytes_in_buffer52 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %43, i64 0, i32 1
  %45 = load i64, ptr %bytes_in_buffer52, align 8
  store i64 %45, ptr %bytes_in_buffer, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end38
  %46 = load i64, ptr %bytes_in_buffer, align 8
  %dec54 = add i64 %46, -1
  store i64 %dec54, ptr %bytes_in_buffer, align 8
  %47 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %47, i64 1
  store ptr %incdec.ptr55, ptr %next_input_byte, align 8
  %48 = load i8, ptr %47, align 1
  %conv56 = zext i8 %48 to i32
  %49 = load i32, ptr %tmp, align 4
  %add57 = add i32 %49, %conv56
  store i32 %add57, ptr %tmp, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %51 = load ptr, ptr %50, align 8
  %msg_code60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i64 0, i32 5
  store i32 81, ptr %msg_code60, align 8
  %52 = load i32, ptr %tmp, align 4
  %53 = load ptr, ptr %50, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 6
  store i32 %52, ptr %msg_parm, align 4
  %54 = load ptr, ptr %cinfo.addr, align 8
  %55 = load ptr, ptr %54, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i64 0, i32 1
  %56 = load ptr, ptr %emit_message, align 8
  call void %56(ptr noundef nonnull %54, i32 noundef 1) #4
  %57 = load i32, ptr %tmp, align 4
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i64 0, i32 49
  store i32 %57, ptr %restart_interval, align 8
  %58 = load ptr, ptr %next_input_byte, align 8
  %59 = load ptr, ptr %datasrc, align 8
  store ptr %58, ptr %59, align 8
  %60 = load i64, ptr %bytes_in_buffer, align 8
  %bytes_in_buffer64 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %59, i64 0, i32 1
  store i64 %60, ptr %bytes_in_buffer64, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then49, %if.then34, %if.then14, %if.then3
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
