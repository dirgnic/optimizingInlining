; ModuleID = '<stdin>'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/inv/tri/ln/flamec/FLA_Trinv_ln_opt_var3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trinv_ln_opt_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %datatype = alloca i32, align 4
  %mn_A = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_A18 = alloca ptr, align 8
  %buff_A44 = alloca ptr, align 8
  %buff_A70 = alloca ptr, align 8
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %mn_A, align 4
  %call2 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %rs_A, align 4
  %call4 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %cs_A, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb17
    i32 102, label %sw.bb43
    i32 103, label %sw.bb69
  ]

sw.bb:                                            ; preds = %entry
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype6 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype6, align 8
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base8 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base8, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base9 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base9, align 8
  %buffer10 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer10, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base11 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base11, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr12 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base13, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul14 = mul i64 %10, %12
  %add.ptr15 = getelementptr inbounds float, ptr %add.ptr12, i64 %mul14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr15, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8
  %13 = load i32, ptr %mn_A, align 4
  %14 = load ptr, ptr %buff_A, align 8
  %15 = load i32, ptr %rs_A, align 4
  %16 = load i32, ptr %cs_A, align 4
  %call16 = call i32 @FLA_Trinv_ln_ops_var3(i32 noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16)
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %17 = load ptr, ptr %base19, align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %18, 105
  br i1 %cmp21, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %sw.bb17
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %19 = load ptr, ptr %base24, align 8
  %buffer25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %buffer25, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %20, i64 16
  br label %cond.end40

cond.false27:                                     ; preds = %sw.bb17
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %21 = load ptr, ptr %base28, align 8
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %buffer29, align 8
  %offn30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %23 = load i64, ptr %offn30, align 8
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %24 = load ptr, ptr %base31, align 8
  %cs32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 5
  %25 = load i64, ptr %cs32, align 8
  %mul33 = mul i64 %23, %25
  %add.ptr34 = getelementptr inbounds double, ptr %22, i64 %mul33
  %offm35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %26 = load i64, ptr %offm35, align 8
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %27 = load ptr, ptr %base36, align 8
  %rs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 4
  %28 = load i64, ptr %rs37, align 8
  %mul38 = mul i64 %26, %28
  %add.ptr39 = getelementptr inbounds double, ptr %add.ptr34, i64 %mul38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false27, %cond.true23
  %cond41 = phi ptr [ %add.ptr26, %cond.true23 ], [ %add.ptr39, %cond.false27 ]
  store ptr %cond41, ptr %buff_A18, align 8
  %29 = load i32, ptr %mn_A, align 4
  %30 = load ptr, ptr %buff_A18, align 8
  %31 = load i32, ptr %rs_A, align 4
  %32 = load i32, ptr %cs_A, align 4
  %call42 = call i32 @FLA_Trinv_ln_opd_var3(i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %base45 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %33 = load ptr, ptr %base45, align 8
  %datatype46 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %datatype46, align 8
  %cmp47 = icmp eq i32 %34, 105
  br i1 %cmp47, label %cond.true49, label %cond.false53

cond.true49:                                      ; preds = %sw.bb43
  %base50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %35 = load ptr, ptr %base50, align 8
  %buffer51 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %buffer51, align 8
  %add.ptr52 = getelementptr inbounds i8, ptr %36, i64 24
  br label %cond.end66

cond.false53:                                     ; preds = %sw.bb43
  %base54 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %37 = load ptr, ptr %base54, align 8
  %buffer55 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %buffer55, align 8
  %offn56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %39 = load i64, ptr %offn56, align 8
  %base57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %40 = load ptr, ptr %base57, align 8
  %cs58 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %cs58, align 8
  %mul59 = mul i64 %39, %41
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %38, i64 %mul59
  %offm61 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %42 = load i64, ptr %offm61, align 8
  %base62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %43 = load ptr, ptr %base62, align 8
  %rs63 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 4
  %44 = load i64, ptr %rs63, align 8
  %mul64 = mul i64 %42, %44
  %add.ptr65 = getelementptr inbounds %struct.scomplex, ptr %add.ptr60, i64 %mul64
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false53, %cond.true49
  %cond67 = phi ptr [ %add.ptr52, %cond.true49 ], [ %add.ptr65, %cond.false53 ]
  store ptr %cond67, ptr %buff_A44, align 8
  %45 = load i32, ptr %mn_A, align 4
  %46 = load ptr, ptr %buff_A44, align 8
  %47 = load i32, ptr %rs_A, align 4
  %48 = load i32, ptr %cs_A, align 4
  %call68 = call i32 @FLA_Trinv_ln_opc_var3(i32 noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  br label %sw.epilog

sw.bb69:                                          ; preds = %entry
  %base71 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %49 = load ptr, ptr %base71, align 8
  %datatype72 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %datatype72, align 8
  %cmp73 = icmp eq i32 %50, 105
  br i1 %cmp73, label %cond.true75, label %cond.false79

cond.true75:                                      ; preds = %sw.bb69
  %base76 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %51 = load ptr, ptr %base76, align 8
  %buffer77 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer77, align 8
  %add.ptr78 = getelementptr inbounds i8, ptr %52, i64 32
  br label %cond.end92

cond.false79:                                     ; preds = %sw.bb69
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %53 = load ptr, ptr %base80, align 8
  %buffer81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %buffer81, align 8
  %offn82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %55 = load i64, ptr %offn82, align 8
  %base83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %56 = load ptr, ptr %base83, align 8
  %cs84 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %cs84, align 8
  %mul85 = mul i64 %55, %57
  %add.ptr86 = getelementptr inbounds %struct.dcomplex, ptr %54, i64 %mul85
  %offm87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %58 = load i64, ptr %offm87, align 8
  %base88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %59 = load ptr, ptr %base88, align 8
  %rs89 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %rs89, align 8
  %mul90 = mul i64 %58, %60
  %add.ptr91 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr86, i64 %mul90
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false79, %cond.true75
  %cond93 = phi ptr [ %add.ptr78, %cond.true75 ], [ %add.ptr91, %cond.false79 ]
  store ptr %cond93, ptr %buff_A70, align 8
  %61 = load i32, ptr %mn_A, align 4
  %62 = load ptr, ptr %buff_A70, align 8
  %63 = load i32, ptr %rs_A, align 4
  %64 = load i32, ptr %cs_A, align 4
  %call94 = call i32 @FLA_Trinv_ln_opz_var3(i32 noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end92, %cond.end66, %cond.end40, %cond.end
  ret i32 -1
}

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trinv_ln_ops_var3(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %alpha11_m1 = alloca float, align 4
  %i = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds float, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %mn_A.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %buff_A.addr, align 8
  %15 = load i32, ptr %cs_A.addr, align 4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds float, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %rs_A.addr, align 4
  %mul8 = mul nsw i32 %16, %17
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %a10t, align 8
  %18 = load ptr, ptr %buff_A.addr, align 8
  %19 = load i32, ptr %cs_A.addr, align 4
  %mul11 = mul nsw i32 0, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds float, ptr %18, i64 %idx.ext12
  %20 = load i32, ptr %i, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, ptr %rs_A.addr, align 4
  %mul14 = mul nsw i32 %add, %21
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds float, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %A20, align 8
  %22 = load ptr, ptr %buff_A.addr, align 8
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %cs_A.addr, align 4
  %mul17 = mul nsw i32 %23, %24
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds float, ptr %22, i64 %idx.ext18
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %rs_A.addr, align 4
  %mul20 = mul nsw i32 %25, %26
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds float, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %alpha11, align 8
  %27 = load ptr, ptr %buff_A.addr, align 8
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %cs_A.addr, align 4
  %mul23 = mul nsw i32 %28, %29
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds float, ptr %27, i64 %idx.ext24
  %30 = load i32, ptr %i, align 4
  %add26 = add nsw i32 %30, 1
  %31 = load i32, ptr %rs_A.addr, align 4
  %mul27 = mul nsw i32 %add26, %31
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr25, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a21, align 8
  %32 = load i32, ptr %mn_A.addr, align 4
  %33 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %32, %33
  %sub30 = sub nsw i32 %sub, 1
  store i32 %sub30, ptr %mn_ahead, align 4
  %34 = load i32, ptr %i, align 4
  store i32 %34, ptr %mn_behind, align 4
  %35 = load ptr, ptr %alpha11, align 8
  %36 = load float, ptr %35, align 4
  %mul31 = fmul float -1.000000e+00, %36
  store float %mul31, ptr %alpha11_m1, align 4
  %37 = load i32, ptr %mn_ahead, align 4
  %38 = load ptr, ptr %a21, align 8
  %39 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %37, ptr noundef %alpha11_m1, ptr noundef %38, i32 noundef %39)
  %40 = load i32, ptr %mn_ahead, align 4
  %41 = load i32, ptr %mn_behind, align 4
  %42 = load ptr, ptr %buff_1, align 8
  %43 = load ptr, ptr %a21, align 8
  %44 = load i32, ptr %rs_A.addr, align 4
  %45 = load ptr, ptr %a10t, align 8
  %46 = load i32, ptr %cs_A.addr, align 4
  %47 = load ptr, ptr %A20, align 8
  %48 = load i32, ptr %rs_A.addr, align 4
  %49 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_sger(i32 noundef 500, i32 noundef 500, i32 noundef %40, i32 noundef %41, ptr noundef %42, ptr noundef %43, i32 noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49)
  %50 = load i32, ptr %mn_behind, align 4
  %51 = load ptr, ptr %alpha11, align 8
  %52 = load ptr, ptr %a10t, align 8
  %53 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %alpha11, align 8
  call void @bl1_sinverts(i32 noundef 500, ptr noundef %54)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, ptr %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trinv_ln_opd_var3(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %alpha11_m1 = alloca double, align 8
  %i = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds double, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds double, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %mn_A.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %buff_A.addr, align 8
  %15 = load i32, ptr %cs_A.addr, align 4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds double, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %rs_A.addr, align 4
  %mul8 = mul nsw i32 %16, %17
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %a10t, align 8
  %18 = load ptr, ptr %buff_A.addr, align 8
  %19 = load i32, ptr %cs_A.addr, align 4
  %mul11 = mul nsw i32 0, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds double, ptr %18, i64 %idx.ext12
  %20 = load i32, ptr %i, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, ptr %rs_A.addr, align 4
  %mul14 = mul nsw i32 %add, %21
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds double, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %A20, align 8
  %22 = load ptr, ptr %buff_A.addr, align 8
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %cs_A.addr, align 4
  %mul17 = mul nsw i32 %23, %24
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds double, ptr %22, i64 %idx.ext18
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %rs_A.addr, align 4
  %mul20 = mul nsw i32 %25, %26
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds double, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %alpha11, align 8
  %27 = load ptr, ptr %buff_A.addr, align 8
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %cs_A.addr, align 4
  %mul23 = mul nsw i32 %28, %29
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds double, ptr %27, i64 %idx.ext24
  %30 = load i32, ptr %i, align 4
  %add26 = add nsw i32 %30, 1
  %31 = load i32, ptr %rs_A.addr, align 4
  %mul27 = mul nsw i32 %add26, %31
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr25, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a21, align 8
  %32 = load i32, ptr %mn_A.addr, align 4
  %33 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %32, %33
  %sub30 = sub nsw i32 %sub, 1
  store i32 %sub30, ptr %mn_ahead, align 4
  %34 = load i32, ptr %i, align 4
  store i32 %34, ptr %mn_behind, align 4
  %35 = load ptr, ptr %alpha11, align 8
  %36 = load double, ptr %35, align 8
  %mul31 = fmul double -1.000000e+00, %36
  store double %mul31, ptr %alpha11_m1, align 8
  %37 = load i32, ptr %mn_ahead, align 4
  %38 = load ptr, ptr %a21, align 8
  %39 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %37, ptr noundef %alpha11_m1, ptr noundef %38, i32 noundef %39)
  %40 = load i32, ptr %mn_ahead, align 4
  %41 = load i32, ptr %mn_behind, align 4
  %42 = load ptr, ptr %buff_1, align 8
  %43 = load ptr, ptr %a21, align 8
  %44 = load i32, ptr %rs_A.addr, align 4
  %45 = load ptr, ptr %a10t, align 8
  %46 = load i32, ptr %cs_A.addr, align 4
  %47 = load ptr, ptr %A20, align 8
  %48 = load i32, ptr %rs_A.addr, align 4
  %49 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_dger(i32 noundef 500, i32 noundef 500, i32 noundef %40, i32 noundef %41, ptr noundef %42, ptr noundef %43, i32 noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47, i32 noundef %48, i32 noundef %49)
  %50 = load i32, ptr %mn_behind, align 4
  %51 = load ptr, ptr %alpha11, align 8
  %52 = load ptr, ptr %a10t, align 8
  %53 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %alpha11, align 8
  call void @bl1_dinverts(i32 noundef 500, ptr noundef %54)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i32, ptr %i, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trinv_ln_opc_var3(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %alpha11_m1 = alloca %struct.scomplex, align 4
  %i = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %mn_A.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %buff_A.addr, align 8
  %15 = load i32, ptr %cs_A.addr, align 4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds %struct.scomplex, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %rs_A.addr, align 4
  %mul8 = mul nsw i32 %16, %17
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %a10t, align 8
  %18 = load ptr, ptr %buff_A.addr, align 8
  %19 = load i32, ptr %cs_A.addr, align 4
  %mul11 = mul nsw i32 0, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds %struct.scomplex, ptr %18, i64 %idx.ext12
  %20 = load i32, ptr %i, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, ptr %rs_A.addr, align 4
  %mul14 = mul nsw i32 %add, %21
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds %struct.scomplex, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %A20, align 8
  %22 = load ptr, ptr %buff_A.addr, align 8
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %cs_A.addr, align 4
  %mul17 = mul nsw i32 %23, %24
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds %struct.scomplex, ptr %22, i64 %idx.ext18
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %rs_A.addr, align 4
  %mul20 = mul nsw i32 %25, %26
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %alpha11, align 8
  %27 = load ptr, ptr %buff_A.addr, align 8
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %cs_A.addr, align 4
  %mul23 = mul nsw i32 %28, %29
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds %struct.scomplex, ptr %27, i64 %idx.ext24
  %30 = load i32, ptr %i, align 4
  %add26 = add nsw i32 %30, 1
  %31 = load i32, ptr %rs_A.addr, align 4
  %mul27 = mul nsw i32 %add26, %31
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr25, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a21, align 8
  %32 = load i32, ptr %mn_A.addr, align 4
  %33 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %32, %33
  %sub30 = sub nsw i32 %sub, 1
  store i32 %sub30, ptr %mn_ahead, align 4
  %34 = load i32, ptr %i, align 4
  store i32 %34, ptr %mn_behind, align 4
  %35 = load ptr, ptr %alpha11, align 8
  %real = getelementptr inbounds %struct.scomplex, ptr %35, i32 0, i32 0
  %36 = load float, ptr %real, align 4
  %mul31 = fmul float -1.000000e+00, %36
  %real32 = getelementptr inbounds %struct.scomplex, ptr %alpha11_m1, i32 0, i32 0
  store float %mul31, ptr %real32, align 4
  %37 = load ptr, ptr %alpha11, align 8
  %imag = getelementptr inbounds %struct.scomplex, ptr %37, i32 0, i32 1
  %38 = load float, ptr %imag, align 4
  %mul33 = fmul float -1.000000e+00, %38
  %imag34 = getelementptr inbounds %struct.scomplex, ptr %alpha11_m1, i32 0, i32 1
  store float %mul33, ptr %imag34, align 4
  %39 = load i32, ptr %mn_ahead, align 4
  %40 = load ptr, ptr %a21, align 8
  %41 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %39, ptr noundef %alpha11_m1, ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr %mn_ahead, align 4
  %43 = load i32, ptr %mn_behind, align 4
  %44 = load ptr, ptr %buff_1, align 8
  %45 = load ptr, ptr %a21, align 8
  %46 = load i32, ptr %rs_A.addr, align 4
  %47 = load ptr, ptr %a10t, align 8
  %48 = load i32, ptr %cs_A.addr, align 4
  %49 = load ptr, ptr %A20, align 8
  %50 = load i32, ptr %rs_A.addr, align 4
  %51 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_cger(i32 noundef 500, i32 noundef 500, i32 noundef %42, i32 noundef %43, ptr noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47, i32 noundef %48, ptr noundef %49, i32 noundef %50, i32 noundef %51)
  %52 = load i32, ptr %mn_behind, align 4
  %53 = load ptr, ptr %alpha11, align 8
  %54 = load ptr, ptr %a10t, align 8
  %55 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %52, ptr noundef %53, ptr noundef %54, i32 noundef %55)
  %56 = load ptr, ptr %alpha11, align 8
  call void @bl1_cinverts(i32 noundef 500, ptr noundef %56)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, ptr %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trinv_ln_opz_var3(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %alpha11_m1 = alloca %struct.dcomplex, align 8
  %i = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %mn_A.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %buff_A.addr, align 8
  %15 = load i32, ptr %cs_A.addr, align 4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds %struct.dcomplex, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %rs_A.addr, align 4
  %mul8 = mul nsw i32 %16, %17
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %a10t, align 8
  %18 = load ptr, ptr %buff_A.addr, align 8
  %19 = load i32, ptr %cs_A.addr, align 4
  %mul11 = mul nsw i32 0, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds %struct.dcomplex, ptr %18, i64 %idx.ext12
  %20 = load i32, ptr %i, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, ptr %rs_A.addr, align 4
  %mul14 = mul nsw i32 %add, %21
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %A20, align 8
  %22 = load ptr, ptr %buff_A.addr, align 8
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %cs_A.addr, align 4
  %mul17 = mul nsw i32 %23, %24
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds %struct.dcomplex, ptr %22, i64 %idx.ext18
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %rs_A.addr, align 4
  %mul20 = mul nsw i32 %25, %26
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %alpha11, align 8
  %27 = load ptr, ptr %buff_A.addr, align 8
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %cs_A.addr, align 4
  %mul23 = mul nsw i32 %28, %29
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds %struct.dcomplex, ptr %27, i64 %idx.ext24
  %30 = load i32, ptr %i, align 4
  %add26 = add nsw i32 %30, 1
  %31 = load i32, ptr %rs_A.addr, align 4
  %mul27 = mul nsw i32 %add26, %31
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr25, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a21, align 8
  %32 = load i32, ptr %mn_A.addr, align 4
  %33 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %32, %33
  %sub30 = sub nsw i32 %sub, 1
  store i32 %sub30, ptr %mn_ahead, align 4
  %34 = load i32, ptr %i, align 4
  store i32 %34, ptr %mn_behind, align 4
  %35 = load ptr, ptr %alpha11, align 8
  %real = getelementptr inbounds %struct.dcomplex, ptr %35, i32 0, i32 0
  %36 = load double, ptr %real, align 8
  %mul31 = fmul double -1.000000e+00, %36
  %real32 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_m1, i32 0, i32 0
  store double %mul31, ptr %real32, align 8
  %37 = load ptr, ptr %alpha11, align 8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %37, i32 0, i32 1
  %38 = load double, ptr %imag, align 8
  %mul33 = fmul double -1.000000e+00, %38
  %imag34 = getelementptr inbounds %struct.dcomplex, ptr %alpha11_m1, i32 0, i32 1
  store double %mul33, ptr %imag34, align 8
  %39 = load i32, ptr %mn_ahead, align 4
  %40 = load ptr, ptr %a21, align 8
  %41 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %39, ptr noundef %alpha11_m1, ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr %mn_ahead, align 4
  %43 = load i32, ptr %mn_behind, align 4
  %44 = load ptr, ptr %buff_1, align 8
  %45 = load ptr, ptr %a21, align 8
  %46 = load i32, ptr %rs_A.addr, align 4
  %47 = load ptr, ptr %a10t, align 8
  %48 = load i32, ptr %cs_A.addr, align 4
  %49 = load ptr, ptr %A20, align 8
  %50 = load i32, ptr %rs_A.addr, align 4
  %51 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_zger(i32 noundef 500, i32 noundef 500, i32 noundef %42, i32 noundef %43, ptr noundef %44, ptr noundef %45, i32 noundef %46, ptr noundef %47, i32 noundef %48, ptr noundef %49, i32 noundef %50, i32 noundef %51)
  %52 = load i32, ptr %mn_behind, align 4
  %53 = load ptr, ptr %alpha11, align 8
  %54 = load ptr, ptr %a10t, align 8
  %55 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %52, ptr noundef %53, ptr noundef %54, i32 noundef %55)
  %56 = load ptr, ptr %alpha11, align 8
  call void @bl1_zinverts(i32 noundef 500, ptr noundef %56)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, ptr %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

declare void @bl1_sinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_sinverts(i32 noundef, ptr noundef) #1

declare void @bl1_dinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_dger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dinverts(i32 noundef, ptr noundef) #1

declare void @bl1_cinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_cger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_cinverts(i32 noundef, ptr noundef) #1

declare void @bl1_zinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zinverts(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
