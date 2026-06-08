; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jddctmgr.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-jpeg-c/jddctmgr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

@start_pass.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 2
@start_pass.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_inverse_dct(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %idct = alloca ptr, align 8
  %ci = alloca i32, align 4
  %compptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 128)
  store ptr %call, ptr %idct, align 8
  %4 = load ptr, ptr %idct, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 80
  store ptr %4, ptr %idct1, align 8
  %6 = load ptr, ptr %idct, align 8
  %pub = getelementptr inbounds %struct.my_idct_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %pub, i32 0, i32 0
  store ptr @start_pass, ptr %start_pass, align 8
  store i32 0, ptr %ci, align 4
  %7 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 43
  %8 = load ptr, ptr %comp_info, align 8
  store ptr %8, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %ci, align 4
  %10 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 8
  %11 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %cinfo.addr, align 8
  %mem2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mem2, align 8
  %alloc_small3 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %alloc_small3, align 8
  %15 = load ptr, ptr %cinfo.addr, align 8
  %call4 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 256)
  %16 = load ptr, ptr %compptr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i32 0, i32 20
  store ptr %call4, ptr %dct_table, align 8
  %17 = load ptr, ptr %compptr, align 8
  %dct_table5 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i32 0, i32 20
  %18 = load ptr, ptr %dct_table5, align 8
  %19 = load ptr, ptr %compptr, align 8
  %dct_table6 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i32 0, i32 20
  %20 = load ptr, ptr %dct_table6, align 8
  %21 = call i64 @llvm.objectsize.i64.p0(ptr %20, i1 false, i1 true, i1 false)
  %call7 = call ptr @__memset_chk(ptr noundef %18, i32 noundef 0, i64 noundef 256, i64 noundef %21) #4
  %22 = load ptr, ptr %idct, align 8
  %cur_method = getelementptr inbounds %struct.my_idct_controller, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %cur_method, i64 0, i64 %idxprom
  store i32 -1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %ci, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %ci, align 4
  %25 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_pass(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %idct = alloca ptr, align 8
  %ci = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %method = alloca i32, align 4
  %method_ptr = alloca ptr, align 8
  %qtbl = alloca ptr, align 8
  %ismtbl = alloca ptr, align 8
  %ifmtbl = alloca ptr, align 8
  %fmtbl = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %idct1 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i32 0, i32 80
  %1 = load ptr, ptr %idct1, align 8
  store ptr %1, ptr %idct, align 8
  store i32 0, ptr %method, align 4
  store ptr null, ptr %method_ptr, align 8
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %2, i32 0, i32 43
  %3 = load ptr, ptr %comp_info, align 8
  store ptr %3, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc90, %entry
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %num_components, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end92

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %DCT_scaled_size, align 4
  switch i32 %8, label %sw.default9 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
  ]

sw.bb:                                            ; preds = %for.body
  store ptr @jpeg_idct_1x1, ptr %method_ptr, align 8
  store i32 0, ptr %method, align 4
  br label %sw.epilog16

sw.bb2:                                           ; preds = %for.body
  store ptr @jpeg_idct_2x2, ptr %method_ptr, align 8
  store i32 0, ptr %method, align 4
  br label %sw.epilog16

sw.bb3:                                           ; preds = %for.body
  store ptr @jpeg_idct_4x4, ptr %method_ptr, align 8
  store i32 0, ptr %method, align 4
  br label %sw.epilog16

sw.bb4:                                           ; preds = %for.body
  %9 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 16
  %10 = load i32, ptr %dct_method, align 8
  switch i32 %10, label %sw.default [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
  ]

sw.bb5:                                           ; preds = %sw.bb4
  store ptr @jpeg_idct_islow, ptr %method_ptr, align 8
  store i32 0, ptr %method, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %sw.bb4
  store ptr @jpeg_idct_ifast, ptr %method_ptr, align 8
  store i32 1, ptr %method, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %sw.bb4
  store ptr @jpeg_idct_float, ptr %method_ptr, align 8
  store i32 2, ptr %method, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb4
  %11 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i32 0, i32 5
  store i32 47, ptr %msg_code, align 8
  %13 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %error_exit, align 8
  %16 = load ptr, ptr %cinfo.addr, align 8
  call void %15(ptr noundef %16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5
  br label %sw.epilog16

sw.default9:                                      ; preds = %for.body
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err10, align 8
  %msg_code11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 5
  store i32 6, ptr %msg_code11, align 8
  %19 = load ptr, ptr %compptr, align 8
  %DCT_scaled_size12 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i32 0, i32 9
  %20 = load i32, ptr %DCT_scaled_size12, align 4
  %21 = load ptr, ptr %cinfo.addr, align 8
  %err13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %err13, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %20, ptr %arrayidx, align 4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %err14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %err14, align 8
  %error_exit15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %error_exit15, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  call void %25(ptr noundef %26)
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %sw.default9, %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb
  %27 = load ptr, ptr %method_ptr, align 8
  %28 = load ptr, ptr %idct, align 8
  %pub = getelementptr inbounds %struct.my_idct_controller, ptr %28, i32 0, i32 0
  %inverse_DCT = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %pub, i32 0, i32 1
  %29 = load i32, ptr %ci, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx17 = getelementptr inbounds [10 x ptr], ptr %inverse_DCT, i64 0, i64 %idxprom
  store ptr %27, ptr %arrayidx17, align 8
  %30 = load ptr, ptr %compptr, align 8
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, ptr %30, i32 0, i32 12
  %31 = load i32, ptr %component_needed, align 8
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog16
  %32 = load ptr, ptr %idct, align 8
  %cur_method = getelementptr inbounds %struct.my_idct_controller, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %ci, align 4
  %idxprom18 = sext i32 %33 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], ptr %cur_method, i64 0, i64 %idxprom18
  %34 = load i32, ptr %arrayidx19, align 4
  %35 = load i32, ptr %method, align 4
  %cmp20 = icmp eq i32 %34, %35
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog16
  br label %for.inc90

if.end:                                           ; preds = %lor.lhs.false
  %36 = load ptr, ptr %compptr, align 8
  %quant_table = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i32 0, i32 19
  %37 = load ptr, ptr %quant_table, align 8
  store ptr %37, ptr %qtbl, align 8
  %38 = load ptr, ptr %qtbl, align 8
  %cmp21 = icmp eq ptr %38, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  br label %for.inc90

if.end23:                                         ; preds = %if.end
  %39 = load i32, ptr %method, align 4
  %40 = load ptr, ptr %idct, align 8
  %cur_method24 = getelementptr inbounds %struct.my_idct_controller, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %ci, align 4
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds [10 x i32], ptr %cur_method24, i64 0, i64 %idxprom25
  store i32 %39, ptr %arrayidx26, align 4
  %42 = load i32, ptr %method, align 4
  switch i32 %42, label %sw.default84 [
    i32 0, label %sw.bb27
    i32 1, label %sw.bb35
    i32 2, label %sw.bb54
  ]

sw.bb27:                                          ; preds = %if.end23
  %43 = load ptr, ptr %compptr, align 8
  %dct_table = getelementptr inbounds %struct.jpeg_component_info, ptr %43, i32 0, i32 20
  %44 = load ptr, ptr %dct_table, align 8
  store ptr %44, ptr %ismtbl, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %sw.bb27
  %45 = load i32, ptr %i, align 4
  %cmp29 = icmp slt i32 %45, 64
  br i1 %cmp29, label %for.body30, label %for.end

for.body30:                                       ; preds = %for.cond28
  %46 = load ptr, ptr %qtbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %47 to i64
  %arrayidx32 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 %idxprom31
  %48 = load i16, ptr %arrayidx32, align 2
  %conv = zext i16 %48 to i32
  %49 = load ptr, ptr %ismtbl, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %50 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %49, i64 %idxprom33
  store i32 %conv, ptr %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body30
  %51 = load i32, ptr %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond28, !llvm.loop !8

for.end:                                          ; preds = %for.cond28
  br label %sw.epilog89

sw.bb35:                                          ; preds = %if.end23
  %52 = load ptr, ptr %compptr, align 8
  %dct_table36 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i32 0, i32 20
  %53 = load ptr, ptr %dct_table36, align 8
  store ptr %53, ptr %ifmtbl, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc51, %sw.bb35
  %54 = load i32, ptr %i, align 4
  %cmp38 = icmp slt i32 %54, 64
  br i1 %cmp38, label %for.body40, label %for.end53

for.body40:                                       ; preds = %for.cond37
  %55 = load ptr, ptr %qtbl, align 8
  %quantval41 = getelementptr inbounds %struct.JQUANT_TBL, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %56 to i64
  %arrayidx43 = getelementptr inbounds [64 x i16], ptr %quantval41, i64 0, i64 %idxprom42
  %57 = load i16, ptr %arrayidx43, align 2
  %conv44 = zext i16 %57 to i64
  %58 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %58 to i64
  %arrayidx46 = getelementptr inbounds [64 x i16], ptr @start_pass.aanscales, i64 0, i64 %idxprom45
  %59 = load i16, ptr %arrayidx46, align 2
  %conv47 = sext i16 %59 to i64
  %mul = mul nsw i64 %conv44, %conv47
  %add = add nsw i64 %mul, 2048
  %shr = ashr i64 %add, 12
  %conv48 = trunc i64 %shr to i32
  %60 = load ptr, ptr %ifmtbl, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %61 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %60, i64 %idxprom49
  store i32 %conv48, ptr %arrayidx50, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body40
  %62 = load i32, ptr %i, align 4
  %inc52 = add nsw i32 %62, 1
  store i32 %inc52, ptr %i, align 4
  br label %for.cond37, !llvm.loop !9

for.end53:                                        ; preds = %for.cond37
  br label %sw.epilog89

sw.bb54:                                          ; preds = %if.end23
  %63 = load ptr, ptr %compptr, align 8
  %dct_table55 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i32 0, i32 20
  %64 = load ptr, ptr %dct_table55, align 8
  store ptr %64, ptr %fmtbl, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc81, %sw.bb54
  %65 = load i32, ptr %row, align 4
  %cmp57 = icmp slt i32 %65, 8
  br i1 %cmp57, label %for.body59, label %for.end83

for.body59:                                       ; preds = %for.cond56
  store i32 0, ptr %col, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc78, %for.body59
  %66 = load i32, ptr %col, align 4
  %cmp61 = icmp slt i32 %66, 8
  br i1 %cmp61, label %for.body63, label %for.end80

for.body63:                                       ; preds = %for.cond60
  %67 = load ptr, ptr %qtbl, align 8
  %quantval64 = getelementptr inbounds %struct.JQUANT_TBL, ptr %67, i32 0, i32 0
  %68 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds [64 x i16], ptr %quantval64, i64 0, i64 %idxprom65
  %69 = load i16, ptr %arrayidx66, align 2
  %conv67 = uitofp i16 %69 to double
  %70 = load i32, ptr %row, align 4
  %idxprom68 = sext i32 %70 to i64
  %arrayidx69 = getelementptr inbounds [8 x double], ptr @start_pass.aanscalefactor, i64 0, i64 %idxprom68
  %71 = load double, ptr %arrayidx69, align 8
  %mul70 = fmul double %conv67, %71
  %72 = load i32, ptr %col, align 4
  %idxprom71 = sext i32 %72 to i64
  %arrayidx72 = getelementptr inbounds [8 x double], ptr @start_pass.aanscalefactor, i64 0, i64 %idxprom71
  %73 = load double, ptr %arrayidx72, align 8
  %mul73 = fmul double %mul70, %73
  %conv74 = fptrunc double %mul73 to float
  %74 = load ptr, ptr %fmtbl, align 8
  %75 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %75 to i64
  %arrayidx76 = getelementptr inbounds float, ptr %74, i64 %idxprom75
  store float %conv74, ptr %arrayidx76, align 4
  %76 = load i32, ptr %i, align 4
  %inc77 = add nsw i32 %76, 1
  store i32 %inc77, ptr %i, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body63
  %77 = load i32, ptr %col, align 4
  %inc79 = add nsw i32 %77, 1
  store i32 %inc79, ptr %col, align 4
  br label %for.cond60, !llvm.loop !10

for.end80:                                        ; preds = %for.cond60
  br label %for.inc81

for.inc81:                                        ; preds = %for.end80
  %78 = load i32, ptr %row, align 4
  %inc82 = add nsw i32 %78, 1
  store i32 %inc82, ptr %row, align 4
  br label %for.cond56, !llvm.loop !11

for.end83:                                        ; preds = %for.cond56
  br label %sw.epilog89

sw.default84:                                     ; preds = %if.end23
  %79 = load ptr, ptr %cinfo.addr, align 8
  %err85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %err85, align 8
  %msg_code86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %80, i32 0, i32 5
  store i32 47, ptr %msg_code86, align 8
  %81 = load ptr, ptr %cinfo.addr, align 8
  %err87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %err87, align 8
  %error_exit88 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %error_exit88, align 8
  %84 = load ptr, ptr %cinfo.addr, align 8
  call void %83(ptr noundef %84)
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %sw.default84, %for.end83, %for.end53, %for.end
  br label %for.inc90

for.inc90:                                        ; preds = %sw.epilog89, %if.then22, %if.then
  %85 = load i32, ptr %ci, align 4
  %inc91 = add nsw i32 %85, 1
  store i32 %inc91, ptr %ci, align 4
  %86 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %86, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !12

for.end92:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare void @jpeg_idct_1x1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @jpeg_idct_2x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @jpeg_idct_4x4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @jpeg_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @jpeg_idct_ifast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare void @jpeg_idct_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

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
