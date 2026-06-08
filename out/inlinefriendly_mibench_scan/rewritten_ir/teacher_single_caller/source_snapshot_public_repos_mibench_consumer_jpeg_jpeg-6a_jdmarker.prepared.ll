; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmarker.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdmarker.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 72
  %1 = load i32, ptr %unread_marker, align 4
  store i32 %1, ptr %marker, align 4
  store i32 1, ptr %action, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 117, ptr %msg_code, align 8
  %4 = load i32, ptr %marker, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %4, ptr %arrayidx, align 4
  %7 = load i32, ptr %desired.addr, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err2, align 8
  %msg_parm3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %msg_parm3, i64 0, i64 1
  store i32 %7, ptr %arrayidx4, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err5, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %emit_message, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13, i32 noundef -1)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %14 = load i32, ptr %marker, align 4
  %cmp = icmp slt i32 %14, 192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 2, ptr %action, align 4
  br label %if.end31

if.else:                                          ; preds = %for.cond
  %15 = load i32, ptr %marker, align 4
  %cmp6 = icmp slt i32 %15, 208
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %16 = load i32, ptr %marker, align 4
  %cmp7 = icmp sgt i32 %16, 215
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  store i32 3, ptr %action, align 4
  br label %if.end30

if.else9:                                         ; preds = %lor.lhs.false
  %17 = load i32, ptr %marker, align 4
  %18 = load i32, ptr %desired.addr, align 4
  %add = add nsw i32 %18, 1
  %and = and i32 %add, 7
  %add10 = add nsw i32 208, %and
  %cmp11 = icmp eq i32 %17, %add10
  br i1 %cmp11, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.else9
  %19 = load i32, ptr %marker, align 4
  %20 = load i32, ptr %desired.addr, align 4
  %add13 = add nsw i32 %20, 2
  %and14 = and i32 %add13, 7
  %add15 = add nsw i32 208, %and14
  %cmp16 = icmp eq i32 %19, %add15
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %lor.lhs.false12, %if.else9
  store i32 3, ptr %action, align 4
  br label %if.end29

if.else18:                                        ; preds = %lor.lhs.false12
  %21 = load i32, ptr %marker, align 4
  %22 = load i32, ptr %desired.addr, align 4
  %sub = sub nsw i32 %22, 1
  %and19 = and i32 %sub, 7
  %add20 = add nsw i32 208, %and19
  %cmp21 = icmp eq i32 %21, %add20
  br i1 %cmp21, label %if.then27, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.else18
  %23 = load i32, ptr %marker, align 4
  %24 = load i32, ptr %desired.addr, align 4
  %sub23 = sub nsw i32 %24, 2
  %and24 = and i32 %sub23, 7
  %add25 = add nsw i32 208, %and24
  %cmp26 = icmp eq i32 %23, %add25
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %lor.lhs.false22, %if.else18
  store i32 2, ptr %action, align 4
  br label %if.end

if.else28:                                        ; preds = %lor.lhs.false22
  store i32 1, ptr %action, align 4
  br label %if.end

if.end:                                           ; preds = %if.else28, %if.then27
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then17
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err32, align 8
  %msg_code33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i32 0, i32 5
  store i32 96, ptr %msg_code33, align 8
  %27 = load i32, ptr %marker, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err34, align 8
  %msg_parm35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 6
  %arrayidx36 = getelementptr inbounds [8 x i32], ptr %msg_parm35, i64 0, i64 0
  store i32 %27, ptr %arrayidx36, align 4
  %30 = load i32, ptr %action, align 4
  %31 = load ptr, ptr %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %err37, align 8
  %msg_parm38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %msg_parm38, i64 0, i64 1
  store i32 %30, ptr %arrayidx39, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err40, align 8
  %emit_message41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %emit_message41, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  call void %35(ptr noundef %36, i32 noundef 4)
  %37 = load i32, ptr %action, align 4
  switch i32 %37, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb43
    i32 3, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.end31
  %38 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 72
  store i32 0, ptr %unread_marker42, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %if.end31
  %39 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @next_marker(ptr noundef %39)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end45, label %if.then44

if.then44:                                        ; preds = %sw.bb43
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %sw.bb43
  %40 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 72
  %41 = load i32, ptr %unread_marker46, align 4
  store i32 %41, ptr %marker, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end31
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end31, %if.end45
  br label %for.cond

return:                                           ; preds = %sw.bb47, %if.then44, %sw.bb
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end50, %entry
  br label %do.body

do.body:                                          ; preds = %for.cond
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, ptr %c, align 4
  br label %do.end

do.end:                                           ; preds = %if.end6
  br label %while.cond

while.cond:                                       ; preds = %do.end26, %do.end
  %17 = load i32, ptr %c, align 4
  %cmp7 = icmp ne i32 %17, 255
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 78
  %19 = load ptr, ptr %marker, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %discarded_bytes, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %discarded_bytes, align 4
  %21 = load ptr, ptr %next_input_byte, align 8
  %22 = load ptr, ptr %datasrc, align 8
  %next_input_byte9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %22, i32 0, i32 0
  store ptr %21, ptr %next_input_byte9, align 8
  %23 = load i64, ptr %bytes_in_buffer, align 8
  %24 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer10 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %24, i32 0, i32 1
  store i64 %23, ptr %bytes_in_buffer10, align 8
  br label %do.body11

do.body11:                                        ; preds = %while.body
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %cmp12 = icmp eq i64 %25, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %do.body11
  %26 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %fill_input_buffer15, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %call16 = call i32 %27(ptr noundef %28)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  %29 = load ptr, ptr %datasrc, align 8
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %next_input_byte20, align 8
  store ptr %30, ptr %next_input_byte, align 8
  %31 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %31, i32 0, i32 1
  %32 = load i64, ptr %bytes_in_buffer21, align 8
  store i64 %32, ptr %bytes_in_buffer, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %do.body11
  %33 = load i64, ptr %bytes_in_buffer, align 8
  %dec23 = add i64 %33, -1
  store i64 %dec23, ptr %bytes_in_buffer, align 8
  %34 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr24, ptr %next_input_byte, align 8
  %35 = load i8, ptr %34, align 1
  %conv25 = zext i8 %35 to i32
  store i32 %conv25, ptr %c, align 4
  br label %do.end26

do.end26:                                         ; preds = %if.end22
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %do.body27

do.body27:                                        ; preds = %do.cond, %while.end
  br label %do.body28

do.body28:                                        ; preds = %do.body27
  %36 = load i64, ptr %bytes_in_buffer, align 8
  %cmp29 = icmp eq i64 %36, 0
  br i1 %cmp29, label %if.then31, label %if.end39

if.then31:                                        ; preds = %do.body28
  %37 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %fill_input_buffer32, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %call33 = call i32 %38(ptr noundef %39)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.then31
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then31
  %40 = load ptr, ptr %datasrc, align 8
  %next_input_byte37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %next_input_byte37, align 8
  store ptr %41, ptr %next_input_byte, align 8
  %42 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer38 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i32 0, i32 1
  %43 = load i64, ptr %bytes_in_buffer38, align 8
  store i64 %43, ptr %bytes_in_buffer, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %do.body28
  %44 = load i64, ptr %bytes_in_buffer, align 8
  %dec40 = add i64 %44, -1
  store i64 %dec40, ptr %bytes_in_buffer, align 8
  %45 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr41, ptr %next_input_byte, align 8
  %46 = load i8, ptr %45, align 1
  %conv42 = zext i8 %46 to i32
  store i32 %conv42, ptr %c, align 4
  br label %do.end43

do.end43:                                         ; preds = %if.end39
  br label %do.cond

do.cond:                                          ; preds = %do.end43
  %47 = load i32, ptr %c, align 4
  %cmp44 = icmp eq i32 %47, 255
  br i1 %cmp44, label %do.body27, label %do.end46, !llvm.loop !8

do.end46:                                         ; preds = %do.cond
  %48 = load i32, ptr %c, align 4
  %cmp47 = icmp ne i32 %48, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.end46
  br label %for.end

if.end50:                                         ; preds = %do.end46
  %49 = load ptr, ptr %cinfo.addr, align 8
  %marker51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 78
  %50 = load ptr, ptr %marker51, align 8
  %discarded_bytes52 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %50, i32 0, i32 8
  %51 = load i32, ptr %discarded_bytes52, align 4
  %add = add i32 %51, 2
  store i32 %add, ptr %discarded_bytes52, align 4
  %52 = load ptr, ptr %next_input_byte, align 8
  %53 = load ptr, ptr %datasrc, align 8
  %next_input_byte53 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %53, i32 0, i32 0
  store ptr %52, ptr %next_input_byte53, align 8
  %54 = load i64, ptr %bytes_in_buffer, align 8
  %55 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer54 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %55, i32 0, i32 1
  store i64 %54, ptr %bytes_in_buffer54, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then49
  %56 = load ptr, ptr %cinfo.addr, align 8
  %marker55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 78
  %57 = load ptr, ptr %marker55, align 8
  %discarded_bytes56 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %57, i32 0, i32 8
  %58 = load i32, ptr %discarded_bytes56, align 4
  %cmp57 = icmp ne i32 %58, 0
  br i1 %cmp57, label %if.then59, label %if.end69

if.then59:                                        ; preds = %for.end
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 5
  store i32 112, ptr %msg_code, align 8
  %61 = load ptr, ptr %cinfo.addr, align 8
  %marker60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 78
  %62 = load ptr, ptr %marker60, align 8
  %discarded_bytes61 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %62, i32 0, i32 8
  %63 = load i32, ptr %discarded_bytes61, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err62, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %63, ptr %arrayidx, align 4
  %66 = load i32, ptr %c, align 4
  %67 = load ptr, ptr %cinfo.addr, align 8
  %err63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %err63, align 8
  %msg_parm64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i32 0, i32 6
  %arrayidx65 = getelementptr inbounds [8 x i32], ptr %msg_parm64, i64 0, i64 1
  store i32 %66, ptr %arrayidx65, align 4
  %69 = load ptr, ptr %cinfo.addr, align 8
  %err66 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %err66, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %emit_message, align 8
  %72 = load ptr, ptr %cinfo.addr, align 8
  call void %71(ptr noundef %72, i32 noundef -1)
  %73 = load ptr, ptr %cinfo.addr, align 8
  %marker67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 78
  %74 = load ptr, ptr %marker67, align 8
  %discarded_bytes68 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %74, i32 0, i32 8
  store i32 0, ptr %discarded_bytes68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then59, %for.end
  %75 = load i32, ptr %c, align 4
  %76 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 72
  store i32 %75, ptr %unread_marker, align 4
  %77 = load ptr, ptr %next_input_byte, align 8
  %78 = load ptr, ptr %datasrc, align 8
  %next_input_byte70 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %78, i32 0, i32 0
  store ptr %77, ptr %next_input_byte70, align 8
  %79 = load i64, ptr %bytes_in_buffer, align 8
  %80 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer71 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %80, i32 0, i32 1
  store i64 %79, ptr %bytes_in_buffer71, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end69, %if.then35, %if.then18, %if.then3
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_marker_reader(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 0, i64 noundef 176)
  %4 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 78
  store ptr %call, ptr %marker, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 78
  %6 = load ptr, ptr %marker1, align 8
  %reset_marker_reader = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i32 0, i32 0
  store ptr @reset_marker_reader, ptr %reset_marker_reader, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 78
  %8 = load ptr, ptr %marker2, align 8
  %read_markers = getelementptr inbounds %struct.jpeg_marker_reader, ptr %8, i32 0, i32 1
  store ptr @read_markers, ptr %read_markers, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 78
  %10 = load ptr, ptr %marker3, align 8
  %read_restart_marker = getelementptr inbounds %struct.jpeg_marker_reader, ptr %10, i32 0, i32 2
  store ptr @read_restart_marker, ptr %read_restart_marker, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 78
  %12 = load ptr, ptr %marker4, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %12, i32 0, i32 3
  store ptr @skip_variable, ptr %process_COM, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %13, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %cinfo.addr, align 8
  %marker5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 78
  %15 = load ptr, ptr %marker5, align 8
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %process_APPn, i64 0, i64 %idxprom
  store ptr @skip_variable, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %cinfo.addr, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 78
  %19 = load ptr, ptr %marker6, align 8
  %process_APPn7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %19, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [16 x ptr], ptr %process_APPn7, i64 0, i64 0
  store ptr @get_app0, ptr %arrayidx8, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 78
  %21 = load ptr, ptr %marker9, align 8
  %process_APPn10 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %21, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [16 x ptr], ptr %process_APPn10, i64 0, i64 14
  store ptr @get_app14, ptr %arrayidx11, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0(ptr noundef %22)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @reset_marker_reader(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 43
  store ptr null, ptr %comp_info, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 34
  store i32 0, ptr %input_scan_number, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 72
  store i32 0, ptr %unread_marker, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 78
  %4 = load ptr, ptr %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i32 0, i32 5
  store i32 0, ptr %saw_SOI, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 78
  %6 = load ptr, ptr %marker1, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i32 0, i32 6
  store i32 0, ptr %saw_SOF, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 78
  %8 = load ptr, ptr %marker2, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %8, i32 0, i32 8
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
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 72
  %1 = load i32, ptr %unread_marker, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %for.cond
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 78
  %3 = load ptr, ptr %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %saw_SOI, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %5 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @first_marker(ptr noundef %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then1
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then1
  br label %if.end8

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call i32 @next_marker(ptr noundef %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %for.cond
  %7 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 72
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
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end9, %if.end9
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call16 = call i32 @get_sof(ptr noundef %10, i32 noundef 0, i32 noundef 0)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %sw.bb15
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %sw.bb15
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end9
  %11 = load ptr, ptr %cinfo.addr, align 8
  %call21 = call i32 @get_sof(ptr noundef %11, i32 noundef 1, i32 noundef 0)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %sw.bb20
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %sw.bb20
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  %12 = load ptr, ptr %cinfo.addr, align 8
  %call26 = call i32 @get_sof(ptr noundef %12, i32 noundef 0, i32 noundef 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %sw.bb25
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end9
  %13 = load ptr, ptr %cinfo.addr, align 8
  %call31 = call i32 @get_sof(ptr noundef %13, i32 noundef 1, i32 noundef 1)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %sw.bb30
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %sw.bb30
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5
  store i32 59, ptr %msg_code, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 72
  %17 = load i32, ptr %unread_marker36, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %err37, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %17, ptr %arrayidx, align 4
  %20 = load ptr, ptr %cinfo.addr, align 8
  %err38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err38, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %error_exit, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void %22(ptr noundef %23)
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end9
  %24 = load ptr, ptr %cinfo.addr, align 8
  %call40 = call i32 @get_sos(ptr noundef %24)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %sw.bb39
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %sw.bb39
  %25 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 72
  store i32 0, ptr %unread_marker44, align 4
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %if.end9
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err46, align 8
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 5
  store i32 84, ptr %msg_code47, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err48, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %emit_message, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void %30(ptr noundef %31, i32 noundef 1)
  %32 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 72
  store i32 0, ptr %unread_marker49, align 4
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb50:                                          ; preds = %if.end9
  %33 = load ptr, ptr %cinfo.addr, align 8
  %call51 = call i32 @get_dac(ptr noundef %33)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %sw.bb50
  store i32 0, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %sw.bb50
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end9
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call56 = call i32 @get_dht(ptr noundef %34)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %sw.bb55
  store i32 0, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %sw.bb55
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end9
  %35 = load ptr, ptr %cinfo.addr, align 8
  %call61 = call i32 @get_dqt(ptr noundef %35)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %sw.bb60
  store i32 0, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %sw.bb60
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end9
  %36 = load ptr, ptr %cinfo.addr, align 8
  %call66 = call i32 @get_dri(ptr noundef %36)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %sw.bb65
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %sw.bb65
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %37 = load ptr, ptr %cinfo.addr, align 8
  %marker71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 78
  %38 = load ptr, ptr %marker71, align 8
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 72
  %40 = load i32, ptr %unread_marker72, align 4
  %sub = sub nsw i32 %40, 224
  %idxprom = sext i32 %sub to i64
  %arrayidx73 = getelementptr inbounds [16 x ptr], ptr %process_APPn, i64 0, i64 %idxprom
  %41 = load ptr, ptr %arrayidx73, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  %call74 = call i32 %41(ptr noundef %42)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %sw.bb70
  store i32 0, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %sw.bb70
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end9
  %43 = load ptr, ptr %cinfo.addr, align 8
  %marker79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 78
  %44 = load ptr, ptr %marker79, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %process_COM, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  %call80 = call i32 %45(ptr noundef %46)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end83, label %if.then82

if.then82:                                        ; preds = %sw.bb78
  store i32 0, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %sw.bb78
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9, %if.end9
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err85, align 8
  %msg_code86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 5
  store i32 91, ptr %msg_code86, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 72
  %50 = load i32, ptr %unread_marker87, align 4
  %51 = load ptr, ptr %cinfo.addr, align 8
  %err88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %err88, align 8
  %msg_parm89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i32 0, i32 6
  %arrayidx90 = getelementptr inbounds [8 x i32], ptr %msg_parm89, i64 0, i64 0
  store i32 %50, ptr %arrayidx90, align 4
  %53 = load ptr, ptr %cinfo.addr, align 8
  %err91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %err91, align 8
  %emit_message92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %emit_message92, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  call void %55(ptr noundef %56, i32 noundef 1)
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end9
  %57 = load ptr, ptr %cinfo.addr, align 8
  %call94 = call i32 @skip_variable(ptr noundef %57)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.end97, label %if.then96

if.then96:                                        ; preds = %sw.bb93
  store i32 0, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %sw.bb93
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  %58 = load ptr, ptr %cinfo.addr, align 8
  %err98 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err98, align 8
  %msg_code99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i32 0, i32 5
  store i32 67, ptr %msg_code99, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 72
  %61 = load i32, ptr %unread_marker100, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err101, align 8
  %msg_parm102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 6
  %arrayidx103 = getelementptr inbounds [8 x i32], ptr %msg_parm102, i64 0, i64 0
  store i32 %61, ptr %arrayidx103, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err104 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err104, align 8
  %error_exit105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %error_exit105, align 8
  %67 = load ptr, ptr %cinfo.addr, align 8
  call void %66(ptr noundef %67)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end97, %sw.bb84, %if.end83, %if.end77, %if.end69, %if.end64, %if.end59, %if.end54, %sw.bb35, %if.end34, %if.end29, %if.end24, %if.end19, %if.end14
  %68 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 72
  store i32 0, ptr %unread_marker106, align 4
  br label %for.cond

return:                                           ; preds = %if.then96, %if.then82, %if.then76, %if.then68, %if.then63, %if.then58, %if.then53, %sw.bb45, %if.end43, %if.then42, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then6, %if.then3
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_restart_marker(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 72
  %1 = load i32, ptr %unread_marker, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @next_marker(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 72
  %4 = load i32, ptr %unread_marker3, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 78
  %6 = load ptr, ptr %marker, align 8
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %next_restart_num, align 8
  %add = add nsw i32 208, %7
  %cmp4 = icmp eq i32 %4, %add
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 97, ptr %msg_code, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %marker6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 78
  %11 = load ptr, ptr %marker6, align 8
  %next_restart_num7 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %11, i32 0, i32 7
  %12 = load i32, ptr %next_restart_num7, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %12, ptr %arrayidx, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err9, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %emit_message, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void %17(ptr noundef %18, i32 noundef 3)
  %19 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 72
  store i32 0, ptr %unread_marker10, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end2
  %20 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %src, align 8
  %resync_to_restart = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %resync_to_restart, align 8
  %23 = load ptr, ptr %cinfo.addr, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %marker11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 78
  %25 = load ptr, ptr %marker11, align 8
  %next_restart_num12 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %25, i32 0, i32 7
  %26 = load i32, ptr %next_restart_num12, align 8
  %call13 = call i32 %22(ptr noundef %23, i32 noundef %26)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  %27 = load ptr, ptr %cinfo.addr, align 8
  %marker18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 78
  %28 = load ptr, ptr %marker18, align 8
  %next_restart_num19 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %next_restart_num19, align 8
  %add20 = add nsw i32 %29, 1
  %and = and i32 %add20, 7
  %30 = load ptr, ptr %cinfo.addr, align 8
  %marker21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 78
  %31 = load ptr, ptr %marker21, align 8
  %next_restart_num22 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %31, i32 0, i32 7
  store i32 %and, ptr %next_restart_num22, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then1
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, ptr %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  %29 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i32 0, i32 5
  store i32 90, ptr %msg_code, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 72
  %32 = load i32, ptr %unread_marker, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %err22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err22, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %32, ptr %arrayidx, align 4
  %35 = load i64, ptr %length, align 8
  %conv23 = trunc i64 %35 to i32
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err24, align 8
  %msg_parm25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [8 x i32], ptr %msg_parm25, i64 0, i64 1
  store i32 %conv23, ptr %arrayidx26, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %err27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err27, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %emit_message, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  call void %40(ptr noundef %41, i32 noundef 1)
  %42 = load ptr, ptr %next_input_byte, align 8
  %43 = load ptr, ptr %datasrc, align 8
  %next_input_byte28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %43, i32 0, i32 0
  store ptr %42, ptr %next_input_byte28, align 8
  %44 = load i64, ptr %bytes_in_buffer, align 8
  %45 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer29 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %45, i32 0, i32 1
  store i64 %44, ptr %bytes_in_buffer29, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  %src30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 5
  %47 = load ptr, ptr %src30, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %skip_input_data, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %50 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %50, 2
  call void %48(ptr noundef %49, i64 noundef %sub)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then14, %if.then3
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, ptr %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  %29 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, ptr %length, align 8
  %30 = load i64, ptr %length, align 8
  %cmp22 = icmp sge i64 %30, 14
  br i1 %cmp22, label %if.then24, label %if.else184

if.then24:                                        ; preds = %do.end
  store i32 0, ptr %buffp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then24
  %31 = load i32, ptr %buffp, align 4
  %cmp25 = icmp slt i32 %31, 14
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body27

do.body27:                                        ; preds = %for.body
  %32 = load i64, ptr %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %32, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %do.body27
  %33 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %fill_input_buffer31, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %call32 = call i32 %34(ptr noundef %35)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then30
  %36 = load ptr, ptr %datasrc, align 8
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %next_input_byte36, align 8
  store ptr %37, ptr %next_input_byte, align 8
  %38 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %38, i32 0, i32 1
  %39 = load i64, ptr %bytes_in_buffer37, align 8
  store i64 %39, ptr %bytes_in_buffer, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %do.body27
  %40 = load i64, ptr %bytes_in_buffer, align 8
  %dec39 = add i64 %40, -1
  store i64 %dec39, ptr %bytes_in_buffer, align 8
  %41 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr40, ptr %next_input_byte, align 8
  %42 = load i8, ptr %41, align 1
  %43 = load i32, ptr %buffp, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 %idxprom
  store i8 %42, ptr %arrayidx, align 1
  br label %do.end41

do.end41:                                         ; preds = %if.end38
  br label %for.inc

for.inc:                                          ; preds = %do.end41
  %44 = load i32, ptr %buffp, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %buffp, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %45 = load i64, ptr %length, align 8
  %sub42 = sub nsw i64 %45, 14
  store i64 %sub42, ptr %length, align 8
  %arrayidx43 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 0
  %46 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %46 to i32
  %cmp45 = icmp eq i32 %conv44, 74
  br i1 %cmp45, label %land.lhs.true, label %if.else173

land.lhs.true:                                    ; preds = %for.end
  %arrayidx47 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 1
  %47 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %47 to i32
  %cmp49 = icmp eq i32 %conv48, 70
  br i1 %cmp49, label %land.lhs.true51, label %if.else173

land.lhs.true51:                                  ; preds = %land.lhs.true
  %arrayidx52 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 2
  %48 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %48 to i32
  %cmp54 = icmp eq i32 %conv53, 73
  br i1 %cmp54, label %land.lhs.true56, label %if.else173

land.lhs.true56:                                  ; preds = %land.lhs.true51
  %arrayidx57 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 3
  %49 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %49 to i32
  %cmp59 = icmp eq i32 %conv58, 70
  br i1 %cmp59, label %land.lhs.true61, label %if.else173

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %arrayidx62 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 4
  %50 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %50 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %if.then66, label %if.else173

if.then66:                                        ; preds = %land.lhs.true61
  %arrayidx67 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 5
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i32
  %cmp69 = icmp ne i32 %conv68, 1
  br i1 %cmp69, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.then66
  %52 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i32 0, i32 5
  store i32 115, ptr %msg_code, align 8
  %arrayidx72 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 5
  %54 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %54 to i32
  %55 = load ptr, ptr %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %err74, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i32 0, i32 6
  %arrayidx75 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %conv73, ptr %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 6
  %57 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %57 to i32
  %58 = load ptr, ptr %cinfo.addr, align 8
  %err78 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err78, align 8
  %msg_parm79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i32 0, i32 6
  %arrayidx80 = getelementptr inbounds [8 x i32], ptr %msg_parm79, i64 0, i64 1
  store i32 %conv77, ptr %arrayidx80, align 4
  %60 = load ptr, ptr %cinfo.addr, align 8
  %err81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err81, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %emit_message, align 8
  %63 = load ptr, ptr %cinfo.addr, align 8
  call void %62(ptr noundef %63, i32 noundef -1)
  br label %if.end102

if.else:                                          ; preds = %if.then66
  %arrayidx82 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 6
  %64 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %64 to i32
  %cmp84 = icmp sgt i32 %conv83, 2
  br i1 %cmp84, label %if.then86, label %if.end101

if.then86:                                        ; preds = %if.else
  %65 = load ptr, ptr %cinfo.addr, align 8
  %err87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %err87, align 8
  %msg_code88 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i32 0, i32 5
  store i32 88, ptr %msg_code88, align 8
  %arrayidx89 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 5
  %67 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %67 to i32
  %68 = load ptr, ptr %cinfo.addr, align 8
  %err91 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %err91, align 8
  %msg_parm92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i32 0, i32 6
  %arrayidx93 = getelementptr inbounds [8 x i32], ptr %msg_parm92, i64 0, i64 0
  store i32 %conv90, ptr %arrayidx93, align 4
  %arrayidx94 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 6
  %70 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %70 to i32
  %71 = load ptr, ptr %cinfo.addr, align 8
  %err96 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %err96, align 8
  %msg_parm97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i32 0, i32 6
  %arrayidx98 = getelementptr inbounds [8 x i32], ptr %msg_parm97, i64 0, i64 1
  store i32 %conv95, ptr %arrayidx98, align 4
  %73 = load ptr, ptr %cinfo.addr, align 8
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %err99, align 8
  %emit_message100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %emit_message100, align 8
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void %75(ptr noundef %76, i32 noundef 1)
  br label %if.end101

if.end101:                                        ; preds = %if.then86, %if.else
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then71
  %77 = load ptr, ptr %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 50
  store i32 1, ptr %saw_JFIF_marker, align 4
  %arrayidx103 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 7
  %78 = load i8, ptr %arrayidx103, align 1
  %79 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 51
  store i8 %78, ptr %density_unit, align 8
  %arrayidx104 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 8
  %80 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %80 to i32
  %shl106 = shl i32 %conv105, 8
  %arrayidx107 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 9
  %81 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %81 to i32
  %add109 = add nsw i32 %shl106, %conv108
  %conv110 = trunc i32 %add109 to i16
  %82 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i32 0, i32 52
  store i16 %conv110, ptr %X_density, align 2
  %arrayidx111 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 10
  %83 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %83 to i32
  %shl113 = shl i32 %conv112, 8
  %arrayidx114 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 11
  %84 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %84 to i32
  %add116 = add nsw i32 %shl113, %conv115
  %conv117 = trunc i32 %add116 to i16
  %85 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 53
  store i16 %conv117, ptr %Y_density, align 4
  br label %do.body118

do.body118:                                       ; preds = %if.end102
  %86 = load ptr, ptr %cinfo.addr, align 8
  %err119 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err119, align 8
  %msg_parm120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %87, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm120, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8
  %88 = load ptr, ptr %cinfo.addr, align 8
  %X_density121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 52
  %89 = load i16, ptr %X_density121, align 2
  %conv122 = zext i16 %89 to i32
  %90 = load ptr, ptr %_mp, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %90, i64 0
  store i32 %conv122, ptr %arrayidx123, align 4
  %91 = load ptr, ptr %cinfo.addr, align 8
  %Y_density124 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 53
  %92 = load i16, ptr %Y_density124, align 4
  %conv125 = zext i16 %92 to i32
  %93 = load ptr, ptr %_mp, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %93, i64 1
  store i32 %conv125, ptr %arrayidx126, align 4
  %94 = load ptr, ptr %cinfo.addr, align 8
  %density_unit127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 51
  %95 = load i8, ptr %density_unit127, align 8
  %conv128 = zext i8 %95 to i32
  %96 = load ptr, ptr %_mp, align 8
  %arrayidx129 = getelementptr inbounds i32, ptr %96, i64 2
  store i32 %conv128, ptr %arrayidx129, align 4
  %97 = load ptr, ptr %cinfo.addr, align 8
  %err130 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %err130, align 8
  %msg_code131 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i32 0, i32 5
  store i32 86, ptr %msg_code131, align 8
  %99 = load ptr, ptr %cinfo.addr, align 8
  %err132 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %err132, align 8
  %emit_message133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %emit_message133, align 8
  %102 = load ptr, ptr %cinfo.addr, align 8
  call void %101(ptr noundef %102, i32 noundef 1)
  br label %do.end134

do.end134:                                        ; preds = %do.body118
  %arrayidx135 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 12
  %103 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %103 to i32
  %arrayidx137 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 13
  %104 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %104 to i32
  %or = or i32 %conv136, %conv138
  %tobool139 = icmp ne i32 %or, 0
  br i1 %tobool139, label %if.then140, label %if.end155

if.then140:                                       ; preds = %do.end134
  %105 = load ptr, ptr %cinfo.addr, align 8
  %err141 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %err141, align 8
  %msg_code142 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i32 0, i32 5
  store i32 89, ptr %msg_code142, align 8
  %arrayidx143 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 12
  %107 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %107 to i32
  %108 = load ptr, ptr %cinfo.addr, align 8
  %err145 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %err145, align 8
  %msg_parm146 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i32 0, i32 6
  %arrayidx147 = getelementptr inbounds [8 x i32], ptr %msg_parm146, i64 0, i64 0
  store i32 %conv144, ptr %arrayidx147, align 4
  %arrayidx148 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 13
  %110 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %110 to i32
  %111 = load ptr, ptr %cinfo.addr, align 8
  %err150 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 0
  %112 = load ptr, ptr %err150, align 8
  %msg_parm151 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i32 0, i32 6
  %arrayidx152 = getelementptr inbounds [8 x i32], ptr %msg_parm151, i64 0, i64 1
  store i32 %conv149, ptr %arrayidx152, align 4
  %113 = load ptr, ptr %cinfo.addr, align 8
  %err153 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %err153, align 8
  %emit_message154 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %114, i32 0, i32 1
  %115 = load ptr, ptr %emit_message154, align 8
  %116 = load ptr, ptr %cinfo.addr, align 8
  call void %115(ptr noundef %116, i32 noundef 1)
  br label %if.end155

if.end155:                                        ; preds = %if.then140, %do.end134
  %117 = load i64, ptr %length, align 8
  %arrayidx156 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 12
  %118 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %118 to i64
  %arrayidx158 = getelementptr inbounds [14 x i8], ptr %b, i64 0, i64 13
  %119 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %119 to i64
  %mul = mul nsw i64 %conv157, %conv159
  %mul160 = mul nsw i64 %mul, 3
  %cmp161 = icmp ne i64 %117, %mul160
  br i1 %cmp161, label %if.then163, label %if.end172

if.then163:                                       ; preds = %if.end155
  %120 = load ptr, ptr %cinfo.addr, align 8
  %err164 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err164, align 8
  %msg_code165 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i32 0, i32 5
  store i32 87, ptr %msg_code165, align 8
  %122 = load i64, ptr %length, align 8
  %conv166 = trunc i64 %122 to i32
  %123 = load ptr, ptr %cinfo.addr, align 8
  %err167 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %err167, align 8
  %msg_parm168 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i32 0, i32 6
  %arrayidx169 = getelementptr inbounds [8 x i32], ptr %msg_parm168, i64 0, i64 0
  store i32 %conv166, ptr %arrayidx169, align 4
  %125 = load ptr, ptr %cinfo.addr, align 8
  %err170 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %err170, align 8
  %emit_message171 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %126, i32 0, i32 1
  %127 = load ptr, ptr %emit_message171, align 8
  %128 = load ptr, ptr %cinfo.addr, align 8
  call void %127(ptr noundef %128, i32 noundef 1)
  br label %if.end172

if.end172:                                        ; preds = %if.then163, %if.end155
  br label %if.end183

if.else173:                                       ; preds = %land.lhs.true61, %land.lhs.true56, %land.lhs.true51, %land.lhs.true, %for.end
  %129 = load ptr, ptr %cinfo.addr, align 8
  %err174 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %err174, align 8
  %msg_code175 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %130, i32 0, i32 5
  store i32 76, ptr %msg_code175, align 8
  %131 = load i64, ptr %length, align 8
  %conv176 = trunc i64 %131 to i32
  %add177 = add nsw i32 %conv176, 14
  %132 = load ptr, ptr %cinfo.addr, align 8
  %err178 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %err178, align 8
  %msg_parm179 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i32 0, i32 6
  %arrayidx180 = getelementptr inbounds [8 x i32], ptr %msg_parm179, i64 0, i64 0
  store i32 %add177, ptr %arrayidx180, align 4
  %134 = load ptr, ptr %cinfo.addr, align 8
  %err181 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %err181, align 8
  %emit_message182 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i32 0, i32 1
  %136 = load ptr, ptr %emit_message182, align 8
  %137 = load ptr, ptr %cinfo.addr, align 8
  call void %136(ptr noundef %137, i32 noundef 1)
  br label %if.end183

if.end183:                                        ; preds = %if.else173, %if.end172
  br label %if.end193

if.else184:                                       ; preds = %do.end
  %138 = load ptr, ptr %cinfo.addr, align 8
  %err185 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %138, i32 0, i32 0
  %139 = load ptr, ptr %err185, align 8
  %msg_code186 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %139, i32 0, i32 5
  store i32 76, ptr %msg_code186, align 8
  %140 = load i64, ptr %length, align 8
  %conv187 = trunc i64 %140 to i32
  %141 = load ptr, ptr %cinfo.addr, align 8
  %err188 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %err188, align 8
  %msg_parm189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %142, i32 0, i32 6
  %arrayidx190 = getelementptr inbounds [8 x i32], ptr %msg_parm189, i64 0, i64 0
  store i32 %conv187, ptr %arrayidx190, align 4
  %143 = load ptr, ptr %cinfo.addr, align 8
  %err191 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %143, i32 0, i32 0
  %144 = load ptr, ptr %err191, align 8
  %emit_message192 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %144, i32 0, i32 1
  %145 = load ptr, ptr %emit_message192, align 8
  %146 = load ptr, ptr %cinfo.addr, align 8
  call void %145(ptr noundef %146, i32 noundef 1)
  br label %if.end193

if.end193:                                        ; preds = %if.else184, %if.end183
  %147 = load ptr, ptr %next_input_byte, align 8
  %148 = load ptr, ptr %datasrc, align 8
  %next_input_byte194 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %148, i32 0, i32 0
  store ptr %147, ptr %next_input_byte194, align 8
  %149 = load i64, ptr %bytes_in_buffer, align 8
  %150 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer195 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %150, i32 0, i32 1
  store i64 %149, ptr %bytes_in_buffer195, align 8
  %151 = load i64, ptr %length, align 8
  %cmp196 = icmp sgt i64 %151, 0
  br i1 %cmp196, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.end193
  %152 = load ptr, ptr %cinfo.addr, align 8
  %src199 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %152, i32 0, i32 5
  %153 = load ptr, ptr %src199, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %153, i32 0, i32 4
  %154 = load ptr, ptr %skip_input_data, align 8
  %155 = load ptr, ptr %cinfo.addr, align 8
  %156 = load i64, ptr %length, align 8
  call void %154(ptr noundef %155, i64 noundef %156)
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.end193
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end200, %if.then34, %if.then14, %if.then3
  %157 = load i32, ptr %retval, align 4
  ret i32 %157
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, ptr %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  %29 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, ptr %length, align 8
  %30 = load i64, ptr %length, align 8
  %cmp22 = icmp sge i64 %30, 12
  br i1 %cmp22, label %if.then24, label %if.else106

if.then24:                                        ; preds = %do.end
  store i32 0, ptr %buffp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then24
  %31 = load i32, ptr %buffp, align 4
  %cmp25 = icmp slt i32 %31, 12
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body27

do.body27:                                        ; preds = %for.body
  %32 = load i64, ptr %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %32, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %do.body27
  %33 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %fill_input_buffer31, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %call32 = call i32 %34(ptr noundef %35)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then30
  %36 = load ptr, ptr %datasrc, align 8
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %next_input_byte36, align 8
  store ptr %37, ptr %next_input_byte, align 8
  %38 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %38, i32 0, i32 1
  %39 = load i64, ptr %bytes_in_buffer37, align 8
  store i64 %39, ptr %bytes_in_buffer, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %do.body27
  %40 = load i64, ptr %bytes_in_buffer, align 8
  %dec39 = add i64 %40, -1
  store i64 %dec39, ptr %bytes_in_buffer, align 8
  %41 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr40, ptr %next_input_byte, align 8
  %42 = load i8, ptr %41, align 1
  %43 = load i32, ptr %buffp, align 4
  %idxprom = sext i32 %43 to i64
  %arrayidx = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 %idxprom
  store i8 %42, ptr %arrayidx, align 1
  br label %do.end41

do.end41:                                         ; preds = %if.end38
  br label %for.inc

for.inc:                                          ; preds = %do.end41
  %44 = load i32, ptr %buffp, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %buffp, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %45 = load i64, ptr %length, align 8
  %sub42 = sub nsw i64 %45, 12
  store i64 %sub42, ptr %length, align 8
  %arrayidx43 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 0
  %46 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %46 to i32
  %cmp45 = icmp eq i32 %conv44, 65
  br i1 %cmp45, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %arrayidx47 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 1
  %47 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %47 to i32
  %cmp49 = icmp eq i32 %conv48, 100
  br i1 %cmp49, label %land.lhs.true51, label %if.else

land.lhs.true51:                                  ; preds = %land.lhs.true
  %arrayidx52 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 2
  %48 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %48 to i32
  %cmp54 = icmp eq i32 %conv53, 111
  br i1 %cmp54, label %land.lhs.true56, label %if.else

land.lhs.true56:                                  ; preds = %land.lhs.true51
  %arrayidx57 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 3
  %49 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %49 to i32
  %cmp59 = icmp eq i32 %conv58, 98
  br i1 %cmp59, label %land.lhs.true61, label %if.else

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %arrayidx62 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 4
  %50 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %50 to i32
  %cmp64 = icmp eq i32 %conv63, 101
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %land.lhs.true61
  %arrayidx67 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 5
  %51 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %51 to i32
  %shl69 = shl i32 %conv68, 8
  %arrayidx70 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 6
  %52 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %52 to i32
  %add72 = add nsw i32 %shl69, %conv71
  store i32 %add72, ptr %version, align 4
  %arrayidx73 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 7
  %53 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %53 to i32
  %shl75 = shl i32 %conv74, 8
  %arrayidx76 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 8
  %54 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %54 to i32
  %add78 = add nsw i32 %shl75, %conv77
  store i32 %add78, ptr %flags0, align 4
  %arrayidx79 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 9
  %55 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %55 to i32
  %shl81 = shl i32 %conv80, 8
  %arrayidx82 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 10
  %56 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %56 to i32
  %add84 = add nsw i32 %shl81, %conv83
  store i32 %add84, ptr %flags1, align 4
  %arrayidx85 = getelementptr inbounds [12 x i8], ptr %b, i64 0, i64 11
  %57 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %57 to i32
  store i32 %conv86, ptr %transform, align 4
  br label %do.body87

do.body87:                                        ; preds = %if.then66
  %58 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8
  %60 = load i32, ptr %version, align 4
  %61 = load ptr, ptr %_mp, align 8
  %arrayidx88 = getelementptr inbounds i32, ptr %61, i64 0
  store i32 %60, ptr %arrayidx88, align 4
  %62 = load i32, ptr %flags0, align 4
  %63 = load ptr, ptr %_mp, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %63, i64 1
  store i32 %62, ptr %arrayidx89, align 4
  %64 = load i32, ptr %flags1, align 4
  %65 = load ptr, ptr %_mp, align 8
  %arrayidx90 = getelementptr inbounds i32, ptr %65, i64 2
  store i32 %64, ptr %arrayidx90, align 4
  %66 = load i32, ptr %transform, align 4
  %67 = load ptr, ptr %_mp, align 8
  %arrayidx91 = getelementptr inbounds i32, ptr %67, i64 3
  store i32 %66, ptr %arrayidx91, align 4
  %68 = load ptr, ptr %cinfo.addr, align 8
  %err92 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %err92, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i32 0, i32 5
  store i32 75, ptr %msg_code, align 8
  %70 = load ptr, ptr %cinfo.addr, align 8
  %err93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %err93, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %emit_message, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  call void %72(ptr noundef %73, i32 noundef 1)
  br label %do.end94

do.end94:                                         ; preds = %do.body87
  %74 = load ptr, ptr %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i32 0, i32 54
  store i32 1, ptr %saw_Adobe_marker, align 8
  %75 = load i32, ptr %transform, align 4
  %conv95 = trunc i32 %75 to i8
  %76 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 55
  store i8 %conv95, ptr %Adobe_transform, align 4
  br label %if.end105

if.else:                                          ; preds = %land.lhs.true61, %land.lhs.true56, %land.lhs.true51, %land.lhs.true, %for.end
  %77 = load ptr, ptr %cinfo.addr, align 8
  %err96 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %err96, align 8
  %msg_code97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %78, i32 0, i32 5
  store i32 77, ptr %msg_code97, align 8
  %79 = load i64, ptr %length, align 8
  %conv98 = trunc i64 %79 to i32
  %add99 = add nsw i32 %conv98, 12
  %80 = load ptr, ptr %cinfo.addr, align 8
  %err100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %err100, align 8
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %81, i32 0, i32 6
  %arrayidx102 = getelementptr inbounds [8 x i32], ptr %msg_parm101, i64 0, i64 0
  store i32 %add99, ptr %arrayidx102, align 4
  %82 = load ptr, ptr %cinfo.addr, align 8
  %err103 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %err103, align 8
  %emit_message104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %emit_message104, align 8
  %85 = load ptr, ptr %cinfo.addr, align 8
  call void %84(ptr noundef %85, i32 noundef 1)
  br label %if.end105

if.end105:                                        ; preds = %if.else, %do.end94
  br label %if.end115

if.else106:                                       ; preds = %do.end
  %86 = load ptr, ptr %cinfo.addr, align 8
  %err107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %err107, align 8
  %msg_code108 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %87, i32 0, i32 5
  store i32 77, ptr %msg_code108, align 8
  %88 = load i64, ptr %length, align 8
  %conv109 = trunc i64 %88 to i32
  %89 = load ptr, ptr %cinfo.addr, align 8
  %err110 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %err110, align 8
  %msg_parm111 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i32 0, i32 6
  %arrayidx112 = getelementptr inbounds [8 x i32], ptr %msg_parm111, i64 0, i64 0
  store i32 %conv109, ptr %arrayidx112, align 4
  %91 = load ptr, ptr %cinfo.addr, align 8
  %err113 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %err113, align 8
  %emit_message114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %emit_message114, align 8
  %94 = load ptr, ptr %cinfo.addr, align 8
  call void %93(ptr noundef %94, i32 noundef 1)
  br label %if.end115

if.end115:                                        ; preds = %if.else106, %if.end105
  %95 = load ptr, ptr %next_input_byte, align 8
  %96 = load ptr, ptr %datasrc, align 8
  %next_input_byte116 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %96, i32 0, i32 0
  store ptr %95, ptr %next_input_byte116, align 8
  %97 = load i64, ptr %bytes_in_buffer, align 8
  %98 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer117 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %98, i32 0, i32 1
  store i64 %97, ptr %bytes_in_buffer117, align 8
  %99 = load i64, ptr %length, align 8
  %cmp118 = icmp sgt i64 %99, 0
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end115
  %100 = load ptr, ptr %cinfo.addr, align 8
  %src121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 5
  %101 = load ptr, ptr %src121, align 8
  %skip_input_data = getelementptr inbounds %struct.jpeg_source_mgr, ptr %101, i32 0, i32 4
  %102 = load ptr, ptr %skip_input_data, align 8
  %103 = load ptr, ptr %cinfo.addr, align 8
  %104 = load i64, ptr %length, align 8
  call void %102(ptr noundef %103, i64 noundef %104)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.end115
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end122, %if.then34, %if.then14, %if.then3
  %105 = load i32, ptr %retval, align 4
  ret i32 %105
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, ptr %c, align 4
  br label %do.end

do.end:                                           ; preds = %if.end6
  br label %do.body7

do.body7:                                         ; preds = %do.end
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %do.body7
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %do.body7
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i32
  store i32 %conv21, ptr %c2, align 4
  br label %do.end22

do.end22:                                         ; preds = %if.end18
  %28 = load i32, ptr %c, align 4
  %cmp23 = icmp ne i32 %28, 255
  br i1 %cmp23, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end22
  %29 = load i32, ptr %c2, align 4
  %cmp25 = icmp ne i32 %29, 216
  br i1 %cmp25, label %if.then27, label %if.end33

if.then27:                                        ; preds = %lor.lhs.false, %do.end22
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5
  store i32 52, ptr %msg_code, align 8
  %32 = load i32, ptr %c, align 4
  %33 = load ptr, ptr %cinfo.addr, align 8
  %err28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %err28, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %32, ptr %arrayidx, align 4
  %35 = load i32, ptr %c2, align 4
  %36 = load ptr, ptr %cinfo.addr, align 8
  %err29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %err29, align 8
  %msg_parm30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i32 0, i32 6
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %msg_parm30, i64 0, i64 1
  store i32 %35, ptr %arrayidx31, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %err32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %err32, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %error_exit, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  call void %40(ptr noundef %41)
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %lor.lhs.false
  %42 = load i32, ptr %c2, align 4
  %43 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 72
  store i32 %42, ptr %unread_marker, align 4
  %44 = load ptr, ptr %next_input_byte, align 8
  %45 = load ptr, ptr %datasrc, align 8
  %next_input_byte34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %45, i32 0, i32 0
  store ptr %44, ptr %next_input_byte34, align 8
  %46 = load i64, ptr %bytes_in_buffer, align 8
  %47 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer35 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %47, i32 0, i32 1
  store i64 %46, ptr %bytes_in_buffer35, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then14, %if.then3
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @get_soi(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i32 0, i32 5
  store i32 101, ptr %msg_code, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err1, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %emit_message, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5, i32 noundef 1)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 78
  %7 = load ptr, ptr %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %saw_SOI, align 8
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err2, align 8
  %msg_code3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5
  store i32 60, ptr %msg_code3, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err4, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void %13(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %15, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 46
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %arith_dc_L, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %18 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 47
  %19 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %19 to i64
  %arrayidx6 = getelementptr inbounds [16 x i8], ptr %arith_dc_U, i64 0, i64 %idxprom5
  store i8 1, ptr %arrayidx6, align 1
  %20 = load ptr, ptr %cinfo.addr, align 8
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 48
  %21 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %21 to i64
  %arrayidx8 = getelementptr inbounds [16 x i8], ptr %arith_ac_K, i64 0, i64 %idxprom7
  store i8 5, ptr %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 49
  store i32 0, ptr %restart_interval, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 9
  store i32 0, ptr %jpeg_color_space, align 4
  %25 = load ptr, ptr %cinfo.addr, align 8
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 56
  store i32 0, ptr %CCIR601_sampling, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 50
  store i32 0, ptr %saw_JFIF_marker, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %density_unit = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 51
  store i8 0, ptr %density_unit, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %X_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 52
  store i16 1, ptr %X_density, align 2
  %29 = load ptr, ptr %cinfo.addr, align 8
  %Y_density = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 53
  store i16 1, ptr %Y_density, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 54
  store i32 0, ptr %saw_Adobe_marker, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 55
  store i8 0, ptr %Adobe_transform, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %marker9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 78
  %33 = load ptr, ptr %marker9, align 8
  %saw_SOI10 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %33, i32 0, i32 5
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  %6 = load i32, ptr %is_prog.addr, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %progressive_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 44
  store i32 %6, ptr %progressive_mode, align 8
  %8 = load i32, ptr %is_arith.addr, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %arith_code = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 45
  store i32 %8, ptr %arith_code, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %11 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %fill_input_buffer, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %12(ptr noundef %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next_input_byte4, align 8
  store ptr %15, ptr %next_input_byte, align 8
  %16 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %17, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %18 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %18, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %19 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %20 = load i8, ptr %19, align 1
  %conv = zext i8 %20 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %21 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %21, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %22 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %fill_input_buffer11, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %23(ptr noundef %24)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %25 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %next_input_byte16, align 8
  store ptr %26, ptr %next_input_byte, align 8
  %27 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %28, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %29 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %29, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %30 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %31 = load i8, ptr %30, align 1
  %conv21 = zext i8 %31 to i64
  %32 = load i64, ptr %length, align 8
  %add = add nsw i64 %32, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %33 = load i64, ptr %bytes_in_buffer, align 8
  %cmp23 = icmp eq i64 %33, 0
  br i1 %cmp23, label %if.then25, label %if.end33

if.then25:                                        ; preds = %do.body22
  %34 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer26 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %fill_input_buffer26, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %call27 = call i32 %35(ptr noundef %36)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then25
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then25
  %37 = load ptr, ptr %datasrc, align 8
  %next_input_byte31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %next_input_byte31, align 8
  store ptr %38, ptr %next_input_byte, align 8
  %39 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer32 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %39, i32 0, i32 1
  %40 = load i64, ptr %bytes_in_buffer32, align 8
  store i64 %40, ptr %bytes_in_buffer, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %do.body22
  %41 = load i64, ptr %bytes_in_buffer, align 8
  %dec34 = add i64 %41, -1
  store i64 %dec34, ptr %bytes_in_buffer, align 8
  %42 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr35, ptr %next_input_byte, align 8
  %43 = load i8, ptr %42, align 1
  %conv36 = zext i8 %43 to i32
  %44 = load ptr, ptr %cinfo.addr, align 8
  %data_precision = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 42
  store i32 %conv36, ptr %data_precision, align 8
  br label %do.end37

do.end37:                                         ; preds = %if.end33
  br label %do.body38

do.body38:                                        ; preds = %do.end37
  %45 = load i64, ptr %bytes_in_buffer, align 8
  %cmp39 = icmp eq i64 %45, 0
  br i1 %cmp39, label %if.then41, label %if.end49

if.then41:                                        ; preds = %do.body38
  %46 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer42 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %fill_input_buffer42, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  %call43 = call i32 %47(ptr noundef %48)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.then41
  store i32 0, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then41
  %49 = load ptr, ptr %datasrc, align 8
  %next_input_byte47 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %next_input_byte47, align 8
  store ptr %50, ptr %next_input_byte, align 8
  %51 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer48 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %51, i32 0, i32 1
  %52 = load i64, ptr %bytes_in_buffer48, align 8
  store i64 %52, ptr %bytes_in_buffer, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %do.body38
  %53 = load i64, ptr %bytes_in_buffer, align 8
  %dec50 = add i64 %53, -1
  store i64 %dec50, ptr %bytes_in_buffer, align 8
  %54 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr51, ptr %next_input_byte, align 8
  %55 = load i8, ptr %54, align 1
  %conv52 = zext i8 %55 to i32
  %shl53 = shl i32 %conv52, 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 7
  store i32 %shl53, ptr %image_height, align 4
  %57 = load i64, ptr %bytes_in_buffer, align 8
  %cmp54 = icmp eq i64 %57, 0
  br i1 %cmp54, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.end49
  %58 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer57 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %fill_input_buffer57, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  %call58 = call i32 %59(ptr noundef %60)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.then56
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.then56
  %61 = load ptr, ptr %datasrc, align 8
  %next_input_byte62 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %next_input_byte62, align 8
  store ptr %62, ptr %next_input_byte, align 8
  %63 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer63 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %63, i32 0, i32 1
  %64 = load i64, ptr %bytes_in_buffer63, align 8
  store i64 %64, ptr %bytes_in_buffer, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.end49
  %65 = load i64, ptr %bytes_in_buffer, align 8
  %dec65 = add i64 %65, -1
  store i64 %dec65, ptr %bytes_in_buffer, align 8
  %66 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr66 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr66, ptr %next_input_byte, align 8
  %67 = load i8, ptr %66, align 1
  %conv67 = zext i8 %67 to i32
  %68 = load ptr, ptr %cinfo.addr, align 8
  %image_height68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 7
  %69 = load i32, ptr %image_height68, align 4
  %add69 = add i32 %69, %conv67
  store i32 %add69, ptr %image_height68, align 4
  br label %do.end70

do.end70:                                         ; preds = %if.end64
  br label %do.body71

do.body71:                                        ; preds = %do.end70
  %70 = load i64, ptr %bytes_in_buffer, align 8
  %cmp72 = icmp eq i64 %70, 0
  br i1 %cmp72, label %if.then74, label %if.end82

if.then74:                                        ; preds = %do.body71
  %71 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %71, i32 0, i32 3
  %72 = load ptr, ptr %fill_input_buffer75, align 8
  %73 = load ptr, ptr %cinfo.addr, align 8
  %call76 = call i32 %72(ptr noundef %73)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.then74
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.then74
  %74 = load ptr, ptr %datasrc, align 8
  %next_input_byte80 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %next_input_byte80, align 8
  store ptr %75, ptr %next_input_byte, align 8
  %76 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer81 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %76, i32 0, i32 1
  %77 = load i64, ptr %bytes_in_buffer81, align 8
  store i64 %77, ptr %bytes_in_buffer, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %do.body71
  %78 = load i64, ptr %bytes_in_buffer, align 8
  %dec83 = add i64 %78, -1
  store i64 %dec83, ptr %bytes_in_buffer, align 8
  %79 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr84, ptr %next_input_byte, align 8
  %80 = load i8, ptr %79, align 1
  %conv85 = zext i8 %80 to i32
  %shl86 = shl i32 %conv85, 8
  %81 = load ptr, ptr %cinfo.addr, align 8
  %image_width = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 6
  store i32 %shl86, ptr %image_width, align 8
  %82 = load i64, ptr %bytes_in_buffer, align 8
  %cmp87 = icmp eq i64 %82, 0
  br i1 %cmp87, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end82
  %83 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer90 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %83, i32 0, i32 3
  %84 = load ptr, ptr %fill_input_buffer90, align 8
  %85 = load ptr, ptr %cinfo.addr, align 8
  %call91 = call i32 %84(ptr noundef %85)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.then89
  store i32 0, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then89
  %86 = load ptr, ptr %datasrc, align 8
  %next_input_byte95 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %next_input_byte95, align 8
  store ptr %87, ptr %next_input_byte, align 8
  %88 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer96 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %88, i32 0, i32 1
  %89 = load i64, ptr %bytes_in_buffer96, align 8
  store i64 %89, ptr %bytes_in_buffer, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end82
  %90 = load i64, ptr %bytes_in_buffer, align 8
  %dec98 = add i64 %90, -1
  store i64 %dec98, ptr %bytes_in_buffer, align 8
  %91 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr99, ptr %next_input_byte, align 8
  %92 = load i8, ptr %91, align 1
  %conv100 = zext i8 %92 to i32
  %93 = load ptr, ptr %cinfo.addr, align 8
  %image_width101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 6
  %94 = load i32, ptr %image_width101, align 8
  %add102 = add i32 %94, %conv100
  store i32 %add102, ptr %image_width101, align 8
  br label %do.end103

do.end103:                                        ; preds = %if.end97
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  %95 = load i64, ptr %bytes_in_buffer, align 8
  %cmp105 = icmp eq i64 %95, 0
  br i1 %cmp105, label %if.then107, label %if.end115

if.then107:                                       ; preds = %do.body104
  %96 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer108 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %96, i32 0, i32 3
  %97 = load ptr, ptr %fill_input_buffer108, align 8
  %98 = load ptr, ptr %cinfo.addr, align 8
  %call109 = call i32 %97(ptr noundef %98)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end112, label %if.then111

if.then111:                                       ; preds = %if.then107
  store i32 0, ptr %retval, align 4
  br label %return

if.end112:                                        ; preds = %if.then107
  %99 = load ptr, ptr %datasrc, align 8
  %next_input_byte113 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %next_input_byte113, align 8
  store ptr %100, ptr %next_input_byte, align 8
  %101 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer114 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %101, i32 0, i32 1
  %102 = load i64, ptr %bytes_in_buffer114, align 8
  store i64 %102, ptr %bytes_in_buffer, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end112, %do.body104
  %103 = load i64, ptr %bytes_in_buffer, align 8
  %dec116 = add i64 %103, -1
  store i64 %dec116, ptr %bytes_in_buffer, align 8
  %104 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %104, i32 1
  store ptr %incdec.ptr117, ptr %next_input_byte, align 8
  %105 = load i8, ptr %104, align 1
  %conv118 = zext i8 %105 to i32
  %106 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 8
  store i32 %conv118, ptr %num_components, align 8
  br label %do.end119

do.end119:                                        ; preds = %if.end115
  %107 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %107, 8
  store i64 %sub, ptr %length, align 8
  br label %do.body120

do.body120:                                       ; preds = %do.end119
  %108 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %err, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8
  %110 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %110, i32 0, i32 72
  %111 = load i32, ptr %unread_marker, align 4
  %112 = load ptr, ptr %_mp, align 8
  %arrayidx = getelementptr inbounds i32, ptr %112, i64 0
  store i32 %111, ptr %arrayidx, align 4
  %113 = load ptr, ptr %cinfo.addr, align 8
  %image_width121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 6
  %114 = load i32, ptr %image_width121, align 8
  %115 = load ptr, ptr %_mp, align 8
  %arrayidx122 = getelementptr inbounds i32, ptr %115, i64 1
  store i32 %114, ptr %arrayidx122, align 4
  %116 = load ptr, ptr %cinfo.addr, align 8
  %image_height123 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %116, i32 0, i32 7
  %117 = load i32, ptr %image_height123, align 4
  %118 = load ptr, ptr %_mp, align 8
  %arrayidx124 = getelementptr inbounds i32, ptr %118, i64 2
  store i32 %117, ptr %arrayidx124, align 4
  %119 = load ptr, ptr %cinfo.addr, align 8
  %num_components125 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %119, i32 0, i32 8
  %120 = load i32, ptr %num_components125, align 8
  %121 = load ptr, ptr %_mp, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %121, i64 3
  store i32 %120, ptr %arrayidx126, align 4
  %122 = load ptr, ptr %cinfo.addr, align 8
  %err127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %err127, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i32 0, i32 5
  store i32 99, ptr %msg_code, align 8
  %124 = load ptr, ptr %cinfo.addr, align 8
  %err128 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %err128, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %125, i32 0, i32 1
  %126 = load ptr, ptr %emit_message, align 8
  %127 = load ptr, ptr %cinfo.addr, align 8
  call void %126(ptr noundef %127, i32 noundef 1)
  br label %do.end129

do.end129:                                        ; preds = %do.body120
  %128 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %128, i32 0, i32 78
  %129 = load ptr, ptr %marker, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %129, i32 0, i32 6
  %130 = load i32, ptr %saw_SOF, align 4
  %tobool130 = icmp ne i32 %130, 0
  br i1 %tobool130, label %if.then131, label %if.end135

if.then131:                                       ; preds = %do.end129
  %131 = load ptr, ptr %cinfo.addr, align 8
  %err132 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %err132, align 8
  %msg_code133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i32 0, i32 5
  store i32 57, ptr %msg_code133, align 8
  %133 = load ptr, ptr %cinfo.addr, align 8
  %err134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %133, i32 0, i32 0
  %134 = load ptr, ptr %err134, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %error_exit, align 8
  %136 = load ptr, ptr %cinfo.addr, align 8
  call void %135(ptr noundef %136)
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %do.end129
  %137 = load ptr, ptr %cinfo.addr, align 8
  %image_height136 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %137, i32 0, i32 7
  %138 = load i32, ptr %image_height136, align 4
  %cmp137 = icmp ule i32 %138, 0
  br i1 %cmp137, label %if.then146, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end135
  %139 = load ptr, ptr %cinfo.addr, align 8
  %image_width139 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %139, i32 0, i32 6
  %140 = load i32, ptr %image_width139, align 8
  %cmp140 = icmp ule i32 %140, 0
  br i1 %cmp140, label %if.then146, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false
  %141 = load ptr, ptr %cinfo.addr, align 8
  %num_components143 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %141, i32 0, i32 8
  %142 = load i32, ptr %num_components143, align 8
  %cmp144 = icmp sle i32 %142, 0
  br i1 %cmp144, label %if.then146, label %if.end151

if.then146:                                       ; preds = %lor.lhs.false142, %lor.lhs.false, %if.end135
  %143 = load ptr, ptr %cinfo.addr, align 8
  %err147 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %143, i32 0, i32 0
  %144 = load ptr, ptr %err147, align 8
  %msg_code148 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %144, i32 0, i32 5
  store i32 31, ptr %msg_code148, align 8
  %145 = load ptr, ptr %cinfo.addr, align 8
  %err149 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %err149, align 8
  %error_exit150 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %146, i32 0, i32 0
  %147 = load ptr, ptr %error_exit150, align 8
  %148 = load ptr, ptr %cinfo.addr, align 8
  call void %147(ptr noundef %148)
  br label %if.end151

if.end151:                                        ; preds = %if.then146, %lor.lhs.false142
  %149 = load i64, ptr %length, align 8
  %150 = load ptr, ptr %cinfo.addr, align 8
  %num_components152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %150, i32 0, i32 8
  %151 = load i32, ptr %num_components152, align 8
  %mul = mul nsw i32 %151, 3
  %conv153 = sext i32 %mul to i64
  %cmp154 = icmp ne i64 %149, %conv153
  br i1 %cmp154, label %if.then156, label %if.end161

if.then156:                                       ; preds = %if.end151
  %152 = load ptr, ptr %cinfo.addr, align 8
  %err157 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %err157, align 8
  %msg_code158 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %153, i32 0, i32 5
  store i32 9, ptr %msg_code158, align 8
  %154 = load ptr, ptr %cinfo.addr, align 8
  %err159 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err159, align 8
  %error_exit160 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %error_exit160, align 8
  %157 = load ptr, ptr %cinfo.addr, align 8
  call void %156(ptr noundef %157)
  br label %if.end161

if.end161:                                        ; preds = %if.then156, %if.end151
  %158 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %158, i32 0, i32 43
  %159 = load ptr, ptr %comp_info, align 8
  %cmp162 = icmp eq ptr %159, null
  br i1 %cmp162, label %if.then164, label %if.end170

if.then164:                                       ; preds = %if.end161
  %160 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %160, i32 0, i32 1
  %161 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %alloc_small, align 8
  %163 = load ptr, ptr %cinfo.addr, align 8
  %164 = load ptr, ptr %cinfo.addr, align 8
  %num_components165 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %164, i32 0, i32 8
  %165 = load i32, ptr %num_components165, align 8
  %conv166 = sext i32 %165 to i64
  %mul167 = mul i64 %conv166, 96
  %call168 = call ptr %162(ptr noundef %163, i32 noundef 1, i64 noundef %mul167)
  %166 = load ptr, ptr %cinfo.addr, align 8
  %comp_info169 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %166, i32 0, i32 43
  store ptr %call168, ptr %comp_info169, align 8
  br label %if.end170

if.end170:                                        ; preds = %if.then164, %if.end161
  store i32 0, ptr %ci, align 4
  %167 = load ptr, ptr %cinfo.addr, align 8
  %comp_info171 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %167, i32 0, i32 43
  %168 = load ptr, ptr %comp_info171, align 8
  store ptr %168, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end170
  %169 = load i32, ptr %ci, align 4
  %170 = load ptr, ptr %cinfo.addr, align 8
  %num_components172 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %170, i32 0, i32 8
  %171 = load i32, ptr %num_components172, align 8
  %cmp173 = icmp slt i32 %169, %171
  br i1 %cmp173, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %172 = load i32, ptr %ci, align 4
  %173 = load ptr, ptr %compptr, align 8
  %component_index = getelementptr inbounds %struct.jpeg_component_info, ptr %173, i32 0, i32 1
  store i32 %172, ptr %component_index, align 4
  br label %do.body175

do.body175:                                       ; preds = %for.body
  %174 = load i64, ptr %bytes_in_buffer, align 8
  %cmp176 = icmp eq i64 %174, 0
  br i1 %cmp176, label %if.then178, label %if.end186

if.then178:                                       ; preds = %do.body175
  %175 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer179 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %175, i32 0, i32 3
  %176 = load ptr, ptr %fill_input_buffer179, align 8
  %177 = load ptr, ptr %cinfo.addr, align 8
  %call180 = call i32 %176(ptr noundef %177)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.end183, label %if.then182

if.then182:                                       ; preds = %if.then178
  store i32 0, ptr %retval, align 4
  br label %return

if.end183:                                        ; preds = %if.then178
  %178 = load ptr, ptr %datasrc, align 8
  %next_input_byte184 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %next_input_byte184, align 8
  store ptr %179, ptr %next_input_byte, align 8
  %180 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer185 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %180, i32 0, i32 1
  %181 = load i64, ptr %bytes_in_buffer185, align 8
  store i64 %181, ptr %bytes_in_buffer, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.end183, %do.body175
  %182 = load i64, ptr %bytes_in_buffer, align 8
  %dec187 = add i64 %182, -1
  store i64 %dec187, ptr %bytes_in_buffer, align 8
  %183 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr188 = getelementptr inbounds i8, ptr %183, i32 1
  store ptr %incdec.ptr188, ptr %next_input_byte, align 8
  %184 = load i8, ptr %183, align 1
  %conv189 = zext i8 %184 to i32
  %185 = load ptr, ptr %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %185, i32 0, i32 0
  store i32 %conv189, ptr %component_id, align 8
  br label %do.end190

do.end190:                                        ; preds = %if.end186
  br label %do.body191

do.body191:                                       ; preds = %do.end190
  %186 = load i64, ptr %bytes_in_buffer, align 8
  %cmp192 = icmp eq i64 %186, 0
  br i1 %cmp192, label %if.then194, label %if.end202

if.then194:                                       ; preds = %do.body191
  %187 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer195 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %187, i32 0, i32 3
  %188 = load ptr, ptr %fill_input_buffer195, align 8
  %189 = load ptr, ptr %cinfo.addr, align 8
  %call196 = call i32 %188(ptr noundef %189)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.end199, label %if.then198

if.then198:                                       ; preds = %if.then194
  store i32 0, ptr %retval, align 4
  br label %return

if.end199:                                        ; preds = %if.then194
  %190 = load ptr, ptr %datasrc, align 8
  %next_input_byte200 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %190, i32 0, i32 0
  %191 = load ptr, ptr %next_input_byte200, align 8
  store ptr %191, ptr %next_input_byte, align 8
  %192 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer201 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %192, i32 0, i32 1
  %193 = load i64, ptr %bytes_in_buffer201, align 8
  store i64 %193, ptr %bytes_in_buffer, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.end199, %do.body191
  %194 = load i64, ptr %bytes_in_buffer, align 8
  %dec203 = add i64 %194, -1
  store i64 %dec203, ptr %bytes_in_buffer, align 8
  %195 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr204 = getelementptr inbounds i8, ptr %195, i32 1
  store ptr %incdec.ptr204, ptr %next_input_byte, align 8
  %196 = load i8, ptr %195, align 1
  %conv205 = zext i8 %196 to i32
  store i32 %conv205, ptr %c, align 4
  br label %do.end206

do.end206:                                        ; preds = %if.end202
  %197 = load i32, ptr %c, align 4
  %shr = ashr i32 %197, 4
  %and = and i32 %shr, 15
  %198 = load ptr, ptr %compptr, align 8
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %198, i32 0, i32 2
  store i32 %and, ptr %h_samp_factor, align 8
  %199 = load i32, ptr %c, align 4
  %and207 = and i32 %199, 15
  %200 = load ptr, ptr %compptr, align 8
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, ptr %200, i32 0, i32 3
  store i32 %and207, ptr %v_samp_factor, align 4
  br label %do.body208

do.body208:                                       ; preds = %do.end206
  %201 = load i64, ptr %bytes_in_buffer, align 8
  %cmp209 = icmp eq i64 %201, 0
  br i1 %cmp209, label %if.then211, label %if.end219

if.then211:                                       ; preds = %do.body208
  %202 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer212 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %202, i32 0, i32 3
  %203 = load ptr, ptr %fill_input_buffer212, align 8
  %204 = load ptr, ptr %cinfo.addr, align 8
  %call213 = call i32 %203(ptr noundef %204)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.end216, label %if.then215

if.then215:                                       ; preds = %if.then211
  store i32 0, ptr %retval, align 4
  br label %return

if.end216:                                        ; preds = %if.then211
  %205 = load ptr, ptr %datasrc, align 8
  %next_input_byte217 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %205, i32 0, i32 0
  %206 = load ptr, ptr %next_input_byte217, align 8
  store ptr %206, ptr %next_input_byte, align 8
  %207 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer218 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %207, i32 0, i32 1
  %208 = load i64, ptr %bytes_in_buffer218, align 8
  store i64 %208, ptr %bytes_in_buffer, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.end216, %do.body208
  %209 = load i64, ptr %bytes_in_buffer, align 8
  %dec220 = add i64 %209, -1
  store i64 %dec220, ptr %bytes_in_buffer, align 8
  %210 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr221 = getelementptr inbounds i8, ptr %210, i32 1
  store ptr %incdec.ptr221, ptr %next_input_byte, align 8
  %211 = load i8, ptr %210, align 1
  %conv222 = zext i8 %211 to i32
  %212 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %212, i32 0, i32 4
  store i32 %conv222, ptr %quant_tbl_no, align 8
  br label %do.end223

do.end223:                                        ; preds = %if.end219
  br label %do.body224

do.body224:                                       ; preds = %do.end223
  %213 = load ptr, ptr %cinfo.addr, align 8
  %err226 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %213, i32 0, i32 0
  %214 = load ptr, ptr %err226, align 8
  %msg_parm227 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %214, i32 0, i32 6
  %arraydecay228 = getelementptr inbounds [8 x i32], ptr %msg_parm227, i64 0, i64 0
  store ptr %arraydecay228, ptr %_mp225, align 8
  %215 = load ptr, ptr %compptr, align 8
  %component_id229 = getelementptr inbounds %struct.jpeg_component_info, ptr %215, i32 0, i32 0
  %216 = load i32, ptr %component_id229, align 8
  %217 = load ptr, ptr %_mp225, align 8
  %arrayidx230 = getelementptr inbounds i32, ptr %217, i64 0
  store i32 %216, ptr %arrayidx230, align 4
  %218 = load ptr, ptr %compptr, align 8
  %h_samp_factor231 = getelementptr inbounds %struct.jpeg_component_info, ptr %218, i32 0, i32 2
  %219 = load i32, ptr %h_samp_factor231, align 8
  %220 = load ptr, ptr %_mp225, align 8
  %arrayidx232 = getelementptr inbounds i32, ptr %220, i64 1
  store i32 %219, ptr %arrayidx232, align 4
  %221 = load ptr, ptr %compptr, align 8
  %v_samp_factor233 = getelementptr inbounds %struct.jpeg_component_info, ptr %221, i32 0, i32 3
  %222 = load i32, ptr %v_samp_factor233, align 4
  %223 = load ptr, ptr %_mp225, align 8
  %arrayidx234 = getelementptr inbounds i32, ptr %223, i64 2
  store i32 %222, ptr %arrayidx234, align 4
  %224 = load ptr, ptr %compptr, align 8
  %quant_tbl_no235 = getelementptr inbounds %struct.jpeg_component_info, ptr %224, i32 0, i32 4
  %225 = load i32, ptr %quant_tbl_no235, align 8
  %226 = load ptr, ptr %_mp225, align 8
  %arrayidx236 = getelementptr inbounds i32, ptr %226, i64 3
  store i32 %225, ptr %arrayidx236, align 4
  %227 = load ptr, ptr %cinfo.addr, align 8
  %err237 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %227, i32 0, i32 0
  %228 = load ptr, ptr %err237, align 8
  %msg_code238 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %228, i32 0, i32 5
  store i32 100, ptr %msg_code238, align 8
  %229 = load ptr, ptr %cinfo.addr, align 8
  %err239 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %229, i32 0, i32 0
  %230 = load ptr, ptr %err239, align 8
  %emit_message240 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %230, i32 0, i32 1
  %231 = load ptr, ptr %emit_message240, align 8
  %232 = load ptr, ptr %cinfo.addr, align 8
  call void %231(ptr noundef %232, i32 noundef 1)
  br label %do.end241

do.end241:                                        ; preds = %do.body224
  br label %for.inc

for.inc:                                          ; preds = %do.end241
  %233 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %233, 1
  store i32 %inc, ptr %ci, align 4
  %234 = load ptr, ptr %compptr, align 8
  %incdec.ptr242 = getelementptr inbounds %struct.jpeg_component_info, ptr %234, i32 1
  store ptr %incdec.ptr242, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %235 = load ptr, ptr %cinfo.addr, align 8
  %marker243 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %235, i32 0, i32 78
  %236 = load ptr, ptr %marker243, align 8
  %saw_SOF244 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %236, i32 0, i32 6
  store i32 1, ptr %saw_SOF244, align 4
  %237 = load ptr, ptr %next_input_byte, align 8
  %238 = load ptr, ptr %datasrc, align 8
  %next_input_byte245 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %238, i32 0, i32 0
  store ptr %237, ptr %next_input_byte245, align 8
  %239 = load i64, ptr %bytes_in_buffer, align 8
  %240 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer246 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %240, i32 0, i32 1
  store i64 %239, ptr %bytes_in_buffer246, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then215, %if.then198, %if.then182, %if.then111, %if.then93, %if.then78, %if.then60, %if.then45, %if.then29, %if.then14, %if.then3
  %241 = load i32, ptr %retval, align 4
  ret i32 %241
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 78
  %7 = load ptr, ptr %marker, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %saw_SOF, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5
  store i32 61, ptr %msg_code, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %error_exit, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  call void %13(ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %15 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %15, 0
  br i1 %cmp, label %if.then4, label %if.end10

if.then4:                                         ; preds = %do.body
  %16 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %fill_input_buffer, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %17(ptr noundef %18)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then4
  %19 = load ptr, ptr %datasrc, align 8
  %next_input_byte8 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next_input_byte8, align 8
  store ptr %20, ptr %next_input_byte, align 8
  %21 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer9 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %bytes_in_buffer9, align 8
  store i64 %22, ptr %bytes_in_buffer, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %do.body
  %23 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %23, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %24 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %25 = load i8, ptr %24, align 1
  %conv = zext i8 %25 to i32
  %shl = shl i32 %conv, 8
  %conv11 = zext i32 %shl to i64
  store i64 %conv11, ptr %length, align 8
  %26 = load i64, ptr %bytes_in_buffer, align 8
  %cmp12 = icmp eq i64 %26, 0
  br i1 %cmp12, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end10
  %27 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer15 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %fill_input_buffer15, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  %call16 = call i32 %28(ptr noundef %29)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  %30 = load ptr, ptr %datasrc, align 8
  %next_input_byte20 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %next_input_byte20, align 8
  store ptr %31, ptr %next_input_byte, align 8
  %32 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer21 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %bytes_in_buffer21, align 8
  store i64 %33, ptr %bytes_in_buffer, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end10
  %34 = load i64, ptr %bytes_in_buffer, align 8
  %dec23 = add i64 %34, -1
  store i64 %dec23, ptr %bytes_in_buffer, align 8
  %35 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr24, ptr %next_input_byte, align 8
  %36 = load i8, ptr %35, align 1
  %conv25 = zext i8 %36 to i64
  %37 = load i64, ptr %length, align 8
  %add = add nsw i64 %37, %conv25
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end22
  br label %do.body26

do.body26:                                        ; preds = %do.end
  %38 = load i64, ptr %bytes_in_buffer, align 8
  %cmp27 = icmp eq i64 %38, 0
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %do.body26
  %39 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer30 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %fill_input_buffer30, align 8
  %41 = load ptr, ptr %cinfo.addr, align 8
  %call31 = call i32 %40(ptr noundef %41)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.then29
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then29
  %42 = load ptr, ptr %datasrc, align 8
  %next_input_byte35 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %next_input_byte35, align 8
  store ptr %43, ptr %next_input_byte, align 8
  %44 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer36 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %44, i32 0, i32 1
  %45 = load i64, ptr %bytes_in_buffer36, align 8
  store i64 %45, ptr %bytes_in_buffer, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %do.body26
  %46 = load i64, ptr %bytes_in_buffer, align 8
  %dec38 = add i64 %46, -1
  store i64 %dec38, ptr %bytes_in_buffer, align 8
  %47 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr39, ptr %next_input_byte, align 8
  %48 = load i8, ptr %47, align 1
  %conv40 = zext i8 %48 to i32
  store i32 %conv40, ptr %n, align 4
  br label %do.end41

do.end41:                                         ; preds = %if.end37
  %49 = load i64, ptr %length, align 8
  %50 = load i32, ptr %n, align 4
  %mul = mul nsw i32 %50, 2
  %add42 = add nsw i32 %mul, 6
  %conv43 = sext i32 %add42 to i64
  %cmp44 = icmp ne i64 %49, %conv43
  br i1 %cmp44, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end41
  %51 = load i32, ptr %n, align 4
  %cmp46 = icmp slt i32 %51, 1
  br i1 %cmp46, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %52 = load i32, ptr %n, align 4
  %cmp49 = icmp sgt i32 %52, 4
  br i1 %cmp49, label %if.then51, label %if.end56

if.then51:                                        ; preds = %lor.lhs.false48, %lor.lhs.false, %do.end41
  %53 = load ptr, ptr %cinfo.addr, align 8
  %err52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %err52, align 8
  %msg_code53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i32 0, i32 5
  store i32 9, ptr %msg_code53, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %err54, align 8
  %error_exit55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %error_exit55, align 8
  %58 = load ptr, ptr %cinfo.addr, align 8
  call void %57(ptr noundef %58)
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %lor.lhs.false48
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err57, align 8
  %msg_code58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 5
  store i32 102, ptr %msg_code58, align 8
  %61 = load i32, ptr %n, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err59, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %61, ptr %arrayidx, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err60, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %emit_message, align 8
  %67 = load ptr, ptr %cinfo.addr, align 8
  call void %66(ptr noundef %67, i32 noundef 1)
  %68 = load i32, ptr %n, align 4
  %69 = load ptr, ptr %cinfo.addr, align 8
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 62
  store i32 %68, ptr %comps_in_scan, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc126, %if.end56
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %n, align 4
  %cmp61 = icmp slt i32 %70, %71
  br i1 %cmp61, label %for.body, label %for.end128

for.body:                                         ; preds = %for.cond
  br label %do.body63

do.body63:                                        ; preds = %for.body
  %72 = load i64, ptr %bytes_in_buffer, align 8
  %cmp64 = icmp eq i64 %72, 0
  br i1 %cmp64, label %if.then66, label %if.end74

if.then66:                                        ; preds = %do.body63
  %73 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer67 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %73, i32 0, i32 3
  %74 = load ptr, ptr %fill_input_buffer67, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  %call68 = call i32 %74(ptr noundef %75)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.then66
  store i32 0, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.then66
  %76 = load ptr, ptr %datasrc, align 8
  %next_input_byte72 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %next_input_byte72, align 8
  store ptr %77, ptr %next_input_byte, align 8
  %78 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer73 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %78, i32 0, i32 1
  %79 = load i64, ptr %bytes_in_buffer73, align 8
  store i64 %79, ptr %bytes_in_buffer, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %do.body63
  %80 = load i64, ptr %bytes_in_buffer, align 8
  %dec75 = add i64 %80, -1
  store i64 %dec75, ptr %bytes_in_buffer, align 8
  %81 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr76 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr76, ptr %next_input_byte, align 8
  %82 = load i8, ptr %81, align 1
  %conv77 = zext i8 %82 to i32
  store i32 %conv77, ptr %cc, align 4
  br label %do.end78

do.end78:                                         ; preds = %if.end74
  br label %do.body79

do.body79:                                        ; preds = %do.end78
  %83 = load i64, ptr %bytes_in_buffer, align 8
  %cmp80 = icmp eq i64 %83, 0
  br i1 %cmp80, label %if.then82, label %if.end90

if.then82:                                        ; preds = %do.body79
  %84 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer83 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %fill_input_buffer83, align 8
  %86 = load ptr, ptr %cinfo.addr, align 8
  %call84 = call i32 %85(ptr noundef %86)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.then82
  store i32 0, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %if.then82
  %87 = load ptr, ptr %datasrc, align 8
  %next_input_byte88 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %next_input_byte88, align 8
  store ptr %88, ptr %next_input_byte, align 8
  %89 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer89 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %89, i32 0, i32 1
  %90 = load i64, ptr %bytes_in_buffer89, align 8
  store i64 %90, ptr %bytes_in_buffer, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %do.body79
  %91 = load i64, ptr %bytes_in_buffer, align 8
  %dec91 = add i64 %91, -1
  store i64 %dec91, ptr %bytes_in_buffer, align 8
  %92 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %incdec.ptr92, ptr %next_input_byte, align 8
  %93 = load i8, ptr %92, align 1
  %conv93 = zext i8 %93 to i32
  store i32 %conv93, ptr %c, align 4
  br label %do.end94

do.end94:                                         ; preds = %if.end90
  store i32 0, ptr %ci, align 4
  %94 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 43
  %95 = load ptr, ptr %comp_info, align 8
  store ptr %95, ptr %compptr, align 8
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc, %do.end94
  %96 = load i32, ptr %ci, align 4
  %97 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 8
  %98 = load i32, ptr %num_components, align 8
  %cmp96 = icmp slt i32 %96, %98
  br i1 %cmp96, label %for.body98, label %for.end

for.body98:                                       ; preds = %for.cond95
  %99 = load i32, ptr %cc, align 4
  %100 = load ptr, ptr %compptr, align 8
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i32 0, i32 0
  %101 = load i32, ptr %component_id, align 8
  %cmp99 = icmp eq i32 %99, %101
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %for.body98
  br label %id_found

if.end102:                                        ; preds = %for.body98
  br label %for.inc

for.inc:                                          ; preds = %if.end102
  %102 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %ci, align 4
  %103 = load ptr, ptr %compptr, align 8
  %incdec.ptr103 = getelementptr inbounds %struct.jpeg_component_info, ptr %103, i32 1
  store ptr %incdec.ptr103, ptr %compptr, align 8
  br label %for.cond95, !llvm.loop !14

for.end:                                          ; preds = %for.cond95
  %104 = load ptr, ptr %cinfo.addr, align 8
  %err104 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %err104, align 8
  %msg_code105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %105, i32 0, i32 5
  store i32 5, ptr %msg_code105, align 8
  %106 = load i32, ptr %cc, align 4
  %107 = load ptr, ptr %cinfo.addr, align 8
  %err106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 0
  %108 = load ptr, ptr %err106, align 8
  %msg_parm107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i32 0, i32 6
  %arrayidx108 = getelementptr inbounds [8 x i32], ptr %msg_parm107, i64 0, i64 0
  store i32 %106, ptr %arrayidx108, align 4
  %109 = load ptr, ptr %cinfo.addr, align 8
  %err109 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %err109, align 8
  %error_exit110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %error_exit110, align 8
  %112 = load ptr, ptr %cinfo.addr, align 8
  call void %111(ptr noundef %112)
  br label %id_found

id_found:                                         ; preds = %for.end, %if.then101
  %113 = load ptr, ptr %compptr, align 8
  %114 = load ptr, ptr %cinfo.addr, align 8
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %114, i32 0, i32 63
  %115 = load i32, ptr %i, align 4
  %idxprom = sext i32 %115 to i64
  %arrayidx111 = getelementptr inbounds [4 x ptr], ptr %cur_comp_info, i64 0, i64 %idxprom
  store ptr %113, ptr %arrayidx111, align 8
  %116 = load i32, ptr %c, align 4
  %shr = ashr i32 %116, 4
  %and = and i32 %shr, 15
  %117 = load ptr, ptr %compptr, align 8
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %117, i32 0, i32 5
  store i32 %and, ptr %dc_tbl_no, align 4
  %118 = load i32, ptr %c, align 4
  %and112 = and i32 %118, 15
  %119 = load ptr, ptr %compptr, align 8
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %119, i32 0, i32 6
  store i32 %and112, ptr %ac_tbl_no, align 8
  br label %do.body113

do.body113:                                       ; preds = %id_found
  %120 = load ptr, ptr %cinfo.addr, align 8
  %err114 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err114, align 8
  %msg_parm115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm115, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8
  %122 = load i32, ptr %cc, align 4
  %123 = load ptr, ptr %_mp, align 8
  %arrayidx116 = getelementptr inbounds i32, ptr %123, i64 0
  store i32 %122, ptr %arrayidx116, align 4
  %124 = load ptr, ptr %compptr, align 8
  %dc_tbl_no117 = getelementptr inbounds %struct.jpeg_component_info, ptr %124, i32 0, i32 5
  %125 = load i32, ptr %dc_tbl_no117, align 4
  %126 = load ptr, ptr %_mp, align 8
  %arrayidx118 = getelementptr inbounds i32, ptr %126, i64 1
  store i32 %125, ptr %arrayidx118, align 4
  %127 = load ptr, ptr %compptr, align 8
  %ac_tbl_no119 = getelementptr inbounds %struct.jpeg_component_info, ptr %127, i32 0, i32 6
  %128 = load i32, ptr %ac_tbl_no119, align 8
  %129 = load ptr, ptr %_mp, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %129, i64 2
  store i32 %128, ptr %arrayidx120, align 4
  %130 = load ptr, ptr %cinfo.addr, align 8
  %err121 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %err121, align 8
  %msg_code122 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i32 0, i32 5
  store i32 103, ptr %msg_code122, align 8
  %132 = load ptr, ptr %cinfo.addr, align 8
  %err123 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %err123, align 8
  %emit_message124 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %emit_message124, align 8
  %135 = load ptr, ptr %cinfo.addr, align 8
  call void %134(ptr noundef %135, i32 noundef 1)
  br label %do.end125

do.end125:                                        ; preds = %do.body113
  br label %for.inc126

for.inc126:                                       ; preds = %do.end125
  %136 = load i32, ptr %i, align 4
  %inc127 = add nsw i32 %136, 1
  store i32 %inc127, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end128:                                       ; preds = %for.cond
  br label %do.body129

do.body129:                                       ; preds = %for.end128
  %137 = load i64, ptr %bytes_in_buffer, align 8
  %cmp130 = icmp eq i64 %137, 0
  br i1 %cmp130, label %if.then132, label %if.end140

if.then132:                                       ; preds = %do.body129
  %138 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer133 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %138, i32 0, i32 3
  %139 = load ptr, ptr %fill_input_buffer133, align 8
  %140 = load ptr, ptr %cinfo.addr, align 8
  %call134 = call i32 %139(ptr noundef %140)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.end137, label %if.then136

if.then136:                                       ; preds = %if.then132
  store i32 0, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.then132
  %141 = load ptr, ptr %datasrc, align 8
  %next_input_byte138 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %next_input_byte138, align 8
  store ptr %142, ptr %next_input_byte, align 8
  %143 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer139 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %143, i32 0, i32 1
  %144 = load i64, ptr %bytes_in_buffer139, align 8
  store i64 %144, ptr %bytes_in_buffer, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.end137, %do.body129
  %145 = load i64, ptr %bytes_in_buffer, align 8
  %dec141 = add i64 %145, -1
  store i64 %dec141, ptr %bytes_in_buffer, align 8
  %146 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr142 = getelementptr inbounds i8, ptr %146, i32 1
  store ptr %incdec.ptr142, ptr %next_input_byte, align 8
  %147 = load i8, ptr %146, align 1
  %conv143 = zext i8 %147 to i32
  store i32 %conv143, ptr %c, align 4
  br label %do.end144

do.end144:                                        ; preds = %if.end140
  %148 = load i32, ptr %c, align 4
  %149 = load ptr, ptr %cinfo.addr, align 8
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %149, i32 0, i32 68
  store i32 %148, ptr %Ss, align 4
  br label %do.body145

do.body145:                                       ; preds = %do.end144
  %150 = load i64, ptr %bytes_in_buffer, align 8
  %cmp146 = icmp eq i64 %150, 0
  br i1 %cmp146, label %if.then148, label %if.end156

if.then148:                                       ; preds = %do.body145
  %151 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer149 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %151, i32 0, i32 3
  %152 = load ptr, ptr %fill_input_buffer149, align 8
  %153 = load ptr, ptr %cinfo.addr, align 8
  %call150 = call i32 %152(ptr noundef %153)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.then148
  store i32 0, ptr %retval, align 4
  br label %return

if.end153:                                        ; preds = %if.then148
  %154 = load ptr, ptr %datasrc, align 8
  %next_input_byte154 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %next_input_byte154, align 8
  store ptr %155, ptr %next_input_byte, align 8
  %156 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer155 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %156, i32 0, i32 1
  %157 = load i64, ptr %bytes_in_buffer155, align 8
  store i64 %157, ptr %bytes_in_buffer, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.end153, %do.body145
  %158 = load i64, ptr %bytes_in_buffer, align 8
  %dec157 = add i64 %158, -1
  store i64 %dec157, ptr %bytes_in_buffer, align 8
  %159 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr158 = getelementptr inbounds i8, ptr %159, i32 1
  store ptr %incdec.ptr158, ptr %next_input_byte, align 8
  %160 = load i8, ptr %159, align 1
  %conv159 = zext i8 %160 to i32
  store i32 %conv159, ptr %c, align 4
  br label %do.end160

do.end160:                                        ; preds = %if.end156
  %161 = load i32, ptr %c, align 4
  %162 = load ptr, ptr %cinfo.addr, align 8
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %162, i32 0, i32 69
  store i32 %161, ptr %Se, align 8
  br label %do.body161

do.body161:                                       ; preds = %do.end160
  %163 = load i64, ptr %bytes_in_buffer, align 8
  %cmp162 = icmp eq i64 %163, 0
  br i1 %cmp162, label %if.then164, label %if.end172

if.then164:                                       ; preds = %do.body161
  %164 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer165 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %164, i32 0, i32 3
  %165 = load ptr, ptr %fill_input_buffer165, align 8
  %166 = load ptr, ptr %cinfo.addr, align 8
  %call166 = call i32 %165(ptr noundef %166)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.end169, label %if.then168

if.then168:                                       ; preds = %if.then164
  store i32 0, ptr %retval, align 4
  br label %return

if.end169:                                        ; preds = %if.then164
  %167 = load ptr, ptr %datasrc, align 8
  %next_input_byte170 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %167, i32 0, i32 0
  %168 = load ptr, ptr %next_input_byte170, align 8
  store ptr %168, ptr %next_input_byte, align 8
  %169 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer171 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %169, i32 0, i32 1
  %170 = load i64, ptr %bytes_in_buffer171, align 8
  store i64 %170, ptr %bytes_in_buffer, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.end169, %do.body161
  %171 = load i64, ptr %bytes_in_buffer, align 8
  %dec173 = add i64 %171, -1
  store i64 %dec173, ptr %bytes_in_buffer, align 8
  %172 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr174 = getelementptr inbounds i8, ptr %172, i32 1
  store ptr %incdec.ptr174, ptr %next_input_byte, align 8
  %173 = load i8, ptr %172, align 1
  %conv175 = zext i8 %173 to i32
  store i32 %conv175, ptr %c, align 4
  br label %do.end176

do.end176:                                        ; preds = %if.end172
  %174 = load i32, ptr %c, align 4
  %shr177 = ashr i32 %174, 4
  %and178 = and i32 %shr177, 15
  %175 = load ptr, ptr %cinfo.addr, align 8
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %175, i32 0, i32 70
  store i32 %and178, ptr %Ah, align 4
  %176 = load i32, ptr %c, align 4
  %and179 = and i32 %176, 15
  %177 = load ptr, ptr %cinfo.addr, align 8
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %177, i32 0, i32 71
  store i32 %and179, ptr %Al, align 8
  br label %do.body180

do.body180:                                       ; preds = %do.end176
  %178 = load ptr, ptr %cinfo.addr, align 8
  %err182 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %err182, align 8
  %msg_parm183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %179, i32 0, i32 6
  %arraydecay184 = getelementptr inbounds [8 x i32], ptr %msg_parm183, i64 0, i64 0
  store ptr %arraydecay184, ptr %_mp181, align 8
  %180 = load ptr, ptr %cinfo.addr, align 8
  %Ss185 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %180, i32 0, i32 68
  %181 = load i32, ptr %Ss185, align 4
  %182 = load ptr, ptr %_mp181, align 8
  %arrayidx186 = getelementptr inbounds i32, ptr %182, i64 0
  store i32 %181, ptr %arrayidx186, align 4
  %183 = load ptr, ptr %cinfo.addr, align 8
  %Se187 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %183, i32 0, i32 69
  %184 = load i32, ptr %Se187, align 8
  %185 = load ptr, ptr %_mp181, align 8
  %arrayidx188 = getelementptr inbounds i32, ptr %185, i64 1
  store i32 %184, ptr %arrayidx188, align 4
  %186 = load ptr, ptr %cinfo.addr, align 8
  %Ah189 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %186, i32 0, i32 70
  %187 = load i32, ptr %Ah189, align 4
  %188 = load ptr, ptr %_mp181, align 8
  %arrayidx190 = getelementptr inbounds i32, ptr %188, i64 2
  store i32 %187, ptr %arrayidx190, align 4
  %189 = load ptr, ptr %cinfo.addr, align 8
  %Al191 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %189, i32 0, i32 71
  %190 = load i32, ptr %Al191, align 8
  %191 = load ptr, ptr %_mp181, align 8
  %arrayidx192 = getelementptr inbounds i32, ptr %191, i64 3
  store i32 %190, ptr %arrayidx192, align 4
  %192 = load ptr, ptr %cinfo.addr, align 8
  %err193 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %192, i32 0, i32 0
  %193 = load ptr, ptr %err193, align 8
  %msg_code194 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %193, i32 0, i32 5
  store i32 104, ptr %msg_code194, align 8
  %194 = load ptr, ptr %cinfo.addr, align 8
  %err195 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %194, i32 0, i32 0
  %195 = load ptr, ptr %err195, align 8
  %emit_message196 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %195, i32 0, i32 1
  %196 = load ptr, ptr %emit_message196, align 8
  %197 = load ptr, ptr %cinfo.addr, align 8
  call void %196(ptr noundef %197, i32 noundef 1)
  br label %do.end197

do.end197:                                        ; preds = %do.body180
  %198 = load ptr, ptr %cinfo.addr, align 8
  %marker198 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %198, i32 0, i32 78
  %199 = load ptr, ptr %marker198, align 8
  %next_restart_num = getelementptr inbounds %struct.jpeg_marker_reader, ptr %199, i32 0, i32 7
  store i32 0, ptr %next_restart_num, align 8
  %200 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %200, i32 0, i32 34
  %201 = load i32, ptr %input_scan_number, align 4
  %inc199 = add nsw i32 %201, 1
  store i32 %inc199, ptr %input_scan_number, align 4
  %202 = load ptr, ptr %next_input_byte, align 8
  %203 = load ptr, ptr %datasrc, align 8
  %next_input_byte200 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %203, i32 0, i32 0
  store ptr %202, ptr %next_input_byte200, align 8
  %204 = load i64, ptr %bytes_in_buffer, align 8
  %205 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer201 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %205, i32 0, i32 1
  store i64 %204, ptr %bytes_in_buffer201, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end197, %if.then168, %if.then152, %if.then136, %if.then86, %if.then70, %if.then33, %if.then18, %if.then6
  %206 = load i32, ptr %retval, align 4
  ret i32 %206
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, ptr %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  %29 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, ptr %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end105, %do.end
  %30 = load i64, ptr %length, align 8
  %cmp22 = icmp sgt i64 %30, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body24

do.body24:                                        ; preds = %while.body
  %31 = load i64, ptr %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %31, 0
  br i1 %cmp25, label %if.then27, label %if.end35

if.then27:                                        ; preds = %do.body24
  %32 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %fill_input_buffer28, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call29 = call i32 %33(ptr noundef %34)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then27
  %35 = load ptr, ptr %datasrc, align 8
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next_input_byte33, align 8
  store ptr %36, ptr %next_input_byte, align 8
  %37 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %bytes_in_buffer34, align 8
  store i64 %38, ptr %bytes_in_buffer, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %do.body24
  %39 = load i64, ptr %bytes_in_buffer, align 8
  %dec36 = add i64 %39, -1
  store i64 %dec36, ptr %bytes_in_buffer, align 8
  %40 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr37, ptr %next_input_byte, align 8
  %41 = load i8, ptr %40, align 1
  %conv38 = zext i8 %41 to i32
  store i32 %conv38, ptr %index, align 4
  br label %do.end39

do.end39:                                         ; preds = %if.end35
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %42 = load i64, ptr %bytes_in_buffer, align 8
  %cmp41 = icmp eq i64 %42, 0
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %do.body40
  %43 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer44 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %fill_input_buffer44, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %call45 = call i32 %44(ptr noundef %45)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.then43
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then43
  %46 = load ptr, ptr %datasrc, align 8
  %next_input_byte49 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %next_input_byte49, align 8
  store ptr %47, ptr %next_input_byte, align 8
  %48 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer50 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %48, i32 0, i32 1
  %49 = load i64, ptr %bytes_in_buffer50, align 8
  store i64 %49, ptr %bytes_in_buffer, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %do.body40
  %50 = load i64, ptr %bytes_in_buffer, align 8
  %dec52 = add i64 %50, -1
  store i64 %dec52, ptr %bytes_in_buffer, align 8
  %51 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr53, ptr %next_input_byte, align 8
  %52 = load i8, ptr %51, align 1
  %conv54 = zext i8 %52 to i32
  store i32 %conv54, ptr %val, align 4
  br label %do.end55

do.end55:                                         ; preds = %if.end51
  %53 = load i64, ptr %length, align 8
  %sub56 = sub nsw i64 %53, 2
  store i64 %sub56, ptr %length, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i32 0, i32 5
  store i32 78, ptr %msg_code, align 8
  %56 = load i32, ptr %index, align 4
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err57, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %56, ptr %arrayidx, align 4
  %59 = load i32, ptr %val, align 4
  %60 = load ptr, ptr %cinfo.addr, align 8
  %err58 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err58, align 8
  %msg_parm59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i32 0, i32 6
  %arrayidx60 = getelementptr inbounds [8 x i32], ptr %msg_parm59, i64 0, i64 1
  store i32 %59, ptr %arrayidx60, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err61, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %emit_message, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  call void %64(ptr noundef %65, i32 noundef 1)
  %66 = load i32, ptr %index, align 4
  %cmp62 = icmp slt i32 %66, 0
  br i1 %cmp62, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end55
  %67 = load i32, ptr %index, align 4
  %cmp64 = icmp sge i32 %67, 32
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %lor.lhs.false, %do.end55
  %68 = load ptr, ptr %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %err67, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i32 0, i32 5
  store i32 26, ptr %msg_code68, align 8
  %70 = load i32, ptr %index, align 4
  %71 = load ptr, ptr %cinfo.addr, align 8
  %err69 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %err69, align 8
  %msg_parm70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %72, i32 0, i32 6
  %arrayidx71 = getelementptr inbounds [8 x i32], ptr %msg_parm70, i64 0, i64 0
  store i32 %70, ptr %arrayidx71, align 4
  %73 = load ptr, ptr %cinfo.addr, align 8
  %err72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %err72, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %error_exit, align 8
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void %75(ptr noundef %76)
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %lor.lhs.false
  %77 = load i32, ptr %index, align 4
  %cmp74 = icmp sge i32 %77, 16
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %if.end73
  %78 = load i32, ptr %val, align 4
  %conv77 = trunc i32 %78 to i8
  %79 = load ptr, ptr %cinfo.addr, align 8
  %arith_ac_K = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 48
  %80 = load i32, ptr %index, align 4
  %sub78 = sub nsw i32 %80, 16
  %idxprom = sext i32 %sub78 to i64
  %arrayidx79 = getelementptr inbounds [16 x i8], ptr %arith_ac_K, i64 0, i64 %idxprom
  store i8 %conv77, ptr %arrayidx79, align 1
  br label %if.end105

if.else:                                          ; preds = %if.end73
  %81 = load i32, ptr %val, align 4
  %and = and i32 %81, 15
  %conv80 = trunc i32 %and to i8
  %82 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_L = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i32 0, i32 46
  %83 = load i32, ptr %index, align 4
  %idxprom81 = sext i32 %83 to i64
  %arrayidx82 = getelementptr inbounds [16 x i8], ptr %arith_dc_L, i64 0, i64 %idxprom81
  store i8 %conv80, ptr %arrayidx82, align 1
  %84 = load i32, ptr %val, align 4
  %shr = ashr i32 %84, 4
  %conv83 = trunc i32 %shr to i8
  %85 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_U = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 47
  %86 = load i32, ptr %index, align 4
  %idxprom84 = sext i32 %86 to i64
  %arrayidx85 = getelementptr inbounds [16 x i8], ptr %arith_dc_U, i64 0, i64 %idxprom84
  store i8 %conv83, ptr %arrayidx85, align 1
  %87 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_L86 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 46
  %88 = load i32, ptr %index, align 4
  %idxprom87 = sext i32 %88 to i64
  %arrayidx88 = getelementptr inbounds [16 x i8], ptr %arith_dc_L86, i64 0, i64 %idxprom87
  %89 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %89 to i32
  %90 = load ptr, ptr %cinfo.addr, align 8
  %arith_dc_U90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 47
  %91 = load i32, ptr %index, align 4
  %idxprom91 = sext i32 %91 to i64
  %arrayidx92 = getelementptr inbounds [16 x i8], ptr %arith_dc_U90, i64 0, i64 %idxprom91
  %92 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %92 to i32
  %cmp94 = icmp sgt i32 %conv89, %conv93
  br i1 %cmp94, label %if.then96, label %if.end104

if.then96:                                        ; preds = %if.else
  %93 = load ptr, ptr %cinfo.addr, align 8
  %err97 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %err97, align 8
  %msg_code98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %94, i32 0, i32 5
  store i32 27, ptr %msg_code98, align 8
  %95 = load i32, ptr %val, align 4
  %96 = load ptr, ptr %cinfo.addr, align 8
  %err99 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %err99, align 8
  %msg_parm100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i32 0, i32 6
  %arrayidx101 = getelementptr inbounds [8 x i32], ptr %msg_parm100, i64 0, i64 0
  store i32 %95, ptr %arrayidx101, align 4
  %98 = load ptr, ptr %cinfo.addr, align 8
  %err102 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %err102, align 8
  %error_exit103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %error_exit103, align 8
  %101 = load ptr, ptr %cinfo.addr, align 8
  call void %100(ptr noundef %101)
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.else
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then76
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %102 = load ptr, ptr %next_input_byte, align 8
  %103 = load ptr, ptr %datasrc, align 8
  %next_input_byte106 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %103, i32 0, i32 0
  store ptr %102, ptr %next_input_byte106, align 8
  %104 = load i64, ptr %bytes_in_buffer, align 8
  %105 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer107 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %105, i32 0, i32 1
  store i64 %104, ptr %bytes_in_buffer107, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then47, %if.then31, %if.then14, %if.then3
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, ptr %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  %29 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, ptr %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end194, %do.end
  %30 = load i64, ptr %length, align 8
  %cmp22 = icmp sgt i64 %30, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body24

do.body24:                                        ; preds = %while.body
  %31 = load i64, ptr %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %31, 0
  br i1 %cmp25, label %if.then27, label %if.end35

if.then27:                                        ; preds = %do.body24
  %32 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %fill_input_buffer28, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call29 = call i32 %33(ptr noundef %34)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then27
  %35 = load ptr, ptr %datasrc, align 8
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next_input_byte33, align 8
  store ptr %36, ptr %next_input_byte, align 8
  %37 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %bytes_in_buffer34, align 8
  store i64 %38, ptr %bytes_in_buffer, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %do.body24
  %39 = load i64, ptr %bytes_in_buffer, align 8
  %dec36 = add i64 %39, -1
  store i64 %dec36, ptr %bytes_in_buffer, align 8
  %40 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr37, ptr %next_input_byte, align 8
  %41 = load i8, ptr %40, align 1
  %conv38 = zext i8 %41 to i32
  store i32 %conv38, ptr %index, align 4
  br label %do.end39

do.end39:                                         ; preds = %if.end35
  %42 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i32 0, i32 5
  store i32 79, ptr %msg_code, align 8
  %44 = load i32, ptr %index, align 4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %err40, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %46, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %44, ptr %arrayidx, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err41, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %emit_message, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  call void %49(ptr noundef %50, i32 noundef 1)
  %arrayidx42 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 0
  store i8 0, ptr %arrayidx42, align 1
  store i32 0, ptr %count, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end39
  %51 = load i32, ptr %i, align 4
  %cmp43 = icmp sle i32 %51, 16
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body45

do.body45:                                        ; preds = %for.body
  %52 = load i64, ptr %bytes_in_buffer, align 8
  %cmp46 = icmp eq i64 %52, 0
  br i1 %cmp46, label %if.then48, label %if.end56

if.then48:                                        ; preds = %do.body45
  %53 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer49 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %fill_input_buffer49, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  %call50 = call i32 %54(ptr noundef %55)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.then48
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then48
  %56 = load ptr, ptr %datasrc, align 8
  %next_input_byte54 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %next_input_byte54, align 8
  store ptr %57, ptr %next_input_byte, align 8
  %58 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer55 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %58, i32 0, i32 1
  %59 = load i64, ptr %bytes_in_buffer55, align 8
  store i64 %59, ptr %bytes_in_buffer, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %do.body45
  %60 = load i64, ptr %bytes_in_buffer, align 8
  %dec57 = add i64 %60, -1
  store i64 %dec57, ptr %bytes_in_buffer, align 8
  %61 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr58, ptr %next_input_byte, align 8
  %62 = load i8, ptr %61, align 1
  %63 = load i32, ptr %i, align 4
  %idxprom = sext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom
  store i8 %62, ptr %arrayidx59, align 1
  br label %do.end60

do.end60:                                         ; preds = %if.end56
  %64 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %64 to i64
  %arrayidx62 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 %idxprom61
  %65 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %65 to i32
  %66 = load i32, ptr %count, align 4
  %add64 = add nsw i32 %66, %conv63
  store i32 %add64, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end60
  %67 = load i32, ptr %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %68 = load i64, ptr %length, align 8
  %sub65 = sub nsw i64 %68, 17
  store i64 %sub65, ptr %length, align 8
  br label %do.body66

do.body66:                                        ; preds = %for.end
  %69 = load ptr, ptr %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %err67, align 8
  %msg_parm68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm68, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8
  %arrayidx69 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 1
  %71 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %71 to i32
  %72 = load ptr, ptr %_mp, align 8
  %arrayidx71 = getelementptr inbounds i32, ptr %72, i64 0
  store i32 %conv70, ptr %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 2
  %73 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %73 to i32
  %74 = load ptr, ptr %_mp, align 8
  %arrayidx74 = getelementptr inbounds i32, ptr %74, i64 1
  store i32 %conv73, ptr %arrayidx74, align 4
  %arrayidx75 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 3
  %75 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %75 to i32
  %76 = load ptr, ptr %_mp, align 8
  %arrayidx77 = getelementptr inbounds i32, ptr %76, i64 2
  store i32 %conv76, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 4
  %77 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %77 to i32
  %78 = load ptr, ptr %_mp, align 8
  %arrayidx80 = getelementptr inbounds i32, ptr %78, i64 3
  store i32 %conv79, ptr %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 5
  %79 = load i8, ptr %arrayidx81, align 1
  %conv82 = zext i8 %79 to i32
  %80 = load ptr, ptr %_mp, align 8
  %arrayidx83 = getelementptr inbounds i32, ptr %80, i64 4
  store i32 %conv82, ptr %arrayidx83, align 4
  %arrayidx84 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 6
  %81 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %81 to i32
  %82 = load ptr, ptr %_mp, align 8
  %arrayidx86 = getelementptr inbounds i32, ptr %82, i64 5
  store i32 %conv85, ptr %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 7
  %83 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %83 to i32
  %84 = load ptr, ptr %_mp, align 8
  %arrayidx89 = getelementptr inbounds i32, ptr %84, i64 6
  store i32 %conv88, ptr %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 8
  %85 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %85 to i32
  %86 = load ptr, ptr %_mp, align 8
  %arrayidx92 = getelementptr inbounds i32, ptr %86, i64 7
  store i32 %conv91, ptr %arrayidx92, align 4
  %87 = load ptr, ptr %cinfo.addr, align 8
  %err93 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %err93, align 8
  %msg_code94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i32 0, i32 5
  store i32 85, ptr %msg_code94, align 8
  %89 = load ptr, ptr %cinfo.addr, align 8
  %err95 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %err95, align 8
  %emit_message96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i32 0, i32 1
  %91 = load ptr, ptr %emit_message96, align 8
  %92 = load ptr, ptr %cinfo.addr, align 8
  call void %91(ptr noundef %92, i32 noundef 2)
  br label %do.end97

do.end97:                                         ; preds = %do.body66
  br label %do.body98

do.body98:                                        ; preds = %do.end97
  %93 = load ptr, ptr %cinfo.addr, align 8
  %err100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %err100, align 8
  %msg_parm101 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %94, i32 0, i32 6
  %arraydecay102 = getelementptr inbounds [8 x i32], ptr %msg_parm101, i64 0, i64 0
  store ptr %arraydecay102, ptr %_mp99, align 8
  %arrayidx103 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 9
  %95 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %95 to i32
  %96 = load ptr, ptr %_mp99, align 8
  %arrayidx105 = getelementptr inbounds i32, ptr %96, i64 0
  store i32 %conv104, ptr %arrayidx105, align 4
  %arrayidx106 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 10
  %97 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %97 to i32
  %98 = load ptr, ptr %_mp99, align 8
  %arrayidx108 = getelementptr inbounds i32, ptr %98, i64 1
  store i32 %conv107, ptr %arrayidx108, align 4
  %arrayidx109 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 11
  %99 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %99 to i32
  %100 = load ptr, ptr %_mp99, align 8
  %arrayidx111 = getelementptr inbounds i32, ptr %100, i64 2
  store i32 %conv110, ptr %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 12
  %101 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %101 to i32
  %102 = load ptr, ptr %_mp99, align 8
  %arrayidx114 = getelementptr inbounds i32, ptr %102, i64 3
  store i32 %conv113, ptr %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 13
  %103 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %103 to i32
  %104 = load ptr, ptr %_mp99, align 8
  %arrayidx117 = getelementptr inbounds i32, ptr %104, i64 4
  store i32 %conv116, ptr %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 14
  %105 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %105 to i32
  %106 = load ptr, ptr %_mp99, align 8
  %arrayidx120 = getelementptr inbounds i32, ptr %106, i64 5
  store i32 %conv119, ptr %arrayidx120, align 4
  %arrayidx121 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 15
  %107 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %107 to i32
  %108 = load ptr, ptr %_mp99, align 8
  %arrayidx123 = getelementptr inbounds i32, ptr %108, i64 6
  store i32 %conv122, ptr %arrayidx123, align 4
  %arrayidx124 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 16
  %109 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %109 to i32
  %110 = load ptr, ptr %_mp99, align 8
  %arrayidx126 = getelementptr inbounds i32, ptr %110, i64 7
  store i32 %conv125, ptr %arrayidx126, align 4
  %111 = load ptr, ptr %cinfo.addr, align 8
  %err127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 0
  %112 = load ptr, ptr %err127, align 8
  %msg_code128 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i32 0, i32 5
  store i32 85, ptr %msg_code128, align 8
  %113 = load ptr, ptr %cinfo.addr, align 8
  %err129 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %err129, align 8
  %emit_message130 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %114, i32 0, i32 1
  %115 = load ptr, ptr %emit_message130, align 8
  %116 = load ptr, ptr %cinfo.addr, align 8
  call void %115(ptr noundef %116, i32 noundef 2)
  br label %do.end131

do.end131:                                        ; preds = %do.body98
  %117 = load i32, ptr %count, align 4
  %cmp132 = icmp sgt i32 %117, 256
  br i1 %cmp132, label %if.then137, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end131
  %118 = load i32, ptr %count, align 4
  %conv134 = sext i32 %118 to i64
  %119 = load i64, ptr %length, align 8
  %cmp135 = icmp sgt i64 %conv134, %119
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %lor.lhs.false, %do.end131
  %120 = load ptr, ptr %cinfo.addr, align 8
  %err138 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err138, align 8
  %msg_code139 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i32 0, i32 5
  store i32 28, ptr %msg_code139, align 8
  %122 = load ptr, ptr %cinfo.addr, align 8
  %err140 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %err140, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %error_exit, align 8
  %125 = load ptr, ptr %cinfo.addr, align 8
  call void %124(ptr noundef %125)
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %lor.lhs.false
  store i32 0, ptr %i, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc163, %if.end141
  %126 = load i32, ptr %i, align 4
  %127 = load i32, ptr %count, align 4
  %cmp143 = icmp slt i32 %126, %127
  br i1 %cmp143, label %for.body145, label %for.end165

for.body145:                                      ; preds = %for.cond142
  br label %do.body146

do.body146:                                       ; preds = %for.body145
  %128 = load i64, ptr %bytes_in_buffer, align 8
  %cmp147 = icmp eq i64 %128, 0
  br i1 %cmp147, label %if.then149, label %if.end157

if.then149:                                       ; preds = %do.body146
  %129 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer150 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %129, i32 0, i32 3
  %130 = load ptr, ptr %fill_input_buffer150, align 8
  %131 = load ptr, ptr %cinfo.addr, align 8
  %call151 = call i32 %130(ptr noundef %131)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.end154, label %if.then153

if.then153:                                       ; preds = %if.then149
  store i32 0, ptr %retval, align 4
  br label %return

if.end154:                                        ; preds = %if.then149
  %132 = load ptr, ptr %datasrc, align 8
  %next_input_byte155 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %next_input_byte155, align 8
  store ptr %133, ptr %next_input_byte, align 8
  %134 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer156 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %134, i32 0, i32 1
  %135 = load i64, ptr %bytes_in_buffer156, align 8
  store i64 %135, ptr %bytes_in_buffer, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.end154, %do.body146
  %136 = load i64, ptr %bytes_in_buffer, align 8
  %dec158 = add i64 %136, -1
  store i64 %dec158, ptr %bytes_in_buffer, align 8
  %137 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr159 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %incdec.ptr159, ptr %next_input_byte, align 8
  %138 = load i8, ptr %137, align 1
  %139 = load i32, ptr %i, align 4
  %idxprom160 = sext i32 %139 to i64
  %arrayidx161 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 %idxprom160
  store i8 %138, ptr %arrayidx161, align 1
  br label %do.end162

do.end162:                                        ; preds = %if.end157
  br label %for.inc163

for.inc163:                                       ; preds = %do.end162
  %140 = load i32, ptr %i, align 4
  %inc164 = add nsw i32 %140, 1
  store i32 %inc164, ptr %i, align 4
  br label %for.cond142, !llvm.loop !18

for.end165:                                       ; preds = %for.cond142
  %141 = load i32, ptr %count, align 4
  %conv166 = sext i32 %141 to i64
  %142 = load i64, ptr %length, align 8
  %sub167 = sub nsw i64 %142, %conv166
  store i64 %sub167, ptr %length, align 8
  %143 = load i32, ptr %index, align 4
  %and = and i32 %143, 16
  %tobool168 = icmp ne i32 %and, 0
  br i1 %tobool168, label %if.then169, label %if.else

if.then169:                                       ; preds = %for.end165
  %144 = load i32, ptr %index, align 4
  %sub170 = sub nsw i32 %144, 16
  store i32 %sub170, ptr %index, align 4
  %145 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %145, i32 0, i32 41
  %146 = load i32, ptr %index, align 4
  %idxprom171 = sext i32 %146 to i64
  %arrayidx172 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom171
  store ptr %arrayidx172, ptr %htblptr, align 8
  br label %if.end175

if.else:                                          ; preds = %for.end165
  %147 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %147, i32 0, i32 40
  %148 = load i32, ptr %index, align 4
  %idxprom173 = sext i32 %148 to i64
  %arrayidx174 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom173
  store ptr %arrayidx174, ptr %htblptr, align 8
  br label %if.end175

if.end175:                                        ; preds = %if.else, %if.then169
  %149 = load i32, ptr %index, align 4
  %cmp176 = icmp slt i32 %149, 0
  br i1 %cmp176, label %if.then181, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %if.end175
  %150 = load i32, ptr %index, align 4
  %cmp179 = icmp sge i32 %150, 4
  br i1 %cmp179, label %if.then181, label %if.end189

if.then181:                                       ; preds = %lor.lhs.false178, %if.end175
  %151 = load ptr, ptr %cinfo.addr, align 8
  %err182 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %err182, align 8
  %msg_code183 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %152, i32 0, i32 5
  store i32 29, ptr %msg_code183, align 8
  %153 = load i32, ptr %index, align 4
  %154 = load ptr, ptr %cinfo.addr, align 8
  %err184 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err184, align 8
  %msg_parm185 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %155, i32 0, i32 6
  %arrayidx186 = getelementptr inbounds [8 x i32], ptr %msg_parm185, i64 0, i64 0
  store i32 %153, ptr %arrayidx186, align 4
  %156 = load ptr, ptr %cinfo.addr, align 8
  %err187 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %err187, align 8
  %error_exit188 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %error_exit188, align 8
  %159 = load ptr, ptr %cinfo.addr, align 8
  call void %158(ptr noundef %159)
  br label %if.end189

if.end189:                                        ; preds = %if.then181, %lor.lhs.false178
  %160 = load ptr, ptr %htblptr, align 8
  %161 = load ptr, ptr %160, align 8
  %cmp190 = icmp eq ptr %161, null
  br i1 %cmp190, label %if.then192, label %if.end194

if.then192:                                       ; preds = %if.end189
  %162 = load ptr, ptr %cinfo.addr, align 8
  %call193 = call ptr @jpeg_alloc_huff_table(ptr noundef %162)
  %163 = load ptr, ptr %htblptr, align 8
  store ptr %call193, ptr %163, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end189
  %164 = load ptr, ptr %htblptr, align 8
  %165 = load ptr, ptr %164, align 8
  %bits195 = getelementptr inbounds %struct.JHUFF_TBL, ptr %165, i32 0, i32 0
  %arraydecay196 = getelementptr inbounds [17 x i8], ptr %bits195, i64 0, i64 0
  %arraydecay197 = getelementptr inbounds [17 x i8], ptr %bits, i64 0, i64 0
  %166 = load ptr, ptr %htblptr, align 8
  %167 = load ptr, ptr %166, align 8
  %bits198 = getelementptr inbounds %struct.JHUFF_TBL, ptr %167, i32 0, i32 0
  %arraydecay199 = getelementptr inbounds [17 x i8], ptr %bits198, i64 0, i64 0
  %168 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay199, i1 false, i1 true, i1 false)
  %call200 = call ptr @__memcpy_chk(ptr noundef %arraydecay196, ptr noundef %arraydecay197, i64 noundef 17, i64 noundef %168) #4
  %169 = load ptr, ptr %htblptr, align 8
  %170 = load ptr, ptr %169, align 8
  %huffval201 = getelementptr inbounds %struct.JHUFF_TBL, ptr %170, i32 0, i32 1
  %arraydecay202 = getelementptr inbounds [256 x i8], ptr %huffval201, i64 0, i64 0
  %arraydecay203 = getelementptr inbounds [256 x i8], ptr %huffval, i64 0, i64 0
  %171 = load ptr, ptr %htblptr, align 8
  %172 = load ptr, ptr %171, align 8
  %huffval204 = getelementptr inbounds %struct.JHUFF_TBL, ptr %172, i32 0, i32 1
  %arraydecay205 = getelementptr inbounds [256 x i8], ptr %huffval204, i64 0, i64 0
  %173 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay205, i1 false, i1 true, i1 false)
  %call206 = call ptr @__memcpy_chk(ptr noundef %arraydecay202, ptr noundef %arraydecay203, i64 noundef 256, i64 noundef %173) #4
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %174 = load ptr, ptr %next_input_byte, align 8
  %175 = load ptr, ptr %datasrc, align 8
  %next_input_byte207 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %175, i32 0, i32 0
  store ptr %174, ptr %next_input_byte207, align 8
  %176 = load i64, ptr %bytes_in_buffer, align 8
  %177 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer208 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %177, i32 0, i32 1
  store i64 %176, ptr %bytes_in_buffer208, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then153, %if.then52, %if.then31, %if.then14, %if.then3
  %178 = load i32, ptr %retval, align 4
  ret i32 %178
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, ptr %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  %29 = load i64, ptr %length, align 8
  %sub = sub nsw i64 %29, 2
  store i64 %sub, ptr %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end196, %do.end
  %30 = load i64, ptr %length, align 8
  %cmp22 = icmp sgt i64 %30, 0
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body24

do.body24:                                        ; preds = %while.body
  %31 = load i64, ptr %bytes_in_buffer, align 8
  %cmp25 = icmp eq i64 %31, 0
  br i1 %cmp25, label %if.then27, label %if.end35

if.then27:                                        ; preds = %do.body24
  %32 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer28 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %fill_input_buffer28, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call29 = call i32 %33(ptr noundef %34)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.then27
  %35 = load ptr, ptr %datasrc, align 8
  %next_input_byte33 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next_input_byte33, align 8
  store ptr %36, ptr %next_input_byte, align 8
  %37 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer34 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i32 0, i32 1
  %38 = load i64, ptr %bytes_in_buffer34, align 8
  store i64 %38, ptr %bytes_in_buffer, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %do.body24
  %39 = load i64, ptr %bytes_in_buffer, align 8
  %dec36 = add i64 %39, -1
  store i64 %dec36, ptr %bytes_in_buffer, align 8
  %40 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr37, ptr %next_input_byte, align 8
  %41 = load i8, ptr %40, align 1
  %conv38 = zext i8 %41 to i32
  store i32 %conv38, ptr %n, align 4
  br label %do.end39

do.end39:                                         ; preds = %if.end35
  %42 = load i32, ptr %n, align 4
  %shr = ashr i32 %42, 4
  store i32 %shr, ptr %prec, align 4
  %43 = load i32, ptr %n, align 4
  %and = and i32 %43, 15
  store i32 %and, ptr %n, align 4
  %44 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i32 0, i32 5
  store i32 80, ptr %msg_code, align 8
  %46 = load i32, ptr %n, align 4
  %47 = load ptr, ptr %cinfo.addr, align 8
  %err40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %err40, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %46, ptr %arrayidx, align 4
  %49 = load i32, ptr %prec, align 4
  %50 = load ptr, ptr %cinfo.addr, align 8
  %err41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %err41, align 8
  %msg_parm42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %51, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %msg_parm42, i64 0, i64 1
  store i32 %49, ptr %arrayidx43, align 4
  %52 = load ptr, ptr %cinfo.addr, align 8
  %err44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %err44, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %emit_message, align 8
  %55 = load ptr, ptr %cinfo.addr, align 8
  call void %54(ptr noundef %55, i32 noundef 1)
  %56 = load i32, ptr %n, align 4
  %cmp45 = icmp sge i32 %56, 4
  br i1 %cmp45, label %if.then47, label %if.end54

if.then47:                                        ; preds = %do.end39
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err48, align 8
  %msg_code49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 5
  store i32 30, ptr %msg_code49, align 8
  %59 = load i32, ptr %n, align 4
  %60 = load ptr, ptr %cinfo.addr, align 8
  %err50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %err50, align 8
  %msg_parm51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i32 0, i32 6
  %arrayidx52 = getelementptr inbounds [8 x i32], ptr %msg_parm51, i64 0, i64 0
  store i32 %59, ptr %arrayidx52, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err53, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %error_exit, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  call void %64(ptr noundef %65)
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %do.end39
  %66 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 39
  %67 = load i32, ptr %n, align 4
  %idxprom = sext i32 %67 to i64
  %arrayidx55 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %68 = load ptr, ptr %arrayidx55, align 8
  %cmp56 = icmp eq ptr %68, null
  br i1 %cmp56, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.end54
  %69 = load ptr, ptr %cinfo.addr, align 8
  %call59 = call ptr @jpeg_alloc_quant_table(ptr noundef %69)
  %70 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 39
  %71 = load i32, ptr %n, align 4
  %idxprom61 = sext i32 %71 to i64
  %arrayidx62 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs60, i64 0, i64 %idxprom61
  store ptr %call59, ptr %arrayidx62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.end54
  %72 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 39
  %73 = load i32, ptr %n, align 4
  %idxprom65 = sext i32 %73 to i64
  %arrayidx66 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs64, i64 0, i64 %idxprom65
  %74 = load ptr, ptr %arrayidx66, align 8
  store ptr %74, ptr %quant_ptr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end63
  %75 = load i32, ptr %i, align 4
  %cmp67 = icmp slt i32 %75, 64
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load i32, ptr %prec, align 4
  %tobool69 = icmp ne i32 %76, 0
  br i1 %tobool69, label %if.then70, label %if.else

if.then70:                                        ; preds = %for.body
  br label %do.body71

do.body71:                                        ; preds = %if.then70
  %77 = load i64, ptr %bytes_in_buffer, align 8
  %cmp72 = icmp eq i64 %77, 0
  br i1 %cmp72, label %if.then74, label %if.end82

if.then74:                                        ; preds = %do.body71
  %78 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer75 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %78, i32 0, i32 3
  %79 = load ptr, ptr %fill_input_buffer75, align 8
  %80 = load ptr, ptr %cinfo.addr, align 8
  %call76 = call i32 %79(ptr noundef %80)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.then74
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %if.then74
  %81 = load ptr, ptr %datasrc, align 8
  %next_input_byte80 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %next_input_byte80, align 8
  store ptr %82, ptr %next_input_byte, align 8
  %83 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer81 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %83, i32 0, i32 1
  %84 = load i64, ptr %bytes_in_buffer81, align 8
  store i64 %84, ptr %bytes_in_buffer, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %do.body71
  %85 = load i64, ptr %bytes_in_buffer, align 8
  %dec83 = add i64 %85, -1
  store i64 %dec83, ptr %bytes_in_buffer, align 8
  %86 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr84, ptr %next_input_byte, align 8
  %87 = load i8, ptr %86, align 1
  %conv85 = zext i8 %87 to i32
  %shl86 = shl i32 %conv85, 8
  store i32 %shl86, ptr %tmp, align 4
  %88 = load i64, ptr %bytes_in_buffer, align 8
  %cmp87 = icmp eq i64 %88, 0
  br i1 %cmp87, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end82
  %89 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer90 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %89, i32 0, i32 3
  %90 = load ptr, ptr %fill_input_buffer90, align 8
  %91 = load ptr, ptr %cinfo.addr, align 8
  %call91 = call i32 %90(ptr noundef %91)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.then89
  store i32 0, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then89
  %92 = load ptr, ptr %datasrc, align 8
  %next_input_byte95 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %next_input_byte95, align 8
  store ptr %93, ptr %next_input_byte, align 8
  %94 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer96 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %94, i32 0, i32 1
  %95 = load i64, ptr %bytes_in_buffer96, align 8
  store i64 %95, ptr %bytes_in_buffer, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.end94, %if.end82
  %96 = load i64, ptr %bytes_in_buffer, align 8
  %dec98 = add i64 %96, -1
  store i64 %dec98, ptr %bytes_in_buffer, align 8
  %97 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr99 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr99, ptr %next_input_byte, align 8
  %98 = load i8, ptr %97, align 1
  %conv100 = zext i8 %98 to i32
  %99 = load i32, ptr %tmp, align 4
  %add101 = add i32 %99, %conv100
  store i32 %add101, ptr %tmp, align 4
  br label %do.end102

do.end102:                                        ; preds = %if.end97
  br label %if.end119

if.else:                                          ; preds = %for.body
  br label %do.body103

do.body103:                                       ; preds = %if.else
  %100 = load i64, ptr %bytes_in_buffer, align 8
  %cmp104 = icmp eq i64 %100, 0
  br i1 %cmp104, label %if.then106, label %if.end114

if.then106:                                       ; preds = %do.body103
  %101 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer107 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %101, i32 0, i32 3
  %102 = load ptr, ptr %fill_input_buffer107, align 8
  %103 = load ptr, ptr %cinfo.addr, align 8
  %call108 = call i32 %102(ptr noundef %103)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end111, label %if.then110

if.then110:                                       ; preds = %if.then106
  store i32 0, ptr %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.then106
  %104 = load ptr, ptr %datasrc, align 8
  %next_input_byte112 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %next_input_byte112, align 8
  store ptr %105, ptr %next_input_byte, align 8
  %106 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer113 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %106, i32 0, i32 1
  %107 = load i64, ptr %bytes_in_buffer113, align 8
  store i64 %107, ptr %bytes_in_buffer, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.end111, %do.body103
  %108 = load i64, ptr %bytes_in_buffer, align 8
  %dec115 = add i64 %108, -1
  store i64 %dec115, ptr %bytes_in_buffer, align 8
  %109 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr116 = getelementptr inbounds i8, ptr %109, i32 1
  store ptr %incdec.ptr116, ptr %next_input_byte, align 8
  %110 = load i8, ptr %109, align 1
  %conv117 = zext i8 %110 to i32
  store i32 %conv117, ptr %tmp, align 4
  br label %do.end118

do.end118:                                        ; preds = %if.end114
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %do.end102
  %111 = load i32, ptr %tmp, align 4
  %conv120 = trunc i32 %111 to i16
  %112 = load ptr, ptr %quant_ptr, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %112, i32 0, i32 0
  %113 = load i32, ptr %i, align 4
  %idxprom121 = sext i32 %113 to i64
  %arrayidx122 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %idxprom121
  %114 = load i32, ptr %arrayidx122, align 4
  %idxprom123 = sext i32 %114 to i64
  %arrayidx124 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 %idxprom123
  store i16 %conv120, ptr %arrayidx124, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end119
  %115 = load i32, ptr %i, align 4
  %inc = add nsw i32 %115, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %116 = load ptr, ptr %cinfo.addr, align 8
  %err125 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %err125, align 8
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i32 0, i32 7
  %118 = load i32, ptr %trace_level, align 4
  %cmp126 = icmp sge i32 %118, 2
  br i1 %cmp126, label %if.then128, label %if.end191

if.then128:                                       ; preds = %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc188, %if.then128
  %119 = load i32, ptr %i, align 4
  %cmp130 = icmp slt i32 %119, 64
  br i1 %cmp130, label %for.body132, label %for.end190

for.body132:                                      ; preds = %for.cond129
  br label %do.body133

do.body133:                                       ; preds = %for.body132
  %120 = load ptr, ptr %cinfo.addr, align 8
  %err134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %err134, align 8
  %msg_parm135 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm135, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8
  %122 = load ptr, ptr %quant_ptr, align 8
  %quantval136 = getelementptr inbounds %struct.JQUANT_TBL, ptr %122, i32 0, i32 0
  %123 = load i32, ptr %i, align 4
  %idxprom137 = sext i32 %123 to i64
  %arrayidx138 = getelementptr inbounds [64 x i16], ptr %quantval136, i64 0, i64 %idxprom137
  %124 = load i16, ptr %arrayidx138, align 2
  %conv139 = zext i16 %124 to i32
  %125 = load ptr, ptr %_mp, align 8
  %arrayidx140 = getelementptr inbounds i32, ptr %125, i64 0
  store i32 %conv139, ptr %arrayidx140, align 4
  %126 = load ptr, ptr %quant_ptr, align 8
  %quantval141 = getelementptr inbounds %struct.JQUANT_TBL, ptr %126, i32 0, i32 0
  %127 = load i32, ptr %i, align 4
  %add142 = add nsw i32 %127, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [64 x i16], ptr %quantval141, i64 0, i64 %idxprom143
  %128 = load i16, ptr %arrayidx144, align 2
  %conv145 = zext i16 %128 to i32
  %129 = load ptr, ptr %_mp, align 8
  %arrayidx146 = getelementptr inbounds i32, ptr %129, i64 1
  store i32 %conv145, ptr %arrayidx146, align 4
  %130 = load ptr, ptr %quant_ptr, align 8
  %quantval147 = getelementptr inbounds %struct.JQUANT_TBL, ptr %130, i32 0, i32 0
  %131 = load i32, ptr %i, align 4
  %add148 = add nsw i32 %131, 2
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [64 x i16], ptr %quantval147, i64 0, i64 %idxprom149
  %132 = load i16, ptr %arrayidx150, align 2
  %conv151 = zext i16 %132 to i32
  %133 = load ptr, ptr %_mp, align 8
  %arrayidx152 = getelementptr inbounds i32, ptr %133, i64 2
  store i32 %conv151, ptr %arrayidx152, align 4
  %134 = load ptr, ptr %quant_ptr, align 8
  %quantval153 = getelementptr inbounds %struct.JQUANT_TBL, ptr %134, i32 0, i32 0
  %135 = load i32, ptr %i, align 4
  %add154 = add nsw i32 %135, 3
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [64 x i16], ptr %quantval153, i64 0, i64 %idxprom155
  %136 = load i16, ptr %arrayidx156, align 2
  %conv157 = zext i16 %136 to i32
  %137 = load ptr, ptr %_mp, align 8
  %arrayidx158 = getelementptr inbounds i32, ptr %137, i64 3
  store i32 %conv157, ptr %arrayidx158, align 4
  %138 = load ptr, ptr %quant_ptr, align 8
  %quantval159 = getelementptr inbounds %struct.JQUANT_TBL, ptr %138, i32 0, i32 0
  %139 = load i32, ptr %i, align 4
  %add160 = add nsw i32 %139, 4
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [64 x i16], ptr %quantval159, i64 0, i64 %idxprom161
  %140 = load i16, ptr %arrayidx162, align 2
  %conv163 = zext i16 %140 to i32
  %141 = load ptr, ptr %_mp, align 8
  %arrayidx164 = getelementptr inbounds i32, ptr %141, i64 4
  store i32 %conv163, ptr %arrayidx164, align 4
  %142 = load ptr, ptr %quant_ptr, align 8
  %quantval165 = getelementptr inbounds %struct.JQUANT_TBL, ptr %142, i32 0, i32 0
  %143 = load i32, ptr %i, align 4
  %add166 = add nsw i32 %143, 5
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds [64 x i16], ptr %quantval165, i64 0, i64 %idxprom167
  %144 = load i16, ptr %arrayidx168, align 2
  %conv169 = zext i16 %144 to i32
  %145 = load ptr, ptr %_mp, align 8
  %arrayidx170 = getelementptr inbounds i32, ptr %145, i64 5
  store i32 %conv169, ptr %arrayidx170, align 4
  %146 = load ptr, ptr %quant_ptr, align 8
  %quantval171 = getelementptr inbounds %struct.JQUANT_TBL, ptr %146, i32 0, i32 0
  %147 = load i32, ptr %i, align 4
  %add172 = add nsw i32 %147, 6
  %idxprom173 = sext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds [64 x i16], ptr %quantval171, i64 0, i64 %idxprom173
  %148 = load i16, ptr %arrayidx174, align 2
  %conv175 = zext i16 %148 to i32
  %149 = load ptr, ptr %_mp, align 8
  %arrayidx176 = getelementptr inbounds i32, ptr %149, i64 6
  store i32 %conv175, ptr %arrayidx176, align 4
  %150 = load ptr, ptr %quant_ptr, align 8
  %quantval177 = getelementptr inbounds %struct.JQUANT_TBL, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %i, align 4
  %add178 = add nsw i32 %151, 7
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds [64 x i16], ptr %quantval177, i64 0, i64 %idxprom179
  %152 = load i16, ptr %arrayidx180, align 2
  %conv181 = zext i16 %152 to i32
  %153 = load ptr, ptr %_mp, align 8
  %arrayidx182 = getelementptr inbounds i32, ptr %153, i64 7
  store i32 %conv181, ptr %arrayidx182, align 4
  %154 = load ptr, ptr %cinfo.addr, align 8
  %err183 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %err183, align 8
  %msg_code184 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %155, i32 0, i32 5
  store i32 92, ptr %msg_code184, align 8
  %156 = load ptr, ptr %cinfo.addr, align 8
  %err185 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %156, i32 0, i32 0
  %157 = load ptr, ptr %err185, align 8
  %emit_message186 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %157, i32 0, i32 1
  %158 = load ptr, ptr %emit_message186, align 8
  %159 = load ptr, ptr %cinfo.addr, align 8
  call void %158(ptr noundef %159, i32 noundef 2)
  br label %do.end187

do.end187:                                        ; preds = %do.body133
  br label %for.inc188

for.inc188:                                       ; preds = %do.end187
  %160 = load i32, ptr %i, align 4
  %add189 = add nsw i32 %160, 8
  store i32 %add189, ptr %i, align 4
  br label %for.cond129, !llvm.loop !21

for.end190:                                       ; preds = %for.cond129
  br label %if.end191

if.end191:                                        ; preds = %for.end190, %for.end
  %161 = load i64, ptr %length, align 8
  %sub192 = sub nsw i64 %161, 65
  store i64 %sub192, ptr %length, align 8
  %162 = load i32, ptr %prec, align 4
  %tobool193 = icmp ne i32 %162, 0
  br i1 %tobool193, label %if.then194, label %if.end196

if.then194:                                       ; preds = %if.end191
  %163 = load i64, ptr %length, align 8
  %sub195 = sub nsw i64 %163, 64
  store i64 %sub195, ptr %length, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.then194, %if.end191
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %164 = load ptr, ptr %next_input_byte, align 8
  %165 = load ptr, ptr %datasrc, align 8
  %next_input_byte197 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %165, i32 0, i32 0
  store ptr %164, ptr %next_input_byte197, align 8
  %166 = load i64, ptr %bytes_in_buffer, align 8
  %167 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer198 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %167, i32 0, i32 1
  store i64 %166, ptr %bytes_in_buffer198, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then110, %if.then93, %if.then78, %if.then31, %if.then14, %if.then3
  %168 = load i32, ptr %retval, align 4
  ret i32 %168
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %src, align 8
  store ptr %1, ptr %datasrc, align 8
  %2 = load ptr, ptr %datasrc, align 8
  %next_input_byte1 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_input_byte1, align 8
  store ptr %3, ptr %next_input_byte, align 8
  %4 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer2 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %bytes_in_buffer2, align 8
  store i64 %5, ptr %bytes_in_buffer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i64, ptr %bytes_in_buffer, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %fill_input_buffer, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %8(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %datasrc, align 8
  %next_input_byte4 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next_input_byte4, align 8
  store ptr %11, ptr %next_input_byte, align 8
  %12 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer5 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %bytes_in_buffer5, align 8
  store i64 %13, ptr %bytes_in_buffer, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body
  %14 = load i64, ptr %bytes_in_buffer, align 8
  %dec = add i64 %14, -1
  store i64 %dec, ptr %bytes_in_buffer, align 8
  %15 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %next_input_byte, align 8
  %16 = load i8, ptr %15, align 1
  %conv = zext i8 %16 to i32
  %shl = shl i32 %conv, 8
  %conv7 = zext i32 %shl to i64
  store i64 %conv7, ptr %length, align 8
  %17 = load i64, ptr %bytes_in_buffer, align 8
  %cmp8 = icmp eq i64 %17, 0
  br i1 %cmp8, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end6
  %18 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer11 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %fill_input_buffer11, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  %call12 = call i32 %19(ptr noundef %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then10
  %21 = load ptr, ptr %datasrc, align 8
  %next_input_byte16 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %next_input_byte16, align 8
  store ptr %22, ptr %next_input_byte, align 8
  %23 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer17 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %bytes_in_buffer17, align 8
  store i64 %24, ptr %bytes_in_buffer, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end6
  %25 = load i64, ptr %bytes_in_buffer, align 8
  %dec19 = add i64 %25, -1
  store i64 %dec19, ptr %bytes_in_buffer, align 8
  %26 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %next_input_byte, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i64
  %28 = load i64, ptr %length, align 8
  %add = add nsw i64 %28, %conv21
  store i64 %add, ptr %length, align 8
  br label %do.end

do.end:                                           ; preds = %if.end18
  %29 = load i64, ptr %length, align 8
  %cmp22 = icmp ne i64 %29, 4
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %do.end
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5
  store i32 9, ptr %msg_code, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err25, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %error_exit, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %do.end
  br label %do.body27

do.body27:                                        ; preds = %if.end26
  %36 = load i64, ptr %bytes_in_buffer, align 8
  %cmp28 = icmp eq i64 %36, 0
  br i1 %cmp28, label %if.then30, label %if.end38

if.then30:                                        ; preds = %do.body27
  %37 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer31 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %fill_input_buffer31, align 8
  %39 = load ptr, ptr %cinfo.addr, align 8
  %call32 = call i32 %38(ptr noundef %39)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then30
  %40 = load ptr, ptr %datasrc, align 8
  %next_input_byte36 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %next_input_byte36, align 8
  store ptr %41, ptr %next_input_byte, align 8
  %42 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %42, i32 0, i32 1
  %43 = load i64, ptr %bytes_in_buffer37, align 8
  store i64 %43, ptr %bytes_in_buffer, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %do.body27
  %44 = load i64, ptr %bytes_in_buffer, align 8
  %dec39 = add i64 %44, -1
  store i64 %dec39, ptr %bytes_in_buffer, align 8
  %45 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %45, i32 1
  store ptr %incdec.ptr40, ptr %next_input_byte, align 8
  %46 = load i8, ptr %45, align 1
  %conv41 = zext i8 %46 to i32
  %shl42 = shl i32 %conv41, 8
  store i32 %shl42, ptr %tmp, align 4
  %47 = load i64, ptr %bytes_in_buffer, align 8
  %cmp43 = icmp eq i64 %47, 0
  br i1 %cmp43, label %if.then45, label %if.end53

if.then45:                                        ; preds = %if.end38
  %48 = load ptr, ptr %datasrc, align 8
  %fill_input_buffer46 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %fill_input_buffer46, align 8
  %50 = load ptr, ptr %cinfo.addr, align 8
  %call47 = call i32 %49(ptr noundef %50)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.then45
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then45
  %51 = load ptr, ptr %datasrc, align 8
  %next_input_byte51 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %next_input_byte51, align 8
  store ptr %52, ptr %next_input_byte, align 8
  %53 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer52 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %bytes_in_buffer52, align 8
  store i64 %54, ptr %bytes_in_buffer, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end38
  %55 = load i64, ptr %bytes_in_buffer, align 8
  %dec54 = add i64 %55, -1
  store i64 %dec54, ptr %bytes_in_buffer, align 8
  %56 = load ptr, ptr %next_input_byte, align 8
  %incdec.ptr55 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr55, ptr %next_input_byte, align 8
  %57 = load i8, ptr %56, align 1
  %conv56 = zext i8 %57 to i32
  %58 = load i32, ptr %tmp, align 4
  %add57 = add i32 %58, %conv56
  store i32 %add57, ptr %tmp, align 4
  br label %do.end58

do.end58:                                         ; preds = %if.end53
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err59 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err59, align 8
  %msg_code60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 5
  store i32 81, ptr %msg_code60, align 8
  %61 = load i32, ptr %tmp, align 4
  %62 = load ptr, ptr %cinfo.addr, align 8
  %err61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %err61, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %61, ptr %arrayidx, align 4
  %64 = load ptr, ptr %cinfo.addr, align 8
  %err62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %err62, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %emit_message, align 8
  %67 = load ptr, ptr %cinfo.addr, align 8
  call void %66(ptr noundef %67, i32 noundef 1)
  %68 = load i32, ptr %tmp, align 4
  %69 = load ptr, ptr %cinfo.addr, align 8
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 49
  store i32 %68, ptr %restart_interval, align 8
  %70 = load ptr, ptr %next_input_byte, align 8
  %71 = load ptr, ptr %datasrc, align 8
  %next_input_byte63 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %71, i32 0, i32 0
  store ptr %70, ptr %next_input_byte63, align 8
  %72 = load i64, ptr %bytes_in_buffer, align 8
  %73 = load ptr, ptr %datasrc, align 8
  %bytes_in_buffer64 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %73, i32 0, i32 1
  store i64 %72, ptr %bytes_in_buffer64, align 8
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end58, %if.then49, %if.then34, %if.then14, %if.then3
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
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


define internal void @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdmarker_0(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 43
  store ptr null, ptr %comp_info, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %input_scan_number = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i32 0, i32 34
  store i32 0, ptr %input_scan_number, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 72
  store i32 0, ptr %unread_marker, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 78
  %4 = load ptr, ptr %marker, align 8
  %saw_SOI = getelementptr inbounds %struct.jpeg_marker_reader, ptr %4, i32 0, i32 5
  store i32 0, ptr %saw_SOI, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %marker1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 78
  %6 = load ptr, ptr %marker1, align 8
  %saw_SOF = getelementptr inbounds %struct.jpeg_marker_reader, ptr %6, i32 0, i32 6
  store i32 0, ptr %saw_SOF, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %marker2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 78
  %8 = load ptr, ptr %marker2, align 8
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, ptr %8, i32 0, i32 8
  store i32 0, ptr %discarded_bytes, align 4
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
