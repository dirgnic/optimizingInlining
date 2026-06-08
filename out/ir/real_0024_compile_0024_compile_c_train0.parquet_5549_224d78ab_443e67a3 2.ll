; ModuleID = '<stdin>'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/misc/uddateutinc/front/flamec/FLASH_UDdate_UT_inc_create_hier_matrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@.str = private unnamed_addr constant [66 x i8] c"FLASH_UDdate_UT_inc() currently only supports matrices of depth 1\00", align 1
@.str.1 = private unnamed_addr constant [222 x i8] c"/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/misc/uddateutinc/front/flamec/FLASH_UDdate_UT_inc_create_hier_matrices.c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLASH_UDdate_UT_inc_create_hier_matrices(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R_flat, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C_flat, ptr noundef byval(%struct.FLA_Obj_view) align 8 %D_flat, i64 noundef %depth, ptr noundef %b_flash, i64 noundef %b_alg, ptr noundef %R, ptr noundef %C, ptr noundef %D, ptr noundef %T, ptr noundef %W) #0 {
entry:
  %depth.addr = alloca i64, align 8
  %b_flash.addr = alloca ptr, align 8
  %b_alg.addr = alloca i64, align 8
  %R.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %D.addr = alloca ptr, align 8
  %T.addr = alloca ptr, align 8
  %W.addr = alloca ptr, align 8
  %datatype = alloca i32, align 4
  %m_T = alloca i64, align 8
  %n_T = alloca i64, align 8
  %m_W = alloca i64, align 8
  %n_W = alloca i64, align 8
  %m_C = alloca i64, align 8
  %m_D = alloca i64, align 8
  store i64 %depth, ptr %depth.addr, align 8
  store ptr %b_flash, ptr %b_flash.addr, align 8
  store i64 %b_alg, ptr %b_alg.addr, align 8
  store ptr %R, ptr %R.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  store ptr %D, ptr %D.addr, align 8
  store ptr %T, ptr %T.addr, align 8
  store ptr %W, ptr %W.addr, align 8
  %0 = load i64, ptr %depth.addr, align 8
  %cmp = icmp ne i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @FLA_Print_message(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 28)
  call void @FLA_Abort()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %depth.addr, align 8
  %2 = load ptr, ptr %b_flash.addr, align 8
  %3 = load ptr, ptr %R.addr, align 8
  %call = call i32 @FLASH_Obj_create_hier_copy_of_flat(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R_flat, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  %4 = load i64, ptr %depth.addr, align 8
  %5 = load ptr, ptr %b_flash.addr, align 8
  %6 = load ptr, ptr %C.addr, align 8
  %call1 = call i32 @FLASH_Obj_create_hier_copy_of_flat(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C_flat, i64 noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load i64, ptr %depth.addr, align 8
  %8 = load ptr, ptr %b_flash.addr, align 8
  %9 = load ptr, ptr %D.addr, align 8
  %call2 = call i32 @FLASH_Obj_create_hier_copy_of_flat(ptr noundef byval(%struct.FLA_Obj_view) align 8 %D_flat, i64 noundef %7, ptr noundef %8, ptr noundef %9)
  %call3 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R_flat)
  store i32 %call3, ptr %datatype, align 4
  %10 = load i64, ptr %b_alg.addr, align 8
  %cmp4 = icmp eq i64 %10, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %R.addr, align 8
  %call6 = call i64 @FLASH_UDdate_UT_inc_determine_alg_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %11)
  store i64 %call6, ptr %b_alg.addr, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %12 = load ptr, ptr %R.addr, align 8
  %call8 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %12)
  store i64 %call8, ptr %n_T, align 8
  %13 = load ptr, ptr %C.addr, align 8
  %call9 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %13)
  store i64 %call9, ptr %m_C, align 8
  %14 = load ptr, ptr %D.addr, align 8
  %call10 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %14)
  store i64 %call10, ptr %m_D, align 8
  %15 = load i64, ptr %m_C, align 8
  %16 = load i64, ptr %m_D, align 8
  %cmp11 = icmp ugt i64 %15, %16
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end7
  %17 = load i64, ptr %m_C, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  %18 = load i64, ptr %m_D, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %18, %cond.false ]
  store i64 %cond, ptr %m_T, align 8
  %19 = load i32, ptr %datatype, align 4
  %20 = load i64, ptr %m_T, align 8
  %21 = load i64, ptr %b_alg.addr, align 8
  %mul = mul i64 %20, %21
  %22 = load i64, ptr %n_T, align 8
  %23 = load ptr, ptr %b_flash.addr, align 8
  %arrayidx = getelementptr inbounds i64, ptr %23, i64 0
  %24 = load i64, ptr %arrayidx, align 8
  %mul12 = mul i64 %22, %24
  %25 = load i64, ptr %depth.addr, align 8
  %26 = load ptr, ptr %b_flash.addr, align 8
  %27 = load ptr, ptr %T.addr, align 8
  %call13 = call i32 @FLASH_Obj_create_ext(i32 noundef %19, i64 noundef %mul, i64 noundef %mul12, i64 noundef %25, ptr noundef %b_alg.addr, ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %R.addr, align 8
  %call14 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %28)
  store i64 %call14, ptr %m_W, align 8
  %29 = load ptr, ptr %R.addr, align 8
  %call15 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %29)
  store i64 %call15, ptr %n_W, align 8
  %30 = load i32, ptr %datatype, align 4
  %31 = load i64, ptr %m_W, align 8
  %32 = load i64, ptr %b_alg.addr, align 8
  %mul16 = mul i64 %31, %32
  %33 = load i64, ptr %n_W, align 8
  %34 = load ptr, ptr %b_flash.addr, align 8
  %arrayidx17 = getelementptr inbounds i64, ptr %34, i64 0
  %35 = load i64, ptr %arrayidx17, align 8
  %mul18 = mul i64 %33, %35
  %36 = load i64, ptr %depth.addr, align 8
  %37 = load ptr, ptr %b_flash.addr, align 8
  %38 = load ptr, ptr %W.addr, align 8
  %call19 = call i32 @FLASH_Obj_create_ext(i32 noundef %30, i64 noundef %mul16, i64 noundef %mul18, i64 noundef %36, ptr noundef %b_alg.addr, ptr noundef %37, ptr noundef %38)
  ret i32 -1
}

declare void @FLA_Print_message(ptr noundef, ptr noundef, i32 noundef) #1

declare void @FLA_Abort() #1

declare i32 @FLASH_Obj_create_hier_copy_of_flat(ptr noundef byval(%struct.FLA_Obj_view) align 8, i64 noundef, ptr noundef, ptr noundef) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @FLASH_UDdate_UT_inc_determine_alg_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R) #0 {
entry:
  %b_alg = alloca i64, align 8
  %b_flash = alloca i64, align 8
  %call = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R)
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %call)
  store i64 %call1, ptr %b_flash, align 8
  %0 = load i64, ptr %b_flash, align 8
  %conv = uitofp i64 %0 to double
  %mul = fmul double %conv, 2.500000e-01
  %cmp = fcmp ogt double %mul, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %b_flash, align 8
  %conv3 = uitofp i64 %1 to double
  %mul4 = fmul double %conv3, 2.500000e-01
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul4, %cond.true ], [ 1.000000e+00, %cond.false ]
  %conv5 = fptoui double %cond to i64
  store i64 %conv5, ptr %b_alg, align 8
  %2 = load i64, ptr %b_alg, align 8
  ret i64 %2
}

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLASH_Obj_create_ext(i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
