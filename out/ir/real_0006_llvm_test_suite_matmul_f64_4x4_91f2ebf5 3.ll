; ModuleID = 'SingleSource/Benchmarks/Misc/matmul_f64_4x4.c'
source_filename = "SingleSource/Benchmarks/Misc/matmul_f64_4x4.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@__const.main.A = private unnamed_addr constant [4 x [4 x double]] [[4 x double] [double 4.500000e+00, double 1.300000e+00, double 6.000000e+00, double 4.100000e+00], [4 x double] [double 2.500000e+00, double 7.200000e+00, double 7.700000e+00, double 1.700000e+00], [4 x double] [double 6.700000e+00, double 1.300000e+00, double 9.400000e+00, double 1.300000e+00], [4 x double] [double 1.100000e+00, double 2.200000e+00, double 3.000000e+00, double 2.100000e+00]], align 8
@__const.main.B = private unnamed_addr constant [4 x [4 x double]] [[4 x double] [double 1.000000e+00, double 7.900000e+00, double 5.100000e+00, double 3.400000e+00], [4 x double] [double 6.600000e+00, double 2.800000e+00, double 5.400000e+00, double 0x4022666666666666], [4 x double] [double 5.000000e+00, double 4.100000e+00, double 4.100000e+00, double 9.900000e+00], [4 x double] [double 8.400000e+00, double 3.700000e+00, double 9.500000e+00, double 6.400000e+00]], align 8
@.str = private unnamed_addr constant [6 x i8] c"%8.2f\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @wrap_mul4(ptr noundef %Out, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %Out.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  store ptr %Out, ptr %Out.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  %0 = load ptr, ptr %Out.addr, align 8
  %1 = load ptr, ptr %A.addr, align 8
  %2 = load ptr, ptr %B.addr, align 8
  call void @mul4(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @mul4(ptr noundef %Out, ptr noundef %A, ptr noundef %B) #0 {
entry:
  %Out.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %Res = alloca [16 x double], align 8
  store ptr %Out, ptr %Out.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  %0 = load ptr, ptr %A.addr, align 8
  %arrayidx = getelementptr inbounds [4 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8
  %2 = load ptr, ptr %B.addr, align 8
  %arrayidx2 = getelementptr inbounds [4 x double], ptr %2, i64 0
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %arrayidx2, i64 0, i64 0
  %3 = load double, ptr %arrayidx3, align 8
  %4 = load ptr, ptr %A.addr, align 8
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %4, i64 0
  %arrayidx5 = getelementptr inbounds [4 x double], ptr %arrayidx4, i64 0, i64 1
  %5 = load double, ptr %arrayidx5, align 8
  %6 = load ptr, ptr %B.addr, align 8
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %6, i64 1
  %arrayidx7 = getelementptr inbounds [4 x double], ptr %arrayidx6, i64 0, i64 0
  %7 = load double, ptr %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %8 = call double @llvm.fmuladd.f64(double %1, double %3, double %mul8)
  %9 = load ptr, ptr %A.addr, align 8
  %arrayidx9 = getelementptr inbounds [4 x double], ptr %9, i64 0
  %arrayidx10 = getelementptr inbounds [4 x double], ptr %arrayidx9, i64 0, i64 2
  %10 = load double, ptr %arrayidx10, align 8
  %11 = load ptr, ptr %B.addr, align 8
  %arrayidx11 = getelementptr inbounds [4 x double], ptr %11, i64 2
  %arrayidx12 = getelementptr inbounds [4 x double], ptr %arrayidx11, i64 0, i64 0
  %12 = load double, ptr %arrayidx12, align 8
  %13 = call double @llvm.fmuladd.f64(double %10, double %12, double %8)
  %14 = load ptr, ptr %A.addr, align 8
  %arrayidx13 = getelementptr inbounds [4 x double], ptr %14, i64 0
  %arrayidx14 = getelementptr inbounds [4 x double], ptr %arrayidx13, i64 0, i64 3
  %15 = load double, ptr %arrayidx14, align 8
  %16 = load ptr, ptr %B.addr, align 8
  %arrayidx15 = getelementptr inbounds [4 x double], ptr %16, i64 3
  %arrayidx16 = getelementptr inbounds [4 x double], ptr %arrayidx15, i64 0, i64 0
  %17 = load double, ptr %arrayidx16, align 8
  %18 = call double @llvm.fmuladd.f64(double %15, double %17, double %13)
  %arrayidx17 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 0
  store double %18, ptr %arrayidx17, align 8
  %19 = load ptr, ptr %A.addr, align 8
  %arrayidx18 = getelementptr inbounds [4 x double], ptr %19, i64 0
  %arrayidx19 = getelementptr inbounds [4 x double], ptr %arrayidx18, i64 0, i64 0
  %20 = load double, ptr %arrayidx19, align 8
  %21 = load ptr, ptr %B.addr, align 8
  %arrayidx20 = getelementptr inbounds [4 x double], ptr %21, i64 0
  %arrayidx21 = getelementptr inbounds [4 x double], ptr %arrayidx20, i64 0, i64 1
  %22 = load double, ptr %arrayidx21, align 8
  %23 = load ptr, ptr %A.addr, align 8
  %arrayidx22 = getelementptr inbounds [4 x double], ptr %23, i64 0
  %arrayidx23 = getelementptr inbounds [4 x double], ptr %arrayidx22, i64 0, i64 1
  %24 = load double, ptr %arrayidx23, align 8
  %25 = load ptr, ptr %B.addr, align 8
  %arrayidx24 = getelementptr inbounds [4 x double], ptr %25, i64 1
  %arrayidx25 = getelementptr inbounds [4 x double], ptr %arrayidx24, i64 0, i64 1
  %26 = load double, ptr %arrayidx25, align 8
  %mul26 = fmul double %24, %26
  %27 = call double @llvm.fmuladd.f64(double %20, double %22, double %mul26)
  %28 = load ptr, ptr %A.addr, align 8
  %arrayidx27 = getelementptr inbounds [4 x double], ptr %28, i64 0
  %arrayidx28 = getelementptr inbounds [4 x double], ptr %arrayidx27, i64 0, i64 2
  %29 = load double, ptr %arrayidx28, align 8
  %30 = load ptr, ptr %B.addr, align 8
  %arrayidx29 = getelementptr inbounds [4 x double], ptr %30, i64 2
  %arrayidx30 = getelementptr inbounds [4 x double], ptr %arrayidx29, i64 0, i64 1
  %31 = load double, ptr %arrayidx30, align 8
  %32 = call double @llvm.fmuladd.f64(double %29, double %31, double %27)
  %33 = load ptr, ptr %A.addr, align 8
  %arrayidx31 = getelementptr inbounds [4 x double], ptr %33, i64 0
  %arrayidx32 = getelementptr inbounds [4 x double], ptr %arrayidx31, i64 0, i64 3
  %34 = load double, ptr %arrayidx32, align 8
  %35 = load ptr, ptr %B.addr, align 8
  %arrayidx33 = getelementptr inbounds [4 x double], ptr %35, i64 3
  %arrayidx34 = getelementptr inbounds [4 x double], ptr %arrayidx33, i64 0, i64 1
  %36 = load double, ptr %arrayidx34, align 8
  %37 = call double @llvm.fmuladd.f64(double %34, double %36, double %32)
  %arrayidx35 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 1
  store double %37, ptr %arrayidx35, align 8
  %38 = load ptr, ptr %A.addr, align 8
  %arrayidx36 = getelementptr inbounds [4 x double], ptr %38, i64 0
  %arrayidx37 = getelementptr inbounds [4 x double], ptr %arrayidx36, i64 0, i64 0
  %39 = load double, ptr %arrayidx37, align 8
  %40 = load ptr, ptr %B.addr, align 8
  %arrayidx38 = getelementptr inbounds [4 x double], ptr %40, i64 0
  %arrayidx39 = getelementptr inbounds [4 x double], ptr %arrayidx38, i64 0, i64 2
  %41 = load double, ptr %arrayidx39, align 8
  %42 = load ptr, ptr %A.addr, align 8
  %arrayidx40 = getelementptr inbounds [4 x double], ptr %42, i64 0
  %arrayidx41 = getelementptr inbounds [4 x double], ptr %arrayidx40, i64 0, i64 1
  %43 = load double, ptr %arrayidx41, align 8
  %44 = load ptr, ptr %B.addr, align 8
  %arrayidx42 = getelementptr inbounds [4 x double], ptr %44, i64 1
  %arrayidx43 = getelementptr inbounds [4 x double], ptr %arrayidx42, i64 0, i64 2
  %45 = load double, ptr %arrayidx43, align 8
  %mul44 = fmul double %43, %45
  %46 = call double @llvm.fmuladd.f64(double %39, double %41, double %mul44)
  %47 = load ptr, ptr %A.addr, align 8
  %arrayidx45 = getelementptr inbounds [4 x double], ptr %47, i64 0
  %arrayidx46 = getelementptr inbounds [4 x double], ptr %arrayidx45, i64 0, i64 2
  %48 = load double, ptr %arrayidx46, align 8
  %49 = load ptr, ptr %B.addr, align 8
  %arrayidx47 = getelementptr inbounds [4 x double], ptr %49, i64 2
  %arrayidx48 = getelementptr inbounds [4 x double], ptr %arrayidx47, i64 0, i64 2
  %50 = load double, ptr %arrayidx48, align 8
  %51 = call double @llvm.fmuladd.f64(double %48, double %50, double %46)
  %52 = load ptr, ptr %A.addr, align 8
  %arrayidx49 = getelementptr inbounds [4 x double], ptr %52, i64 0
  %arrayidx50 = getelementptr inbounds [4 x double], ptr %arrayidx49, i64 0, i64 3
  %53 = load double, ptr %arrayidx50, align 8
  %54 = load ptr, ptr %B.addr, align 8
  %arrayidx51 = getelementptr inbounds [4 x double], ptr %54, i64 3
  %arrayidx52 = getelementptr inbounds [4 x double], ptr %arrayidx51, i64 0, i64 2
  %55 = load double, ptr %arrayidx52, align 8
  %56 = call double @llvm.fmuladd.f64(double %53, double %55, double %51)
  %arrayidx53 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 2
  store double %56, ptr %arrayidx53, align 8
  %57 = load ptr, ptr %A.addr, align 8
  %arrayidx54 = getelementptr inbounds [4 x double], ptr %57, i64 0
  %arrayidx55 = getelementptr inbounds [4 x double], ptr %arrayidx54, i64 0, i64 0
  %58 = load double, ptr %arrayidx55, align 8
  %59 = load ptr, ptr %B.addr, align 8
  %arrayidx56 = getelementptr inbounds [4 x double], ptr %59, i64 0
  %arrayidx57 = getelementptr inbounds [4 x double], ptr %arrayidx56, i64 0, i64 3
  %60 = load double, ptr %arrayidx57, align 8
  %61 = load ptr, ptr %A.addr, align 8
  %arrayidx58 = getelementptr inbounds [4 x double], ptr %61, i64 0
  %arrayidx59 = getelementptr inbounds [4 x double], ptr %arrayidx58, i64 0, i64 1
  %62 = load double, ptr %arrayidx59, align 8
  %63 = load ptr, ptr %B.addr, align 8
  %arrayidx60 = getelementptr inbounds [4 x double], ptr %63, i64 1
  %arrayidx61 = getelementptr inbounds [4 x double], ptr %arrayidx60, i64 0, i64 3
  %64 = load double, ptr %arrayidx61, align 8
  %mul62 = fmul double %62, %64
  %65 = call double @llvm.fmuladd.f64(double %58, double %60, double %mul62)
  %66 = load ptr, ptr %A.addr, align 8
  %arrayidx63 = getelementptr inbounds [4 x double], ptr %66, i64 0
  %arrayidx64 = getelementptr inbounds [4 x double], ptr %arrayidx63, i64 0, i64 2
  %67 = load double, ptr %arrayidx64, align 8
  %68 = load ptr, ptr %B.addr, align 8
  %arrayidx65 = getelementptr inbounds [4 x double], ptr %68, i64 2
  %arrayidx66 = getelementptr inbounds [4 x double], ptr %arrayidx65, i64 0, i64 3
  %69 = load double, ptr %arrayidx66, align 8
  %70 = call double @llvm.fmuladd.f64(double %67, double %69, double %65)
  %71 = load ptr, ptr %A.addr, align 8
  %arrayidx67 = getelementptr inbounds [4 x double], ptr %71, i64 0
  %arrayidx68 = getelementptr inbounds [4 x double], ptr %arrayidx67, i64 0, i64 3
  %72 = load double, ptr %arrayidx68, align 8
  %73 = load ptr, ptr %B.addr, align 8
  %arrayidx69 = getelementptr inbounds [4 x double], ptr %73, i64 3
  %arrayidx70 = getelementptr inbounds [4 x double], ptr %arrayidx69, i64 0, i64 3
  %74 = load double, ptr %arrayidx70, align 8
  %75 = call double @llvm.fmuladd.f64(double %72, double %74, double %70)
  %arrayidx71 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 3
  store double %75, ptr %arrayidx71, align 8
  %76 = load ptr, ptr %A.addr, align 8
  %arrayidx72 = getelementptr inbounds [4 x double], ptr %76, i64 1
  %arrayidx73 = getelementptr inbounds [4 x double], ptr %arrayidx72, i64 0, i64 0
  %77 = load double, ptr %arrayidx73, align 8
  %78 = load ptr, ptr %B.addr, align 8
  %arrayidx74 = getelementptr inbounds [4 x double], ptr %78, i64 0
  %arrayidx75 = getelementptr inbounds [4 x double], ptr %arrayidx74, i64 0, i64 0
  %79 = load double, ptr %arrayidx75, align 8
  %80 = load ptr, ptr %A.addr, align 8
  %arrayidx76 = getelementptr inbounds [4 x double], ptr %80, i64 1
  %arrayidx77 = getelementptr inbounds [4 x double], ptr %arrayidx76, i64 0, i64 1
  %81 = load double, ptr %arrayidx77, align 8
  %82 = load ptr, ptr %B.addr, align 8
  %arrayidx78 = getelementptr inbounds [4 x double], ptr %82, i64 1
  %arrayidx79 = getelementptr inbounds [4 x double], ptr %arrayidx78, i64 0, i64 0
  %83 = load double, ptr %arrayidx79, align 8
  %mul80 = fmul double %81, %83
  %84 = call double @llvm.fmuladd.f64(double %77, double %79, double %mul80)
  %85 = load ptr, ptr %A.addr, align 8
  %arrayidx81 = getelementptr inbounds [4 x double], ptr %85, i64 1
  %arrayidx82 = getelementptr inbounds [4 x double], ptr %arrayidx81, i64 0, i64 2
  %86 = load double, ptr %arrayidx82, align 8
  %87 = load ptr, ptr %B.addr, align 8
  %arrayidx83 = getelementptr inbounds [4 x double], ptr %87, i64 2
  %arrayidx84 = getelementptr inbounds [4 x double], ptr %arrayidx83, i64 0, i64 0
  %88 = load double, ptr %arrayidx84, align 8
  %89 = call double @llvm.fmuladd.f64(double %86, double %88, double %84)
  %90 = load ptr, ptr %A.addr, align 8
  %arrayidx85 = getelementptr inbounds [4 x double], ptr %90, i64 1
  %arrayidx86 = getelementptr inbounds [4 x double], ptr %arrayidx85, i64 0, i64 3
  %91 = load double, ptr %arrayidx86, align 8
  %92 = load ptr, ptr %B.addr, align 8
  %arrayidx87 = getelementptr inbounds [4 x double], ptr %92, i64 3
  %arrayidx88 = getelementptr inbounds [4 x double], ptr %arrayidx87, i64 0, i64 0
  %93 = load double, ptr %arrayidx88, align 8
  %94 = call double @llvm.fmuladd.f64(double %91, double %93, double %89)
  %arrayidx89 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 4
  store double %94, ptr %arrayidx89, align 8
  %95 = load ptr, ptr %A.addr, align 8
  %arrayidx90 = getelementptr inbounds [4 x double], ptr %95, i64 1
  %arrayidx91 = getelementptr inbounds [4 x double], ptr %arrayidx90, i64 0, i64 0
  %96 = load double, ptr %arrayidx91, align 8
  %97 = load ptr, ptr %B.addr, align 8
  %arrayidx92 = getelementptr inbounds [4 x double], ptr %97, i64 0
  %arrayidx93 = getelementptr inbounds [4 x double], ptr %arrayidx92, i64 0, i64 1
  %98 = load double, ptr %arrayidx93, align 8
  %99 = load ptr, ptr %A.addr, align 8
  %arrayidx94 = getelementptr inbounds [4 x double], ptr %99, i64 1
  %arrayidx95 = getelementptr inbounds [4 x double], ptr %arrayidx94, i64 0, i64 1
  %100 = load double, ptr %arrayidx95, align 8
  %101 = load ptr, ptr %B.addr, align 8
  %arrayidx96 = getelementptr inbounds [4 x double], ptr %101, i64 1
  %arrayidx97 = getelementptr inbounds [4 x double], ptr %arrayidx96, i64 0, i64 1
  %102 = load double, ptr %arrayidx97, align 8
  %mul98 = fmul double %100, %102
  %103 = call double @llvm.fmuladd.f64(double %96, double %98, double %mul98)
  %104 = load ptr, ptr %A.addr, align 8
  %arrayidx99 = getelementptr inbounds [4 x double], ptr %104, i64 1
  %arrayidx100 = getelementptr inbounds [4 x double], ptr %arrayidx99, i64 0, i64 2
  %105 = load double, ptr %arrayidx100, align 8
  %106 = load ptr, ptr %B.addr, align 8
  %arrayidx101 = getelementptr inbounds [4 x double], ptr %106, i64 2
  %arrayidx102 = getelementptr inbounds [4 x double], ptr %arrayidx101, i64 0, i64 1
  %107 = load double, ptr %arrayidx102, align 8
  %108 = call double @llvm.fmuladd.f64(double %105, double %107, double %103)
  %109 = load ptr, ptr %A.addr, align 8
  %arrayidx103 = getelementptr inbounds [4 x double], ptr %109, i64 1
  %arrayidx104 = getelementptr inbounds [4 x double], ptr %arrayidx103, i64 0, i64 3
  %110 = load double, ptr %arrayidx104, align 8
  %111 = load ptr, ptr %B.addr, align 8
  %arrayidx105 = getelementptr inbounds [4 x double], ptr %111, i64 3
  %arrayidx106 = getelementptr inbounds [4 x double], ptr %arrayidx105, i64 0, i64 1
  %112 = load double, ptr %arrayidx106, align 8
  %113 = call double @llvm.fmuladd.f64(double %110, double %112, double %108)
  %arrayidx107 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 5
  store double %113, ptr %arrayidx107, align 8
  %114 = load ptr, ptr %A.addr, align 8
  %arrayidx108 = getelementptr inbounds [4 x double], ptr %114, i64 1
  %arrayidx109 = getelementptr inbounds [4 x double], ptr %arrayidx108, i64 0, i64 0
  %115 = load double, ptr %arrayidx109, align 8
  %116 = load ptr, ptr %B.addr, align 8
  %arrayidx110 = getelementptr inbounds [4 x double], ptr %116, i64 0
  %arrayidx111 = getelementptr inbounds [4 x double], ptr %arrayidx110, i64 0, i64 2
  %117 = load double, ptr %arrayidx111, align 8
  %118 = load ptr, ptr %A.addr, align 8
  %arrayidx112 = getelementptr inbounds [4 x double], ptr %118, i64 1
  %arrayidx113 = getelementptr inbounds [4 x double], ptr %arrayidx112, i64 0, i64 1
  %119 = load double, ptr %arrayidx113, align 8
  %120 = load ptr, ptr %B.addr, align 8
  %arrayidx114 = getelementptr inbounds [4 x double], ptr %120, i64 1
  %arrayidx115 = getelementptr inbounds [4 x double], ptr %arrayidx114, i64 0, i64 2
  %121 = load double, ptr %arrayidx115, align 8
  %mul116 = fmul double %119, %121
  %122 = call double @llvm.fmuladd.f64(double %115, double %117, double %mul116)
  %123 = load ptr, ptr %A.addr, align 8
  %arrayidx117 = getelementptr inbounds [4 x double], ptr %123, i64 1
  %arrayidx118 = getelementptr inbounds [4 x double], ptr %arrayidx117, i64 0, i64 2
  %124 = load double, ptr %arrayidx118, align 8
  %125 = load ptr, ptr %B.addr, align 8
  %arrayidx119 = getelementptr inbounds [4 x double], ptr %125, i64 2
  %arrayidx120 = getelementptr inbounds [4 x double], ptr %arrayidx119, i64 0, i64 2
  %126 = load double, ptr %arrayidx120, align 8
  %127 = call double @llvm.fmuladd.f64(double %124, double %126, double %122)
  %128 = load ptr, ptr %A.addr, align 8
  %arrayidx121 = getelementptr inbounds [4 x double], ptr %128, i64 1
  %arrayidx122 = getelementptr inbounds [4 x double], ptr %arrayidx121, i64 0, i64 3
  %129 = load double, ptr %arrayidx122, align 8
  %130 = load ptr, ptr %B.addr, align 8
  %arrayidx123 = getelementptr inbounds [4 x double], ptr %130, i64 3
  %arrayidx124 = getelementptr inbounds [4 x double], ptr %arrayidx123, i64 0, i64 2
  %131 = load double, ptr %arrayidx124, align 8
  %132 = call double @llvm.fmuladd.f64(double %129, double %131, double %127)
  %arrayidx125 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 6
  store double %132, ptr %arrayidx125, align 8
  %133 = load ptr, ptr %A.addr, align 8
  %arrayidx126 = getelementptr inbounds [4 x double], ptr %133, i64 1
  %arrayidx127 = getelementptr inbounds [4 x double], ptr %arrayidx126, i64 0, i64 0
  %134 = load double, ptr %arrayidx127, align 8
  %135 = load ptr, ptr %B.addr, align 8
  %arrayidx128 = getelementptr inbounds [4 x double], ptr %135, i64 0
  %arrayidx129 = getelementptr inbounds [4 x double], ptr %arrayidx128, i64 0, i64 3
  %136 = load double, ptr %arrayidx129, align 8
  %137 = load ptr, ptr %A.addr, align 8
  %arrayidx130 = getelementptr inbounds [4 x double], ptr %137, i64 1
  %arrayidx131 = getelementptr inbounds [4 x double], ptr %arrayidx130, i64 0, i64 1
  %138 = load double, ptr %arrayidx131, align 8
  %139 = load ptr, ptr %B.addr, align 8
  %arrayidx132 = getelementptr inbounds [4 x double], ptr %139, i64 1
  %arrayidx133 = getelementptr inbounds [4 x double], ptr %arrayidx132, i64 0, i64 3
  %140 = load double, ptr %arrayidx133, align 8
  %mul134 = fmul double %138, %140
  %141 = call double @llvm.fmuladd.f64(double %134, double %136, double %mul134)
  %142 = load ptr, ptr %A.addr, align 8
  %arrayidx135 = getelementptr inbounds [4 x double], ptr %142, i64 1
  %arrayidx136 = getelementptr inbounds [4 x double], ptr %arrayidx135, i64 0, i64 2
  %143 = load double, ptr %arrayidx136, align 8
  %144 = load ptr, ptr %B.addr, align 8
  %arrayidx137 = getelementptr inbounds [4 x double], ptr %144, i64 2
  %arrayidx138 = getelementptr inbounds [4 x double], ptr %arrayidx137, i64 0, i64 3
  %145 = load double, ptr %arrayidx138, align 8
  %146 = call double @llvm.fmuladd.f64(double %143, double %145, double %141)
  %147 = load ptr, ptr %A.addr, align 8
  %arrayidx139 = getelementptr inbounds [4 x double], ptr %147, i64 1
  %arrayidx140 = getelementptr inbounds [4 x double], ptr %arrayidx139, i64 0, i64 3
  %148 = load double, ptr %arrayidx140, align 8
  %149 = load ptr, ptr %B.addr, align 8
  %arrayidx141 = getelementptr inbounds [4 x double], ptr %149, i64 3
  %arrayidx142 = getelementptr inbounds [4 x double], ptr %arrayidx141, i64 0, i64 3
  %150 = load double, ptr %arrayidx142, align 8
  %151 = call double @llvm.fmuladd.f64(double %148, double %150, double %146)
  %arrayidx143 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 7
  store double %151, ptr %arrayidx143, align 8
  %152 = load ptr, ptr %A.addr, align 8
  %arrayidx144 = getelementptr inbounds [4 x double], ptr %152, i64 2
  %arrayidx145 = getelementptr inbounds [4 x double], ptr %arrayidx144, i64 0, i64 0
  %153 = load double, ptr %arrayidx145, align 8
  %154 = load ptr, ptr %B.addr, align 8
  %arrayidx146 = getelementptr inbounds [4 x double], ptr %154, i64 0
  %arrayidx147 = getelementptr inbounds [4 x double], ptr %arrayidx146, i64 0, i64 0
  %155 = load double, ptr %arrayidx147, align 8
  %156 = load ptr, ptr %A.addr, align 8
  %arrayidx148 = getelementptr inbounds [4 x double], ptr %156, i64 2
  %arrayidx149 = getelementptr inbounds [4 x double], ptr %arrayidx148, i64 0, i64 1
  %157 = load double, ptr %arrayidx149, align 8
  %158 = load ptr, ptr %B.addr, align 8
  %arrayidx150 = getelementptr inbounds [4 x double], ptr %158, i64 1
  %arrayidx151 = getelementptr inbounds [4 x double], ptr %arrayidx150, i64 0, i64 0
  %159 = load double, ptr %arrayidx151, align 8
  %mul152 = fmul double %157, %159
  %160 = call double @llvm.fmuladd.f64(double %153, double %155, double %mul152)
  %161 = load ptr, ptr %A.addr, align 8
  %arrayidx153 = getelementptr inbounds [4 x double], ptr %161, i64 2
  %arrayidx154 = getelementptr inbounds [4 x double], ptr %arrayidx153, i64 0, i64 2
  %162 = load double, ptr %arrayidx154, align 8
  %163 = load ptr, ptr %B.addr, align 8
  %arrayidx155 = getelementptr inbounds [4 x double], ptr %163, i64 2
  %arrayidx156 = getelementptr inbounds [4 x double], ptr %arrayidx155, i64 0, i64 0
  %164 = load double, ptr %arrayidx156, align 8
  %165 = call double @llvm.fmuladd.f64(double %162, double %164, double %160)
  %166 = load ptr, ptr %A.addr, align 8
  %arrayidx157 = getelementptr inbounds [4 x double], ptr %166, i64 2
  %arrayidx158 = getelementptr inbounds [4 x double], ptr %arrayidx157, i64 0, i64 3
  %167 = load double, ptr %arrayidx158, align 8
  %168 = load ptr, ptr %B.addr, align 8
  %arrayidx159 = getelementptr inbounds [4 x double], ptr %168, i64 3
  %arrayidx160 = getelementptr inbounds [4 x double], ptr %arrayidx159, i64 0, i64 0
  %169 = load double, ptr %arrayidx160, align 8
  %170 = call double @llvm.fmuladd.f64(double %167, double %169, double %165)
  %arrayidx161 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 8
  store double %170, ptr %arrayidx161, align 8
  %171 = load ptr, ptr %A.addr, align 8
  %arrayidx162 = getelementptr inbounds [4 x double], ptr %171, i64 2
  %arrayidx163 = getelementptr inbounds [4 x double], ptr %arrayidx162, i64 0, i64 0
  %172 = load double, ptr %arrayidx163, align 8
  %173 = load ptr, ptr %B.addr, align 8
  %arrayidx164 = getelementptr inbounds [4 x double], ptr %173, i64 0
  %arrayidx165 = getelementptr inbounds [4 x double], ptr %arrayidx164, i64 0, i64 1
  %174 = load double, ptr %arrayidx165, align 8
  %175 = load ptr, ptr %A.addr, align 8
  %arrayidx166 = getelementptr inbounds [4 x double], ptr %175, i64 2
  %arrayidx167 = getelementptr inbounds [4 x double], ptr %arrayidx166, i64 0, i64 1
  %176 = load double, ptr %arrayidx167, align 8
  %177 = load ptr, ptr %B.addr, align 8
  %arrayidx168 = getelementptr inbounds [4 x double], ptr %177, i64 1
  %arrayidx169 = getelementptr inbounds [4 x double], ptr %arrayidx168, i64 0, i64 1
  %178 = load double, ptr %arrayidx169, align 8
  %mul170 = fmul double %176, %178
  %179 = call double @llvm.fmuladd.f64(double %172, double %174, double %mul170)
  %180 = load ptr, ptr %A.addr, align 8
  %arrayidx171 = getelementptr inbounds [4 x double], ptr %180, i64 2
  %arrayidx172 = getelementptr inbounds [4 x double], ptr %arrayidx171, i64 0, i64 2
  %181 = load double, ptr %arrayidx172, align 8
  %182 = load ptr, ptr %B.addr, align 8
  %arrayidx173 = getelementptr inbounds [4 x double], ptr %182, i64 2
  %arrayidx174 = getelementptr inbounds [4 x double], ptr %arrayidx173, i64 0, i64 1
  %183 = load double, ptr %arrayidx174, align 8
  %184 = call double @llvm.fmuladd.f64(double %181, double %183, double %179)
  %185 = load ptr, ptr %A.addr, align 8
  %arrayidx175 = getelementptr inbounds [4 x double], ptr %185, i64 2
  %arrayidx176 = getelementptr inbounds [4 x double], ptr %arrayidx175, i64 0, i64 3
  %186 = load double, ptr %arrayidx176, align 8
  %187 = load ptr, ptr %B.addr, align 8
  %arrayidx177 = getelementptr inbounds [4 x double], ptr %187, i64 3
  %arrayidx178 = getelementptr inbounds [4 x double], ptr %arrayidx177, i64 0, i64 1
  %188 = load double, ptr %arrayidx178, align 8
  %189 = call double @llvm.fmuladd.f64(double %186, double %188, double %184)
  %arrayidx179 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 9
  store double %189, ptr %arrayidx179, align 8
  %190 = load ptr, ptr %A.addr, align 8
  %arrayidx180 = getelementptr inbounds [4 x double], ptr %190, i64 2
  %arrayidx181 = getelementptr inbounds [4 x double], ptr %arrayidx180, i64 0, i64 0
  %191 = load double, ptr %arrayidx181, align 8
  %192 = load ptr, ptr %B.addr, align 8
  %arrayidx182 = getelementptr inbounds [4 x double], ptr %192, i64 0
  %arrayidx183 = getelementptr inbounds [4 x double], ptr %arrayidx182, i64 0, i64 2
  %193 = load double, ptr %arrayidx183, align 8
  %194 = load ptr, ptr %A.addr, align 8
  %arrayidx184 = getelementptr inbounds [4 x double], ptr %194, i64 2
  %arrayidx185 = getelementptr inbounds [4 x double], ptr %arrayidx184, i64 0, i64 1
  %195 = load double, ptr %arrayidx185, align 8
  %196 = load ptr, ptr %B.addr, align 8
  %arrayidx186 = getelementptr inbounds [4 x double], ptr %196, i64 1
  %arrayidx187 = getelementptr inbounds [4 x double], ptr %arrayidx186, i64 0, i64 2
  %197 = load double, ptr %arrayidx187, align 8
  %mul188 = fmul double %195, %197
  %198 = call double @llvm.fmuladd.f64(double %191, double %193, double %mul188)
  %199 = load ptr, ptr %A.addr, align 8
  %arrayidx189 = getelementptr inbounds [4 x double], ptr %199, i64 2
  %arrayidx190 = getelementptr inbounds [4 x double], ptr %arrayidx189, i64 0, i64 2
  %200 = load double, ptr %arrayidx190, align 8
  %201 = load ptr, ptr %B.addr, align 8
  %arrayidx191 = getelementptr inbounds [4 x double], ptr %201, i64 2
  %arrayidx192 = getelementptr inbounds [4 x double], ptr %arrayidx191, i64 0, i64 2
  %202 = load double, ptr %arrayidx192, align 8
  %203 = call double @llvm.fmuladd.f64(double %200, double %202, double %198)
  %204 = load ptr, ptr %A.addr, align 8
  %arrayidx193 = getelementptr inbounds [4 x double], ptr %204, i64 2
  %arrayidx194 = getelementptr inbounds [4 x double], ptr %arrayidx193, i64 0, i64 3
  %205 = load double, ptr %arrayidx194, align 8
  %206 = load ptr, ptr %B.addr, align 8
  %arrayidx195 = getelementptr inbounds [4 x double], ptr %206, i64 3
  %arrayidx196 = getelementptr inbounds [4 x double], ptr %arrayidx195, i64 0, i64 2
  %207 = load double, ptr %arrayidx196, align 8
  %208 = call double @llvm.fmuladd.f64(double %205, double %207, double %203)
  %arrayidx197 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 10
  store double %208, ptr %arrayidx197, align 8
  %209 = load ptr, ptr %A.addr, align 8
  %arrayidx198 = getelementptr inbounds [4 x double], ptr %209, i64 2
  %arrayidx199 = getelementptr inbounds [4 x double], ptr %arrayidx198, i64 0, i64 0
  %210 = load double, ptr %arrayidx199, align 8
  %211 = load ptr, ptr %B.addr, align 8
  %arrayidx200 = getelementptr inbounds [4 x double], ptr %211, i64 0
  %arrayidx201 = getelementptr inbounds [4 x double], ptr %arrayidx200, i64 0, i64 3
  %212 = load double, ptr %arrayidx201, align 8
  %213 = load ptr, ptr %A.addr, align 8
  %arrayidx202 = getelementptr inbounds [4 x double], ptr %213, i64 2
  %arrayidx203 = getelementptr inbounds [4 x double], ptr %arrayidx202, i64 0, i64 1
  %214 = load double, ptr %arrayidx203, align 8
  %215 = load ptr, ptr %B.addr, align 8
  %arrayidx204 = getelementptr inbounds [4 x double], ptr %215, i64 1
  %arrayidx205 = getelementptr inbounds [4 x double], ptr %arrayidx204, i64 0, i64 3
  %216 = load double, ptr %arrayidx205, align 8
  %mul206 = fmul double %214, %216
  %217 = call double @llvm.fmuladd.f64(double %210, double %212, double %mul206)
  %218 = load ptr, ptr %A.addr, align 8
  %arrayidx207 = getelementptr inbounds [4 x double], ptr %218, i64 2
  %arrayidx208 = getelementptr inbounds [4 x double], ptr %arrayidx207, i64 0, i64 2
  %219 = load double, ptr %arrayidx208, align 8
  %220 = load ptr, ptr %B.addr, align 8
  %arrayidx209 = getelementptr inbounds [4 x double], ptr %220, i64 2
  %arrayidx210 = getelementptr inbounds [4 x double], ptr %arrayidx209, i64 0, i64 3
  %221 = load double, ptr %arrayidx210, align 8
  %222 = call double @llvm.fmuladd.f64(double %219, double %221, double %217)
  %223 = load ptr, ptr %A.addr, align 8
  %arrayidx211 = getelementptr inbounds [4 x double], ptr %223, i64 2
  %arrayidx212 = getelementptr inbounds [4 x double], ptr %arrayidx211, i64 0, i64 3
  %224 = load double, ptr %arrayidx212, align 8
  %225 = load ptr, ptr %B.addr, align 8
  %arrayidx213 = getelementptr inbounds [4 x double], ptr %225, i64 3
  %arrayidx214 = getelementptr inbounds [4 x double], ptr %arrayidx213, i64 0, i64 3
  %226 = load double, ptr %arrayidx214, align 8
  %227 = call double @llvm.fmuladd.f64(double %224, double %226, double %222)
  %arrayidx215 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 11
  store double %227, ptr %arrayidx215, align 8
  %228 = load ptr, ptr %A.addr, align 8
  %arrayidx216 = getelementptr inbounds [4 x double], ptr %228, i64 3
  %arrayidx217 = getelementptr inbounds [4 x double], ptr %arrayidx216, i64 0, i64 0
  %229 = load double, ptr %arrayidx217, align 8
  %230 = load ptr, ptr %B.addr, align 8
  %arrayidx218 = getelementptr inbounds [4 x double], ptr %230, i64 0
  %arrayidx219 = getelementptr inbounds [4 x double], ptr %arrayidx218, i64 0, i64 0
  %231 = load double, ptr %arrayidx219, align 8
  %232 = load ptr, ptr %A.addr, align 8
  %arrayidx220 = getelementptr inbounds [4 x double], ptr %232, i64 3
  %arrayidx221 = getelementptr inbounds [4 x double], ptr %arrayidx220, i64 0, i64 1
  %233 = load double, ptr %arrayidx221, align 8
  %234 = load ptr, ptr %B.addr, align 8
  %arrayidx222 = getelementptr inbounds [4 x double], ptr %234, i64 1
  %arrayidx223 = getelementptr inbounds [4 x double], ptr %arrayidx222, i64 0, i64 0
  %235 = load double, ptr %arrayidx223, align 8
  %mul224 = fmul double %233, %235
  %236 = call double @llvm.fmuladd.f64(double %229, double %231, double %mul224)
  %237 = load ptr, ptr %A.addr, align 8
  %arrayidx225 = getelementptr inbounds [4 x double], ptr %237, i64 3
  %arrayidx226 = getelementptr inbounds [4 x double], ptr %arrayidx225, i64 0, i64 2
  %238 = load double, ptr %arrayidx226, align 8
  %239 = load ptr, ptr %B.addr, align 8
  %arrayidx227 = getelementptr inbounds [4 x double], ptr %239, i64 2
  %arrayidx228 = getelementptr inbounds [4 x double], ptr %arrayidx227, i64 0, i64 0
  %240 = load double, ptr %arrayidx228, align 8
  %241 = call double @llvm.fmuladd.f64(double %238, double %240, double %236)
  %242 = load ptr, ptr %A.addr, align 8
  %arrayidx229 = getelementptr inbounds [4 x double], ptr %242, i64 3
  %arrayidx230 = getelementptr inbounds [4 x double], ptr %arrayidx229, i64 0, i64 3
  %243 = load double, ptr %arrayidx230, align 8
  %244 = load ptr, ptr %B.addr, align 8
  %arrayidx231 = getelementptr inbounds [4 x double], ptr %244, i64 3
  %arrayidx232 = getelementptr inbounds [4 x double], ptr %arrayidx231, i64 0, i64 0
  %245 = load double, ptr %arrayidx232, align 8
  %246 = call double @llvm.fmuladd.f64(double %243, double %245, double %241)
  %arrayidx233 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 12
  store double %246, ptr %arrayidx233, align 8
  %247 = load ptr, ptr %A.addr, align 8
  %arrayidx234 = getelementptr inbounds [4 x double], ptr %247, i64 3
  %arrayidx235 = getelementptr inbounds [4 x double], ptr %arrayidx234, i64 0, i64 0
  %248 = load double, ptr %arrayidx235, align 8
  %249 = load ptr, ptr %B.addr, align 8
  %arrayidx236 = getelementptr inbounds [4 x double], ptr %249, i64 0
  %arrayidx237 = getelementptr inbounds [4 x double], ptr %arrayidx236, i64 0, i64 1
  %250 = load double, ptr %arrayidx237, align 8
  %251 = load ptr, ptr %A.addr, align 8
  %arrayidx238 = getelementptr inbounds [4 x double], ptr %251, i64 3
  %arrayidx239 = getelementptr inbounds [4 x double], ptr %arrayidx238, i64 0, i64 1
  %252 = load double, ptr %arrayidx239, align 8
  %253 = load ptr, ptr %B.addr, align 8
  %arrayidx240 = getelementptr inbounds [4 x double], ptr %253, i64 1
  %arrayidx241 = getelementptr inbounds [4 x double], ptr %arrayidx240, i64 0, i64 1
  %254 = load double, ptr %arrayidx241, align 8
  %mul242 = fmul double %252, %254
  %255 = call double @llvm.fmuladd.f64(double %248, double %250, double %mul242)
  %256 = load ptr, ptr %A.addr, align 8
  %arrayidx243 = getelementptr inbounds [4 x double], ptr %256, i64 3
  %arrayidx244 = getelementptr inbounds [4 x double], ptr %arrayidx243, i64 0, i64 2
  %257 = load double, ptr %arrayidx244, align 8
  %258 = load ptr, ptr %B.addr, align 8
  %arrayidx245 = getelementptr inbounds [4 x double], ptr %258, i64 2
  %arrayidx246 = getelementptr inbounds [4 x double], ptr %arrayidx245, i64 0, i64 1
  %259 = load double, ptr %arrayidx246, align 8
  %260 = call double @llvm.fmuladd.f64(double %257, double %259, double %255)
  %261 = load ptr, ptr %A.addr, align 8
  %arrayidx247 = getelementptr inbounds [4 x double], ptr %261, i64 3
  %arrayidx248 = getelementptr inbounds [4 x double], ptr %arrayidx247, i64 0, i64 3
  %262 = load double, ptr %arrayidx248, align 8
  %263 = load ptr, ptr %B.addr, align 8
  %arrayidx249 = getelementptr inbounds [4 x double], ptr %263, i64 3
  %arrayidx250 = getelementptr inbounds [4 x double], ptr %arrayidx249, i64 0, i64 1
  %264 = load double, ptr %arrayidx250, align 8
  %265 = call double @llvm.fmuladd.f64(double %262, double %264, double %260)
  %arrayidx251 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 13
  store double %265, ptr %arrayidx251, align 8
  %266 = load ptr, ptr %A.addr, align 8
  %arrayidx252 = getelementptr inbounds [4 x double], ptr %266, i64 3
  %arrayidx253 = getelementptr inbounds [4 x double], ptr %arrayidx252, i64 0, i64 0
  %267 = load double, ptr %arrayidx253, align 8
  %268 = load ptr, ptr %B.addr, align 8
  %arrayidx254 = getelementptr inbounds [4 x double], ptr %268, i64 0
  %arrayidx255 = getelementptr inbounds [4 x double], ptr %arrayidx254, i64 0, i64 2
  %269 = load double, ptr %arrayidx255, align 8
  %270 = load ptr, ptr %A.addr, align 8
  %arrayidx256 = getelementptr inbounds [4 x double], ptr %270, i64 3
  %arrayidx257 = getelementptr inbounds [4 x double], ptr %arrayidx256, i64 0, i64 1
  %271 = load double, ptr %arrayidx257, align 8
  %272 = load ptr, ptr %B.addr, align 8
  %arrayidx258 = getelementptr inbounds [4 x double], ptr %272, i64 1
  %arrayidx259 = getelementptr inbounds [4 x double], ptr %arrayidx258, i64 0, i64 2
  %273 = load double, ptr %arrayidx259, align 8
  %mul260 = fmul double %271, %273
  %274 = call double @llvm.fmuladd.f64(double %267, double %269, double %mul260)
  %275 = load ptr, ptr %A.addr, align 8
  %arrayidx261 = getelementptr inbounds [4 x double], ptr %275, i64 3
  %arrayidx262 = getelementptr inbounds [4 x double], ptr %arrayidx261, i64 0, i64 2
  %276 = load double, ptr %arrayidx262, align 8
  %277 = load ptr, ptr %B.addr, align 8
  %arrayidx263 = getelementptr inbounds [4 x double], ptr %277, i64 2
  %arrayidx264 = getelementptr inbounds [4 x double], ptr %arrayidx263, i64 0, i64 2
  %278 = load double, ptr %arrayidx264, align 8
  %279 = call double @llvm.fmuladd.f64(double %276, double %278, double %274)
  %280 = load ptr, ptr %A.addr, align 8
  %arrayidx265 = getelementptr inbounds [4 x double], ptr %280, i64 3
  %arrayidx266 = getelementptr inbounds [4 x double], ptr %arrayidx265, i64 0, i64 3
  %281 = load double, ptr %arrayidx266, align 8
  %282 = load ptr, ptr %B.addr, align 8
  %arrayidx267 = getelementptr inbounds [4 x double], ptr %282, i64 3
  %arrayidx268 = getelementptr inbounds [4 x double], ptr %arrayidx267, i64 0, i64 2
  %283 = load double, ptr %arrayidx268, align 8
  %284 = call double @llvm.fmuladd.f64(double %281, double %283, double %279)
  %arrayidx269 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 14
  store double %284, ptr %arrayidx269, align 8
  %285 = load ptr, ptr %A.addr, align 8
  %arrayidx270 = getelementptr inbounds [4 x double], ptr %285, i64 3
  %arrayidx271 = getelementptr inbounds [4 x double], ptr %arrayidx270, i64 0, i64 0
  %286 = load double, ptr %arrayidx271, align 8
  %287 = load ptr, ptr %B.addr, align 8
  %arrayidx272 = getelementptr inbounds [4 x double], ptr %287, i64 0
  %arrayidx273 = getelementptr inbounds [4 x double], ptr %arrayidx272, i64 0, i64 3
  %288 = load double, ptr %arrayidx273, align 8
  %289 = load ptr, ptr %A.addr, align 8
  %arrayidx274 = getelementptr inbounds [4 x double], ptr %289, i64 3
  %arrayidx275 = getelementptr inbounds [4 x double], ptr %arrayidx274, i64 0, i64 1
  %290 = load double, ptr %arrayidx275, align 8
  %291 = load ptr, ptr %B.addr, align 8
  %arrayidx276 = getelementptr inbounds [4 x double], ptr %291, i64 1
  %arrayidx277 = getelementptr inbounds [4 x double], ptr %arrayidx276, i64 0, i64 3
  %292 = load double, ptr %arrayidx277, align 8
  %mul278 = fmul double %290, %292
  %293 = call double @llvm.fmuladd.f64(double %286, double %288, double %mul278)
  %294 = load ptr, ptr %A.addr, align 8
  %arrayidx279 = getelementptr inbounds [4 x double], ptr %294, i64 3
  %arrayidx280 = getelementptr inbounds [4 x double], ptr %arrayidx279, i64 0, i64 2
  %295 = load double, ptr %arrayidx280, align 8
  %296 = load ptr, ptr %B.addr, align 8
  %arrayidx281 = getelementptr inbounds [4 x double], ptr %296, i64 2
  %arrayidx282 = getelementptr inbounds [4 x double], ptr %arrayidx281, i64 0, i64 3
  %297 = load double, ptr %arrayidx282, align 8
  %298 = call double @llvm.fmuladd.f64(double %295, double %297, double %293)
  %299 = load ptr, ptr %A.addr, align 8
  %arrayidx283 = getelementptr inbounds [4 x double], ptr %299, i64 3
  %arrayidx284 = getelementptr inbounds [4 x double], ptr %arrayidx283, i64 0, i64 3
  %300 = load double, ptr %arrayidx284, align 8
  %301 = load ptr, ptr %B.addr, align 8
  %arrayidx285 = getelementptr inbounds [4 x double], ptr %301, i64 3
  %arrayidx286 = getelementptr inbounds [4 x double], ptr %arrayidx285, i64 0, i64 3
  %302 = load double, ptr %arrayidx286, align 8
  %303 = call double @llvm.fmuladd.f64(double %300, double %302, double %298)
  %arrayidx287 = getelementptr inbounds [16 x double], ptr %Res, i64 0, i64 15
  store double %303, ptr %arrayidx287, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %304 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %304, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %305 = load i32, ptr %n, align 4
  %idxprom = zext i32 %305 to i64
  %arrayidx288 = getelementptr inbounds nuw [16 x double], ptr %Res, i64 0, i64 %idxprom
  %306 = load double, ptr %arrayidx288, align 8
  %307 = load ptr, ptr %Out.addr, align 8
  %308 = load i32, ptr %n, align 4
  %idxprom289 = zext i32 %308 to i64
  %arrayidx290 = getelementptr inbounds nuw double, ptr %307, i64 %idxprom289
  store double %306, ptr %arrayidx290, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %309 = load i32, ptr %n, align 4
  %inc = add i32 %309, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Iterations = alloca i32, align 4
  %A = alloca [4 x [4 x double]], align 8
  %B = alloca [4 x [4 x double]], align 8
  %C = alloca [4 x [4 x double]], align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 50000000, ptr %Iterations, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %A, ptr align 8 @__const.main.A, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %B, ptr align 8 @__const.main.B, i64 128, i1 false)
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp ne i32 %0, 50000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x [4 x double]], ptr %C, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [4 x double], ptr %arrayidx, i64 0, i64 0
  %arraydecay = getelementptr inbounds [4 x [4 x double]], ptr %A, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [4 x [4 x double]], ptr %B, i64 0, i64 0
  call void @wrap_mul4(ptr noundef %arrayidx1, ptr noundef %arraydecay, ptr noundef %arraydecay2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %n, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %2 = load i32, ptr %n, align 4
  %cmp4 = icmp ne i32 %2, 4
  br i1 %cmp4, label %for.body5, label %for.end18

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %m, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.body5
  %3 = load i32, ptr %m, align 4
  %cmp7 = icmp ne i32 %3, 4
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %4 = load i32, ptr %n, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds nuw [4 x [4 x double]], ptr %C, i64 0, i64 %idxprom
  %5 = load i32, ptr %m, align 4
  %idxprom10 = zext i32 %5 to i64
  %arrayidx11 = getelementptr inbounds nuw [4 x double], ptr %arrayidx9, i64 0, i64 %idxprom10
  %6 = load double, ptr %arrayidx11, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %6)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %7 = load i32, ptr %m, align 4
  %inc13 = add i32 %7, 1
  store i32 %inc13, ptr %m, align 4
  br label %for.cond6, !llvm.loop !9

for.end14:                                        ; preds = %for.cond6
  %call15 = call i32 @puts(ptr noundef @.str.1)
  br label %for.inc16

for.inc16:                                        ; preds = %for.end14
  %8 = load i32, ptr %n, align 4
  %inc17 = add i32 %8, 1
  store i32 %inc17, ptr %n, align 4
  br label %for.cond3, !llvm.loop !10

for.end18:                                        ; preds = %for.cond3
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

declare i32 @puts(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
