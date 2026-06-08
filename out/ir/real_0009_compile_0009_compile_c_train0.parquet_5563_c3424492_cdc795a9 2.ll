; ModuleID = '<stdin>'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/blis/3/bl1_gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_sgemm(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
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
  %a_unswap = alloca ptr, align 8
  %b_unswap = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %m_gemm = alloca i32, align 4
  %n_gemm = alloca i32, align 4
  %gemm_needs_axpyt = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp32 = alloca i32, align 4
  %temp49 = alloca i32, align 4
  %temp50 = alloca i32, align 4
  %temp51 = alloca ptr, align 8
  %temp52 = alloca i32, align 4
  %temp53 = alloca i32, align 4
  %temp54 = alloca i32, align 4
  %temp55 = alloca i32, align 4
  %temp65 = alloca i32, align 4
  %temp66 = alloca i32, align 4
  %temp68 = alloca i32, align 4
  %temp69 = alloca i32, align 4
  %temp85 = alloca i32, align 4
  %temp86 = alloca i32, align 4
  %temp87 = alloca ptr, align 8
  %temp88 = alloca i32, align 4
  %temp89 = alloca i32, align 4
  %temp90 = alloca i32, align 4
  %temp96 = alloca i32, align 4
  %temp97 = alloca i32, align 4
  %temp113 = alloca i32, align 4
  %temp114 = alloca i32, align 4
  %temp115 = alloca ptr, align 8
  %temp116 = alloca i32, align 4
  %temp117 = alloca i32, align 4
  %temp118 = alloca i32, align 4
  %temp120 = alloca i32, align 4
  %temp121 = alloca i32, align 4
  %temp122 = alloca i32, align 4
  %temp123 = alloca i32, align 4
  %temp124 = alloca i32, align 4
  %temp125 = alloca ptr, align 8
  %temp126 = alloca i32, align 4
  %temp127 = alloca i32, align 4
  %temp128 = alloca i32, align 4
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %k, ptr %k.addr, align 4
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
  store i32 0, ptr %gemm_needs_axpyt, align 4
  %11 = load i32, ptr %m.addr, align 4
  %12 = load i32, ptr %k.addr, align 4
  %13 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim3(i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %m.addr, align 4
  %15 = load i32, ptr %n.addr, align 4
  %16 = load ptr, ptr %beta.addr, align 8
  %17 = load ptr, ptr %c.addr, align 8
  %18 = load i32, ptr %c_rs.addr, align 4
  %19 = load i32, ptr %c_cs.addr, align 4
  call void @bl1_sscalm(i32 noundef 500, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  br label %return

if.end:                                           ; preds = %entry
  %20 = load i32, ptr %transa.addr, align 4
  %21 = load i32, ptr %m.addr, align 4
  %22 = load i32, ptr %k.addr, align 4
  %23 = load ptr, ptr %a_save, align 8
  %24 = load i32, ptr %a_rs_save, align 4
  %25 = load i32, ptr %a_cs_save, align 4
  call void @bl1_screate_contigmt(i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %26 = load i32, ptr %transb.addr, align 4
  %27 = load i32, ptr %k.addr, align 4
  %28 = load i32, ptr %n.addr, align 4
  %29 = load ptr, ptr %b_save, align 8
  %30 = load i32, ptr %b_rs_save, align 4
  %31 = load i32, ptr %b_cs_save, align 4
  call void @bl1_screate_contigmt(i32 noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %32 = load i32, ptr %m.addr, align 4
  %33 = load i32, ptr %n.addr, align 4
  %34 = load ptr, ptr %c_save, align 8
  %35 = load i32, ptr %c_rs_save, align 4
  %36 = load i32, ptr %c_cs_save, align 4
  call void @bl1_screate_contigm(i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %37 = load ptr, ptr %a.addr, align 8
  store ptr %37, ptr %a_unswap, align 8
  %38 = load ptr, ptr %b.addr, align 8
  store ptr %38, ptr %b_unswap, align 8
  %39 = load i32, ptr %m.addr, align 4
  store i32 %39, ptr %m_gemm, align 4
  %40 = load i32, ptr %n.addr, align 4
  store i32 %40, ptr %n_gemm, align 4
  %41 = load i32, ptr %a_cs.addr, align 4
  store i32 %41, ptr %lda, align 4
  %42 = load i32, ptr %a_rs.addr, align 4
  store i32 %42, ptr %inca, align 4
  %43 = load i32, ptr %b_cs.addr, align 4
  store i32 %43, ptr %ldb, align 4
  %44 = load i32, ptr %b_rs.addr, align 4
  store i32 %44, ptr %incb, align 4
  %45 = load i32, ptr %c_cs.addr, align 4
  store i32 %45, ptr %ldc, align 4
  %46 = load i32, ptr %c_rs.addr, align 4
  store i32 %46, ptr %incc, align 4
  %47 = load i32, ptr %c_rs.addr, align 4
  %48 = load i32, ptr %c_cs.addr, align 4
  %call3 = call i32 @bl1_is_col_storage(i32 noundef %47, i32 noundef %48)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else58

if.then5:                                         ; preds = %if.end
  %49 = load i32, ptr %a_rs.addr, align 4
  %50 = load i32, ptr %a_cs.addr, align 4
  %call6 = call i32 @bl1_is_col_storage(i32 noundef %49, i32 noundef %50)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else28

if.then8:                                         ; preds = %if.then5
  %51 = load i32, ptr %b_rs.addr, align 4
  %52 = load i32, ptr %b_cs.addr, align 4
  %call9 = call i32 @bl1_is_col_storage(i32 noundef %51, i32 noundef %52)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  br label %if.end27

if.else:                                          ; preds = %if.then8
  %53 = load i32, ptr %ldb, align 4
  store i32 %53, ptr %temp, align 4
  %54 = load i32, ptr %incb, align 4
  store i32 %54, ptr %ldb, align 4
  %55 = load i32, ptr %temp, align 4
  store i32 %55, ptr %incb, align 4
  %56 = load i32, ptr %transb.addr, align 4
  %call12 = call i32 @bl1_is_notrans(i32 noundef %56)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  store i32 101, ptr %transb.addr, align 4
  br label %if.end26

if.else15:                                        ; preds = %if.else
  %57 = load i32, ptr %transb.addr, align 4
  %call16 = call i32 @bl1_is_trans(i32 noundef %57)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  store i32 100, ptr %transb.addr, align 4
  br label %if.end25

if.else19:                                        ; preds = %if.else15
  %58 = load i32, ptr %transb.addr, align 4
  %call20 = call i32 @bl1_is_conjnotrans(i32 noundef %58)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  store i32 103, ptr %transb.addr, align 4
  br label %if.end24

if.else23:                                        ; preds = %if.else19
  store i32 102, ptr %transb.addr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then11
  br label %if.end57

if.else28:                                        ; preds = %if.then5
  %59 = load i32, ptr %b_rs.addr, align 4
  %60 = load i32, ptr %b_cs.addr, align 4
  %call29 = call i32 @bl1_is_col_storage(i32 noundef %59, i32 noundef %60)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else48

if.then31:                                        ; preds = %if.else28
  %61 = load i32, ptr %lda, align 4
  store i32 %61, ptr %temp32, align 4
  %62 = load i32, ptr %inca, align 4
  store i32 %62, ptr %lda, align 4
  %63 = load i32, ptr %temp32, align 4
  store i32 %63, ptr %inca, align 4
  %64 = load i32, ptr %transa.addr, align 4
  %call33 = call i32 @bl1_is_notrans(i32 noundef %64)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.then31
  store i32 101, ptr %transa.addr, align 4
  br label %if.end47

if.else36:                                        ; preds = %if.then31
  %65 = load i32, ptr %transa.addr, align 4
  %call37 = call i32 @bl1_is_trans(i32 noundef %65)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else36
  store i32 100, ptr %transa.addr, align 4
  br label %if.end46

if.else40:                                        ; preds = %if.else36
  %66 = load i32, ptr %transa.addr, align 4
  %call41 = call i32 @bl1_is_conjnotrans(i32 noundef %66)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  store i32 103, ptr %transa.addr, align 4
  br label %if.end45

if.else44:                                        ; preds = %if.else40
  store i32 102, ptr %transa.addr, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then35
  br label %if.end56

if.else48:                                        ; preds = %if.else28
  %67 = load i32, ptr %lda, align 4
  store i32 %67, ptr %temp49, align 4
  %68 = load i32, ptr %inca, align 4
  store i32 %68, ptr %lda, align 4
  %69 = load i32, ptr %temp49, align 4
  store i32 %69, ptr %inca, align 4
  %70 = load i32, ptr %ldb, align 4
  store i32 %70, ptr %temp50, align 4
  %71 = load i32, ptr %incb, align 4
  store i32 %71, ptr %ldb, align 4
  %72 = load i32, ptr %temp50, align 4
  store i32 %72, ptr %incb, align 4
  %73 = load ptr, ptr %a.addr, align 8
  store ptr %73, ptr %temp51, align 8
  %74 = load ptr, ptr %b.addr, align 8
  store ptr %74, ptr %a.addr, align 8
  %75 = load ptr, ptr %temp51, align 8
  store ptr %75, ptr %b.addr, align 8
  %76 = load i32, ptr %lda, align 4
  store i32 %76, ptr %temp52, align 4
  %77 = load i32, ptr %ldb, align 4
  store i32 %77, ptr %lda, align 4
  %78 = load i32, ptr %temp52, align 4
  store i32 %78, ptr %ldb, align 4
  %79 = load i32, ptr %inca, align 4
  store i32 %79, ptr %temp53, align 4
  %80 = load i32, ptr %incb, align 4
  store i32 %80, ptr %inca, align 4
  %81 = load i32, ptr %temp53, align 4
  store i32 %81, ptr %incb, align 4
  %82 = load i32, ptr %transa.addr, align 4
  store i32 %82, ptr %temp54, align 4
  %83 = load i32, ptr %transb.addr, align 4
  store i32 %83, ptr %transa.addr, align 4
  %84 = load i32, ptr %temp54, align 4
  store i32 %84, ptr %transb.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  %85 = load i32, ptr %m_gemm, align 4
  store i32 %85, ptr %temp55, align 4
  %86 = load i32, ptr %n_gemm, align 4
  store i32 %86, ptr %m_gemm, align 4
  %87 = load i32, ptr %temp55, align 4
  store i32 %87, ptr %n_gemm, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else48, %if.end47
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end27
  br label %if.end131

if.else58:                                        ; preds = %if.end
  %88 = load i32, ptr %a_rs.addr, align 4
  %89 = load i32, ptr %a_cs.addr, align 4
  %call59 = call i32 @bl1_is_col_storage(i32 noundef %88, i32 noundef %89)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.else92

if.then61:                                        ; preds = %if.else58
  %90 = load i32, ptr %b_rs.addr, align 4
  %91 = load i32, ptr %b_cs.addr, align 4
  %call62 = call i32 @bl1_is_col_storage(i32 noundef %90, i32 noundef %91)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.else67

if.then64:                                        ; preds = %if.then61
  %92 = load i32, ptr %ldc, align 4
  store i32 %92, ptr %temp65, align 4
  %93 = load i32, ptr %incc, align 4
  store i32 %93, ptr %ldc, align 4
  %94 = load i32, ptr %temp65, align 4
  store i32 %94, ptr %incc, align 4
  %95 = load i32, ptr %m.addr, align 4
  store i32 %95, ptr %temp66, align 4
  %96 = load i32, ptr %n.addr, align 4
  store i32 %96, ptr %m.addr, align 4
  %97 = load i32, ptr %temp66, align 4
  store i32 %97, ptr %n.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  br label %if.end91

if.else67:                                        ; preds = %if.then61
  %98 = load i32, ptr %ldc, align 4
  store i32 %98, ptr %temp68, align 4
  %99 = load i32, ptr %incc, align 4
  store i32 %99, ptr %ldc, align 4
  %100 = load i32, ptr %temp68, align 4
  store i32 %100, ptr %incc, align 4
  %101 = load i32, ptr %ldb, align 4
  store i32 %101, ptr %temp69, align 4
  %102 = load i32, ptr %incb, align 4
  store i32 %102, ptr %ldb, align 4
  %103 = load i32, ptr %temp69, align 4
  store i32 %103, ptr %incb, align 4
  %104 = load i32, ptr %transa.addr, align 4
  %call70 = call i32 @bl1_is_notrans(i32 noundef %104)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.else67
  store i32 101, ptr %transa.addr, align 4
  br label %if.end84

if.else73:                                        ; preds = %if.else67
  %105 = load i32, ptr %transa.addr, align 4
  %call74 = call i32 @bl1_is_trans(i32 noundef %105)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.else73
  store i32 100, ptr %transa.addr, align 4
  br label %if.end83

if.else77:                                        ; preds = %if.else73
  %106 = load i32, ptr %transa.addr, align 4
  %call78 = call i32 @bl1_is_conjnotrans(i32 noundef %106)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else77
  store i32 103, ptr %transa.addr, align 4
  br label %if.end82

if.else81:                                        ; preds = %if.else77
  store i32 102, ptr %transa.addr, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then76
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then72
  %107 = load i32, ptr %m.addr, align 4
  store i32 %107, ptr %temp85, align 4
  %108 = load i32, ptr %n.addr, align 4
  store i32 %108, ptr %m.addr, align 4
  %109 = load i32, ptr %temp85, align 4
  store i32 %109, ptr %n.addr, align 4
  %110 = load i32, ptr %m_gemm, align 4
  store i32 %110, ptr %temp86, align 4
  %111 = load i32, ptr %n_gemm, align 4
  store i32 %111, ptr %m_gemm, align 4
  %112 = load i32, ptr %temp86, align 4
  store i32 %112, ptr %n_gemm, align 4
  %113 = load ptr, ptr %a.addr, align 8
  store ptr %113, ptr %temp87, align 8
  %114 = load ptr, ptr %b.addr, align 8
  store ptr %114, ptr %a.addr, align 8
  %115 = load ptr, ptr %temp87, align 8
  store ptr %115, ptr %b.addr, align 8
  %116 = load i32, ptr %lda, align 4
  store i32 %116, ptr %temp88, align 4
  %117 = load i32, ptr %ldb, align 4
  store i32 %117, ptr %lda, align 4
  %118 = load i32, ptr %temp88, align 4
  store i32 %118, ptr %ldb, align 4
  %119 = load i32, ptr %inca, align 4
  store i32 %119, ptr %temp89, align 4
  %120 = load i32, ptr %incb, align 4
  store i32 %120, ptr %inca, align 4
  %121 = load i32, ptr %temp89, align 4
  store i32 %121, ptr %incb, align 4
  %122 = load i32, ptr %transa.addr, align 4
  store i32 %122, ptr %temp90, align 4
  %123 = load i32, ptr %transb.addr, align 4
  store i32 %123, ptr %transa.addr, align 4
  %124 = load i32, ptr %temp90, align 4
  store i32 %124, ptr %transb.addr, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end84, %if.then64
  br label %if.end130

if.else92:                                        ; preds = %if.else58
  %125 = load i32, ptr %b_rs.addr, align 4
  %126 = load i32, ptr %b_cs.addr, align 4
  %call93 = call i32 @bl1_is_col_storage(i32 noundef %125, i32 noundef %126)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.else119

if.then95:                                        ; preds = %if.else92
  %127 = load i32, ptr %ldc, align 4
  store i32 %127, ptr %temp96, align 4
  %128 = load i32, ptr %incc, align 4
  store i32 %128, ptr %ldc, align 4
  %129 = load i32, ptr %temp96, align 4
  store i32 %129, ptr %incc, align 4
  %130 = load i32, ptr %lda, align 4
  store i32 %130, ptr %temp97, align 4
  %131 = load i32, ptr %inca, align 4
  store i32 %131, ptr %lda, align 4
  %132 = load i32, ptr %temp97, align 4
  store i32 %132, ptr %inca, align 4
  %133 = load i32, ptr %transb.addr, align 4
  %call98 = call i32 @bl1_is_notrans(i32 noundef %133)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.then95
  store i32 101, ptr %transb.addr, align 4
  br label %if.end112

if.else101:                                       ; preds = %if.then95
  %134 = load i32, ptr %transb.addr, align 4
  %call102 = call i32 @bl1_is_trans(i32 noundef %134)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.else101
  store i32 100, ptr %transb.addr, align 4
  br label %if.end111

if.else105:                                       ; preds = %if.else101
  %135 = load i32, ptr %transb.addr, align 4
  %call106 = call i32 @bl1_is_conjnotrans(i32 noundef %135)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.else105
  store i32 103, ptr %transb.addr, align 4
  br label %if.end110

if.else109:                                       ; preds = %if.else105
  store i32 102, ptr %transb.addr, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %if.then108
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then104
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then100
  %136 = load i32, ptr %m.addr, align 4
  store i32 %136, ptr %temp113, align 4
  %137 = load i32, ptr %n.addr, align 4
  store i32 %137, ptr %m.addr, align 4
  %138 = load i32, ptr %temp113, align 4
  store i32 %138, ptr %n.addr, align 4
  %139 = load i32, ptr %m_gemm, align 4
  store i32 %139, ptr %temp114, align 4
  %140 = load i32, ptr %n_gemm, align 4
  store i32 %140, ptr %m_gemm, align 4
  %141 = load i32, ptr %temp114, align 4
  store i32 %141, ptr %n_gemm, align 4
  %142 = load ptr, ptr %a.addr, align 8
  store ptr %142, ptr %temp115, align 8
  %143 = load ptr, ptr %b.addr, align 8
  store ptr %143, ptr %a.addr, align 8
  %144 = load ptr, ptr %temp115, align 8
  store ptr %144, ptr %b.addr, align 8
  %145 = load i32, ptr %lda, align 4
  store i32 %145, ptr %temp116, align 4
  %146 = load i32, ptr %ldb, align 4
  store i32 %146, ptr %lda, align 4
  %147 = load i32, ptr %temp116, align 4
  store i32 %147, ptr %ldb, align 4
  %148 = load i32, ptr %inca, align 4
  store i32 %148, ptr %temp117, align 4
  %149 = load i32, ptr %incb, align 4
  store i32 %149, ptr %inca, align 4
  %150 = load i32, ptr %temp117, align 4
  store i32 %150, ptr %incb, align 4
  %151 = load i32, ptr %transa.addr, align 4
  store i32 %151, ptr %temp118, align 4
  %152 = load i32, ptr %transb.addr, align 4
  store i32 %152, ptr %transa.addr, align 4
  %153 = load i32, ptr %temp118, align 4
  store i32 %153, ptr %transb.addr, align 4
  br label %if.end129

if.else119:                                       ; preds = %if.else92
  %154 = load i32, ptr %lda, align 4
  store i32 %154, ptr %temp120, align 4
  %155 = load i32, ptr %inca, align 4
  store i32 %155, ptr %lda, align 4
  %156 = load i32, ptr %temp120, align 4
  store i32 %156, ptr %inca, align 4
  %157 = load i32, ptr %ldb, align 4
  store i32 %157, ptr %temp121, align 4
  %158 = load i32, ptr %incb, align 4
  store i32 %158, ptr %ldb, align 4
  %159 = load i32, ptr %temp121, align 4
  store i32 %159, ptr %incb, align 4
  %160 = load i32, ptr %ldc, align 4
  store i32 %160, ptr %temp122, align 4
  %161 = load i32, ptr %incc, align 4
  store i32 %161, ptr %ldc, align 4
  %162 = load i32, ptr %temp122, align 4
  store i32 %162, ptr %incc, align 4
  %163 = load i32, ptr %m.addr, align 4
  store i32 %163, ptr %temp123, align 4
  %164 = load i32, ptr %n.addr, align 4
  store i32 %164, ptr %m.addr, align 4
  %165 = load i32, ptr %temp123, align 4
  store i32 %165, ptr %n.addr, align 4
  %166 = load i32, ptr %m_gemm, align 4
  store i32 %166, ptr %temp124, align 4
  %167 = load i32, ptr %n_gemm, align 4
  store i32 %167, ptr %m_gemm, align 4
  %168 = load i32, ptr %temp124, align 4
  store i32 %168, ptr %n_gemm, align 4
  %169 = load ptr, ptr %a.addr, align 8
  store ptr %169, ptr %temp125, align 8
  %170 = load ptr, ptr %b.addr, align 8
  store ptr %170, ptr %a.addr, align 8
  %171 = load ptr, ptr %temp125, align 8
  store ptr %171, ptr %b.addr, align 8
  %172 = load i32, ptr %lda, align 4
  store i32 %172, ptr %temp126, align 4
  %173 = load i32, ptr %ldb, align 4
  store i32 %173, ptr %lda, align 4
  %174 = load i32, ptr %temp126, align 4
  store i32 %174, ptr %ldb, align 4
  %175 = load i32, ptr %inca, align 4
  store i32 %175, ptr %temp127, align 4
  %176 = load i32, ptr %incb, align 4
  store i32 %176, ptr %inca, align 4
  %177 = load i32, ptr %temp127, align 4
  store i32 %177, ptr %incb, align 4
  %178 = load i32, ptr %transa.addr, align 4
  store i32 %178, ptr %temp128, align 4
  %179 = load i32, ptr %transb.addr, align 4
  store i32 %179, ptr %transa.addr, align 4
  %180 = load i32, ptr %temp128, align 4
  store i32 %180, ptr %transb.addr, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else119, %if.end112
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.end91
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end57
  %181 = load i32, ptr %gemm_needs_axpyt, align 4
  %tobool132 = icmp ne i32 %181, 0
  br i1 %tobool132, label %if.then133, label %if.else135

if.then133:                                       ; preds = %if.end131
  %182 = load i32, ptr %m_gemm, align 4
  %183 = load i32, ptr %n_gemm, align 4
  %call134 = call ptr @bl1_sallocm(i32 noundef %182, i32 noundef %183)
  store ptr %call134, ptr %c_trans, align 8
  %184 = load i32, ptr %m_gemm, align 4
  store i32 %184, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %185 = load i32, ptr %transa.addr, align 4
  %186 = load i32, ptr %transb.addr, align 4
  %187 = load i32, ptr %m_gemm, align 4
  %188 = load i32, ptr %n_gemm, align 4
  %189 = load i32, ptr %k.addr, align 4
  %190 = load ptr, ptr %alpha.addr, align 8
  %191 = load ptr, ptr %a.addr, align 8
  %192 = load i32, ptr %lda, align 4
  %193 = load ptr, ptr %b.addr, align 8
  %194 = load i32, ptr %ldb, align 4
  %195 = load ptr, ptr %c_trans, align 8
  %196 = load i32, ptr %ldc_trans, align 4
  call void @bl1_sgemm_blas(i32 noundef %185, i32 noundef %186, i32 noundef %187, i32 noundef %188, i32 noundef %189, ptr noundef %190, ptr noundef %191, i32 noundef %192, ptr noundef %193, i32 noundef %194, ptr noundef %zero, ptr noundef %195, i32 noundef %196)
  %197 = load i32, ptr %m.addr, align 4
  %198 = load i32, ptr %n.addr, align 4
  %199 = load ptr, ptr %beta.addr, align 8
  %200 = load ptr, ptr %c.addr, align 8
  %201 = load i32, ptr %incc, align 4
  %202 = load i32, ptr %ldc, align 4
  call void @bl1_sscalm(i32 noundef 500, i32 noundef %197, i32 noundef %198, ptr noundef %199, ptr noundef %200, i32 noundef %201, i32 noundef %202)
  %203 = load i32, ptr %m.addr, align 4
  %204 = load i32, ptr %n.addr, align 4
  %205 = load ptr, ptr %c_trans, align 8
  %206 = load i32, ptr %incc_trans, align 4
  %207 = load i32, ptr %ldc_trans, align 4
  %208 = load ptr, ptr %c.addr, align 8
  %209 = load i32, ptr %incc, align 4
  %210 = load i32, ptr %ldc, align 4
  call void @bl1_saxpymt(i32 noundef 101, i32 noundef %203, i32 noundef %204, ptr noundef %one, ptr noundef %205, i32 noundef %206, i32 noundef %207, ptr noundef %208, i32 noundef %209, i32 noundef %210)
  %211 = load ptr, ptr %c_trans, align 8
  call void @bl1_sfree(ptr noundef %211)
  br label %if.end136

if.else135:                                       ; preds = %if.end131
  %212 = load i32, ptr %transa.addr, align 4
  %213 = load i32, ptr %transb.addr, align 4
  %214 = load i32, ptr %m_gemm, align 4
  %215 = load i32, ptr %n_gemm, align 4
  %216 = load i32, ptr %k.addr, align 4
  %217 = load ptr, ptr %alpha.addr, align 8
  %218 = load ptr, ptr %a.addr, align 8
  %219 = load i32, ptr %lda, align 4
  %220 = load ptr, ptr %b.addr, align 8
  %221 = load i32, ptr %ldb, align 4
  %222 = load ptr, ptr %beta.addr, align 8
  %223 = load ptr, ptr %c.addr, align 8
  %224 = load i32, ptr %ldc, align 4
  call void @bl1_sgemm_blas(i32 noundef %212, i32 noundef %213, i32 noundef %214, i32 noundef %215, i32 noundef %216, ptr noundef %217, ptr noundef %218, i32 noundef %219, ptr noundef %220, i32 noundef %221, ptr noundef %222, ptr noundef %223, i32 noundef %224)
  br label %if.end136

if.end136:                                        ; preds = %if.else135, %if.then133
  %225 = load ptr, ptr %a_save, align 8
  %226 = load i32, ptr %a_rs_save, align 4
  %227 = load i32, ptr %a_cs_save, align 4
  call void @bl1_sfree_contigm(ptr noundef %225, i32 noundef %226, i32 noundef %227, ptr noundef %a_unswap, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %228 = load ptr, ptr %b_save, align 8
  %229 = load i32, ptr %b_rs_save, align 4
  %230 = load i32, ptr %b_cs_save, align 4
  call void @bl1_sfree_contigm(ptr noundef %228, i32 noundef %229, i32 noundef %230, ptr noundef %b_unswap, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %231 = load i32, ptr %m_save, align 4
  %232 = load i32, ptr %n_save, align 4
  %233 = load ptr, ptr %c_save, align 8
  %234 = load i32, ptr %c_rs_save, align 4
  %235 = load i32, ptr %c_cs_save, align 4
  call void @bl1_sfree_saved_contigm(i32 noundef %231, i32 noundef %232, ptr noundef %233, i32 noundef %234, i32 noundef %235, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end136, %if.then
  ret void
}

declare float @bl1_s0() #1

declare float @bl1_s1() #1

declare i32 @bl1_zero_dim3(i32 noundef, i32 noundef, i32 noundef) #1

declare void @bl1_sscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_screate_contigmt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_screate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @bl1_is_col_storage(i32 noundef, i32 noundef) #1

declare i32 @bl1_is_notrans(i32 noundef) #1

declare i32 @bl1_is_trans(i32 noundef) #1

declare i32 @bl1_is_conjnotrans(i32 noundef) #1

declare ptr @bl1_sallocm(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_sgemm_blas(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %n, i32 noundef %k, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_transa = alloca i8, align 1
  %blas_transb = alloca i8, align 1
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %transa.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %0, ptr noundef %blas_transa)
  %1 = load i32, ptr %transb.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_transb)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @sgemm_(ptr noundef %blas_transa, ptr noundef %blas_transb, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %k.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_saxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_sfree(ptr noundef) #1

declare void @bl1_sfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_sfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_dgemm(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
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
  %a_unswap = alloca ptr, align 8
  %b_unswap = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %m_gemm = alloca i32, align 4
  %n_gemm = alloca i32, align 4
  %gemm_needs_axpyt = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp32 = alloca i32, align 4
  %temp49 = alloca i32, align 4
  %temp50 = alloca i32, align 4
  %temp51 = alloca ptr, align 8
  %temp52 = alloca i32, align 4
  %temp53 = alloca i32, align 4
  %temp54 = alloca i32, align 4
  %temp55 = alloca i32, align 4
  %temp65 = alloca i32, align 4
  %temp66 = alloca i32, align 4
  %temp68 = alloca i32, align 4
  %temp69 = alloca i32, align 4
  %temp85 = alloca i32, align 4
  %temp86 = alloca i32, align 4
  %temp87 = alloca ptr, align 8
  %temp88 = alloca i32, align 4
  %temp89 = alloca i32, align 4
  %temp90 = alloca i32, align 4
  %temp96 = alloca i32, align 4
  %temp97 = alloca i32, align 4
  %temp113 = alloca i32, align 4
  %temp114 = alloca i32, align 4
  %temp115 = alloca ptr, align 8
  %temp116 = alloca i32, align 4
  %temp117 = alloca i32, align 4
  %temp118 = alloca i32, align 4
  %temp120 = alloca i32, align 4
  %temp121 = alloca i32, align 4
  %temp122 = alloca i32, align 4
  %temp123 = alloca i32, align 4
  %temp124 = alloca i32, align 4
  %temp125 = alloca ptr, align 8
  %temp126 = alloca i32, align 4
  %temp127 = alloca i32, align 4
  %temp128 = alloca i32, align 4
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %k, ptr %k.addr, align 4
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
  store i32 0, ptr %gemm_needs_axpyt, align 4
  %11 = load i32, ptr %m.addr, align 4
  %12 = load i32, ptr %k.addr, align 4
  %13 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim3(i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %m.addr, align 4
  %15 = load i32, ptr %n.addr, align 4
  %16 = load ptr, ptr %beta.addr, align 8
  %17 = load ptr, ptr %c.addr, align 8
  %18 = load i32, ptr %c_rs.addr, align 4
  %19 = load i32, ptr %c_cs.addr, align 4
  call void @bl1_dscalm(i32 noundef 500, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  br label %return

if.end:                                           ; preds = %entry
  %20 = load i32, ptr %transa.addr, align 4
  %21 = load i32, ptr %m.addr, align 4
  %22 = load i32, ptr %k.addr, align 4
  %23 = load ptr, ptr %a_save, align 8
  %24 = load i32, ptr %a_rs_save, align 4
  %25 = load i32, ptr %a_cs_save, align 4
  call void @bl1_dcreate_contigmt(i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %26 = load i32, ptr %transb.addr, align 4
  %27 = load i32, ptr %k.addr, align 4
  %28 = load i32, ptr %n.addr, align 4
  %29 = load ptr, ptr %b_save, align 8
  %30 = load i32, ptr %b_rs_save, align 4
  %31 = load i32, ptr %b_cs_save, align 4
  call void @bl1_dcreate_contigmt(i32 noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %32 = load i32, ptr %m.addr, align 4
  %33 = load i32, ptr %n.addr, align 4
  %34 = load ptr, ptr %c_save, align 8
  %35 = load i32, ptr %c_rs_save, align 4
  %36 = load i32, ptr %c_cs_save, align 4
  call void @bl1_dcreate_contigm(i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %37 = load ptr, ptr %a.addr, align 8
  store ptr %37, ptr %a_unswap, align 8
  %38 = load ptr, ptr %b.addr, align 8
  store ptr %38, ptr %b_unswap, align 8
  %39 = load i32, ptr %m.addr, align 4
  store i32 %39, ptr %m_gemm, align 4
  %40 = load i32, ptr %n.addr, align 4
  store i32 %40, ptr %n_gemm, align 4
  %41 = load i32, ptr %a_cs.addr, align 4
  store i32 %41, ptr %lda, align 4
  %42 = load i32, ptr %a_rs.addr, align 4
  store i32 %42, ptr %inca, align 4
  %43 = load i32, ptr %b_cs.addr, align 4
  store i32 %43, ptr %ldb, align 4
  %44 = load i32, ptr %b_rs.addr, align 4
  store i32 %44, ptr %incb, align 4
  %45 = load i32, ptr %c_cs.addr, align 4
  store i32 %45, ptr %ldc, align 4
  %46 = load i32, ptr %c_rs.addr, align 4
  store i32 %46, ptr %incc, align 4
  %47 = load i32, ptr %c_rs.addr, align 4
  %48 = load i32, ptr %c_cs.addr, align 4
  %call3 = call i32 @bl1_is_col_storage(i32 noundef %47, i32 noundef %48)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.else58

if.then5:                                         ; preds = %if.end
  %49 = load i32, ptr %a_rs.addr, align 4
  %50 = load i32, ptr %a_cs.addr, align 4
  %call6 = call i32 @bl1_is_col_storage(i32 noundef %49, i32 noundef %50)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else28

if.then8:                                         ; preds = %if.then5
  %51 = load i32, ptr %b_rs.addr, align 4
  %52 = load i32, ptr %b_cs.addr, align 4
  %call9 = call i32 @bl1_is_col_storage(i32 noundef %51, i32 noundef %52)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  br label %if.end27

if.else:                                          ; preds = %if.then8
  %53 = load i32, ptr %ldb, align 4
  store i32 %53, ptr %temp, align 4
  %54 = load i32, ptr %incb, align 4
  store i32 %54, ptr %ldb, align 4
  %55 = load i32, ptr %temp, align 4
  store i32 %55, ptr %incb, align 4
  %56 = load i32, ptr %transb.addr, align 4
  %call12 = call i32 @bl1_is_notrans(i32 noundef %56)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  store i32 101, ptr %transb.addr, align 4
  br label %if.end26

if.else15:                                        ; preds = %if.else
  %57 = load i32, ptr %transb.addr, align 4
  %call16 = call i32 @bl1_is_trans(i32 noundef %57)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  store i32 100, ptr %transb.addr, align 4
  br label %if.end25

if.else19:                                        ; preds = %if.else15
  %58 = load i32, ptr %transb.addr, align 4
  %call20 = call i32 @bl1_is_conjnotrans(i32 noundef %58)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  store i32 103, ptr %transb.addr, align 4
  br label %if.end24

if.else23:                                        ; preds = %if.else19
  store i32 102, ptr %transb.addr, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then18
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then11
  br label %if.end57

if.else28:                                        ; preds = %if.then5
  %59 = load i32, ptr %b_rs.addr, align 4
  %60 = load i32, ptr %b_cs.addr, align 4
  %call29 = call i32 @bl1_is_col_storage(i32 noundef %59, i32 noundef %60)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else48

if.then31:                                        ; preds = %if.else28
  %61 = load i32, ptr %lda, align 4
  store i32 %61, ptr %temp32, align 4
  %62 = load i32, ptr %inca, align 4
  store i32 %62, ptr %lda, align 4
  %63 = load i32, ptr %temp32, align 4
  store i32 %63, ptr %inca, align 4
  %64 = load i32, ptr %transa.addr, align 4
  %call33 = call i32 @bl1_is_notrans(i32 noundef %64)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.then31
  store i32 101, ptr %transa.addr, align 4
  br label %if.end47

if.else36:                                        ; preds = %if.then31
  %65 = load i32, ptr %transa.addr, align 4
  %call37 = call i32 @bl1_is_trans(i32 noundef %65)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else36
  store i32 100, ptr %transa.addr, align 4
  br label %if.end46

if.else40:                                        ; preds = %if.else36
  %66 = load i32, ptr %transa.addr, align 4
  %call41 = call i32 @bl1_is_conjnotrans(i32 noundef %66)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  store i32 103, ptr %transa.addr, align 4
  br label %if.end45

if.else44:                                        ; preds = %if.else40
  store i32 102, ptr %transa.addr, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then39
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then35
  br label %if.end56

if.else48:                                        ; preds = %if.else28
  %67 = load i32, ptr %lda, align 4
  store i32 %67, ptr %temp49, align 4
  %68 = load i32, ptr %inca, align 4
  store i32 %68, ptr %lda, align 4
  %69 = load i32, ptr %temp49, align 4
  store i32 %69, ptr %inca, align 4
  %70 = load i32, ptr %ldb, align 4
  store i32 %70, ptr %temp50, align 4
  %71 = load i32, ptr %incb, align 4
  store i32 %71, ptr %ldb, align 4
  %72 = load i32, ptr %temp50, align 4
  store i32 %72, ptr %incb, align 4
  %73 = load ptr, ptr %a.addr, align 8
  store ptr %73, ptr %temp51, align 8
  %74 = load ptr, ptr %b.addr, align 8
  store ptr %74, ptr %a.addr, align 8
  %75 = load ptr, ptr %temp51, align 8
  store ptr %75, ptr %b.addr, align 8
  %76 = load i32, ptr %lda, align 4
  store i32 %76, ptr %temp52, align 4
  %77 = load i32, ptr %ldb, align 4
  store i32 %77, ptr %lda, align 4
  %78 = load i32, ptr %temp52, align 4
  store i32 %78, ptr %ldb, align 4
  %79 = load i32, ptr %inca, align 4
  store i32 %79, ptr %temp53, align 4
  %80 = load i32, ptr %incb, align 4
  store i32 %80, ptr %inca, align 4
  %81 = load i32, ptr %temp53, align 4
  store i32 %81, ptr %incb, align 4
  %82 = load i32, ptr %transa.addr, align 4
  store i32 %82, ptr %temp54, align 4
  %83 = load i32, ptr %transb.addr, align 4
  store i32 %83, ptr %transa.addr, align 4
  %84 = load i32, ptr %temp54, align 4
  store i32 %84, ptr %transb.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  %85 = load i32, ptr %m_gemm, align 4
  store i32 %85, ptr %temp55, align 4
  %86 = load i32, ptr %n_gemm, align 4
  store i32 %86, ptr %m_gemm, align 4
  %87 = load i32, ptr %temp55, align 4
  store i32 %87, ptr %n_gemm, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else48, %if.end47
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end27
  br label %if.end131

if.else58:                                        ; preds = %if.end
  %88 = load i32, ptr %a_rs.addr, align 4
  %89 = load i32, ptr %a_cs.addr, align 4
  %call59 = call i32 @bl1_is_col_storage(i32 noundef %88, i32 noundef %89)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.else92

if.then61:                                        ; preds = %if.else58
  %90 = load i32, ptr %b_rs.addr, align 4
  %91 = load i32, ptr %b_cs.addr, align 4
  %call62 = call i32 @bl1_is_col_storage(i32 noundef %90, i32 noundef %91)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.else67

if.then64:                                        ; preds = %if.then61
  %92 = load i32, ptr %ldc, align 4
  store i32 %92, ptr %temp65, align 4
  %93 = load i32, ptr %incc, align 4
  store i32 %93, ptr %ldc, align 4
  %94 = load i32, ptr %temp65, align 4
  store i32 %94, ptr %incc, align 4
  %95 = load i32, ptr %m.addr, align 4
  store i32 %95, ptr %temp66, align 4
  %96 = load i32, ptr %n.addr, align 4
  store i32 %96, ptr %m.addr, align 4
  %97 = load i32, ptr %temp66, align 4
  store i32 %97, ptr %n.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  br label %if.end91

if.else67:                                        ; preds = %if.then61
  %98 = load i32, ptr %ldc, align 4
  store i32 %98, ptr %temp68, align 4
  %99 = load i32, ptr %incc, align 4
  store i32 %99, ptr %ldc, align 4
  %100 = load i32, ptr %temp68, align 4
  store i32 %100, ptr %incc, align 4
  %101 = load i32, ptr %ldb, align 4
  store i32 %101, ptr %temp69, align 4
  %102 = load i32, ptr %incb, align 4
  store i32 %102, ptr %ldb, align 4
  %103 = load i32, ptr %temp69, align 4
  store i32 %103, ptr %incb, align 4
  %104 = load i32, ptr %transa.addr, align 4
  %call70 = call i32 @bl1_is_notrans(i32 noundef %104)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.else67
  store i32 101, ptr %transa.addr, align 4
  br label %if.end84

if.else73:                                        ; preds = %if.else67
  %105 = load i32, ptr %transa.addr, align 4
  %call74 = call i32 @bl1_is_trans(i32 noundef %105)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.else73
  store i32 100, ptr %transa.addr, align 4
  br label %if.end83

if.else77:                                        ; preds = %if.else73
  %106 = load i32, ptr %transa.addr, align 4
  %call78 = call i32 @bl1_is_conjnotrans(i32 noundef %106)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else77
  store i32 103, ptr %transa.addr, align 4
  br label %if.end82

if.else81:                                        ; preds = %if.else77
  store i32 102, ptr %transa.addr, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then76
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then72
  %107 = load i32, ptr %m.addr, align 4
  store i32 %107, ptr %temp85, align 4
  %108 = load i32, ptr %n.addr, align 4
  store i32 %108, ptr %m.addr, align 4
  %109 = load i32, ptr %temp85, align 4
  store i32 %109, ptr %n.addr, align 4
  %110 = load i32, ptr %m_gemm, align 4
  store i32 %110, ptr %temp86, align 4
  %111 = load i32, ptr %n_gemm, align 4
  store i32 %111, ptr %m_gemm, align 4
  %112 = load i32, ptr %temp86, align 4
  store i32 %112, ptr %n_gemm, align 4
  %113 = load ptr, ptr %a.addr, align 8
  store ptr %113, ptr %temp87, align 8
  %114 = load ptr, ptr %b.addr, align 8
  store ptr %114, ptr %a.addr, align 8
  %115 = load ptr, ptr %temp87, align 8
  store ptr %115, ptr %b.addr, align 8
  %116 = load i32, ptr %lda, align 4
  store i32 %116, ptr %temp88, align 4
  %117 = load i32, ptr %ldb, align 4
  store i32 %117, ptr %lda, align 4
  %118 = load i32, ptr %temp88, align 4
  store i32 %118, ptr %ldb, align 4
  %119 = load i32, ptr %inca, align 4
  store i32 %119, ptr %temp89, align 4
  %120 = load i32, ptr %incb, align 4
  store i32 %120, ptr %inca, align 4
  %121 = load i32, ptr %temp89, align 4
  store i32 %121, ptr %incb, align 4
  %122 = load i32, ptr %transa.addr, align 4
  store i32 %122, ptr %temp90, align 4
  %123 = load i32, ptr %transb.addr, align 4
  store i32 %123, ptr %transa.addr, align 4
  %124 = load i32, ptr %temp90, align 4
  store i32 %124, ptr %transb.addr, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end84, %if.then64
  br label %if.end130

if.else92:                                        ; preds = %if.else58
  %125 = load i32, ptr %b_rs.addr, align 4
  %126 = load i32, ptr %b_cs.addr, align 4
  %call93 = call i32 @bl1_is_col_storage(i32 noundef %125, i32 noundef %126)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.else119

if.then95:                                        ; preds = %if.else92
  %127 = load i32, ptr %ldc, align 4
  store i32 %127, ptr %temp96, align 4
  %128 = load i32, ptr %incc, align 4
  store i32 %128, ptr %ldc, align 4
  %129 = load i32, ptr %temp96, align 4
  store i32 %129, ptr %incc, align 4
  %130 = load i32, ptr %lda, align 4
  store i32 %130, ptr %temp97, align 4
  %131 = load i32, ptr %inca, align 4
  store i32 %131, ptr %lda, align 4
  %132 = load i32, ptr %temp97, align 4
  store i32 %132, ptr %inca, align 4
  %133 = load i32, ptr %transb.addr, align 4
  %call98 = call i32 @bl1_is_notrans(i32 noundef %133)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.then95
  store i32 101, ptr %transb.addr, align 4
  br label %if.end112

if.else101:                                       ; preds = %if.then95
  %134 = load i32, ptr %transb.addr, align 4
  %call102 = call i32 @bl1_is_trans(i32 noundef %134)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.else101
  store i32 100, ptr %transb.addr, align 4
  br label %if.end111

if.else105:                                       ; preds = %if.else101
  %135 = load i32, ptr %transb.addr, align 4
  %call106 = call i32 @bl1_is_conjnotrans(i32 noundef %135)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.else105
  store i32 103, ptr %transb.addr, align 4
  br label %if.end110

if.else109:                                       ; preds = %if.else105
  store i32 102, ptr %transb.addr, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %if.then108
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then104
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then100
  %136 = load i32, ptr %m.addr, align 4
  store i32 %136, ptr %temp113, align 4
  %137 = load i32, ptr %n.addr, align 4
  store i32 %137, ptr %m.addr, align 4
  %138 = load i32, ptr %temp113, align 4
  store i32 %138, ptr %n.addr, align 4
  %139 = load i32, ptr %m_gemm, align 4
  store i32 %139, ptr %temp114, align 4
  %140 = load i32, ptr %n_gemm, align 4
  store i32 %140, ptr %m_gemm, align 4
  %141 = load i32, ptr %temp114, align 4
  store i32 %141, ptr %n_gemm, align 4
  %142 = load ptr, ptr %a.addr, align 8
  store ptr %142, ptr %temp115, align 8
  %143 = load ptr, ptr %b.addr, align 8
  store ptr %143, ptr %a.addr, align 8
  %144 = load ptr, ptr %temp115, align 8
  store ptr %144, ptr %b.addr, align 8
  %145 = load i32, ptr %lda, align 4
  store i32 %145, ptr %temp116, align 4
  %146 = load i32, ptr %ldb, align 4
  store i32 %146, ptr %lda, align 4
  %147 = load i32, ptr %temp116, align 4
  store i32 %147, ptr %ldb, align 4
  %148 = load i32, ptr %inca, align 4
  store i32 %148, ptr %temp117, align 4
  %149 = load i32, ptr %incb, align 4
  store i32 %149, ptr %inca, align 4
  %150 = load i32, ptr %temp117, align 4
  store i32 %150, ptr %incb, align 4
  %151 = load i32, ptr %transa.addr, align 4
  store i32 %151, ptr %temp118, align 4
  %152 = load i32, ptr %transb.addr, align 4
  store i32 %152, ptr %transa.addr, align 4
  %153 = load i32, ptr %temp118, align 4
  store i32 %153, ptr %transb.addr, align 4
  br label %if.end129

if.else119:                                       ; preds = %if.else92
  %154 = load i32, ptr %lda, align 4
  store i32 %154, ptr %temp120, align 4
  %155 = load i32, ptr %inca, align 4
  store i32 %155, ptr %lda, align 4
  %156 = load i32, ptr %temp120, align 4
  store i32 %156, ptr %inca, align 4
  %157 = load i32, ptr %ldb, align 4
  store i32 %157, ptr %temp121, align 4
  %158 = load i32, ptr %incb, align 4
  store i32 %158, ptr %ldb, align 4
  %159 = load i32, ptr %temp121, align 4
  store i32 %159, ptr %incb, align 4
  %160 = load i32, ptr %ldc, align 4
  store i32 %160, ptr %temp122, align 4
  %161 = load i32, ptr %incc, align 4
  store i32 %161, ptr %ldc, align 4
  %162 = load i32, ptr %temp122, align 4
  store i32 %162, ptr %incc, align 4
  %163 = load i32, ptr %m.addr, align 4
  store i32 %163, ptr %temp123, align 4
  %164 = load i32, ptr %n.addr, align 4
  store i32 %164, ptr %m.addr, align 4
  %165 = load i32, ptr %temp123, align 4
  store i32 %165, ptr %n.addr, align 4
  %166 = load i32, ptr %m_gemm, align 4
  store i32 %166, ptr %temp124, align 4
  %167 = load i32, ptr %n_gemm, align 4
  store i32 %167, ptr %m_gemm, align 4
  %168 = load i32, ptr %temp124, align 4
  store i32 %168, ptr %n_gemm, align 4
  %169 = load ptr, ptr %a.addr, align 8
  store ptr %169, ptr %temp125, align 8
  %170 = load ptr, ptr %b.addr, align 8
  store ptr %170, ptr %a.addr, align 8
  %171 = load ptr, ptr %temp125, align 8
  store ptr %171, ptr %b.addr, align 8
  %172 = load i32, ptr %lda, align 4
  store i32 %172, ptr %temp126, align 4
  %173 = load i32, ptr %ldb, align 4
  store i32 %173, ptr %lda, align 4
  %174 = load i32, ptr %temp126, align 4
  store i32 %174, ptr %ldb, align 4
  %175 = load i32, ptr %inca, align 4
  store i32 %175, ptr %temp127, align 4
  %176 = load i32, ptr %incb, align 4
  store i32 %176, ptr %inca, align 4
  %177 = load i32, ptr %temp127, align 4
  store i32 %177, ptr %incb, align 4
  %178 = load i32, ptr %transa.addr, align 4
  store i32 %178, ptr %temp128, align 4
  %179 = load i32, ptr %transb.addr, align 4
  store i32 %179, ptr %transa.addr, align 4
  %180 = load i32, ptr %temp128, align 4
  store i32 %180, ptr %transb.addr, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else119, %if.end112
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.end91
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end57
  %181 = load i32, ptr %gemm_needs_axpyt, align 4
  %tobool132 = icmp ne i32 %181, 0
  br i1 %tobool132, label %if.then133, label %if.else135

if.then133:                                       ; preds = %if.end131
  %182 = load i32, ptr %m_gemm, align 4
  %183 = load i32, ptr %n_gemm, align 4
  %call134 = call ptr @bl1_dallocm(i32 noundef %182, i32 noundef %183)
  store ptr %call134, ptr %c_trans, align 8
  %184 = load i32, ptr %m_gemm, align 4
  store i32 %184, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %185 = load i32, ptr %transa.addr, align 4
  %186 = load i32, ptr %transb.addr, align 4
  %187 = load i32, ptr %m_gemm, align 4
  %188 = load i32, ptr %n_gemm, align 4
  %189 = load i32, ptr %k.addr, align 4
  %190 = load ptr, ptr %alpha.addr, align 8
  %191 = load ptr, ptr %a.addr, align 8
  %192 = load i32, ptr %lda, align 4
  %193 = load ptr, ptr %b.addr, align 8
  %194 = load i32, ptr %ldb, align 4
  %195 = load ptr, ptr %c_trans, align 8
  %196 = load i32, ptr %ldc_trans, align 4
  call void @bl1_dgemm_blas(i32 noundef %185, i32 noundef %186, i32 noundef %187, i32 noundef %188, i32 noundef %189, ptr noundef %190, ptr noundef %191, i32 noundef %192, ptr noundef %193, i32 noundef %194, ptr noundef %zero, ptr noundef %195, i32 noundef %196)
  %197 = load i32, ptr %m.addr, align 4
  %198 = load i32, ptr %n.addr, align 4
  %199 = load ptr, ptr %beta.addr, align 8
  %200 = load ptr, ptr %c.addr, align 8
  %201 = load i32, ptr %incc, align 4
  %202 = load i32, ptr %ldc, align 4
  call void @bl1_dscalm(i32 noundef 500, i32 noundef %197, i32 noundef %198, ptr noundef %199, ptr noundef %200, i32 noundef %201, i32 noundef %202)
  %203 = load i32, ptr %m.addr, align 4
  %204 = load i32, ptr %n.addr, align 4
  %205 = load ptr, ptr %c_trans, align 8
  %206 = load i32, ptr %incc_trans, align 4
  %207 = load i32, ptr %ldc_trans, align 4
  %208 = load ptr, ptr %c.addr, align 8
  %209 = load i32, ptr %incc, align 4
  %210 = load i32, ptr %ldc, align 4
  call void @bl1_daxpymt(i32 noundef 101, i32 noundef %203, i32 noundef %204, ptr noundef %one, ptr noundef %205, i32 noundef %206, i32 noundef %207, ptr noundef %208, i32 noundef %209, i32 noundef %210)
  %211 = load ptr, ptr %c_trans, align 8
  call void @bl1_dfree(ptr noundef %211)
  br label %if.end136

if.else135:                                       ; preds = %if.end131
  %212 = load i32, ptr %transa.addr, align 4
  %213 = load i32, ptr %transb.addr, align 4
  %214 = load i32, ptr %m_gemm, align 4
  %215 = load i32, ptr %n_gemm, align 4
  %216 = load i32, ptr %k.addr, align 4
  %217 = load ptr, ptr %alpha.addr, align 8
  %218 = load ptr, ptr %a.addr, align 8
  %219 = load i32, ptr %lda, align 4
  %220 = load ptr, ptr %b.addr, align 8
  %221 = load i32, ptr %ldb, align 4
  %222 = load ptr, ptr %beta.addr, align 8
  %223 = load ptr, ptr %c.addr, align 8
  %224 = load i32, ptr %ldc, align 4
  call void @bl1_dgemm_blas(i32 noundef %212, i32 noundef %213, i32 noundef %214, i32 noundef %215, i32 noundef %216, ptr noundef %217, ptr noundef %218, i32 noundef %219, ptr noundef %220, i32 noundef %221, ptr noundef %222, ptr noundef %223, i32 noundef %224)
  br label %if.end136

if.end136:                                        ; preds = %if.else135, %if.then133
  %225 = load ptr, ptr %a_save, align 8
  %226 = load i32, ptr %a_rs_save, align 4
  %227 = load i32, ptr %a_cs_save, align 4
  call void @bl1_dfree_contigm(ptr noundef %225, i32 noundef %226, i32 noundef %227, ptr noundef %a_unswap, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %228 = load ptr, ptr %b_save, align 8
  %229 = load i32, ptr %b_rs_save, align 4
  %230 = load i32, ptr %b_cs_save, align 4
  call void @bl1_dfree_contigm(ptr noundef %228, i32 noundef %229, i32 noundef %230, ptr noundef %b_unswap, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %231 = load i32, ptr %m_save, align 4
  %232 = load i32, ptr %n_save, align 4
  %233 = load ptr, ptr %c_save, align 8
  %234 = load i32, ptr %c_rs_save, align 4
  %235 = load i32, ptr %c_cs_save, align 4
  call void @bl1_dfree_saved_contigm(i32 noundef %231, i32 noundef %232, ptr noundef %233, i32 noundef %234, i32 noundef %235, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end136, %if.then
  ret void
}

declare double @bl1_d0() #1

declare double @bl1_d1() #1

declare void @bl1_dscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dcreate_contigmt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_dcreate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @bl1_dallocm(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_dgemm_blas(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %n, i32 noundef %k, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_transa = alloca i8, align 1
  %blas_transb = alloca i8, align 1
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %transa.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %0, ptr noundef %blas_transa)
  %1 = load i32, ptr %transb.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_transb)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @dgemm_(ptr noundef %blas_transa, ptr noundef %blas_transb, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %k.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_daxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dfree(ptr noundef) #1

declare void @bl1_dfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_dfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_cgemm(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #2 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
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
  %a_unswap = alloca ptr, align 8
  %b_unswap = alloca ptr, align 8
  %a_conj = alloca ptr, align 8
  %b_conj = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %lda_conj = alloca i32, align 4
  %inca_conj = alloca i32, align 4
  %ldb_conj = alloca i32, align 4
  %incb_conj = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %m_gemm = alloca i32, align 4
  %n_gemm = alloca i32, align 4
  %gemm_needs_axpyt = alloca i32, align 4
  %a_was_copied = alloca i32, align 4
  %b_was_copied = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp34 = alloca i32, align 4
  %temp51 = alloca i32, align 4
  %temp52 = alloca i32, align 4
  %temp53 = alloca ptr, align 8
  %temp54 = alloca i32, align 4
  %temp55 = alloca i32, align 4
  %temp56 = alloca i32, align 4
  %temp57 = alloca i32, align 4
  %temp58 = alloca i32, align 4
  %temp68 = alloca i32, align 4
  %temp69 = alloca i32, align 4
  %temp71 = alloca i32, align 4
  %temp72 = alloca i32, align 4
  %temp88 = alloca i32, align 4
  %temp89 = alloca i32, align 4
  %temp90 = alloca ptr, align 8
  %temp91 = alloca i32, align 4
  %temp92 = alloca i32, align 4
  %temp93 = alloca i32, align 4
  %temp94 = alloca i32, align 4
  %temp100 = alloca i32, align 4
  %temp101 = alloca i32, align 4
  %temp117 = alloca i32, align 4
  %temp118 = alloca i32, align 4
  %temp119 = alloca ptr, align 8
  %temp120 = alloca i32, align 4
  %temp121 = alloca i32, align 4
  %temp122 = alloca i32, align 4
  %temp123 = alloca i32, align 4
  %temp125 = alloca i32, align 4
  %temp126 = alloca i32, align 4
  %temp127 = alloca i32, align 4
  %temp128 = alloca i32, align 4
  %temp129 = alloca i32, align 4
  %temp130 = alloca ptr, align 8
  %temp131 = alloca i32, align 4
  %temp132 = alloca i32, align 4
  %temp133 = alloca i32, align 4
  %temp134 = alloca i32, align 4
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %k, ptr %k.addr, align 4
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
  store i32 0, ptr %gemm_needs_axpyt, align 4
  %11 = load i32, ptr %m.addr, align 4
  %12 = load i32, ptr %k.addr, align 4
  %13 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim3(i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %m.addr, align 4
  %15 = load i32, ptr %n.addr, align 4
  %16 = load ptr, ptr %beta.addr, align 8
  %17 = load ptr, ptr %c.addr, align 8
  %18 = load i32, ptr %c_rs.addr, align 4
  %19 = load i32, ptr %c_cs.addr, align 4
  call void @bl1_cscalm(i32 noundef 500, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  br label %return

if.end:                                           ; preds = %entry
  %20 = load i32, ptr %transa.addr, align 4
  %21 = load i32, ptr %m.addr, align 4
  %22 = load i32, ptr %k.addr, align 4
  %23 = load ptr, ptr %a_save, align 8
  %24 = load i32, ptr %a_rs_save, align 4
  %25 = load i32, ptr %a_cs_save, align 4
  call void @bl1_ccreate_contigmt(i32 noundef %20, i32 noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %26 = load i32, ptr %transb.addr, align 4
  %27 = load i32, ptr %k.addr, align 4
  %28 = load i32, ptr %n.addr, align 4
  %29 = load ptr, ptr %b_save, align 8
  %30 = load i32, ptr %b_rs_save, align 4
  %31 = load i32, ptr %b_cs_save, align 4
  call void @bl1_ccreate_contigmt(i32 noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %32 = load i32, ptr %m.addr, align 4
  %33 = load i32, ptr %n.addr, align 4
  %34 = load ptr, ptr %c_save, align 8
  %35 = load i32, ptr %c_rs_save, align 4
  %36 = load i32, ptr %c_cs_save, align 4
  call void @bl1_ccreate_contigm(i32 noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %37 = load ptr, ptr %a.addr, align 8
  %38 = load ptr, ptr %a_save, align 8
  %cmp = icmp ne ptr %37, %38
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %a_was_copied, align 4
  %39 = load ptr, ptr %b.addr, align 8
  %40 = load ptr, ptr %b_save, align 8
  %cmp3 = icmp ne ptr %39, %40
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, ptr %b_was_copied, align 4
  %41 = load ptr, ptr %a.addr, align 8
  store ptr %41, ptr %a_unswap, align 8
  %42 = load ptr, ptr %b.addr, align 8
  store ptr %42, ptr %b_unswap, align 8
  %43 = load i32, ptr %m.addr, align 4
  store i32 %43, ptr %m_gemm, align 4
  %44 = load i32, ptr %n.addr, align 4
  store i32 %44, ptr %n_gemm, align 4
  %45 = load i32, ptr %a_cs.addr, align 4
  store i32 %45, ptr %lda, align 4
  %46 = load i32, ptr %a_rs.addr, align 4
  store i32 %46, ptr %inca, align 4
  %47 = load i32, ptr %b_cs.addr, align 4
  store i32 %47, ptr %ldb, align 4
  %48 = load i32, ptr %b_rs.addr, align 4
  store i32 %48, ptr %incb, align 4
  %49 = load i32, ptr %c_cs.addr, align 4
  store i32 %49, ptr %ldc, align 4
  %50 = load i32, ptr %c_rs.addr, align 4
  store i32 %50, ptr %incc, align 4
  %51 = load i32, ptr %c_rs.addr, align 4
  %52 = load i32, ptr %c_cs.addr, align 4
  %call5 = call i32 @bl1_is_col_storage(i32 noundef %51, i32 noundef %52)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.else61

if.then7:                                         ; preds = %if.end
  %53 = load i32, ptr %a_rs.addr, align 4
  %54 = load i32, ptr %a_cs.addr, align 4
  %call8 = call i32 @bl1_is_col_storage(i32 noundef %53, i32 noundef %54)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else30

if.then10:                                        ; preds = %if.then7
  %55 = load i32, ptr %b_rs.addr, align 4
  %56 = load i32, ptr %b_cs.addr, align 4
  %call11 = call i32 @bl1_is_col_storage(i32 noundef %55, i32 noundef %56)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  br label %if.end29

if.else:                                          ; preds = %if.then10
  %57 = load i32, ptr %ldb, align 4
  store i32 %57, ptr %temp, align 4
  %58 = load i32, ptr %incb, align 4
  store i32 %58, ptr %ldb, align 4
  %59 = load i32, ptr %temp, align 4
  store i32 %59, ptr %incb, align 4
  %60 = load i32, ptr %transb.addr, align 4
  %call14 = call i32 @bl1_is_notrans(i32 noundef %60)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  store i32 101, ptr %transb.addr, align 4
  br label %if.end28

if.else17:                                        ; preds = %if.else
  %61 = load i32, ptr %transb.addr, align 4
  %call18 = call i32 @bl1_is_trans(i32 noundef %61)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  store i32 100, ptr %transb.addr, align 4
  br label %if.end27

if.else21:                                        ; preds = %if.else17
  %62 = load i32, ptr %transb.addr, align 4
  %call22 = call i32 @bl1_is_conjnotrans(i32 noundef %62)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else21
  store i32 103, ptr %transb.addr, align 4
  br label %if.end26

if.else25:                                        ; preds = %if.else21
  store i32 102, ptr %transb.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then20
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then16
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then13
  br label %if.end60

if.else30:                                        ; preds = %if.then7
  %63 = load i32, ptr %b_rs.addr, align 4
  %64 = load i32, ptr %b_cs.addr, align 4
  %call31 = call i32 @bl1_is_col_storage(i32 noundef %63, i32 noundef %64)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.else50

if.then33:                                        ; preds = %if.else30
  %65 = load i32, ptr %lda, align 4
  store i32 %65, ptr %temp34, align 4
  %66 = load i32, ptr %inca, align 4
  store i32 %66, ptr %lda, align 4
  %67 = load i32, ptr %temp34, align 4
  store i32 %67, ptr %inca, align 4
  %68 = load i32, ptr %transa.addr, align 4
  %call35 = call i32 @bl1_is_notrans(i32 noundef %68)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then33
  store i32 101, ptr %transa.addr, align 4
  br label %if.end49

if.else38:                                        ; preds = %if.then33
  %69 = load i32, ptr %transa.addr, align 4
  %call39 = call i32 @bl1_is_trans(i32 noundef %69)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  store i32 100, ptr %transa.addr, align 4
  br label %if.end48

if.else42:                                        ; preds = %if.else38
  %70 = load i32, ptr %transa.addr, align 4
  %call43 = call i32 @bl1_is_conjnotrans(i32 noundef %70)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else42
  store i32 103, ptr %transa.addr, align 4
  br label %if.end47

if.else46:                                        ; preds = %if.else42
  store i32 102, ptr %transa.addr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then41
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then37
  br label %if.end59

if.else50:                                        ; preds = %if.else30
  %71 = load i32, ptr %lda, align 4
  store i32 %71, ptr %temp51, align 4
  %72 = load i32, ptr %inca, align 4
  store i32 %72, ptr %lda, align 4
  %73 = load i32, ptr %temp51, align 4
  store i32 %73, ptr %inca, align 4
  %74 = load i32, ptr %ldb, align 4
  store i32 %74, ptr %temp52, align 4
  %75 = load i32, ptr %incb, align 4
  store i32 %75, ptr %ldb, align 4
  %76 = load i32, ptr %temp52, align 4
  store i32 %76, ptr %incb, align 4
  %77 = load ptr, ptr %a.addr, align 8
  store ptr %77, ptr %temp53, align 8
  %78 = load ptr, ptr %b.addr, align 8
  store ptr %78, ptr %a.addr, align 8
  %79 = load ptr, ptr %temp53, align 8
  store ptr %79, ptr %b.addr, align 8
  %80 = load i32, ptr %a_was_copied, align 4
  store i32 %80, ptr %temp54, align 4
  %81 = load i32, ptr %b_was_copied, align 4
  store i32 %81, ptr %a_was_copied, align 4
  %82 = load i32, ptr %temp54, align 4
  store i32 %82, ptr %b_was_copied, align 4
  %83 = load i32, ptr %lda, align 4
  store i32 %83, ptr %temp55, align 4
  %84 = load i32, ptr %ldb, align 4
  store i32 %84, ptr %lda, align 4
  %85 = load i32, ptr %temp55, align 4
  store i32 %85, ptr %ldb, align 4
  %86 = load i32, ptr %inca, align 4
  store i32 %86, ptr %temp56, align 4
  %87 = load i32, ptr %incb, align 4
  store i32 %87, ptr %inca, align 4
  %88 = load i32, ptr %temp56, align 4
  store i32 %88, ptr %incb, align 4
  %89 = load i32, ptr %transa.addr, align 4
  store i32 %89, ptr %temp57, align 4
  %90 = load i32, ptr %transb.addr, align 4
  store i32 %90, ptr %transa.addr, align 4
  %91 = load i32, ptr %temp57, align 4
  store i32 %91, ptr %transb.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  %92 = load i32, ptr %m_gemm, align 4
  store i32 %92, ptr %temp58, align 4
  %93 = load i32, ptr %n_gemm, align 4
  store i32 %93, ptr %m_gemm, align 4
  %94 = load i32, ptr %temp58, align 4
  store i32 %94, ptr %n_gemm, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else50, %if.end49
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end29
  br label %if.end137

if.else61:                                        ; preds = %if.end
  %95 = load i32, ptr %a_rs.addr, align 4
  %96 = load i32, ptr %a_cs.addr, align 4
  %call62 = call i32 @bl1_is_col_storage(i32 noundef %95, i32 noundef %96)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.else96

if.then64:                                        ; preds = %if.else61
  %97 = load i32, ptr %b_rs.addr, align 4
  %98 = load i32, ptr %b_cs.addr, align 4
  %call65 = call i32 @bl1_is_col_storage(i32 noundef %97, i32 noundef %98)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %if.then64
  %99 = load i32, ptr %ldc, align 4
  store i32 %99, ptr %temp68, align 4
  %100 = load i32, ptr %incc, align 4
  store i32 %100, ptr %ldc, align 4
  %101 = load i32, ptr %temp68, align 4
  store i32 %101, ptr %incc, align 4
  %102 = load i32, ptr %m.addr, align 4
  store i32 %102, ptr %temp69, align 4
  %103 = load i32, ptr %n.addr, align 4
  store i32 %103, ptr %m.addr, align 4
  %104 = load i32, ptr %temp69, align 4
  store i32 %104, ptr %n.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  br label %if.end95

if.else70:                                        ; preds = %if.then64
  %105 = load i32, ptr %ldc, align 4
  store i32 %105, ptr %temp71, align 4
  %106 = load i32, ptr %incc, align 4
  store i32 %106, ptr %ldc, align 4
  %107 = load i32, ptr %temp71, align 4
  store i32 %107, ptr %incc, align 4
  %108 = load i32, ptr %ldb, align 4
  store i32 %108, ptr %temp72, align 4
  %109 = load i32, ptr %incb, align 4
  store i32 %109, ptr %ldb, align 4
  %110 = load i32, ptr %temp72, align 4
  store i32 %110, ptr %incb, align 4
  %111 = load i32, ptr %transa.addr, align 4
  %call73 = call i32 @bl1_is_notrans(i32 noundef %111)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.else70
  store i32 101, ptr %transa.addr, align 4
  br label %if.end87

if.else76:                                        ; preds = %if.else70
  %112 = load i32, ptr %transa.addr, align 4
  %call77 = call i32 @bl1_is_trans(i32 noundef %112)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.else76
  store i32 100, ptr %transa.addr, align 4
  br label %if.end86

if.else80:                                        ; preds = %if.else76
  %113 = load i32, ptr %transa.addr, align 4
  %call81 = call i32 @bl1_is_conjnotrans(i32 noundef %113)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else80
  store i32 103, ptr %transa.addr, align 4
  br label %if.end85

if.else84:                                        ; preds = %if.else80
  store i32 102, ptr %transa.addr, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then83
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then79
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then75
  %114 = load i32, ptr %m.addr, align 4
  store i32 %114, ptr %temp88, align 4
  %115 = load i32, ptr %n.addr, align 4
  store i32 %115, ptr %m.addr, align 4
  %116 = load i32, ptr %temp88, align 4
  store i32 %116, ptr %n.addr, align 4
  %117 = load i32, ptr %m_gemm, align 4
  store i32 %117, ptr %temp89, align 4
  %118 = load i32, ptr %n_gemm, align 4
  store i32 %118, ptr %m_gemm, align 4
  %119 = load i32, ptr %temp89, align 4
  store i32 %119, ptr %n_gemm, align 4
  %120 = load ptr, ptr %a.addr, align 8
  store ptr %120, ptr %temp90, align 8
  %121 = load ptr, ptr %b.addr, align 8
  store ptr %121, ptr %a.addr, align 8
  %122 = load ptr, ptr %temp90, align 8
  store ptr %122, ptr %b.addr, align 8
  %123 = load i32, ptr %a_was_copied, align 4
  store i32 %123, ptr %temp91, align 4
  %124 = load i32, ptr %b_was_copied, align 4
  store i32 %124, ptr %a_was_copied, align 4
  %125 = load i32, ptr %temp91, align 4
  store i32 %125, ptr %b_was_copied, align 4
  %126 = load i32, ptr %lda, align 4
  store i32 %126, ptr %temp92, align 4
  %127 = load i32, ptr %ldb, align 4
  store i32 %127, ptr %lda, align 4
  %128 = load i32, ptr %temp92, align 4
  store i32 %128, ptr %ldb, align 4
  %129 = load i32, ptr %inca, align 4
  store i32 %129, ptr %temp93, align 4
  %130 = load i32, ptr %incb, align 4
  store i32 %130, ptr %inca, align 4
  %131 = load i32, ptr %temp93, align 4
  store i32 %131, ptr %incb, align 4
  %132 = load i32, ptr %transa.addr, align 4
  store i32 %132, ptr %temp94, align 4
  %133 = load i32, ptr %transb.addr, align 4
  store i32 %133, ptr %transa.addr, align 4
  %134 = load i32, ptr %temp94, align 4
  store i32 %134, ptr %transb.addr, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end87, %if.then67
  br label %if.end136

if.else96:                                        ; preds = %if.else61
  %135 = load i32, ptr %b_rs.addr, align 4
  %136 = load i32, ptr %b_cs.addr, align 4
  %call97 = call i32 @bl1_is_col_storage(i32 noundef %135, i32 noundef %136)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.else124

if.then99:                                        ; preds = %if.else96
  %137 = load i32, ptr %ldc, align 4
  store i32 %137, ptr %temp100, align 4
  %138 = load i32, ptr %incc, align 4
  store i32 %138, ptr %ldc, align 4
  %139 = load i32, ptr %temp100, align 4
  store i32 %139, ptr %incc, align 4
  %140 = load i32, ptr %lda, align 4
  store i32 %140, ptr %temp101, align 4
  %141 = load i32, ptr %inca, align 4
  store i32 %141, ptr %lda, align 4
  %142 = load i32, ptr %temp101, align 4
  store i32 %142, ptr %inca, align 4
  %143 = load i32, ptr %transb.addr, align 4
  %call102 = call i32 @bl1_is_notrans(i32 noundef %143)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.then99
  store i32 101, ptr %transb.addr, align 4
  br label %if.end116

if.else105:                                       ; preds = %if.then99
  %144 = load i32, ptr %transb.addr, align 4
  %call106 = call i32 @bl1_is_trans(i32 noundef %144)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.else105
  store i32 100, ptr %transb.addr, align 4
  br label %if.end115

if.else109:                                       ; preds = %if.else105
  %145 = load i32, ptr %transb.addr, align 4
  %call110 = call i32 @bl1_is_conjnotrans(i32 noundef %145)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.else109
  store i32 103, ptr %transb.addr, align 4
  br label %if.end114

if.else113:                                       ; preds = %if.else109
  store i32 102, ptr %transb.addr, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else113, %if.then112
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then108
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then104
  %146 = load i32, ptr %m.addr, align 4
  store i32 %146, ptr %temp117, align 4
  %147 = load i32, ptr %n.addr, align 4
  store i32 %147, ptr %m.addr, align 4
  %148 = load i32, ptr %temp117, align 4
  store i32 %148, ptr %n.addr, align 4
  %149 = load i32, ptr %m_gemm, align 4
  store i32 %149, ptr %temp118, align 4
  %150 = load i32, ptr %n_gemm, align 4
  store i32 %150, ptr %m_gemm, align 4
  %151 = load i32, ptr %temp118, align 4
  store i32 %151, ptr %n_gemm, align 4
  %152 = load ptr, ptr %a.addr, align 8
  store ptr %152, ptr %temp119, align 8
  %153 = load ptr, ptr %b.addr, align 8
  store ptr %153, ptr %a.addr, align 8
  %154 = load ptr, ptr %temp119, align 8
  store ptr %154, ptr %b.addr, align 8
  %155 = load i32, ptr %a_was_copied, align 4
  store i32 %155, ptr %temp120, align 4
  %156 = load i32, ptr %b_was_copied, align 4
  store i32 %156, ptr %a_was_copied, align 4
  %157 = load i32, ptr %temp120, align 4
  store i32 %157, ptr %b_was_copied, align 4
  %158 = load i32, ptr %lda, align 4
  store i32 %158, ptr %temp121, align 4
  %159 = load i32, ptr %ldb, align 4
  store i32 %159, ptr %lda, align 4
  %160 = load i32, ptr %temp121, align 4
  store i32 %160, ptr %ldb, align 4
  %161 = load i32, ptr %inca, align 4
  store i32 %161, ptr %temp122, align 4
  %162 = load i32, ptr %incb, align 4
  store i32 %162, ptr %inca, align 4
  %163 = load i32, ptr %temp122, align 4
  store i32 %163, ptr %incb, align 4
  %164 = load i32, ptr %transa.addr, align 4
  store i32 %164, ptr %temp123, align 4
  %165 = load i32, ptr %transb.addr, align 4
  store i32 %165, ptr %transa.addr, align 4
  %166 = load i32, ptr %temp123, align 4
  store i32 %166, ptr %transb.addr, align 4
  br label %if.end135

if.else124:                                       ; preds = %if.else96
  %167 = load i32, ptr %lda, align 4
  store i32 %167, ptr %temp125, align 4
  %168 = load i32, ptr %inca, align 4
  store i32 %168, ptr %lda, align 4
  %169 = load i32, ptr %temp125, align 4
  store i32 %169, ptr %inca, align 4
  %170 = load i32, ptr %ldb, align 4
  store i32 %170, ptr %temp126, align 4
  %171 = load i32, ptr %incb, align 4
  store i32 %171, ptr %ldb, align 4
  %172 = load i32, ptr %temp126, align 4
  store i32 %172, ptr %incb, align 4
  %173 = load i32, ptr %ldc, align 4
  store i32 %173, ptr %temp127, align 4
  %174 = load i32, ptr %incc, align 4
  store i32 %174, ptr %ldc, align 4
  %175 = load i32, ptr %temp127, align 4
  store i32 %175, ptr %incc, align 4
  %176 = load i32, ptr %m.addr, align 4
  store i32 %176, ptr %temp128, align 4
  %177 = load i32, ptr %n.addr, align 4
  store i32 %177, ptr %m.addr, align 4
  %178 = load i32, ptr %temp128, align 4
  store i32 %178, ptr %n.addr, align 4
  %179 = load i32, ptr %m_gemm, align 4
  store i32 %179, ptr %temp129, align 4
  %180 = load i32, ptr %n_gemm, align 4
  store i32 %180, ptr %m_gemm, align 4
  %181 = load i32, ptr %temp129, align 4
  store i32 %181, ptr %n_gemm, align 4
  %182 = load ptr, ptr %a.addr, align 8
  store ptr %182, ptr %temp130, align 8
  %183 = load ptr, ptr %b.addr, align 8
  store ptr %183, ptr %a.addr, align 8
  %184 = load ptr, ptr %temp130, align 8
  store ptr %184, ptr %b.addr, align 8
  %185 = load i32, ptr %a_was_copied, align 4
  store i32 %185, ptr %temp131, align 4
  %186 = load i32, ptr %b_was_copied, align 4
  store i32 %186, ptr %a_was_copied, align 4
  %187 = load i32, ptr %temp131, align 4
  store i32 %187, ptr %b_was_copied, align 4
  %188 = load i32, ptr %lda, align 4
  store i32 %188, ptr %temp132, align 4
  %189 = load i32, ptr %ldb, align 4
  store i32 %189, ptr %lda, align 4
  %190 = load i32, ptr %temp132, align 4
  store i32 %190, ptr %ldb, align 4
  %191 = load i32, ptr %inca, align 4
  store i32 %191, ptr %temp133, align 4
  %192 = load i32, ptr %incb, align 4
  store i32 %192, ptr %inca, align 4
  %193 = load i32, ptr %temp133, align 4
  store i32 %193, ptr %incb, align 4
  %194 = load i32, ptr %transa.addr, align 4
  store i32 %194, ptr %temp134, align 4
  %195 = load i32, ptr %transb.addr, align 4
  store i32 %195, ptr %transa.addr, align 4
  %196 = load i32, ptr %temp134, align 4
  store i32 %196, ptr %transb.addr, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else124, %if.end116
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end95
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end60
  %197 = load ptr, ptr %a.addr, align 8
  store ptr %197, ptr %a_conj, align 8
  %198 = load i32, ptr %lda, align 4
  store i32 %198, ptr %lda_conj, align 4
  %199 = load i32, ptr %inca, align 4
  store i32 %199, ptr %inca_conj, align 4
  %200 = load i32, ptr %transa.addr, align 4
  %call138 = call i32 @bl1_is_conjnotrans(i32 noundef %200)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %land.lhs.true, label %if.else143

land.lhs.true:                                    ; preds = %if.end137
  %201 = load i32, ptr %a_was_copied, align 4
  %tobool140 = icmp ne i32 %201, 0
  br i1 %tobool140, label %if.else143, label %if.then141

if.then141:                                       ; preds = %land.lhs.true
  %202 = load i32, ptr %m_gemm, align 4
  %203 = load i32, ptr %k.addr, align 4
  %call142 = call ptr @bl1_callocm(i32 noundef %202, i32 noundef %203)
  store ptr %call142, ptr %a_conj, align 8
  %204 = load i32, ptr %m_gemm, align 4
  store i32 %204, ptr %lda_conj, align 4
  store i32 1, ptr %inca_conj, align 4
  %205 = load i32, ptr %m_gemm, align 4
  %206 = load i32, ptr %k.addr, align 4
  %207 = load ptr, ptr %a.addr, align 8
  %208 = load i32, ptr %inca, align 4
  %209 = load i32, ptr %lda, align 4
  %210 = load ptr, ptr %a_conj, align 8
  %211 = load i32, ptr %inca_conj, align 4
  %212 = load i32, ptr %lda_conj, align 4
  call void @bl1_ccopymt(i32 noundef 102, i32 noundef %205, i32 noundef %206, ptr noundef %207, i32 noundef %208, i32 noundef %209, ptr noundef %210, i32 noundef %211, i32 noundef %212)
  br label %if.end150

if.else143:                                       ; preds = %land.lhs.true, %if.end137
  %213 = load i32, ptr %transa.addr, align 4
  %call144 = call i32 @bl1_is_conjnotrans(i32 noundef %213)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %land.lhs.true146, label %if.end149

land.lhs.true146:                                 ; preds = %if.else143
  %214 = load i32, ptr %a_was_copied, align 4
  %tobool147 = icmp ne i32 %214, 0
  br i1 %tobool147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %land.lhs.true146
  %215 = load i32, ptr %m_gemm, align 4
  %216 = load i32, ptr %k.addr, align 4
  %217 = load ptr, ptr %a_conj, align 8
  %218 = load i32, ptr %inca_conj, align 4
  %219 = load i32, ptr %lda_conj, align 4
  call void @bl1_cconjm(i32 noundef %215, i32 noundef %216, ptr noundef %217, i32 noundef %218, i32 noundef %219)
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %land.lhs.true146, %if.else143
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then141
  %220 = load ptr, ptr %b.addr, align 8
  store ptr %220, ptr %b_conj, align 8
  %221 = load i32, ptr %ldb, align 4
  store i32 %221, ptr %ldb_conj, align 4
  %222 = load i32, ptr %incb, align 4
  store i32 %222, ptr %incb_conj, align 4
  %223 = load i32, ptr %transb.addr, align 4
  %call151 = call i32 @bl1_is_conjnotrans(i32 noundef %223)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %land.lhs.true153, label %if.else157

land.lhs.true153:                                 ; preds = %if.end150
  %224 = load i32, ptr %b_was_copied, align 4
  %tobool154 = icmp ne i32 %224, 0
  br i1 %tobool154, label %if.else157, label %if.then155

if.then155:                                       ; preds = %land.lhs.true153
  %225 = load i32, ptr %k.addr, align 4
  %226 = load i32, ptr %n_gemm, align 4
  %call156 = call ptr @bl1_callocm(i32 noundef %225, i32 noundef %226)
  store ptr %call156, ptr %b_conj, align 8
  %227 = load i32, ptr %k.addr, align 4
  store i32 %227, ptr %ldb_conj, align 4
  store i32 1, ptr %incb_conj, align 4
  %228 = load i32, ptr %k.addr, align 4
  %229 = load i32, ptr %n_gemm, align 4
  %230 = load ptr, ptr %b.addr, align 8
  %231 = load i32, ptr %incb, align 4
  %232 = load i32, ptr %ldb, align 4
  %233 = load ptr, ptr %b_conj, align 8
  %234 = load i32, ptr %incb_conj, align 4
  %235 = load i32, ptr %ldb_conj, align 4
  call void @bl1_ccopymt(i32 noundef 102, i32 noundef %228, i32 noundef %229, ptr noundef %230, i32 noundef %231, i32 noundef %232, ptr noundef %233, i32 noundef %234, i32 noundef %235)
  br label %if.end164

if.else157:                                       ; preds = %land.lhs.true153, %if.end150
  %236 = load i32, ptr %transb.addr, align 4
  %call158 = call i32 @bl1_is_conjnotrans(i32 noundef %236)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %land.lhs.true160, label %if.end163

land.lhs.true160:                                 ; preds = %if.else157
  %237 = load i32, ptr %b_was_copied, align 4
  %tobool161 = icmp ne i32 %237, 0
  br i1 %tobool161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %land.lhs.true160
  %238 = load i32, ptr %k.addr, align 4
  %239 = load i32, ptr %n_gemm, align 4
  %240 = load ptr, ptr %b_conj, align 8
  %241 = load i32, ptr %incb_conj, align 4
  %242 = load i32, ptr %ldb_conj, align 4
  call void @bl1_cconjm(i32 noundef %238, i32 noundef %239, ptr noundef %240, i32 noundef %241, i32 noundef %242)
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %land.lhs.true160, %if.else157
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then155
  %243 = load i32, ptr %gemm_needs_axpyt, align 4
  %tobool165 = icmp ne i32 %243, 0
  br i1 %tobool165, label %if.then166, label %if.else168

if.then166:                                       ; preds = %if.end164
  %244 = load i32, ptr %m_gemm, align 4
  %245 = load i32, ptr %n_gemm, align 4
  %call167 = call ptr @bl1_callocm(i32 noundef %244, i32 noundef %245)
  store ptr %call167, ptr %c_trans, align 8
  %246 = load i32, ptr %m_gemm, align 4
  store i32 %246, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %247 = load i32, ptr %transa.addr, align 4
  %248 = load i32, ptr %transb.addr, align 4
  %249 = load i32, ptr %m_gemm, align 4
  %250 = load i32, ptr %n_gemm, align 4
  %251 = load i32, ptr %k.addr, align 4
  %252 = load ptr, ptr %alpha.addr, align 8
  %253 = load ptr, ptr %a_conj, align 8
  %254 = load i32, ptr %lda_conj, align 4
  %255 = load ptr, ptr %b_conj, align 8
  %256 = load i32, ptr %ldb_conj, align 4
  %257 = load ptr, ptr %c_trans, align 8
  %258 = load i32, ptr %ldc_trans, align 4
  call void @bl1_cgemm_blas(i32 noundef %247, i32 noundef %248, i32 noundef %249, i32 noundef %250, i32 noundef %251, ptr noundef %252, ptr noundef %253, i32 noundef %254, ptr noundef %255, i32 noundef %256, ptr noundef %zero, ptr noundef %257, i32 noundef %258)
  %259 = load i32, ptr %m.addr, align 4
  %260 = load i32, ptr %n.addr, align 4
  %261 = load ptr, ptr %beta.addr, align 8
  %262 = load ptr, ptr %c.addr, align 8
  %263 = load i32, ptr %incc, align 4
  %264 = load i32, ptr %ldc, align 4
  call void @bl1_cscalm(i32 noundef 500, i32 noundef %259, i32 noundef %260, ptr noundef %261, ptr noundef %262, i32 noundef %263, i32 noundef %264)
  %265 = load i32, ptr %m.addr, align 4
  %266 = load i32, ptr %n.addr, align 4
  %267 = load ptr, ptr %c_trans, align 8
  %268 = load i32, ptr %incc_trans, align 4
  %269 = load i32, ptr %ldc_trans, align 4
  %270 = load ptr, ptr %c.addr, align 8
  %271 = load i32, ptr %incc, align 4
  %272 = load i32, ptr %ldc, align 4
  call void @bl1_caxpymt(i32 noundef 101, i32 noundef %265, i32 noundef %266, ptr noundef %one, ptr noundef %267, i32 noundef %268, i32 noundef %269, ptr noundef %270, i32 noundef %271, i32 noundef %272)
  %273 = load ptr, ptr %c_trans, align 8
  call void @bl1_cfree(ptr noundef %273)
  br label %if.end169

if.else168:                                       ; preds = %if.end164
  %274 = load i32, ptr %transa.addr, align 4
  %275 = load i32, ptr %transb.addr, align 4
  %276 = load i32, ptr %m_gemm, align 4
  %277 = load i32, ptr %n_gemm, align 4
  %278 = load i32, ptr %k.addr, align 4
  %279 = load ptr, ptr %alpha.addr, align 8
  %280 = load ptr, ptr %a_conj, align 8
  %281 = load i32, ptr %lda_conj, align 4
  %282 = load ptr, ptr %b_conj, align 8
  %283 = load i32, ptr %ldb_conj, align 4
  %284 = load ptr, ptr %beta.addr, align 8
  %285 = load ptr, ptr %c.addr, align 8
  %286 = load i32, ptr %ldc, align 4
  call void @bl1_cgemm_blas(i32 noundef %274, i32 noundef %275, i32 noundef %276, i32 noundef %277, i32 noundef %278, ptr noundef %279, ptr noundef %280, i32 noundef %281, ptr noundef %282, i32 noundef %283, ptr noundef %284, ptr noundef %285, i32 noundef %286)
  br label %if.end169

if.end169:                                        ; preds = %if.else168, %if.then166
  %287 = load i32, ptr %transa.addr, align 4
  %call170 = call i32 @bl1_is_conjnotrans(i32 noundef %287)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %land.lhs.true172, label %if.end175

land.lhs.true172:                                 ; preds = %if.end169
  %288 = load i32, ptr %a_was_copied, align 4
  %tobool173 = icmp ne i32 %288, 0
  br i1 %tobool173, label %if.end175, label %if.then174

if.then174:                                       ; preds = %land.lhs.true172
  %289 = load ptr, ptr %a_conj, align 8
  call void @bl1_cfree(ptr noundef %289)
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %land.lhs.true172, %if.end169
  %290 = load i32, ptr %transb.addr, align 4
  %call176 = call i32 @bl1_is_conjnotrans(i32 noundef %290)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %land.lhs.true178, label %if.end181

land.lhs.true178:                                 ; preds = %if.end175
  %291 = load i32, ptr %b_was_copied, align 4
  %tobool179 = icmp ne i32 %291, 0
  br i1 %tobool179, label %if.end181, label %if.then180

if.then180:                                       ; preds = %land.lhs.true178
  %292 = load ptr, ptr %b_conj, align 8
  call void @bl1_cfree(ptr noundef %292)
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %land.lhs.true178, %if.end175
  %293 = load ptr, ptr %a_save, align 8
  %294 = load i32, ptr %a_rs_save, align 4
  %295 = load i32, ptr %a_cs_save, align 4
  call void @bl1_cfree_contigm(ptr noundef %293, i32 noundef %294, i32 noundef %295, ptr noundef %a_unswap, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %296 = load ptr, ptr %b_save, align 8
  %297 = load i32, ptr %b_rs_save, align 4
  %298 = load i32, ptr %b_cs_save, align 4
  call void @bl1_cfree_contigm(ptr noundef %296, i32 noundef %297, i32 noundef %298, ptr noundef %b_unswap, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %299 = load i32, ptr %m_save, align 4
  %300 = load i32, ptr %n_save, align 4
  %301 = load ptr, ptr %c_save, align 8
  %302 = load i32, ptr %c_rs_save, align 4
  %303 = load i32, ptr %c_cs_save, align 4
  call void @bl1_cfree_saved_contigm(i32 noundef %299, i32 noundef %300, ptr noundef %301, i32 noundef %302, i32 noundef %303, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end181, %if.then
  ret void
}

declare <2 x float> @bl1_c0() #1

declare <2 x float> @bl1_c1() #1

declare void @bl1_cscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_ccreate_contigmt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_ccreate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @bl1_callocm(i32 noundef, i32 noundef) #1

declare void @bl1_ccopymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_cconjm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_cgemm_blas(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %n, i32 noundef %k, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_transa = alloca i8, align 1
  %blas_transb = alloca i8, align 1
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %transa.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %0, ptr noundef %blas_transa)
  %1 = load i32, ptr %transb.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_transb)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @cgemm_(ptr noundef %blas_transa, ptr noundef %blas_transb, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %k.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_caxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_cfree(ptr noundef) #1

declare void @bl1_cfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_cfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_zgemm(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %k, i32 noundef %n, ptr noundef %alpha, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs, ptr noundef %b, i32 noundef %b_rs, i32 noundef %b_cs, ptr noundef %beta, ptr noundef %c, i32 noundef %c_rs, i32 noundef %c_cs) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
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
  %a_unswap = alloca ptr, align 8
  %b_unswap = alloca ptr, align 8
  %a_conj = alloca ptr, align 8
  %b_conj = alloca ptr, align 8
  %c_trans = alloca ptr, align 8
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %ldb = alloca i32, align 4
  %incb = alloca i32, align 4
  %ldc = alloca i32, align 4
  %incc = alloca i32, align 4
  %lda_conj = alloca i32, align 4
  %inca_conj = alloca i32, align 4
  %ldb_conj = alloca i32, align 4
  %incb_conj = alloca i32, align 4
  %ldc_trans = alloca i32, align 4
  %incc_trans = alloca i32, align 4
  %m_gemm = alloca i32, align 4
  %n_gemm = alloca i32, align 4
  %gemm_needs_axpyt = alloca i32, align 4
  %a_was_copied = alloca i32, align 4
  %b_was_copied = alloca i32, align 4
  %temp = alloca i32, align 4
  %temp34 = alloca i32, align 4
  %temp51 = alloca i32, align 4
  %temp52 = alloca i32, align 4
  %temp53 = alloca ptr, align 8
  %temp54 = alloca i32, align 4
  %temp55 = alloca i32, align 4
  %temp56 = alloca i32, align 4
  %temp57 = alloca i32, align 4
  %temp58 = alloca i32, align 4
  %temp68 = alloca i32, align 4
  %temp69 = alloca i32, align 4
  %temp71 = alloca i32, align 4
  %temp72 = alloca i32, align 4
  %temp88 = alloca i32, align 4
  %temp89 = alloca i32, align 4
  %temp90 = alloca ptr, align 8
  %temp91 = alloca i32, align 4
  %temp92 = alloca i32, align 4
  %temp93 = alloca i32, align 4
  %temp94 = alloca i32, align 4
  %temp100 = alloca i32, align 4
  %temp101 = alloca i32, align 4
  %temp117 = alloca i32, align 4
  %temp118 = alloca i32, align 4
  %temp119 = alloca ptr, align 8
  %temp120 = alloca i32, align 4
  %temp121 = alloca i32, align 4
  %temp122 = alloca i32, align 4
  %temp123 = alloca i32, align 4
  %temp125 = alloca i32, align 4
  %temp126 = alloca i32, align 4
  %temp127 = alloca i32, align 4
  %temp128 = alloca i32, align 4
  %temp129 = alloca i32, align 4
  %temp130 = alloca ptr, align 8
  %temp131 = alloca i32, align 4
  %temp132 = alloca i32, align 4
  %temp133 = alloca i32, align 4
  %temp134 = alloca i32, align 4
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %k, ptr %k.addr, align 4
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
  store i32 0, ptr %gemm_needs_axpyt, align 4
  %19 = load i32, ptr %m.addr, align 4
  %20 = load i32, ptr %k.addr, align 4
  %21 = load i32, ptr %n.addr, align 4
  %call2 = call i32 @bl1_zero_dim3(i32 noundef %19, i32 noundef %20, i32 noundef %21)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load i32, ptr %m.addr, align 4
  %23 = load i32, ptr %n.addr, align 4
  %24 = load ptr, ptr %beta.addr, align 8
  %25 = load ptr, ptr %c.addr, align 8
  %26 = load i32, ptr %c_rs.addr, align 4
  %27 = load i32, ptr %c_cs.addr, align 4
  call void @bl1_zscalm(i32 noundef 500, i32 noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef %27)
  br label %return

if.end:                                           ; preds = %entry
  %28 = load i32, ptr %transa.addr, align 4
  %29 = load i32, ptr %m.addr, align 4
  %30 = load i32, ptr %k.addr, align 4
  %31 = load ptr, ptr %a_save, align 8
  %32 = load i32, ptr %a_rs_save, align 4
  %33 = load i32, ptr %a_cs_save, align 4
  call void @bl1_zcreate_contigmt(i32 noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %34 = load i32, ptr %transb.addr, align 4
  %35 = load i32, ptr %k.addr, align 4
  %36 = load i32, ptr %n.addr, align 4
  %37 = load ptr, ptr %b_save, align 8
  %38 = load i32, ptr %b_rs_save, align 4
  %39 = load i32, ptr %b_cs_save, align 4
  call void @bl1_zcreate_contigmt(i32 noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %b.addr, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %40 = load i32, ptr %m.addr, align 4
  %41 = load i32, ptr %n.addr, align 4
  %42 = load ptr, ptr %c_save, align 8
  %43 = load i32, ptr %c_rs_save, align 4
  %44 = load i32, ptr %c_cs_save, align 4
  call void @bl1_zcreate_contigm(i32 noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %44, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  %45 = load ptr, ptr %a.addr, align 8
  %46 = load ptr, ptr %a_save, align 8
  %cmp = icmp ne ptr %45, %46
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %a_was_copied, align 4
  %47 = load ptr, ptr %b.addr, align 8
  %48 = load ptr, ptr %b_save, align 8
  %cmp3 = icmp ne ptr %47, %48
  %conv4 = zext i1 %cmp3 to i32
  store i32 %conv4, ptr %b_was_copied, align 4
  %49 = load ptr, ptr %a.addr, align 8
  store ptr %49, ptr %a_unswap, align 8
  %50 = load ptr, ptr %b.addr, align 8
  store ptr %50, ptr %b_unswap, align 8
  %51 = load i32, ptr %m.addr, align 4
  store i32 %51, ptr %m_gemm, align 4
  %52 = load i32, ptr %n.addr, align 4
  store i32 %52, ptr %n_gemm, align 4
  %53 = load i32, ptr %a_cs.addr, align 4
  store i32 %53, ptr %lda, align 4
  %54 = load i32, ptr %a_rs.addr, align 4
  store i32 %54, ptr %inca, align 4
  %55 = load i32, ptr %b_cs.addr, align 4
  store i32 %55, ptr %ldb, align 4
  %56 = load i32, ptr %b_rs.addr, align 4
  store i32 %56, ptr %incb, align 4
  %57 = load i32, ptr %c_cs.addr, align 4
  store i32 %57, ptr %ldc, align 4
  %58 = load i32, ptr %c_rs.addr, align 4
  store i32 %58, ptr %incc, align 4
  %59 = load i32, ptr %c_rs.addr, align 4
  %60 = load i32, ptr %c_cs.addr, align 4
  %call5 = call i32 @bl1_is_col_storage(i32 noundef %59, i32 noundef %60)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.else61

if.then7:                                         ; preds = %if.end
  %61 = load i32, ptr %a_rs.addr, align 4
  %62 = load i32, ptr %a_cs.addr, align 4
  %call8 = call i32 @bl1_is_col_storage(i32 noundef %61, i32 noundef %62)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.else30

if.then10:                                        ; preds = %if.then7
  %63 = load i32, ptr %b_rs.addr, align 4
  %64 = load i32, ptr %b_cs.addr, align 4
  %call11 = call i32 @bl1_is_col_storage(i32 noundef %63, i32 noundef %64)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  br label %if.end29

if.else:                                          ; preds = %if.then10
  %65 = load i32, ptr %ldb, align 4
  store i32 %65, ptr %temp, align 4
  %66 = load i32, ptr %incb, align 4
  store i32 %66, ptr %ldb, align 4
  %67 = load i32, ptr %temp, align 4
  store i32 %67, ptr %incb, align 4
  %68 = load i32, ptr %transb.addr, align 4
  %call14 = call i32 @bl1_is_notrans(i32 noundef %68)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  store i32 101, ptr %transb.addr, align 4
  br label %if.end28

if.else17:                                        ; preds = %if.else
  %69 = load i32, ptr %transb.addr, align 4
  %call18 = call i32 @bl1_is_trans(i32 noundef %69)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  store i32 100, ptr %transb.addr, align 4
  br label %if.end27

if.else21:                                        ; preds = %if.else17
  %70 = load i32, ptr %transb.addr, align 4
  %call22 = call i32 @bl1_is_conjnotrans(i32 noundef %70)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else21
  store i32 103, ptr %transb.addr, align 4
  br label %if.end26

if.else25:                                        ; preds = %if.else21
  store i32 102, ptr %transb.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then20
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then16
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then13
  br label %if.end60

if.else30:                                        ; preds = %if.then7
  %71 = load i32, ptr %b_rs.addr, align 4
  %72 = load i32, ptr %b_cs.addr, align 4
  %call31 = call i32 @bl1_is_col_storage(i32 noundef %71, i32 noundef %72)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.else50

if.then33:                                        ; preds = %if.else30
  %73 = load i32, ptr %lda, align 4
  store i32 %73, ptr %temp34, align 4
  %74 = load i32, ptr %inca, align 4
  store i32 %74, ptr %lda, align 4
  %75 = load i32, ptr %temp34, align 4
  store i32 %75, ptr %inca, align 4
  %76 = load i32, ptr %transa.addr, align 4
  %call35 = call i32 @bl1_is_notrans(i32 noundef %76)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then33
  store i32 101, ptr %transa.addr, align 4
  br label %if.end49

if.else38:                                        ; preds = %if.then33
  %77 = load i32, ptr %transa.addr, align 4
  %call39 = call i32 @bl1_is_trans(i32 noundef %77)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  store i32 100, ptr %transa.addr, align 4
  br label %if.end48

if.else42:                                        ; preds = %if.else38
  %78 = load i32, ptr %transa.addr, align 4
  %call43 = call i32 @bl1_is_conjnotrans(i32 noundef %78)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else42
  store i32 103, ptr %transa.addr, align 4
  br label %if.end47

if.else46:                                        ; preds = %if.else42
  store i32 102, ptr %transa.addr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then41
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then37
  br label %if.end59

if.else50:                                        ; preds = %if.else30
  %79 = load i32, ptr %lda, align 4
  store i32 %79, ptr %temp51, align 4
  %80 = load i32, ptr %inca, align 4
  store i32 %80, ptr %lda, align 4
  %81 = load i32, ptr %temp51, align 4
  store i32 %81, ptr %inca, align 4
  %82 = load i32, ptr %ldb, align 4
  store i32 %82, ptr %temp52, align 4
  %83 = load i32, ptr %incb, align 4
  store i32 %83, ptr %ldb, align 4
  %84 = load i32, ptr %temp52, align 4
  store i32 %84, ptr %incb, align 4
  %85 = load ptr, ptr %a.addr, align 8
  store ptr %85, ptr %temp53, align 8
  %86 = load ptr, ptr %b.addr, align 8
  store ptr %86, ptr %a.addr, align 8
  %87 = load ptr, ptr %temp53, align 8
  store ptr %87, ptr %b.addr, align 8
  %88 = load i32, ptr %a_was_copied, align 4
  store i32 %88, ptr %temp54, align 4
  %89 = load i32, ptr %b_was_copied, align 4
  store i32 %89, ptr %a_was_copied, align 4
  %90 = load i32, ptr %temp54, align 4
  store i32 %90, ptr %b_was_copied, align 4
  %91 = load i32, ptr %lda, align 4
  store i32 %91, ptr %temp55, align 4
  %92 = load i32, ptr %ldb, align 4
  store i32 %92, ptr %lda, align 4
  %93 = load i32, ptr %temp55, align 4
  store i32 %93, ptr %ldb, align 4
  %94 = load i32, ptr %inca, align 4
  store i32 %94, ptr %temp56, align 4
  %95 = load i32, ptr %incb, align 4
  store i32 %95, ptr %inca, align 4
  %96 = load i32, ptr %temp56, align 4
  store i32 %96, ptr %incb, align 4
  %97 = load i32, ptr %transa.addr, align 4
  store i32 %97, ptr %temp57, align 4
  %98 = load i32, ptr %transb.addr, align 4
  store i32 %98, ptr %transa.addr, align 4
  %99 = load i32, ptr %temp57, align 4
  store i32 %99, ptr %transb.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  %100 = load i32, ptr %m_gemm, align 4
  store i32 %100, ptr %temp58, align 4
  %101 = load i32, ptr %n_gemm, align 4
  store i32 %101, ptr %m_gemm, align 4
  %102 = load i32, ptr %temp58, align 4
  store i32 %102, ptr %n_gemm, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else50, %if.end49
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end29
  br label %if.end137

if.else61:                                        ; preds = %if.end
  %103 = load i32, ptr %a_rs.addr, align 4
  %104 = load i32, ptr %a_cs.addr, align 4
  %call62 = call i32 @bl1_is_col_storage(i32 noundef %103, i32 noundef %104)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.else96

if.then64:                                        ; preds = %if.else61
  %105 = load i32, ptr %b_rs.addr, align 4
  %106 = load i32, ptr %b_cs.addr, align 4
  %call65 = call i32 @bl1_is_col_storage(i32 noundef %105, i32 noundef %106)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %if.then64
  %107 = load i32, ptr %ldc, align 4
  store i32 %107, ptr %temp68, align 4
  %108 = load i32, ptr %incc, align 4
  store i32 %108, ptr %ldc, align 4
  %109 = load i32, ptr %temp68, align 4
  store i32 %109, ptr %incc, align 4
  %110 = load i32, ptr %m.addr, align 4
  store i32 %110, ptr %temp69, align 4
  %111 = load i32, ptr %n.addr, align 4
  store i32 %111, ptr %m.addr, align 4
  %112 = load i32, ptr %temp69, align 4
  store i32 %112, ptr %n.addr, align 4
  store i32 1, ptr %gemm_needs_axpyt, align 4
  br label %if.end95

if.else70:                                        ; preds = %if.then64
  %113 = load i32, ptr %ldc, align 4
  store i32 %113, ptr %temp71, align 4
  %114 = load i32, ptr %incc, align 4
  store i32 %114, ptr %ldc, align 4
  %115 = load i32, ptr %temp71, align 4
  store i32 %115, ptr %incc, align 4
  %116 = load i32, ptr %ldb, align 4
  store i32 %116, ptr %temp72, align 4
  %117 = load i32, ptr %incb, align 4
  store i32 %117, ptr %ldb, align 4
  %118 = load i32, ptr %temp72, align 4
  store i32 %118, ptr %incb, align 4
  %119 = load i32, ptr %transa.addr, align 4
  %call73 = call i32 @bl1_is_notrans(i32 noundef %119)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.else70
  store i32 101, ptr %transa.addr, align 4
  br label %if.end87

if.else76:                                        ; preds = %if.else70
  %120 = load i32, ptr %transa.addr, align 4
  %call77 = call i32 @bl1_is_trans(i32 noundef %120)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.else76
  store i32 100, ptr %transa.addr, align 4
  br label %if.end86

if.else80:                                        ; preds = %if.else76
  %121 = load i32, ptr %transa.addr, align 4
  %call81 = call i32 @bl1_is_conjnotrans(i32 noundef %121)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else80
  store i32 103, ptr %transa.addr, align 4
  br label %if.end85

if.else84:                                        ; preds = %if.else80
  store i32 102, ptr %transa.addr, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then83
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then79
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then75
  %122 = load i32, ptr %m.addr, align 4
  store i32 %122, ptr %temp88, align 4
  %123 = load i32, ptr %n.addr, align 4
  store i32 %123, ptr %m.addr, align 4
  %124 = load i32, ptr %temp88, align 4
  store i32 %124, ptr %n.addr, align 4
  %125 = load i32, ptr %m_gemm, align 4
  store i32 %125, ptr %temp89, align 4
  %126 = load i32, ptr %n_gemm, align 4
  store i32 %126, ptr %m_gemm, align 4
  %127 = load i32, ptr %temp89, align 4
  store i32 %127, ptr %n_gemm, align 4
  %128 = load ptr, ptr %a.addr, align 8
  store ptr %128, ptr %temp90, align 8
  %129 = load ptr, ptr %b.addr, align 8
  store ptr %129, ptr %a.addr, align 8
  %130 = load ptr, ptr %temp90, align 8
  store ptr %130, ptr %b.addr, align 8
  %131 = load i32, ptr %a_was_copied, align 4
  store i32 %131, ptr %temp91, align 4
  %132 = load i32, ptr %b_was_copied, align 4
  store i32 %132, ptr %a_was_copied, align 4
  %133 = load i32, ptr %temp91, align 4
  store i32 %133, ptr %b_was_copied, align 4
  %134 = load i32, ptr %lda, align 4
  store i32 %134, ptr %temp92, align 4
  %135 = load i32, ptr %ldb, align 4
  store i32 %135, ptr %lda, align 4
  %136 = load i32, ptr %temp92, align 4
  store i32 %136, ptr %ldb, align 4
  %137 = load i32, ptr %inca, align 4
  store i32 %137, ptr %temp93, align 4
  %138 = load i32, ptr %incb, align 4
  store i32 %138, ptr %inca, align 4
  %139 = load i32, ptr %temp93, align 4
  store i32 %139, ptr %incb, align 4
  %140 = load i32, ptr %transa.addr, align 4
  store i32 %140, ptr %temp94, align 4
  %141 = load i32, ptr %transb.addr, align 4
  store i32 %141, ptr %transa.addr, align 4
  %142 = load i32, ptr %temp94, align 4
  store i32 %142, ptr %transb.addr, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end87, %if.then67
  br label %if.end136

if.else96:                                        ; preds = %if.else61
  %143 = load i32, ptr %b_rs.addr, align 4
  %144 = load i32, ptr %b_cs.addr, align 4
  %call97 = call i32 @bl1_is_col_storage(i32 noundef %143, i32 noundef %144)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then99, label %if.else124

if.then99:                                        ; preds = %if.else96
  %145 = load i32, ptr %ldc, align 4
  store i32 %145, ptr %temp100, align 4
  %146 = load i32, ptr %incc, align 4
  store i32 %146, ptr %ldc, align 4
  %147 = load i32, ptr %temp100, align 4
  store i32 %147, ptr %incc, align 4
  %148 = load i32, ptr %lda, align 4
  store i32 %148, ptr %temp101, align 4
  %149 = load i32, ptr %inca, align 4
  store i32 %149, ptr %lda, align 4
  %150 = load i32, ptr %temp101, align 4
  store i32 %150, ptr %inca, align 4
  %151 = load i32, ptr %transb.addr, align 4
  %call102 = call i32 @bl1_is_notrans(i32 noundef %151)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.then99
  store i32 101, ptr %transb.addr, align 4
  br label %if.end116

if.else105:                                       ; preds = %if.then99
  %152 = load i32, ptr %transb.addr, align 4
  %call106 = call i32 @bl1_is_trans(i32 noundef %152)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %if.else109

if.then108:                                       ; preds = %if.else105
  store i32 100, ptr %transb.addr, align 4
  br label %if.end115

if.else109:                                       ; preds = %if.else105
  %153 = load i32, ptr %transb.addr, align 4
  %call110 = call i32 @bl1_is_conjnotrans(i32 noundef %153)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.else109
  store i32 103, ptr %transb.addr, align 4
  br label %if.end114

if.else113:                                       ; preds = %if.else109
  store i32 102, ptr %transb.addr, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else113, %if.then112
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then108
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then104
  %154 = load i32, ptr %m.addr, align 4
  store i32 %154, ptr %temp117, align 4
  %155 = load i32, ptr %n.addr, align 4
  store i32 %155, ptr %m.addr, align 4
  %156 = load i32, ptr %temp117, align 4
  store i32 %156, ptr %n.addr, align 4
  %157 = load i32, ptr %m_gemm, align 4
  store i32 %157, ptr %temp118, align 4
  %158 = load i32, ptr %n_gemm, align 4
  store i32 %158, ptr %m_gemm, align 4
  %159 = load i32, ptr %temp118, align 4
  store i32 %159, ptr %n_gemm, align 4
  %160 = load ptr, ptr %a.addr, align 8
  store ptr %160, ptr %temp119, align 8
  %161 = load ptr, ptr %b.addr, align 8
  store ptr %161, ptr %a.addr, align 8
  %162 = load ptr, ptr %temp119, align 8
  store ptr %162, ptr %b.addr, align 8
  %163 = load i32, ptr %a_was_copied, align 4
  store i32 %163, ptr %temp120, align 4
  %164 = load i32, ptr %b_was_copied, align 4
  store i32 %164, ptr %a_was_copied, align 4
  %165 = load i32, ptr %temp120, align 4
  store i32 %165, ptr %b_was_copied, align 4
  %166 = load i32, ptr %lda, align 4
  store i32 %166, ptr %temp121, align 4
  %167 = load i32, ptr %ldb, align 4
  store i32 %167, ptr %lda, align 4
  %168 = load i32, ptr %temp121, align 4
  store i32 %168, ptr %ldb, align 4
  %169 = load i32, ptr %inca, align 4
  store i32 %169, ptr %temp122, align 4
  %170 = load i32, ptr %incb, align 4
  store i32 %170, ptr %inca, align 4
  %171 = load i32, ptr %temp122, align 4
  store i32 %171, ptr %incb, align 4
  %172 = load i32, ptr %transa.addr, align 4
  store i32 %172, ptr %temp123, align 4
  %173 = load i32, ptr %transb.addr, align 4
  store i32 %173, ptr %transa.addr, align 4
  %174 = load i32, ptr %temp123, align 4
  store i32 %174, ptr %transb.addr, align 4
  br label %if.end135

if.else124:                                       ; preds = %if.else96
  %175 = load i32, ptr %lda, align 4
  store i32 %175, ptr %temp125, align 4
  %176 = load i32, ptr %inca, align 4
  store i32 %176, ptr %lda, align 4
  %177 = load i32, ptr %temp125, align 4
  store i32 %177, ptr %inca, align 4
  %178 = load i32, ptr %ldb, align 4
  store i32 %178, ptr %temp126, align 4
  %179 = load i32, ptr %incb, align 4
  store i32 %179, ptr %ldb, align 4
  %180 = load i32, ptr %temp126, align 4
  store i32 %180, ptr %incb, align 4
  %181 = load i32, ptr %ldc, align 4
  store i32 %181, ptr %temp127, align 4
  %182 = load i32, ptr %incc, align 4
  store i32 %182, ptr %ldc, align 4
  %183 = load i32, ptr %temp127, align 4
  store i32 %183, ptr %incc, align 4
  %184 = load i32, ptr %m.addr, align 4
  store i32 %184, ptr %temp128, align 4
  %185 = load i32, ptr %n.addr, align 4
  store i32 %185, ptr %m.addr, align 4
  %186 = load i32, ptr %temp128, align 4
  store i32 %186, ptr %n.addr, align 4
  %187 = load i32, ptr %m_gemm, align 4
  store i32 %187, ptr %temp129, align 4
  %188 = load i32, ptr %n_gemm, align 4
  store i32 %188, ptr %m_gemm, align 4
  %189 = load i32, ptr %temp129, align 4
  store i32 %189, ptr %n_gemm, align 4
  %190 = load ptr, ptr %a.addr, align 8
  store ptr %190, ptr %temp130, align 8
  %191 = load ptr, ptr %b.addr, align 8
  store ptr %191, ptr %a.addr, align 8
  %192 = load ptr, ptr %temp130, align 8
  store ptr %192, ptr %b.addr, align 8
  %193 = load i32, ptr %a_was_copied, align 4
  store i32 %193, ptr %temp131, align 4
  %194 = load i32, ptr %b_was_copied, align 4
  store i32 %194, ptr %a_was_copied, align 4
  %195 = load i32, ptr %temp131, align 4
  store i32 %195, ptr %b_was_copied, align 4
  %196 = load i32, ptr %lda, align 4
  store i32 %196, ptr %temp132, align 4
  %197 = load i32, ptr %ldb, align 4
  store i32 %197, ptr %lda, align 4
  %198 = load i32, ptr %temp132, align 4
  store i32 %198, ptr %ldb, align 4
  %199 = load i32, ptr %inca, align 4
  store i32 %199, ptr %temp133, align 4
  %200 = load i32, ptr %incb, align 4
  store i32 %200, ptr %inca, align 4
  %201 = load i32, ptr %temp133, align 4
  store i32 %201, ptr %incb, align 4
  %202 = load i32, ptr %transa.addr, align 4
  store i32 %202, ptr %temp134, align 4
  %203 = load i32, ptr %transb.addr, align 4
  store i32 %203, ptr %transa.addr, align 4
  %204 = load i32, ptr %temp134, align 4
  store i32 %204, ptr %transb.addr, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.else124, %if.end116
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end95
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end60
  %205 = load ptr, ptr %a.addr, align 8
  store ptr %205, ptr %a_conj, align 8
  %206 = load i32, ptr %lda, align 4
  store i32 %206, ptr %lda_conj, align 4
  %207 = load i32, ptr %inca, align 4
  store i32 %207, ptr %inca_conj, align 4
  %208 = load i32, ptr %transa.addr, align 4
  %call138 = call i32 @bl1_is_conjnotrans(i32 noundef %208)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %land.lhs.true, label %if.else143

land.lhs.true:                                    ; preds = %if.end137
  %209 = load i32, ptr %a_was_copied, align 4
  %tobool140 = icmp ne i32 %209, 0
  br i1 %tobool140, label %if.else143, label %if.then141

if.then141:                                       ; preds = %land.lhs.true
  %210 = load i32, ptr %m_gemm, align 4
  %211 = load i32, ptr %k.addr, align 4
  %call142 = call ptr @bl1_zallocm(i32 noundef %210, i32 noundef %211)
  store ptr %call142, ptr %a_conj, align 8
  %212 = load i32, ptr %m_gemm, align 4
  store i32 %212, ptr %lda_conj, align 4
  store i32 1, ptr %inca_conj, align 4
  %213 = load i32, ptr %m_gemm, align 4
  %214 = load i32, ptr %k.addr, align 4
  %215 = load ptr, ptr %a.addr, align 8
  %216 = load i32, ptr %inca, align 4
  %217 = load i32, ptr %lda, align 4
  %218 = load ptr, ptr %a_conj, align 8
  %219 = load i32, ptr %inca_conj, align 4
  %220 = load i32, ptr %lda_conj, align 4
  call void @bl1_zcopymt(i32 noundef 102, i32 noundef %213, i32 noundef %214, ptr noundef %215, i32 noundef %216, i32 noundef %217, ptr noundef %218, i32 noundef %219, i32 noundef %220)
  br label %if.end150

if.else143:                                       ; preds = %land.lhs.true, %if.end137
  %221 = load i32, ptr %transa.addr, align 4
  %call144 = call i32 @bl1_is_conjnotrans(i32 noundef %221)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %land.lhs.true146, label %if.end149

land.lhs.true146:                                 ; preds = %if.else143
  %222 = load i32, ptr %a_was_copied, align 4
  %tobool147 = icmp ne i32 %222, 0
  br i1 %tobool147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %land.lhs.true146
  %223 = load i32, ptr %m_gemm, align 4
  %224 = load i32, ptr %k.addr, align 4
  %225 = load ptr, ptr %a_conj, align 8
  %226 = load i32, ptr %inca_conj, align 4
  %227 = load i32, ptr %lda_conj, align 4
  call void @bl1_zconjm(i32 noundef %223, i32 noundef %224, ptr noundef %225, i32 noundef %226, i32 noundef %227)
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %land.lhs.true146, %if.else143
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then141
  %228 = load ptr, ptr %b.addr, align 8
  store ptr %228, ptr %b_conj, align 8
  %229 = load i32, ptr %ldb, align 4
  store i32 %229, ptr %ldb_conj, align 4
  %230 = load i32, ptr %incb, align 4
  store i32 %230, ptr %incb_conj, align 4
  %231 = load i32, ptr %transb.addr, align 4
  %call151 = call i32 @bl1_is_conjnotrans(i32 noundef %231)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %land.lhs.true153, label %if.else157

land.lhs.true153:                                 ; preds = %if.end150
  %232 = load i32, ptr %b_was_copied, align 4
  %tobool154 = icmp ne i32 %232, 0
  br i1 %tobool154, label %if.else157, label %if.then155

if.then155:                                       ; preds = %land.lhs.true153
  %233 = load i32, ptr %k.addr, align 4
  %234 = load i32, ptr %n_gemm, align 4
  %call156 = call ptr @bl1_zallocm(i32 noundef %233, i32 noundef %234)
  store ptr %call156, ptr %b_conj, align 8
  %235 = load i32, ptr %k.addr, align 4
  store i32 %235, ptr %ldb_conj, align 4
  store i32 1, ptr %incb_conj, align 4
  %236 = load i32, ptr %k.addr, align 4
  %237 = load i32, ptr %n_gemm, align 4
  %238 = load ptr, ptr %b.addr, align 8
  %239 = load i32, ptr %incb, align 4
  %240 = load i32, ptr %ldb, align 4
  %241 = load ptr, ptr %b_conj, align 8
  %242 = load i32, ptr %incb_conj, align 4
  %243 = load i32, ptr %ldb_conj, align 4
  call void @bl1_zcopymt(i32 noundef 102, i32 noundef %236, i32 noundef %237, ptr noundef %238, i32 noundef %239, i32 noundef %240, ptr noundef %241, i32 noundef %242, i32 noundef %243)
  br label %if.end164

if.else157:                                       ; preds = %land.lhs.true153, %if.end150
  %244 = load i32, ptr %transb.addr, align 4
  %call158 = call i32 @bl1_is_conjnotrans(i32 noundef %244)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %land.lhs.true160, label %if.end163

land.lhs.true160:                                 ; preds = %if.else157
  %245 = load i32, ptr %b_was_copied, align 4
  %tobool161 = icmp ne i32 %245, 0
  br i1 %tobool161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %land.lhs.true160
  %246 = load i32, ptr %k.addr, align 4
  %247 = load i32, ptr %n_gemm, align 4
  %248 = load ptr, ptr %b_conj, align 8
  %249 = load i32, ptr %incb_conj, align 4
  %250 = load i32, ptr %ldb_conj, align 4
  call void @bl1_zconjm(i32 noundef %246, i32 noundef %247, ptr noundef %248, i32 noundef %249, i32 noundef %250)
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %land.lhs.true160, %if.else157
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then155
  %251 = load i32, ptr %gemm_needs_axpyt, align 4
  %tobool165 = icmp ne i32 %251, 0
  br i1 %tobool165, label %if.then166, label %if.else168

if.then166:                                       ; preds = %if.end164
  %252 = load i32, ptr %m_gemm, align 4
  %253 = load i32, ptr %n_gemm, align 4
  %call167 = call ptr @bl1_zallocm(i32 noundef %252, i32 noundef %253)
  store ptr %call167, ptr %c_trans, align 8
  %254 = load i32, ptr %m_gemm, align 4
  store i32 %254, ptr %ldc_trans, align 4
  store i32 1, ptr %incc_trans, align 4
  %255 = load i32, ptr %transa.addr, align 4
  %256 = load i32, ptr %transb.addr, align 4
  %257 = load i32, ptr %m_gemm, align 4
  %258 = load i32, ptr %n_gemm, align 4
  %259 = load i32, ptr %k.addr, align 4
  %260 = load ptr, ptr %alpha.addr, align 8
  %261 = load ptr, ptr %a_conj, align 8
  %262 = load i32, ptr %lda_conj, align 4
  %263 = load ptr, ptr %b_conj, align 8
  %264 = load i32, ptr %ldb_conj, align 4
  %265 = load ptr, ptr %c_trans, align 8
  %266 = load i32, ptr %ldc_trans, align 4
  call void @bl1_zgemm_blas(i32 noundef %255, i32 noundef %256, i32 noundef %257, i32 noundef %258, i32 noundef %259, ptr noundef %260, ptr noundef %261, i32 noundef %262, ptr noundef %263, i32 noundef %264, ptr noundef %zero, ptr noundef %265, i32 noundef %266)
  %267 = load i32, ptr %m.addr, align 4
  %268 = load i32, ptr %n.addr, align 4
  %269 = load ptr, ptr %beta.addr, align 8
  %270 = load ptr, ptr %c.addr, align 8
  %271 = load i32, ptr %incc, align 4
  %272 = load i32, ptr %ldc, align 4
  call void @bl1_zscalm(i32 noundef 500, i32 noundef %267, i32 noundef %268, ptr noundef %269, ptr noundef %270, i32 noundef %271, i32 noundef %272)
  %273 = load i32, ptr %m.addr, align 4
  %274 = load i32, ptr %n.addr, align 4
  %275 = load ptr, ptr %c_trans, align 8
  %276 = load i32, ptr %incc_trans, align 4
  %277 = load i32, ptr %ldc_trans, align 4
  %278 = load ptr, ptr %c.addr, align 8
  %279 = load i32, ptr %incc, align 4
  %280 = load i32, ptr %ldc, align 4
  call void @bl1_zaxpymt(i32 noundef 101, i32 noundef %273, i32 noundef %274, ptr noundef %one, ptr noundef %275, i32 noundef %276, i32 noundef %277, ptr noundef %278, i32 noundef %279, i32 noundef %280)
  %281 = load ptr, ptr %c_trans, align 8
  call void @bl1_zfree(ptr noundef %281)
  br label %if.end169

if.else168:                                       ; preds = %if.end164
  %282 = load i32, ptr %transa.addr, align 4
  %283 = load i32, ptr %transb.addr, align 4
  %284 = load i32, ptr %m_gemm, align 4
  %285 = load i32, ptr %n_gemm, align 4
  %286 = load i32, ptr %k.addr, align 4
  %287 = load ptr, ptr %alpha.addr, align 8
  %288 = load ptr, ptr %a_conj, align 8
  %289 = load i32, ptr %lda_conj, align 4
  %290 = load ptr, ptr %b_conj, align 8
  %291 = load i32, ptr %ldb_conj, align 4
  %292 = load ptr, ptr %beta.addr, align 8
  %293 = load ptr, ptr %c.addr, align 8
  %294 = load i32, ptr %ldc, align 4
  call void @bl1_zgemm_blas(i32 noundef %282, i32 noundef %283, i32 noundef %284, i32 noundef %285, i32 noundef %286, ptr noundef %287, ptr noundef %288, i32 noundef %289, ptr noundef %290, i32 noundef %291, ptr noundef %292, ptr noundef %293, i32 noundef %294)
  br label %if.end169

if.end169:                                        ; preds = %if.else168, %if.then166
  %295 = load i32, ptr %transa.addr, align 4
  %call170 = call i32 @bl1_is_conjnotrans(i32 noundef %295)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %land.lhs.true172, label %if.end175

land.lhs.true172:                                 ; preds = %if.end169
  %296 = load i32, ptr %a_was_copied, align 4
  %tobool173 = icmp ne i32 %296, 0
  br i1 %tobool173, label %if.end175, label %if.then174

if.then174:                                       ; preds = %land.lhs.true172
  %297 = load ptr, ptr %a_conj, align 8
  call void @bl1_zfree(ptr noundef %297)
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %land.lhs.true172, %if.end169
  %298 = load i32, ptr %transb.addr, align 4
  %call176 = call i32 @bl1_is_conjnotrans(i32 noundef %298)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %land.lhs.true178, label %if.end181

land.lhs.true178:                                 ; preds = %if.end175
  %299 = load i32, ptr %b_was_copied, align 4
  %tobool179 = icmp ne i32 %299, 0
  br i1 %tobool179, label %if.end181, label %if.then180

if.then180:                                       ; preds = %land.lhs.true178
  %300 = load ptr, ptr %b_conj, align 8
  call void @bl1_zfree(ptr noundef %300)
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %land.lhs.true178, %if.end175
  %301 = load ptr, ptr %a_save, align 8
  %302 = load i32, ptr %a_rs_save, align 4
  %303 = load i32, ptr %a_cs_save, align 4
  call void @bl1_zfree_contigm(ptr noundef %301, i32 noundef %302, i32 noundef %303, ptr noundef %a_unswap, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %304 = load ptr, ptr %b_save, align 8
  %305 = load i32, ptr %b_rs_save, align 4
  %306 = load i32, ptr %b_cs_save, align 4
  call void @bl1_zfree_contigm(ptr noundef %304, i32 noundef %305, i32 noundef %306, ptr noundef %b_unswap, ptr noundef %b_rs.addr, ptr noundef %b_cs.addr)
  %307 = load i32, ptr %m_save, align 4
  %308 = load i32, ptr %n_save, align 4
  %309 = load ptr, ptr %c_save, align 8
  %310 = load i32, ptr %c_rs_save, align 4
  %311 = load i32, ptr %c_cs_save, align 4
  call void @bl1_zfree_saved_contigm(i32 noundef %307, i32 noundef %308, ptr noundef %309, i32 noundef %310, i32 noundef %311, ptr noundef %c.addr, ptr noundef %c_rs.addr, ptr noundef %c_cs.addr)
  br label %return

return:                                           ; preds = %if.end181, %if.then
  ret void
}

declare { double, double } @bl1_z0() #1

declare { double, double } @bl1_z1() #1

declare void @bl1_zscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zcreate_contigmt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_zcreate_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @bl1_zallocm(i32 noundef, i32 noundef) #1

declare void @bl1_zcopymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zconjm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_zgemm_blas(i32 noundef %transa, i32 noundef %transb, i32 noundef %m, i32 noundef %n, i32 noundef %k, ptr noundef %alpha, ptr noundef %a, i32 noundef %lda, ptr noundef %b, i32 noundef %ldb, ptr noundef %beta, ptr noundef %c, i32 noundef %ldc) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %blas_transa = alloca i8, align 1
  %blas_transb = alloca i8, align 1
  store i32 %transa, ptr %transa.addr, align 4
  store i32 %transb, ptr %transb.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %ldb, ptr %ldb.addr, align 4
  store ptr %beta, ptr %beta.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store i32 %ldc, ptr %ldc.addr, align 4
  %0 = load i32, ptr %transa.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %0, ptr noundef %blas_transa)
  %1 = load i32, ptr %transb.addr, align 4
  call void @bl1_param_map_to_netlib_trans(i32 noundef %1, ptr noundef %blas_transb)
  %2 = load ptr, ptr %alpha.addr, align 8
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %beta.addr, align 8
  %6 = load ptr, ptr %c.addr, align 8
  call void @zgemm_(ptr noundef %blas_transa, ptr noundef %blas_transb, ptr noundef %m.addr, ptr noundef %n.addr, ptr noundef %k.addr, ptr noundef %2, ptr noundef %3, ptr noundef %lda.addr, ptr noundef %4, ptr noundef %ldb.addr, ptr noundef %5, ptr noundef %6, ptr noundef %ldc.addr)
  ret void
}

declare void @bl1_zaxpymt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zfree(ptr noundef) #1

declare void @bl1_zfree_contigm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_zfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_param_map_to_netlib_trans(i32 noundef, ptr noundef) #1

declare void @sgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @cgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @zgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
