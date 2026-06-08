; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-lame_takehiro.prepared.ll'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/takehiro.c"
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

; Function Attrs: nounwind ssp uwtable
define i32 @count_bits(ptr noundef %gfp, ptr noundef %ix, ptr noundef %xr, ptr noundef %cod_info) #0 {
entry:
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
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %0 = load i32, ptr %global_gain, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8
  %div = fdiv double 8.206000e+03, %1
  store double %div, ptr %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %xr.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds double, ptr %2, i64 %idxprom1
  %4 = load double, ptr %arrayidx2, align 8
  %5 = load double, ptr %w, align 8
  %cmp3 = fcmp ogt double %4, %5
  br i1 %cmp3, label %return, label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %gfp.addr, align 8
  %quantization = getelementptr inbounds %struct.lame_global_flags, ptr %7, i64 0, i32 60
  %8 = load i32, ptr %quantization, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.end
  %9 = load ptr, ptr %xr.addr, align 8
  %10 = load ptr, ptr %ix.addr, align 8
  %11 = load ptr, ptr %cod_info.addr, align 8
  call void @quantize_xrpow(ptr noundef %9, ptr noundef %10, ptr noundef %11) #5
  br label %if.end5

if.else:                                          ; preds = %for.end
  %12 = load ptr, ptr %xr.addr, align 8
  %13 = load ptr, ptr %ix.addr, align 8
  %14 = load ptr, ptr %cod_info.addr, align 8
  call void @quantize_xrpow_ISO(ptr noundef %12, ptr noundef %13, ptr noundef %14) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %15 = load ptr, ptr %cod_info.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %15, i64 0, i32 6
  %16 = load i32, ptr %block_type, align 8
  %cmp6 = icmp eq i32 %16, 2
  br i1 %cmp6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.end5
  %17 = load ptr, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %17, i64 36
  %call = call i32 @choose_table_short(ptr noundef %17, ptr noundef nonnull %add.ptr, ptr noundef nonnull %bits)
  %18 = load ptr, ptr %cod_info.addr, align 8
  %table_select = getelementptr inbounds %struct.gr_info, ptr %18, i64 0, i32 8
  store i32 %call, ptr %table_select, align 8
  %add.ptr9 = getelementptr inbounds i32, ptr %17, i64 36
  %19 = load ptr, ptr %ix.addr, align 8
  %add.ptr10 = getelementptr inbounds i32, ptr %19, i64 576
  %call11 = call i32 @choose_table_short(ptr noundef nonnull %add.ptr9, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %bits)
  %20 = load ptr, ptr %cod_info.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.gr_info, ptr %20, i64 0, i32 8, i64 1
  store i32 %call11, ptr %arrayidx13, align 4
  %big_values = getelementptr inbounds %struct.gr_info, ptr %20, i64 0, i32 1
  store i32 288, ptr %big_values, align 4
  br label %if.end21

if.else14:                                        ; preds = %if.end5
  %21 = load ptr, ptr %ix.addr, align 8
  %22 = load ptr, ptr %cod_info.addr, align 8
  %call15 = call i32 @count_bits_long(ptr noundef %21, ptr noundef %22)
  store i32 %call15, ptr %bits, align 4
  %count1 = getelementptr inbounds %struct.gr_info, ptr %22, i64 0, i32 2
  %23 = load i32, ptr %count1, align 8
  %big_values16 = getelementptr inbounds %struct.gr_info, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %big_values16, align 4
  %sub = sub i32 %23, %24
  %div171 = lshr i32 %sub, 2
  %25 = load ptr, ptr %cod_info.addr, align 8
  %count118 = getelementptr inbounds %struct.gr_info, ptr %25, i64 0, i32 2
  store i32 %div171, ptr %count118, align 8
  %big_values19 = getelementptr inbounds %struct.gr_info, ptr %25, i64 0, i32 1
  %26 = load i32, ptr %big_values19, align 4
  %div202 = lshr i32 %26, 1
  store i32 %div202, ptr %big_values19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %if.then7
  %27 = load i32, ptr %bits, align 4
  br label %return

return:                                           ; preds = %for.body, %if.end21
  %storemerge3 = phi i32 [ %27, %if.end21 ], [ 100000, %for.body ]
  ret i32 %storemerge3
}

declare void @quantize_xrpow(ptr noundef, ptr noundef, ptr noundef) #1

declare void @quantize_xrpow_ISO(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %call = call i32 @ix_max(ptr noundef %ix, ptr noundef %end)
  store i32 %call, ptr %max, align 4
  %cmp = icmp sgt i32 %call, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %s.addr, align 8
  store i32 100000, ptr %0, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %max, align 4
  %cmp1 = icmp slt i32 %1, 16
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %max, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  %3 = load i32, ptr %max, align 4
  %sub = add nsw i32 %3, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %choice0, align 4
  %5 = load ptr, ptr %ix.addr, align 8
  %6 = load ptr, ptr %end.addr, align 8
  %call6 = call i32 @count_bit_short_noESC(ptr noundef %5, ptr noundef %6, i32 noundef %4)
  store i32 %call6, ptr %sum0, align 4
  store i32 %4, ptr %choice1, align 4
  switch i32 %4, label %sw.epilog [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb11
    i32 5, label %sw.bb11
    i32 13, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end5, %if.end5
  %7 = load i32, ptr %choice1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %choice1, align 4
  %call7 = call i32 @count_bit_noESC2(i32 noundef %inc)
  store i32 %call7, ptr %sum1, align 4
  %8 = load i32, ptr %sum0, align 4
  %cmp8 = icmp sgt i32 %8, %call7
  br i1 %cmp8, label %if.then9, label %sw.bb11

if.then9:                                         ; preds = %sw.bb
  %9 = load i32, ptr %sum1, align 4
  store i32 %9, ptr %sum0, align 4
  %10 = load i32, ptr %choice1, align 4
  store i32 %10, ptr %choice0, align 4
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %if.then9, %if.end5, %if.end5
  %11 = load i32, ptr %choice1, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %choice1, align 4
  %call13 = call i32 @count_bit_noESC2(i32 noundef %inc12)
  store i32 %call13, ptr %sum1, align 4
  %12 = load i32, ptr %sum0, align 4
  %cmp14 = icmp sgt i32 %12, %call13
  br i1 %cmp14, label %if.then15, label %sw.epilog

if.then15:                                        ; preds = %sw.bb11
  %13 = load i32, ptr %sum1, align 4
  store i32 %13, ptr %sum0, align 4
  %14 = load i32, ptr %choice1, align 4
  store i32 %14, ptr %choice0, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end5
  %15 = load i32, ptr %choice1, align 4
  %add = add nsw i32 %15, 2
  store i32 %add, ptr %choice1, align 4
  %call18 = call i32 @count_bit_noESC2(i32 noundef %add)
  store i32 %call18, ptr %sum1, align 4
  %16 = load i32, ptr %sum0, align 4
  %cmp19 = icmp sgt i32 %16, %call18
  br i1 %cmp19, label %if.then20, label %sw.epilog

if.then20:                                        ; preds = %sw.bb17
  %17 = load i32, ptr %sum1, align 4
  store i32 %17, ptr %sum0, align 4
  %18 = load i32, ptr %choice1, align 4
  store i32 %18, ptr %choice0, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end5, %sw.bb17, %if.then20, %sw.bb11, %if.then15
  %19 = load i32, ptr %sum0, align 4
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load i32, ptr %20, align 4
  %add22 = add nsw i32 %21, %19
  store i32 %add22, ptr %20, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end
  %22 = load i32, ptr %max, align 4
  %sub23 = add nsw i32 %22, -15
  store i32 %sub23, ptr %max, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %storemerge = phi i32 [ 24, %if.else ], [ %inc30, %for.inc ]
  store i32 %storemerge, ptr %choice1, align 4
  %cmp24 = icmp slt i32 %storemerge, 32
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %choice1, align 4
  %idxprom25 = sext i32 %23 to i64
  %linmax = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom25, i32 1
  %24 = load i32, ptr %linmax, align 4
  %25 = load i32, ptr %max, align 4
  %cmp27.not = icmp slt i32 %24, %25
  br i1 %cmp27.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %choice1, align 4
  %inc30 = add nsw i32 %26, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.body, %for.cond
  %27 = load i32, ptr %choice1, align 4
  %sub31 = add nsw i32 %27, -8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc41, %for.end
  %storemerge1 = phi i32 [ %sub31, %for.end ], [ %inc42, %for.inc41 ]
  store i32 %storemerge1, ptr %choice0, align 4
  %cmp33 = icmp slt i32 %storemerge1, 24
  br i1 %cmp33, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond32
  %28 = load i32, ptr %choice0, align 4
  %idxprom35 = sext i32 %28 to i64
  %linmax37 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom35, i32 1
  %29 = load i32, ptr %linmax37, align 4
  %30 = load i32, ptr %max, align 4
  %cmp38.not = icmp slt i32 %29, %30
  br i1 %cmp38.not, label %for.inc41, label %for.end43

for.inc41:                                        ; preds = %for.body34
  %31 = load i32, ptr %choice0, align 4
  %inc42 = add nsw i32 %31, 1
  br label %for.cond32, !llvm.loop !9

for.end43:                                        ; preds = %for.body34, %for.cond32
  %32 = load ptr, ptr %ix.addr, align 8
  %33 = load ptr, ptr %end.addr, align 8
  %34 = load i32, ptr %choice0, align 4
  %35 = load i32, ptr %choice1, align 4
  %36 = load ptr, ptr %s.addr, align 8
  %call44 = call i32 @count_bit_short_ESC(ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %35, ptr noundef %36)
  store i32 %call44, ptr %choice0, align 4
  br label %if.end45

if.end45:                                         ; preds = %for.end43, %sw.epilog
  %37 = load i32, ptr %choice0, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then4, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @count_bits_long(ptr noundef %ix, ptr noundef %gi) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %gi.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %bits = alloca i32, align 4
  %p = alloca i32, align 4
  %index = alloca i32, align 4
  %scfb_anz = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %gi, ptr %gi.addr, align 8
  store i32 0, ptr %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 576, %entry ], [ %sub4, %for.inc ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp sgt i32 %storemerge, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %ix.addr, align 8
  %1 = load i32, ptr %i, align 4
  %sub = add nsw i32 %1, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %sub1 = add nsw i32 %1, -2
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %0, i64 %idxprom2
  %3 = load i32, ptr %arrayidx3, align 4
  %or = or i32 %2, %3
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %sub4 = add nsw i32 %4, -2
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.body, %for.cond
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %gi.addr, align 8
  %count1 = getelementptr inbounds %struct.gr_info, ptr %6, i64 0, i32 2
  store i32 %5, ptr %count1, align 8
  store i32 0, ptr %a1, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %if.end51, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp6 = icmp sgt i32 %7, 3
  br i1 %cmp6, label %for.body7, label %for.end57

for.body7:                                        ; preds = %for.cond5
  %8 = load ptr, ptr %ix.addr, align 8
  %9 = load i32, ptr %i, align 4
  %sub8 = add nsw i32 %9, -1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %8, i64 %idxprom9
  %10 = load i32, ptr %arrayidx10, align 4
  %sub11 = add nsw i32 %9, -2
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %8, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4
  %or14 = or i32 %10, %11
  %12 = load ptr, ptr %ix.addr, align 8
  %13 = load i32, ptr %i, align 4
  %sub15 = add nsw i32 %13, -3
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %12, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4
  %or18 = or i32 %or14, %14
  %15 = load ptr, ptr %ix.addr, align 8
  %16 = load i32, ptr %i, align 4
  %sub19 = add nsw i32 %16, -4
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %15, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4
  %or22 = or i32 %or18, %17
  %cmp23 = icmp ugt i32 %or22, 1
  br i1 %cmp23, label %for.end57, label %if.end25

if.end25:                                         ; preds = %for.body7
  %18 = load ptr, ptr %ix.addr, align 8
  %19 = load i32, ptr %i, align 4
  %sub26 = add nsw i32 %19, -1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %18, i64 %idxprom27
  %20 = load i32, ptr %arrayidx28, align 4
  store i32 %20, ptr %p, align 4
  %21 = load i32, ptr %bits, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, ptr %bits, align 4
  %22 = load ptr, ptr %ix.addr, align 8
  %23 = load i32, ptr %i, align 4
  %sub29 = add nsw i32 %23, -2
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %22, i64 %idxprom30
  %24 = load i32, ptr %arrayidx31, align 4
  %cmp32.not = icmp eq i32 %24, 0
  br i1 %cmp32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end25
  %25 = load i32, ptr %p, align 4
  %add34 = add nsw i32 %25, 2
  store i32 %add34, ptr %p, align 4
  %26 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %bits, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end25
  %27 = load ptr, ptr %ix.addr, align 8
  %28 = load i32, ptr %i, align 4
  %sub36 = add nsw i32 %28, -3
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %27, i64 %idxprom37
  %29 = load i32, ptr %arrayidx38, align 4
  %cmp39.not = icmp eq i32 %29, 0
  br i1 %cmp39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end35
  %30 = load i32, ptr %p, align 4
  %add41 = add nsw i32 %30, 4
  store i32 %add41, ptr %p, align 4
  %31 = load i32, ptr %bits, align 4
  %inc42 = add nsw i32 %31, 1
  store i32 %inc42, ptr %bits, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end35
  %32 = load ptr, ptr %ix.addr, align 8
  %33 = load i32, ptr %i, align 4
  %sub44 = add nsw i32 %33, -4
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %32, i64 %idxprom45
  %34 = load i32, ptr %arrayidx46, align 4
  %cmp47.not = icmp eq i32 %34, 0
  br i1 %cmp47.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end43
  %35 = load i32, ptr %p, align 4
  %add49 = add nsw i32 %35, 8
  store i32 %add49, ptr %p, align 4
  %36 = load i32, ptr %bits, align 4
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, ptr %bits, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43
  %37 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 32, i32 3), align 8
  %38 = load i32, ptr %p, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %37, i64 %idxprom52
  %39 = load i8, ptr %arrayidx53, align 1
  %conv = zext i8 %39 to i32
  %40 = load i32, ptr %a1, align 4
  %add54 = add nsw i32 %40, %conv
  store i32 %add54, ptr %a1, align 4
  %41 = load i32, ptr %i, align 4
  %sub56 = add nsw i32 %41, -4
  store i32 %sub56, ptr %i, align 4
  br label %for.cond5, !llvm.loop !11

for.end57:                                        ; preds = %for.body7, %for.cond5
  %42 = load ptr, ptr %gi.addr, align 8
  %count158 = getelementptr inbounds %struct.gr_info, ptr %42, i64 0, i32 2
  %43 = load i32, ptr %count158, align 8
  %44 = load i32, ptr %i, align 4
  %sub59 = sub i32 %43, %44
  store i32 %sub59, ptr %a2, align 4
  %45 = load i32, ptr %a1, align 4
  %cmp60 = icmp slt i32 %45, %sub59
  br i1 %cmp60, label %if.then62, label %if.else

if.then62:                                        ; preds = %for.end57
  %46 = load i32, ptr %a1, align 4
  %47 = load i32, ptr %bits, align 4
  %add63 = add nsw i32 %47, %46
  store i32 %add63, ptr %bits, align 4
  %48 = load ptr, ptr %gi.addr, align 8
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %48, i64 0, i32 14
  store i32 0, ptr %count1table_select, align 8
  br label %if.end66

if.else:                                          ; preds = %for.end57
  %49 = load i32, ptr %a2, align 4
  %50 = load i32, ptr %bits, align 4
  %add64 = add nsw i32 %50, %49
  store i32 %add64, ptr %bits, align 4
  %51 = load ptr, ptr %gi.addr, align 8
  %count1table_select65 = getelementptr inbounds %struct.gr_info, ptr %51, i64 0, i32 14
  store i32 1, ptr %count1table_select65, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then62
  %52 = load i32, ptr %bits, align 4
  %53 = load ptr, ptr %gi.addr, align 8
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %53, i64 0, i32 18
  store i32 %52, ptr %count1bits, align 8
  %54 = load i32, ptr %i, align 4
  %big_values = getelementptr inbounds %struct.gr_info, ptr %53, i64 0, i32 1
  store i32 %54, ptr %big_values, align 4
  %cmp67 = icmp eq i32 %54, 0
  br i1 %cmp67, label %return, label %if.end70

if.end70:                                         ; preds = %if.end66
  %55 = load ptr, ptr %gi.addr, align 8
  %block_type = getelementptr inbounds %struct.gr_info, ptr %55, i64 0, i32 6
  %56 = load i32, ptr %block_type, align 8
  %cmp71 = icmp eq i32 %56, 0
  br i1 %cmp71, label %if.then73, label %if.else116

if.then73:                                        ; preds = %if.end70
  store i32 0, ptr %scfb_anz, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then73
  %57 = load i32, ptr %scfb_anz, align 4
  %inc74 = add nsw i32 %57, 1
  store i32 %inc74, ptr %scfb_anz, align 4
  %idxprom75 = sext i32 %inc74 to i64
  %arrayidx76 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom75
  %58 = load i32, ptr %arrayidx76, align 4
  %59 = load i32, ptr %i, align 4
  %cmp77 = icmp slt i32 %58, %59
  br i1 %cmp77, label %while.cond, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %60 = load i32, ptr %scfb_anz, align 4
  %idxprom79 = sext i32 %60 to i64
  %arrayidx80 = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %idxprom79
  %61 = load i32, ptr %arrayidx80, align 4
  br label %while.cond81

while.cond81:                                     ; preds = %while.body87, %while.end
  %storemerge2 = phi i32 [ %61, %while.end ], [ %dec, %while.body87 ]
  store i32 %storemerge2, ptr %index, align 4
  %add82 = add nsw i32 %storemerge2, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom83
  %62 = load i32, ptr %arrayidx84, align 4
  %63 = load i32, ptr %i, align 4
  %cmp85 = icmp sgt i32 %62, %63
  br i1 %cmp85, label %while.body87, label %while.end88

while.body87:                                     ; preds = %while.cond81
  %64 = load i32, ptr %index, align 4
  %dec = add nsw i32 %64, -1
  br label %while.cond81, !llvm.loop !13

while.end88:                                      ; preds = %while.cond81
  %65 = load i32, ptr %index, align 4
  %66 = load ptr, ptr %gi.addr, align 8
  %region0_count89 = getelementptr inbounds %struct.gr_info, ptr %66, i64 0, i32 10
  store i32 %65, ptr %region0_count89, align 8
  %67 = load i32, ptr %scfb_anz, align 4
  %idxprom90 = sext i32 %67 to i64
  %region1_count = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %idxprom90, i32 1
  %68 = load i32, ptr %region1_count, align 4
  br label %while.cond92

while.cond92:                                     ; preds = %while.body100, %while.end88
  %storemerge3 = phi i32 [ %68, %while.end88 ], [ %dec101, %while.body100 ]
  store i32 %storemerge3, ptr %index, align 4
  %69 = load ptr, ptr %gi.addr, align 8
  %region0_count93 = getelementptr inbounds %struct.gr_info, ptr %69, i64 0, i32 10
  %70 = load i32, ptr %region0_count93, align 8
  %add94 = add i32 %storemerge3, %70
  %add95 = add i32 %add94, 2
  %idxprom96 = zext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom96
  %71 = load i32, ptr %arrayidx97, align 4
  %72 = load i32, ptr %i, align 4
  %cmp98 = icmp sgt i32 %71, %72
  br i1 %cmp98, label %while.body100, label %while.end102

while.body100:                                    ; preds = %while.cond92
  %73 = load i32, ptr %index, align 4
  %dec101 = add nsw i32 %73, -1
  br label %while.cond92, !llvm.loop !14

while.end102:                                     ; preds = %while.cond92
  %74 = load i32, ptr %index, align 4
  %75 = load ptr, ptr %gi.addr, align 8
  %region1_count103 = getelementptr inbounds %struct.gr_info, ptr %75, i64 0, i32 11
  store i32 %74, ptr %region1_count103, align 4
  %region0_count104 = getelementptr inbounds %struct.gr_info, ptr %75, i64 0, i32 10
  %76 = load i32, ptr %region0_count104, align 8
  %add105 = add i32 %76, 1
  %idxprom106 = zext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom106
  %77 = load i32, ptr %arrayidx107, align 4
  store i32 %77, ptr %a1, align 4
  %78 = load i32, ptr %index, align 4
  %79 = load ptr, ptr %gi.addr, align 8
  %region0_count108 = getelementptr inbounds %struct.gr_info, ptr %79, i64 0, i32 10
  %80 = load i32, ptr %region0_count108, align 8
  %add109 = add i32 %78, %80
  %add110 = add i32 %add109, 2
  %idxprom111 = zext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom111
  %81 = load i32, ptr %arrayidx112, align 4
  store i32 %81, ptr %a2, align 4
  %82 = load ptr, ptr %ix.addr, align 8
  %idx.ext = sext i32 %81 to i64
  %add.ptr = getelementptr inbounds i32, ptr %82, i64 %idx.ext
  %83 = load i32, ptr %i, align 4
  %idx.ext113 = sext i32 %83 to i64
  %add.ptr114 = getelementptr inbounds i32, ptr %82, i64 %idx.ext113
  %call = call i32 @choose_table(ptr noundef %add.ptr, ptr noundef %add.ptr114, ptr noundef nonnull %bits)
  %84 = load ptr, ptr %gi.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.gr_info, ptr %84, i64 0, i32 8, i64 2
  store i32 %call, ptr %arrayidx115, align 8
  br label %if.end123

if.else116:                                       ; preds = %if.end70
  %85 = load ptr, ptr %gi.addr, align 8
  %region0_count117 = getelementptr inbounds %struct.gr_info, ptr %85, i64 0, i32 10
  store i32 7, ptr %region0_count117, align 8
  %region1_count118 = getelementptr inbounds %struct.gr_info, ptr %85, i64 0, i32 11
  store i32 13, ptr %region1_count118, align 4
  %86 = load i32, ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 0, i64 8), align 4
  store i32 %86, ptr %a1, align 4
  %87 = load i32, ptr %i, align 4
  store i32 %87, ptr %a2, align 4
  %cmp119 = icmp sgt i32 %86, %87
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.else116
  %88 = load i32, ptr %a2, align 4
  store i32 %88, ptr %a1, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.else116, %if.then121, %while.end102
  %89 = load ptr, ptr %ix.addr, align 8
  %90 = load i32, ptr %a1, align 4
  %idx.ext124 = sext i32 %90 to i64
  %add.ptr125 = getelementptr inbounds i32, ptr %89, i64 %idx.ext124
  %call126 = call i32 @choose_table(ptr noundef %89, ptr noundef %add.ptr125, ptr noundef nonnull %bits)
  %91 = load ptr, ptr %gi.addr, align 8
  %table_select127 = getelementptr inbounds %struct.gr_info, ptr %91, i64 0, i32 8
  store i32 %call126, ptr %table_select127, align 8
  %92 = load ptr, ptr %ix.addr, align 8
  %93 = load i32, ptr %a1, align 4
  %idx.ext129 = sext i32 %93 to i64
  %add.ptr130 = getelementptr inbounds i32, ptr %92, i64 %idx.ext129
  %94 = load i32, ptr %a2, align 4
  %idx.ext131 = sext i32 %94 to i64
  %add.ptr132 = getelementptr inbounds i32, ptr %92, i64 %idx.ext131
  %call133 = call i32 @choose_table(ptr noundef %add.ptr130, ptr noundef %add.ptr132, ptr noundef nonnull %bits)
  %95 = load ptr, ptr %gi.addr, align 8
  %arrayidx135 = getelementptr inbounds %struct.gr_info, ptr %95, i64 0, i32 8, i64 1
  store i32 %call133, ptr %arrayidx135, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.end123
  %storemerge1 = load i32, ptr %bits, align 4
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define void @best_huffman_divide(i32 noundef %gr, i32 noundef %ch, ptr noundef %gi, ptr noundef %ix) #0 {
entry:
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
  store ptr %gi, ptr %gi.addr, align 8
  store ptr %ix, ptr %ix.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %cod_info, ptr noundef nonnull align 8 dereferenceable(120) %gi, i64 120, i1 false)
  %big_values = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 1
  %0 = load i32, ptr %big_values, align 4
  %mul = shl i32 %0, 1
  store i32 %mul, ptr %bigv, align 4
  store ptr %cod_info, ptr %bits, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %storemerge = phi i32 [ 2, %entry ], [ %inc, %if.end ]
  store i32 %storemerge, ptr %r0, align 4
  %cmp = icmp slt i32 %storemerge, 23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %r0, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %a2, align 4
  %3 = load i32, ptr %bigv, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 18
  %4 = load i32, ptr %count1bits, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 15
  %5 = load i32, ptr %part2_length, align 4
  %add = add i32 %4, %5
  %6 = load i32, ptr %r0, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom2
  store i32 %add, ptr %arrayidx3, align 4
  %7 = load ptr, ptr %ix.addr, align 8
  %8 = load i32, ptr %a2, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, ptr %7, i64 %idx.ext
  %9 = load i32, ptr %bigv, align 4
  %idx.ext4 = sext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds i32, ptr %7, i64 %idx.ext4
  %10 = load i32, ptr %r0, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom6
  %call = call i32 @choose_table(ptr noundef %add.ptr, ptr noundef %add.ptr5, ptr noundef nonnull %arrayidx7)
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [25 x i32], ptr %r3_tbl, i64 0, i64 %idxprom8
  store i32 %call, ptr %arrayidx9, align 4
  %11 = load i32, ptr %r0, align 4
  %inc = add nsw i32 %11, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.body, %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.body12, %for.end
  %12 = load i32, ptr %r0, align 4
  %cmp11 = icmp slt i32 %12, 25
  br i1 %cmp11, label %for.body12, label %for.cond18

for.body12:                                       ; preds = %for.cond10
  %13 = load i32, ptr %r0, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom13
  store i32 100000, ptr %arrayidx14, align 4
  %14 = load i32, ptr %r0, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, ptr %r0, align 4
  br label %for.cond10, !llvm.loop !16

for.cond18:                                       ; preds = %for.cond10, %for.inc72
  %storemerge1 = phi i32 [ %inc73, %for.inc72 ], [ 0, %for.cond10 ]
  store i32 %storemerge1, ptr %r0, align 4
  %cmp19 = icmp slt i32 %storemerge1, 16
  br i1 %cmp19, label %for.body20, label %for.end74

for.body20:                                       ; preds = %for.cond18
  %15 = load i32, ptr %r0, align 4
  %add21 = add nsw i32 %15, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom22
  %16 = load i32, ptr %arrayidx23, align 4
  store i32 %16, ptr %a1, align 4
  %17 = load i32, ptr %bigv, align 4
  %cmp24 = icmp sgt i32 %16, %17
  br i1 %cmp24, label %for.end74, label %if.end26

if.end26:                                         ; preds = %for.body20
  %18 = load i32, ptr %r0, align 4
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 10
  store i32 %18, ptr %region0_count, align 8
  store i32 0, ptr %r1_bits, align 4
  %19 = load ptr, ptr %ix.addr, align 8
  %20 = load i32, ptr %a1, align 4
  %idx.ext27 = sext i32 %20 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %19, i64 %idx.ext27
  %call29 = call i32 @choose_table(ptr noundef %19, ptr noundef %add.ptr28, ptr noundef nonnull %r1_bits)
  %table_select = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8
  store i32 %call29, ptr %table_select, align 8
  %21 = load ptr, ptr %gi.addr, align 8
  %22 = load i32, ptr %21, align 8
  %23 = load i32, ptr %r1_bits, align 4
  %cmp32 = icmp slt i32 %22, %23
  br i1 %cmp32, label %for.end74, label %for.cond35

for.cond35:                                       ; preds = %if.end26, %for.inc69
  %storemerge2 = phi i32 [ %inc70, %for.inc69 ], [ 0, %if.end26 ]
  store i32 %storemerge2, ptr %r1, align 4
  %cmp36 = icmp slt i32 %storemerge2, 8
  br i1 %cmp36, label %for.body37, label %for.inc72

for.body37:                                       ; preds = %for.cond35
  %24 = load i32, ptr %r1_bits, align 4
  %25 = load i32, ptr %r0, align 4
  %26 = load i32, ptr %r1, align 4
  %add38 = add nsw i32 %25, %26
  %add39 = add nsw i32 %add38, 2
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %idxprom40
  %27 = load i32, ptr %arrayidx41, align 4
  %add42 = add nsw i32 %24, %27
  %28 = load ptr, ptr %bits, align 8
  store i32 %add42, ptr %28, align 4
  %29 = load ptr, ptr %gi.addr, align 8
  %30 = load i32, ptr %29, align 8
  %cmp44 = icmp slt i32 %30, %add42
  br i1 %cmp44, label %for.inc69, label %if.end46

if.end46:                                         ; preds = %for.body37
  %31 = load i32, ptr %r0, align 4
  %32 = load i32, ptr %r1, align 4
  %add47 = add nsw i32 %31, %32
  %add48 = add nsw i32 %add47, 2
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom49
  %33 = load i32, ptr %arrayidx50, align 4
  store i32 %33, ptr %a2, align 4
  %34 = load ptr, ptr %ix.addr, align 8
  %35 = load i32, ptr %a1, align 4
  %idx.ext51 = sext i32 %35 to i64
  %add.ptr52 = getelementptr inbounds i32, ptr %34, i64 %idx.ext51
  %idx.ext53 = sext i32 %33 to i64
  %add.ptr54 = getelementptr inbounds i32, ptr %34, i64 %idx.ext53
  %36 = load ptr, ptr %bits, align 8
  %call55 = call i32 @choose_table(ptr noundef %add.ptr52, ptr noundef %add.ptr54, ptr noundef %36)
  %arrayidx57 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8, i64 1
  store i32 %call55, ptr %arrayidx57, align 4
  %37 = load ptr, ptr %gi.addr, align 8
  %38 = load i32, ptr %37, align 8
  %39 = load i32, ptr %36, align 4
  %cmp59 = icmp slt i32 %38, %39
  br i1 %cmp59, label %for.inc69, label %if.end61

if.end61:                                         ; preds = %if.end46
  %40 = load i32, ptr %r1, align 4
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 11
  store i32 %40, ptr %region1_count, align 4
  %41 = load i32, ptr %r0, align 4
  %add62 = add nsw i32 %41, %40
  %add63 = add nsw i32 %add62, 2
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [25 x i32], ptr %r3_tbl, i64 0, i64 %idxprom64
  %42 = load i32, ptr %arrayidx65, align 4
  %arrayidx67 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8, i64 2
  store i32 %42, ptr %arrayidx67, align 8
  %43 = load ptr, ptr %gi.addr, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call68 = call ptr @__memcpy_chk(ptr noundef %43, ptr noundef nonnull %cod_info, i64 noundef 120, i64 noundef %44) #5
  br label %for.inc69

for.inc69:                                        ; preds = %if.end46, %for.body37, %if.end61
  %45 = load i32, ptr %r1, align 4
  %inc70 = add nsw i32 %45, 1
  br label %for.cond35, !llvm.loop !17

for.inc72:                                        ; preds = %for.cond35
  %46 = load i32, ptr %r0, align 4
  %inc73 = add nsw i32 %46, 1
  br label %for.cond18, !llvm.loop !18

for.end74:                                        ; preds = %if.end26, %for.body20, %for.cond18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
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
  %call = call i32 @ix_max(ptr noundef %ix, ptr noundef %end)
  store i32 %call, ptr %max, align 4
  %cmp = icmp sgt i32 %call, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %s.addr, align 8
  store i32 100000, ptr %0, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %max, align 4
  %cmp1 = icmp slt i32 %1, 16
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %max, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.then2
  %3 = load i32, ptr %max, align 4
  %sub = add nsw i32 %3, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %choice0, align 4
  %5 = load ptr, ptr %ix.addr, align 8
  %6 = load ptr, ptr %end.addr, align 8
  %call6 = call i32 @count_bit_noESC(ptr noundef %5, ptr noundef %6, i32 noundef %4)
  store i32 %call6, ptr %sum0, align 4
  store i32 %4, ptr %choice1, align 4
  switch i32 %4, label %sw.epilog [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb11
    i32 5, label %sw.bb11
    i32 13, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end5, %if.end5
  %7 = load i32, ptr %choice1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %choice1, align 4
  %call7 = call i32 @count_bit_noESC2(i32 noundef %inc)
  store i32 %call7, ptr %sum1, align 4
  %8 = load i32, ptr %sum0, align 4
  %cmp8 = icmp sgt i32 %8, %call7
  br i1 %cmp8, label %if.then9, label %sw.bb11

if.then9:                                         ; preds = %sw.bb
  %9 = load i32, ptr %sum1, align 4
  store i32 %9, ptr %sum0, align 4
  %10 = load i32, ptr %choice1, align 4
  store i32 %10, ptr %choice0, align 4
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %if.then9, %if.end5, %if.end5
  %11 = load i32, ptr %choice1, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %choice1, align 4
  %call13 = call i32 @count_bit_noESC2(i32 noundef %inc12)
  store i32 %call13, ptr %sum1, align 4
  %12 = load i32, ptr %sum0, align 4
  %cmp14 = icmp sgt i32 %12, %call13
  br i1 %cmp14, label %if.then15, label %sw.epilog

if.then15:                                        ; preds = %sw.bb11
  %13 = load i32, ptr %sum1, align 4
  store i32 %13, ptr %sum0, align 4
  %14 = load i32, ptr %choice1, align 4
  store i32 %14, ptr %choice0, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end5
  %15 = load i32, ptr %choice1, align 4
  %add = add nsw i32 %15, 2
  store i32 %add, ptr %choice1, align 4
  %call18 = call i32 @count_bit_noESC2(i32 noundef %add)
  store i32 %call18, ptr %sum1, align 4
  %16 = load i32, ptr %sum0, align 4
  %cmp19 = icmp sgt i32 %16, %call18
  br i1 %cmp19, label %if.then20, label %sw.epilog

if.then20:                                        ; preds = %sw.bb17
  %17 = load i32, ptr %sum1, align 4
  store i32 %17, ptr %sum0, align 4
  %18 = load i32, ptr %choice1, align 4
  store i32 %18, ptr %choice0, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end5, %sw.bb17, %if.then20, %sw.bb11, %if.then15
  %19 = load i32, ptr %sum0, align 4
  %20 = load ptr, ptr %s.addr, align 8
  %21 = load i32, ptr %20, align 4
  %add22 = add nsw i32 %21, %19
  store i32 %add22, ptr %20, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end
  %22 = load i32, ptr %max, align 4
  %sub23 = add nsw i32 %22, -15
  store i32 %sub23, ptr %max, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %storemerge = phi i32 [ 24, %if.else ], [ %inc30, %for.inc ]
  store i32 %storemerge, ptr %choice1, align 4
  %cmp24 = icmp slt i32 %storemerge, 32
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %choice1, align 4
  %idxprom25 = sext i32 %23 to i64
  %linmax = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom25, i32 1
  %24 = load i32, ptr %linmax, align 4
  %25 = load i32, ptr %max, align 4
  %cmp27.not = icmp slt i32 %24, %25
  br i1 %cmp27.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %choice1, align 4
  %inc30 = add nsw i32 %26, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.body, %for.cond
  %27 = load i32, ptr %choice1, align 4
  %sub31 = add nsw i32 %27, -8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc41, %for.end
  %storemerge1 = phi i32 [ %sub31, %for.end ], [ %inc42, %for.inc41 ]
  store i32 %storemerge1, ptr %choice0, align 4
  %cmp33 = icmp slt i32 %storemerge1, 24
  br i1 %cmp33, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond32
  %28 = load i32, ptr %choice0, align 4
  %idxprom35 = sext i32 %28 to i64
  %linmax37 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom35, i32 1
  %29 = load i32, ptr %linmax37, align 4
  %30 = load i32, ptr %max, align 4
  %cmp38.not = icmp slt i32 %29, %30
  br i1 %cmp38.not, label %for.inc41, label %for.end43

for.inc41:                                        ; preds = %for.body34
  %31 = load i32, ptr %choice0, align 4
  %inc42 = add nsw i32 %31, 1
  br label %for.cond32, !llvm.loop !20

for.end43:                                        ; preds = %for.body34, %for.cond32
  %32 = load ptr, ptr %ix.addr, align 8
  %33 = load ptr, ptr %end.addr, align 8
  %34 = load i32, ptr %choice0, align 4
  %35 = load i32, ptr %choice1, align 4
  %36 = load ptr, ptr %s.addr, align 8
  %call44 = call i32 @count_bit_ESC(ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %35, ptr noundef %36)
  store i32 %call44, ptr %choice0, align 4
  br label %if.end45

if.end45:                                         ; preds = %for.end43, %sw.epilog
  %37 = load i32, ptr %choice0, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then4, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
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
  %idxprom = sext i32 %gr to i64
  %arrayidx = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %idxprom
  %idxprom3 = sext i32 %ch to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx, i64 0, i64 %idxprom3
  store ptr %arrayidx4, ptr %gi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc40, %for.inc39 ]
  store i32 %storemerge, ptr %sfb, align 4
  %0 = load ptr, ptr %gi, align 8
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %0, i64 0, i32 16
  %1 = load i32, ptr %sfb_lmax, align 8
  %cmp = icmp ult i32 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.cond42

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %scalefac.addr, align 8
  %3 = load i32, ptr %gr.addr, align 4
  %idxprom5 = sext i32 %3 to i64
  %4 = load i32, ptr %ch.addr, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %2, i64 %idxprom5, i64 %idxprom7
  %5 = load i32, ptr %sfb, align 4
  %idxprom10 = sext i32 %5 to i64
  %arrayidx11 = getelementptr inbounds [22 x i32], ptr %arrayidx8, i64 0, i64 %idxprom10
  %6 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp sgt i32 %6, 0
  br i1 %cmp12, label %if.then, label %for.inc39

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %sfb, align 4
  %idxprom13 = sext i32 %7 to i64
  %arrayidx14 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom13
  %8 = load i32, ptr %arrayidx14, align 4
  %add = add nsw i32 %7, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom15
  %9 = load i32, ptr %arrayidx16, align 4
  store i32 %9, ptr %end, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then
  %storemerge10 = phi i32 [ %8, %if.then ], [ %inc, %for.inc ]
  store i32 %storemerge10, ptr %l, align 4
  %10 = load i32, ptr %end, align 4
  %cmp18 = icmp slt i32 %storemerge10, %10
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %11 = load ptr, ptr %l3_enc.addr, align 8
  %12 = load i32, ptr %gr.addr, align 4
  %idxprom20 = sext i32 %12 to i64
  %13 = load i32, ptr %ch.addr, align 4
  %idxprom22 = sext i32 %13 to i64
  %14 = load i32, ptr %l, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [2 x [576 x i32]], ptr %11, i64 %idxprom20, i64 %idxprom22, i64 %idxprom24
  %15 = load i32, ptr %arrayidx25, align 4
  %cmp26.not = icmp eq i32 %15, 0
  br i1 %cmp26.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body19
  %16 = load i32, ptr %l, align 4
  %inc = add nsw i32 %16, 1
  br label %for.cond17, !llvm.loop !21

for.end:                                          ; preds = %for.body19, %for.cond17
  %17 = load i32, ptr %l, align 4
  %18 = load i32, ptr %end, align 4
  %cmp28 = icmp eq i32 %17, %18
  br i1 %cmp28, label %if.then29, label %for.inc39

if.then29:                                        ; preds = %for.end
  %19 = load ptr, ptr %scalefac.addr, align 8
  %20 = load i32, ptr %gr.addr, align 4
  %idxprom30 = sext i32 %20 to i64
  %21 = load i32, ptr %ch.addr, align 4
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %19, i64 %idxprom30, i64 %idxprom32
  %22 = load i32, ptr %sfb, align 4
  %idxprom35 = sext i32 %22 to i64
  %arrayidx36 = getelementptr inbounds [22 x i32], ptr %arrayidx33, i64 0, i64 %idxprom35
  store i32 0, ptr %arrayidx36, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body, %if.then29, %for.end
  %23 = load i32, ptr %sfb, align 4
  %inc40 = add nsw i32 %23, 1
  br label %for.cond, !llvm.loop !22

for.cond42:                                       ; preds = %for.cond, %for.inc95
  %storemerge1 = phi i32 [ %inc96, %for.inc95 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp43 = icmp slt i32 %storemerge1, 3
  br i1 %cmp43, label %for.body44, label %for.end97

for.body44:                                       ; preds = %for.cond42
  %24 = load ptr, ptr %gi, align 8
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %24, i64 0, i32 17
  %25 = load i32, ptr %sfb_smax, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc92, %for.body44
  %storemerge8 = phi i32 [ %25, %for.body44 ], [ %inc93, %for.inc92 ]
  store i32 %storemerge8, ptr %sfb, align 4
  %cmp46 = icmp slt i32 %storemerge8, 12
  br i1 %cmp46, label %for.body47, label %for.inc95

for.body47:                                       ; preds = %for.cond45
  %26 = load ptr, ptr %scalefac.addr, align 8
  %27 = load i32, ptr %gr.addr, align 4
  %idxprom48 = sext i32 %27 to i64
  %28 = load i32, ptr %ch.addr, align 4
  %idxprom50 = sext i32 %28 to i64
  %29 = load i32, ptr %sfb, align 4
  %idxprom52 = sext i32 %29 to i64
  %30 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %30 to i64
  %arrayidx55 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %26, i64 %idxprom48, i64 %idxprom50, i32 1, i64 %idxprom52, i64 %idxprom54
  %31 = load i32, ptr %arrayidx55, align 4
  %cmp56 = icmp sgt i32 %31, 0
  br i1 %cmp56, label %if.then57, label %for.inc92

if.then57:                                        ; preds = %for.body47
  %32 = load i32, ptr %sfb, align 4
  %idxprom58 = sext i32 %32 to i64
  %arrayidx59 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom58
  %33 = load i32, ptr %arrayidx59, align 4
  %add60 = add nsw i32 %32, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %idxprom61
  %34 = load i32, ptr %arrayidx62, align 4
  store i32 %34, ptr %end, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc76, %if.then57
  %storemerge9 = phi i32 [ %33, %if.then57 ], [ %inc77, %for.inc76 ]
  store i32 %storemerge9, ptr %l, align 4
  %35 = load i32, ptr %end, align 4
  %cmp64 = icmp slt i32 %storemerge9, %35
  br i1 %cmp64, label %for.body65, label %for.end78

for.body65:                                       ; preds = %for.cond63
  %36 = load ptr, ptr %l3_enc.addr, align 8
  %37 = load i32, ptr %gr.addr, align 4
  %idxprom66 = sext i32 %37 to i64
  %38 = load i32, ptr %ch.addr, align 4
  %idxprom68 = sext i32 %38 to i64
  %39 = load i32, ptr %l, align 4
  %mul = mul nsw i32 %39, 3
  %40 = load i32, ptr %i, align 4
  %add70 = add nsw i32 %mul, %40
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [2 x [576 x i32]], ptr %36, i64 %idxprom66, i64 %idxprom68, i64 %idxprom71
  %41 = load i32, ptr %arrayidx72, align 4
  %cmp73.not = icmp eq i32 %41, 0
  br i1 %cmp73.not, label %for.inc76, label %for.end78

for.inc76:                                        ; preds = %for.body65
  %42 = load i32, ptr %l, align 4
  %inc77 = add nsw i32 %42, 1
  br label %for.cond63, !llvm.loop !23

for.end78:                                        ; preds = %for.body65, %for.cond63
  %43 = load i32, ptr %l, align 4
  %44 = load i32, ptr %end, align 4
  %cmp79 = icmp eq i32 %43, %44
  br i1 %cmp79, label %if.then80, label %for.inc92

if.then80:                                        ; preds = %for.end78
  %45 = load ptr, ptr %scalefac.addr, align 8
  %46 = load i32, ptr %gr.addr, align 4
  %idxprom81 = sext i32 %46 to i64
  %47 = load i32, ptr %ch.addr, align 4
  %idxprom83 = sext i32 %47 to i64
  %48 = load i32, ptr %sfb, align 4
  %idxprom86 = sext i32 %48 to i64
  %49 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %49 to i64
  %arrayidx89 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %45, i64 %idxprom81, i64 %idxprom83, i32 1, i64 %idxprom86, i64 %idxprom88
  store i32 0, ptr %arrayidx89, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %for.body47, %if.then80, %for.end78
  %50 = load i32, ptr %sfb, align 4
  %inc93 = add nsw i32 %50, 1
  br label %for.cond45, !llvm.loop !24

for.inc95:                                        ; preds = %for.cond45
  %51 = load i32, ptr %i, align 4
  %inc96 = add nsw i32 %51, 1
  br label %for.cond42, !llvm.loop !25

for.end97:                                        ; preds = %for.cond42
  %52 = load ptr, ptr %gi, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %52, i64 0, i32 15
  %53 = load i32, ptr %part2_length, align 4
  %54 = load i32, ptr %52, align 8
  %sub = sub i32 %54, %53
  store i32 %sub, ptr %52, align 8
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %52, i64 0, i32 13
  %55 = load i32, ptr %scalefac_scale, align 4
  %tobool.not = icmp eq i32 %55, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end195

land.lhs.true:                                    ; preds = %for.end97
  %56 = load ptr, ptr %gi, align 8
  %preflag = getelementptr inbounds %struct.gr_info, ptr %56, i64 0, i32 12
  %57 = load i32, ptr %preflag, align 8
  %tobool98.not = icmp eq i32 %57, 0
  br i1 %tobool98.not, label %if.then99, label %if.end195

if.then99:                                        ; preds = %land.lhs.true
  store i32 0, ptr %s101, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.body105, %if.then99
  %storemerge2 = phi i32 [ 0, %if.then99 ], [ %inc114, %for.body105 ]
  store i32 %storemerge2, ptr %sfb100, align 4
  %58 = load ptr, ptr %gi, align 8
  %sfb_lmax103 = getelementptr inbounds %struct.gr_info, ptr %58, i64 0, i32 16
  %59 = load i32, ptr %sfb_lmax103, align 8
  %cmp104 = icmp ult i32 %storemerge2, %59
  br i1 %cmp104, label %for.body105, label %for.end115

for.body105:                                      ; preds = %for.cond102
  %60 = load ptr, ptr %scalefac.addr, align 8
  %61 = load i32, ptr %gr.addr, align 4
  %idxprom106 = sext i32 %61 to i64
  %62 = load i32, ptr %ch.addr, align 4
  %idxprom108 = sext i32 %62 to i64
  %arrayidx109 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %60, i64 %idxprom106, i64 %idxprom108
  %63 = load i32, ptr %sfb100, align 4
  %idxprom111 = zext i32 %63 to i64
  %arrayidx112 = getelementptr inbounds [22 x i32], ptr %arrayidx109, i64 0, i64 %idxprom111
  %64 = load i32, ptr %arrayidx112, align 4
  %65 = load i32, ptr %s101, align 4
  %or = or i32 %65, %64
  store i32 %or, ptr %s101, align 4
  %66 = load i32, ptr %sfb100, align 4
  %inc114 = add i32 %66, 1
  br label %for.cond102, !llvm.loop !26

for.end115:                                       ; preds = %for.cond102
  %67 = load ptr, ptr %gi, align 8
  %sfb_smax116 = getelementptr inbounds %struct.gr_info, ptr %67, i64 0, i32 17
  %68 = load i32, ptr %sfb_smax116, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc136, %for.end115
  %storemerge3 = phi i32 [ %68, %for.end115 ], [ %inc137, %for.inc136 ]
  store i32 %storemerge3, ptr %sfb100, align 4
  %cmp118 = icmp ult i32 %storemerge3, 12
  br i1 %cmp118, label %for.cond120, label %for.end138

for.cond120:                                      ; preds = %for.cond117, %for.body122
  %storemerge7 = phi i32 [ %inc134, %for.body122 ], [ 0, %for.cond117 ]
  store i32 %storemerge7, ptr %b, align 4
  %cmp121 = icmp slt i32 %storemerge7, 3
  br i1 %cmp121, label %for.body122, label %for.inc136

for.body122:                                      ; preds = %for.cond120
  %69 = load ptr, ptr %scalefac.addr, align 8
  %70 = load i32, ptr %gr.addr, align 4
  %idxprom123 = sext i32 %70 to i64
  %71 = load i32, ptr %ch.addr, align 4
  %idxprom125 = sext i32 %71 to i64
  %72 = load i32, ptr %sfb100, align 4
  %idxprom128 = zext i32 %72 to i64
  %73 = load i32, ptr %b, align 4
  %idxprom130 = sext i32 %73 to i64
  %arrayidx131 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %69, i64 %idxprom123, i64 %idxprom125, i32 1, i64 %idxprom128, i64 %idxprom130
  %74 = load i32, ptr %arrayidx131, align 4
  %75 = load i32, ptr %s101, align 4
  %or132 = or i32 %75, %74
  store i32 %or132, ptr %s101, align 4
  %76 = load i32, ptr %b, align 4
  %inc134 = add nsw i32 %76, 1
  br label %for.cond120, !llvm.loop !27

for.inc136:                                       ; preds = %for.cond120
  %77 = load i32, ptr %sfb100, align 4
  %inc137 = add i32 %77, 1
  br label %for.cond117, !llvm.loop !28

for.end138:                                       ; preds = %for.cond117
  %78 = load i32, ptr %s101, align 4
  %and = and i32 %78, 1
  %tobool139.not = icmp ne i32 %and, 0
  %79 = load i32, ptr %s101, align 4
  %cmp141.not = icmp eq i32 %79, 0
  %or.cond = select i1 %tobool139.not, i1 true, i1 %cmp141.not
  br i1 %or.cond, label %if.end195, label %for.cond143

for.cond143:                                      ; preds = %for.end138, %for.body146
  %storemerge4 = phi i32 [ %inc155, %for.body146 ], [ 0, %for.end138 ]
  store i32 %storemerge4, ptr %sfb100, align 4
  %80 = load ptr, ptr %gi, align 8
  %sfb_lmax144 = getelementptr inbounds %struct.gr_info, ptr %80, i64 0, i32 16
  %81 = load i32, ptr %sfb_lmax144, align 8
  %cmp145 = icmp ult i32 %storemerge4, %81
  br i1 %cmp145, label %for.body146, label %for.end156

for.body146:                                      ; preds = %for.cond143
  %82 = load ptr, ptr %scalefac.addr, align 8
  %83 = load i32, ptr %gr.addr, align 4
  %idxprom147 = sext i32 %83 to i64
  %84 = load i32, ptr %ch.addr, align 4
  %idxprom149 = sext i32 %84 to i64
  %arrayidx150 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %82, i64 %idxprom147, i64 %idxprom149
  %85 = load i32, ptr %sfb100, align 4
  %idxprom152 = zext i32 %85 to i64
  %arrayidx153 = getelementptr inbounds [22 x i32], ptr %arrayidx150, i64 0, i64 %idxprom152
  %86 = load i32, ptr %arrayidx153, align 4
  %div = sdiv i32 %86, 2
  store i32 %div, ptr %arrayidx153, align 4
  %87 = load i32, ptr %sfb100, align 4
  %inc155 = add i32 %87, 1
  br label %for.cond143, !llvm.loop !29

for.end156:                                       ; preds = %for.cond143
  %88 = load ptr, ptr %gi, align 8
  %sfb_smax157 = getelementptr inbounds %struct.gr_info, ptr %88, i64 0, i32 17
  %89 = load i32, ptr %sfb_smax157, align 4
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc177, %for.end156
  %storemerge5 = phi i32 [ %89, %for.end156 ], [ %inc178, %for.inc177 ]
  store i32 %storemerge5, ptr %sfb100, align 4
  %cmp159 = icmp ult i32 %storemerge5, 12
  br i1 %cmp159, label %for.cond161, label %for.end179

for.cond161:                                      ; preds = %for.cond158, %for.body163
  %storemerge6 = phi i32 [ %inc175, %for.body163 ], [ 0, %for.cond158 ]
  store i32 %storemerge6, ptr %b, align 4
  %cmp162 = icmp slt i32 %storemerge6, 3
  br i1 %cmp162, label %for.body163, label %for.inc177

for.body163:                                      ; preds = %for.cond161
  %90 = load ptr, ptr %scalefac.addr, align 8
  %91 = load i32, ptr %gr.addr, align 4
  %idxprom164 = sext i32 %91 to i64
  %92 = load i32, ptr %ch.addr, align 4
  %idxprom166 = sext i32 %92 to i64
  %93 = load i32, ptr %sfb100, align 4
  %idxprom169 = zext i32 %93 to i64
  %94 = load i32, ptr %b, align 4
  %idxprom171 = sext i32 %94 to i64
  %arrayidx172 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %90, i64 %idxprom164, i64 %idxprom166, i32 1, i64 %idxprom169, i64 %idxprom171
  %95 = load i32, ptr %arrayidx172, align 4
  %div173 = sdiv i32 %95, 2
  store i32 %div173, ptr %arrayidx172, align 4
  %96 = load i32, ptr %b, align 4
  %inc175 = add nsw i32 %96, 1
  br label %for.cond161, !llvm.loop !30

for.inc177:                                       ; preds = %for.cond161
  %97 = load i32, ptr %sfb100, align 4
  %inc178 = add i32 %97, 1
  br label %for.cond158, !llvm.loop !31

for.end179:                                       ; preds = %for.cond158
  %98 = load ptr, ptr %gi, align 8
  %scalefac_scale180 = getelementptr inbounds %struct.gr_info, ptr %98, i64 0, i32 13
  store i32 1, ptr %scalefac_scale180, align 4
  %part2_length181 = getelementptr inbounds %struct.gr_info, ptr %98, i64 0, i32 15
  store i32 99999999, ptr %part2_length181, align 4
  %99 = load ptr, ptr %gfp.addr, align 8
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %99, i64 0, i32 45
  %100 = load i32, ptr %mode_gr, align 8
  %cmp182 = icmp eq i32 %100, 2
  br i1 %cmp182, label %if.then183, label %if.else

if.then183:                                       ; preds = %for.end179
  %101 = load ptr, ptr %scalefac.addr, align 8
  %102 = load i32, ptr %gr.addr, align 4
  %idxprom184 = sext i32 %102 to i64
  %103 = load i32, ptr %ch.addr, align 4
  %idxprom186 = sext i32 %103 to i64
  %arrayidx187 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %101, i64 %idxprom184, i64 %idxprom186
  %104 = load ptr, ptr %gi, align 8
  %call = call i32 @scale_bitcount(ptr noundef %arrayidx187, ptr noundef %104) #5
  br label %if.end195

if.else:                                          ; preds = %for.end179
  %105 = load ptr, ptr %scalefac.addr, align 8
  %106 = load i32, ptr %gr.addr, align 4
  %idxprom188 = sext i32 %106 to i64
  %107 = load i32, ptr %ch.addr, align 4
  %idxprom190 = sext i32 %107 to i64
  %arrayidx191 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %105, i64 %idxprom188, i64 %idxprom190
  %108 = load ptr, ptr %gi, align 8
  %call192 = call i32 @scale_bitcount_lsf(ptr noundef %arrayidx191, ptr noundef %108) #5
  br label %if.end195

if.end195:                                        ; preds = %for.end138, %if.else, %if.then183, %land.lhs.true, %for.end97
  %109 = load ptr, ptr %gfp.addr, align 8
  %mode_gr196 = getelementptr inbounds %struct.lame_global_flags, ptr %109, i64 0, i32 45
  %110 = load i32, ptr %mode_gr196, align 8
  %cmp197 = icmp eq i32 %110, 2
  %111 = load i32, ptr %gr.addr, align 4
  %cmp199 = icmp eq i32 %111, 1
  %or.cond11 = select i1 %cmp197, i1 %cmp199, i1 false
  br i1 %or.cond11, label %land.lhs.true200, label %if.end250

land.lhs.true200:                                 ; preds = %if.end195
  %112 = load ptr, ptr %l3_side.addr, align 8
  %gr201 = getelementptr inbounds %struct.III_side_info_t, ptr %112, i64 0, i32 4
  %113 = load i32, ptr %ch.addr, align 4
  %idxprom204 = sext i32 %113 to i64
  %block_type = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %gr201, i64 0, i64 %idxprom204, i32 0, i32 6
  %114 = load i32, ptr %block_type, align 8
  %cmp207.not = icmp eq i32 %114, 2
  br i1 %cmp207.not, label %if.end250, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %land.lhs.true200
  %115 = load ptr, ptr %l3_side.addr, align 8
  %arrayidx210 = getelementptr inbounds %struct.III_side_info_t, ptr %115, i64 0, i32 4, i64 1
  %116 = load i32, ptr %ch.addr, align 4
  %idxprom212 = sext i32 %116 to i64
  %block_type215 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx210, i64 0, i64 %idxprom212, i32 0, i32 6
  %117 = load i32, ptr %block_type215, align 8
  %cmp216.not = icmp eq i32 %117, 2
  br i1 %cmp216.not, label %if.end250, label %land.lhs.true217

land.lhs.true217:                                 ; preds = %land.lhs.true208
  %118 = load ptr, ptr %l3_side.addr, align 8
  %gr218 = getelementptr inbounds %struct.III_side_info_t, ptr %118, i64 0, i32 4
  %119 = load i32, ptr %ch.addr, align 4
  %idxprom221 = sext i32 %119 to i64
  %scalefac_scale224 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %gr218, i64 0, i64 %idxprom221, i32 0, i32 13
  %120 = load i32, ptr %scalefac_scale224, align 4
  %arrayidx226 = getelementptr inbounds %struct.III_side_info_t, ptr %118, i64 0, i32 4, i64 1
  %idxprom228 = sext i32 %119 to i64
  %scalefac_scale231 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx226, i64 0, i64 %idxprom228, i32 0, i32 13
  %121 = load i32, ptr %scalefac_scale231, align 4
  %cmp232 = icmp eq i32 %120, %121
  br i1 %cmp232, label %land.lhs.true233, label %if.end250

land.lhs.true233:                                 ; preds = %land.lhs.true217
  %122 = load ptr, ptr %l3_side.addr, align 8
  %gr234 = getelementptr inbounds %struct.III_side_info_t, ptr %122, i64 0, i32 4
  %123 = load i32, ptr %ch.addr, align 4
  %idxprom237 = sext i32 %123 to i64
  %preflag240 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %gr234, i64 0, i64 %idxprom237, i32 0, i32 12
  %124 = load i32, ptr %preflag240, align 8
  %arrayidx242 = getelementptr inbounds %struct.III_side_info_t, ptr %122, i64 0, i32 4, i64 1
  %idxprom244 = sext i32 %123 to i64
  %preflag247 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx242, i64 0, i64 %idxprom244, i32 0, i32 12
  %125 = load i32, ptr %preflag247, align 8
  %cmp248 = icmp eq i32 %124, %125
  br i1 %cmp248, label %if.then249, label %if.end250

if.then249:                                       ; preds = %land.lhs.true233
  %126 = load i32, ptr %ch.addr, align 4
  %127 = load ptr, ptr %l3_side.addr, align 8
  %128 = load ptr, ptr %scalefac.addr, align 8
  call void @scfsi_calc(i32 noundef %126, ptr noundef %127, ptr noundef %128)
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %land.lhs.true233, %land.lhs.true217, %land.lhs.true208, %land.lhs.true200, %if.end195
  %129 = load ptr, ptr %gi, align 8
  %part2_length251 = getelementptr inbounds %struct.gr_info, ptr %129, i64 0, i32 15
  %130 = load i32, ptr %part2_length251, align 4
  %131 = load i32, ptr %129, align 8
  %add253 = add i32 %131, %130
  store i32 %add253, ptr %129, align 8
  ret void
}

declare i32 @scale_bitcount(ptr noundef, ptr noundef) #1

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
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
  %arrayidx = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 1
  %idxprom = sext i32 %ch to i64
  %arrayidx2 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx, i64 0, i64 %idxprom
  store ptr %arrayidx2, ptr %gi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 4
  br i1 %cmp, label %for.body, label %for.cond7

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %l3_side.addr, align 8
  %1 = load i32, ptr %ch.addr, align 4
  %idxprom3 = sext i32 %1 to i64
  %2 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds %struct.III_side_info_t, ptr %0, i64 0, i32 3, i64 %idxprom3, i64 %idxprom5
  store i32 0, ptr %arrayidx6, align 4
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !32

for.cond7:                                        ; preds = %for.cond, %for.inc60
  %storemerge1 = phi i32 [ %inc61, %for.inc60 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %cmp8 = icmp slt i32 %storemerge1, 4
  br i1 %cmp8, label %for.body9, label %for.end62

for.body9:                                        ; preds = %for.cond7
  %4 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %4 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom10
  %5 = load i32, ptr %arrayidx11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc29, %for.body9
  %storemerge4 = phi i32 [ %5, %for.body9 ], [ %inc30, %for.inc29 ]
  store i32 %storemerge4, ptr %sfb, align 4
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom13
  %7 = load i32, ptr %arrayidx14, align 4
  %cmp15 = icmp slt i32 %storemerge4, %7
  br i1 %cmp15, label %for.body16, label %for.end31

for.body16:                                       ; preds = %for.cond12
  %8 = load ptr, ptr %scalefac.addr, align 8
  %9 = load i32, ptr %ch.addr, align 4
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %8, i64 0, i64 %idxprom18
  %10 = load i32, ptr %sfb, align 4
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds [22 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %11 = load i32, ptr %arrayidx21, align 4
  %12 = load ptr, ptr %scalefac.addr, align 8
  %13 = load i32, ptr %ch.addr, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %12, i64 1, i64 %idxprom23
  %14 = load i32, ptr %sfb, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [22 x i32], ptr %arrayidx24, i64 0, i64 %idxprom26
  %15 = load i32, ptr %arrayidx27, align 4
  %cmp28.not = icmp eq i32 %11, %15
  br i1 %cmp28.not, label %for.inc29, label %for.end31

for.inc29:                                        ; preds = %for.body16
  %16 = load i32, ptr %sfb, align 4
  %inc30 = add nsw i32 %16, 1
  br label %for.cond12, !llvm.loop !33

for.end31:                                        ; preds = %for.body16, %for.cond12
  %17 = load i32, ptr %sfb, align 4
  %18 = load i32, ptr %i, align 4
  %add32 = add nsw i32 %18, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom33
  %19 = load i32, ptr %arrayidx34, align 4
  %cmp35 = icmp eq i32 %17, %19
  br i1 %cmp35, label %if.then36, label %for.inc60

if.then36:                                        ; preds = %for.end31
  %20 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %20 to i64
  %arrayidx38 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom37
  %21 = load i32, ptr %arrayidx38, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.body44, %if.then36
  %storemerge5 = phi i32 [ %21, %if.then36 ], [ %inc52, %for.body44 ]
  store i32 %storemerge5, ptr %sfb, align 4
  %22 = load i32, ptr %i, align 4
  %add40 = add nsw i32 %22, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %idxprom41
  %23 = load i32, ptr %arrayidx42, align 4
  %cmp43 = icmp slt i32 %storemerge5, %23
  br i1 %cmp43, label %for.body44, label %for.end53

for.body44:                                       ; preds = %for.cond39
  %24 = load ptr, ptr %scalefac.addr, align 8
  %25 = load i32, ptr %ch.addr, align 4
  %idxprom46 = sext i32 %25 to i64
  %arrayidx47 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %24, i64 1, i64 %idxprom46
  %26 = load i32, ptr %sfb, align 4
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [22 x i32], ptr %arrayidx47, i64 0, i64 %idxprom49
  store i32 -1, ptr %arrayidx50, align 4
  %27 = load i32, ptr %sfb, align 4
  %inc52 = add nsw i32 %27, 1
  br label %for.cond39, !llvm.loop !34

for.end53:                                        ; preds = %for.cond39
  %28 = load ptr, ptr %l3_side.addr, align 8
  %29 = load i32, ptr %ch.addr, align 4
  %idxprom55 = sext i32 %29 to i64
  %30 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr inbounds %struct.III_side_info_t, ptr %28, i64 0, i32 3, i64 %idxprom55, i64 %idxprom57
  store i32 1, ptr %arrayidx58, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.end31, %for.end53
  %31 = load i32, ptr %i, align 4
  %inc61 = add nsw i32 %31, 1
  br label %for.cond7, !llvm.loop !35

for.end62:                                        ; preds = %for.cond7
  store i32 0, ptr %c1, align 4
  store i32 0, ptr %s1, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc91, %for.end62
  %storemerge2 = phi i32 [ 0, %for.end62 ], [ %inc92, %for.inc91 ]
  store i32 %storemerge2, ptr %sfb, align 4
  %cmp64 = icmp slt i32 %storemerge2, 11
  br i1 %cmp64, label %for.body65, label %for.end93

for.body65:                                       ; preds = %for.cond63
  %32 = load ptr, ptr %scalefac.addr, align 8
  %33 = load i32, ptr %ch.addr, align 4
  %idxprom67 = sext i32 %33 to i64
  %arrayidx68 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %32, i64 1, i64 %idxprom67
  %34 = load i32, ptr %sfb, align 4
  %idxprom70 = sext i32 %34 to i64
  %arrayidx71 = getelementptr inbounds [22 x i32], ptr %arrayidx68, i64 0, i64 %idxprom70
  %35 = load i32, ptr %arrayidx71, align 4
  %cmp72 = icmp slt i32 %35, 0
  br i1 %cmp72, label %for.inc91, label %if.end74

if.end74:                                         ; preds = %for.body65
  %36 = load i32, ptr %c1, align 4
  %inc75 = add nsw i32 %36, 1
  store i32 %inc75, ptr %c1, align 4
  %37 = load i32, ptr %s1, align 4
  %38 = load ptr, ptr %scalefac.addr, align 8
  %39 = load i32, ptr %ch.addr, align 4
  %idxprom77 = sext i32 %39 to i64
  %arrayidx78 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %38, i64 1, i64 %idxprom77
  %40 = load i32, ptr %sfb, align 4
  %idxprom80 = sext i32 %40 to i64
  %arrayidx81 = getelementptr inbounds [22 x i32], ptr %arrayidx78, i64 0, i64 %idxprom80
  %41 = load i32, ptr %arrayidx81, align 4
  %cmp82 = icmp slt i32 %37, %41
  br i1 %cmp82, label %if.then83, label %for.inc91

if.then83:                                        ; preds = %if.end74
  %42 = load ptr, ptr %scalefac.addr, align 8
  %43 = load i32, ptr %ch.addr, align 4
  %idxprom85 = sext i32 %43 to i64
  %arrayidx86 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %42, i64 1, i64 %idxprom85
  %44 = load i32, ptr %sfb, align 4
  %idxprom88 = sext i32 %44 to i64
  %arrayidx89 = getelementptr inbounds [22 x i32], ptr %arrayidx86, i64 0, i64 %idxprom88
  %45 = load i32, ptr %arrayidx89, align 4
  store i32 %45, ptr %s1, align 4
  br label %for.inc91

for.inc91:                                        ; preds = %if.end74, %if.then83, %for.body65
  %46 = load i32, ptr %sfb, align 4
  %inc92 = add nsw i32 %46, 1
  br label %for.cond63, !llvm.loop !36

for.end93:                                        ; preds = %for.cond63
  store i32 0, ptr %c2, align 4
  store i32 0, ptr %s2, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc122, %for.end93
  %47 = load i32, ptr %sfb, align 4
  %cmp95 = icmp slt i32 %47, 21
  br i1 %cmp95, label %for.body96, label %for.cond125

for.body96:                                       ; preds = %for.cond94
  %48 = load ptr, ptr %scalefac.addr, align 8
  %49 = load i32, ptr %ch.addr, align 4
  %idxprom98 = sext i32 %49 to i64
  %arrayidx99 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %48, i64 1, i64 %idxprom98
  %50 = load i32, ptr %sfb, align 4
  %idxprom101 = sext i32 %50 to i64
  %arrayidx102 = getelementptr inbounds [22 x i32], ptr %arrayidx99, i64 0, i64 %idxprom101
  %51 = load i32, ptr %arrayidx102, align 4
  %cmp103 = icmp slt i32 %51, 0
  br i1 %cmp103, label %for.inc122, label %if.end105

if.end105:                                        ; preds = %for.body96
  %52 = load i32, ptr %c2, align 4
  %inc106 = add nsw i32 %52, 1
  store i32 %inc106, ptr %c2, align 4
  %53 = load i32, ptr %s2, align 4
  %54 = load ptr, ptr %scalefac.addr, align 8
  %55 = load i32, ptr %ch.addr, align 4
  %idxprom108 = sext i32 %55 to i64
  %arrayidx109 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %54, i64 1, i64 %idxprom108
  %56 = load i32, ptr %sfb, align 4
  %idxprom111 = sext i32 %56 to i64
  %arrayidx112 = getelementptr inbounds [22 x i32], ptr %arrayidx109, i64 0, i64 %idxprom111
  %57 = load i32, ptr %arrayidx112, align 4
  %cmp113 = icmp slt i32 %53, %57
  br i1 %cmp113, label %if.then114, label %for.inc122

if.then114:                                       ; preds = %if.end105
  %58 = load ptr, ptr %scalefac.addr, align 8
  %59 = load i32, ptr %ch.addr, align 4
  %idxprom116 = sext i32 %59 to i64
  %arrayidx117 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %58, i64 1, i64 %idxprom116
  %60 = load i32, ptr %sfb, align 4
  %idxprom119 = sext i32 %60 to i64
  %arrayidx120 = getelementptr inbounds [22 x i32], ptr %arrayidx117, i64 0, i64 %idxprom119
  %61 = load i32, ptr %arrayidx120, align 4
  store i32 %61, ptr %s2, align 4
  br label %for.inc122

for.inc122:                                       ; preds = %if.end105, %if.then114, %for.body96
  %62 = load i32, ptr %sfb, align 4
  %inc123 = add nsw i32 %62, 1
  store i32 %inc123, ptr %sfb, align 4
  br label %for.cond94, !llvm.loop !37

for.cond125:                                      ; preds = %for.cond94, %for.inc146
  %storemerge3 = phi i32 [ %inc147, %for.inc146 ], [ 0, %for.cond94 ]
  store i32 %storemerge3, ptr %i, align 4
  %cmp126 = icmp slt i32 %storemerge3, 16
  br i1 %cmp126, label %for.body127, label %for.end148

for.body127:                                      ; preds = %for.cond125
  %63 = load i32, ptr %s1, align 4
  %64 = load i32, ptr %i, align 4
  %idxprom128 = sext i32 %64 to i64
  %arrayidx129 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_n, i64 0, i64 %idxprom128
  %65 = load i32, ptr %arrayidx129, align 4
  %cmp130 = icmp slt i32 %63, %65
  br i1 %cmp130, label %land.lhs.true, label %for.inc146

land.lhs.true:                                    ; preds = %for.body127
  %66 = load i32, ptr %s2, align 4
  %67 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %67 to i64
  %arrayidx132 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_n, i64 0, i64 %idxprom131
  %68 = load i32, ptr %arrayidx132, align 4
  %cmp133 = icmp slt i32 %66, %68
  br i1 %cmp133, label %if.then134, label %for.inc146

if.then134:                                       ; preds = %land.lhs.true
  %69 = load i32, ptr %i, align 4
  %idxprom135 = sext i32 %69 to i64
  %arrayidx136 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_tab, i64 0, i64 %idxprom135
  %70 = load i32, ptr %arrayidx136, align 4
  %71 = load i32, ptr %c1, align 4
  %mul = mul nsw i32 %70, %71
  %idxprom137 = sext i32 %69 to i64
  %arrayidx138 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_tab, i64 0, i64 %idxprom137
  %72 = load i32, ptr %arrayidx138, align 4
  %73 = load i32, ptr %c2, align 4
  %mul139 = mul nsw i32 %72, %73
  %add140 = add nsw i32 %mul, %mul139
  store i32 %add140, ptr %c, align 4
  %74 = load ptr, ptr %gi, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %74, i64 0, i32 15
  %75 = load i32, ptr %part2_length, align 4
  %cmp141 = icmp sgt i32 %75, %add140
  br i1 %cmp141, label %if.then142, label %for.inc146

if.then142:                                       ; preds = %if.then134
  %76 = load i32, ptr %c, align 4
  %77 = load ptr, ptr %gi, align 8
  %part2_length143 = getelementptr inbounds %struct.gr_info, ptr %77, i64 0, i32 15
  store i32 %76, ptr %part2_length143, align 4
  %78 = load i32, ptr %i, align 4
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %77, i64 0, i32 4
  store i32 %78, ptr %scalefac_compress, align 8
  br label %for.inc146

for.inc146:                                       ; preds = %for.body127, %land.lhs.true, %if.then142, %if.then134
  %79 = load i32, ptr %i, align 4
  %inc147 = add nsw i32 %79, 1
  br label %for.cond125, !llvm.loop !38

for.end148:                                       ; preds = %for.cond125
  ret void
}

; Function Attrs: nounwind ssp uwtable
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
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %3 = load i32, ptr %2, align 4
  store i32 %3, ptr %x, align 4
  %4 = load i32, ptr %max, align 4
  %cmp1 = icmp slt i32 %4, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %x, align 4
  store i32 %5, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i32, ptr %6, i64 1
  store ptr %incdec.ptr2, ptr %ix.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %x, align 4
  %8 = load i32, ptr %max, align 4
  %cmp3 = icmp slt i32 %8, %7
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load i32, ptr %x, align 4
  store i32 %9, ptr %max, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %max, align 4
  ret i32 %10
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @count_bit_short_noESC(ptr noundef %ix, ptr noundef %end, i32 noundef %table) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %sum = alloca i32, align 4
  %sign = alloca i32, align 4
  %hlen = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sign, align 4
  %idxprom = zext i32 %table to i64
  %hlen1 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %0 = load ptr, ptr %hlen1, align 8
  store ptr %0, ptr %hlen, align 8
  store ptr @cb_esc_buf, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end6, %do.body
  %storemerge = phi i32 [ 0, %do.body ], [ %inc11, %if.end6 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 3
  %2 = load i32, ptr %add.ptr, align 4
  store i32 %2, ptr %y, align 4
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %3 = load i32, ptr %1, align 4
  store i32 %3, ptr %x, align 4
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %sign, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %sign, align 4
  %5 = load i32, ptr %x, align 4
  %mul = shl nsw i32 %5, 4
  store i32 %mul, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i32, ptr %y, align 4
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %7 = load i32, ptr %sign, align 4
  %inc5 = add nsw i32 %7, 1
  store i32 %inc5, ptr %sign, align 4
  %8 = load i32, ptr %y, align 4
  %9 = load i32, ptr %x, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %x, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load i32, ptr %x, align 4
  %11 = load ptr, ptr %p, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %11, i64 1
  store ptr %incdec.ptr7, ptr %p, align 8
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %hlen, align 8
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 %idxprom8
  %13 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %13 to i32
  %14 = load i32, ptr %sum, align 4
  %add10 = add nsw i32 %14, %conv
  store i32 %add10, ptr %sum, align 4
  %15 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %15, 1
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %ix.addr, align 8
  %add.ptr12 = getelementptr inbounds i32, ptr %16, i64 3
  store ptr %add.ptr12, ptr %ix.addr, align 8
  %17 = load ptr, ptr %ix.addr, align 8
  %18 = load ptr, ptr %end.addr, align 8
  %cmp13 = icmp ult ptr %17, %18
  br i1 %cmp13, label %do.body, label %do.end, !llvm.loop !41

do.end:                                           ; preds = %for.end
  %19 = load i32, ptr %sign, align 4
  store i32 %19, ptr @cb_esc_sign, align 4
  %20 = load ptr, ptr %p, align 8
  store ptr %20, ptr @cb_esc_end, align 8
  %21 = load i32, ptr %sum, align 4
  %add15 = add nsw i32 %21, %19
  ret i32 %add15
}

; Function Attrs: nounwind ssp uwtable
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

do.body:                                          ; preds = %do.body, %entry
  %1 = load i32, ptr %table.addr, align 4
  %idxprom = zext i32 %1 to i64
  %hlen = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %2 = load ptr, ptr %hlen, align 8
  %3 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %p, align 8
  %4 = load i32, ptr %3, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, ptr %sum, align 4
  %add = add nsw i32 %6, %conv
  store i32 %add, ptr %sum, align 4
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr @cb_esc_end, align 8
  %cmp = icmp ult ptr %7, %8
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !42

do.end:                                           ; preds = %do.body
  %9 = load i32, ptr %sum, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
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
  %idxprom = sext i32 %t1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 8
  store i32 %0, ptr %linbits1, align 4
  %idxprom1 = sext i32 %t2 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom1
  %1 = load i32, ptr %arrayidx2, align 8
  store i32 %1, ptr %linbits2, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sum1, align 4
  store i32 0, ptr %sum2, align 4
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end18, %do.body
  %storemerge = phi i32 [ 0, %do.body ], [ %inc26, %if.end18 ]
  store i32 %storemerge, ptr %i, align 4
  %cmp = icmp slt i32 %storemerge, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ix.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 3
  %3 = load i32, ptr %add.ptr, align 4
  store i32 %3, ptr %y, align 4
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %4 = load i32, ptr %2, align 4
  store i32 %4, ptr %x, align 4
  %cmp4.not = icmp eq i32 %4, 0
  br i1 %cmp4.not, label %if.end8, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %sum, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %sum, align 4
  %6 = load i32, ptr %x, align 4
  %cmp5 = icmp sgt i32 %6, 14
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 15, ptr %x, align 4
  %7 = load i32, ptr %linbits1, align 4
  %8 = load i32, ptr %sum1, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %sum1, align 4
  %9 = load i32, ptr %linbits2, align 4
  %10 = load i32, ptr %sum2, align 4
  %add7 = add nsw i32 %10, %9
  store i32 %add7, ptr %sum2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load i32, ptr %x, align 4
  %mul = shl nsw i32 %11, 4
  store i32 %mul, ptr %x, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  %12 = load i32, ptr %y, align 4
  %cmp9.not = icmp eq i32 %12, 0
  br i1 %cmp9.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.end8
  %13 = load i32, ptr %sum, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, ptr %sum, align 4
  %14 = load i32, ptr %y, align 4
  %cmp12 = icmp sgt i32 %14, 14
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  store i32 15, ptr %y, align 4
  %15 = load i32, ptr %linbits1, align 4
  %16 = load i32, ptr %sum1, align 4
  %add14 = add nsw i32 %16, %15
  store i32 %add14, ptr %sum1, align 4
  %17 = load i32, ptr %linbits2, align 4
  %18 = load i32, ptr %sum2, align 4
  %add15 = add nsw i32 %18, %17
  store i32 %add15, ptr %sum2, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then10
  %19 = load i32, ptr %y, align 4
  %20 = load i32, ptr %x, align 4
  %add17 = add nsw i32 %20, %19
  store i32 %add17, ptr %x, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end8
  %21 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 8
  %22 = load i32, ptr %x, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %21, i64 %idxprom19
  %23 = load i8, ptr %arrayidx20, align 1
  %conv = zext i8 %23 to i32
  %24 = load i32, ptr %sum1, align 4
  %add21 = add nsw i32 %24, %conv
  store i32 %add21, ptr %sum1, align 4
  %25 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 8
  %26 = load i32, ptr %x, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %25, i64 %idxprom22
  %27 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %27 to i32
  %28 = load i32, ptr %sum2, align 4
  %add25 = add nsw i32 %28, %conv24
  store i32 %add25, ptr %sum2, align 4
  %29 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %29, 1
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %ix.addr, align 8
  %add.ptr27 = getelementptr inbounds i32, ptr %30, i64 3
  store ptr %add.ptr27, ptr %ix.addr, align 8
  %31 = load ptr, ptr %ix.addr, align 8
  %32 = load ptr, ptr %end.addr, align 8
  %cmp28 = icmp ult ptr %31, %32
  br i1 %cmp28, label %do.body, label %do.end, !llvm.loop !44

do.end:                                           ; preds = %for.end
  %33 = load i32, ptr %sum1, align 4
  %34 = load i32, ptr %sum2, align 4
  %cmp30 = icmp sgt i32 %33, %34
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.end
  %35 = load i32, ptr %sum2, align 4
  store i32 %35, ptr %sum1, align 4
  %36 = load i32, ptr %t2.addr, align 4
  store i32 %36, ptr %t1.addr, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %do.end
  %37 = load i32, ptr %sum, align 4
  %38 = load i32, ptr %sum1, align 4
  %add34 = add nsw i32 %37, %38
  %39 = load ptr, ptr %s.addr, align 8
  %40 = load i32, ptr %39, align 4
  %add35 = add nsw i32 %40, %add34
  store i32 %add35, ptr %39, align 4
  %41 = load i32, ptr %t1.addr, align 4
  ret i32 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @count_bit_noESC(ptr noundef %ix, ptr noundef %end, i32 noundef %table) #0 {
entry:
  %ix.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %sum = alloca i32, align 4
  %sign = alloca i32, align 4
  %hlen = alloca ptr, align 8
  %p = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store ptr %ix, ptr %ix.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sign, align 4
  %idxprom = zext i32 %table to i64
  %hlen1 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %0 = load ptr, ptr %hlen1, align 8
  store ptr %0, ptr %hlen, align 8
  store ptr @cb_esc_buf, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %if.end6, %entry
  %1 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %x, align 4
  %incdec.ptr2 = getelementptr inbounds i32, ptr %1, i64 2
  store ptr %incdec.ptr2, ptr %ix.addr, align 8
  %3 = load i32, ptr %incdec.ptr, align 4
  store i32 %3, ptr %y, align 4
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %4 = load i32, ptr %sign, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %sign, align 4
  %5 = load i32, ptr %x, align 4
  %mul = shl nsw i32 %5, 4
  store i32 %mul, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %6 = load i32, ptr %y, align 4
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %7 = load i32, ptr %sign, align 4
  %inc5 = add nsw i32 %7, 1
  store i32 %inc5, ptr %sign, align 4
  %8 = load i32, ptr %y, align 4
  %9 = load i32, ptr %x, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %x, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load i32, ptr %x, align 4
  %11 = load ptr, ptr %p, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %11, i64 1
  store ptr %incdec.ptr7, ptr %p, align 8
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %hlen, align 8
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 %idxprom8
  %13 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %13 to i32
  %14 = load i32, ptr %sum, align 4
  %add10 = add nsw i32 %14, %conv
  store i32 %add10, ptr %sum, align 4
  %15 = load ptr, ptr %ix.addr, align 8
  %16 = load ptr, ptr %end.addr, align 8
  %cmp11 = icmp ult ptr %15, %16
  br i1 %cmp11, label %do.body, label %do.end, !llvm.loop !45

do.end:                                           ; preds = %if.end6
  %17 = load i32, ptr %sign, align 4
  store i32 %17, ptr @cb_esc_sign, align 4
  %18 = load ptr, ptr %p, align 8
  store ptr %18, ptr @cb_esc_end, align 8
  %19 = load i32, ptr %sum, align 4
  %add13 = add nsw i32 %19, %17
  ret i32 %add13
}

; Function Attrs: nounwind ssp uwtable
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
  %idxprom = sext i32 %t1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 8
  store i32 %0, ptr %linbits1, align 4
  %idxprom1 = sext i32 %t2 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom1
  %1 = load i32, ptr %arrayidx2, align 8
  store i32 %1, ptr %linbits2, align 4
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %sum1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %add26, %if.end19 ]
  store i32 %storemerge, ptr %sum2, align 4
  %2 = load ptr, ptr %ix.addr, align 8
  %3 = load ptr, ptr %end.addr, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %ix.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %ix.addr, align 8
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %x, align 4
  %incdec.ptr4 = getelementptr inbounds i32, ptr %4, i64 2
  store ptr %incdec.ptr4, ptr %ix.addr, align 8
  %6 = load i32, ptr %incdec.ptr, align 4
  store i32 %6, ptr %y, align 4
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %if.end9, label %if.then

if.then:                                          ; preds = %while.body
  %7 = load i32, ptr %sum, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %sum, align 4
  %8 = load i32, ptr %x, align 4
  %cmp6 = icmp sgt i32 %8, 14
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 15, ptr %x, align 4
  %9 = load i32, ptr %linbits1, align 4
  %10 = load i32, ptr %sum1, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, ptr %sum1, align 4
  %11 = load i32, ptr %linbits2, align 4
  %12 = load i32, ptr %sum2, align 4
  %add8 = add nsw i32 %12, %11
  store i32 %add8, ptr %sum2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %13 = load i32, ptr %x, align 4
  %mul = shl nsw i32 %13, 4
  store i32 %mul, ptr %x, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.body
  %14 = load i32, ptr %y, align 4
  %cmp10.not = icmp eq i32 %14, 0
  br i1 %cmp10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.end9
  %15 = load i32, ptr %sum, align 4
  %inc12 = add nsw i32 %15, 1
  store i32 %inc12, ptr %sum, align 4
  %16 = load i32, ptr %y, align 4
  %cmp13 = icmp sgt i32 %16, 14
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then11
  store i32 15, ptr %y, align 4
  %17 = load i32, ptr %linbits1, align 4
  %18 = load i32, ptr %sum1, align 4
  %add15 = add nsw i32 %18, %17
  store i32 %add15, ptr %sum1, align 4
  %19 = load i32, ptr %linbits2, align 4
  %20 = load i32, ptr %sum2, align 4
  %add16 = add nsw i32 %20, %19
  store i32 %add16, ptr %sum2, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11
  %21 = load i32, ptr %y, align 4
  %22 = load i32, ptr %x, align 4
  %add18 = add nsw i32 %22, %21
  store i32 %add18, ptr %x, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end9
  %23 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 8
  %24 = load i32, ptr %x, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %23, i64 %idxprom20
  %25 = load i8, ptr %arrayidx21, align 1
  %conv = zext i8 %25 to i32
  %26 = load i32, ptr %sum1, align 4
  %add22 = add nsw i32 %26, %conv
  store i32 %add22, ptr %sum1, align 4
  %27 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 8
  %28 = load i32, ptr %x, align 4
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %27, i64 %idxprom23
  %29 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %29 to i32
  %30 = load i32, ptr %sum2, align 4
  %add26 = add nsw i32 %30, %conv25
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  %31 = load i32, ptr %sum1, align 4
  %32 = load i32, ptr %sum2, align 4
  %cmp27 = icmp sgt i32 %31, %32
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  %33 = load i32, ptr %sum2, align 4
  store i32 %33, ptr %sum1, align 4
  %34 = load i32, ptr %t2.addr, align 4
  store i32 %34, ptr %t1.addr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %while.end
  %35 = load i32, ptr %sum, align 4
  %36 = load i32, ptr %sum1, align 4
  %add31 = add nsw i32 %35, %36
  %37 = load ptr, ptr %s.addr, align 8
  %38 = load i32, ptr %37, align 4
  %add32 = add nsw i32 %38, %add31
  store i32 %add32, ptr %37, align 4
  %39 = load i32, ptr %t1.addr, align 4
  ret i32 %39
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
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
