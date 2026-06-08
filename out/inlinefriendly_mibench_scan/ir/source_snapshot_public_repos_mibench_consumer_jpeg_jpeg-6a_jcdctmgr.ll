; ModuleID = './source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcdctmgr.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/jpeg/jpeg-6a/jcdctmgr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, ptr, [4 x ptr], ptr, [4 x ptr] }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

@start_pass_fdctmgr.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 2
@start_pass_fdctmgr.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @jinit_forward_dct(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %fdct = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc_small, align 8
  %3 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %2(ptr noundef %3, i32 noundef 1, i64 noundef 96)
  store ptr %call, ptr %fdct, align 8
  %4 = load ptr, ptr %fdct, align 8
  %5 = load ptr, ptr %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 58
  store ptr %4, ptr %fdct1, align 8
  %6 = load ptr, ptr %fdct, align 8
  %pub = getelementptr inbounds %struct.my_fdct_controller, ptr %6, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_forward_dct, ptr %pub, i32 0, i32 0
  store ptr @start_pass_fdctmgr, ptr %start_pass, align 8
  %7 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %7, i32 0, i32 28
  %8 = load i32, ptr %dct_method, align 4
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %9 = load ptr, ptr %fdct, align 8
  %pub2 = getelementptr inbounds %struct.my_fdct_controller, ptr %9, i32 0, i32 0
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, ptr %pub2, i32 0, i32 1
  store ptr @forward_DCT, ptr %forward_DCT, align 8
  %10 = load ptr, ptr %fdct, align 8
  %do_dct = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i32 0, i32 1
  store ptr @jpeg_fdct_islow, ptr %do_dct, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %11 = load ptr, ptr %fdct, align 8
  %pub4 = getelementptr inbounds %struct.my_fdct_controller, ptr %11, i32 0, i32 0
  %forward_DCT5 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %pub4, i32 0, i32 1
  store ptr @forward_DCT, ptr %forward_DCT5, align 8
  %12 = load ptr, ptr %fdct, align 8
  %do_dct6 = getelementptr inbounds %struct.my_fdct_controller, ptr %12, i32 0, i32 1
  store ptr @jpeg_fdct_ifast, ptr %do_dct6, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %13 = load ptr, ptr %fdct, align 8
  %pub8 = getelementptr inbounds %struct.my_fdct_controller, ptr %13, i32 0, i32 0
  %forward_DCT9 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %pub8, i32 0, i32 1
  store ptr @forward_DCT_float, ptr %forward_DCT9, align 8
  %14 = load ptr, ptr %fdct, align 8
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, ptr %14, i32 0, i32 3
  store ptr @jpeg_fdct_float, ptr %do_float_dct, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5
  store i32 47, ptr %msg_code, align 8
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err10, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %error_exit, align 8
  %20 = load ptr, ptr %cinfo.addr, align 8
  call void %19(ptr noundef %20)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb3, %sw.bb
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %21 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %21, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %fdct, align 8
  %divisors = getelementptr inbounds %struct.my_fdct_controller, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %divisors, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  %24 = load ptr, ptr %fdct, align 8
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %25 to i64
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %float_divisors, i64 0, i64 %idxprom11
  store ptr null, ptr %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @start_pass_fdctmgr(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %fdct = alloca ptr, align 8
  %ci = alloca i32, align 4
  %qtblno = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca ptr, align 8
  %qtbl = alloca ptr, align 8
  %dtbl = alloca ptr, align 8
  %fdtbl = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8
  %0 = load ptr, ptr %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %fdct1, align 8
  store ptr %1, ptr %fdct, align 8
  store i32 0, ptr %ci, align 4
  %2 = load ptr, ptr %cinfo.addr, align 8
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, ptr %2, i32 0, i32 14
  %3 = load ptr, ptr %comp_info, align 8
  store ptr %3, ptr %compptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc113, %entry
  %4 = load i32, ptr %ci, align 4
  %5 = load ptr, ptr %cinfo.addr, align 8
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, ptr %5, i32 0, i32 12
  %6 = load i32, ptr %num_components, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end115

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %compptr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %quant_tbl_no, align 8
  store i32 %8, ptr %qtblno, align 4
  %9 = load i32, ptr %qtblno, align 4
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, ptr %qtblno, align 4
  %cmp3 = icmp sge i32 %10, 4
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, ptr %11, i32 0, i32 15
  %12 = load i32, ptr %qtblno, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %cmp5 = icmp eq ptr %13, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %for.body
  %14 = load ptr, ptr %cinfo.addr, align 8
  %err = getelementptr inbounds %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %err, align 8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5
  store i32 51, ptr %msg_code, align 8
  %16 = load i32, ptr %qtblno, align 4
  %17 = load ptr, ptr %cinfo.addr, align 8
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %err6, align 8
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %16, ptr %arrayidx7, align 4
  %19 = load ptr, ptr %cinfo.addr, align 8
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %err8, align 8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %error_exit, align 8
  %22 = load ptr, ptr %cinfo.addr, align 8
  call void %21(ptr noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false4
  %23 = load ptr, ptr %cinfo.addr, align 8
  %quant_tbl_ptrs9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %23, i32 0, i32 15
  %24 = load i32, ptr %qtblno, align 4
  %idxprom10 = sext i32 %24 to i64
  %arrayidx11 = getelementptr inbounds [4 x ptr], ptr %quant_tbl_ptrs9, i64 0, i64 %idxprom10
  %25 = load ptr, ptr %arrayidx11, align 8
  store ptr %25, ptr %qtbl, align 8
  %26 = load ptr, ptr %cinfo.addr, align 8
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i32 0, i32 28
  %27 = load i32, ptr %dct_method, align 4
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end
  %28 = load ptr, ptr %fdct, align 8
  %divisors = getelementptr inbounds %struct.my_fdct_controller, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %qtblno, align 4
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds [4 x ptr], ptr %divisors, i64 0, i64 %idxprom12
  %30 = load ptr, ptr %arrayidx13, align 8
  %cmp14 = icmp eq ptr %30, null
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %sw.bb
  %31 = load ptr, ptr %cinfo.addr, align 8
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %mem, align 8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %alloc_small, align 8
  %34 = load ptr, ptr %cinfo.addr, align 8
  %call = call ptr %33(ptr noundef %34, i32 noundef 1, i64 noundef 256)
  %35 = load ptr, ptr %fdct, align 8
  %divisors16 = getelementptr inbounds %struct.my_fdct_controller, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %qtblno, align 4
  %idxprom17 = sext i32 %36 to i64
  %arrayidx18 = getelementptr inbounds [4 x ptr], ptr %divisors16, i64 0, i64 %idxprom17
  store ptr %call, ptr %arrayidx18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %sw.bb
  %37 = load ptr, ptr %fdct, align 8
  %divisors20 = getelementptr inbounds %struct.my_fdct_controller, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %qtblno, align 4
  %idxprom21 = sext i32 %38 to i64
  %arrayidx22 = getelementptr inbounds [4 x ptr], ptr %divisors20, i64 0, i64 %idxprom21
  %39 = load ptr, ptr %arrayidx22, align 8
  store ptr %39, ptr %dtbl, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %if.end19
  %40 = load i32, ptr %i, align 4
  %cmp24 = icmp slt i32 %40, 64
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond23
  %41 = load ptr, ptr %qtbl, align 8
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %42 to i64
  %arrayidx27 = getelementptr inbounds [64 x i16], ptr %quantval, i64 0, i64 %idxprom26
  %43 = load i16, ptr %arrayidx27, align 2
  %conv = zext i16 %43 to i32
  %shl = shl i32 %conv, 3
  %44 = load ptr, ptr %dtbl, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %45 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %44, i64 %idxprom28
  store i32 %shl, ptr %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body25
  %46 = load i32, ptr %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond23, !llvm.loop !8

for.end:                                          ; preds = %for.cond23
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %47 = load ptr, ptr %fdct, align 8
  %divisors31 = getelementptr inbounds %struct.my_fdct_controller, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %qtblno, align 4
  %idxprom32 = sext i32 %48 to i64
  %arrayidx33 = getelementptr inbounds [4 x ptr], ptr %divisors31, i64 0, i64 %idxprom32
  %49 = load ptr, ptr %arrayidx33, align 8
  %cmp34 = icmp eq ptr %49, null
  br i1 %cmp34, label %if.then36, label %if.end43

if.then36:                                        ; preds = %sw.bb30
  %50 = load ptr, ptr %cinfo.addr, align 8
  %mem37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %mem37, align 8
  %alloc_small38 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %alloc_small38, align 8
  %53 = load ptr, ptr %cinfo.addr, align 8
  %call39 = call ptr %52(ptr noundef %53, i32 noundef 1, i64 noundef 256)
  %54 = load ptr, ptr %fdct, align 8
  %divisors40 = getelementptr inbounds %struct.my_fdct_controller, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %qtblno, align 4
  %idxprom41 = sext i32 %55 to i64
  %arrayidx42 = getelementptr inbounds [4 x ptr], ptr %divisors40, i64 0, i64 %idxprom41
  store ptr %call39, ptr %arrayidx42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %sw.bb30
  %56 = load ptr, ptr %fdct, align 8
  %divisors44 = getelementptr inbounds %struct.my_fdct_controller, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %qtblno, align 4
  %idxprom45 = sext i32 %57 to i64
  %arrayidx46 = getelementptr inbounds [4 x ptr], ptr %divisors44, i64 0, i64 %idxprom45
  %58 = load ptr, ptr %arrayidx46, align 8
  store ptr %58, ptr %dtbl, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc61, %if.end43
  %59 = load i32, ptr %i, align 4
  %cmp48 = icmp slt i32 %59, 64
  br i1 %cmp48, label %for.body50, label %for.end63

for.body50:                                       ; preds = %for.cond47
  %60 = load ptr, ptr %qtbl, align 8
  %quantval51 = getelementptr inbounds %struct.JQUANT_TBL, ptr %60, i32 0, i32 0
  %61 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %61 to i64
  %arrayidx53 = getelementptr inbounds [64 x i16], ptr %quantval51, i64 0, i64 %idxprom52
  %62 = load i16, ptr %arrayidx53, align 2
  %conv54 = zext i16 %62 to i64
  %63 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %63 to i64
  %arrayidx56 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %idxprom55
  %64 = load i16, ptr %arrayidx56, align 2
  %conv57 = sext i16 %64 to i64
  %mul = mul nsw i64 %conv54, %conv57
  %add = add nsw i64 %mul, 1024
  %shr = ashr i64 %add, 11
  %conv58 = trunc i64 %shr to i32
  %65 = load ptr, ptr %dtbl, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %66 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %65, i64 %idxprom59
  store i32 %conv58, ptr %arrayidx60, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %for.body50
  %67 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %67, 1
  store i32 %inc62, ptr %i, align 4
  br label %for.cond47, !llvm.loop !9

for.end63:                                        ; preds = %for.cond47
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end
  %68 = load ptr, ptr %fdct, align 8
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, ptr %68, i32 0, i32 4
  %69 = load i32, ptr %qtblno, align 4
  %idxprom65 = sext i32 %69 to i64
  %arrayidx66 = getelementptr inbounds [4 x ptr], ptr %float_divisors, i64 0, i64 %idxprom65
  %70 = load ptr, ptr %arrayidx66, align 8
  %cmp67 = icmp eq ptr %70, null
  br i1 %cmp67, label %if.then69, label %if.end76

if.then69:                                        ; preds = %sw.bb64
  %71 = load ptr, ptr %cinfo.addr, align 8
  %mem70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %mem70, align 8
  %alloc_small71 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %alloc_small71, align 8
  %74 = load ptr, ptr %cinfo.addr, align 8
  %call72 = call ptr %73(ptr noundef %74, i32 noundef 1, i64 noundef 256)
  %75 = load ptr, ptr %fdct, align 8
  %float_divisors73 = getelementptr inbounds %struct.my_fdct_controller, ptr %75, i32 0, i32 4
  %76 = load i32, ptr %qtblno, align 4
  %idxprom74 = sext i32 %76 to i64
  %arrayidx75 = getelementptr inbounds [4 x ptr], ptr %float_divisors73, i64 0, i64 %idxprom74
  store ptr %call72, ptr %arrayidx75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %sw.bb64
  %77 = load ptr, ptr %fdct, align 8
  %float_divisors77 = getelementptr inbounds %struct.my_fdct_controller, ptr %77, i32 0, i32 4
  %78 = load i32, ptr %qtblno, align 4
  %idxprom78 = sext i32 %78 to i64
  %arrayidx79 = getelementptr inbounds [4 x ptr], ptr %float_divisors77, i64 0, i64 %idxprom78
  %79 = load ptr, ptr %arrayidx79, align 8
  store ptr %79, ptr %fdtbl, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %row, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc106, %if.end76
  %80 = load i32, ptr %row, align 4
  %cmp81 = icmp slt i32 %80, 8
  br i1 %cmp81, label %for.body83, label %for.end108

for.body83:                                       ; preds = %for.cond80
  store i32 0, ptr %col, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc103, %for.body83
  %81 = load i32, ptr %col, align 4
  %cmp85 = icmp slt i32 %81, 8
  br i1 %cmp85, label %for.body87, label %for.end105

for.body87:                                       ; preds = %for.cond84
  %82 = load ptr, ptr %qtbl, align 8
  %quantval88 = getelementptr inbounds %struct.JQUANT_TBL, ptr %82, i32 0, i32 0
  %83 = load i32, ptr %i, align 4
  %idxprom89 = sext i32 %83 to i64
  %arrayidx90 = getelementptr inbounds [64 x i16], ptr %quantval88, i64 0, i64 %idxprom89
  %84 = load i16, ptr %arrayidx90, align 2
  %conv91 = uitofp i16 %84 to double
  %85 = load i32, ptr %row, align 4
  %idxprom92 = sext i32 %85 to i64
  %arrayidx93 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %idxprom92
  %86 = load double, ptr %arrayidx93, align 8
  %mul94 = fmul double %conv91, %86
  %87 = load i32, ptr %col, align 4
  %idxprom95 = sext i32 %87 to i64
  %arrayidx96 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %idxprom95
  %88 = load double, ptr %arrayidx96, align 8
  %mul97 = fmul double %mul94, %88
  %mul98 = fmul double %mul97, 8.000000e+00
  %div = fdiv double 1.000000e+00, %mul98
  %conv99 = fptrunc double %div to float
  %89 = load ptr, ptr %fdtbl, align 8
  %90 = load i32, ptr %i, align 4
  %idxprom100 = sext i32 %90 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %89, i64 %idxprom100
  store float %conv99, ptr %arrayidx101, align 4
  %91 = load i32, ptr %i, align 4
  %inc102 = add nsw i32 %91, 1
  store i32 %inc102, ptr %i, align 4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body87
  %92 = load i32, ptr %col, align 4
  %inc104 = add nsw i32 %92, 1
  store i32 %inc104, ptr %col, align 4
  br label %for.cond84, !llvm.loop !10

for.end105:                                       ; preds = %for.cond84
  br label %for.inc106

for.inc106:                                       ; preds = %for.end105
  %93 = load i32, ptr %row, align 4
  %inc107 = add nsw i32 %93, 1
  store i32 %inc107, ptr %row, align 4
  br label %for.cond80, !llvm.loop !11

for.end108:                                       ; preds = %for.cond80
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %94 = load ptr, ptr %cinfo.addr, align 8
  %err109 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %err109, align 8
  %msg_code110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i32 0, i32 5
  store i32 47, ptr %msg_code110, align 8
  %96 = load ptr, ptr %cinfo.addr, align 8
  %err111 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %err111, align 8
  %error_exit112 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %error_exit112, align 8
  %99 = load ptr, ptr %cinfo.addr, align 8
  call void %98(ptr noundef %99)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end108, %for.end63, %for.end
  br label %for.inc113

for.inc113:                                       ; preds = %sw.epilog
  %100 = load i32, ptr %ci, align 4
  %inc114 = add nsw i32 %100, 1
  store i32 %inc114, ptr %ci, align 4
  %101 = load ptr, ptr %compptr, align 8
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, ptr %101, i32 1
  store ptr %incdec.ptr, ptr %compptr, align 8
  br label %for.cond, !llvm.loop !12

for.end115:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @forward_DCT(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %sample_data, ptr noundef %coef_blocks, i32 noundef %start_row, i32 noundef %start_col, i32 noundef %num_blocks) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %sample_data.addr = alloca ptr, align 8
  %coef_blocks.addr = alloca ptr, align 8
  %start_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num_blocks.addr = alloca i32, align 4
  %fdct = alloca ptr, align 8
  %do_dct = alloca ptr, align 8
  %divisors = alloca ptr, align 8
  %workspace = alloca [64 x i32], align 4
  %bi = alloca i32, align 4
  %workspaceptr = alloca ptr, align 8
  %elemptr = alloca ptr, align 8
  %elemr = alloca i32, align 4
  %temp = alloca i32, align 4
  %qval = alloca i32, align 4
  %i = alloca i32, align 4
  %output_ptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %sample_data, ptr %sample_data.addr, align 8
  store ptr %coef_blocks, ptr %coef_blocks.addr, align 8
  store i32 %start_row, ptr %start_row.addr, align 4
  store i32 %start_col, ptr %start_col.addr, align 4
  store i32 %num_blocks, ptr %num_blocks.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %fdct1, align 8
  store ptr %1, ptr %fdct, align 8
  %2 = load ptr, ptr %fdct, align 8
  %do_dct2 = getelementptr inbounds %struct.my_fdct_controller, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %do_dct2, align 8
  store ptr %3, ptr %do_dct, align 8
  %4 = load ptr, ptr %fdct, align 8
  %divisors3 = getelementptr inbounds %struct.my_fdct_controller, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %compptr.addr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %quant_tbl_no, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %divisors3, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %divisors, align 8
  %8 = load i32, ptr %start_row.addr, align 4
  %9 = load ptr, ptr %sample_data.addr, align 8
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %sample_data.addr, align 8
  store i32 0, ptr %bi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %entry
  %10 = load i32, ptr %bi, align 4
  %11 = load i32, ptr %num_blocks.addr, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end78

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x i32], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay, ptr %workspaceptr, align 8
  store i32 0, ptr %elemr, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %elemr, align 4
  %cmp5 = icmp slt i32 %12, 8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %13 = load ptr, ptr %sample_data.addr, align 8
  %14 = load i32, ptr %elemr, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %13, i64 %idxprom7
  %15 = load ptr, ptr %arrayidx8, align 8
  %16 = load i32, ptr %start_col.addr, align 4
  %idx.ext9 = zext i32 %16 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %15, i64 %idx.ext9
  store ptr %add.ptr10, ptr %elemptr, align 8
  %17 = load ptr, ptr %elemptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %elemptr, align 8
  %18 = load i8, ptr %17, align 1
  %conv = zext i8 %18 to i32
  %sub = sub nsw i32 %conv, 128
  %19 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr11 = getelementptr inbounds i32, ptr %19, i32 1
  store ptr %incdec.ptr11, ptr %workspaceptr, align 8
  store i32 %sub, ptr %19, align 4
  %20 = load ptr, ptr %elemptr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr12, ptr %elemptr, align 8
  %21 = load i8, ptr %20, align 1
  %conv13 = zext i8 %21 to i32
  %sub14 = sub nsw i32 %conv13, 128
  %22 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr15 = getelementptr inbounds i32, ptr %22, i32 1
  store ptr %incdec.ptr15, ptr %workspaceptr, align 8
  store i32 %sub14, ptr %22, align 4
  %23 = load ptr, ptr %elemptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr16, ptr %elemptr, align 8
  %24 = load i8, ptr %23, align 1
  %conv17 = zext i8 %24 to i32
  %sub18 = sub nsw i32 %conv17, 128
  %25 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr19 = getelementptr inbounds i32, ptr %25, i32 1
  store ptr %incdec.ptr19, ptr %workspaceptr, align 8
  store i32 %sub18, ptr %25, align 4
  %26 = load ptr, ptr %elemptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %elemptr, align 8
  %27 = load i8, ptr %26, align 1
  %conv21 = zext i8 %27 to i32
  %sub22 = sub nsw i32 %conv21, 128
  %28 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr23 = getelementptr inbounds i32, ptr %28, i32 1
  store ptr %incdec.ptr23, ptr %workspaceptr, align 8
  store i32 %sub22, ptr %28, align 4
  %29 = load ptr, ptr %elemptr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr24, ptr %elemptr, align 8
  %30 = load i8, ptr %29, align 1
  %conv25 = zext i8 %30 to i32
  %sub26 = sub nsw i32 %conv25, 128
  %31 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr27 = getelementptr inbounds i32, ptr %31, i32 1
  store ptr %incdec.ptr27, ptr %workspaceptr, align 8
  store i32 %sub26, ptr %31, align 4
  %32 = load ptr, ptr %elemptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr28, ptr %elemptr, align 8
  %33 = load i8, ptr %32, align 1
  %conv29 = zext i8 %33 to i32
  %sub30 = sub nsw i32 %conv29, 128
  %34 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr31 = getelementptr inbounds i32, ptr %34, i32 1
  store ptr %incdec.ptr31, ptr %workspaceptr, align 8
  store i32 %sub30, ptr %34, align 4
  %35 = load ptr, ptr %elemptr, align 8
  %incdec.ptr32 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr32, ptr %elemptr, align 8
  %36 = load i8, ptr %35, align 1
  %conv33 = zext i8 %36 to i32
  %sub34 = sub nsw i32 %conv33, 128
  %37 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr35 = getelementptr inbounds i32, ptr %37, i32 1
  store ptr %incdec.ptr35, ptr %workspaceptr, align 8
  store i32 %sub34, ptr %37, align 4
  %38 = load ptr, ptr %elemptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr36, ptr %elemptr, align 8
  %39 = load i8, ptr %38, align 1
  %conv37 = zext i8 %39 to i32
  %sub38 = sub nsw i32 %conv37, 128
  %40 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr39 = getelementptr inbounds i32, ptr %40, i32 1
  store ptr %incdec.ptr39, ptr %workspaceptr, align 8
  store i32 %sub38, ptr %40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %41 = load i32, ptr %elemr, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %elemr, align 4
  br label %for.cond4, !llvm.loop !13

for.end:                                          ; preds = %for.cond4
  %42 = load ptr, ptr %do_dct, align 8
  %arraydecay40 = getelementptr inbounds [64 x i32], ptr %workspace, i64 0, i64 0
  call void %42(ptr noundef %arraydecay40)
  %43 = load ptr, ptr %coef_blocks.addr, align 8
  %44 = load i32, ptr %bi, align 4
  %idxprom41 = zext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds [64 x i16], ptr %43, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [64 x i16], ptr %arrayidx42, i64 0, i64 0
  store ptr %arraydecay43, ptr %output_ptr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc72, %for.end
  %45 = load i32, ptr %i, align 4
  %cmp45 = icmp slt i32 %45, 64
  br i1 %cmp45, label %for.body47, label %for.end74

for.body47:                                       ; preds = %for.cond44
  %46 = load ptr, ptr %divisors, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %47 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %46, i64 %idxprom48
  %48 = load i32, ptr %arrayidx49, align 4
  store i32 %48, ptr %qval, align 4
  %49 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %49 to i64
  %arrayidx51 = getelementptr inbounds [64 x i32], ptr %workspace, i64 0, i64 %idxprom50
  %50 = load i32, ptr %arrayidx51, align 4
  store i32 %50, ptr %temp, align 4
  %51 = load i32, ptr %temp, align 4
  %cmp52 = icmp slt i32 %51, 0
  br i1 %cmp52, label %if.then, label %if.else59

if.then:                                          ; preds = %for.body47
  %52 = load i32, ptr %temp, align 4
  %sub54 = sub nsw i32 0, %52
  store i32 %sub54, ptr %temp, align 4
  %53 = load i32, ptr %qval, align 4
  %shr = ashr i32 %53, 1
  %54 = load i32, ptr %temp, align 4
  %add = add nsw i32 %54, %shr
  store i32 %add, ptr %temp, align 4
  %55 = load i32, ptr %temp, align 4
  %56 = load i32, ptr %qval, align 4
  %cmp55 = icmp sge i32 %55, %56
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then
  %57 = load i32, ptr %qval, align 4
  %58 = load i32, ptr %temp, align 4
  %div = sdiv i32 %58, %57
  store i32 %div, ptr %temp, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, ptr %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then57
  %59 = load i32, ptr %temp, align 4
  %sub58 = sub nsw i32 0, %59
  store i32 %sub58, ptr %temp, align 4
  br label %if.end68

if.else59:                                        ; preds = %for.body47
  %60 = load i32, ptr %qval, align 4
  %shr60 = ashr i32 %60, 1
  %61 = load i32, ptr %temp, align 4
  %add61 = add nsw i32 %61, %shr60
  store i32 %add61, ptr %temp, align 4
  %62 = load i32, ptr %temp, align 4
  %63 = load i32, ptr %qval, align 4
  %cmp62 = icmp sge i32 %62, %63
  br i1 %cmp62, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.else59
  %64 = load i32, ptr %qval, align 4
  %65 = load i32, ptr %temp, align 4
  %div65 = sdiv i32 %65, %64
  store i32 %div65, ptr %temp, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.else59
  store i32 0, ptr %temp, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then64
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end
  %66 = load i32, ptr %temp, align 4
  %conv69 = trunc i32 %66 to i16
  %67 = load ptr, ptr %output_ptr, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %68 to i64
  %arrayidx71 = getelementptr inbounds i16, ptr %67, i64 %idxprom70
  store i16 %conv69, ptr %arrayidx71, align 2
  br label %for.inc72

for.inc72:                                        ; preds = %if.end68
  %69 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %69, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond44, !llvm.loop !14

for.end74:                                        ; preds = %for.cond44
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %70 = load i32, ptr %bi, align 4
  %inc76 = add i32 %70, 1
  store i32 %inc76, ptr %bi, align 4
  %71 = load i32, ptr %start_col.addr, align 4
  %add77 = add i32 %71, 8
  store i32 %add77, ptr %start_col.addr, align 4
  br label %for.cond, !llvm.loop !15

for.end78:                                        ; preds = %for.cond
  ret void
}

declare void @jpeg_fdct_islow(ptr noundef) #1

declare void @jpeg_fdct_ifast(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @forward_DCT_float(ptr noundef %cinfo, ptr noundef %compptr, ptr noundef %sample_data, ptr noundef %coef_blocks, i32 noundef %start_row, i32 noundef %start_col, i32 noundef %num_blocks) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %compptr.addr = alloca ptr, align 8
  %sample_data.addr = alloca ptr, align 8
  %coef_blocks.addr = alloca ptr, align 8
  %start_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num_blocks.addr = alloca i32, align 4
  %fdct = alloca ptr, align 8
  %do_dct = alloca ptr, align 8
  %divisors = alloca ptr, align 8
  %workspace = alloca [64 x float], align 4
  %bi = alloca i32, align 4
  %workspaceptr = alloca ptr, align 8
  %elemptr = alloca ptr, align 8
  %elemr = alloca i32, align 4
  %temp = alloca float, align 4
  %i = alloca i32, align 4
  %output_ptr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8
  store ptr %compptr, ptr %compptr.addr, align 8
  store ptr %sample_data, ptr %sample_data.addr, align 8
  store ptr %coef_blocks, ptr %coef_blocks.addr, align 8
  store i32 %start_row, ptr %start_row.addr, align 4
  store i32 %start_col, ptr %start_col.addr, align 4
  store i32 %num_blocks, ptr %num_blocks.addr, align 4
  %0 = load ptr, ptr %cinfo.addr, align 8
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %fdct1, align 8
  store ptr %1, ptr %fdct, align 8
  %2 = load ptr, ptr %fdct, align 8
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %do_float_dct, align 8
  store ptr %3, ptr %do_dct, align 8
  %4 = load ptr, ptr %fdct, align 8
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %compptr.addr, align 8
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %quant_tbl_no, align 8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %float_divisors, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %divisors, align 8
  %8 = load i32, ptr %start_row.addr, align 4
  %9 = load ptr, ptr %sample_data.addr, align 8
  %idx.ext = zext i32 %8 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %sample_data.addr, align 8
  store i32 0, ptr %bi, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc66, %entry
  %10 = load i32, ptr %bi, align 4
  %11 = load i32, ptr %num_blocks.addr, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end69

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 0
  store ptr %arraydecay, ptr %workspaceptr, align 8
  store i32 0, ptr %elemr, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %12 = load i32, ptr %elemr, align 4
  %cmp3 = icmp slt i32 %12, 8
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %13 = load ptr, ptr %sample_data.addr, align 8
  %14 = load i32, ptr %elemr, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %13, i64 %idxprom5
  %15 = load ptr, ptr %arrayidx6, align 8
  %16 = load i32, ptr %start_col.addr, align 4
  %idx.ext7 = zext i32 %16 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %15, i64 %idx.ext7
  store ptr %add.ptr8, ptr %elemptr, align 8
  %17 = load ptr, ptr %elemptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %elemptr, align 8
  %18 = load i8, ptr %17, align 1
  %conv = zext i8 %18 to i32
  %sub = sub nsw i32 %conv, 128
  %conv9 = sitofp i32 %sub to float
  %19 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr10 = getelementptr inbounds float, ptr %19, i32 1
  store ptr %incdec.ptr10, ptr %workspaceptr, align 8
  store float %conv9, ptr %19, align 4
  %20 = load ptr, ptr %elemptr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr11, ptr %elemptr, align 8
  %21 = load i8, ptr %20, align 1
  %conv12 = zext i8 %21 to i32
  %sub13 = sub nsw i32 %conv12, 128
  %conv14 = sitofp i32 %sub13 to float
  %22 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr15 = getelementptr inbounds float, ptr %22, i32 1
  store ptr %incdec.ptr15, ptr %workspaceptr, align 8
  store float %conv14, ptr %22, align 4
  %23 = load ptr, ptr %elemptr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr16, ptr %elemptr, align 8
  %24 = load i8, ptr %23, align 1
  %conv17 = zext i8 %24 to i32
  %sub18 = sub nsw i32 %conv17, 128
  %conv19 = sitofp i32 %sub18 to float
  %25 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr20 = getelementptr inbounds float, ptr %25, i32 1
  store ptr %incdec.ptr20, ptr %workspaceptr, align 8
  store float %conv19, ptr %25, align 4
  %26 = load ptr, ptr %elemptr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr21, ptr %elemptr, align 8
  %27 = load i8, ptr %26, align 1
  %conv22 = zext i8 %27 to i32
  %sub23 = sub nsw i32 %conv22, 128
  %conv24 = sitofp i32 %sub23 to float
  %28 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr25 = getelementptr inbounds float, ptr %28, i32 1
  store ptr %incdec.ptr25, ptr %workspaceptr, align 8
  store float %conv24, ptr %28, align 4
  %29 = load ptr, ptr %elemptr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr26, ptr %elemptr, align 8
  %30 = load i8, ptr %29, align 1
  %conv27 = zext i8 %30 to i32
  %sub28 = sub nsw i32 %conv27, 128
  %conv29 = sitofp i32 %sub28 to float
  %31 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr30 = getelementptr inbounds float, ptr %31, i32 1
  store ptr %incdec.ptr30, ptr %workspaceptr, align 8
  store float %conv29, ptr %31, align 4
  %32 = load ptr, ptr %elemptr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr31, ptr %elemptr, align 8
  %33 = load i8, ptr %32, align 1
  %conv32 = zext i8 %33 to i32
  %sub33 = sub nsw i32 %conv32, 128
  %conv34 = sitofp i32 %sub33 to float
  %34 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr35 = getelementptr inbounds float, ptr %34, i32 1
  store ptr %incdec.ptr35, ptr %workspaceptr, align 8
  store float %conv34, ptr %34, align 4
  %35 = load ptr, ptr %elemptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr36, ptr %elemptr, align 8
  %36 = load i8, ptr %35, align 1
  %conv37 = zext i8 %36 to i32
  %sub38 = sub nsw i32 %conv37, 128
  %conv39 = sitofp i32 %sub38 to float
  %37 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr40 = getelementptr inbounds float, ptr %37, i32 1
  store ptr %incdec.ptr40, ptr %workspaceptr, align 8
  store float %conv39, ptr %37, align 4
  %38 = load ptr, ptr %elemptr, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr41, ptr %elemptr, align 8
  %39 = load i8, ptr %38, align 1
  %conv42 = zext i8 %39 to i32
  %sub43 = sub nsw i32 %conv42, 128
  %conv44 = sitofp i32 %sub43 to float
  %40 = load ptr, ptr %workspaceptr, align 8
  %incdec.ptr45 = getelementptr inbounds float, ptr %40, i32 1
  store ptr %incdec.ptr45, ptr %workspaceptr, align 8
  store float %conv44, ptr %40, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %41 = load i32, ptr %elemr, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %elemr, align 4
  br label %for.cond2, !llvm.loop !16

for.end:                                          ; preds = %for.cond2
  %42 = load ptr, ptr %do_dct, align 8
  %arraydecay46 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 0
  call void %42(ptr noundef %arraydecay46)
  %43 = load ptr, ptr %coef_blocks.addr, align 8
  %44 = load i32, ptr %bi, align 4
  %idxprom47 = zext i32 %44 to i64
  %arrayidx48 = getelementptr inbounds [64 x i16], ptr %43, i64 %idxprom47
  %arraydecay49 = getelementptr inbounds [64 x i16], ptr %arrayidx48, i64 0, i64 0
  store ptr %arraydecay49, ptr %output_ptr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc63, %for.end
  %45 = load i32, ptr %i, align 4
  %cmp51 = icmp slt i32 %45, 64
  br i1 %cmp51, label %for.body53, label %for.end65

for.body53:                                       ; preds = %for.cond50
  %46 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %46 to i64
  %arrayidx55 = getelementptr inbounds [64 x float], ptr %workspace, i64 0, i64 %idxprom54
  %47 = load float, ptr %arrayidx55, align 4
  %48 = load ptr, ptr %divisors, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %49 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %48, i64 %idxprom56
  %50 = load float, ptr %arrayidx57, align 4
  %mul = fmul float %47, %50
  store float %mul, ptr %temp, align 4
  %51 = load float, ptr %temp, align 4
  %add = fadd float %51, 1.638450e+04
  %conv58 = fptosi float %add to i32
  %sub59 = sub nsw i32 %conv58, 16384
  %conv60 = trunc i32 %sub59 to i16
  %52 = load ptr, ptr %output_ptr, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %53 to i64
  %arrayidx62 = getelementptr inbounds i16, ptr %52, i64 %idxprom61
  store i16 %conv60, ptr %arrayidx62, align 2
  br label %for.inc63

for.inc63:                                        ; preds = %for.body53
  %54 = load i32, ptr %i, align 4
  %inc64 = add nsw i32 %54, 1
  store i32 %inc64, ptr %i, align 4
  br label %for.cond50, !llvm.loop !17

for.end65:                                        ; preds = %for.cond50
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %55 = load i32, ptr %bi, align 4
  %inc67 = add i32 %55, 1
  store i32 %inc67, ptr %bi, align 4
  %56 = load i32, ptr %start_col.addr, align 4
  %add68 = add i32 %56, 8
  store i32 %add68, ptr %start_col.addr, align 4
  br label %for.cond, !llvm.loop !18

for.end69:                                        ; preds = %for.cond
  ret void
}

declare void @jpeg_fdct_float(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
