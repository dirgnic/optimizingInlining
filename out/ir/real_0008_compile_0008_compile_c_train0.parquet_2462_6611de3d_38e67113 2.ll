; ModuleID = '<stdin>'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/blis/3/bl1_symm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_ssymm(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #0 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %b_rs.addr = alloca i32, align 4
  %b_cs.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %c_rs.addr = alloca i32, align 4
  %c_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %n_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %b_save = alloca ptr, align 8
  %c_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %b_rs_save = alloca i32, align 4
  %b_cs_save = alloca i32, align 4
  %c_rs_save = alloca i32, align 4
  %c_cs_save = alloca i32, align 4
  %zero = alloca float, align 4
  %one = alloca float, align 4
  %b_copy = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %dim_a = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %ldb_copy = alloca i32, align 4
  %incb_copy = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %symm_needs_copyb = alloca i32, align 4
  %symm_needs_transb = alloca i32, align 4
  %symm_needs_axpyt = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp23 = alloca i32, align 4
  %temp24 = alloca i32, align 4
  %temp44 = alloca i32, align 4
  %temp45 = alloca i32, align 4
  %temp47 = alloca i32, align 4
  %temp48 = alloca i32, align 4
  %temp49 = alloca i32, align 4
  %temp60 = alloca i32, align 4
  %temp61 = alloca i32, align 4
  %temp62 = alloca i32, align 4
  %temp74 = alloca i32, align 4
  %temp75 = alloca i32, align 4
  %temp76 = alloca i32, align 4
  %temp77 = alloca i32, align 4
  %transb = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %b_rs, ptr %b_rs.addr, align 4
  store i32 %b_cs, ptr %b_cs.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %c_rs, ptr %c_rs.addr, align 4
  store i32 %c_cs, ptr %c_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %n_save, align 4
  %2 = load ptr, ptr %a.addr, align 8
  store ptr %2, ptr %a_save, align 8
  %3 = load ptr, ptr %b.addr, align 8
  store ptr %3, ptr %b_save, align 8
  %4 = load ptr, ptr %c.addr, align 8
  store ptr %4, ptr %c_save, align 8
  %5 = load i32, ptr %a_rs.addr, align 4
  store i32 %5, ptr %a_rs_save, align 4
  %6 = load i32, ptr %a_cs.addr, align 4
  store i32 %6, ptr %a_cs_save, align 4
  %7 = load i32, ptr %b_rs.addr, align 4
  store i32 %7, ptr %b_rs_save, align 4
  %8 = load i32, ptr %b_cs.addr, align 4
  store i32 %8, ptr %b_cs_save, align 4
  %9 = load i32, ptr %c_rs.addr, align 4
  store i32 %9, ptr %c_rs_save, align 4
  %10 = load i32, ptr %c_cs.addr, align 4
  store i32 %10, ptr %c_cs_save, align 4
  %call = call float @bl1_s0()
  store float %call, ptr %zero, align 4
  %call1 = call float @bl1_s1()
  store float %call1, ptr %one, align 4
  store i32 0, ptr %symm_needs_copyb, align 4
  store i32 0, ptr %symm_needs_transb, align 4
  store i32 0, ptr %symm_needs_axpyt, align 4
  %11 = load i32, ptr %m.addr, align 4
  %12 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim2(i32 noundef %11, i32 noundef %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i32, ptr %side.addr, align 4
  %14 = load i32, ptr %m.addr, align 4
  %15 = load i32, ptr %n.addr, align 4
  call void @bl1_set_dim_with_side(i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %dim_a)
  %16 = load i32, ptr %uplo.addr, align 4
  %17 = load i32, ptr %dim_a, align 4
  %18 = load i32, ptr %dim_a, align 4
  %19 = load ptr, ptr %a_save, align 8
  %20 = load i32, ptr %a_rs_save, align 4
  %21 = load i32, ptr %a_cs_save, align 4
  call void @bl1_screate_contigmr(i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %22 = load i32, ptr %m.addr, align 4
  %23 = load i32, ptr %n.addr, align 4
  %24 = load ptr, ptr %b_save, align 8
  %25 = load i32, ptr %b_rs_save, align 4
  %26 = load i32, ptr %b_cs_save, align 4
  call void @bl1_screate_contigm(i32 noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %27 = load i32, ptr %m.addr, align 4
  %28 = load i32, ptr %n.addr, align 4
  %29 = load ptr, ptr %c_save, align 8
  %30 = load i32, ptr %c_rs_save, align 4
  %31 = load i32, ptr %c_cs_save, align 4
  call void @bl1_screate_contigm(i32 noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %32 = load i32, ptr %a_cs.addr, align 4
  store i32 %32, ptr %lda, align 4
  %33 = load i32, ptr %a_rs.addr, align 4
  store i32 %33, ptr %inca, align 4
  %34 = load i32, ptr %b_cs.addr, align 4
  store i32 %34, ptr %ldb, align 4
  %35 = load i32, ptr %b_rs.addr, align 4
  store i32 %35, ptr %incb, align 4
  %36 = load i32, ptr %c_cs.addr, align 4
  store i32 %36, ptr %ldc, align 4
  %37 = load i32, ptr %c_rs.addr, align 4
  store i32 %37, ptr %incc, align 4
  %38 = load i32, ptr %c_rs.addr, align 4
  %39 = load i32, ptr %c_cs.addr, align 4
  %call3 = call i32 @bl1_is_col_storage(i32 noundef %38, i32 noundef %39)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else37

if.then5:                                         ; preds = %if.end
  %40 = load i32, ptr %a_rs.addr, align 4
  %41 = load i32, ptr %a_cs.addr, align 4
  %call6 = call i32 @bl1_is_col_storage(i32 noundef %40, i32 noundef %41)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.then5
  %42 = load i32, ptr %b_rs.addr, align 4
  %43 = load i32, ptr %b_cs.addr, align 4
  %call9 = call i32 @bl1_is_col_storage(i32 noundef %42, i32 noundef %43)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  br label %if.end12

if.else:                                          ; preds = %if.then8
  store i32 1, ptr %symm_needs_copyb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  br label %if.end36

if.else13:                                        ; preds = %if.then5
  %44 = load i32, ptr %b_rs.addr, align 4
  %45 = load i32, ptr %b_cs.addr, align 4
  %call14 = call i32 @bl1_is_col_storage(i32 noundef %44, i32 noundef %45)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else13
  %46 = load i32, ptr %lda, align 4
  store i32 %46, ptr %temp, align 4
  %47 = load i32, ptr %inca, align 4
  store i32 %47, ptr %lda, align 4
  %48 = load i32, ptr %temp, align 4
  store i32 %48, ptr %inca, align 4
  %49 = load i32, ptr %uplo.addr, align 4
  %call17 = call i32 @bl1_is_lower(i32 noundef %49)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.then16
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end21

if.else20:                                        ; preds = %if.then16
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  br label %if.end35

if.else22:                                        ; preds = %if.else13
  %50 = load i32, ptr %lda, align 4
  store i32 %50, ptr %temp23, align 4
  %51 = load i32, ptr %inca, align 4
  store i32 %51, ptr %lda, align 4
  %52 = load i32, ptr %temp23, align 4
  store i32 %52, ptr %inca, align 4
  %53 = load i32, ptr %ldb, align 4
  store i32 %53, ptr %temp24, align 4
  %54 = load i32, ptr %incb, align 4
  store i32 %54, ptr %ldb, align 4
  %55 = load i32, ptr %temp24, align 4
  store i32 %55, ptr %incb, align 4
  %56 = load i32, ptr %side.addr, align 4
  %call25 = call i32 @bl1_is_left(i32 noundef %56)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else22
  store i32 301, ptr %side.addr, align 4
  br label %if.end29

if.else28:                                        ; preds = %if.else22
  store i32 300, ptr %side.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %57 = load i32, ptr %uplo.addr, align 4
  %call30 = call i32 @bl1_is_lower(i32 noundef %57)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.end29
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end34

if.else33:                                        ; preds = %if.end29
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end12
  br label %if.end90

if.else37:                                        ; preds = %if.end
  %58 = load i32, ptr %a_rs.addr, align 4
  %59 = load i32, ptr %a_cs.addr, align 4
  %call38 = call i32 @bl1_is_col_storage(i32 noundef %58, i32 noundef %59)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.else56

if.then40:                                        ; preds = %if.else37
  %60 = load i32, ptr %b_rs.addr, align 4
  %61 = load i32, ptr %b_cs.addr, align 4
  %call41 = call i32 @bl1_is_col_storage(i32 noundef %60, i32 noundef %61)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.then40
  %62 = load i32, ptr %ldc, align 4
  store i32 %62, ptr %temp44, align 4
  %63 = load i32, ptr %incc, align 4
  store i32 %63, ptr %ldc, align 4
  %64 = load i32, ptr %temp44, align 4
  store i32 %64, ptr %incc, align 4
  %65 = load i32, ptr %m.addr, align 4
  store i32 %65, ptr %temp45, align 4
  %66 = load i32, ptr %n.addr, align 4
  store i32 %66, ptr %m.addr, align 4
  %67 = load i32, ptr %temp45, align 4
  store i32 %67, ptr %n.addr, align 4
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end55

if.else46:                                        ; preds = %if.then40
  %68 = load i32, ptr %ldc, align 4
  store i32 %68, ptr %temp47, align 4
  %69 = load i32, ptr %incc, align 4
  store i32 %69, ptr %ldc, align 4
  %70 = load i32, ptr %temp47, align 4
  store i32 %70, ptr %incc, align 4
  %71 = load i32, ptr %ldb, align 4
  store i32 %71, ptr %temp48, align 4
  %72 = load i32, ptr %incb, align 4
  store i32 %72, ptr %ldb, align 4
  %73 = load i32, ptr %temp48, align 4
  store i32 %73, ptr %incb, align 4
  %74 = load i32, ptr %m.addr, align 4
  store i32 %74, ptr %temp49, align 4
  %75 = load i32, ptr %n.addr, align 4
  store i32 %75, ptr %m.addr, align 4
  %76 = load i32, ptr %temp49, align 4
  store i32 %76, ptr %n.addr, align 4
  %77 = load i32, ptr %side.addr, align 4
  %call50 = call i32 @bl1_is_left(i32 noundef %77)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else46
  store i32 301, ptr %side.addr, align 4
  br label %if.end54

if.else53:                                        ; preds = %if.else46
  store i32 300, ptr %side.addr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then43
  br label %if.end89

if.else56:                                        ; preds = %if.else37
  %78 = load i32, ptr %b_rs.addr, align 4
  %79 = load i32, ptr %b_cs.addr, align 4
  %call57 = call i32 @bl1_is_col_storage(i32 noundef %78, i32 noundef %79)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else73

if.then59:                                        ; preds = %if.else56
  %80 = load i32, ptr %ldc, align 4
  store i32 %80, ptr %temp60, align 4
  %81 = load i32, ptr %incc, align 4
  store i32 %81, ptr %ldc, align 4
  %82 = load i32, ptr %temp60, align 4
  store i32 %82, ptr %incc, align 4
  %83 = load i32, ptr %lda, align 4
  store i32 %83, ptr %temp61, align 4
  %84 = load i32, ptr %inca, align 4
  store i32 %84, ptr %lda, align 4
  %85 = load i32, ptr %temp61, align 4
  store i32 %85, ptr %inca, align 4
  %86 = load i32, ptr %m.addr, align 4
  store i32 %86, ptr %temp62, align 4
  %87 = load i32, ptr %n.addr, align 4
  store i32 %87, ptr %m.addr, align 4
  %88 = load i32, ptr %temp62, align 4
  store i32 %88, ptr %n.addr, align 4
  %89 = load i32, ptr %side.addr, align 4
  %call63 = call i32 @bl1_is_left(i32 noundef %89)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then59
  store i32 301, ptr %side.addr, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then59
  store i32 300, ptr %side.addr, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  %90 = load i32, ptr %uplo.addr, align 4
  %call68 = call i32 @bl1_is_lower(i32 noundef %90)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end67
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end72

if.else71:                                        ; preds = %if.end67
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  store i32 1, ptr %symm_needs_copyb, align 4
  store i32 1, ptr %symm_needs_transb, align 4
  br label %if.end88

if.else73:                                        ; preds = %if.else56
  %91 = load i32, ptr %ldc, align 4
  store i32 %91, ptr %temp74, align 4
  %92 = load i32, ptr %incc, align 4
  store i32 %92, ptr %ldc, align 4
  %93 = load i32, ptr %temp74, align 4
  store i32 %93, ptr %incc, align 4
  %94 = load i32, ptr %lda, align 4
  store i32 %94, ptr %temp75, align 4
  %95 = load i32, ptr %inca, align 4
  store i32 %95, ptr %lda, align 4
  %96 = load i32, ptr %temp75, align 4
  store i32 %96, ptr %inca, align 4
  %97 = load i32, ptr %ldb, align 4
  store i32 %97, ptr %temp76, align 4
  %98 = load i32, ptr %incb, align 4
  store i32 %98, ptr %ldb, align 4
  %99 = load i32, ptr %temp76, align 4
  store i32 %99, ptr %incb, align 4
  %100 = load i32, ptr %m.addr, align 4
  store i32 %100, ptr %temp77, align 4
  %101 = load i32, ptr %n.addr, align 4
  store i32 %101, ptr %m.addr, align 4
  %102 = load i32, ptr %temp77, align 4
  store i32 %102, ptr %n.addr, align 4
  %103 = load i32, ptr %uplo.addr, align 4
  %call78 = call i32 @bl1_is_lower(i32 noundef %103)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else73
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end82

if.else81:                                        ; preds = %if.else73
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  %104 = load i32, ptr %side.addr, align 4
  %call83 = call i32 @bl1_is_left(i32 noundef %104)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end82
  store i32 301, ptr %side.addr, align 4
  br label %if.end87

if.else86:                                        ; preds = %if.end82
  store i32 300, ptr %side.addr, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end72
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end55
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end36
  %105 = load ptr, ptr %b.addr, align 8
  store ptr %105, ptr %b_copy, align 8
  %106 = load i32, ptr %ldb, align 4
  store i32 %106, ptr %ldb_copy, align 4
  %107 = load i32, ptr %incb, align 4
  store i32 %107, ptr %incb_copy, align 4
  %108 = load i32, ptr %symm_needs_copyb, align 4
  %tobool91 = icmp ne i32 %108, 0
  br i1 %tobool91, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end90
  %109 = load i32, ptr %symm_needs_transb, align 4
  %tobool93 = icmp ne i32 %109, 0
  br i1 %tobool93, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.then92
  store i32 101, ptr %transb, align 4
  br label %if.end96

if.else95:                                        ; preds = %if.then92
  store i32 100, ptr %transb, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then94
  %110 = load i32, ptr %m.addr, align 4
  %111 = load i32, ptr %n.addr, align 4
  %call97 = call ptr @bl1_sallocm(i32 noundef %110, i32 noundef %111)
  store ptr %call97, ptr %b_copy, align 8
  %112 = load i32, ptr %m.addr, align 4
  store i32 %112, ptr %ldb_copy, align 4
  store i32 1, ptr %incb_copy, align 4
  %113 = load i32, ptr %transb, align 4
  %114 = load i32, ptr %m.addr, align 4
  %115 = load i32, ptr %n.addr, align 4
  %116 = load ptr, ptr %b.addr, align 8
  %117 = load i32, ptr %incb, align 4
  %118 = load i32, ptr %ldb, align 4
  %119 = load ptr, ptr %b_copy, align 8
  %120 = load i32, ptr %incb_copy, align 4
  %121 = load i32, ptr %ldb_copy, align 4
  call void @bl1_scopymt(i32 noundef %113, i32 noundef %114, i32 noundef %115, ptr noundef %116, i32 noundef %117, i32 noundef %118, ptr noundef %119, i32 noundef %120, i32 noundef %121)
  br label %if.end98

if.end98:                                         ; preds = %if.end96, %if.end90
  %122 = load i32, ptr %symm_needs_axpyt, align 4
  %tobool99 = icmp ne i32 %122, 0
  br i1 %tobool99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end98
  %123 = load i32, ptr %n.addr, align 4
  %124 = load i32, ptr %m.addr, align 4
  %call101 = call ptr @bl1_sallocm(i32 noundef %123, i32 noundef %124)
  store ptr %call101, ptr %c_trans, align 8
  %125 = load i32, ptr %n.addr, align 4
  store i32 %125, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %126 = load i32, ptr %side.addr, align 4
  %127 = load i32, ptr %uplo.addr, align 4
  %128 = load i32, ptr %n.addr, align 4
  %129 = load i32, ptr %m.addr, align 4
  %130 = load ptr, ptr %alpha.addr, align 8
  %131 = load ptr, ptr %a.addr, align 8
  %132 = load i32, ptr %lda, align 4
  %133 = load ptr, ptr %b.addr, align 8
  %134 = load i32, ptr %ldb, align 4
  %135 = load ptr, ptr %c_trans, align 8
  %136 = load i32, ptr %ldc_trans, align 4
  call void @bl1_ssymm_blas(i32 noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134, ptr noundef %zero, ptr noundef %135, i32 noundef %136)
  %137 = load i32, ptr %m.addr, align 4
  %138 = load i32, ptr %n.addr, align 4
  %139 = load ptr, ptr %beta.addr, align 8
  %140 = load ptr, ptr %c.addr, align 8
  %141 = load i32, ptr %incc, align 4
  %142 = load i32, ptr %ldc, align 4
  call void @bl1_sscalm(i32 noundef 500, i32 noundef %137, i32 noundef %138, ptr noundef %139, ptr noundef %140, i32 noundef %141, i32 noundef %142)
  %143 = load i32, ptr %m.addr, align 4
  %144 = load i32, ptr %n.addr, align 4
  %145 = load ptr, ptr %c_trans, align 8
  %146 = load i32, ptr %incc_trans, align 4
  %147 = load i32, ptr %ldc_trans, align 4
  %148 = load ptr, ptr %c.addr, align 8
  %149 = load i32, ptr %incc, align 4
  %150 = load i32, ptr %ldc, align 4
  call void @bl1_saxpymt(i32 noundef 101, i32 noundef %143, i32 noundef %144, ptr noundef %one, ptr noundef %145, i32 noundef %146, i32 noundef %147, ptr noundef %148, i32 noundef %149, i32 noundef %150)
  %151 = load ptr, ptr %c_trans, align 8
  call void @bl1_sfree(ptr noundef %151)
  br label %if.end103

if.else102:                                       ; preds = %if.end98
  %152 = load i32, ptr %side.addr, align 4
  %153 = load i32, ptr %uplo.addr, align 4
  %154 = load i32, ptr %m.addr, align 4
  %155 = load i32, ptr %n.addr, align 4
  %156 = load ptr, ptr %alpha.addr, align 8
  %157 = load ptr, ptr %a.addr, align 8
  %158 = load i32, ptr %lda, align 4
  %159 = load ptr, ptr %b_copy, align 8
  %160 = load i32, ptr %ldb_copy, align 4
  %161 = load ptr, ptr %beta.addr, align 8
  %162 = load ptr, ptr %c.addr, align 8
  %163 = load i32, ptr %ldc, align 4
  call void @bl1_ssymm_blas(i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %155, ptr noundef %156, ptr noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef %160, ptr noundef %161, ptr noundef %162, i32 noundef %163)
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then100
  %164 = load i32, ptr %symm_needs_copyb, align 4
  %tobool104 = icmp ne i32 %164, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end103
  %165 = load ptr, ptr %b_copy, align 8
  call void @bl1_sfree(ptr noundef %165)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end103
  %166 = load ptr, ptr %a_save, align 8
  %167 = load i32, ptr %a_rs_save, align 4
  %168 = load i32, ptr %a_cs_save, align 4
  call void @bl1_sfree_contigm(ptr noundef %166, i32 noundef %167, i32 noundef %168, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %169 = load ptr, ptr %b_save, align 8
  %170 = load i32, ptr %b_rs_save, align 4
  %171 = load i32, ptr %b_cs_save, align 4
  call void @bl1_sfree_contigm(ptr noundef %169, i32 noundef %170, i32 noundef %171, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %172 = load i32, ptr %m_save, align 4
  %173 = load i32, ptr %n_save, align 4
  %174 = load ptr, ptr %c_save, align 8
  %175 = load i32, ptr %c_rs_save, align 4
  %176 = load i32, ptr %c_cs_save, align 4
  call void @bl1_sfree_saved_contigm(i32 noundef %172, i32 noundef %173, ptr noundef %174, i32 noundef %175, i32 noundef %176, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end106, %if.then
  ret void
}

declare float @bl1_s0() #1

declare float @bl1_s1() #1

declare i32 @bl1_zero_dim2(i32 noundef, i32 noundef) #1

declare void @bl1_set_dim_with_side(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare void @bl1_screate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_screate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @bl1_is_col_storage(i32 noundef, i32 noundef) #1

declare i32 @bl1_is_lower(i32 noundef) #1

declare i32 @bl1_is_left(i32 noundef) #1

declare ptr @bl1_sallocm(i32 noundef, i32 noundef) #1

declare void @bl1_scopymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_ssymm_blas(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_side = alloca i8, align 1
  %blas_uplo = alloca i8, align 1
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %side.addr, align 4
  call void @bl1_param_map_to_netlib_side(i32 noundef %0, ptr noundef %blas_side)
  %1 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %1, ptr noundef %blas_uplo)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @ssymm_(ptr noundef %blas_side, ptr noundef %blas_uplo, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_sscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_saxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_sfree(ptr noundef) #1

declare void @bl1_sfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_sfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_dsymm(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #0 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %b_rs.addr = alloca i32, align 4
  %b_cs.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %c_rs.addr = alloca i32, align 4
  %c_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %n_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %b_save = alloca ptr, align 8
  %c_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %b_rs_save = alloca i32, align 4
  %b_cs_save = alloca i32, align 4
  %c_rs_save = alloca i32, align 4
  %c_cs_save = alloca i32, align 4
  %zero = alloca double, align 8
  %one = alloca double, align 8
  %b_copy = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %dim_a = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %ldb_copy = alloca i32, align 4
  %incb_copy = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %symm_needs_copyb = alloca i32, align 4
  %symm_needs_transb = alloca i32, align 4
  %symm_needs_axpyt = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp23 = alloca i32, align 4
  %temp24 = alloca i32, align 4
  %temp44 = alloca i32, align 4
  %temp45 = alloca i32, align 4
  %temp47 = alloca i32, align 4
  %temp48 = alloca i32, align 4
  %temp49 = alloca i32, align 4
  %temp60 = alloca i32, align 4
  %temp61 = alloca i32, align 4
  %temp62 = alloca i32, align 4
  %temp74 = alloca i32, align 4
  %temp75 = alloca i32, align 4
  %temp76 = alloca i32, align 4
  %temp77 = alloca i32, align 4
  %transb = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %b_rs, ptr %b_rs.addr, align 4
  store i32 %b_cs, ptr %b_cs.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %c_rs, ptr %c_rs.addr, align 4
  store i32 %c_cs, ptr %c_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %n_save, align 4
  %2 = load ptr, ptr %a.addr, align 8
  store ptr %2, ptr %a_save, align 8
  %3 = load ptr, ptr %b.addr, align 8
  store ptr %3, ptr %b_save, align 8
  %4 = load ptr, ptr %c.addr, align 8
  store ptr %4, ptr %c_save, align 8
  %5 = load i32, ptr %a_rs.addr, align 4
  store i32 %5, ptr %a_rs_save, align 4
  %6 = load i32, ptr %a_cs.addr, align 4
  store i32 %6, ptr %a_cs_save, align 4
  %7 = load i32, ptr %b_rs.addr, align 4
  store i32 %7, ptr %b_rs_save, align 4
  %8 = load i32, ptr %b_cs.addr, align 4
  store i32 %8, ptr %b_cs_save, align 4
  %9 = load i32, ptr %c_rs.addr, align 4
  store i32 %9, ptr %c_rs_save, align 4
  %10 = load i32, ptr %c_cs.addr, align 4
  store i32 %10, ptr %c_cs_save, align 4
  %call = call double @bl1_d0()
  store double %call, ptr %zero, align 8
  %call1 = call double @bl1_d1()
  store double %call1, ptr %one, align 8
  store i32 0, ptr %symm_needs_copyb, align 4
  store i32 0, ptr %symm_needs_transb, align 4
  store i32 0, ptr %symm_needs_axpyt, align 4
  %11 = load i32, ptr %m.addr, align 4
  %12 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim2(i32 noundef %11, i32 noundef %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i32, ptr %side.addr, align 4
  %14 = load i32, ptr %m.addr, align 4
  %15 = load i32, ptr %n.addr, align 4
  call void @bl1_set_dim_with_side(i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %dim_a)
  %16 = load i32, ptr %uplo.addr, align 4
  %17 = load i32, ptr %dim_a, align 4
  %18 = load i32, ptr %dim_a, align 4
  %19 = load ptr, ptr %a_save, align 8
  %20 = load i32, ptr %a_rs_save, align 4
  %21 = load i32, ptr %a_cs_save, align 4
  call void @bl1_dcreate_contigmr(i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %22 = load i32, ptr %m.addr, align 4
  %23 = load i32, ptr %n.addr, align 4
  %24 = load ptr, ptr %b_save, align 8
  %25 = load i32, ptr %b_rs_save, align 4
  %26 = load i32, ptr %b_cs_save, align 4
  call void @bl1_dcreate_contigm(i32 noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %27 = load i32, ptr %m.addr, align 4
  %28 = load i32, ptr %n.addr, align 4
  %29 = load ptr, ptr %c_save, align 8
  %30 = load i32, ptr %c_rs_save, align 4
  %31 = load i32, ptr %c_cs_save, align 4
  call void @bl1_dcreate_contigm(i32 noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %32 = load i32, ptr %a_cs.addr, align 4
  store i32 %32, ptr %lda, align 4
  %33 = load i32, ptr %a_rs.addr, align 4
  store i32 %33, ptr %inca, align 4
  %34 = load i32, ptr %b_cs.addr, align 4
  store i32 %34, ptr %ldb, align 4
  %35 = load i32, ptr %b_rs.addr, align 4
  store i32 %35, ptr %incb, align 4
  %36 = load i32, ptr %c_cs.addr, align 4
  store i32 %36, ptr %ldc, align 4
  %37 = load i32, ptr %c_rs.addr, align 4
  store i32 %37, ptr %incc, align 4
  %38 = load i32, ptr %c_rs.addr, align 4
  %39 = load i32, ptr %c_cs.addr, align 4
  %call3 = call i32 @bl1_is_col_storage(i32 noundef %38, i32 noundef %39)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else37

if.then5:                                         ; preds = %if.end
  %40 = load i32, ptr %a_rs.addr, align 4
  %41 = load i32, ptr %a_cs.addr, align 4
  %call6 = call i32 @bl1_is_col_storage(i32 noundef %40, i32 noundef %41)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.then5
  %42 = load i32, ptr %b_rs.addr, align 4
  %43 = load i32, ptr %b_cs.addr, align 4
  %call9 = call i32 @bl1_is_col_storage(i32 noundef %42, i32 noundef %43)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  br label %if.end12

if.else:                                          ; preds = %if.then8
  store i32 1, ptr %symm_needs_copyb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  br label %if.end36

if.else13:                                        ; preds = %if.then5
  %44 = load i32, ptr %b_rs.addr, align 4
  %45 = load i32, ptr %b_cs.addr, align 4
  %call14 = call i32 @bl1_is_col_storage(i32 noundef %44, i32 noundef %45)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else13
  %46 = load i32, ptr %lda, align 4
  store i32 %46, ptr %temp, align 4
  %47 = load i32, ptr %inca, align 4
  store i32 %47, ptr %lda, align 4
  %48 = load i32, ptr %temp, align 4
  store i32 %48, ptr %inca, align 4
  %49 = load i32, ptr %uplo.addr, align 4
  %call17 = call i32 @bl1_is_lower(i32 noundef %49)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.then16
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end21

if.else20:                                        ; preds = %if.then16
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  br label %if.end35

if.else22:                                        ; preds = %if.else13
  %50 = load i32, ptr %lda, align 4
  store i32 %50, ptr %temp23, align 4
  %51 = load i32, ptr %inca, align 4
  store i32 %51, ptr %lda, align 4
  %52 = load i32, ptr %temp23, align 4
  store i32 %52, ptr %inca, align 4
  %53 = load i32, ptr %ldb, align 4
  store i32 %53, ptr %temp24, align 4
  %54 = load i32, ptr %incb, align 4
  store i32 %54, ptr %ldb, align 4
  %55 = load i32, ptr %temp24, align 4
  store i32 %55, ptr %incb, align 4
  %56 = load i32, ptr %side.addr, align 4
  %call25 = call i32 @bl1_is_left(i32 noundef %56)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else22
  store i32 301, ptr %side.addr, align 4
  br label %if.end29

if.else28:                                        ; preds = %if.else22
  store i32 300, ptr %side.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %57 = load i32, ptr %uplo.addr, align 4
  %call30 = call i32 @bl1_is_lower(i32 noundef %57)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.end29
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end34

if.else33:                                        ; preds = %if.end29
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end12
  br label %if.end90

if.else37:                                        ; preds = %if.end
  %58 = load i32, ptr %a_rs.addr, align 4
  %59 = load i32, ptr %a_cs.addr, align 4
  %call38 = call i32 @bl1_is_col_storage(i32 noundef %58, i32 noundef %59)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.else56

if.then40:                                        ; preds = %if.else37
  %60 = load i32, ptr %b_rs.addr, align 4
  %61 = load i32, ptr %b_cs.addr, align 4
  %call41 = call i32 @bl1_is_col_storage(i32 noundef %60, i32 noundef %61)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.then40
  %62 = load i32, ptr %ldc, align 4
  store i32 %62, ptr %temp44, align 4
  %63 = load i32, ptr %incc, align 4
  store i32 %63, ptr %ldc, align 4
  %64 = load i32, ptr %temp44, align 4
  store i32 %64, ptr %incc, align 4
  %65 = load i32, ptr %m.addr, align 4
  store i32 %65, ptr %temp45, align 4
  %66 = load i32, ptr %n.addr, align 4
  store i32 %66, ptr %m.addr, align 4
  %67 = load i32, ptr %temp45, align 4
  store i32 %67, ptr %n.addr, align 4
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end55

if.else46:                                        ; preds = %if.then40
  %68 = load i32, ptr %ldc, align 4
  store i32 %68, ptr %temp47, align 4
  %69 = load i32, ptr %incc, align 4
  store i32 %69, ptr %ldc, align 4
  %70 = load i32, ptr %temp47, align 4
  store i32 %70, ptr %incc, align 4
  %71 = load i32, ptr %ldb, align 4
  store i32 %71, ptr %temp48, align 4
  %72 = load i32, ptr %incb, align 4
  store i32 %72, ptr %ldb, align 4
  %73 = load i32, ptr %temp48, align 4
  store i32 %73, ptr %incb, align 4
  %74 = load i32, ptr %m.addr, align 4
  store i32 %74, ptr %temp49, align 4
  %75 = load i32, ptr %n.addr, align 4
  store i32 %75, ptr %m.addr, align 4
  %76 = load i32, ptr %temp49, align 4
  store i32 %76, ptr %n.addr, align 4
  %77 = load i32, ptr %side.addr, align 4
  %call50 = call i32 @bl1_is_left(i32 noundef %77)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else46
  store i32 301, ptr %side.addr, align 4
  br label %if.end54

if.else53:                                        ; preds = %if.else46
  store i32 300, ptr %side.addr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then43
  br label %if.end89

if.else56:                                        ; preds = %if.else37
  %78 = load i32, ptr %b_rs.addr, align 4
  %79 = load i32, ptr %b_cs.addr, align 4
  %call57 = call i32 @bl1_is_col_storage(i32 noundef %78, i32 noundef %79)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else73

if.then59:                                        ; preds = %if.else56
  %80 = load i32, ptr %ldc, align 4
  store i32 %80, ptr %temp60, align 4
  %81 = load i32, ptr %incc, align 4
  store i32 %81, ptr %ldc, align 4
  %82 = load i32, ptr %temp60, align 4
  store i32 %82, ptr %incc, align 4
  %83 = load i32, ptr %lda, align 4
  store i32 %83, ptr %temp61, align 4
  %84 = load i32, ptr %inca, align 4
  store i32 %84, ptr %lda, align 4
  %85 = load i32, ptr %temp61, align 4
  store i32 %85, ptr %inca, align 4
  %86 = load i32, ptr %m.addr, align 4
  store i32 %86, ptr %temp62, align 4
  %87 = load i32, ptr %n.addr, align 4
  store i32 %87, ptr %m.addr, align 4
  %88 = load i32, ptr %temp62, align 4
  store i32 %88, ptr %n.addr, align 4
  %89 = load i32, ptr %side.addr, align 4
  %call63 = call i32 @bl1_is_left(i32 noundef %89)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then59
  store i32 301, ptr %side.addr, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then59
  store i32 300, ptr %side.addr, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  %90 = load i32, ptr %uplo.addr, align 4
  %call68 = call i32 @bl1_is_lower(i32 noundef %90)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end67
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end72

if.else71:                                        ; preds = %if.end67
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  store i32 1, ptr %symm_needs_copyb, align 4
  store i32 1, ptr %symm_needs_transb, align 4
  br label %if.end88

if.else73:                                        ; preds = %if.else56
  %91 = load i32, ptr %ldc, align 4
  store i32 %91, ptr %temp74, align 4
  %92 = load i32, ptr %incc, align 4
  store i32 %92, ptr %ldc, align 4
  %93 = load i32, ptr %temp74, align 4
  store i32 %93, ptr %incc, align 4
  %94 = load i32, ptr %lda, align 4
  store i32 %94, ptr %temp75, align 4
  %95 = load i32, ptr %inca, align 4
  store i32 %95, ptr %lda, align 4
  %96 = load i32, ptr %temp75, align 4
  store i32 %96, ptr %inca, align 4
  %97 = load i32, ptr %ldb, align 4
  store i32 %97, ptr %temp76, align 4
  %98 = load i32, ptr %incb, align 4
  store i32 %98, ptr %ldb, align 4
  %99 = load i32, ptr %temp76, align 4
  store i32 %99, ptr %incb, align 4
  %100 = load i32, ptr %m.addr, align 4
  store i32 %100, ptr %temp77, align 4
  %101 = load i32, ptr %n.addr, align 4
  store i32 %101, ptr %m.addr, align 4
  %102 = load i32, ptr %temp77, align 4
  store i32 %102, ptr %n.addr, align 4
  %103 = load i32, ptr %uplo.addr, align 4
  %call78 = call i32 @bl1_is_lower(i32 noundef %103)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else73
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end82

if.else81:                                        ; preds = %if.else73
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  %104 = load i32, ptr %side.addr, align 4
  %call83 = call i32 @bl1_is_left(i32 noundef %104)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end82
  store i32 301, ptr %side.addr, align 4
  br label %if.end87

if.else86:                                        ; preds = %if.end82
  store i32 300, ptr %side.addr, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end72
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end55
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end36
  %105 = load ptr, ptr %b.addr, align 8
  store ptr %105, ptr %b_copy, align 8
  %106 = load i32, ptr %ldb, align 4
  store i32 %106, ptr %ldb_copy, align 4
  %107 = load i32, ptr %incb, align 4
  store i32 %107, ptr %incb_copy, align 4
  %108 = load i32, ptr %symm_needs_copyb, align 4
  %tobool91 = icmp ne i32 %108, 0
  br i1 %tobool91, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end90
  %109 = load i32, ptr %symm_needs_transb, align 4
  %tobool93 = icmp ne i32 %109, 0
  br i1 %tobool93, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.then92
  store i32 101, ptr %transb, align 4
  br label %if.end96

if.else95:                                        ; preds = %if.then92
  store i32 100, ptr %transb, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then94
  %110 = load i32, ptr %m.addr, align 4
  %111 = load i32, ptr %n.addr, align 4
  %call97 = call ptr @bl1_dallocm(i32 noundef %110, i32 noundef %111)
  store ptr %call97, ptr %b_copy, align 8
  %112 = load i32, ptr %m.addr, align 4
  store i32 %112, ptr %ldb_copy, align 4
  store i32 1, ptr %incb_copy, align 4
  %113 = load i32, ptr %transb, align 4
  %114 = load i32, ptr %m.addr, align 4
  %115 = load i32, ptr %n.addr, align 4
  %116 = load ptr, ptr %b.addr, align 8
  %117 = load i32, ptr %incb, align 4
  %118 = load i32, ptr %ldb, align 4
  %119 = load ptr, ptr %b_copy, align 8
  %120 = load i32, ptr %incb_copy, align 4
  %121 = load i32, ptr %ldb_copy, align 4
  call void @bl1_dcopymt(i32 noundef %113, i32 noundef %114, i32 noundef %115, ptr noundef %116, i32 noundef %117, i32 noundef %118, ptr noundef %119, i32 noundef %120, i32 noundef %121)
  br label %if.end98

if.end98:                                         ; preds = %if.end96, %if.end90
  %122 = load i32, ptr %symm_needs_axpyt, align 4
  %tobool99 = icmp ne i32 %122, 0
  br i1 %tobool99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end98
  %123 = load i32, ptr %n.addr, align 4
  %124 = load i32, ptr %m.addr, align 4
  %call101 = call ptr @bl1_dallocm(i32 noundef %123, i32 noundef %124)
  store ptr %call101, ptr %c_trans, align 8
  %125 = load i32, ptr %n.addr, align 4
  store i32 %125, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %126 = load i32, ptr %side.addr, align 4
  %127 = load i32, ptr %uplo.addr, align 4
  %128 = load i32, ptr %n.addr, align 4
  %129 = load i32, ptr %m.addr, align 4
  %130 = load ptr, ptr %alpha.addr, align 8
  %131 = load ptr, ptr %a.addr, align 8
  %132 = load i32, ptr %lda, align 4
  %133 = load ptr, ptr %b.addr, align 8
  %134 = load i32, ptr %ldb, align 4
  %135 = load ptr, ptr %c_trans, align 8
  %136 = load i32, ptr %ldc_trans, align 4
  call void @bl1_dsymm_blas(i32 noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134, ptr noundef %zero, ptr noundef %135, i32 noundef %136)
  %137 = load i32, ptr %m.addr, align 4
  %138 = load i32, ptr %n.addr, align 4
  %139 = load ptr, ptr %beta.addr, align 8
  %140 = load ptr, ptr %c.addr, align 8
  %141 = load i32, ptr %incc, align 4
  %142 = load i32, ptr %ldc, align 4
  call void @bl1_dscalm(i32 noundef 500, i32 noundef %137, i32 noundef %138, ptr noundef %139, ptr noundef %140, i32 noundef %141, i32 noundef %142)
  %143 = load i32, ptr %m.addr, align 4
  %144 = load i32, ptr %n.addr, align 4
  %145 = load ptr, ptr %c_trans, align 8
  %146 = load i32, ptr %incc_trans, align 4
  %147 = load i32, ptr %ldc_trans, align 4
  %148 = load ptr, ptr %c.addr, align 8
  %149 = load i32, ptr %incc, align 4
  %150 = load i32, ptr %ldc, align 4
  call void @bl1_daxpymt(i32 noundef 101, i32 noundef %143, i32 noundef %144, ptr noundef %one, ptr noundef %145, i32 noundef %146, i32 noundef %147, ptr noundef %148, i32 noundef %149, i32 noundef %150)
  %151 = load ptr, ptr %c_trans, align 8
  call void @bl1_dfree(ptr noundef %151)
  br label %if.end103

if.else102:                                       ; preds = %if.end98
  %152 = load i32, ptr %side.addr, align 4
  %153 = load i32, ptr %uplo.addr, align 4
  %154 = load i32, ptr %m.addr, align 4
  %155 = load i32, ptr %n.addr, align 4
  %156 = load ptr, ptr %alpha.addr, align 8
  %157 = load ptr, ptr %a.addr, align 8
  %158 = load i32, ptr %lda, align 4
  %159 = load ptr, ptr %b_copy, align 8
  %160 = load i32, ptr %ldb_copy, align 4
  %161 = load ptr, ptr %beta.addr, align 8
  %162 = load ptr, ptr %c.addr, align 8
  %163 = load i32, ptr %ldc, align 4
  call void @bl1_dsymm_blas(i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %155, ptr noundef %156, ptr noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef %160, ptr noundef %161, ptr noundef %162, i32 noundef %163)
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then100
  %164 = load i32, ptr %symm_needs_copyb, align 4
  %tobool104 = icmp ne i32 %164, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end103
  %165 = load ptr, ptr %b_copy, align 8
  call void @bl1_dfree(ptr noundef %165)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end103
  %166 = load ptr, ptr %a_save, align 8
  %167 = load i32, ptr %a_rs_save, align 4
  %168 = load i32, ptr %a_cs_save, align 4
  call void @bl1_dfree_contigm(ptr noundef %166, i32 noundef %167, i32 noundef %168, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %169 = load ptr, ptr %b_save, align 8
  %170 = load i32, ptr %b_rs_save, align 4
  %171 = load i32, ptr %b_cs_save, align 4
  call void @bl1_dfree_contigm(ptr noundef %169, i32 noundef %170, i32 noundef %171, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %172 = load i32, ptr %m_save, align 4
  %173 = load i32, ptr %n_save, align 4
  %174 = load ptr, ptr %c_save, align 8
  %175 = load i32, ptr %c_rs_save, align 4
  %176 = load i32, ptr %c_cs_save, align 4
  call void @bl1_dfree_saved_contigm(i32 noundef %172, i32 noundef %173, ptr noundef %174, i32 noundef %175, i32 noundef %176, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end106, %if.then
  ret void
}

declare double @bl1_d0() #1

declare double @bl1_d1() #1

declare void @bl1_dcreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_dcreate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @bl1_dallocm(i32 noundef, i32 noundef) #1

declare void @bl1_dcopymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_dsymm_blas(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_side = alloca i8, align 1
  %blas_uplo = alloca i8, align 1
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %side.addr, align 4
  call void @bl1_param_map_to_netlib_side(i32 noundef %0, ptr noundef %blas_side)
  %1 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %1, ptr noundef %blas_uplo)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @dsymm_(ptr noundef %blas_side, ptr noundef %blas_uplo, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_dscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_daxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dfree(ptr noundef) #1

declare void @bl1_dfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_dfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_csymm(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #2 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %b_rs.addr = alloca i32, align 4
  %b_cs.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %c_rs.addr = alloca i32, align 4
  %c_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %n_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %b_save = alloca ptr, align 8
  %c_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %b_rs_save = alloca i32, align 4
  %b_cs_save = alloca i32, align 4
  %c_rs_save = alloca i32, align 4
  %c_cs_save = alloca i32, align 4
  %zero = alloca %struct.scomplex, align 4
  %one = alloca %struct.scomplex, align 4
  %b_copy = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %dim_a = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %ldb_copy = alloca i32, align 4
  %incb_copy = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %symm_needs_copyb = alloca i32, align 4
  %symm_needs_transb = alloca i32, align 4
  %symm_needs_axpyt = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp23 = alloca i32, align 4
  %temp24 = alloca i32, align 4
  %temp44 = alloca i32, align 4
  %temp45 = alloca i32, align 4
  %temp47 = alloca i32, align 4
  %temp48 = alloca i32, align 4
  %temp49 = alloca i32, align 4
  %temp60 = alloca i32, align 4
  %temp61 = alloca i32, align 4
  %temp62 = alloca i32, align 4
  %temp74 = alloca i32, align 4
  %temp75 = alloca i32, align 4
  %temp76 = alloca i32, align 4
  %temp77 = alloca i32, align 4
  %transb = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %b_rs, ptr %b_rs.addr, align 4
  store i32 %b_cs, ptr %b_cs.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %c_rs, ptr %c_rs.addr, align 4
  store i32 %c_cs, ptr %c_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %n_save, align 4
  %2 = load ptr, ptr %a.addr, align 8
  store ptr %2, ptr %a_save, align 8
  %3 = load ptr, ptr %b.addr, align 8
  store ptr %3, ptr %b_save, align 8
  %4 = load ptr, ptr %c.addr, align 8
  store ptr %4, ptr %c_save, align 8
  %5 = load i32, ptr %a_rs.addr, align 4
  store i32 %5, ptr %a_rs_save, align 4
  %6 = load i32, ptr %a_cs.addr, align 4
  store i32 %6, ptr %a_cs_save, align 4
  %7 = load i32, ptr %b_rs.addr, align 4
  store i32 %7, ptr %b_rs_save, align 4
  %8 = load i32, ptr %b_cs.addr, align 4
  store i32 %8, ptr %b_cs_save, align 4
  %9 = load i32, ptr %c_rs.addr, align 4
  store i32 %9, ptr %c_rs_save, align 4
  %10 = load i32, ptr %c_cs.addr, align 4
  store i32 %10, ptr %c_cs_save, align 4
  %call = call <2 x float> @bl1_c0()
  store <2 x float> %call, ptr %zero, align 4
  %call1 = call <2 x float> @bl1_c1()
  store <2 x float> %call1, ptr %one, align 4
  store i32 0, ptr %symm_needs_copyb, align 4
  store i32 0, ptr %symm_needs_transb, align 4
  store i32 0, ptr %symm_needs_axpyt, align 4
  %11 = load i32, ptr %m.addr, align 4
  %12 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim2(i32 noundef %11, i32 noundef %12)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i32, ptr %side.addr, align 4
  %14 = load i32, ptr %m.addr, align 4
  %15 = load i32, ptr %n.addr, align 4
  call void @bl1_set_dim_with_side(i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %dim_a)
  %16 = load i32, ptr %uplo.addr, align 4
  %17 = load i32, ptr %dim_a, align 4
  %18 = load i32, ptr %dim_a, align 4
  %19 = load ptr, ptr %a_save, align 8
  %20 = load i32, ptr %a_rs_save, align 4
  %21 = load i32, ptr %a_cs_save, align 4
  call void @bl1_ccreate_contigmr(i32 noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %22 = load i32, ptr %m.addr, align 4
  %23 = load i32, ptr %n.addr, align 4
  %24 = load ptr, ptr %b_save, align 8
  %25 = load i32, ptr %b_rs_save, align 4
  %26 = load i32, ptr %b_cs_save, align 4
  call void @bl1_ccreate_contigm(i32 noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %27 = load i32, ptr %m.addr, align 4
  %28 = load i32, ptr %n.addr, align 4
  %29 = load ptr, ptr %c_save, align 8
  %30 = load i32, ptr %c_rs_save, align 4
  %31 = load i32, ptr %c_cs_save, align 4
  call void @bl1_ccreate_contigm(i32 noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %32 = load i32, ptr %a_cs.addr, align 4
  store i32 %32, ptr %lda, align 4
  %33 = load i32, ptr %a_rs.addr, align 4
  store i32 %33, ptr %inca, align 4
  %34 = load i32, ptr %b_cs.addr, align 4
  store i32 %34, ptr %ldb, align 4
  %35 = load i32, ptr %b_rs.addr, align 4
  store i32 %35, ptr %incb, align 4
  %36 = load i32, ptr %c_cs.addr, align 4
  store i32 %36, ptr %ldc, align 4
  %37 = load i32, ptr %c_rs.addr, align 4
  store i32 %37, ptr %incc, align 4
  %38 = load i32, ptr %c_rs.addr, align 4
  %39 = load i32, ptr %c_cs.addr, align 4
  %call3 = call i32 @bl1_is_col_storage(i32 noundef %38, i32 noundef %39)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else37

if.then5:                                         ; preds = %if.end
  %40 = load i32, ptr %a_rs.addr, align 4
  %41 = load i32, ptr %a_cs.addr, align 4
  %call6 = call i32 @bl1_is_col_storage(i32 noundef %40, i32 noundef %41)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.then5
  %42 = load i32, ptr %b_rs.addr, align 4
  %43 = load i32, ptr %b_cs.addr, align 4
  %call9 = call i32 @bl1_is_col_storage(i32 noundef %42, i32 noundef %43)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  br label %if.end12

if.else:                                          ; preds = %if.then8
  store i32 1, ptr %symm_needs_copyb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  br label %if.end36

if.else13:                                        ; preds = %if.then5
  %44 = load i32, ptr %b_rs.addr, align 4
  %45 = load i32, ptr %b_cs.addr, align 4
  %call14 = call i32 @bl1_is_col_storage(i32 noundef %44, i32 noundef %45)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else13
  %46 = load i32, ptr %lda, align 4
  store i32 %46, ptr %temp, align 4
  %47 = load i32, ptr %inca, align 4
  store i32 %47, ptr %lda, align 4
  %48 = load i32, ptr %temp, align 4
  store i32 %48, ptr %inca, align 4
  %49 = load i32, ptr %uplo.addr, align 4
  %call17 = call i32 @bl1_is_lower(i32 noundef %49)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.then16
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end21

if.else20:                                        ; preds = %if.then16
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  br label %if.end35

if.else22:                                        ; preds = %if.else13
  %50 = load i32, ptr %lda, align 4
  store i32 %50, ptr %temp23, align 4
  %51 = load i32, ptr %inca, align 4
  store i32 %51, ptr %lda, align 4
  %52 = load i32, ptr %temp23, align 4
  store i32 %52, ptr %inca, align 4
  %53 = load i32, ptr %ldb, align 4
  store i32 %53, ptr %temp24, align 4
  %54 = load i32, ptr %incb, align 4
  store i32 %54, ptr %ldb, align 4
  %55 = load i32, ptr %temp24, align 4
  store i32 %55, ptr %incb, align 4
  %56 = load i32, ptr %side.addr, align 4
  %call25 = call i32 @bl1_is_left(i32 noundef %56)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else22
  store i32 301, ptr %side.addr, align 4
  br label %if.end29

if.else28:                                        ; preds = %if.else22
  store i32 300, ptr %side.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %57 = load i32, ptr %uplo.addr, align 4
  %call30 = call i32 @bl1_is_lower(i32 noundef %57)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.end29
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end34

if.else33:                                        ; preds = %if.end29
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end12
  br label %if.end90

if.else37:                                        ; preds = %if.end
  %58 = load i32, ptr %a_rs.addr, align 4
  %59 = load i32, ptr %a_cs.addr, align 4
  %call38 = call i32 @bl1_is_col_storage(i32 noundef %58, i32 noundef %59)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.else56

if.then40:                                        ; preds = %if.else37
  %60 = load i32, ptr %b_rs.addr, align 4
  %61 = load i32, ptr %b_cs.addr, align 4
  %call41 = call i32 @bl1_is_col_storage(i32 noundef %60, i32 noundef %61)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.then40
  %62 = load i32, ptr %ldc, align 4
  store i32 %62, ptr %temp44, align 4
  %63 = load i32, ptr %incc, align 4
  store i32 %63, ptr %ldc, align 4
  %64 = load i32, ptr %temp44, align 4
  store i32 %64, ptr %incc, align 4
  %65 = load i32, ptr %m.addr, align 4
  store i32 %65, ptr %temp45, align 4
  %66 = load i32, ptr %n.addr, align 4
  store i32 %66, ptr %m.addr, align 4
  %67 = load i32, ptr %temp45, align 4
  store i32 %67, ptr %n.addr, align 4
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end55

if.else46:                                        ; preds = %if.then40
  %68 = load i32, ptr %ldc, align 4
  store i32 %68, ptr %temp47, align 4
  %69 = load i32, ptr %incc, align 4
  store i32 %69, ptr %ldc, align 4
  %70 = load i32, ptr %temp47, align 4
  store i32 %70, ptr %incc, align 4
  %71 = load i32, ptr %ldb, align 4
  store i32 %71, ptr %temp48, align 4
  %72 = load i32, ptr %incb, align 4
  store i32 %72, ptr %ldb, align 4
  %73 = load i32, ptr %temp48, align 4
  store i32 %73, ptr %incb, align 4
  %74 = load i32, ptr %m.addr, align 4
  store i32 %74, ptr %temp49, align 4
  %75 = load i32, ptr %n.addr, align 4
  store i32 %75, ptr %m.addr, align 4
  %76 = load i32, ptr %temp49, align 4
  store i32 %76, ptr %n.addr, align 4
  %77 = load i32, ptr %side.addr, align 4
  %call50 = call i32 @bl1_is_left(i32 noundef %77)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else46
  store i32 301, ptr %side.addr, align 4
  br label %if.end54

if.else53:                                        ; preds = %if.else46
  store i32 300, ptr %side.addr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then43
  br label %if.end89

if.else56:                                        ; preds = %if.else37
  %78 = load i32, ptr %b_rs.addr, align 4
  %79 = load i32, ptr %b_cs.addr, align 4
  %call57 = call i32 @bl1_is_col_storage(i32 noundef %78, i32 noundef %79)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else73

if.then59:                                        ; preds = %if.else56
  %80 = load i32, ptr %ldc, align 4
  store i32 %80, ptr %temp60, align 4
  %81 = load i32, ptr %incc, align 4
  store i32 %81, ptr %ldc, align 4
  %82 = load i32, ptr %temp60, align 4
  store i32 %82, ptr %incc, align 4
  %83 = load i32, ptr %lda, align 4
  store i32 %83, ptr %temp61, align 4
  %84 = load i32, ptr %inca, align 4
  store i32 %84, ptr %lda, align 4
  %85 = load i32, ptr %temp61, align 4
  store i32 %85, ptr %inca, align 4
  %86 = load i32, ptr %m.addr, align 4
  store i32 %86, ptr %temp62, align 4
  %87 = load i32, ptr %n.addr, align 4
  store i32 %87, ptr %m.addr, align 4
  %88 = load i32, ptr %temp62, align 4
  store i32 %88, ptr %n.addr, align 4
  %89 = load i32, ptr %side.addr, align 4
  %call63 = call i32 @bl1_is_left(i32 noundef %89)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then59
  store i32 301, ptr %side.addr, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then59
  store i32 300, ptr %side.addr, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  %90 = load i32, ptr %uplo.addr, align 4
  %call68 = call i32 @bl1_is_lower(i32 noundef %90)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end67
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end72

if.else71:                                        ; preds = %if.end67
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  store i32 1, ptr %symm_needs_copyb, align 4
  store i32 1, ptr %symm_needs_transb, align 4
  br label %if.end88

if.else73:                                        ; preds = %if.else56
  %91 = load i32, ptr %ldc, align 4
  store i32 %91, ptr %temp74, align 4
  %92 = load i32, ptr %incc, align 4
  store i32 %92, ptr %ldc, align 4
  %93 = load i32, ptr %temp74, align 4
  store i32 %93, ptr %incc, align 4
  %94 = load i32, ptr %lda, align 4
  store i32 %94, ptr %temp75, align 4
  %95 = load i32, ptr %inca, align 4
  store i32 %95, ptr %lda, align 4
  %96 = load i32, ptr %temp75, align 4
  store i32 %96, ptr %inca, align 4
  %97 = load i32, ptr %ldb, align 4
  store i32 %97, ptr %temp76, align 4
  %98 = load i32, ptr %incb, align 4
  store i32 %98, ptr %ldb, align 4
  %99 = load i32, ptr %temp76, align 4
  store i32 %99, ptr %incb, align 4
  %100 = load i32, ptr %m.addr, align 4
  store i32 %100, ptr %temp77, align 4
  %101 = load i32, ptr %n.addr, align 4
  store i32 %101, ptr %m.addr, align 4
  %102 = load i32, ptr %temp77, align 4
  store i32 %102, ptr %n.addr, align 4
  %103 = load i32, ptr %uplo.addr, align 4
  %call78 = call i32 @bl1_is_lower(i32 noundef %103)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else73
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end82

if.else81:                                        ; preds = %if.else73
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  %104 = load i32, ptr %side.addr, align 4
  %call83 = call i32 @bl1_is_left(i32 noundef %104)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end82
  store i32 301, ptr %side.addr, align 4
  br label %if.end87

if.else86:                                        ; preds = %if.end82
  store i32 300, ptr %side.addr, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end72
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end55
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end36
  %105 = load ptr, ptr %b.addr, align 8
  store ptr %105, ptr %b_copy, align 8
  %106 = load i32, ptr %ldb, align 4
  store i32 %106, ptr %ldb_copy, align 4
  %107 = load i32, ptr %incb, align 4
  store i32 %107, ptr %incb_copy, align 4
  %108 = load i32, ptr %symm_needs_copyb, align 4
  %tobool91 = icmp ne i32 %108, 0
  br i1 %tobool91, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end90
  %109 = load i32, ptr %symm_needs_transb, align 4
  %tobool93 = icmp ne i32 %109, 0
  br i1 %tobool93, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.then92
  store i32 101, ptr %transb, align 4
  br label %if.end96

if.else95:                                        ; preds = %if.then92
  store i32 100, ptr %transb, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then94
  %110 = load i32, ptr %m.addr, align 4
  %111 = load i32, ptr %n.addr, align 4
  %call97 = call ptr @bl1_callocm(i32 noundef %110, i32 noundef %111)
  store ptr %call97, ptr %b_copy, align 8
  %112 = load i32, ptr %m.addr, align 4
  store i32 %112, ptr %ldb_copy, align 4
  store i32 1, ptr %incb_copy, align 4
  %113 = load i32, ptr %transb, align 4
  %114 = load i32, ptr %m.addr, align 4
  %115 = load i32, ptr %n.addr, align 4
  %116 = load ptr, ptr %b.addr, align 8
  %117 = load i32, ptr %incb, align 4
  %118 = load i32, ptr %ldb, align 4
  %119 = load ptr, ptr %b_copy, align 8
  %120 = load i32, ptr %incb_copy, align 4
  %121 = load i32, ptr %ldb_copy, align 4
  call void @bl1_ccopymt(i32 noundef %113, i32 noundef %114, i32 noundef %115, ptr noundef %116, i32 noundef %117, i32 noundef %118, ptr noundef %119, i32 noundef %120, i32 noundef %121)
  br label %if.end98

if.end98:                                         ; preds = %if.end96, %if.end90
  %122 = load i32, ptr %symm_needs_axpyt, align 4
  %tobool99 = icmp ne i32 %122, 0
  br i1 %tobool99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end98
  %123 = load i32, ptr %n.addr, align 4
  %124 = load i32, ptr %m.addr, align 4
  %call101 = call ptr @bl1_callocm(i32 noundef %123, i32 noundef %124)
  store ptr %call101, ptr %c_trans, align 8
  %125 = load i32, ptr %n.addr, align 4
  store i32 %125, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %126 = load i32, ptr %side.addr, align 4
  %127 = load i32, ptr %uplo.addr, align 4
  %128 = load i32, ptr %n.addr, align 4
  %129 = load i32, ptr %m.addr, align 4
  %130 = load ptr, ptr %alpha.addr, align 8
  %131 = load ptr, ptr %a.addr, align 8
  %132 = load i32, ptr %lda, align 4
  %133 = load ptr, ptr %b.addr, align 8
  %134 = load i32, ptr %ldb, align 4
  %135 = load ptr, ptr %c_trans, align 8
  %136 = load i32, ptr %ldc_trans, align 4
  call void @bl1_csymm_blas(i32 noundef %126, i32 noundef %127, i32 noundef %128, i32 noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134, ptr noundef %zero, ptr noundef %135, i32 noundef %136)
  %137 = load i32, ptr %m.addr, align 4
  %138 = load i32, ptr %n.addr, align 4
  %139 = load ptr, ptr %beta.addr, align 8
  %140 = load ptr, ptr %c.addr, align 8
  %141 = load i32, ptr %incc, align 4
  %142 = load i32, ptr %ldc, align 4
  call void @bl1_cscalm(i32 noundef 500, i32 noundef %137, i32 noundef %138, ptr noundef %139, ptr noundef %140, i32 noundef %141, i32 noundef %142)
  %143 = load i32, ptr %m.addr, align 4
  %144 = load i32, ptr %n.addr, align 4
  %145 = load ptr, ptr %c_trans, align 8
  %146 = load i32, ptr %incc_trans, align 4
  %147 = load i32, ptr %ldc_trans, align 4
  %148 = load ptr, ptr %c.addr, align 8
  %149 = load i32, ptr %incc, align 4
  %150 = load i32, ptr %ldc, align 4
  call void @bl1_caxpymt(i32 noundef 101, i32 noundef %143, i32 noundef %144, ptr noundef %one, ptr noundef %145, i32 noundef %146, i32 noundef %147, ptr noundef %148, i32 noundef %149, i32 noundef %150)
  %151 = load ptr, ptr %c_trans, align 8
  call void @bl1_cfree(ptr noundef %151)
  br label %if.end103

if.else102:                                       ; preds = %if.end98
  %152 = load i32, ptr %side.addr, align 4
  %153 = load i32, ptr %uplo.addr, align 4
  %154 = load i32, ptr %m.addr, align 4
  %155 = load i32, ptr %n.addr, align 4
  %156 = load ptr, ptr %alpha.addr, align 8
  %157 = load ptr, ptr %a.addr, align 8
  %158 = load i32, ptr %lda, align 4
  %159 = load ptr, ptr %b_copy, align 8
  %160 = load i32, ptr %ldb_copy, align 4
  %161 = load ptr, ptr %beta.addr, align 8
  %162 = load ptr, ptr %c.addr, align 8
  %163 = load i32, ptr %ldc, align 4
  call void @bl1_csymm_blas(i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %155, ptr noundef %156, ptr noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef %160, ptr noundef %161, ptr noundef %162, i32 noundef %163)
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then100
  %164 = load i32, ptr %symm_needs_copyb, align 4
  %tobool104 = icmp ne i32 %164, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end103
  %165 = load ptr, ptr %b_copy, align 8
  call void @bl1_cfree(ptr noundef %165)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end103
  %166 = load ptr, ptr %a_save, align 8
  %167 = load i32, ptr %a_rs_save, align 4
  %168 = load i32, ptr %a_cs_save, align 4
  call void @bl1_cfree_contigm(ptr noundef %166, i32 noundef %167, i32 noundef %168, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %169 = load ptr, ptr %b_save, align 8
  %170 = load i32, ptr %b_rs_save, align 4
  %171 = load i32, ptr %b_cs_save, align 4
  call void @bl1_cfree_contigm(ptr noundef %169, i32 noundef %170, i32 noundef %171, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %172 = load i32, ptr %m_save, align 4
  %173 = load i32, ptr %n_save, align 4
  %174 = load ptr, ptr %c_save, align 8
  %175 = load i32, ptr %c_rs_save, align 4
  %176 = load i32, ptr %c_cs_save, align 4
  call void @bl1_cfree_saved_contigm(i32 noundef %172, i32 noundef %173, ptr noundef %174, i32 noundef %175, i32 noundef %176, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end106, %if.then
  ret void
}

declare <2 x float> @bl1_c0() #1

declare <2 x float> @bl1_c1() #1

declare void @bl1_ccreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_ccreate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @bl1_callocm(i32 noundef, i32 noundef) #1

declare void @bl1_ccopymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_csymm_blas(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_side = alloca i8, align 1
  %blas_uplo = alloca i8, align 1
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %side.addr, align 4
  call void @bl1_param_map_to_netlib_side(i32 noundef %0, ptr noundef %blas_side)
  %1 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %1, ptr noundef %blas_uplo)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @csymm_(ptr noundef %blas_side, ptr noundef %blas_uplo, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_cscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_caxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_cfree(ptr noundef) #1

declare void @bl1_cfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_cfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_zsymm(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #0 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %b_rs.addr = alloca i32, align 4
  %b_cs.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %c_rs.addr = alloca i32, align 4
  %c_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %n_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %b_save = alloca ptr, align 8
  %c_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %b_rs_save = alloca i32, align 4
  %b_cs_save = alloca i32, align 4
  %c_rs_save = alloca i32, align 4
  %c_cs_save = alloca i32, align 4
  %zero = alloca %struct.dcomplex, align 8
  %one = alloca %struct.dcomplex, align 8
  %b_copy = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %dim_a = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %ldb_copy = alloca i32, align 4
  %incb_copy = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %symm_needs_copyb = alloca i32, align 4
  %symm_needs_transb = alloca i32, align 4
  %symm_needs_axpyt = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp23 = alloca i32, align 4
  %temp24 = alloca i32, align 4
  %temp44 = alloca i32, align 4
  %temp45 = alloca i32, align 4
  %temp47 = alloca i32, align 4
  %temp48 = alloca i32, align 4
  %temp49 = alloca i32, align 4
  %temp60 = alloca i32, align 4
  %temp61 = alloca i32, align 4
  %temp62 = alloca i32, align 4
  %temp74 = alloca i32, align 4
  %temp75 = alloca i32, align 4
  %temp76 = alloca i32, align 4
  %temp77 = alloca i32, align 4
  %transb = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %b_rs, ptr %b_rs.addr, align 4
  store i32 %b_cs, ptr %b_cs.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %c_rs, ptr %c_rs.addr, align 4
  store i32 %c_cs, ptr %c_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load i32, ptr %n.addr, align 4
  store i32 %1, ptr %n_save, align 4
  %2 = load ptr, ptr %a.addr, align 8
  store ptr %2, ptr %a_save, align 8
  %3 = load ptr, ptr %b.addr, align 8
  store ptr %3, ptr %b_save, align 8
  %4 = load ptr, ptr %c.addr, align 8
  store ptr %4, ptr %c_save, align 8
  %5 = load i32, ptr %a_rs.addr, align 4
  store i32 %5, ptr %a_rs_save, align 4
  %6 = load i32, ptr %a_cs.addr, align 4
  store i32 %6, ptr %a_cs_save, align 4
  %7 = load i32, ptr %b_rs.addr, align 4
  store i32 %7, ptr %b_rs_save, align 4
  %8 = load i32, ptr %b_cs.addr, align 4
  store i32 %8, ptr %b_cs_save, align 4
  %9 = load i32, ptr %c_rs.addr, align 4
  store i32 %9, ptr %c_rs_save, align 4
  %10 = load i32, ptr %c_cs.addr, align 4
  store i32 %10, ptr %c_cs_save, align 4
  %call = call { double, double } @bl1_z0()
  %11 = getelementptr inbounds { double, double }, ptr %zero, i32 0, i32 0
  %12 = extractvalue { double, double } %call, 0
  store double %12, ptr %11, align 8
  %13 = getelementptr inbounds { double, double }, ptr %zero, i32 0, i32 1
  %14 = extractvalue { double, double } %call, 1
  store double %14, ptr %13, align 8
  %call1 = call { double, double } @bl1_z1()
  %15 = getelementptr inbounds { double, double }, ptr %one, i32 0, i32 0
  %16 = extractvalue { double, double } %call1, 0
  store double %16, ptr %15, align 8
  %17 = getelementptr inbounds { double, double }, ptr %one, i32 0, i32 1
  %18 = extractvalue { double, double } %call1, 1
  store double %18, ptr %17, align 8
  store i32 0, ptr %symm_needs_copyb, align 4
  store i32 0, ptr %symm_needs_transb, align 4
  store i32 0, ptr %symm_needs_axpyt, align 4
  %19 = load i32, ptr %m.addr, align 4
  %20 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim2(i32 noundef %19, i32 noundef %20)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %21 = load i32, ptr %side.addr, align 4
  %22 = load i32, ptr %m.addr, align 4
  %23 = load i32, ptr %n.addr, align 4
  call void @bl1_set_dim_with_side(i32 noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef %dim_a)
  %24 = load i32, ptr %uplo.addr, align 4
  %25 = load i32, ptr %dim_a, align 4
  %26 = load i32, ptr %dim_a, align 4
  %27 = load ptr, ptr %a_save, align 8
  %28 = load i32, ptr %a_rs_save, align 4
  %29 = load i32, ptr %a_cs_save, align 4
  call void @bl1_zcreate_contigmr(i32 noundef %24, i32 noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %30 = load i32, ptr %m.addr, align 4
  %31 = load i32, ptr %n.addr, align 4
  %32 = load ptr, ptr %b_save, align 8
  %33 = load i32, ptr %b_rs_save, align 4
  %34 = load i32, ptr %b_cs_save, align 4
  call void @bl1_zcreate_contigm(i32 noundef %30, i32 noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef %34, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %35 = load i32, ptr %m.addr, align 4
  %36 = load i32, ptr %n.addr, align 4
  %37 = load ptr, ptr %c_save, align 8
  %38 = load i32, ptr %c_rs_save, align 4
  %39 = load i32, ptr %c_cs_save, align 4
  call void @bl1_zcreate_contigm(i32 noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %40 = load i32, ptr %a_cs.addr, align 4
  store i32 %40, ptr %lda, align 4
  %41 = load i32, ptr %a_rs.addr, align 4
  store i32 %41, ptr %inca, align 4
  %42 = load i32, ptr %b_cs.addr, align 4
  store i32 %42, ptr %ldb, align 4
  %43 = load i32, ptr %b_rs.addr, align 4
  store i32 %43, ptr %incb, align 4
  %44 = load i32, ptr %c_cs.addr, align 4
  store i32 %44, ptr %ldc, align 4
  %45 = load i32, ptr %c_rs.addr, align 4
  store i32 %45, ptr %incc, align 4
  %46 = load i32, ptr %c_rs.addr, align 4
  %47 = load i32, ptr %c_cs.addr, align 4
  %call3 = call i32 @bl1_is_col_storage(i32 noundef %46, i32 noundef %47)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else37

if.then5:                                         ; preds = %if.end
  %48 = load i32, ptr %a_rs.addr, align 4
  %49 = load i32, ptr %a_cs.addr, align 4
  %call6 = call i32 @bl1_is_col_storage(i32 noundef %48, i32 noundef %49)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.then5
  %50 = load i32, ptr %b_rs.addr, align 4
  %51 = load i32, ptr %b_cs.addr, align 4
  %call9 = call i32 @bl1_is_col_storage(i32 noundef %50, i32 noundef %51)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  br label %if.end12

if.else:                                          ; preds = %if.then8
  store i32 1, ptr %symm_needs_copyb, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  br label %if.end36

if.else13:                                        ; preds = %if.then5
  %52 = load i32, ptr %b_rs.addr, align 4
  %53 = load i32, ptr %b_cs.addr, align 4
  %call14 = call i32 @bl1_is_col_storage(i32 noundef %52, i32 noundef %53)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else13
  %54 = load i32, ptr %lda, align 4
  store i32 %54, ptr %temp, align 4
  %55 = load i32, ptr %inca, align 4
  store i32 %55, ptr %lda, align 4
  %56 = load i32, ptr %temp, align 4
  store i32 %56, ptr %inca, align 4
  %57 = load i32, ptr %uplo.addr, align 4
  %call17 = call i32 @bl1_is_lower(i32 noundef %57)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.then16
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end21

if.else20:                                        ; preds = %if.then16
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  br label %if.end35

if.else22:                                        ; preds = %if.else13
  %58 = load i32, ptr %lda, align 4
  store i32 %58, ptr %temp23, align 4
  %59 = load i32, ptr %inca, align 4
  store i32 %59, ptr %lda, align 4
  %60 = load i32, ptr %temp23, align 4
  store i32 %60, ptr %inca, align 4
  %61 = load i32, ptr %ldb, align 4
  store i32 %61, ptr %temp24, align 4
  %62 = load i32, ptr %incb, align 4
  store i32 %62, ptr %ldb, align 4
  %63 = load i32, ptr %temp24, align 4
  store i32 %63, ptr %incb, align 4
  %64 = load i32, ptr %side.addr, align 4
  %call25 = call i32 @bl1_is_left(i32 noundef %64)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else22
  store i32 301, ptr %side.addr, align 4
  br label %if.end29

if.else28:                                        ; preds = %if.else22
  store i32 300, ptr %side.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %65 = load i32, ptr %uplo.addr, align 4
  %call30 = call i32 @bl1_is_lower(i32 noundef %65)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.end29
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end34

if.else33:                                        ; preds = %if.end29
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end21
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end12
  br label %if.end90

if.else37:                                        ; preds = %if.end
  %66 = load i32, ptr %a_rs.addr, align 4
  %67 = load i32, ptr %a_cs.addr, align 4
  %call38 = call i32 @bl1_is_col_storage(i32 noundef %66, i32 noundef %67)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.else56

if.then40:                                        ; preds = %if.else37
  %68 = load i32, ptr %b_rs.addr, align 4
  %69 = load i32, ptr %b_cs.addr, align 4
  %call41 = call i32 @bl1_is_col_storage(i32 noundef %68, i32 noundef %69)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.then40
  %70 = load i32, ptr %ldc, align 4
  store i32 %70, ptr %temp44, align 4
  %71 = load i32, ptr %incc, align 4
  store i32 %71, ptr %ldc, align 4
  %72 = load i32, ptr %temp44, align 4
  store i32 %72, ptr %incc, align 4
  %73 = load i32, ptr %m.addr, align 4
  store i32 %73, ptr %temp45, align 4
  %74 = load i32, ptr %n.addr, align 4
  store i32 %74, ptr %m.addr, align 4
  %75 = load i32, ptr %temp45, align 4
  store i32 %75, ptr %n.addr, align 4
  store i32 1, ptr %symm_needs_axpyt, align 4
  br label %if.end55

if.else46:                                        ; preds = %if.then40
  %76 = load i32, ptr %ldc, align 4
  store i32 %76, ptr %temp47, align 4
  %77 = load i32, ptr %incc, align 4
  store i32 %77, ptr %ldc, align 4
  %78 = load i32, ptr %temp47, align 4
  store i32 %78, ptr %incc, align 4
  %79 = load i32, ptr %ldb, align 4
  store i32 %79, ptr %temp48, align 4
  %80 = load i32, ptr %incb, align 4
  store i32 %80, ptr %ldb, align 4
  %81 = load i32, ptr %temp48, align 4
  store i32 %81, ptr %incb, align 4
  %82 = load i32, ptr %m.addr, align 4
  store i32 %82, ptr %temp49, align 4
  %83 = load i32, ptr %n.addr, align 4
  store i32 %83, ptr %m.addr, align 4
  %84 = load i32, ptr %temp49, align 4
  store i32 %84, ptr %n.addr, align 4
  %85 = load i32, ptr %side.addr, align 4
  %call50 = call i32 @bl1_is_left(i32 noundef %85)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else46
  store i32 301, ptr %side.addr, align 4
  br label %if.end54

if.else53:                                        ; preds = %if.else46
  store i32 300, ptr %side.addr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then43
  br label %if.end89

if.else56:                                        ; preds = %if.else37
  %86 = load i32, ptr %b_rs.addr, align 4
  %87 = load i32, ptr %b_cs.addr, align 4
  %call57 = call i32 @bl1_is_col_storage(i32 noundef %86, i32 noundef %87)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else73

if.then59:                                        ; preds = %if.else56
  %88 = load i32, ptr %ldc, align 4
  store i32 %88, ptr %temp60, align 4
  %89 = load i32, ptr %incc, align 4
  store i32 %89, ptr %ldc, align 4
  %90 = load i32, ptr %temp60, align 4
  store i32 %90, ptr %incc, align 4
  %91 = load i32, ptr %lda, align 4
  store i32 %91, ptr %temp61, align 4
  %92 = load i32, ptr %inca, align 4
  store i32 %92, ptr %lda, align 4
  %93 = load i32, ptr %temp61, align 4
  store i32 %93, ptr %inca, align 4
  %94 = load i32, ptr %m.addr, align 4
  store i32 %94, ptr %temp62, align 4
  %95 = load i32, ptr %n.addr, align 4
  store i32 %95, ptr %m.addr, align 4
  %96 = load i32, ptr %temp62, align 4
  store i32 %96, ptr %n.addr, align 4
  %97 = load i32, ptr %side.addr, align 4
  %call63 = call i32 @bl1_is_left(i32 noundef %97)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.then59
  store i32 301, ptr %side.addr, align 4
  br label %if.end67

if.else66:                                        ; preds = %if.then59
  store i32 300, ptr %side.addr, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then65
  %98 = load i32, ptr %uplo.addr, align 4
  %call68 = call i32 @bl1_is_lower(i32 noundef %98)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.end67
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end72

if.else71:                                        ; preds = %if.end67
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  store i32 1, ptr %symm_needs_copyb, align 4
  store i32 1, ptr %symm_needs_transb, align 4
  br label %if.end88

if.else73:                                        ; preds = %if.else56
  %99 = load i32, ptr %ldc, align 4
  store i32 %99, ptr %temp74, align 4
  %100 = load i32, ptr %incc, align 4
  store i32 %100, ptr %ldc, align 4
  %101 = load i32, ptr %temp74, align 4
  store i32 %101, ptr %incc, align 4
  %102 = load i32, ptr %lda, align 4
  store i32 %102, ptr %temp75, align 4
  %103 = load i32, ptr %inca, align 4
  store i32 %103, ptr %lda, align 4
  %104 = load i32, ptr %temp75, align 4
  store i32 %104, ptr %inca, align 4
  %105 = load i32, ptr %ldb, align 4
  store i32 %105, ptr %temp76, align 4
  %106 = load i32, ptr %incb, align 4
  store i32 %106, ptr %ldb, align 4
  %107 = load i32, ptr %temp76, align 4
  store i32 %107, ptr %incb, align 4
  %108 = load i32, ptr %m.addr, align 4
  store i32 %108, ptr %temp77, align 4
  %109 = load i32, ptr %n.addr, align 4
  store i32 %109, ptr %m.addr, align 4
  %110 = load i32, ptr %temp77, align 4
  store i32 %110, ptr %n.addr, align 4
  %111 = load i32, ptr %uplo.addr, align 4
  %call78 = call i32 @bl1_is_lower(i32 noundef %111)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else73
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end82

if.else81:                                        ; preds = %if.else73
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  %112 = load i32, ptr %side.addr, align 4
  %call83 = call i32 @bl1_is_left(i32 noundef %112)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end82
  store i32 301, ptr %side.addr, align 4
  br label %if.end87

if.else86:                                        ; preds = %if.end82
  store i32 300, ptr %side.addr, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end72
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end55
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end36
  %113 = load ptr, ptr %b.addr, align 8
  store ptr %113, ptr %b_copy, align 8
  %114 = load i32, ptr %ldb, align 4
  store i32 %114, ptr %ldb_copy, align 4
  %115 = load i32, ptr %incb, align 4
  store i32 %115, ptr %incb_copy, align 4
  %116 = load i32, ptr %symm_needs_copyb, align 4
  %tobool91 = icmp ne i32 %116, 0
  br i1 %tobool91, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end90
  %117 = load i32, ptr %symm_needs_transb, align 4
  %tobool93 = icmp ne i32 %117, 0
  br i1 %tobool93, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.then92
  store i32 101, ptr %transb, align 4
  br label %if.end96

if.else95:                                        ; preds = %if.then92
  store i32 100, ptr %transb, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else95, %if.then94
  %118 = load i32, ptr %m.addr, align 4
  %119 = load i32, ptr %n.addr, align 4
  %call97 = call ptr @bl1_zallocm(i32 noundef %118, i32 noundef %119)
  store ptr %call97, ptr %b_copy, align 8
  %120 = load i32, ptr %m.addr, align 4
  store i32 %120, ptr %ldb_copy, align 4
  store i32 1, ptr %incb_copy, align 4
  %121 = load i32, ptr %transb, align 4
  %122 = load i32, ptr %m.addr, align 4
  %123 = load i32, ptr %n.addr, align 4
  %124 = load ptr, ptr %b.addr, align 8
  %125 = load i32, ptr %incb, align 4
  %126 = load i32, ptr %ldb, align 4
  %127 = load ptr, ptr %b_copy, align 8
  %128 = load i32, ptr %incb_copy, align 4
  %129 = load i32, ptr %ldb_copy, align 4
  call void @bl1_zcopymt(i32 noundef %121, i32 noundef %122, i32 noundef %123, ptr noundef %124, i32 noundef %125, i32 noundef %126, ptr noundef %127, i32 noundef %128, i32 noundef %129)
  br label %if.end98

if.end98:                                         ; preds = %if.end96, %if.end90
  %130 = load i32, ptr %symm_needs_axpyt, align 4
  %tobool99 = icmp ne i32 %130, 0
  br i1 %tobool99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end98
  %131 = load i32, ptr %n.addr, align 4
  %132 = load i32, ptr %m.addr, align 4
  %call101 = call ptr @bl1_zallocm(i32 noundef %131, i32 noundef %132)
  store ptr %call101, ptr %c_trans, align 8
  %133 = load i32, ptr %n.addr, align 4
  store i32 %133, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %134 = load i32, ptr %side.addr, align 4
  %135 = load i32, ptr %uplo.addr, align 4
  %136 = load i32, ptr %n.addr, align 4
  %137 = load i32, ptr %m.addr, align 4
  %138 = load ptr, ptr %alpha.addr, align 8
  %139 = load ptr, ptr %a.addr, align 8
  %140 = load i32, ptr %lda, align 4
  %141 = load ptr, ptr %b.addr, align 8
  %142 = load i32, ptr %ldb, align 4
  %143 = load ptr, ptr %c_trans, align 8
  %144 = load i32, ptr %ldc_trans, align 4
  call void @bl1_zsymm_blas(i32 noundef %134, i32 noundef %135, i32 noundef %136, i32 noundef %137, ptr noundef %138, ptr noundef %139, i32 noundef %140, ptr noundef %141, i32 noundef %142, ptr noundef %zero, ptr noundef %143, i32 noundef %144)
  %145 = load i32, ptr %m.addr, align 4
  %146 = load i32, ptr %n.addr, align 4
  %147 = load ptr, ptr %beta.addr, align 8
  %148 = load ptr, ptr %c.addr, align 8
  %149 = load i32, ptr %incc, align 4
  %150 = load i32, ptr %ldc, align 4
  call void @bl1_zscalm(i32 noundef 500, i32 noundef %145, i32 noundef %146, ptr noundef %147, ptr noundef %148, i32 noundef %149, i32 noundef %150)
  %151 = load i32, ptr %m.addr, align 4
  %152 = load i32, ptr %n.addr, align 4
  %153 = load ptr, ptr %c_trans, align 8
  %154 = load i32, ptr %incc_trans, align 4
  %155 = load i32, ptr %ldc_trans, align 4
  %156 = load ptr, ptr %c.addr, align 8
  %157 = load i32, ptr %incc, align 4
  %158 = load i32, ptr %ldc, align 4
  call void @bl1_zaxpymt(i32 noundef 101, i32 noundef %151, i32 noundef %152, ptr noundef %one, ptr noundef %153, i32 noundef %154, i32 noundef %155, ptr noundef %156, i32 noundef %157, i32 noundef %158)
  %159 = load ptr, ptr %c_trans, align 8
  call void @bl1_zfree(ptr noundef %159)
  br label %if.end103

if.else102:                                       ; preds = %if.end98
  %160 = load i32, ptr %side.addr, align 4
  %161 = load i32, ptr %uplo.addr, align 4
  %162 = load i32, ptr %m.addr, align 4
  %163 = load i32, ptr %n.addr, align 4
  %164 = load ptr, ptr %alpha.addr, align 8
  %165 = load ptr, ptr %a.addr, align 8
  %166 = load i32, ptr %lda, align 4
  %167 = load ptr, ptr %b_copy, align 8
  %168 = load i32, ptr %ldb_copy, align 4
  %169 = load ptr, ptr %beta.addr, align 8
  %170 = load ptr, ptr %c.addr, align 8
  %171 = load i32, ptr %ldc, align 4
  call void @bl1_zsymm_blas(i32 noundef %160, i32 noundef %161, i32 noundef %162, i32 noundef %163, ptr noundef %164, ptr noundef %165, i32 noundef %166, ptr noundef %167, i32 noundef %168, ptr noundef %169, ptr noundef %170, i32 noundef %171)
  br label %if.end103

if.end103:                                        ; preds = %if.else102, %if.then100
  %172 = load i32, ptr %symm_needs_copyb, align 4
  %tobool104 = icmp ne i32 %172, 0
  br i1 %tobool104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end103
  %173 = load ptr, ptr %b_copy, align 8
  call void @bl1_zfree(ptr noundef %173)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end103
  %174 = load ptr, ptr %a_save, align 8
  %175 = load i32, ptr %a_rs_save, align 4
  %176 = load i32, ptr %a_cs_save, align 4
  call void @bl1_zfree_contigm(ptr noundef %174, i32 noundef %175, i32 noundef %176, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %177 = load ptr, ptr %b_save, align 8
  %178 = load i32, ptr %b_rs_save, align 4
  %179 = load i32, ptr %b_cs_save, align 4
  call void @bl1_zfree_contigm(ptr noundef %177, i32 noundef %178, i32 noundef %179, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %180 = load i32, ptr %m_save, align 4
  %181 = load i32, ptr %n_save, align 4
  %182 = load ptr, ptr %c_save, align 8
  %183 = load i32, ptr %c_rs_save, align 4
  %184 = load i32, ptr %c_cs_save, align 4
  call void @bl1_zfree_saved_contigm(i32 noundef %180, i32 noundef %181, ptr noundef %182, i32 noundef %183, i32 noundef %184, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end106, %if.then
  ret void
}

declare { double, double } @bl1_z0() #1

declare { double, double } @bl1_z1() #1

declare void @bl1_zcreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_zcreate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @bl1_zallocm(i32 noundef, i32 noundef) #1

declare void @bl1_zcopymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_zsymm_blas(i32 noundef %side, i32 noundef %uplo, i32 noundef %m, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %side.addr = alloca i32, align 4
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_side = alloca i8, align 1
  %blas_uplo = alloca i8, align 1
  store i32 %side, ptr %side.addr, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %side.addr, align 4
  call void @bl1_param_map_to_netlib_side(i32 noundef %0, ptr noundef %blas_side)
  %1 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %1, ptr noundef %blas_uplo)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @zsymm_(ptr noundef %blas_side, ptr noundef %blas_uplo, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_zscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zaxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zfree(ptr noundef) #1

declare void @bl1_zfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_zfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_param_map_to_netlib_side(i32 noundef, ptr noundef) #1

declare void @bl1_param_map_to_netlib_uplo(i32 noundef, ptr noundef) #1

declare void @ssymm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @dsymm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @csymm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @zsymm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
