; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcapimin.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jcapimin.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_CreateCompress(ptr noundef %cinfo, i32 noundef %version, i64 noundef %structsize) #0 {
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
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  store ptr null, ptr %mem, align 8
  %1 = load i32, ptr %version.addr, align 4
  %cmp = icmp ne i32 %1, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 10, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %err1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %err1, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 61, ptr %arrayidx, align 4
  %6 = load i32, ptr %version.addr, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %err2, align 8
  %msg_parm3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i32 0, i32 6
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %msg_parm3, i64 0, i64 1
  store i32 %6, ptr %arrayidx4, align 4
  %9 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %error_exit, align 8
  %12 = load ptr, ptr %cinfo.addr, align 8
  call void %11(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64, ptr %structsize.addr, align 8
  %cmp6 = icmp ne i64 %13, 496
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err8, align 8
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5
  store i32 19, ptr %msg_code9, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %err10, align 8
  %msg_parm11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [8 x i32], ptr %msg_parm11, i64 0, i64 0
  store i32 496, ptr %arrayidx12, align 4
  %18 = load i64, ptr %structsize.addr, align 8
  %conv = trunc i64 %18 to i32
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err13, align 8
  %msg_parm14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %msg_parm14, i64 0, i64 1
  store i32 %conv, ptr %arrayidx15, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err16, align 8
  %error_exit17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %error_exit17, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %if.end
  %25 = load ptr, ptr %cinfo.addr, align 8
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %err20, align 8
  store ptr %26, ptr %err19, align 8
  %27 = load ptr, ptr %cinfo.addr, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %27, i32 noundef 0, i64 noundef 496, i64 noundef %29) #4
  %30 = load ptr, ptr %err19, align 8
  %31 = load ptr, ptr %cinfo.addr, align 8
  %err21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0
  store ptr %30, ptr %err21, align 8
  %32 = load ptr, ptr %cinfo.addr, align 8
  %is_decompressor = getelementptr inbounds %struct.jpeg_compress_struct, ptr %32, i32 0, i32 3
  store i32 0, ptr %is_decompressor, align 8
  %33 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_memory_mgr(ptr noundef %33)
  %34 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %34, i32 0, i32 2
  store ptr null, ptr %progress, align 8
  %35 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %35, i32 0, i32 5
  store ptr null, ptr %dest, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i32 0, i32 14
  store ptr null, ptr %comp_info, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %37 = load i32, ptr %i, align 4
  %cmp22 = icmp slt i32 %37, 4
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i32 0, i32 15
  %39 = load i32, ptr %i, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx24 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %for.end
  %41 = load i32, ptr %i, align 4
  %cmp26 = icmp slt i32 %41, 4
  br i1 %cmp26, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond25
  %42 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %42, i32 0, i32 16
  %43 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %43 to i64
  %arrayidx30 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom29
  store ptr null, ptr %arrayidx30, align 8
  %44 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %44, i32 0, i32 17
  %45 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom31
  store ptr null, ptr %arrayidx32, align 8
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %46 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %46, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond25, !llvm.loop !8

for.end35:                                        ; preds = %for.cond25
  %47 = load ptr, ptr %cinfo.addr, align 8
  %input_gamma = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 10
  store double 1.000000e+00, ptr %input_gamma, align 8
  %48 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %48, i32 0, i32 4
  store i32 100, ptr %global_state, align 4
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare void @jinit_memory_mgr(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_destroy_compress(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_destroy(ptr noundef %0)
  ret void
}

declare void @jpeg_destroy(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_abort_compress(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_abort(ptr noundef %0)
  ret void
}

declare void @jpeg_abort(ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_suppress_tables(ptr noundef %cinfo, i32 noundef %suppress) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %suppress.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %qtbl = alloca ptr, align 8
  %htbl = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %suppress, ptr %suppress.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i32 0, i32 15
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %qtbl, align 8
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %suppress.addr, align 4
  %5 = load ptr, ptr %qtbl, align 8
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, ptr %5, i32 0, i32 1
  store i32 %4, ptr %sent_table, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %7, 4
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  %8 = load ptr, ptr %cinfo.addr, align 8
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [4 x ptr], ptr %dc_huff_tbl_ptrs, i64 0, i64 %idxprom5
  %10 = load ptr, ptr %arrayidx6, align 8
  store ptr %10, ptr %htbl, align 8
  %cmp7 = icmp ne ptr %10, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.body4
  %11 = load i32, ptr %suppress.addr, align 4
  %12 = load ptr, ptr %htbl, align 8
  %sent_table9 = getelementptr inbounds %struct.JHUFF_TBL, ptr %12, i32 0, i32 2
  store i32 %11, ptr %sent_table9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.body4
  %13 = load ptr, ptr %cinfo.addr, align 8
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %13, i32 0, i32 17
  %14 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %ac_huff_tbl_ptrs, i64 0, i64 %idxprom11
  %15 = load ptr, ptr %arrayidx12, align 8
  store ptr %15, ptr %htbl, align 8
  %cmp13 = icmp ne ptr %15, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %16 = load i32, ptr %suppress.addr, align 4
  %17 = load ptr, ptr %htbl, align 8
  %sent_table15 = getelementptr inbounds %struct.JHUFF_TBL, ptr %17, i32 0, i32 2
  store i32 %16, ptr %sent_table15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %18 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond2, !llvm.loop !10

for.end19:                                        ; preds = %for.cond2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_finish_compress(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %iMCU_row = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp eq i32 %1, 101
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state1, align 4
  %cmp2 = icmp eq i32 %3, 102
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 36
  %5 = load i32, ptr %next_scanline, align 8
  %6 = load ptr, ptr %cinfo.addr, align 8
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %image_height, align 4
  %cmp3 = icmp ult i32 %5, %7
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 66, ptr %msg_code, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %err5, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %error_exit, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  call void %12(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %14 = load ptr, ptr %cinfo.addr, align 8
  %master = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 51
  %15 = load ptr, ptr %master, align 8
  %finish_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %finish_pass, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void %16(ptr noundef %17)
  br label %if.end16

if.else:                                          ; preds = %lor.lhs.false
  %18 = load ptr, ptr %cinfo.addr, align 8
  %global_state6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %global_state6, align 4
  %cmp7 = icmp ne i32 %19, 103
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.else
  %20 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %err9, align 8
  %msg_code10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i32 0, i32 5
  store i32 18, ptr %msg_code10, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  %global_state11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %global_state11, align 4
  %24 = load ptr, ptr %cinfo.addr, align 8
  %err12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %err12, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %23, ptr %arrayidx, align 4
  %26 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %err13, align 8
  %error_exit14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %error_exit14, align 8
  %29 = load ptr, ptr %cinfo.addr, align 8
  call void %28(ptr noundef %29)
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end16
  %30 = load ptr, ptr %cinfo.addr, align 8
  %master17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %30, i32 0, i32 51
  %31 = load ptr, ptr %master17, align 8
  %is_last_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %is_last_pass, align 4
  %tobool = icmp ne i32 %32, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load ptr, ptr %cinfo.addr, align 8
  %master18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %33, i32 0, i32 51
  %34 = load ptr, ptr %master18, align 8
  %prepare_for_pass = getelementptr inbounds %struct.jpeg_comp_master, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %prepare_for_pass, align 8
  %36 = load ptr, ptr %cinfo.addr, align 8
  call void %35(ptr noundef %36)
  store i32 0, ptr %iMCU_row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %37 = load i32, ptr %iMCU_row, align 4
  %38 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows = getelementptr inbounds %struct.jpeg_compress_struct, ptr %38, i32 0, i32 40
  %39 = load i32, ptr %total_iMCU_rows, align 8
  %cmp19 = icmp ult i32 %37, %39
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load ptr, ptr %cinfo.addr, align 8
  %progress = getelementptr inbounds %struct.jpeg_compress_struct, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %progress, align 8
  %cmp20 = icmp ne ptr %41, null
  br i1 %cmp20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %for.body
  %42 = load i32, ptr %iMCU_row, align 4
  %conv = zext i32 %42 to i64
  %43 = load ptr, ptr %cinfo.addr, align 8
  %progress22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %progress22, align 8
  %pass_counter = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %44, i32 0, i32 1
  store i64 %conv, ptr %pass_counter, align 8
  %45 = load ptr, ptr %cinfo.addr, align 8
  %total_iMCU_rows23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %45, i32 0, i32 40
  %46 = load i32, ptr %total_iMCU_rows23, align 8
  %conv24 = zext i32 %46 to i64
  %47 = load ptr, ptr %cinfo.addr, align 8
  %progress25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %progress25, align 8
  %pass_limit = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %48, i32 0, i32 2
  store i64 %conv24, ptr %pass_limit, align 8
  %49 = load ptr, ptr %cinfo.addr, align 8
  %progress26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %progress26, align 8
  %progress_monitor = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %progress_monitor, align 8
  %52 = load ptr, ptr %cinfo.addr, align 8
  call void %51(ptr noundef %52)
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %for.body
  %53 = load ptr, ptr %cinfo.addr, align 8
  %coef = getelementptr inbounds %struct.jpeg_compress_struct, ptr %53, i32 0, i32 54
  %54 = load ptr, ptr %coef, align 8
  %compress_data = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %compress_data, align 8
  %56 = load ptr, ptr %cinfo.addr, align 8
  %call = call i32 %55(ptr noundef %56, ptr noundef null)
  %tobool28 = icmp ne i32 %call, 0
  br i1 %tobool28, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end27
  %57 = load ptr, ptr %cinfo.addr, align 8
  %err30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %err30, align 8
  %msg_code31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i32 0, i32 5
  store i32 22, ptr %msg_code31, align 8
  %59 = load ptr, ptr %cinfo.addr, align 8
  %err32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %err32, align 8
  %error_exit33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %error_exit33, align 8
  %62 = load ptr, ptr %cinfo.addr, align 8
  call void %61(ptr noundef %62)
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %63 = load i32, ptr %iMCU_row, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %iMCU_row, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %64 = load ptr, ptr %cinfo.addr, align 8
  %master35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %64, i32 0, i32 51
  %65 = load ptr, ptr %master35, align 8
  %finish_pass36 = getelementptr inbounds %struct.jpeg_comp_master, ptr %65, i32 0, i32 2
  %66 = load ptr, ptr %finish_pass36, align 8
  %67 = load ptr, ptr %cinfo.addr, align 8
  call void %66(ptr noundef %67)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %68 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %68, i32 0, i32 55
  %69 = load ptr, ptr %marker, align 8
  %write_file_trailer = getelementptr inbounds %struct.jpeg_marker_writer, ptr %69, i32 0, i32 4
  %70 = load ptr, ptr %write_file_trailer, align 8
  %71 = load ptr, ptr %cinfo.addr, align 8
  call void %70(ptr noundef %71)
  %72 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %72, i32 0, i32 5
  %73 = load ptr, ptr %dest, align 8
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %73, i32 0, i32 4
  %74 = load ptr, ptr %term_destination, align 8
  %75 = load ptr, ptr %cinfo.addr, align 8
  call void %74(ptr noundef %75)
  %76 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_abort(ptr noundef %76)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_write_marker(ptr noundef %cinfo, i32 noundef %marker, ptr noundef %dataptr, i32 noundef %datalen) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %marker.addr = alloca i32, align 4
  %dataptr.addr = alloca ptr, align 8
  %datalen.addr = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store i32 %marker, ptr %marker.addr, align 4
  store ptr %dataptr, ptr %dataptr.addr, align 8
  store i32 %datalen, ptr %datalen.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 36
  %1 = load i32, ptr %next_scanline, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %global_state, align 4
  %cmp1 = icmp ne i32 %3, 101
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state2, align 4
  %cmp3 = icmp ne i32 %5, 102
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %cinfo.addr, align 8
  %global_state5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %global_state5, align 4
  %cmp6 = icmp ne i32 %7, 103
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4, %entry
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %10 = load ptr, ptr %cinfo.addr, align 8
  %global_state7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %global_state7, align 4
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err8, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %11, ptr %arrayidx, align 4
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err9, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %error_exit, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  call void %16(ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %lor.lhs.false
  %18 = load ptr, ptr %cinfo.addr, align 8
  %marker10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %18, i32 0, i32 55
  %19 = load ptr, ptr %marker10, align 8
  %write_any_marker = getelementptr inbounds %struct.jpeg_marker_writer, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %write_any_marker, align 8
  %21 = load ptr, ptr %cinfo.addr, align 8
  %22 = load i32, ptr %marker.addr, align 4
  %23 = load ptr, ptr %dataptr.addr, align 8
  %24 = load i32, ptr %datalen.addr, align 4
  call void %20(ptr noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jpeg_write_tables(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %global_state, align 4
  %cmp = icmp ne i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i32 0, i32 5
  store i32 18, ptr %msg_code, align 8
  %4 = load ptr, ptr %cinfo.addr, align 8
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %global_state1, align 4
  %6 = load ptr, ptr %cinfo.addr, align 8
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %err2, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4
  %8 = load ptr, ptr %cinfo.addr, align 8
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %err3, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %error_exit, align 8
  %11 = load ptr, ptr %cinfo.addr, align 8
  call void %10(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %cinfo.addr, align 8
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %err4, align 8
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %reset_error_mgr, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  call void %14(ptr noundef %15)
  %16 = load ptr, ptr %cinfo.addr, align 8
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %dest, align 8
  %init_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %init_destination, align 8
  %19 = load ptr, ptr %cinfo.addr, align 8
  call void %18(ptr noundef %19)
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void @jinit_marker_writer(ptr noundef %20)
  %21 = load ptr, ptr %cinfo.addr, align 8
  %marker = getelementptr inbounds %struct.jpeg_compress_struct, ptr %21, i32 0, i32 55
  %22 = load ptr, ptr %marker, align 8
  %write_tables_only = getelementptr inbounds %struct.jpeg_marker_writer, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %write_tables_only, align 8
  %24 = load ptr, ptr %cinfo.addr, align 8
  call void %23(ptr noundef %24)
  %25 = load ptr, ptr %cinfo.addr, align 8
  %dest5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %dest5, align 8
  %term_destination = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %term_destination, align 8
  %28 = load ptr, ptr %cinfo.addr, align 8
  call void %27(ptr noundef %28)
  %29 = load ptr, ptr %cinfo.addr, align 8
  call void @jpeg_abort(ptr noundef %29)
  ret void
}

declare void @jinit_marker_writer(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
