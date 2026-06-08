; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/takehiro.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/takehiro.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { i32, i32 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon.0] }
%struct.anon.0 = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@subdv_table = global [23 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i32 0, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 7 }, %struct.anon { i32 6, i32 7 }, %struct.anon { i32 6, i32 7 }], align 4
@ipow20 = external global [256 x double], align 8
@scalefac_band = external global %struct.scalefac_struct, align 4
@huf_tbl_noESC = internal constant [15 x i32] [i32 1, i32 2, i32 5, i32 7, i32 7, i32 10, i32 10, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 4
@ht = external global [34 x %struct.huffcodetab], align 8
@cb_esc_buf = internal global [288 x i32] zeroinitializer, align 4
@cb_esc_sign = internal global i32 0, align 4
@cb_esc_end = internal global ptr null, align 8
@scfsi_calc.scfsi_band = internal constant [5 x i32] [i32 0, i32 6, i32 11, i32 16, i32 21], align 4
@scfsi_calc.slen1_n = internal constant [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 4
@scfsi_calc.slen2_n = internal constant [16 x i32] [i32 0, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 4
@scfsi_calc.slen1_tab = internal constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 4
@scfsi_calc.slen2_tab = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @count_bits(ptr noundef %gfp, ptr noundef %ix, ptr noundef %xr, ptr noundef %cod_info) #0 {
entry:
  %retval = alloca i32, align 4
  %gfp.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
  %xr.addr = alloca ptr, align 8
  %cod_info.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %i = alloca i32, align 4
  %w = alloca double, align 8
  store ptr %gfp, ptr %gfp.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %xr, ptr %xr.addr, align 8
  store ptr %cod_info, ptr %cod_info.addr, align 8
  store i32 0, ptr %bits, align 4
  %0 = load ptr, ptr %cod_info.addr, align 8
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %global_gain, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8
  %div = fdiv double 8.206000e+03, %2
  store double %div, ptr %w, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %xr.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds double, ptr %4, i64 %idxprom1
  %6 = load double, ptr %arrayidx2, align 8
  %7 = load double, ptr %w, align 8
  %cmp3 = fcmp ogt double %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 100000, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %gfp.addr, align 8
  %quantization = getelementptr inbounds %struct.lame_global_flags, ptr %9, i32 0, i32 60
  %10 = load i32, ptr %quantization, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.end
  %11 = load ptr, ptr %xr.addr, align 8
  %12 = load ptr, ptr %ix.addr, align 8
  %13 = load ptr, ptr %cod_info.addr, align 8
  call void @quantize_xrpow(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  br label %if.end5

if.else:                                          ; preds = %for.end
  %14 = load ptr, ptr %xr.addr, align 8
  %15 = load ptr, ptr %ix.addr, align 8
  %16 = load ptr, ptr %cod_info.addr, align 8
  call void @quantize_xrpow_ISO(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %17 = load ptr, ptr %cod_info.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %block_type, align 8
  %cmp6 = icmp eq i32 %18, 2
  br i1 %cmp6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.end5
  %19 = load ptr, ptr %ix.addr, align 8
  %20 = load ptr, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %20, i64 36
  %call = call i32 @choose_table_short(ptr noundef %19, ptr noundef %add.ptr, ptr noundef %bits)
  %21 = load ptr, ptr %cod_info.addr, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %21, i32 0, i32 8
  %arrayidx8 = getelementptr inbounds [3 x i32], ptr %table_select, i64 0, i64 0
  store i32 %call, ptr %arrayidx8, align 8
  %22 = load ptr, ptr %ix.addr, align 8
  %add.ptr9 = getelementptr inbounds i32, ptr %22, i64 36
  %23 = load ptr, ptr %ix.addr, align 8
  %add.ptr10 = getelementptr inbounds i32, ptr %23, i64 576
  %call11 = call i32 @choose_table_short(ptr noundef %add.ptr9, ptr noundef %add.ptr10, ptr noundef %bits)
  %24 = load ptr, ptr %cod_info.addr, align 8
  %table_select12 = getelementptr inbounds %struct.gr_info, ptr %24, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [3 x i32], ptr %table_select12, i64 0, i64 1
  store i32 %call11, ptr %arrayidx13, align 4
  %25 = load ptr, ptr %cod_info.addr, align 8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %25, i32 0, i32 1
  store i32 288, ptr %big_values, align 4
  br label %if.end21

if.else14:                                        ; preds = %if.end5
  %26 = load ptr, ptr %ix.addr, align 8
  %27 = load ptr, ptr %cod_info.addr, align 8
  %call15 = call i32 @count_bits_long(ptr noundef %26, ptr noundef %27)
  store i32 %call15, ptr %bits, align 4
  %28 = load ptr, ptr %cod_info.addr, align 8
  %count1 = getelementptr inbounds %struct.gr_info, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %count1, align 8
  %30 = load ptr, ptr %cod_info.addr, align 8
  %big_values16 = getelementptr inbounds %struct.gr_info, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %big_values16, align 4
  %sub = sub i32 %29, %31
  %div17 = udiv i32 %sub, 4
  %32 = load ptr, ptr %cod_info.addr, align 8
  %count118 = getelementptr inbounds %struct.gr_info, ptr %32, i32 0, i32 2
  store i32 %div17, ptr %count118, align 8
  %33 = load ptr, ptr %cod_info.addr, align 8
  %big_values19 = getelementptr inbounds %struct.gr_info, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %big_values19, align 4
  %div20 = udiv i32 %34, 2
  store i32 %div20, ptr %big_values19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %if.then7
  %35 = load i32, ptr %bits, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

declare void @quantize_xrpow(ptr noundef, ptr noundef, ptr noundef) #1

declare void @quantize_xrpow_ISO(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @choose_table_short(ptr noundef %ix, ptr noundef %end, ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %max = alloca i32, align 4
  %choice0 = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %choice1 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %ix.addr, align 8
  %1 = load ptr, ptr %end.addr, align 8
  %call = call i32 @ix_max(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %max, align 4
  %2 = load i32, ptr %max, align 4
  %cmp = icmp sgt i32 %2, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8
  store i32 100000, ptr %3, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %max, align 4
  %cmp1 = icmp sle i32 %4, 15
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %max, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  %6 = load i32, ptr %max, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %choice0, align 4
  %8 = load ptr, ptr %ix.addr, align 8
  %9 = load ptr, ptr %end.addr, align 8
  %10 = load i32, ptr %choice0, align 4
  %call6 = call i32 @count_bit_short_noESC(ptr noundef %8, ptr noundef %9, i32 noundef %10)
  store i32 %call6, ptr %sum0, align 4
  %11 = load i32, ptr %choice0, align 4
  store i32 %11, ptr %choice1, align 4
  %12 = load i32, ptr %choice0, align 4
  switch i32 %12, label %sw.default [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb11
    i32 5, label %sw.bb11
    i32 13, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end5, %if.end5
  %13 = load i32, ptr %choice1, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %choice1, align 4
  %14 = load i32, ptr %choice1, align 4
  %call7 = call i32 @count_bit_noESC2(i32 noundef %14)
  store i32 %call7, ptr %sum1, align 4
  %15 = load i32, ptr %sum0, align 4
  %16 = load i32, ptr %sum1, align 4
  %cmp8 = icmp sgt i32 %15, %16
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb
  %17 = load i32, ptr %sum1, align 4
  store i32 %17, ptr %sum0, align 4
  %18 = load i32, ptr %choice1, align 4
  store i32 %18, ptr %choice0, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb
  br label %sw.bb11

sw.bb11:                                          ; preds = %if.end5, %if.end5, %if.end10
  %19 = load i32, ptr %choice1, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, ptr %choice1, align 4
  %20 = load i32, ptr %choice1, align 4
  %call13 = call i32 @count_bit_noESC2(i32 noundef %20)
  store i32 %call13, ptr %sum1, align 4
  %21 = load i32, ptr %sum0, align 4
  %22 = load i32, ptr %sum1, align 4
  %cmp14 = icmp sgt i32 %21, %22
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb11
  %23 = load i32, ptr %sum1, align 4
  store i32 %23, ptr %sum0, align 4
  %24 = load i32, ptr %choice1, align 4
  store i32 %24, ptr %choice0, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %sw.bb11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end5
  %25 = load i32, ptr %choice1, align 4
  %add = add nsw i32 %25, 2
  store i32 %add, ptr %choice1, align 4
  %26 = load i32, ptr %choice1, align 4
  %call18 = call i32 @count_bit_noESC2(i32 noundef %26)
  store i32 %call18, ptr %sum1, align 4
  %27 = load i32, ptr %sum0, align 4
  %28 = load i32, ptr %sum1, align 4
  %cmp19 = icmp sgt i32 %27, %28
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.bb17
  %29 = load i32, ptr %sum1, align 4
  store i32 %29, ptr %sum0, align 4
  %30 = load i32, ptr %choice1, align 4
  store i32 %30, ptr %choice0, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %sw.bb17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end21, %if.end16
  %31 = load i32, ptr %sum0, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %33 = load i32, ptr %32, align 4
  %add22 = add nsw i32 %33, %31
  store i32 %add22, ptr %32, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %max, align 4
  %sub23 = sub nsw i32 %34, 15
  store i32 %sub23, ptr %max, align 4
  store i32 24, ptr %choice1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %35 = load i32, ptr %choice1, align 4
  %cmp24 = icmp slt i32 %35, 32
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, ptr %choice1, align 4
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom25
  %linmax = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx26, i32 0, i32 1
  %37 = load i32, ptr %linmax, align 4
  %38 = load i32, ptr %max, align 4
  %cmp27 = icmp sge i32 %37, %38
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body
  br label %for.end

if.end29:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %39 = load i32, ptr %choice1, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, ptr %choice1, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then28, %for.cond
  %40 = load i32, ptr %choice1, align 4
  %sub31 = sub nsw i32 %40, 8
  store i32 %sub31, ptr %choice0, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc41, %for.end
  %41 = load i32, ptr %choice0, align 4
  %cmp33 = icmp slt i32 %41, 24
  br i1 %cmp33, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond32
  %42 = load i32, ptr %choice0, align 4
  %idxprom35 = sext i32 %42 to i64
  %arrayidx36 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom35
  %linmax37 = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx36, i32 0, i32 1
  %43 = load i32, ptr %linmax37, align 4
  %44 = load i32, ptr %max, align 4
  %cmp38 = icmp sge i32 %43, %44
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body34
  br label %for.end43

if.end40:                                         ; preds = %for.body34
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %45 = load i32, ptr %choice0, align 4
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, ptr %choice0, align 4
  br label %for.cond32, !llvm.loop !9

for.end43:                                        ; preds = %if.then39, %for.cond32
  %46 = load ptr, ptr %ix.addr, align 8
  %47 = load ptr, ptr %end.addr, align 8
  %48 = load i32, ptr %choice0, align 4
  %49 = load i32, ptr %choice1, align 4
  %50 = load ptr, ptr %s.addr, align 8
  %call44 = call i32 @count_bit_short_ESC(ptr noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49, ptr noundef %50)
  store i32 %call44, ptr %choice0, align 4
  br label %if.end45

if.end45:                                         ; preds = %for.end43, %sw.epilog
  %51 = load i32, ptr %choice0, align 4
  store i32 %51, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then4, %if.then
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @count_bits_long(ptr noundef %ix, ptr noundef %gi) #0 {
entry:
  %retval = alloca i32, align 4
  %ix.addr = alloca ptr, align 8
  %gi.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %bits = alloca i32, align 4
  %p = alloca i32, align 4
  %v = alloca i32, align 4
  %index = alloca i32, align 4
  %scfb_anz = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %gi, ptr %gi.addr, align 8
  store i32 0, ptr %bits, align 4
  store i32 576, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %ix.addr, align 8
  %2 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr %ix.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub1 = sub nsw i32 %5, 2
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %4, i64 %idxprom2
  %6 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %3, %6
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %sub4 = sub nsw i32 %7, 2
  store i32 %sub4, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %gi.addr, align 8
  %count1 = getelementptr inbounds %struct.gr_info, ptr %9, i32 0, i32 2
  store i32 %8, ptr %count1, align 8
  store i32 0, ptr %a1, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc55, %for.end
  %10 = load i32, ptr %i, align 4
  %cmp6 = icmp sgt i32 %10, 3
  br i1 %cmp6, label %for.body7, label %for.end57

for.body7:                                        ; preds = %for.cond5
  %11 = load ptr, ptr %ix.addr, align 8
  %12 = load i32, ptr %i, align 4
  %sub8 = sub nsw i32 %12, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %11, i64 %idxprom9
  %13 = load i32, ptr %arrayidx10, align 4
  %14 = load ptr, ptr %ix.addr, align 8
  %15 = load i32, ptr %i, align 4
  %sub11 = sub nsw i32 %15, 2
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %or14 = or i32 %13, %16
  %17 = load ptr, ptr %ix.addr, align 8
  %18 = load i32, ptr %i, align 4
  %sub15 = sub nsw i32 %18, 3
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %17, i64 %idxprom16
  %19 = load i32, ptr %arrayidx17, align 4
  %or18 = or i32 %or14, %19
  %20 = load ptr, ptr %ix.addr, align 8
  %21 = load i32, ptr %i, align 4
  %sub19 = sub nsw i32 %21, 4
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %20, i64 %idxprom20
  %22 = load i32, ptr %arrayidx21, align 4
  %or22 = or i32 %or18, %22
  %cmp23 = icmp ugt i32 %or22, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body7
  br label %for.end57

if.end25:                                         ; preds = %for.body7
  %23 = load ptr, ptr %ix.addr, align 8
  %24 = load i32, ptr %i, align 4
  %sub26 = sub nsw i32 %24, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %23, i64 %idxprom27
  %25 = load i32, ptr %arrayidx28, align 4
  store i32 %25, ptr %v, align 4
  %26 = load i32, ptr %v, align 4
  store i32 %26, ptr %p, align 4
  %27 = load i32, ptr %v, align 4
  %28 = load i32, ptr %bits, align 4
  %add = add nsw i32 %28, %27
  store i32 %add, ptr %bits, align 4
  %29 = load ptr, ptr %ix.addr, align 8
  %30 = load i32, ptr %i, align 4
  %sub29 = sub nsw i32 %30, 2
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %29, i64 %idxprom30
  %31 = load i32, ptr %arrayidx31, align 4
  store i32 %31, ptr %v, align 4
  %32 = load i32, ptr %v, align 4
  %cmp32 = icmp ne i32 %32, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end25
  %33 = load i32, ptr %p, align 4
  %add34 = add nsw i32 %33, 2
  store i32 %add34, ptr %p, align 4
  %34 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %bits, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end25
  %35 = load ptr, ptr %ix.addr, align 8
  %36 = load i32, ptr %i, align 4
  %sub36 = sub nsw i32 %36, 3
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %35, i64 %idxprom37
  %37 = load i32, ptr %arrayidx38, align 4
  store i32 %37, ptr %v, align 4
  %38 = load i32, ptr %v, align 4
  %cmp39 = icmp ne i32 %38, 0
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end35
  %39 = load i32, ptr %p, align 4
  %add41 = add nsw i32 %39, 4
  store i32 %add41, ptr %p, align 4
  %40 = load i32, ptr %bits, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, ptr %bits, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end35
  %41 = load ptr, ptr %ix.addr, align 8
  %42 = load i32, ptr %i, align 4
  %sub44 = sub nsw i32 %42, 4
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %41, i64 %idxprom45
  %43 = load i32, ptr %arrayidx46, align 4
  store i32 %43, ptr %v, align 4
  %44 = load i32, ptr %v, align 4
  %cmp47 = icmp ne i32 %44, 0
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  %45 = load i32, ptr %p, align 4
  %add49 = add nsw i32 %45, 8
  store i32 %add49, ptr %p, align 4
  %46 = load i32, ptr %bits, align 4
  %inc50 = add nsw i32 %46, 1
  store i32 %inc50, ptr %bits, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43
  %47 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 32, i32 3), align 8
  %48 = load i32, ptr %p, align 4
  %idxprom52 = sext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %47, i64 %idxprom52
  %49 = load i8, ptr %arrayidx53, align 1
  %conv = zext i8 %49 to i32
  %50 = load i32, ptr %a1, align 4
  %add54 = add nsw i32 %50, %conv
  store i32 %add54, ptr %a1, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %if.end51
  %51 = load i32, ptr %i, align 4
  %sub56 = sub nsw i32 %51, 4
  store i32 %sub56, ptr %i, align 4
  br label %for.cond5, !llvm.loop !11

for.end57:                                        ; preds = %if.then24, %for.cond5
  %52 = load ptr, ptr %gi.addr, align 8
  %count158 = getelementptr inbounds %struct.gr_info, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %count158, align 8
  %54 = load i32, ptr %i, align 4
  %sub59 = sub i32 %53, %54
  store i32 %sub59, ptr %a2, align 4
  %55 = load i32, ptr %a1, align 4
  %56 = load i32, ptr %a2, align 4
  %cmp60 = icmp slt i32 %55, %56
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %for.end57
  %57 = load i32, ptr %a1, align 4
  %58 = load i32, ptr %bits, align 4
  %add63 = add nsw i32 %58, %57
  store i32 %add63, ptr %bits, align 4
  %59 = load ptr, ptr %gi.addr, align 8
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %59, i32 0, i32 14
  store i32 0, ptr %count1table_select, align 8
  br label %if.end66

if.else:                                          ; preds = %for.end57
  %60 = load i32, ptr %a2, align 4
  %61 = load i32, ptr %bits, align 4
  %add64 = add nsw i32 %61, %60
  store i32 %add64, ptr %bits, align 4
  %62 = load ptr, ptr %gi.addr, align 8
  %count1table_select65 = getelementptr inbounds %struct.gr_info, ptr %62, i32 0, i32 14
  store i32 1, ptr %count1table_select65, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then62
  %63 = load i32, ptr %bits, align 4
  %64 = load ptr, ptr %gi.addr, align 8
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %64, i32 0, i32 18
  store i32 %63, ptr %count1bits, align 8
  %65 = load i32, ptr %i, align 4
  %66 = load ptr, ptr %gi.addr, align 8
  %big_values = getelementptr inbounds %struct.gr_info, ptr %66, i32 0, i32 1
  store i32 %65, ptr %big_values, align 4
  %67 = load i32, ptr %i, align 4
  %cmp67 = icmp eq i32 %67, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end66
  %68 = load i32, ptr %bits, align 4
  store i32 %68, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end66
  %69 = load ptr, ptr %gi.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %69, i32 0, i32 6
  %70 = load i32, ptr %block_type, align 8
  %cmp71 = icmp eq i32 %70, 0
  br i1 %cmp71, label %if.then73, label %if.else116

if.then73:                                        ; preds = %if.end70
  store i32 0, ptr %scfb_anz, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then73
  %71 = load i32, ptr %scfb_anz, align 4
  %inc74 = add nsw i32 %71, 1
  store i32 %inc74, ptr %scfb_anz, align 4
  %idxprom75 = sext i32 %inc74 to i64
  %arrayidx76 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom75
  %72 = load i32, ptr %arrayidx76, align 4
  %73 = load i32, ptr %i, align 4
  %cmp77 = icmp slt i32 %72, %73
  br i1 %cmp77, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %74 = load i32, ptr %scfb_anz, align 4
  %idxprom79 = sext i32 %74 to i64
  %arrayidx80 = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %idxprom79
  %region0_count = getelementptr inbounds %struct.anon, ptr %arrayidx80, i32 0, i32 0
  %75 = load i32, ptr %region0_count, align 4
  store i32 %75, ptr %index, align 4
  br label %while.cond81

while.cond81:                                     ; preds = %while.body87, %while.end
  %76 = load i32, ptr %index, align 4
  %add82 = add nsw i32 %76, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom83
  %77 = load i32, ptr %arrayidx84, align 4
  %78 = load i32, ptr %i, align 4
  %cmp85 = icmp sgt i32 %77, %78
  br i1 %cmp85, label %while.body87, label %while.end88

while.body87:                                     ; preds = %while.cond81
  %79 = load i32, ptr %index, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, ptr %index, align 4
  br label %while.cond81, !llvm.loop !13

while.end88:                                      ; preds = %while.cond81
  %80 = load i32, ptr %index, align 4
  %81 = load ptr, ptr %gi.addr, align 8
  %region0_count89 = getelementptr inbounds %struct.gr_info, ptr %81, i32 0, i32 10
  store i32 %80, ptr %region0_count89, align 8
  %82 = load i32, ptr %scfb_anz, align 4
  %idxprom90 = sext i32 %82 to i64
  %arrayidx91 = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %idxprom90
  %region1_count = getelementptr inbounds %struct.anon, ptr %arrayidx91, i32 0, i32 1
  %83 = load i32, ptr %region1_count, align 4
  store i32 %83, ptr %index, align 4
  br label %while.cond92

while.cond92:                                     ; preds = %while.body100, %while.end88
  %84 = load i32, ptr %index, align 4
  %85 = load ptr, ptr %gi.addr, align 8
  %region0_count93 = getelementptr inbounds %struct.gr_info, ptr %85, i32 0, i32 10
  %86 = load i32, ptr %region0_count93, align 8
  %add94 = add i32 %84, %86
  %add95 = add i32 %add94, 2
  %idxprom96 = zext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom96
  %87 = load i32, ptr %arrayidx97, align 4
  %88 = load i32, ptr %i, align 4
  %cmp98 = icmp sgt i32 %87, %88
  br i1 %cmp98, label %while.body100, label %while.end102

while.body100:                                    ; preds = %while.cond92
  %89 = load i32, ptr %index, align 4
  %dec101 = add nsw i32 %89, -1
  store i32 %dec101, ptr %index, align 4
  br label %while.cond92, !llvm.loop !14

while.end102:                                     ; preds = %while.cond92
  %90 = load i32, ptr %index, align 4
  %91 = load ptr, ptr %gi.addr, align 8
  %region1_count103 = getelementptr inbounds %struct.gr_info, ptr %91, i32 0, i32 11
  store i32 %90, ptr %region1_count103, align 4
  %92 = load ptr, ptr %gi.addr, align 8
  %region0_count104 = getelementptr inbounds %struct.gr_info, ptr %92, i32 0, i32 10
  %93 = load i32, ptr %region0_count104, align 8
  %add105 = add i32 %93, 1
  %idxprom106 = zext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom106
  %94 = load i32, ptr %arrayidx107, align 4
  store i32 %94, ptr %a1, align 4
  %95 = load i32, ptr %index, align 4
  %96 = load ptr, ptr %gi.addr, align 8
  %region0_count108 = getelementptr inbounds %struct.gr_info, ptr %96, i32 0, i32 10
  %97 = load i32, ptr %region0_count108, align 8
  %add109 = add i32 %95, %97
  %add110 = add i32 %add109, 2
  %idxprom111 = zext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom111
  %98 = load i32, ptr %arrayidx112, align 4
  store i32 %98, ptr %a2, align 4
  %99 = load ptr, ptr %ix.addr, align 8
  %100 = load i32, ptr %a2, align 4
  %idx.ext = sext i32 %100 to i64
  %add.ptr = getelementptr inbounds i32, ptr %99, i64 %idx.ext
  %101 = load ptr, ptr %ix.addr, align 8
  %102 = load i32, ptr %i, align 4
  %idx.ext113 = sext i32 %102 to i64
  %add.ptr114 = getelementptr inbounds i32, ptr %101, i64 %idx.ext113
  %call = call i32 @choose_table(ptr noundef %add.ptr, ptr noundef %add.ptr114, ptr noundef %bits)
  %103 = load ptr, ptr %gi.addr, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %103, i32 0, i32 8
  %arrayidx115 = getelementptr inbounds [3 x i32], ptr %table_select, i64 0, i64 2
  store i32 %call, ptr %arrayidx115, align 8
  br label %if.end123

if.else116:                                       ; preds = %if.end70
  %104 = load ptr, ptr %gi.addr, align 8
  %region0_count117 = getelementptr inbounds %struct.gr_info, ptr %104, i32 0, i32 10
  store i32 7, ptr %region0_count117, align 8
  %105 = load ptr, ptr %gi.addr, align 8
  %region1_count118 = getelementptr inbounds %struct.gr_info, ptr %105, i32 0, i32 11
  store i32 13, ptr %region1_count118, align 4
  %106 = load i32, ptr getelementptr inbounds ([23 x i32], ptr @scalefac_band, i64 0, i64 8), align 4
  store i32 %106, ptr %a1, align 4
  %107 = load i32, ptr %i, align 4
  store i32 %107, ptr %a2, align 4
  %108 = load i32, ptr %a1, align 4
  %109 = load i32, ptr %a2, align 4
  %cmp119 = icmp sgt i32 %108, %109
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.else116
  %110 = load i32, ptr %a2, align 4
  store i32 %110, ptr %a1, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.else116
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %while.end102
  %111 = load ptr, ptr %ix.addr, align 8
  %112 = load ptr, ptr %ix.addr, align 8
  %113 = load i32, ptr %a1, align 4
  %idx.ext124 = sext i32 %113 to i64
  %add.ptr125 = getelementptr inbounds i32, ptr %112, i64 %idx.ext124
  %call126 = call i32 @choose_table(ptr noundef %111, ptr noundef %add.ptr125, ptr noundef %bits)
  %114 = load ptr, ptr %gi.addr, align 8
  %table_select127 = getelementptr inbounds %struct.gr_info, ptr %114, i32 0, i32 8
  %arrayidx128 = getelementptr inbounds [3 x i32], ptr %table_select127, i64 0, i64 0
  store i32 %call126, ptr %arrayidx128, align 8
  %115 = load ptr, ptr %ix.addr, align 8
  %116 = load i32, ptr %a1, align 4
  %idx.ext129 = sext i32 %116 to i64
  %add.ptr130 = getelementptr inbounds i32, ptr %115, i64 %idx.ext129
  %117 = load ptr, ptr %ix.addr, align 8
  %118 = load i32, ptr %a2, align 4
  %idx.ext131 = sext i32 %118 to i64
  %add.ptr132 = getelementptr inbounds i32, ptr %117, i64 %idx.ext131
  %call133 = call i32 @choose_table(ptr noundef %add.ptr130, ptr noundef %add.ptr132, ptr noundef %bits)
  %119 = load ptr, ptr %gi.addr, align 8
  %table_select134 = getelementptr inbounds %struct.gr_info, ptr %119, i32 0, i32 8
  %arrayidx135 = getelementptr inbounds [3 x i32], ptr %table_select134, i64 0, i64 1
  store i32 %call133, ptr %arrayidx135, align 4
  %120 = load i32, ptr %bits, align 4
  store i32 %120, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end123, %if.then69
  %121 = load i32, ptr %retval, align 4
  ret i32 %121
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @best_huffman_divide(i32 noundef %gr, i32 noundef %ch, ptr noundef %gi, ptr noundef %ix) #0 {
entry:
  %gr.addr = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  %gi.addr = alloca ptr, align 8
  %ix.addr = alloca ptr, align 8
  %bits = alloca ptr, align 8
  %r0 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %bigv = alloca i32, align 4
  %r1_bits = alloca i32, align 4
  %r3_bits = alloca [25 x i32], align 4
  %r3_tbl = alloca [25 x i32], align 4
  %cod_info = alloca %struct.gr_info, align 8
  store i32 %gr, ptr %gr.addr, align 4
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %gi, ptr %gi.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  %0 = load ptr, ptr %gi.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cod_info, ptr align 8 %0, i64 120, i1 false)
  %big_values = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 1
  %1 = load i32, ptr %big_values, align 4
  %mul = mul i32 %1, 2
  store i32 %mul, ptr %bigv, align 4
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 0
  store ptr %part2_3_length, ptr %bits, align 8
  store i32 2, ptr %r0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %r0, align 4
  %cmp = icmp slt i32 %2, 23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %r0, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %a2, align 4
  %5 = load i32, ptr %a2, align 4
  %6 = load i32, ptr %bigv, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 18
  %7 = load i32, ptr %count1bits, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 15
  %8 = load i32, ptr %part2_length, align 4
  %add = add i32 %7, %8
  %9 = load i32, ptr %r0, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom2
  store i32 %add, ptr %arrayidx3, align 4
  %10 = load ptr, ptr %ix.addr, align 8
  %11 = load i32, ptr %a2, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i32, ptr %10, i64 %idx.ext
  %12 = load ptr, ptr %ix.addr, align 8
  %13 = load i32, ptr %bigv, align 4
  %idx.ext4 = sext i32 %13 to i64
  %add.ptr5 = getelementptr inbounds i32, ptr %12, i64 %idx.ext4
  %14 = load i32, ptr %r0, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom6
  %call = call i32 @choose_table(ptr noundef %add.ptr, ptr noundef %add.ptr5, ptr noundef %arrayidx7)
  %15 = load i32, ptr %r0, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [25 x i32], ptr %r3_tbl, i64 0, i64 %idxprom8
  store i32 %call, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %r0, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %r0, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %if.then, %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end
  %17 = load i32, ptr %r0, align 4
  %cmp11 = icmp sle i32 %17, 24
  br i1 %cmp11, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond10
  %18 = load i32, ptr %r0, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom13
  store i32 100000, ptr %arrayidx14, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %19 = load i32, ptr %r0, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, ptr %r0, align 4
  br label %for.cond10, !llvm.loop !16

for.end17:                                        ; preds = %for.cond10
  store i32 0, ptr %r0, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc72, %for.end17
  %20 = load i32, ptr %r0, align 4
  %cmp19 = icmp slt i32 %20, 16
  br i1 %cmp19, label %for.body20, label %for.end74

for.body20:                                       ; preds = %for.cond18
  %21 = load i32, ptr %r0, align 4
  %add21 = add nsw i32 %21, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom22
  %22 = load i32, ptr %arrayidx23, align 4
  store i32 %22, ptr %a1, align 4
  %23 = load i32, ptr %a1, align 4
  %24 = load i32, ptr %bigv, align 4
  %cmp24 = icmp sgt i32 %23, %24
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body20
  br label %for.end74

if.end26:                                         ; preds = %for.body20
  %25 = load i32, ptr %r0, align 4
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 10
  store i32 %25, ptr %region0_count, align 8
  store i32 0, ptr %r1_bits, align 4
  %26 = load ptr, ptr %ix.addr, align 8
  %27 = load ptr, ptr %ix.addr, align 8
  %28 = load i32, ptr %a1, align 4
  %idx.ext27 = sext i32 %28 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %27, i64 %idx.ext27
  %call29 = call i32 @choose_table(ptr noundef %26, ptr noundef %add.ptr28, ptr noundef %r1_bits)
  %table_select = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 8
  %arrayidx30 = getelementptr inbounds [3 x i32], ptr %table_select, i64 0, i64 0
  store i32 %call29, ptr %arrayidx30, align 8
  %29 = load ptr, ptr %gi.addr, align 8
  %part2_3_length31 = getelementptr inbounds %struct.gr_info, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %part2_3_length31, align 8
  %31 = load i32, ptr %r1_bits, align 4
  %cmp32 = icmp slt i32 %30, %31
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  br label %for.end74

if.end34:                                         ; preds = %if.end26
  store i32 0, ptr %r1, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc69, %if.end34
  %32 = load i32, ptr %r1, align 4
  %cmp36 = icmp slt i32 %32, 8
  br i1 %cmp36, label %for.body37, label %for.end71

for.body37:                                       ; preds = %for.cond35
  %33 = load i32, ptr %r1_bits, align 4
  %34 = load i32, ptr %r0, align 4
  %35 = load i32, ptr %r1, align 4
  %add38 = add nsw i32 %34, %35
  %add39 = add nsw i32 %add38, 2
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom40
  %36 = load i32, ptr %arrayidx41, align 4
  %add42 = add nsw i32 %33, %36
  %37 = load ptr, ptr %bits, align 8
  store i32 %add42, ptr %37, align 4
  %38 = load ptr, ptr %gi.addr, align 8
  %part2_3_length43 = getelementptr inbounds %struct.gr_info, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %part2_3_length43, align 8
  %40 = load ptr, ptr %bits, align 8
  %41 = load i32, ptr %40, align 4
  %cmp44 = icmp slt i32 %39, %41
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body37
  br label %for.inc69

if.end46:                                         ; preds = %for.body37
  %42 = load i32, ptr %r0, align 4
  %43 = load i32, ptr %r1, align 4
  %add47 = add nsw i32 %42, %43
  %add48 = add nsw i32 %add47, 2
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom49
  %44 = load i32, ptr %arrayidx50, align 4
  store i32 %44, ptr %a2, align 4
  %45 = load ptr, ptr %ix.addr, align 8
  %46 = load i32, ptr %a1, align 4
  %idx.ext51 = sext i32 %46 to i64
  %add.ptr52 = getelementptr inbounds i32, ptr %45, i64 %idx.ext51
  %47 = load ptr, ptr %ix.addr, align 8
  %48 = load i32, ptr %a2, align 4
  %idx.ext53 = sext i32 %48 to i64
  %add.ptr54 = getelementptr inbounds i32, ptr %47, i64 %idx.ext53
  %49 = load ptr, ptr %bits, align 8
  %call55 = call i32 @choose_table(ptr noundef %add.ptr52, ptr noundef %add.ptr54, ptr noundef %49)
  %table_select56 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 8
  %arrayidx57 = getelementptr inbounds [3 x i32], ptr %table_select56, i64 0, i64 1
  store i32 %call55, ptr %arrayidx57, align 4
  %50 = load ptr, ptr %gi.addr, align 8
  %part2_3_length58 = getelementptr inbounds %struct.gr_info, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %part2_3_length58, align 8
  %52 = load ptr, ptr %bits, align 8
  %53 = load i32, ptr %52, align 4
  %cmp59 = icmp slt i32 %51, %53
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end46
  br label %for.inc69

if.end61:                                         ; preds = %if.end46
  %54 = load i32, ptr %r1, align 4
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 11
  store i32 %54, ptr %region1_count, align 4
  %55 = load i32, ptr %r0, align 4
  %56 = load i32, ptr %r1, align 4
  %add62 = add nsw i32 %55, %56
  %add63 = add nsw i32 %add62, 2
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [25 x i32], ptr %r3_tbl, i64 0, i64 %idxprom64
  %57 = load i32, ptr %arrayidx65, align 4
  %table_select66 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i32 0, i32 8
  %arrayidx67 = getelementptr inbounds [3 x i32], ptr %table_select66, i64 0, i64 2
  store i32 %57, ptr %arrayidx67, align 8
  %58 = load ptr, ptr %gi.addr, align 8
  %59 = load ptr, ptr %gi.addr, align 8
  %60 = call i64 @llvm.objectsize.i64.p0(ptr %59, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memcpy_chk(ptr noundef %58, ptr noundef %cod_info, i64 noundef 120, i64 noundef %60) #5
  br label %for.inc69

for.inc69:                                        ; preds = %if.end61, %if.then60, %if.then45
  %61 = load i32, ptr %r1, align 4
  %inc70 = add nsw i32 %61, 1
  store i32 %inc70, ptr %r1, align 4
  br label %for.cond35, !llvm.loop !17

for.end71:                                        ; preds = %for.cond35
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %62 = load i32, ptr %r0, align 4
  %inc73 = add nsw i32 %62, 1
  store i32 %inc73, ptr %r0, align 4
  br label %for.cond18, !llvm.loop !18

for.end74:                                        ; preds = %if.then33, %if.then25, %for.cond18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @choose_table(ptr noundef %ix, ptr noundef %end, ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %max = alloca i32, align 4
  %choice0 = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %choice1 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %ix.addr, align 8
  %1 = load ptr, ptr %end.addr, align 8
  %call = call i32 @ix_max(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %max, align 4
  %2 = load i32, ptr %max, align 4
  %cmp = icmp sgt i32 %2, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8
  store i32 100000, ptr %3, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %max, align 4
  %cmp1 = icmp sle i32 %4, 15
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %max, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  %6 = load i32, ptr %max, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %choice0, align 4
  %8 = load ptr, ptr %ix.addr, align 8
  %9 = load ptr, ptr %end.addr, align 8
  %10 = load i32, ptr %choice0, align 4
  %call6 = call i32 @count_bit_noESC(ptr noundef %8, ptr noundef %9, i32 noundef %10)
  store i32 %call6, ptr %sum0, align 4
  %11 = load i32, ptr %choice0, align 4
  store i32 %11, ptr %choice1, align 4
  %12 = load i32, ptr %choice0, align 4
  switch i32 %12, label %sw.default [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb11
    i32 5, label %sw.bb11
    i32 13, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end5, %if.end5
  %13 = load i32, ptr %choice1, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %choice1, align 4
  %14 = load i32, ptr %choice1, align 4
  %call7 = call i32 @count_bit_noESC2(i32 noundef %14)
  store i32 %call7, ptr %sum1, align 4
  %15 = load i32, ptr %sum0, align 4
  %16 = load i32, ptr %sum1, align 4
  %cmp8 = icmp sgt i32 %15, %16
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb
  %17 = load i32, ptr %sum1, align 4
  store i32 %17, ptr %sum0, align 4
  %18 = load i32, ptr %choice1, align 4
  store i32 %18, ptr %choice0, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb
  br label %sw.bb11

sw.bb11:                                          ; preds = %if.end5, %if.end5, %if.end10
  %19 = load i32, ptr %choice1, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, ptr %choice1, align 4
  %20 = load i32, ptr %choice1, align 4
  %call13 = call i32 @count_bit_noESC2(i32 noundef %20)
  store i32 %call13, ptr %sum1, align 4
  %21 = load i32, ptr %sum0, align 4
  %22 = load i32, ptr %sum1, align 4
  %cmp14 = icmp sgt i32 %21, %22
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %sw.bb11
  %23 = load i32, ptr %sum1, align 4
  store i32 %23, ptr %sum0, align 4
  %24 = load i32, ptr %choice1, align 4
  store i32 %24, ptr %choice0, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %sw.bb11
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end5
  %25 = load i32, ptr %choice1, align 4
  %add = add nsw i32 %25, 2
  store i32 %add, ptr %choice1, align 4
  %26 = load i32, ptr %choice1, align 4
  %call18 = call i32 @count_bit_noESC2(i32 noundef %26)
  store i32 %call18, ptr %sum1, align 4
  %27 = load i32, ptr %sum0, align 4
  %28 = load i32, ptr %sum1, align 4
  %cmp19 = icmp sgt i32 %27, %28
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.bb17
  %29 = load i32, ptr %sum1, align 4
  store i32 %29, ptr %sum0, align 4
  %30 = load i32, ptr %choice1, align 4
  store i32 %30, ptr %choice0, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %sw.bb17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end21, %if.end16
  %31 = load i32, ptr %sum0, align 4
  %32 = load ptr, ptr %s.addr, align 8
  %33 = load i32, ptr %32, align 4
  %add22 = add nsw i32 %33, %31
  store i32 %add22, ptr %32, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end
  %34 = load i32, ptr %max, align 4
  %sub23 = sub nsw i32 %34, 15
  store i32 %sub23, ptr %max, align 4
  store i32 24, ptr %choice1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %35 = load i32, ptr %choice1, align 4
  %cmp24 = icmp slt i32 %35, 32
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, ptr %choice1, align 4
  %idxprom25 = sext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom25
  %linmax = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx26, i32 0, i32 1
  %37 = load i32, ptr %linmax, align 4
  %38 = load i32, ptr %max, align 4
  %cmp27 = icmp sge i32 %37, %38
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body
  br label %for.end

if.end29:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %39 = load i32, ptr %choice1, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, ptr %choice1, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %if.then28, %for.cond
  %40 = load i32, ptr %choice1, align 4
  %sub31 = sub nsw i32 %40, 8
  store i32 %sub31, ptr %choice0, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc41, %for.end
  %41 = load i32, ptr %choice0, align 4
  %cmp33 = icmp slt i32 %41, 24
  br i1 %cmp33, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond32
  %42 = load i32, ptr %choice0, align 4
  %idxprom35 = sext i32 %42 to i64
  %arrayidx36 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom35
  %linmax37 = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx36, i32 0, i32 1
  %43 = load i32, ptr %linmax37, align 4
  %44 = load i32, ptr %max, align 4
  %cmp38 = icmp sge i32 %43, %44
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body34
  br label %for.end43

if.end40:                                         ; preds = %for.body34
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %45 = load i32, ptr %choice0, align 4
  %inc42 = add nsw i32 %45, 1
  store i32 %inc42, ptr %choice0, align 4
  br label %for.cond32, !llvm.loop !20

for.end43:                                        ; preds = %if.then39, %for.cond32
  %46 = load ptr, ptr %ix.addr, align 8
  %47 = load ptr, ptr %end.addr, align 8
  %48 = load i32, ptr %choice0, align 4
  %49 = load i32, ptr %choice1, align 4
  %50 = load ptr, ptr %s.addr, align 8
  %call44 = call i32 @count_bit_ESC(ptr noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49, ptr noundef %50)
  store i32 %call44, ptr %choice0, align 4
  br label %if.end45

if.end45:                                         ; preds = %for.end43, %sw.epilog
  %51 = load i32, ptr %choice0, align 4
  store i32 %51, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then4, %if.then
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @best_scalefac_store(ptr noundef %gfp, i32 noundef %gr, i32 noundef %ch, ptr noundef %l3_enc, ptr noundef %l3_side, ptr noundef %scalefac) #0 {
entry:
  %gfp.addr = alloca ptr, align 8
  %gr.addr = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  %l3_enc.addr = alloca ptr, align 8
  %l3_side.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %sfb = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %sfb100 = alloca i32, align 4
  %b = alloca i32, align 4
  %s101 = alloca i32, align 4
  store ptr %gfp, ptr %gfp.addr, align 8
  store i32 %gr, ptr %gr.addr, align 4
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %l3_enc, ptr %l3_enc.addr, align 8
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  %0 = load ptr, ptr %l3_side.addr, align 8
  %gr1 = getelementptr inbounds %struct.III_side_info_t, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %gr.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.anon.0], ptr %gr1, i64 0, i64 %idxprom
  %ch2 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %ch.addr, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch2, i64 0, i64 %idxprom3
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx4, i32 0, i32 0
  store ptr %tt, ptr %gi, align 8
  store i32 0, ptr %sfb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %3 = load i32, ptr %sfb, align 4
  %4 = load ptr, ptr %gi, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %sfb_lmax, align 8
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %scalefac.addr, align 8
  %7 = load i32, ptr %gr.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %6, i64 %idxprom5
  %8 = load i32, ptr %ch.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx6, i64 0, i64 %idxprom7
  %l9 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx8, i32 0, i32 0
  %9 = load i32, ptr %sfb, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [22 x i32], ptr %l9, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp sgt i32 %10, 0
  br i1 %cmp12, label %if.then, label %if.end38

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %sfb, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4
  store i32 %12, ptr %start, align 4
  %13 = load i32, ptr %sfb, align 4
  %add = add nsw i32 %13, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom15
  %14 = load i32, ptr %arrayidx16, align 4
  store i32 %14, ptr %end, align 4
  %15 = load i32, ptr %start, align 4
  store i32 %15, ptr %l, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then
  %16 = load i32, ptr %l, align 4
  %17 = load i32, ptr %end, align 4
  %cmp18 = icmp slt i32 %16, %17
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %18 = load ptr, ptr %l3_enc.addr, align 8
  %19 = load i32, ptr %gr.addr, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [2 x [576 x i32]], ptr %18, i64 %idxprom20
  %20 = load i32, ptr %ch.addr, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx21, i64 0, i64 %idxprom22
  %21 = load i32, ptr %l, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [576 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %22 = load i32, ptr %arrayidx25, align 4
  %cmp26 = icmp ne i32 %22, 0
  br i1 %cmp26, label %if.then27, label %if.end

if.then27:                                        ; preds = %for.body19
  br label %for.end

if.end:                                           ; preds = %for.body19
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %l, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %l, align 4
  br label %for.cond17, !llvm.loop !21

for.end:                                          ; preds = %if.then27, %for.cond17
  %24 = load i32, ptr %l, align 4
  %25 = load i32, ptr %end, align 4
  %cmp28 = icmp eq i32 %24, %25
  br i1 %cmp28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %for.end
  %26 = load ptr, ptr %scalefac.addr, align 8
  %27 = load i32, ptr %gr.addr, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %26, i64 %idxprom30
  %28 = load i32, ptr %ch.addr, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx31, i64 0, i64 %idxprom32
  %l34 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx33, i32 0, i32 0
  %29 = load i32, ptr %sfb, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [22 x i32], ptr %l34, i64 0, i64 %idxprom35
  store i32 0, ptr %arrayidx36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %for.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %for.body
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %30 = load i32, ptr %sfb, align 4
  %inc40 = add nsw i32 %30, 1
  store i32 %inc40, ptr %sfb, align 4
  br label %for.cond, !llvm.loop !22

for.end41:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc95, %for.end41
  %31 = load i32, ptr %i, align 4
  %cmp43 = icmp slt i32 %31, 3
  br i1 %cmp43, label %for.body44, label %for.end97

for.body44:                                       ; preds = %for.cond42
  %32 = load ptr, ptr %gi, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %32, i32 0, i32 17
  %33 = load i32, ptr %sfb_smax, align 4
  store i32 %33, ptr %sfb, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc92, %for.body44
  %34 = load i32, ptr %sfb, align 4
  %cmp46 = icmp slt i32 %34, 12
  br i1 %cmp46, label %for.body47, label %for.end94

for.body47:                                       ; preds = %for.cond45
  %35 = load ptr, ptr %scalefac.addr, align 8
  %36 = load i32, ptr %gr.addr, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %35, i64 %idxprom48
  %37 = load i32, ptr %ch.addr, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx49, i64 0, i64 %idxprom50
  %s = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx51, i32 0, i32 1
  %38 = load i32, ptr %sfb, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [13 x [3 x i32]], ptr %s, i64 0, i64 %idxprom52
  %39 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %39 to i64
  %arrayidx55 = getelementptr inbounds [3 x i32], ptr %arrayidx53, i64 0, i64 %idxprom54
  %40 = load i32, ptr %arrayidx55, align 4
  %cmp56 = icmp sgt i32 %40, 0
  br i1 %cmp56, label %if.then57, label %if.end91

if.then57:                                        ; preds = %for.body47
  %41 = load i32, ptr %sfb, align 4
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom58
  %42 = load i32, ptr %arrayidx59, align 4
  store i32 %42, ptr %start, align 4
  %43 = load i32, ptr %sfb, align 4
  %add60 = add nsw i32 %43, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [14 x i32], ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i32 0, i32 1), i64 0, i64 %idxprom61
  %44 = load i32, ptr %arrayidx62, align 4
  store i32 %44, ptr %end, align 4
  %45 = load i32, ptr %start, align 4
  store i32 %45, ptr %l, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc76, %if.then57
  %46 = load i32, ptr %l, align 4
  %47 = load i32, ptr %end, align 4
  %cmp64 = icmp slt i32 %46, %47
  br i1 %cmp64, label %for.body65, label %for.end78

for.body65:                                       ; preds = %for.cond63
  %48 = load ptr, ptr %l3_enc.addr, align 8
  %49 = load i32, ptr %gr.addr, align 4
  %idxprom66 = sext i32 %49 to i64
  %arrayidx67 = getelementptr inbounds [2 x [576 x i32]], ptr %48, i64 %idxprom66
  %50 = load i32, ptr %ch.addr, align 4
  %idxprom68 = sext i32 %50 to i64
  %arrayidx69 = getelementptr inbounds [2 x [576 x i32]], ptr %arrayidx67, i64 0, i64 %idxprom68
  %51 = load i32, ptr %l, align 4
  %mul = mul nsw i32 3, %51
  %52 = load i32, ptr %i, align 4
  %add70 = add nsw i32 %mul, %52
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [576 x i32], ptr %arrayidx69, i64 0, i64 %idxprom71
  %53 = load i32, ptr %arrayidx72, align 4
  %cmp73 = icmp ne i32 %53, 0
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %for.body65
  br label %for.end78

if.end75:                                         ; preds = %for.body65
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %54 = load i32, ptr %l, align 4
  %inc77 = add nsw i32 %54, 1
  store i32 %inc77, ptr %l, align 4
  br label %for.cond63, !llvm.loop !23

for.end78:                                        ; preds = %if.then74, %for.cond63
  %55 = load i32, ptr %l, align 4
  %56 = load i32, ptr %end, align 4
  %cmp79 = icmp eq i32 %55, %56
  br i1 %cmp79, label %if.then80, label %if.end90

if.then80:                                        ; preds = %for.end78
  %57 = load ptr, ptr %scalefac.addr, align 8
  %58 = load i32, ptr %gr.addr, align 4
  %idxprom81 = sext i32 %58 to i64
  %arrayidx82 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %57, i64 %idxprom81
  %59 = load i32, ptr %ch.addr, align 4
  %idxprom83 = sext i32 %59 to i64
  %arrayidx84 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx82, i64 0, i64 %idxprom83
  %s85 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx84, i32 0, i32 1
  %60 = load i32, ptr %sfb, align 4
  %idxprom86 = sext i32 %60 to i64
  %arrayidx87 = getelementptr inbounds [13 x [3 x i32]], ptr %s85, i64 0, i64 %idxprom86
  %61 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %61 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32], ptr %arrayidx87, i64 0, i64 %idxprom88
  store i32 0, ptr %arrayidx89, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then80, %for.end78
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %for.body47
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %62 = load i32, ptr %sfb, align 4
  %inc93 = add nsw i32 %62, 1
  store i32 %inc93, ptr %sfb, align 4
  br label %for.cond45, !llvm.loop !24

for.end94:                                        ; preds = %for.cond45
  br label %for.inc95

for.inc95:                                        ; preds = %for.end94
  %63 = load i32, ptr %i, align 4
  %inc96 = add nsw i32 %63, 1
  store i32 %inc96, ptr %i, align 4
  br label %for.cond42, !llvm.loop !25

for.end97:                                        ; preds = %for.cond42
  %64 = load ptr, ptr %gi, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %64, i32 0, i32 15
  %65 = load i32, ptr %part2_length, align 4
  %66 = load ptr, ptr %gi, align 8
  %part2_3_length = getelementptr inbounds %struct.gr_info, ptr %66, i32 0, i32 0
  %67 = load i32, ptr %part2_3_length, align 8
  %sub = sub i32 %67, %65
  store i32 %sub, ptr %part2_3_length, align 8
  %68 = load ptr, ptr %gi, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %68, i32 0, i32 13
  %69 = load i32, ptr %scalefac_scale, align 4
  %tobool = icmp ne i32 %69, 0
  br i1 %tobool, label %if.end195, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end97
  %70 = load ptr, ptr %gi, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %70, i32 0, i32 12
  %71 = load i32, ptr %preflag, align 8
  %tobool98 = icmp ne i32 %71, 0
  br i1 %tobool98, label %if.end195, label %if.then99

if.then99:                                        ; preds = %land.lhs.true
  store i32 0, ptr %s101, align 4
  store i32 0, ptr %sfb100, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc113, %if.then99
  %72 = load i32, ptr %sfb100, align 4
  %73 = load ptr, ptr %gi, align 8
  %sfb_lmax103 = getelementptr inbounds %struct.gr_info, ptr %73, i32 0, i32 16
  %74 = load i32, ptr %sfb_lmax103, align 8
  %cmp104 = icmp ult i32 %72, %74
  br i1 %cmp104, label %for.body105, label %for.end115

for.body105:                                      ; preds = %for.cond102
  %75 = load ptr, ptr %scalefac.addr, align 8
  %76 = load i32, ptr %gr.addr, align 4
  %idxprom106 = sext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %75, i64 %idxprom106
  %77 = load i32, ptr %ch.addr, align 4
  %idxprom108 = sext i32 %77 to i64
  %arrayidx109 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx107, i64 0, i64 %idxprom108
  %l110 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx109, i32 0, i32 0
  %78 = load i32, ptr %sfb100, align 4
  %idxprom111 = zext i32 %78 to i64
  %arrayidx112 = getelementptr inbounds [22 x i32], ptr %l110, i64 0, i64 %idxprom111
  %79 = load i32, ptr %arrayidx112, align 4
  %80 = load i32, ptr %s101, align 4
  %or = or i32 %80, %79
  store i32 %or, ptr %s101, align 4
  br label %for.inc113

for.inc113:                                       ; preds = %for.body105
  %81 = load i32, ptr %sfb100, align 4
  %inc114 = add i32 %81, 1
  store i32 %inc114, ptr %sfb100, align 4
  br label %for.cond102, !llvm.loop !26

for.end115:                                       ; preds = %for.cond102
  %82 = load ptr, ptr %gi, align 8
  %sfb_smax116 = getelementptr inbounds %struct.gr_info, ptr %82, i32 0, i32 17
  %83 = load i32, ptr %sfb_smax116, align 4
  store i32 %83, ptr %sfb100, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc136, %for.end115
  %84 = load i32, ptr %sfb100, align 4
  %cmp118 = icmp ult i32 %84, 12
  br i1 %cmp118, label %for.body119, label %for.end138

for.body119:                                      ; preds = %for.cond117
  store i32 0, ptr %b, align 4
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc133, %for.body119
  %85 = load i32, ptr %b, align 4
  %cmp121 = icmp slt i32 %85, 3
  br i1 %cmp121, label %for.body122, label %for.end135

for.body122:                                      ; preds = %for.cond120
  %86 = load ptr, ptr %scalefac.addr, align 8
  %87 = load i32, ptr %gr.addr, align 4
  %idxprom123 = sext i32 %87 to i64
  %arrayidx124 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %86, i64 %idxprom123
  %88 = load i32, ptr %ch.addr, align 4
  %idxprom125 = sext i32 %88 to i64
  %arrayidx126 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx124, i64 0, i64 %idxprom125
  %s127 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx126, i32 0, i32 1
  %89 = load i32, ptr %sfb100, align 4
  %idxprom128 = zext i32 %89 to i64
  %arrayidx129 = getelementptr inbounds [13 x [3 x i32]], ptr %s127, i64 0, i64 %idxprom128
  %90 = load i32, ptr %b, align 4
  %idxprom130 = sext i32 %90 to i64
  %arrayidx131 = getelementptr inbounds [3 x i32], ptr %arrayidx129, i64 0, i64 %idxprom130
  %91 = load i32, ptr %arrayidx131, align 4
  %92 = load i32, ptr %s101, align 4
  %or132 = or i32 %92, %91
  store i32 %or132, ptr %s101, align 4
  br label %for.inc133

for.inc133:                                       ; preds = %for.body122
  %93 = load i32, ptr %b, align 4
  %inc134 = add nsw i32 %93, 1
  store i32 %inc134, ptr %b, align 4
  br label %for.cond120, !llvm.loop !27

for.end135:                                       ; preds = %for.cond120
  br label %for.inc136

for.inc136:                                       ; preds = %for.end135
  %94 = load i32, ptr %sfb100, align 4
  %inc137 = add i32 %94, 1
  store i32 %inc137, ptr %sfb100, align 4
  br label %for.cond117, !llvm.loop !28

for.end138:                                       ; preds = %for.cond117
  %95 = load i32, ptr %s101, align 4
  %and = and i32 %95, 1
  %tobool139 = icmp ne i32 %and, 0
  br i1 %tobool139, label %if.end194, label %land.lhs.true140

land.lhs.true140:                                 ; preds = %for.end138
  %96 = load i32, ptr %s101, align 4
  %cmp141 = icmp ne i32 %96, 0
  br i1 %cmp141, label %if.then142, label %if.end194

if.then142:                                       ; preds = %land.lhs.true140
  store i32 0, ptr %sfb100, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc154, %if.then142
  %97 = load i32, ptr %sfb100, align 4
  %98 = load ptr, ptr %gi, align 8
  %sfb_lmax144 = getelementptr inbounds %struct.gr_info, ptr %98, i32 0, i32 16
  %99 = load i32, ptr %sfb_lmax144, align 8
  %cmp145 = icmp ult i32 %97, %99
  br i1 %cmp145, label %for.body146, label %for.end156

for.body146:                                      ; preds = %for.cond143
  %100 = load ptr, ptr %scalefac.addr, align 8
  %101 = load i32, ptr %gr.addr, align 4
  %idxprom147 = sext i32 %101 to i64
  %arrayidx148 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %100, i64 %idxprom147
  %102 = load i32, ptr %ch.addr, align 4
  %idxprom149 = sext i32 %102 to i64
  %arrayidx150 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx148, i64 0, i64 %idxprom149
  %l151 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx150, i32 0, i32 0
  %103 = load i32, ptr %sfb100, align 4
  %idxprom152 = zext i32 %103 to i64
  %arrayidx153 = getelementptr inbounds [22 x i32], ptr %l151, i64 0, i64 %idxprom152
  %104 = load i32, ptr %arrayidx153, align 4
  %div = sdiv i32 %104, 2
  store i32 %div, ptr %arrayidx153, align 4
  br label %for.inc154

for.inc154:                                       ; preds = %for.body146
  %105 = load i32, ptr %sfb100, align 4
  %inc155 = add i32 %105, 1
  store i32 %inc155, ptr %sfb100, align 4
  br label %for.cond143, !llvm.loop !29

for.end156:                                       ; preds = %for.cond143
  %106 = load ptr, ptr %gi, align 8
  %sfb_smax157 = getelementptr inbounds %struct.gr_info, ptr %106, i32 0, i32 17
  %107 = load i32, ptr %sfb_smax157, align 4
  store i32 %107, ptr %sfb100, align 4
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc177, %for.end156
  %108 = load i32, ptr %sfb100, align 4
  %cmp159 = icmp ult i32 %108, 12
  br i1 %cmp159, label %for.body160, label %for.end179

for.body160:                                      ; preds = %for.cond158
  store i32 0, ptr %b, align 4
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc174, %for.body160
  %109 = load i32, ptr %b, align 4
  %cmp162 = icmp slt i32 %109, 3
  br i1 %cmp162, label %for.body163, label %for.end176

for.body163:                                      ; preds = %for.cond161
  %110 = load ptr, ptr %scalefac.addr, align 8
  %111 = load i32, ptr %gr.addr, align 4
  %idxprom164 = sext i32 %111 to i64
  %arrayidx165 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %110, i64 %idxprom164
  %112 = load i32, ptr %ch.addr, align 4
  %idxprom166 = sext i32 %112 to i64
  %arrayidx167 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx165, i64 0, i64 %idxprom166
  %s168 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx167, i32 0, i32 1
  %113 = load i32, ptr %sfb100, align 4
  %idxprom169 = zext i32 %113 to i64
  %arrayidx170 = getelementptr inbounds [13 x [3 x i32]], ptr %s168, i64 0, i64 %idxprom169
  %114 = load i32, ptr %b, align 4
  %idxprom171 = sext i32 %114 to i64
  %arrayidx172 = getelementptr inbounds [3 x i32], ptr %arrayidx170, i64 0, i64 %idxprom171
  %115 = load i32, ptr %arrayidx172, align 4
  %div173 = sdiv i32 %115, 2
  store i32 %div173, ptr %arrayidx172, align 4
  br label %for.inc174

for.inc174:                                       ; preds = %for.body163
  %116 = load i32, ptr %b, align 4
  %inc175 = add nsw i32 %116, 1
  store i32 %inc175, ptr %b, align 4
  br label %for.cond161, !llvm.loop !30

for.end176:                                       ; preds = %for.cond161
  br label %for.inc177

for.inc177:                                       ; preds = %for.end176
  %117 = load i32, ptr %sfb100, align 4
  %inc178 = add i32 %117, 1
  store i32 %inc178, ptr %sfb100, align 4
  br label %for.cond158, !llvm.loop !31

for.end179:                                       ; preds = %for.cond158
  %118 = load ptr, ptr %gi, align 8
  %scalefac_scale180 = getelementptr inbounds %struct.gr_info, ptr %118, i32 0, i32 13
  store i32 1, ptr %scalefac_scale180, align 4
  %119 = load ptr, ptr %gi, align 8
  %part2_length181 = getelementptr inbounds %struct.gr_info, ptr %119, i32 0, i32 15
  store i32 99999999, ptr %part2_length181, align 4
  %120 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %120, i32 0, i32 45
  %121 = load i32, ptr %mode_gr, align 8
  %cmp182 = icmp eq i32 %121, 2
  br i1 %cmp182, label %if.then183, label %if.else

if.then183:                                       ; preds = %for.end179
  %122 = load ptr, ptr %scalefac.addr, align 8
  %123 = load i32, ptr %gr.addr, align 4
  %idxprom184 = sext i32 %123 to i64
  %arrayidx185 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %122, i64 %idxprom184
  %124 = load i32, ptr %ch.addr, align 4
  %idxprom186 = sext i32 %124 to i64
  %arrayidx187 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx185, i64 0, i64 %idxprom186
  %125 = load ptr, ptr %gi, align 8
  %call = call i32 @scale_bitcount(ptr noundef %arrayidx187, ptr noundef %125)
  br label %if.end193

if.else:                                          ; preds = %for.end179
  %126 = load ptr, ptr %scalefac.addr, align 8
  %127 = load i32, ptr %gr.addr, align 4
  %idxprom188 = sext i32 %127 to i64
  %arrayidx189 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %126, i64 %idxprom188
  %128 = load i32, ptr %ch.addr, align 4
  %idxprom190 = sext i32 %128 to i64
  %arrayidx191 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx189, i64 0, i64 %idxprom190
  %129 = load ptr, ptr %gi, align 8
  %call192 = call i32 @scale_bitcount_lsf(ptr noundef %arrayidx191, ptr noundef %129)
  br label %if.end193

if.end193:                                        ; preds = %if.else, %if.then183
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %land.lhs.true140, %for.end138
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %land.lhs.true, %for.end97
  %130 = load ptr, ptr %gfp.addr, align 8
  %mode_gr196 = getelementptr inbounds %struct.lame_global_flags, ptr %130, i32 0, i32 45
  %131 = load i32, ptr %mode_gr196, align 8
  %cmp197 = icmp eq i32 %131, 2
  br i1 %cmp197, label %land.lhs.true198, label %if.end250

land.lhs.true198:                                 ; preds = %if.end195
  %132 = load i32, ptr %gr.addr, align 4
  %cmp199 = icmp eq i32 %132, 1
  br i1 %cmp199, label %land.lhs.true200, label %if.end250

land.lhs.true200:                                 ; preds = %land.lhs.true198
  %133 = load ptr, ptr %l3_side.addr, align 8
  %gr201 = getelementptr inbounds %struct.III_side_info_t, ptr %133, i32 0, i32 4
  %arrayidx202 = getelementptr inbounds [2 x %struct.anon.0], ptr %gr201, i64 0, i64 0
  %ch203 = getelementptr inbounds %struct.anon.0, ptr %arrayidx202, i32 0, i32 0
  %134 = load i32, ptr %ch.addr, align 4
  %idxprom204 = sext i32 %134 to i64
  %arrayidx205 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch203, i64 0, i64 %idxprom204
  %tt206 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx205, i32 0, i32 0
  %block_type = getelementptr inbounds %struct.gr_info, ptr %tt206, i32 0, i32 6
  %135 = load i32, ptr %block_type, align 8
  %cmp207 = icmp ne i32 %135, 2
  br i1 %cmp207, label %land.lhs.true208, label %if.end250

land.lhs.true208:                                 ; preds = %land.lhs.true200
  %136 = load ptr, ptr %l3_side.addr, align 8
  %gr209 = getelementptr inbounds %struct.III_side_info_t, ptr %136, i32 0, i32 4
  %arrayidx210 = getelementptr inbounds [2 x %struct.anon.0], ptr %gr209, i64 0, i64 1
  %ch211 = getelementptr inbounds %struct.anon.0, ptr %arrayidx210, i32 0, i32 0
  %137 = load i32, ptr %ch.addr, align 4
  %idxprom212 = sext i32 %137 to i64
  %arrayidx213 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch211, i64 0, i64 %idxprom212
  %tt214 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx213, i32 0, i32 0
  %block_type215 = getelementptr inbounds %struct.gr_info, ptr %tt214, i32 0, i32 6
  %138 = load i32, ptr %block_type215, align 8
  %cmp216 = icmp ne i32 %138, 2
  br i1 %cmp216, label %land.lhs.true217, label %if.end250

land.lhs.true217:                                 ; preds = %land.lhs.true208
  %139 = load ptr, ptr %l3_side.addr, align 8
  %gr218 = getelementptr inbounds %struct.III_side_info_t, ptr %139, i32 0, i32 4
  %arrayidx219 = getelementptr inbounds [2 x %struct.anon.0], ptr %gr218, i64 0, i64 0
  %ch220 = getelementptr inbounds %struct.anon.0, ptr %arrayidx219, i32 0, i32 0
  %140 = load i32, ptr %ch.addr, align 4
  %idxprom221 = sext i32 %140 to i64
  %arrayidx222 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch220, i64 0, i64 %idxprom221
  %tt223 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx222, i32 0, i32 0
  %scalefac_scale224 = getelementptr inbounds %struct.gr_info, ptr %tt223, i32 0, i32 13
  %141 = load i32, ptr %scalefac_scale224, align 4
  %142 = load ptr, ptr %l3_side.addr, align 8
  %gr225 = getelementptr inbounds %struct.III_side_info_t, ptr %142, i32 0, i32 4
  %arrayidx226 = getelementptr inbounds [2 x %struct.anon.0], ptr %gr225, i64 0, i64 1
  %ch227 = getelementptr inbounds %struct.anon.0, ptr %arrayidx226, i32 0, i32 0
  %143 = load i32, ptr %ch.addr, align 4
  %idxprom228 = sext i32 %143 to i64
  %arrayidx229 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch227, i64 0, i64 %idxprom228
  %tt230 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx229, i32 0, i32 0
  %scalefac_scale231 = getelementptr inbounds %struct.gr_info, ptr %tt230, i32 0, i32 13
  %144 = load i32, ptr %scalefac_scale231, align 4
  %cmp232 = icmp eq i32 %141, %144
  br i1 %cmp232, label %land.lhs.true233, label %if.end250

land.lhs.true233:                                 ; preds = %land.lhs.true217
  %145 = load ptr, ptr %l3_side.addr, align 8
  %gr234 = getelementptr inbounds %struct.III_side_info_t, ptr %145, i32 0, i32 4
  %arrayidx235 = getelementptr inbounds [2 x %struct.anon.0], ptr %gr234, i64 0, i64 0
  %ch236 = getelementptr inbounds %struct.anon.0, ptr %arrayidx235, i32 0, i32 0
  %146 = load i32, ptr %ch.addr, align 4
  %idxprom237 = sext i32 %146 to i64
  %arrayidx238 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch236, i64 0, i64 %idxprom237
  %tt239 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx238, i32 0, i32 0
  %preflag240 = getelementptr inbounds %struct.gr_info, ptr %tt239, i32 0, i32 12
  %147 = load i32, ptr %preflag240, align 8
  %148 = load ptr, ptr %l3_side.addr, align 8
  %gr241 = getelementptr inbounds %struct.III_side_info_t, ptr %148, i32 0, i32 4
  %arrayidx242 = getelementptr inbounds [2 x %struct.anon.0], ptr %gr241, i64 0, i64 1
  %ch243 = getelementptr inbounds %struct.anon.0, ptr %arrayidx242, i32 0, i32 0
  %149 = load i32, ptr %ch.addr, align 4
  %idxprom244 = sext i32 %149 to i64
  %arrayidx245 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch243, i64 0, i64 %idxprom244
  %tt246 = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx245, i32 0, i32 0
  %preflag247 = getelementptr inbounds %struct.gr_info, ptr %tt246, i32 0, i32 12
  %150 = load i32, ptr %preflag247, align 8
  %cmp248 = icmp eq i32 %147, %150
  br i1 %cmp248, label %if.then249, label %if.end250

if.then249:                                       ; preds = %land.lhs.true233
  %151 = load i32, ptr %ch.addr, align 4
  %152 = load ptr, ptr %l3_side.addr, align 8
  %153 = load ptr, ptr %scalefac.addr, align 8
  call void @scfsi_calc(i32 noundef %151, ptr noundef %152, ptr noundef %153)
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %land.lhs.true233, %land.lhs.true217, %land.lhs.true208, %land.lhs.true200, %land.lhs.true198, %if.end195
  %154 = load ptr, ptr %gi, align 8
  %part2_length251 = getelementptr inbounds %struct.gr_info, ptr %154, i32 0, i32 15
  %155 = load i32, ptr %part2_length251, align 4
  %156 = load ptr, ptr %gi, align 8
  %part2_3_length252 = getelementptr inbounds %struct.gr_info, ptr %156, i32 0, i32 0
  %157 = load i32, ptr %part2_3_length252, align 8
  %add253 = add i32 %157, %155
  store i32 %add253, ptr %part2_3_length252, align 8
  ret void
}

declare i32 @scale_bitcount(ptr noundef, ptr noundef) #1

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @scfsi_calc(i32 noundef %ch, ptr noundef %l3_side, ptr noundef %scalefac) #0 {
entry:
  %ch.addr = alloca i32, align 4
  %l3_side.addr = alloca ptr, align 8
  %scalefac.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %sfb = alloca i32, align 4
  %gi = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %l3_side, ptr %l3_side.addr, align 8
  store ptr %scalefac, ptr %scalefac.addr, align 8
  %0 = load ptr, ptr %l3_side.addr, align 8
  %gr = getelementptr inbounds %struct.III_side_info_t, ptr %0, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x %struct.anon.0], ptr %gr, i64 0, i64 1
  %ch1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %1 = load i32, ptr %ch.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %ch1, i64 0, i64 %idxprom
  %tt = getelementptr inbounds %struct.gr_info_ss, ptr %arrayidx2, i32 0, i32 0
  store ptr %tt, ptr %gi, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %l3_side.addr, align 8
  %scfsi = getelementptr inbounds %struct.III_side_info_t, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %ch.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi, i64 0, i64 %idxprom3
  %5 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32], ptr %arrayidx4, i64 0, i64 %idxprom5
  store i32 0, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc60, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %7, 4
  br i1 %cmp8, label %for.body9, label %for.end62

for.body9:                                        ; preds = %for.cond7
  %8 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom10
  %9 = load i32, ptr %arrayidx11, align 4
  store i32 %9, ptr %sfb, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc29, %for.body9
  %10 = load i32, ptr %sfb, align 4
  %11 = load i32, ptr %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom13
  %12 = load i32, ptr %arrayidx14, align 4
  %cmp15 = icmp slt i32 %10, %12
  br i1 %cmp15, label %for.body16, label %for.end31

for.body16:                                       ; preds = %for.cond12
  %13 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx17 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %13, i64 0
  %14 = load i32, ptr %ch.addr, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx17, i64 0, i64 %idxprom18
  %l = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx19, i32 0, i32 0
  %15 = load i32, ptr %sfb, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [22 x i32], ptr %l, i64 0, i64 %idxprom20
  %16 = load i32, ptr %arrayidx21, align 4
  %17 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx22 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %17, i64 1
  %18 = load i32, ptr %ch.addr, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx22, i64 0, i64 %idxprom23
  %l25 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx24, i32 0, i32 0
  %19 = load i32, ptr %sfb, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [22 x i32], ptr %l25, i64 0, i64 %idxprom26
  %20 = load i32, ptr %arrayidx27, align 4
  %cmp28 = icmp ne i32 %16, %20
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body16
  br label %for.end31

if.end:                                           ; preds = %for.body16
  br label %for.inc29

for.inc29:                                        ; preds = %if.end
  %21 = load i32, ptr %sfb, align 4
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, ptr %sfb, align 4
  br label %for.cond12, !llvm.loop !33

for.end31:                                        ; preds = %if.then, %for.cond12
  %22 = load i32, ptr %sfb, align 4
  %23 = load i32, ptr %i, align 4
  %add32 = add nsw i32 %23, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom33
  %24 = load i32, ptr %arrayidx34, align 4
  %cmp35 = icmp eq i32 %22, %24
  br i1 %cmp35, label %if.then36, label %if.end59

if.then36:                                        ; preds = %for.end31
  %25 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom37
  %26 = load i32, ptr %arrayidx38, align 4
  store i32 %26, ptr %sfb, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc51, %if.then36
  %27 = load i32, ptr %sfb, align 4
  %28 = load i32, ptr %i, align 4
  %add40 = add nsw i32 %28, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom41
  %29 = load i32, ptr %arrayidx42, align 4
  %cmp43 = icmp slt i32 %27, %29
  br i1 %cmp43, label %for.body44, label %for.end53

for.body44:                                       ; preds = %for.cond39
  %30 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx45 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %30, i64 1
  %31 = load i32, ptr %ch.addr, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx45, i64 0, i64 %idxprom46
  %l48 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx47, i32 0, i32 0
  %32 = load i32, ptr %sfb, align 4
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [22 x i32], ptr %l48, i64 0, i64 %idxprom49
  store i32 -1, ptr %arrayidx50, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body44
  %33 = load i32, ptr %sfb, align 4
  %inc52 = add nsw i32 %33, 1
  store i32 %inc52, ptr %sfb, align 4
  br label %for.cond39, !llvm.loop !34

for.end53:                                        ; preds = %for.cond39
  %34 = load ptr, ptr %l3_side.addr, align 8
  %scfsi54 = getelementptr inbounds %struct.III_side_info_t, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %ch.addr, align 4
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [2 x [4 x i32]], ptr %scfsi54, i64 0, i64 %idxprom55
  %36 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [4 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  store i32 1, ptr %arrayidx58, align 4
  br label %if.end59

if.end59:                                         ; preds = %for.end53, %for.end31
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59
  %37 = load i32, ptr %i, align 4
  %inc61 = add nsw i32 %37, 1
  store i32 %inc61, ptr %i, align 4
  br label %for.cond7, !llvm.loop !35

for.end62:                                        ; preds = %for.cond7
  store i32 0, ptr %c1, align 4
  store i32 0, ptr %s1, align 4
  store i32 0, ptr %sfb, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc91, %for.end62
  %38 = load i32, ptr %sfb, align 4
  %cmp64 = icmp slt i32 %38, 11
  br i1 %cmp64, label %for.body65, label %for.end93

for.body65:                                       ; preds = %for.cond63
  %39 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx66 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %39, i64 1
  %40 = load i32, ptr %ch.addr, align 4
  %idxprom67 = sext i32 %40 to i64
  %arrayidx68 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx66, i64 0, i64 %idxprom67
  %l69 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx68, i32 0, i32 0
  %41 = load i32, ptr %sfb, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [22 x i32], ptr %l69, i64 0, i64 %idxprom70
  %42 = load i32, ptr %arrayidx71, align 4
  %cmp72 = icmp slt i32 %42, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body65
  br label %for.inc91

if.end74:                                         ; preds = %for.body65
  %43 = load i32, ptr %c1, align 4
  %inc75 = add nsw i32 %43, 1
  store i32 %inc75, ptr %c1, align 4
  %44 = load i32, ptr %s1, align 4
  %45 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx76 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %45, i64 1
  %46 = load i32, ptr %ch.addr, align 4
  %idxprom77 = sext i32 %46 to i64
  %arrayidx78 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx76, i64 0, i64 %idxprom77
  %l79 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx78, i32 0, i32 0
  %47 = load i32, ptr %sfb, align 4
  %idxprom80 = sext i32 %47 to i64
  %arrayidx81 = getelementptr inbounds [22 x i32], ptr %l79, i64 0, i64 %idxprom80
  %48 = load i32, ptr %arrayidx81, align 4
  %cmp82 = icmp slt i32 %44, %48
  br i1 %cmp82, label %if.then83, label %if.end90

if.then83:                                        ; preds = %if.end74
  %49 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx84 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %49, i64 1
  %50 = load i32, ptr %ch.addr, align 4
  %idxprom85 = sext i32 %50 to i64
  %arrayidx86 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx84, i64 0, i64 %idxprom85
  %l87 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx86, i32 0, i32 0
  %51 = load i32, ptr %sfb, align 4
  %idxprom88 = sext i32 %51 to i64
  %arrayidx89 = getelementptr inbounds [22 x i32], ptr %l87, i64 0, i64 %idxprom88
  %52 = load i32, ptr %arrayidx89, align 4
  store i32 %52, ptr %s1, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then83, %if.end74
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90, %if.then73
  %53 = load i32, ptr %sfb, align 4
  %inc92 = add nsw i32 %53, 1
  store i32 %inc92, ptr %sfb, align 4
  br label %for.cond63, !llvm.loop !36

for.end93:                                        ; preds = %for.cond63
  store i32 0, ptr %c2, align 4
  store i32 0, ptr %s2, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc122, %for.end93
  %54 = load i32, ptr %sfb, align 4
  %cmp95 = icmp slt i32 %54, 21
  br i1 %cmp95, label %for.body96, label %for.end124

for.body96:                                       ; preds = %for.cond94
  %55 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx97 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %55, i64 1
  %56 = load i32, ptr %ch.addr, align 4
  %idxprom98 = sext i32 %56 to i64
  %arrayidx99 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx97, i64 0, i64 %idxprom98
  %l100 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx99, i32 0, i32 0
  %57 = load i32, ptr %sfb, align 4
  %idxprom101 = sext i32 %57 to i64
  %arrayidx102 = getelementptr inbounds [22 x i32], ptr %l100, i64 0, i64 %idxprom101
  %58 = load i32, ptr %arrayidx102, align 4
  %cmp103 = icmp slt i32 %58, 0
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %for.body96
  br label %for.inc122

if.end105:                                        ; preds = %for.body96
  %59 = load i32, ptr %c2, align 4
  %inc106 = add nsw i32 %59, 1
  store i32 %inc106, ptr %c2, align 4
  %60 = load i32, ptr %s2, align 4
  %61 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx107 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %61, i64 1
  %62 = load i32, ptr %ch.addr, align 4
  %idxprom108 = sext i32 %62 to i64
  %arrayidx109 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx107, i64 0, i64 %idxprom108
  %l110 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx109, i32 0, i32 0
  %63 = load i32, ptr %sfb, align 4
  %idxprom111 = sext i32 %63 to i64
  %arrayidx112 = getelementptr inbounds [22 x i32], ptr %l110, i64 0, i64 %idxprom111
  %64 = load i32, ptr %arrayidx112, align 4
  %cmp113 = icmp slt i32 %60, %64
  br i1 %cmp113, label %if.then114, label %if.end121

if.then114:                                       ; preds = %if.end105
  %65 = load ptr, ptr %scalefac.addr, align 8
  %arrayidx115 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %65, i64 1
  %66 = load i32, ptr %ch.addr, align 4
  %idxprom116 = sext i32 %66 to i64
  %arrayidx117 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %arrayidx115, i64 0, i64 %idxprom116
  %l118 = getelementptr inbounds %struct.III_scalefac_t, ptr %arrayidx117, i32 0, i32 0
  %67 = load i32, ptr %sfb, align 4
  %idxprom119 = sext i32 %67 to i64
  %arrayidx120 = getelementptr inbounds [22 x i32], ptr %l118, i64 0, i64 %idxprom119
  %68 = load i32, ptr %arrayidx120, align 4
  store i32 %68, ptr %s2, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then114, %if.end105
  br label %for.inc122

for.inc122:                                       ; preds = %if.end121, %if.then104
  %69 = load i32, ptr %sfb, align 4
  %inc123 = add nsw i32 %69, 1
  store i32 %inc123, ptr %sfb, align 4
  br label %for.cond94, !llvm.loop !37

for.end124:                                       ; preds = %for.cond94
  store i32 0, ptr %i, align 4
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc146, %for.end124
  %70 = load i32, ptr %i, align 4
  %cmp126 = icmp slt i32 %70, 16
  br i1 %cmp126, label %for.body127, label %for.end148

for.body127:                                      ; preds = %for.cond125
  %71 = load i32, ptr %s1, align 4
  %72 = load i32, ptr %i, align 4
  %idxprom128 = sext i32 %72 to i64
  %arrayidx129 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_n, i64 0, i64 %idxprom128
  %73 = load i32, ptr %arrayidx129, align 4
  %cmp130 = icmp slt i32 %71, %73
  br i1 %cmp130, label %land.lhs.true, label %if.end145

land.lhs.true:                                    ; preds = %for.body127
  %74 = load i32, ptr %s2, align 4
  %75 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %75 to i64
  %arrayidx132 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_n, i64 0, i64 %idxprom131
  %76 = load i32, ptr %arrayidx132, align 4
  %cmp133 = icmp slt i32 %74, %76
  br i1 %cmp133, label %if.then134, label %if.end145

if.then134:                                       ; preds = %land.lhs.true
  %77 = load i32, ptr %i, align 4
  %idxprom135 = sext i32 %77 to i64
  %arrayidx136 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_tab, i64 0, i64 %idxprom135
  %78 = load i32, ptr %arrayidx136, align 4
  %79 = load i32, ptr %c1, align 4
  %mul = mul nsw i32 %78, %79
  %80 = load i32, ptr %i, align 4
  %idxprom137 = sext i32 %80 to i64
  %arrayidx138 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_tab, i64 0, i64 %idxprom137
  %81 = load i32, ptr %arrayidx138, align 4
  %82 = load i32, ptr %c2, align 4
  %mul139 = mul nsw i32 %81, %82
  %add140 = add nsw i32 %mul, %mul139
  store i32 %add140, ptr %c, align 4
  %83 = load ptr, ptr %gi, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %83, i32 0, i32 15
  %84 = load i32, ptr %part2_length, align 4
  %85 = load i32, ptr %c, align 4
  %cmp141 = icmp sgt i32 %84, %85
  br i1 %cmp141, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.then134
  %86 = load i32, ptr %c, align 4
  %87 = load ptr, ptr %gi, align 8
  %part2_length143 = getelementptr inbounds %struct.gr_info, ptr %87, i32 0, i32 15
  store i32 %86, ptr %part2_length143, align 4
  %88 = load i32, ptr %i, align 4
  %89 = load ptr, ptr %gi, align 8
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %89, i32 0, i32 4
  store i32 %88, ptr %scalefac_compress, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.then134
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %land.lhs.true, %for.body127
  br label %for.inc146

for.inc146:                                       ; preds = %if.end145
  %90 = load i32, ptr %i, align 4
  %inc147 = add nsw i32 %90, 1
  store i32 %inc147, ptr %i, align 4
  br label %for.cond125, !llvm.loop !38

for.end148:                                       ; preds = %for.cond125
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @ix_max(ptr noundef %ix, ptr noundef %end) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %max = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 0, ptr %max, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load ptr, ptr %ix.addr, align 8
  %1 = load ptr, ptr %end.addr, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %x, align 4
  %4 = load i32, ptr %max, align 4
  %5 = load i32, ptr %x, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, ptr %x, align 4
  store i32 %6, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i32, ptr %7, i32 1
  store ptr %incdec.ptr2, ptr %ix.addr, align 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %x, align 4
  %9 = load i32, ptr %max, align 4
  %10 = load i32, ptr %x, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %x, align 4
  store i32 %11, ptr %max, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %max, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @count_bit_short_noESC(ptr noundef %ix, ptr noundef %end, i32 noundef %table) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %table.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %sign = alloca i32, align 4
  %hlen = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 %table, ptr %table.addr, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sign, align 4
  %0 = load i32, ptr %table.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %hlen1 = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx, i32 0, i32 3
  %1 = load ptr, ptr %hlen1, align 8
  store ptr %1, ptr %hlen, align 8
  store ptr @cb_esc_buf, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 3
  %4 = load i32, ptr %add.ptr, align 4
  store i32 %4, ptr %y, align 4
  %5 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %x, align 4
  %7 = load i32, ptr %x, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %sign, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %sign, align 4
  %9 = load i32, ptr %x, align 4
  %mul = mul nsw i32 %9, 16
  store i32 %mul, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32, ptr %y, align 4
  %cmp3 = icmp ne i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %sign, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, ptr %sign, align 4
  %12 = load i32, ptr %y, align 4
  %13 = load i32, ptr %x, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, ptr %x, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %14 = load i32, ptr %x, align 4
  %15 = load ptr, ptr %p, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr7, ptr %p, align 8
  store i32 %14, ptr %15, align 4
  %16 = load ptr, ptr %hlen, align 8
  %17 = load i32, ptr %x, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %16, i64 %idxprom8
  %18 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %18 to i32
  %19 = load i32, ptr %sum, align 4
  %add10 = add nsw i32 %19, %conv
  store i32 %add10, ptr %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %20 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %20, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %ix.addr, align 8
  %add.ptr12 = getelementptr inbounds i32, ptr %21, i64 3
  store ptr %add.ptr12, ptr %ix.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %22 = load ptr, ptr %ix.addr, align 8
  %23 = load ptr, ptr %end.addr, align 8
  %cmp13 = icmp ult ptr %22, %23
  br i1 %cmp13, label %do.body, label %do.end, !llvm.loop !41

do.end:                                           ; preds = %do.cond
  %24 = load i32, ptr %sign, align 4
  store i32 %24, ptr @cb_esc_sign, align 4
  %25 = load ptr, ptr %p, align 8
  store ptr %25, ptr @cb_esc_end, align 8
  %26 = load i32, ptr %sum, align 4
  %27 = load i32, ptr %sign, align 4
  %add15 = add nsw i32 %26, %27
  ret i32 %add15
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @count_bit_noESC2(i32 noundef %table) #0 {
entry:
  %table.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %table, ptr %table.addr, align 4
  %0 = load i32, ptr @cb_esc_sign, align 4
  store i32 %0, ptr %sum, align 4
  store ptr @cb_esc_buf, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %table.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %hlen = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx, i32 0, i32 3
  %2 = load ptr, ptr %hlen, align 8
  %3 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %4 = load i32, ptr %3, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, ptr %sum, align 4
  %add = add nsw i32 %6, %conv
  store i32 %add, ptr %sum, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr @cb_esc_end, align 8
  %cmp = icmp ult ptr %7, %8
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !42

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %sum, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @count_bit_short_ESC(ptr noundef %ix, ptr noundef %end, i32 noundef %t1, i32 noundef %t2, ptr noundef %s) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %t1.addr = alloca i32, align 4
  %t2.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %linbits1 = alloca i32, align 4
  %linbits2 = alloca i32, align 4
  %sum = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 %t1, ptr %t1.addr, align 4
  store i32 %t2, ptr %t2.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load i32, ptr %t1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %xlen = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx, i32 0, i32 0
  %1 = load i32, ptr %xlen, align 8
  store i32 %1, ptr %linbits1, align 4
  %2 = load i32, ptr %t2.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom1
  %xlen3 = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx2, i32 0, i32 0
  %3 = load i32, ptr %xlen3, align 8
  store i32 %3, ptr %linbits2, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %5, i64 3
  %6 = load i32, ptr %add.ptr, align 4
  store i32 %6, ptr %y, align 4
  %7 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %x, align 4
  %9 = load i32, ptr %x, align 4
  %cmp4 = icmp ne i32 %9, 0
  br i1 %cmp4, label %if.then, label %if.end8

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %sum, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %sum, align 4
  %11 = load i32, ptr %x, align 4
  %cmp5 = icmp sgt i32 %11, 14
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 15, ptr %x, align 4
  %12 = load i32, ptr %linbits1, align 4
  %13 = load i32, ptr %sum1, align 4
  %add = add nsw i32 %13, %12
  store i32 %add, ptr %sum1, align 4
  %14 = load i32, ptr %linbits2, align 4
  %15 = load i32, ptr %sum2, align 4
  %add7 = add nsw i32 %15, %14
  store i32 %add7, ptr %sum2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %16 = load i32, ptr %x, align 4
  %mul = mul nsw i32 %16, 16
  store i32 %mul, ptr %x, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  %17 = load i32, ptr %y, align 4
  %cmp9 = icmp ne i32 %17, 0
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.end8
  %18 = load i32, ptr %sum, align 4
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, ptr %sum, align 4
  %19 = load i32, ptr %y, align 4
  %cmp12 = icmp sgt i32 %19, 14
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  store i32 15, ptr %y, align 4
  %20 = load i32, ptr %linbits1, align 4
  %21 = load i32, ptr %sum1, align 4
  %add14 = add nsw i32 %21, %20
  store i32 %add14, ptr %sum1, align 4
  %22 = load i32, ptr %linbits2, align 4
  %23 = load i32, ptr %sum2, align 4
  %add15 = add nsw i32 %23, %22
  store i32 %add15, ptr %sum2, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then10
  %24 = load i32, ptr %y, align 4
  %25 = load i32, ptr %x, align 4
  %add17 = add nsw i32 %25, %24
  store i32 %add17, ptr %x, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end8
  %26 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 8
  %27 = load i32, ptr %x, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %26, i64 %idxprom19
  %28 = load i8, ptr %arrayidx20, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, ptr %sum1, align 4
  %add21 = add nsw i32 %29, %conv
  store i32 %add21, ptr %sum1, align 4
  %30 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 8
  %31 = load i32, ptr %x, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %30, i64 %idxprom22
  %32 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %32 to i32
  %33 = load i32, ptr %sum2, align 4
  %add25 = add nsw i32 %33, %conv24
  store i32 %add25, ptr %sum2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %34 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %34, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %ix.addr, align 8
  %add.ptr27 = getelementptr inbounds i32, ptr %35, i64 3
  store ptr %add.ptr27, ptr %ix.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %36 = load ptr, ptr %ix.addr, align 8
  %37 = load ptr, ptr %end.addr, align 8
  %cmp28 = icmp ult ptr %36, %37
  br i1 %cmp28, label %do.body, label %do.end, !llvm.loop !44

do.end:                                           ; preds = %do.cond
  %38 = load i32, ptr %sum1, align 4
  %39 = load i32, ptr %sum2, align 4
  %cmp30 = icmp sgt i32 %38, %39
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.end
  %40 = load i32, ptr %sum2, align 4
  store i32 %40, ptr %sum1, align 4
  %41 = load i32, ptr %t2.addr, align 4
  store i32 %41, ptr %t1.addr, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.end
  %42 = load i32, ptr %sum, align 4
  %43 = load i32, ptr %sum1, align 4
  %add34 = add nsw i32 %42, %43
  %44 = load ptr, ptr %s.addr, align 8
  %45 = load i32, ptr %44, align 4
  %add35 = add nsw i32 %45, %add34
  store i32 %add35, ptr %44, align 4
  %46 = load i32, ptr %t1.addr, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @count_bit_noESC(ptr noundef %ix, ptr noundef %end, i32 noundef %table) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %table.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %sign = alloca i32, align 4
  %hlen = alloca ptr, align 8
  %p = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 %table, ptr %table.addr, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sign, align 4
  %0 = load i32, ptr %table.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %hlen1 = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx, i32 0, i32 3
  %1 = load ptr, ptr %hlen1, align 8
  store ptr %1, ptr %hlen, align 8
  store ptr @cb_esc_buf, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %x, align 4
  %4 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i32, ptr %4, i32 1
  store ptr %incdec.ptr2, ptr %ix.addr, align 8
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %y, align 4
  %6 = load i32, ptr %x, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, ptr %sign, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %sign, align 4
  %8 = load i32, ptr %x, align 4
  %mul = mul nsw i32 %8, 16
  store i32 %mul, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %9 = load i32, ptr %y, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %10 = load i32, ptr %sign, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, ptr %sign, align 4
  %11 = load i32, ptr %y, align 4
  %12 = load i32, ptr %x, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, ptr %x, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %13 = load i32, ptr %x, align 4
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr7, ptr %p, align 8
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %hlen, align 8
  %16 = load i32, ptr %x, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %15, i64 %idxprom8
  %17 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %17 to i32
  %18 = load i32, ptr %sum, align 4
  %add10 = add nsw i32 %18, %conv
  store i32 %add10, ptr %sum, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  %19 = load ptr, ptr %ix.addr, align 8
  %20 = load ptr, ptr %end.addr, align 8
  %cmp11 = icmp ult ptr %19, %20
  br i1 %cmp11, label %do.body, label %do.end, !llvm.loop !45

do.end:                                           ; preds = %do.cond
  %21 = load i32, ptr %sign, align 4
  store i32 %21, ptr @cb_esc_sign, align 4
  %22 = load ptr, ptr %p, align 8
  store ptr %22, ptr @cb_esc_end, align 8
  %23 = load i32, ptr %sum, align 4
  %24 = load i32, ptr %sign, align 4
  %add13 = add nsw i32 %23, %24
  ret i32 %add13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @count_bit_ESC(ptr noundef %ix, ptr noundef %end, i32 noundef %t1, i32 noundef %t2, ptr noundef %s) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %t1.addr = alloca i32, align 4
  %t2.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %linbits1 = alloca i32, align 4
  %linbits2 = alloca i32, align 4
  %sum = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 %t1, ptr %t1.addr, align 4
  store i32 %t2, ptr %t2.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load i32, ptr %t1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %xlen = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx, i32 0, i32 0
  %1 = load i32, ptr %xlen, align 8
  store i32 %1, ptr %linbits1, align 4
  %2 = load i32, ptr %t2.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom1
  %xlen3 = getelementptr inbounds %struct.huffcodetab, ptr %arrayidx2, i32 0, i32 0
  %3 = load i32, ptr %xlen3, align 8
  store i32 %3, ptr %linbits2, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  %4 = load ptr, ptr %ix.addr, align 8
  %5 = load ptr, ptr %end.addr, align 8
  %cmp = icmp ult ptr %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %x, align 4
  %8 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i32, ptr %8, i32 1
  store ptr %incdec.ptr4, ptr %ix.addr, align 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %y, align 4
  %10 = load i32, ptr %x, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then, label %if.end9

if.then:                                          ; preds = %while.body
  %11 = load i32, ptr %sum, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %sum, align 4
  %12 = load i32, ptr %x, align 4
  %cmp6 = icmp sgt i32 %12, 14
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 15, ptr %x, align 4
  %13 = load i32, ptr %linbits1, align 4
  %14 = load i32, ptr %sum1, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, ptr %sum1, align 4
  %15 = load i32, ptr %linbits2, align 4
  %16 = load i32, ptr %sum2, align 4
  %add8 = add nsw i32 %16, %15
  store i32 %add8, ptr %sum2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %17 = load i32, ptr %x, align 4
  %mul = mul nsw i32 %17, 16
  store i32 %mul, ptr %x, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.body
  %18 = load i32, ptr %y, align 4
  %cmp10 = icmp ne i32 %18, 0
  br i1 %cmp10, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end9
  %19 = load i32, ptr %sum, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, ptr %sum, align 4
  %20 = load i32, ptr %y, align 4
  %cmp13 = icmp sgt i32 %20, 14
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then11
  store i32 15, ptr %y, align 4
  %21 = load i32, ptr %linbits1, align 4
  %22 = load i32, ptr %sum1, align 4
  %add15 = add nsw i32 %22, %21
  store i32 %add15, ptr %sum1, align 4
  %23 = load i32, ptr %linbits2, align 4
  %24 = load i32, ptr %sum2, align 4
  %add16 = add nsw i32 %24, %23
  store i32 %add16, ptr %sum2, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11
  %25 = load i32, ptr %y, align 4
  %26 = load i32, ptr %x, align 4
  %add18 = add nsw i32 %26, %25
  store i32 %add18, ptr %x, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end9
  %27 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 8
  %28 = load i32, ptr %x, align 4
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %27, i64 %idxprom20
  %29 = load i8, ptr %arrayidx21, align 1
  %conv = zext i8 %29 to i32
  %30 = load i32, ptr %sum1, align 4
  %add22 = add nsw i32 %30, %conv
  store i32 %add22, ptr %sum1, align 4
  %31 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 8
  %32 = load i32, ptr %x, align 4
  %idxprom23 = sext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %31, i64 %idxprom23
  %33 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %33 to i32
  %34 = load i32, ptr %sum2, align 4
  %add26 = add nsw i32 %34, %conv25
  store i32 %add26, ptr %sum2, align 4
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  %35 = load i32, ptr %sum1, align 4
  %36 = load i32, ptr %sum2, align 4
  %cmp27 = icmp sgt i32 %35, %36
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  %37 = load i32, ptr %sum2, align 4
  store i32 %37, ptr %sum1, align 4
  %38 = load i32, ptr %t2.addr, align 4
  store i32 %38, ptr %t1.addr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %while.end
  %39 = load i32, ptr %sum, align 4
  %40 = load i32, ptr %sum1, align 4
  %add31 = add nsw i32 %39, %40
  %41 = load ptr, ptr %s.addr, align 8
  %42 = load i32, ptr %41, align 4
  %add32 = add nsw i32 %42, %add31
  store i32 %add32, ptr %41, align 4
  %43 = load i32, ptr %t1.addr, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
