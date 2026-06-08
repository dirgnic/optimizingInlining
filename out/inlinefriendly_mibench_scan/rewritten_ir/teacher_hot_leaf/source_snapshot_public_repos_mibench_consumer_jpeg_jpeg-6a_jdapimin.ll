; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_hot_leaf/source_snapshot_public_repos_mibench_consumer_jpeg_jpeg-6a_jdapimin.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdapimin.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_CreateDecompress(ptr noundef %cinfo, i32 noundef %version, i64 noundef %structsize) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %version.addr = alloca i32, align 4
  %structsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %version, ptr %version.addr, align 4
  store i64 %structsize, ptr %structsize.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 1
  store ptr null, ptr %mem, align 8
  %cmp.not = icmp eq i32 %version, 61
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %cinfo.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1, i64 0, i32 5
  store i32 10, ptr %msg_code, align 8
  %2 = load ptr, ptr %0, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 6
  store i32 61, ptr %msg_parm, align 4
  %3 = load i32, ptr %version.addr, align 4
  %4 = load ptr, ptr %cinfo.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %arrayidx4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 6, i32 0, i64 1
  store i32 %3, ptr %arrayidx4, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr noundef nonnull %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %structsize.addr, align 8
  %cmp6.not = icmp eq i64 %8, 616
  br i1 %cmp6.not, label %if.end18, label %if.then7

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 19, ptr %msg_code9, align 8
  %11 = load ptr, ptr %9, align 8
  %msg_parm11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 616, ptr %msg_parm11, align 4
  %12 = load i64, ptr %structsize.addr, align 8
  %conv = trunc i64 %12 to i32
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %arrayidx15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 6, i32 0, i64 1
  store i32 %conv, ptr %arrayidx15, align 4
  %15 = load ptr, ptr %13, align 8
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr noundef nonnull %13) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %if.end
  %17 = load ptr, ptr %cinfo.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef nonnull %17, i32 noundef 0, i64 noundef 616, i64 noundef %19) #4
  store ptr %18, ptr %17, align 8
  %is_decompressor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 3
  store i32 1, ptr %is_decompressor, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_memory_mgr(ptr noundef %20) #4
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 2
  store ptr null, ptr %progress, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 5
  store ptr null, ptr %src, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end18
  %storemerge = phi i32 [ 0, %if.end18 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp22 = icmp slt i32 %storemerge, 4
  br i1 %cmp22, label %for.body, label %for.cond25

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i64 0, i32 39, i64 %idxprom
  store ptr null, ptr %arrayidx24, align 8
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  br label %for.cond, !llvm.loop !6

for.cond25:                                       ; preds = %for.cond, %for.body28
  %storemerge1 = phi i32 [ %inc34, %for.body28 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp26 = icmp slt i32 %storemerge1, 4
  br i1 %cmp26, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond25
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 40, i64 %idxprom29
  store ptr null, ptr %arrayidx30, align 8
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i64 0, i32 41, i64 %idxprom31
  store ptr null, ptr %arrayidx32, align 8
  %26 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %26, 1
  br label %for.cond25, !llvm.loop !8

for.end35:                                        ; preds = %for.cond25
  %27 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_marker_reader(ptr noundef %27) #4
  call void @jinit_input_controller(ptr noundef %27) #4
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 4
  store i32 200, ptr %global_state, align 4
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare void @jinit_memory_mgr(ptr noundef) #3

declare void @jinit_marker_reader(ptr noundef) #3

declare void @jinit_input_controller(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define void @jpeg_destroy_decompress(ptr noundef %cinfo) #0 {
entry:
  call void @jpeg_destroy(ptr noundef %cinfo) #4
  ret void
}

declare void @jpeg_destroy(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define void @jpeg_abort_decompress(ptr noundef %cinfo) #0 {
entry:
  call void @jpeg_abort(ptr noundef %cinfo) #4
  ret void
}

declare void @jpeg_abort(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_marker_processor(ptr noundef %cinfo, i32 noundef %marker_code, ptr noundef %routine) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker_code.addr = alloca i32, align 4
  %routine.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %marker_code, ptr %marker_code.addr, align 4
  store ptr %routine, ptr %routine.addr, align 8
  %cmp = icmp eq i32 %marker_code, 254
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %routine.addr, align 8
  %1 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 78
  %2 = load ptr, ptr %marker, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %2, i64 0, i32 3
  store ptr %0, ptr %process_COM, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %marker_code.addr, align 4
  %cmp1 = icmp sgt i32 %3, 223
  %4 = load i32, ptr %marker_code.addr, align 4
  %cmp2 = icmp slt i32 %4, 240
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %routine.addr, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 78
  %7 = load ptr, ptr %marker4, align 8
  %8 = load i32, ptr %marker_code.addr, align 4
  %sub = add nsw i32 %8, -224
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.jpeg_marker_reader, ptr %7, i64 0, i32 4, i64 %idxprom
  store ptr %5, ptr %arrayidx, align 8
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %9 = load ptr, ptr %cinfo.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 67, ptr %msg_code, align 8
  %11 = load i32, ptr %marker_code.addr, align 4
  %12 = load ptr, ptr %9, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 6
  store i32 %11, ptr %msg_parm, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull %13) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.else5, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_read_header(ptr noundef %cinfo, i32 noundef %require_image) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %require_image.addr = alloca i32, align 4
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %require_image, ptr %require_image.addr, align 4
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp.not = icmp eq i32 %0, 200
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %global_state1, align 4
  %cmp2.not = icmp eq i32 %2, 201
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %global_state3, align 4
  %6 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %5, ptr %msg_parm, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @jpeg_consume_input(ptr noundef %10)
  store i32 %call, ptr %retcode, align 4
  switch i32 %call, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, ptr %retcode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %11 = load i32, ptr %require_image.addr, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %sw.bb6
  %12 = load ptr, ptr %cinfo.addr, align 8
  %13 = load ptr, ptr %12, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 50, ptr %msg_code9, align 8
  %14 = load ptr, ptr %12, align 8
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr noundef nonnull %12) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %sw.bb6
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_abort(ptr noundef %16) #4
  store i32 2, ptr %retcode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12, %sw.bb, %if.end
  %17 = load i32, ptr %retcode, align 4
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_consume_input(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 0, ptr %retcode, align 4
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  switch i32 %0, label %sw.default [
    i32 200, label %sw.bb
    i32 201, label %sw.bb2
    i32 202, label %sw.bb5
    i32 203, label %sw.bb6
    i32 204, label %sw.bb6
    i32 205, label %sw.bb6
    i32 206, label %sw.bb6
    i32 207, label %sw.bb6
    i32 208, label %sw.bb6
    i32 210, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 77
  %2 = load ptr, ptr %inputctl, align 8
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %reset_input_controller, align 8
  call void %3(ptr noundef %1) #4
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %src, align 8
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 2
  %5 = load ptr, ptr %init_source, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  call void %5(ptr noundef %6) #4
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i64 0, i32 4
  store i32 201, ptr %global_state1, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8
  %inputctl3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 77
  %8 = load ptr, ptr %inputctl3, align 8
  %9 = load ptr, ptr %8, align 8
  %call = call i32 %9(ptr noundef %7) #4
  store i32 %call, ptr %retcode, align 4
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  %10 = load ptr, ptr %cinfo.addr, align 8
  call void @default_decompress_parms(ptr noundef %10)
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 4
  store i32 202, ptr %global_state4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 1, ptr %retcode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %11 = load ptr, ptr %cinfo.addr, align 8
  %inputctl7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 77
  %12 = load ptr, ptr %inputctl7, align 8
  %13 = load ptr, ptr %12, align 8
  %call9 = call i32 %13(ptr noundef %11) #4
  store i32 %call9, ptr %retcode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %global_state10, align 4
  %17 = load ptr, ptr %14, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 6
  store i32 %16, ptr %msg_parm, align 4
  %18 = load ptr, ptr %cinfo.addr, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr noundef nonnull %18) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.then, %sw.default, %sw.bb6, %sw.bb5
  %21 = load i32, ptr %retcode, align 4
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define internal void @default_decompress_parms(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %cid0 = alloca i32, align 4
  %cid1 = alloca i32, align 4
  %cid2 = alloca i32, align 4
  %_mp = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 8
  %0 = load i32, ptr %num_components, align 8
  switch i32 %0, label %sw.default82 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb56
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 9
  store i32 1, ptr %jpeg_color_space, align 4
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 10
  store i32 1, ptr %out_color_space, align 8
  br label %sw.epilog85

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i64 0, i32 50
  %3 = load i32, ptr %saw_JFIF_marker, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb1
  %4 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i64 0, i32 9
  store i32 3, ptr %jpeg_color_space2, align 4
  br label %if.end54

if.else:                                          ; preds = %sw.bb1
  %5 = load ptr, ptr %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 54
  %6 = load i32, ptr %saw_Adobe_marker, align 8
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.else14, label %if.then4

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i64 0, i32 55
  %8 = load i8, ptr %Adobe_transform, align 4
  switch i8 %8, label %sw.default [
    i8 0, label %sw.bb5
    i8 1, label %sw.bb7
  ]

sw.bb5:                                           ; preds = %if.then4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i64 0, i32 9
  store i32 2, ptr %jpeg_color_space6, align 4
  br label %if.end54

sw.bb7:                                           ; preds = %if.then4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 9
  store i32 3, ptr %jpeg_color_space8, align 4
  br label %if.end54

sw.default:                                       ; preds = %if.then4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 110, ptr %msg_code, align 8
  %Adobe_transform9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i64 0, i32 55
  %13 = load i8, ptr %Adobe_transform9, align 4
  %conv10 = zext i8 %13 to i32
  %14 = load ptr, ptr %cinfo.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 %conv10, ptr %msg_parm, align 4
  %16 = load ptr, ptr %14, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %emit_message, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void %17(ptr noundef %18, i32 noundef -1) #4
  %jpeg_color_space13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 9
  store i32 3, ptr %jpeg_color_space13, align 4
  br label %if.end54

if.else14:                                        ; preds = %if.else
  %19 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i64 0, i32 43
  %20 = load ptr, ptr %comp_info, align 8
  %21 = load i32, ptr %20, align 8
  store i32 %21, ptr %cid0, align 4
  %arrayidx17 = getelementptr inbounds %struct.jpeg_component_info, ptr %20, i64 1
  %22 = load i32, ptr %arrayidx17, align 8
  store i32 %22, ptr %cid1, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %comp_info19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i64 0, i32 43
  %24 = load ptr, ptr %comp_info19, align 8
  %arrayidx20 = getelementptr inbounds %struct.jpeg_component_info, ptr %24, i64 2
  %25 = load i32, ptr %arrayidx20, align 8
  store i32 %25, ptr %cid2, align 4
  %26 = load i32, ptr %cid0, align 4
  %cmp = icmp eq i32 %26, 1
  %27 = load i32, ptr %cid1, align 4
  %cmp23 = icmp eq i32 %27, 2
  %or.cond = select i1 %cmp, i1 %cmp23, i1 false
  %28 = load i32, ptr %cid2, align 4
  %cmp26 = icmp eq i32 %28, 3
  %or.cond1 = select i1 %or.cond, i1 %cmp26, i1 false
  br i1 %or.cond1, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else14
  %29 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %29, i64 0, i32 9
  store i32 3, ptr %jpeg_color_space29, align 4
  br label %if.end54

if.else30:                                        ; preds = %if.else14
  %30 = load i32, ptr %cid0, align 4
  %cmp31 = icmp eq i32 %30, 82
  %31 = load i32, ptr %cid1, align 4
  %cmp34 = icmp eq i32 %31, 71
  %or.cond2 = select i1 %cmp31, i1 %cmp34, i1 false
  %32 = load i32, ptr %cid2, align 4
  %cmp37 = icmp eq i32 %32, 66
  %or.cond3 = select i1 %or.cond2, i1 %cmp37, i1 false
  br i1 %or.cond3, label %if.then39, label %do.body

if.then39:                                        ; preds = %if.else30
  %33 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 9
  store i32 2, ptr %jpeg_color_space40, align 4
  br label %if.end54

do.body:                                          ; preds = %if.else30
  %34 = load ptr, ptr %cinfo.addr, align 8
  %35 = load ptr, ptr %34, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 6
  store ptr %msg_parm43, ptr %_mp, align 8
  %36 = load i32, ptr %cid0, align 4
  store i32 %36, ptr %msg_parm43, align 4
  %37 = load i32, ptr %cid1, align 4
  %arrayidx45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 6, i32 0, i64 1
  store i32 %37, ptr %arrayidx45, align 4
  %38 = load i32, ptr %cid2, align 4
  %39 = load ptr, ptr %_mp, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %39, i64 2
  store i32 %38, ptr %arrayidx46, align 4
  %40 = load ptr, ptr %cinfo.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %msg_code48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %41, i64 0, i32 5
  store i32 107, ptr %msg_code48, align 8
  %42 = load ptr, ptr %40, align 8
  %emit_message50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 1
  %43 = load ptr, ptr %emit_message50, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  call void %43(ptr noundef %44, i32 noundef 1) #4
  %45 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %45, i64 0, i32 9
  store i32 3, ptr %jpeg_color_space51, align 4
  br label %if.end54

if.end54:                                         ; preds = %sw.default, %sw.bb7, %sw.bb5, %if.then39, %do.body, %if.then28, %if.then
  %46 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %46, i64 0, i32 10
  store i32 2, ptr %out_color_space55, align 8
  br label %sw.epilog85

sw.bb56:                                          ; preds = %entry
  %47 = load ptr, ptr %cinfo.addr, align 8
  %saw_Adobe_marker57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %47, i64 0, i32 54
  %48 = load i32, ptr %saw_Adobe_marker57, align 8
  %tobool58.not = icmp eq i32 %48, 0
  br i1 %tobool58.not, label %if.else78, label %if.then59

if.then59:                                        ; preds = %sw.bb56
  %49 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i64 0, i32 55
  %50 = load i8, ptr %Adobe_transform60, align 4
  switch i8 %50, label %sw.default66 [
    i8 0, label %sw.bb62
    i8 2, label %sw.bb64
  ]

sw.bb62:                                          ; preds = %if.then59
  %51 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i64 0, i32 9
  store i32 4, ptr %jpeg_color_space63, align 4
  br label %if.end80

sw.bb64:                                          ; preds = %if.then59
  %52 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %52, i64 0, i32 9
  store i32 5, ptr %jpeg_color_space65, align 4
  br label %if.end80

sw.default66:                                     ; preds = %if.then59
  %53 = load ptr, ptr %cinfo.addr, align 8
  %54 = load ptr, ptr %53, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 5
  store i32 110, ptr %msg_code68, align 8
  %Adobe_transform69 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %53, i64 0, i32 55
  %55 = load i8, ptr %Adobe_transform69, align 4
  %conv70 = zext i8 %55 to i32
  %56 = load ptr, ptr %cinfo.addr, align 8
  %57 = load ptr, ptr %56, align 8
  %msg_parm72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 6
  store i32 %conv70, ptr %msg_parm72, align 4
  %58 = load ptr, ptr %56, align 8
  %emit_message75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 1
  %59 = load ptr, ptr %emit_message75, align 8
  %60 = load ptr, ptr %cinfo.addr, align 8
  call void %59(ptr noundef %60, i32 noundef -1) #4
  %jpeg_color_space76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %60, i64 0, i32 9
  store i32 5, ptr %jpeg_color_space76, align 4
  br label %if.end80

if.else78:                                        ; preds = %sw.bb56
  %61 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i64 0, i32 9
  store i32 4, ptr %jpeg_color_space79, align 4
  br label %if.end80

if.end80:                                         ; preds = %sw.bb62, %sw.bb64, %sw.default66, %if.else78
  %62 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i64 0, i32 10
  store i32 4, ptr %out_color_space81, align 8
  br label %sw.epilog85

sw.default82:                                     ; preds = %entry
  %63 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space83 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i64 0, i32 9
  store i32 0, ptr %jpeg_color_space83, align 4
  %out_color_space84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i64 0, i32 10
  store i32 0, ptr %out_color_space84, align 8
  br label %sw.epilog85

sw.epilog85:                                      ; preds = %sw.default82, %if.end80, %if.end54, %sw.bb
  %64 = load ptr, ptr %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i64 0, i32 11
  store i32 1, ptr %scale_num, align 4
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i64 0, i32 12
  store i32 1, ptr %scale_denom, align 8
  %output_gamma = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %64, i64 0, i32 13
  store double 1.000000e+00, ptr %output_gamma, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i64 0, i32 14
  store i32 0, ptr %buffered_image, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i64 0, i32 15
  store i32 0, ptr %raw_data_out, align 4
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i64 0, i32 16
  store i32 0, ptr %dct_method, align 8
  %66 = load ptr, ptr %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i64 0, i32 17
  store i32 1, ptr %do_fancy_upsampling, align 4
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i64 0, i32 18
  store i32 1, ptr %do_block_smoothing, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %66, i64 0, i32 19
  store i32 0, ptr %quantize_colors, align 4
  %67 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i64 0, i32 20
  store i32 2, ptr %dither_mode, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i64 0, i32 21
  store i32 1, ptr %two_pass_quantize, align 4
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i64 0, i32 22
  store i32 256, ptr %desired_number_of_colors, align 8
  %68 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i64 0, i32 32
  store ptr null, ptr %colormap, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i64 0, i32 23
  store i32 0, ptr %enable_1pass_quant, align 4
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %68, i64 0, i32 24
  store i32 0, ptr %enable_external_quant, align 8
  %69 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i64 0, i32 25
  store i32 0, ptr %enable_2pass_quant, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_input_complete(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp sgt i32 %2, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %global_state3, align 4
  %6 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %5, ptr %msg_parm, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 77
  %11 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %11, i64 0, i32 5
  %12 = load i32, ptr %eoi_reached, align 4
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_has_multiple_scans(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp = icmp slt i32 %0, 202
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp sgt i32 %2, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %4, i64 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %global_state3, align 4
  %6 = load ptr, ptr %3, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %5, ptr %msg_parm, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr noundef nonnull %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i64 0, i32 77
  %11 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %11, i64 0, i32 4
  %12 = load i32, ptr %has_multiple_scans, align 8
  ret i32 %12
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_finish_decompress(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %cinfo, i64 0, i32 4
  %0 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %0, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %1, i64 0, i32 4
  %2 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp eq i32 %2, 206
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i64 0, i32 14
  %4 = load i32, ptr %buffered_image, align 8
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 33
  %6 = load i32, ptr %output_scanline, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %output_height, align 4
  %cmp3 = icmp ult i32 %6, %7
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 66, ptr %msg_code, align 8
  %10 = load ptr, ptr %8, align 8
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr noundef nonnull %8) #4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %12 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 73
  %13 = load ptr, ptr %master, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %finish_output_pass, align 8
  call void %14(ptr noundef %12) #4
  %global_state6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i64 0, i32 4
  store i32 210, ptr %global_state6, align 4
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load ptr, ptr %cinfo.addr, align 8
  %global_state7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i64 0, i32 4
  %16 = load i32, ptr %global_state7, align 4
  %cmp8 = icmp eq i32 %16, 207
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %17 = load ptr, ptr %cinfo.addr, align 8
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i64 0, i32 4
  store i32 210, ptr %global_state10, align 4
  br label %if.end23

if.else11:                                        ; preds = %if.else
  %18 = load ptr, ptr %cinfo.addr, align 8
  %global_state12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i64 0, i32 4
  %19 = load i32, ptr %global_state12, align 4
  %cmp13.not = icmp eq i32 %19, 210
  br i1 %cmp13.not, label %if.end23, label %if.then14

if.then14:                                        ; preds = %if.else11
  %20 = load ptr, ptr %cinfo.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 18, ptr %msg_code16, align 8
  %global_state17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %global_state17, align 4
  %23 = load ptr, ptr %20, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 6
  store i32 %22, ptr %msg_parm, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull %24) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then9, %if.then14, %if.else11, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %27 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i64 0, i32 77
  %28 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %28, i64 0, i32 5
  %29 = load i32, ptr %eoi_reached, align 4
  %tobool24.not = icmp eq i32 %29, 0
  br i1 %tobool24.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load ptr, ptr %cinfo.addr, align 8
  %inputctl25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i64 0, i32 77
  %31 = load ptr, ptr %inputctl25, align 8
  %32 = load ptr, ptr %31, align 8
  %call = call i32 %32(ptr noundef %30) #4
  %cmp26 = icmp eq i32 %call, 0
  br i1 %cmp26, label %return, label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %33 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %33, i64 0, i32 5
  %34 = load ptr, ptr %src, align 8
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, ptr %34, i64 0, i32 6
  %35 = load ptr, ptr %term_source, align 8
  call void %35(ptr noundef %33) #4
  call void @jpeg_abort(ptr noundef %33) #4
  br label %return

return:                                           ; preds = %while.body, %while.end
  %storemerge = phi i32 [ 1, %while.end ], [ 0, %while.body ]
  ret i32 %storemerge
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
