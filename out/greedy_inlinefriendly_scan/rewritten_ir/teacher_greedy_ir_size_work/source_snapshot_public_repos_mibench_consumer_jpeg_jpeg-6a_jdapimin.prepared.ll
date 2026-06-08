; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jdapimin.c'
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
  %err19 = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %version, ptr %version.addr, align 4
  store i64 %structsize, ptr %structsize.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  store ptr null, ptr %mem, align 8
  %1 = load i32, ptr %version.addr, align 4
  %cmp = icmp ne i32 %1, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 10, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 61, ptr %arrayidx, align 4
  %6 = load i32, ptr %version.addr, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err2, align 8
  %msg_parm3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %msg_parm3, i64 0, i64 1
  store i32 %6, ptr %arrayidx4, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, ptr %structsize.addr, align 8
  %cmp6 = icmp ne i64 %13, 616
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5
  store i32 19, ptr %msg_code9, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err10, align 8
  %msg_parm11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [8 x i32], ptr %msg_parm11, i64 0, i64 0
  store i32 616, ptr %arrayidx12, align 4
  %18 = load i64, ptr %structsize.addr, align 8
  %conv = trunc i64 %18 to i32
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err13, align 8
  %msg_parm14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %msg_parm14, i64 0, i64 1
  store i32 %conv, ptr %arrayidx15, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err16, align 8
  %error_exit17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %error_exit17, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %if.end
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err20, align 8
  store ptr %26, ptr %err19, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %27, i32 noundef 0, i64 noundef 616, i64 noundef %29) #4
  %30 = load ptr, ptr %err19, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0
  store ptr %30, ptr %err21, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %is_decompressor = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 3
  store i32 1, ptr %is_decompressor, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_memory_mgr(ptr noundef %33)
  %34 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 2
  store ptr null, ptr %progress, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 5
  store ptr null, ptr %src, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %36 = load i32, ptr %i, align 4
  %cmp22 = icmp slt i32 %36, 4
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 39
  %38 = load i32, ptr %i, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end
  %40 = load i32, ptr %i, align 4
  %cmp26 = icmp slt i32 %40, 4
  br i1 %cmp26, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond25
  %41 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 40
  %42 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom29
  store ptr null, ptr %arrayidx30, align 8
  %43 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 41
  %44 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %44 to i64
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom31
  store ptr null, ptr %arrayidx32, align 8
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %45 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %45, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond25, !llvm.loop !8

for.end35:                                        ; preds = %for.cond25
  %46 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_marker_reader(ptr noundef %46)
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_input_controller(ptr noundef %47)
  %48 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 4
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
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_destroy(ptr noundef %0)
  ret void
}

declare void @jpeg_destroy(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define void @jpeg_abort_decompress(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_abort(ptr noundef %0)
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
  %0 = load i32, ptr %marker_code.addr, align 4
  %cmp = icmp eq i32 %0, 254
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %routine.addr, align 8
  %2 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 78
  %3 = load ptr, ptr %marker, align 8
  %process_COM = getelementptr inbounds %struct.jpeg_marker_reader, ptr %3, i32 0, i32 3
  store ptr %1, ptr %process_COM, align 8
  br label %if.end9

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %marker_code.addr, align 4
  %cmp1 = icmp sge i32 %4, 224
  br i1 %cmp1, label %land.lhs.true, label %if.else5

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, ptr %marker_code.addr, align 4
  %cmp2 = icmp sle i32 %5, 239
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %routine.addr, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %marker4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 78
  %8 = load ptr, ptr %marker4, align 8
  %process_APPn = getelementptr inbounds %struct.jpeg_marker_reader, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %marker_code.addr, align 4
  %sub = sub nsw i32 %9, 224
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr %process_APPn, i64 0, i64 %idxprom
  store ptr %6, ptr %arrayidx, align 8
  br label %if.end

if.else5:                                         ; preds = %land.lhs.true, %if.else
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 67, ptr %msg_code, align 8
  %12 = load i32, ptr %marker_code.addr, align 4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err6, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %12, ptr %arrayidx7, align 4
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %error_exit, align 8
  %18 = load ptr, ptr %cinfo.addr, align 8
  call void %17(ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 200
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp ne i32 %3, 201
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state3, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdapimin_0(ptr noundef %14)
  store i32 %call, ptr %retcode, align 4
  %15 = load i32, ptr %retcode, align 4
  switch i32 %15, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 0, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, ptr %retcode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %16 = load i32, ptr %require_image.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then7, label %if.end12

if.then7:                                         ; preds = %sw.bb6
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 5
  store i32 50, ptr %msg_code9, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err10, align 8
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %error_exit11, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void %21(ptr noundef %22)
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %sw.bb6
  %23 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_abort(ptr noundef %23)
  store i32 2, ptr %retcode, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb13, %if.end12, %sw.bb
  %24 = load i32, ptr %retcode, align 4
  ret i32 %24
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_consume_input(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 0, ptr %retcode, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  switch i32 %1, label %sw.default [
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
  %2 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 77
  %3 = load ptr, ptr %inputctl, align 8
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %reset_input_controller, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %src, align 8
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %init_source, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 4
  store i32 201, ptr %global_state1, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %11 = load ptr, ptr %cinfo.addr, align 8
  %inputctl3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 77
  %12 = load ptr, ptr %inputctl3, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %consume_input, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %13(ptr noundef %14)
  store i32 %call, ptr %retcode, align 4
  %15 = load i32, ptr %retcode, align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void @default_decompress_parms(ptr noundef %16)
  %17 = load ptr, ptr %cinfo.addr, align 8
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 4
  store i32 202, ptr %global_state4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 1, ptr %retcode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %18 = load ptr, ptr %cinfo.addr, align 8
  %inputctl7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 77
  %19 = load ptr, ptr %inputctl7, align 8
  %consume_input8 = getelementptr inbounds %struct.jpeg_input_controller, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %consume_input8, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call9 = call i32 %20(ptr noundef %21)
  store i32 %call9, ptr %retcode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %global_state10, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err11, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %25, ptr %arrayidx, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err12, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %error_exit, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void %30(ptr noundef %31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %if.end
  %32 = load i32, ptr %retcode, align 4
  ret i32 %32
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
  %0 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %num_components, align 8
  switch i32 %1, label %sw.default82 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb56
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 9
  store i32 1, ptr %jpeg_color_space, align 4
  %3 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 10
  store i32 1, ptr %out_color_space, align 8
  br label %sw.epilog85

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %saw_JFIF_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 50
  %5 = load i32, ptr %saw_JFIF_marker, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb1
  %6 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 9
  store i32 3, ptr %jpeg_color_space2, align 4
  br label %if.end54

if.else:                                          ; preds = %sw.bb1
  %7 = load ptr, ptr %cinfo.addr, align 8
  %saw_Adobe_marker = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 54
  %8 = load i32, ptr %saw_Adobe_marker, align 8
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then4, label %if.else14

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 55
  %10 = load i8, ptr %Adobe_transform, align 4
  %conv = zext i8 %10 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb7
  ]

sw.bb5:                                           ; preds = %if.then4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 9
  store i32 2, ptr %jpeg_color_space6, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 9
  store i32 3, ptr %jpeg_color_space8, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5
  store i32 110, ptr %msg_code, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 55
  %16 = load i8, ptr %Adobe_transform9, align 4
  %conv10 = zext i8 %16 to i32
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err11, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %conv10, ptr %arrayidx, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err12, align 8
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %emit_message, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void %21(ptr noundef %22, i32 noundef -1)
  %23 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 9
  store i32 3, ptr %jpeg_color_space13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5
  br label %if.end53

if.else14:                                        ; preds = %if.else
  %24 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 43
  %25 = load ptr, ptr %comp_info, align 8
  %arrayidx15 = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i64 0
  %component_id = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx15, i32 0, i32 0
  %26 = load i32, ptr %component_id, align 8
  store i32 %26, ptr %cid0, align 4
  %27 = load ptr, ptr %cinfo.addr, align 8
  %comp_info16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 43
  %28 = load ptr, ptr %comp_info16, align 8
  %arrayidx17 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1
  %component_id18 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx17, i32 0, i32 0
  %29 = load i32, ptr %component_id18, align 8
  store i32 %29, ptr %cid1, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %comp_info19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 43
  %31 = load ptr, ptr %comp_info19, align 8
  %arrayidx20 = getelementptr inbounds %struct.jpeg_component_info, ptr %31, i64 2
  %component_id21 = getelementptr inbounds %struct.jpeg_component_info, ptr %arrayidx20, i32 0, i32 0
  %32 = load i32, ptr %component_id21, align 8
  store i32 %32, ptr %cid2, align 4
  %33 = load i32, ptr %cid0, align 4
  %cmp = icmp eq i32 %33, 1
  br i1 %cmp, label %land.lhs.true, label %if.else30

land.lhs.true:                                    ; preds = %if.else14
  %34 = load i32, ptr %cid1, align 4
  %cmp23 = icmp eq i32 %34, 2
  br i1 %cmp23, label %land.lhs.true25, label %if.else30

land.lhs.true25:                                  ; preds = %land.lhs.true
  %35 = load i32, ptr %cid2, align 4
  %cmp26 = icmp eq i32 %35, 3
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %land.lhs.true25
  %36 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 9
  store i32 3, ptr %jpeg_color_space29, align 4
  br label %if.end52

if.else30:                                        ; preds = %land.lhs.true25, %land.lhs.true, %if.else14
  %37 = load i32, ptr %cid0, align 4
  %cmp31 = icmp eq i32 %37, 82
  br i1 %cmp31, label %land.lhs.true33, label %if.else41

land.lhs.true33:                                  ; preds = %if.else30
  %38 = load i32, ptr %cid1, align 4
  %cmp34 = icmp eq i32 %38, 71
  br i1 %cmp34, label %land.lhs.true36, label %if.else41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %39 = load i32, ptr %cid2, align 4
  %cmp37 = icmp eq i32 %39, 66
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %land.lhs.true36
  %40 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 9
  store i32 2, ptr %jpeg_color_space40, align 4
  br label %if.end

if.else41:                                        ; preds = %land.lhs.true36, %land.lhs.true33, %if.else30
  br label %do.body

do.body:                                          ; preds = %if.else41
  %41 = load ptr, ptr %cinfo.addr, align 8
  %err42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %err42, align 8
  %msg_parm43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i32 0, i32 6
  %arraydecay = getelementptr inbounds [8 x i32], ptr %msg_parm43, i64 0, i64 0
  store ptr %arraydecay, ptr %_mp, align 8
  %43 = load i32, ptr %cid0, align 4
  %44 = load ptr, ptr %_mp, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %44, i64 0
  store i32 %43, ptr %arrayidx44, align 4
  %45 = load i32, ptr %cid1, align 4
  %46 = load ptr, ptr %_mp, align 8
  %arrayidx45 = getelementptr inbounds i32, ptr %46, i64 1
  store i32 %45, ptr %arrayidx45, align 4
  %47 = load i32, ptr %cid2, align 4
  %48 = load ptr, ptr %_mp, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %48, i64 2
  store i32 %47, ptr %arrayidx46, align 4
  %49 = load ptr, ptr %cinfo.addr, align 8
  %err47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %err47, align 8
  %msg_code48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i32 0, i32 5
  store i32 107, ptr %msg_code48, align 8
  %51 = load ptr, ptr %cinfo.addr, align 8
  %err49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %err49, align 8
  %emit_message50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %emit_message50, align 8
  %54 = load ptr, ptr %cinfo.addr, align 8
  call void %53(ptr noundef %54, i32 noundef 1)
  br label %do.end

do.end:                                           ; preds = %do.body
  %55 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 9
  store i32 3, ptr %jpeg_color_space51, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then39
  br label %if.end52

if.end52:                                         ; preds = %if.end, %if.then28
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %sw.epilog
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then
  %56 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 10
  store i32 2, ptr %out_color_space55, align 8
  br label %sw.epilog85

sw.bb56:                                          ; preds = %entry
  %57 = load ptr, ptr %cinfo.addr, align 8
  %saw_Adobe_marker57 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 54
  %58 = load i32, ptr %saw_Adobe_marker57, align 8
  %tobool58 = icmp ne i32 %58, 0
  br i1 %tobool58, label %if.then59, label %if.else78

if.then59:                                        ; preds = %sw.bb56
  %59 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 55
  %60 = load i8, ptr %Adobe_transform60, align 4
  %conv61 = zext i8 %60 to i32
  switch i32 %conv61, label %sw.default66 [
    i32 0, label %sw.bb62
    i32 2, label %sw.bb64
  ]

sw.bb62:                                          ; preds = %if.then59
  %61 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 9
  store i32 4, ptr %jpeg_color_space63, align 4
  br label %sw.epilog77

sw.bb64:                                          ; preds = %if.then59
  %62 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 9
  store i32 5, ptr %jpeg_color_space65, align 4
  br label %sw.epilog77

sw.default66:                                     ; preds = %if.then59
  %63 = load ptr, ptr %cinfo.addr, align 8
  %err67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %err67, align 8
  %msg_code68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %64, i32 0, i32 5
  store i32 110, ptr %msg_code68, align 8
  %65 = load ptr, ptr %cinfo.addr, align 8
  %Adobe_transform69 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 55
  %66 = load i8, ptr %Adobe_transform69, align 4
  %conv70 = zext i8 %66 to i32
  %67 = load ptr, ptr %cinfo.addr, align 8
  %err71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %err71, align 8
  %msg_parm72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i32 0, i32 6
  %arrayidx73 = getelementptr inbounds [8 x i32], ptr %msg_parm72, i64 0, i64 0
  store i32 %conv70, ptr %arrayidx73, align 4
  %69 = load ptr, ptr %cinfo.addr, align 8
  %err74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %err74, align 8
  %emit_message75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %emit_message75, align 8
  %72 = load ptr, ptr %cinfo.addr, align 8
  call void %71(ptr noundef %72, i32 noundef -1)
  %73 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space76 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 9
  store i32 5, ptr %jpeg_color_space76, align 4
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %sw.default66, %sw.bb64, %sw.bb62
  br label %if.end80

if.else78:                                        ; preds = %sw.bb56
  %74 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %74, i32 0, i32 9
  store i32 4, ptr %jpeg_color_space79, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %sw.epilog77
  %75 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 10
  store i32 4, ptr %out_color_space81, align 8
  br label %sw.epilog85

sw.default82:                                     ; preds = %entry
  %76 = load ptr, ptr %cinfo.addr, align 8
  %jpeg_color_space83 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 9
  store i32 0, ptr %jpeg_color_space83, align 4
  %77 = load ptr, ptr %cinfo.addr, align 8
  %out_color_space84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 10
  store i32 0, ptr %out_color_space84, align 8
  br label %sw.epilog85

sw.epilog85:                                      ; preds = %sw.default82, %if.end80, %if.end54, %sw.bb
  %78 = load ptr, ptr %cinfo.addr, align 8
  %scale_num = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %78, i32 0, i32 11
  store i32 1, ptr %scale_num, align 4
  %79 = load ptr, ptr %cinfo.addr, align 8
  %scale_denom = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 12
  store i32 1, ptr %scale_denom, align 8
  %80 = load ptr, ptr %cinfo.addr, align 8
  %output_gamma = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 13
  store double 1.000000e+00, ptr %output_gamma, align 8
  %81 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 14
  store i32 0, ptr %buffered_image, align 8
  %82 = load ptr, ptr %cinfo.addr, align 8
  %raw_data_out = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %82, i32 0, i32 15
  store i32 0, ptr %raw_data_out, align 4
  %83 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 16
  store i32 0, ptr %dct_method, align 8
  %84 = load ptr, ptr %cinfo.addr, align 8
  %do_fancy_upsampling = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 17
  store i32 1, ptr %do_fancy_upsampling, align 4
  %85 = load ptr, ptr %cinfo.addr, align 8
  %do_block_smoothing = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 18
  store i32 1, ptr %do_block_smoothing, align 8
  %86 = load ptr, ptr %cinfo.addr, align 8
  %quantize_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 19
  store i32 0, ptr %quantize_colors, align 4
  %87 = load ptr, ptr %cinfo.addr, align 8
  %dither_mode = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 20
  store i32 2, ptr %dither_mode, align 8
  %88 = load ptr, ptr %cinfo.addr, align 8
  %two_pass_quantize = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 21
  store i32 1, ptr %two_pass_quantize, align 4
  %89 = load ptr, ptr %cinfo.addr, align 8
  %desired_number_of_colors = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 22
  store i32 256, ptr %desired_number_of_colors, align 8
  %90 = load ptr, ptr %cinfo.addr, align 8
  %colormap = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 32
  store ptr null, ptr %colormap, align 8
  %91 = load ptr, ptr %cinfo.addr, align 8
  %enable_1pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 23
  store i32 0, ptr %enable_1pass_quant, align 4
  %92 = load ptr, ptr %cinfo.addr, align 8
  %enable_external_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 24
  store i32 0, ptr %enable_external_quant, align 8
  %93 = load ptr, ptr %cinfo.addr, align 8
  %enable_2pass_quant = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 25
  store i32 0, ptr %enable_2pass_quant, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_input_complete(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp slt i32 %1, 200
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp sgt i32 %3, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state3, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 77
  %15 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %eoi_reached, align 4
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_has_multiple_scans(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp slt i32 %1, 202
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp sgt i32 %3, 210
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state3, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err4, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %7, ptr %arrayidx, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 77
  %15 = load ptr, ptr %inputctl, align 8
  %has_multiple_scans = getelementptr inbounds %struct.jpeg_input_controller, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %has_multiple_scans, align 8
  ret i32 %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_finish_decompress(ptr noundef %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %1, 205
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp eq i32 %3, 206
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %buffered_image = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 14
  %5 = load i32, ptr %buffered_image, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %cinfo.addr, align 8
  %output_scanline = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 33
  %7 = load i32, ptr %output_scanline, align 8
  %8 = load ptr, ptr %cinfo.addr, align 8
  %output_height = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 27
  %9 = load i32, ptr %output_height, align 4
  %cmp3 = icmp ult i32 %7, %9
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5
  store i32 66, ptr %msg_code, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %error_exit, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %16 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 73
  %17 = load ptr, ptr %master, align 8
  %finish_output_pass = getelementptr inbounds %struct.jpeg_decomp_master, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %finish_output_pass, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void %18(ptr noundef %19)
  %20 = load ptr, ptr %cinfo.addr, align 8
  %global_state6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 4
  store i32 210, ptr %global_state6, align 4
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %21 = load ptr, ptr %cinfo.addr, align 8
  %global_state7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %global_state7, align 4
  %cmp8 = icmp eq i32 %22, 207
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %23 = load ptr, ptr %cinfo.addr, align 8
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 4
  store i32 210, ptr %global_state10, align 4
  br label %if.end22

if.else11:                                        ; preds = %if.else
  %24 = load ptr, ptr %cinfo.addr, align 8
  %global_state12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %global_state12, align 4
  %cmp13 = icmp ne i32 %25, 210
  br i1 %cmp13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.else11
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err15, align 8
  %msg_code16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 5
  store i32 18, ptr %msg_code16, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %global_state17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %global_state17, align 4
  %30 = load ptr, ptr %cinfo.addr, align 8
  %err18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %err18, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %29, ptr %arrayidx, align 4
  %32 = load ptr, ptr %cinfo.addr, align 8
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %err19, align 8
  %error_exit20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %error_exit20, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  call void %34(ptr noundef %35)
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.else11
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end23
  %36 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 77
  %37 = load ptr, ptr %inputctl, align 8
  %eoi_reached = getelementptr inbounds %struct.jpeg_input_controller, ptr %37, i32 0, i32 5
  %38 = load i32, ptr %eoi_reached, align 4
  %tobool24 = icmp ne i32 %38, 0
  %lnot = xor i1 %tobool24, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %cinfo.addr, align 8
  %inputctl25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 77
  %40 = load ptr, ptr %inputctl25, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %consume_input, align 8
  %42 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %41(ptr noundef %42)
  %cmp26 = icmp eq i32 %call, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %43 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %src, align 8
  %term_source = getelementptr inbounds %struct.jpeg_source_mgr, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %term_source, align 8
  %46 = load ptr, ptr %cinfo.addr, align 8
  call void %45(ptr noundef %46)
  %47 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_abort(ptr noundef %47)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then27
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_jpeg_jpeg_6a_jdapimin_0(ptr noundef %cinfo)  alwaysinline#0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %retcode = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 0, ptr %retcode, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  switch i32 %1, label %sw.default [
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
  %2 = load ptr, ptr %cinfo.addr, align 8
  %inputctl = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 77
  %3 = load ptr, ptr %inputctl, align 8
  %reset_input_controller = getelementptr inbounds %struct.jpeg_input_controller, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %reset_input_controller, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  call void %4(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %src, align 8
  %init_source = getelementptr inbounds %struct.jpeg_source_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %init_source, align 8
  %9 = load ptr, ptr %cinfo.addr, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 4
  store i32 201, ptr %global_state1, align 4
  br label %sw.bb2

sw.bb2:                                           ; preds = %entry, %sw.bb
  %11 = load ptr, ptr %cinfo.addr, align 8
  %inputctl3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 77
  %12 = load ptr, ptr %inputctl3, align 8
  %consume_input = getelementptr inbounds %struct.jpeg_input_controller, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %consume_input, align 8
  %14 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %13(ptr noundef %14)
  store i32 %call, ptr %retcode, align 4
  %15 = load i32, ptr %retcode, align 4
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void @default_decompress_parms(ptr noundef %16)
  %17 = load ptr, ptr %cinfo.addr, align 8
  %global_state4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 4
  store i32 202, ptr %global_state4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i32 1, ptr %retcode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %18 = load ptr, ptr %cinfo.addr, align 8
  %inputctl7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 77
  %19 = load ptr, ptr %inputctl7, align 8
  %consume_input8 = getelementptr inbounds %struct.jpeg_input_controller, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %consume_input8, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %call9 = call i32 %20(ptr noundef %21)
  store i32 %call9, ptr %retcode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %22 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  %global_state10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %global_state10, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err11, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %25, ptr %arrayidx, align 4
  %28 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %err12, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %error_exit, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  call void %30(ptr noundef %31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %if.end
  %32 = load i32, ptr %retcode, align 4
  ret i32 %32
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
