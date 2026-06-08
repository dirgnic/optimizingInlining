; ModuleID = '<stdin>'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/red/hessut/vars/flamec/FLA_Hess_UT_unb_var4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_TWO = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Hess_UT_unb_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
  %r_val = alloca i32, align 4
  %Y = alloca %struct.FLA_Obj_view, align 8
  %Z = alloca %struct.FLA_Obj_view, align 8
  %call = call i32 @FLA_Obj_create_conf_to(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %Y)
  %call1 = call i32 @FLA_Obj_create_conf_to(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %Z)
  %call2 = call i32 @FLA_Hess_UT_step_unb_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  store i32 %call2, ptr %r_val, align 4
  %call3 = call i32 @FLA_Obj_free(ptr noundef %Y)
  %call4 = call i32 @FLA_Obj_free(ptr noundef %Z)
  %0 = load i32, ptr %r_val, align 4
  ret i32 %0
}

declare i32 @FLA_Obj_create_conf_to(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Hess_UT_step_unb_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
  %ATL = alloca %struct.FLA_Obj_view, align 8
  %ATR = alloca %struct.FLA_Obj_view, align 8
  %A00 = alloca %struct.FLA_Obj_view, align 8
  %a01 = alloca %struct.FLA_Obj_view, align 8
  %A02 = alloca %struct.FLA_Obj_view, align 8
  %ABL = alloca %struct.FLA_Obj_view, align 8
  %ABR = alloca %struct.FLA_Obj_view, align 8
  %a10t = alloca %struct.FLA_Obj_view, align 8
  %alpha11 = alloca %struct.FLA_Obj_view, align 8
  %a12t = alloca %struct.FLA_Obj_view, align 8
  %A20 = alloca %struct.FLA_Obj_view, align 8
  %a21 = alloca %struct.FLA_Obj_view, align 8
  %A22 = alloca %struct.FLA_Obj_view, align 8
  %YTL = alloca %struct.FLA_Obj_view, align 8
  %YTR = alloca %struct.FLA_Obj_view, align 8
  %Y00 = alloca %struct.FLA_Obj_view, align 8
  %y01 = alloca %struct.FLA_Obj_view, align 8
  %Y02 = alloca %struct.FLA_Obj_view, align 8
  %YBL = alloca %struct.FLA_Obj_view, align 8
  %YBR = alloca %struct.FLA_Obj_view, align 8
  %y10t = alloca %struct.FLA_Obj_view, align 8
  %psi11 = alloca %struct.FLA_Obj_view, align 8
  %y12t = alloca %struct.FLA_Obj_view, align 8
  %Y20 = alloca %struct.FLA_Obj_view, align 8
  %y21 = alloca %struct.FLA_Obj_view, align 8
  %Y22 = alloca %struct.FLA_Obj_view, align 8
  %ZTL = alloca %struct.FLA_Obj_view, align 8
  %ZTR = alloca %struct.FLA_Obj_view, align 8
  %Z00 = alloca %struct.FLA_Obj_view, align 8
  %z01 = alloca %struct.FLA_Obj_view, align 8
  %Z02 = alloca %struct.FLA_Obj_view, align 8
  %ZBL = alloca %struct.FLA_Obj_view, align 8
  %ZBR = alloca %struct.FLA_Obj_view, align 8
  %z10t = alloca %struct.FLA_Obj_view, align 8
  %zeta11 = alloca %struct.FLA_Obj_view, align 8
  %z12t = alloca %struct.FLA_Obj_view, align 8
  %Z20 = alloca %struct.FLA_Obj_view, align 8
  %z21 = alloca %struct.FLA_Obj_view, align 8
  %Z22 = alloca %struct.FLA_Obj_view, align 8
  %TTL = alloca %struct.FLA_Obj_view, align 8
  %TTR = alloca %struct.FLA_Obj_view, align 8
  %T00 = alloca %struct.FLA_Obj_view, align 8
  %t01 = alloca %struct.FLA_Obj_view, align 8
  %T02 = alloca %struct.FLA_Obj_view, align 8
  %TBL = alloca %struct.FLA_Obj_view, align 8
  %TBR = alloca %struct.FLA_Obj_view, align 8
  %t10t = alloca %struct.FLA_Obj_view, align 8
  %tau11 = alloca %struct.FLA_Obj_view, align 8
  %t12t = alloca %struct.FLA_Obj_view, align 8
  %T20 = alloca %struct.FLA_Obj_view, align 8
  %t21 = alloca %struct.FLA_Obj_view, align 8
  %T22 = alloca %struct.FLA_Obj_view, align 8
  %dT = alloca %struct.FLA_Obj_view, align 8
  %d0 = alloca %struct.FLA_Obj_view, align 8
  %dB = alloca %struct.FLA_Obj_view, align 8
  %delta1 = alloca %struct.FLA_Obj_view, align 8
  %d2 = alloca %struct.FLA_Obj_view, align 8
  %eT = alloca %struct.FLA_Obj_view, align 8
  %e0 = alloca %struct.FLA_Obj_view, align 8
  %eB = alloca %struct.FLA_Obj_view, align 8
  %epsilon1 = alloca %struct.FLA_Obj_view, align 8
  %e2 = alloca %struct.FLA_Obj_view, align 8
  %fT = alloca %struct.FLA_Obj_view, align 8
  %f0 = alloca %struct.FLA_Obj_view, align 8
  %fB = alloca %struct.FLA_Obj_view, align 8
  %phi1 = alloca %struct.FLA_Obj_view, align 8
  %f2 = alloca %struct.FLA_Obj_view, align 8
  %d = alloca %struct.FLA_Obj_view, align 8
  %e = alloca %struct.FLA_Obj_view, align 8
  %f = alloca %struct.FLA_Obj_view, align 8
  %inv_tau11 = alloca %struct.FLA_Obj_view, align 8
  %minus_inv_tau11 = alloca %struct.FLA_Obj_view, align 8
  %first_elem = alloca %struct.FLA_Obj_view, align 8
  %last_elem = alloca %struct.FLA_Obj_view, align 8
  %beta = alloca %struct.FLA_Obj_view, align 8
  %conj_beta = alloca %struct.FLA_Obj_view, align 8
  %dot_product = alloca %struct.FLA_Obj_view, align 8
  %a10t_l = alloca %struct.FLA_Obj_view, align 8
  %a10t_r = alloca %struct.FLA_Obj_view, align 8
  %a21_t = alloca %struct.FLA_Obj_view, align 8
  %a21_b = alloca %struct.FLA_Obj_view, align 8
  %a2 = alloca %struct.FLA_Obj_view, align 8
  %datatype_A = alloca i32, align 4
  %m_A = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  store i64 %call, ptr %b_alg, align 8
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call1, ptr %datatype_A, align 4
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call2, ptr %m_A, align 8
  %0 = load i32, ptr %datatype_A, align 4
  %call3 = call i32 @FLA_Obj_create(i32 noundef %0, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %inv_tau11)
  %1 = load i32, ptr %datatype_A, align 4
  %call4 = call i32 @FLA_Obj_create(i32 noundef %1, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %minus_inv_tau11)
  %2 = load i32, ptr %datatype_A, align 4
  %call5 = call i32 @FLA_Obj_create(i32 noundef %2, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %first_elem)
  %3 = load i32, ptr %datatype_A, align 4
  %call6 = call i32 @FLA_Obj_create(i32 noundef %3, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %last_elem)
  %4 = load i32, ptr %datatype_A, align 4
  %call7 = call i32 @FLA_Obj_create(i32 noundef %4, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %beta)
  %5 = load i32, ptr %datatype_A, align 4
  %call8 = call i32 @FLA_Obj_create(i32 noundef %5, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %conj_beta)
  %6 = load i32, ptr %datatype_A, align 4
  %call9 = call i32 @FLA_Obj_create(i32 noundef %6, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %dot_product)
  %7 = load i32, ptr %datatype_A, align 4
  %8 = load i64, ptr %m_A, align 8
  %call10 = call i32 @FLA_Obj_create(i32 noundef %7, i64 noundef %8, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %d)
  %9 = load i32, ptr %datatype_A, align 4
  %10 = load i64, ptr %m_A, align 8
  %call11 = call i32 @FLA_Obj_create(i32 noundef %9, i64 noundef %10, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %e)
  %11 = load i32, ptr %datatype_A, align 4
  %12 = load i64, ptr %m_A, align 8
  %call12 = call i32 @FLA_Obj_create(i32 noundef %11, i64 noundef %12, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %f)
  %call13 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y)
  %call14 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z)
  %call15 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call16 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef %YTL, ptr noundef %YTR, ptr noundef %YBL, ptr noundef %YBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call17 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef %ZTL, ptr noundef %ZTR, ptr noundef %ZBL, ptr noundef %ZBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call18 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef %TTL, ptr noundef %TTR, ptr noundef %TBL, ptr noundef %TBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call19 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d, ptr noundef %dT, ptr noundef %dB, i64 noundef 0, i32 noundef 200)
  %call20 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %e, ptr noundef %eT, ptr noundef %eB, i64 noundef 0, i32 noundef 200)
  %call21 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %f, ptr noundef %fT, ptr noundef %fB, i64 noundef 0, i32 noundef 200)
  br label %while.cond

while.cond:                                       ; preds = %if.end81, %entry
  %call22 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %13 = load i64, ptr %b_alg, align 8
  %cmp = icmp ult i64 %call22, %13
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call23 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %a01, ptr noundef %A02, ptr noundef %a10t, ptr noundef %alpha11, ptr noundef %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %a21, ptr noundef %A22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call24 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %YTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %YTR, ptr noundef %Y00, ptr noundef %y01, ptr noundef %Y02, ptr noundef %y10t, ptr noundef %psi11, ptr noundef %y12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %YBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %YBR, ptr noundef %Y20, ptr noundef %y21, ptr noundef %Y22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call25 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZTR, ptr noundef %Z00, ptr noundef %z01, ptr noundef %Z02, ptr noundef %z10t, ptr noundef %zeta11, ptr noundef %z12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZBR, ptr noundef %Z20, ptr noundef %z21, ptr noundef %Z22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call26 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTR, ptr noundef %T00, ptr noundef %t01, ptr noundef %T02, ptr noundef %t10t, ptr noundef %tau11, ptr noundef %t12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBR, ptr noundef %T20, ptr noundef %t21, ptr noundef %T22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call27 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %dT, ptr noundef %d0, ptr noundef %delta1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %dB, ptr noundef %d2, i64 noundef 1, i32 noundef 201)
  %call28 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %eT, ptr noundef %e0, ptr noundef %epsilon1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %eB, ptr noundef %e2, i64 noundef 1, i32 noundef 201)
  %call29 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %fT, ptr noundef %f0, ptr noundef %phi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %fB, ptr noundef %f2, i64 noundef 1, i32 noundef 201)
  %call30 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %cmp31 = icmp ugt i64 %call30, 0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call32 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef %a10t_l, ptr noundef %a10t_r, i64 noundef 1, i32 noundef 211)
  %call33 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t_r, ptr noundef byval(%struct.FLA_Obj_view) align 8 %last_elem)
  %call34 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t_r)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call35 = call i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef %a2)
  %call36 = call i32 @FLA_Gemvc(i32 noundef 400, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a2)
  %call37 = call i32 @FLA_Gemvc(i32 noundef 400, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a2)
  %call38 = call i32 @FLA_Gemv(i32 noundef 403, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t)
  %call39 = call i32 @FLA_Gemv(i32 noundef 403, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t)
  %call40 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %cmp41 = icmp ugt i64 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end
  %call43 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %last_elem, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t_r)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end
  %call45 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22)
  %cmp46 = icmp ugt i64 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end81

if.then47:                                        ; preds = %if.end44
  %call48 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef %a21_t, ptr noundef %a21_b, i64 noundef 1, i32 noundef 200)
  %call49 = call i32 @FLA_Househ2_UT(i32 noundef 210, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21_t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21_b, ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11)
  %call50 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %inv_tau11)
  %call51 = call i32 @FLA_Inv_scalc(i32 noundef 450, ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %inv_tau11)
  %call52 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %inv_tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %minus_inv_tau11)
  %call53 = call i32 @FLA_Scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %minus_inv_tau11)
  %call54 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21_t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %first_elem)
  %call55 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21_t)
  %call56 = call i32 @FLA_Gemv(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y21)
  %call57 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21)
  %call58 = call i32 @FLA_Gemv(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d0)
  %call59 = call i32 @FLA_Gemv(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e0)
  %call60 = call i32 @FLA_Gemv(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %f0)
  %call61 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y21)
  %call62 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %f0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y21)
  %call63 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01)
  %call64 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21)
  %call65 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21)
  %call66 = call i32 @FLA_Dotc(i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta)
  %call67 = call i32 @FLA_Inv_scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_TWO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta)
  %call68 = call i32 @FLA_Copyt(i32 noundef 403, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %conj_beta)
  %call69 = call i32 @FLA_Scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %minus_inv_tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %conj_beta)
  %call70 = call i32 @FLA_Axpy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %conj_beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y21)
  %call71 = call i32 @FLA_Scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %inv_tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y21)
  %call72 = call i32 @FLA_Scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %minus_inv_tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta)
  %call73 = call i32 @FLA_Axpy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21)
  %call74 = call i32 @FLA_Scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %inv_tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21)
  %call75 = call i32 @FLA_Dot(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %dot_product)
  %call76 = call i32 @FLA_Scal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %minus_inv_tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %dot_product)
  %call77 = call i32 @FLA_Axpyt(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 %dot_product, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t)
  %call78 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e0)
  %call79 = call i32 @FLA_Gerc(i32 noundef 450, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 %minus_inv_tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02)
  %call80 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %first_elem, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21_t)
  br label %if.end81

if.end81:                                         ; preds = %if.then47, %if.end44
  %call82 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 11)
  %call83 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %YTL, ptr noundef %YTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %psi11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y12t, ptr noundef %YBL, ptr noundef %YBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y22, i32 noundef 11)
  %call84 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ZTL, ptr noundef %ZTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %zeta11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z12t, ptr noundef %ZBL, ptr noundef %ZBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z22, i32 noundef 11)
  %call85 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %TTL, ptr noundef %TTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t12t, ptr noundef %TBL, ptr noundef %TBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T22, i32 noundef 11)
  %call86 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %dT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %delta1, ptr noundef %dB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d2, i32 noundef 200)
  %call87 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %eT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %epsilon1, ptr noundef %eB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e2, i32 noundef 200)
  %call88 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %fT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %f0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %phi1, ptr noundef %fB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %f2, i32 noundef 200)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call89 = call i32 @FLA_Obj_free(ptr noundef %inv_tau11)
  %call90 = call i32 @FLA_Obj_free(ptr noundef %minus_inv_tau11)
  %call91 = call i32 @FLA_Obj_free(ptr noundef %first_elem)
  %call92 = call i32 @FLA_Obj_free(ptr noundef %last_elem)
  %call93 = call i32 @FLA_Obj_free(ptr noundef %beta)
  %call94 = call i32 @FLA_Obj_free(ptr noundef %conj_beta)
  %call95 = call i32 @FLA_Obj_free(ptr noundef %dot_product)
  %call96 = call i32 @FLA_Obj_free(ptr noundef %d)
  %call97 = call i32 @FLA_Obj_free(ptr noundef %e)
  %call98 = call i32 @FLA_Obj_free(ptr noundef %f)
  ret i32 -1
}

declare i32 @FLA_Obj_free(ptr noundef) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_create(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Gemvc(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Gemv(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Househ2_UT(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Inv_scalc(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Scal(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Dotc(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Inv_scal(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Copyt(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Axpy(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Dot(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Axpyt(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Gerc(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

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
