; ModuleID = '<stdin>'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/blis/2/bl1_syr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_ssyr2(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load ptr, ptr %a.addr, align 8
  store ptr %1, ptr %a_save, align 8
  %2 = load i32, ptr %a_rs.addr, align 4
  store i32 %2, ptr %a_rs_save, align 4
  %3 = load i32, ptr %a_cs.addr, align 4
  store i32 %3, ptr %a_cs_save, align 4
  %4 = load i32, ptr %m.addr, align 4
  %call = call i32 @bl1_zero_dim1(i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %uplo.addr, align 4
  %6 = load i32, ptr %m.addr, align 4
  %7 = load i32, ptr %m.addr, align 4
  %8 = load ptr, ptr %a_save, align 8
  %9 = load i32, ptr %a_rs_save, align 4
  %10 = load i32, ptr %a_cs_save, align 4
  call void @bl1_screate_contigmr(i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %11 = load i32, ptr %a_cs.addr, align 4
  store i32 %11, ptr %lda, align 4
  %12 = load i32, ptr %a_rs.addr, align 4
  store i32 %12, ptr %inca, align 4
  %13 = load i32, ptr %a_rs.addr, align 4
  %14 = load i32, ptr %a_cs.addr, align 4
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %13, i32 noundef %14)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %15 = load i32, ptr %lda, align 4
  store i32 %15, ptr %temp, align 4
  %16 = load i32, ptr %inca, align 4
  store i32 %16, ptr %lda, align 4
  %17 = load i32, ptr %temp, align 4
  store i32 %17, ptr %inca, align 4
  %18 = load i32, ptr %uplo.addr, align 4
  %call4 = call i32 @bl1_is_lower(i32 noundef %18)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %19 = load i32, ptr %uplo.addr, align 4
  %20 = load i32, ptr %m.addr, align 4
  %21 = load ptr, ptr %alpha.addr, align 8
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i32, ptr %incx.addr, align 4
  %24 = load ptr, ptr %y.addr, align 8
  %25 = load i32, ptr %incy.addr, align 4
  %26 = load ptr, ptr %a.addr, align 8
  %27 = load i32, ptr %lda, align 4
  call void @bl1_ssyr2_blas(i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27)
  %28 = load i32, ptr %m_save, align 4
  %29 = load i32, ptr %m_save, align 4
  %30 = load ptr, ptr %a_save, align 8
  %31 = load i32, ptr %a_rs_save, align 4
  %32 = load i32, ptr %a_cs_save, align 4
  call void @bl1_sfree_saved_contigm(i32 noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare i32 @bl1_zero_dim1(i32 noundef) #1

declare void @bl1_screate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @bl1_is_row_storage(i32 noundef, i32 noundef) #1

declare i32 @bl1_is_lower(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_ssyr2_blas(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %lda) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  %0 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %0, ptr noundef %blas_uplo)
  %1 = load ptr, ptr %alpha.addr, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load ptr, ptr %y.addr, align 8
  %4 = load ptr, ptr %a.addr, align 8
  call void @ssyr2_(ptr noundef %blas_uplo, ptr noundef %m.addr, ptr noundef %1, ptr noundef %2, ptr noundef %incx.addr, ptr noundef %3, ptr noundef %incy.addr, ptr noundef %4, ptr noundef %lda.addr)
  ret void
}

declare void @bl1_sfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_dsyr2(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load ptr, ptr %a.addr, align 8
  store ptr %1, ptr %a_save, align 8
  %2 = load i32, ptr %a_rs.addr, align 4
  store i32 %2, ptr %a_rs_save, align 4
  %3 = load i32, ptr %a_cs.addr, align 4
  store i32 %3, ptr %a_cs_save, align 4
  %4 = load i32, ptr %m.addr, align 4
  %call = call i32 @bl1_zero_dim1(i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %uplo.addr, align 4
  %6 = load i32, ptr %m.addr, align 4
  %7 = load i32, ptr %m.addr, align 4
  %8 = load ptr, ptr %a_save, align 8
  %9 = load i32, ptr %a_rs_save, align 4
  %10 = load i32, ptr %a_cs_save, align 4
  call void @bl1_dcreate_contigmr(i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %11 = load i32, ptr %a_cs.addr, align 4
  store i32 %11, ptr %lda, align 4
  %12 = load i32, ptr %a_rs.addr, align 4
  store i32 %12, ptr %inca, align 4
  %13 = load i32, ptr %a_rs.addr, align 4
  %14 = load i32, ptr %a_cs.addr, align 4
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %13, i32 noundef %14)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %15 = load i32, ptr %lda, align 4
  store i32 %15, ptr %temp, align 4
  %16 = load i32, ptr %inca, align 4
  store i32 %16, ptr %lda, align 4
  %17 = load i32, ptr %temp, align 4
  store i32 %17, ptr %inca, align 4
  %18 = load i32, ptr %uplo.addr, align 4
  %call4 = call i32 @bl1_is_lower(i32 noundef %18)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %19 = load i32, ptr %uplo.addr, align 4
  %20 = load i32, ptr %m.addr, align 4
  %21 = load ptr, ptr %alpha.addr, align 8
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i32, ptr %incx.addr, align 4
  %24 = load ptr, ptr %y.addr, align 8
  %25 = load i32, ptr %incy.addr, align 4
  %26 = load ptr, ptr %a.addr, align 8
  %27 = load i32, ptr %lda, align 4
  call void @bl1_dsyr2_blas(i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27)
  %28 = load i32, ptr %m_save, align 4
  %29 = load i32, ptr %m_save, align 4
  %30 = load ptr, ptr %a_save, align 8
  %31 = load i32, ptr %a_rs_save, align 4
  %32 = load i32, ptr %a_cs_save, align 4
  call void @bl1_dfree_saved_contigm(i32 noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare void @bl1_dcreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_dsyr2_blas(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %lda) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  %0 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %0, ptr noundef %blas_uplo)
  %1 = load ptr, ptr %alpha.addr, align 8
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load ptr, ptr %y.addr, align 8
  %4 = load ptr, ptr %a.addr, align 8
  call void @dsyr2_(ptr noundef %blas_uplo, ptr noundef %m.addr, ptr noundef %1, ptr noundef %2, ptr noundef %incx.addr, ptr noundef %3, ptr noundef %incy.addr, ptr noundef %4, ptr noundef %lda.addr)
  ret void
}

declare void @bl1_dfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_csyr2(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load ptr, ptr %a.addr, align 8
  store ptr %1, ptr %a_save, align 8
  %2 = load i32, ptr %a_rs.addr, align 4
  store i32 %2, ptr %a_rs_save, align 4
  %3 = load i32, ptr %a_cs.addr, align 4
  store i32 %3, ptr %a_cs_save, align 4
  %4 = load i32, ptr %m.addr, align 4
  %call = call i32 @bl1_zero_dim1(i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %uplo.addr, align 4
  %6 = load i32, ptr %m.addr, align 4
  %7 = load i32, ptr %m.addr, align 4
  %8 = load ptr, ptr %a_save, align 8
  %9 = load i32, ptr %a_rs_save, align 4
  %10 = load i32, ptr %a_cs_save, align 4
  call void @bl1_ccreate_contigmr(i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %11 = load i32, ptr %a_cs.addr, align 4
  store i32 %11, ptr %lda, align 4
  %12 = load i32, ptr %a_rs.addr, align 4
  store i32 %12, ptr %inca, align 4
  %13 = load i32, ptr %a_rs.addr, align 4
  %14 = load i32, ptr %a_cs.addr, align 4
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %13, i32 noundef %14)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %15 = load i32, ptr %lda, align 4
  store i32 %15, ptr %temp, align 4
  %16 = load i32, ptr %inca, align 4
  store i32 %16, ptr %lda, align 4
  %17 = load i32, ptr %temp, align 4
  store i32 %17, ptr %inca, align 4
  %18 = load i32, ptr %uplo.addr, align 4
  %call4 = call i32 @bl1_is_lower(i32 noundef %18)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %19 = load i32, ptr %uplo.addr, align 4
  %20 = load i32, ptr %m.addr, align 4
  %21 = load ptr, ptr %alpha.addr, align 8
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i32, ptr %incx.addr, align 4
  %24 = load ptr, ptr %y.addr, align 8
  %25 = load i32, ptr %incy.addr, align 4
  %26 = load ptr, ptr %a.addr, align 8
  %27 = load i32, ptr %lda, align 4
  call void @bl1_csyr2_blas(i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27)
  %28 = load i32, ptr %m_save, align 4
  %29 = load i32, ptr %m_save, align 4
  %30 = load ptr, ptr %a_save, align 8
  %31 = load i32, ptr %a_rs_save, align 4
  %32 = load i32, ptr %a_cs_save, align 4
  call void @bl1_cfree_saved_contigm(i32 noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare void @bl1_ccreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_csyr2_blas(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %lda) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %x_copy = alloca ptr, align 8
  %y_copy = alloca ptr, align 8
  %beta = alloca %struct.scomplex, align 4
  %k = alloca i32, align 4
  %ldx = alloca i32, align 4
  %ldy = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  %blas_trans = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store i32 1, ptr %k, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %ldx, align 4
  %1 = load i32, ptr %m.addr, align 4
  store i32 %1, ptr %ldy, align 4
  %2 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %2, ptr noundef %blas_uplo)
  call void @bl1_param_map_to_netlib_trans(i32 noundef 100, ptr noundef %blas_trans)
  %3 = load i32, ptr %m.addr, align 4
  %call = call ptr @bl1_callocv(i32 noundef %3)
  store ptr %call, ptr %x_copy, align 8
  %4 = load i32, ptr %m.addr, align 4
  %call1 = call ptr @bl1_callocv(i32 noundef %4)
  store ptr %call1, ptr %y_copy, align 8
  %5 = load i32, ptr %m.addr, align 4
  %6 = load ptr, ptr %x.addr, align 8
  %7 = load i32, ptr %incx.addr, align 4
  %8 = load ptr, ptr %x_copy, align 8
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 1)
  %9 = load i32, ptr %m.addr, align 4
  %10 = load ptr, ptr %y.addr, align 8
  %11 = load i32, ptr %incy.addr, align 4
  %12 = load ptr, ptr %y_copy, align 8
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1)
  %real = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  store float 1.000000e+00, ptr %real, align 4
  %imag = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  store float 0.000000e+00, ptr %imag, align 4
  %13 = load ptr, ptr %alpha.addr, align 8
  %14 = load ptr, ptr %x_copy, align 8
  %15 = load ptr, ptr %y_copy, align 8
  %16 = load ptr, ptr %a.addr, align 8
  call void @csyr2k_(ptr noundef %blas_uplo, ptr noundef %blas_trans, ptr noundef %m.addr, ptr noundef %k, ptr noundef %13, ptr noundef %14, ptr noundef %ldx, ptr noundef %15, ptr noundef %ldy, ptr noundef %beta, ptr noundef %16, ptr noundef %lda.addr)
  %17 = load ptr, ptr %x_copy, align 8
  call void @bl1_cfree(ptr noundef %17)
  %18 = load ptr, ptr %y_copy, align 8
  call void @bl1_cfree(ptr noundef %18)
  ret void
}

declare void @bl1_cfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_zsyr2(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %a_rs, i32 noundef %a_cs) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %a_rs.addr = alloca i32, align 4
  %a_cs.addr = alloca i32, align 4
  %m_save = alloca i32, align 4
  %a_save = alloca ptr, align 8
  %a_rs_save = alloca i32, align 4
  %a_cs_save = alloca i32, align 4
  %lda = alloca i32, align 4
  %inca = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_rs, ptr %a_rs.addr, align 4
  store i32 %a_cs, ptr %a_cs.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %m_save, align 4
  %1 = load ptr, ptr %a.addr, align 8
  store ptr %1, ptr %a_save, align 8
  %2 = load i32, ptr %a_rs.addr, align 4
  store i32 %2, ptr %a_rs_save, align 4
  %3 = load i32, ptr %a_cs.addr, align 4
  store i32 %3, ptr %a_cs_save, align 4
  %4 = load i32, ptr %m.addr, align 4
  %call = call i32 @bl1_zero_dim1(i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %uplo.addr, align 4
  %6 = load i32, ptr %m.addr, align 4
  %7 = load i32, ptr %m.addr, align 4
  %8 = load ptr, ptr %a_save, align 8
  %9 = load i32, ptr %a_rs_save, align 4
  %10 = load i32, ptr %a_cs_save, align 4
  call void @bl1_zcreate_contigmr(i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  %11 = load i32, ptr %a_cs.addr, align 4
  store i32 %11, ptr %lda, align 4
  %12 = load i32, ptr %a_rs.addr, align 4
  store i32 %12, ptr %inca, align 4
  %13 = load i32, ptr %a_rs.addr, align 4
  %14 = load i32, ptr %a_cs.addr, align 4
  %call1 = call i32 @bl1_is_row_storage(i32 noundef %13, i32 noundef %14)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %15 = load i32, ptr %lda, align 4
  store i32 %15, ptr %temp, align 4
  %16 = load i32, ptr %inca, align 4
  store i32 %16, ptr %lda, align 4
  %17 = load i32, ptr %temp, align 4
  store i32 %17, ptr %inca, align 4
  %18 = load i32, ptr %uplo.addr, align 4
  %call4 = call i32 @bl1_is_lower(i32 noundef %18)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  store i32 201, ptr %uplo.addr, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then3
  store i32 200, ptr %uplo.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %19 = load i32, ptr %uplo.addr, align 4
  %20 = load i32, ptr %m.addr, align 4
  %21 = load ptr, ptr %alpha.addr, align 8
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i32, ptr %incx.addr, align 4
  %24 = load ptr, ptr %y.addr, align 8
  %25 = load i32, ptr %incy.addr, align 4
  %26 = load ptr, ptr %a.addr, align 8
  %27 = load i32, ptr %lda, align 4
  call void @bl1_zsyr2_blas(i32 noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, i32 noundef %27)
  %28 = load i32, ptr %m_save, align 4
  %29 = load i32, ptr %m_save, align 4
  %30 = load ptr, ptr %a_save, align 8
  %31 = load i32, ptr %a_rs_save, align 4
  %32 = load i32, ptr %a_cs_save, align 4
  call void @bl1_zfree_saved_contigm(i32 noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32, ptr noundef %a.addr, ptr noundef %a_rs.addr, ptr noundef %a_cs.addr)
  br label %return

return:                                           ; preds = %if.end8, %if.then
  ret void
}

declare void @bl1_zcreate_contigmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @bl1_zsyr2_blas(i32 noundef %uplo, i32 noundef %m, ptr noundef %alpha, ptr noundef %x, i32 noundef %incx, ptr noundef %y, i32 noundef %incy, ptr noundef %a, i32 noundef %lda) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %x_copy = alloca ptr, align 8
  %y_copy = alloca ptr, align 8
  %beta = alloca %struct.dcomplex, align 8
  %k = alloca i32, align 4
  %ldx = alloca i32, align 4
  %ldy = alloca i32, align 4
  %blas_uplo = alloca i8, align 1
  %blas_trans = alloca i8, align 1
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %incx, ptr %incx.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store i32 %incy, ptr %incy.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %lda, ptr %lda.addr, align 4
  store i32 1, ptr %k, align 4
  %0 = load i32, ptr %m.addr, align 4
  store i32 %0, ptr %ldx, align 4
  %1 = load i32, ptr %m.addr, align 4
  store i32 %1, ptr %ldy, align 4
  %2 = load i32, ptr %uplo.addr, align 4
  call void @bl1_param_map_to_netlib_uplo(i32 noundef %2, ptr noundef %blas_uplo)
  call void @bl1_param_map_to_netlib_trans(i32 noundef 100, ptr noundef %blas_trans)
  %3 = load i32, ptr %m.addr, align 4
  %call = call ptr @bl1_zallocv(i32 noundef %3)
  store ptr %call, ptr %x_copy, align 8
  %4 = load i32, ptr %m.addr, align 4
  %call1 = call ptr @bl1_zallocv(i32 noundef %4)
  store ptr %call1, ptr %y_copy, align 8
  %5 = load i32, ptr %m.addr, align 4
  %6 = load ptr, ptr %x.addr, align 8
  %7 = load i32, ptr %incx.addr, align 4
  %8 = load ptr, ptr %x_copy, align 8
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 1)
  %9 = load i32, ptr %m.addr, align 4
  %10 = load ptr, ptr %y.addr, align 8
  %11 = load i32, ptr %incy.addr, align 4
  %12 = load ptr, ptr %y_copy, align 8
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef 1)
  %real = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  store double 1.000000e+00, ptr %real, align 8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  store double 0.000000e+00, ptr %imag, align 8
  %13 = load ptr, ptr %alpha.addr, align 8
  %14 = load ptr, ptr %x_copy, align 8
  %15 = load ptr, ptr %y_copy, align 8
  %16 = load ptr, ptr %a.addr, align 8
  call void @zsyr2k_(ptr noundef %blas_uplo, ptr noundef %blas_trans, ptr noundef %m.addr, ptr noundef %k, ptr noundef %13, ptr noundef %14, ptr noundef %ldx, ptr noundef %15, ptr noundef %ldy, ptr noundef %beta, ptr noundef %16, ptr noundef %lda.addr)
  %17 = load ptr, ptr %x_copy, align 8
  call void @bl1_zfree(ptr noundef %17)
  %18 = load ptr, ptr %y_copy, align 8
  call void @bl1_zfree(ptr noundef %18)
  ret void
}

declare void @bl1_zfree_saved_contigm(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_param_map_to_netlib_uplo(i32 noundef, ptr noundef) #1

declare void @ssyr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @dsyr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_param_map_to_netlib_trans(i32 noundef, ptr noundef) #1

declare ptr @bl1_callocv(i32 noundef) #1

declare void @bl1_ccopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @csyr2k_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_cfree(ptr noundef) #1

declare ptr @bl1_zallocv(i32 noundef) #1

declare void @bl1_zcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @zsyr2k_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @bl1_zfree(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
