; ModuleID = './source_snapshot/DCMTK/config/tests/cxx11.cc'
source_filename = "./source_snapshot/DCMTK/config/tests/cxx11.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%class.anon = type { i8 }
%class.anon.2 = type { i8 }
%class.anon.4 = type { i8 }
%class.anon.6 = type { i32, i32 }
%class.anon.7 = type { ptr }
%class.anon.8 = type { i32, ptr }
%class.anon.17 = type { i8 }
%class.anon.9 = type { i8 }
%class.anon.11 = type { i8 }
%class.anon.13 = type { i8 }
%class.anon.15 = type { i8 }
%class.anon.16 = type { [2 x i8] }

; Function Attrs: mustprogress noinline norecurse nounwind optnone ssp uwtable(sync)
define noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define noundef i32 @_ZN5cxx1113test_decltype1fEv() #1 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 1, ptr %a, align 4
  store i32 2, ptr %b, align 4
  %0 = load i32, ptr %a, align 4
  %1 = load i32, ptr %b, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define noundef i32 @_ZN5cxx1119test_type_deduction4testEii(i32 noundef %c, i32 noundef %v) #2 {
entry:
  %c.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %ac = alloca i32, align 4
  %av = alloca i32, align 4
  %sumi = alloca i32, align 4
  %sumf = alloca double, align 8
  store i32 %c, ptr %c.addr, align 4
  store volatile i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  store i32 %0, ptr %ac, align 4
  %1 = load volatile i32, ptr %v.addr, align 4
  store i32 %1, ptr %av, align 4
  %2 = load i32, ptr %ac, align 4
  %3 = load i32, ptr %av, align 4
  %add = add nsw i32 %2, %3
  %add1 = add nsw i32 %add, 120
  store i32 %add1, ptr %sumi, align 4
  %4 = load i32, ptr %ac, align 4
  %5 = load i32, ptr %av, align 4
  %add2 = add nsw i32 %4, %5
  %conv = sitofp i32 %add2 to double
  %add3 = fadd double %conv, 1.000000e+00
  store double %add3, ptr %sumf, align 8
  %6 = load double, ptr %sumf, align 8
  %cmp = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %sumi, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr %c.addr, align 4
  %9 = load volatile i32, ptr %v.addr, align 4
  %call = call noundef i32 @_ZN5cxx1119test_type_deduction3addIiiEEDTplfp_fp0_ET_T0_(i32 noundef %8, i32 noundef %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %call, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef i32 @_ZN5cxx1119test_type_deduction3addIiiEEDTplfp_fp0_ET_T0_(i32 noundef %a1, i32 noundef %a2) #1 {
entry:
  %a1.addr = alloca i32, align 4
  %a2.addr = alloca i32, align 4
  store i32 %a1, ptr %a1.addr, align 4
  store i32 %a2, ptr %a2.addr, align 4
  %0 = load i32, ptr %a1.addr, align 4
  %1 = load i32, ptr %a2.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define noundef i32 @_ZN5cxx1113test_noexcept1fEv() #1 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define noundef i32 @_ZN5cxx1113test_noexcept1gEv() #1 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define void @_ZN5cxx1122test_rvalue_references1fERi(ptr noundef nonnull align 4 dereferenceable(4) %0) #1 {
entry:
  %.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define void @_ZN5cxx1122test_rvalue_references1fERKi(ptr noundef nonnull align 4 dereferenceable(4) %0) #1 {
entry:
  %.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define void @_ZN5cxx1122test_rvalue_references1fEOi(ptr noundef nonnull align 4 dereferenceable(4) %0) #1 {
entry:
  %.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define void @_ZN5cxx1122test_rvalue_references4testEv() #1 {
entry:
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %c, align 4
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define void @_ZN5cxx1112test_lambdas5test1Ev() #2 {
entry:
  %lambda1 = alloca %class.anon, align 1
  %lambda2 = alloca %class.anon, align 1
  call void @"_ZZN5cxx1112test_lambdas5test1EvENK3$_0clEv"(ptr noundef nonnull align 1 dereferenceable(1) %lambda1)
  call void @"_ZZN5cxx1112test_lambdas5test1EvENK3$_0clEv"(ptr noundef nonnull align 1 dereferenceable(1) %lambda2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal void @"_ZZN5cxx1112test_lambdas5test1EvENK3$_0clEv"(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define noundef i32 @_ZN5cxx1112test_lambdas5test2Ev() #2 {
entry:
  %a = alloca i32, align 4
  %ref.tmp = alloca %class.anon.2, align 1
  %b = alloca i32, align 4
  %ref.tmp1 = alloca %class.anon.4, align 1
  %c = alloca i32, align 4
  %ref.tmp3 = alloca %class.anon.6, align 4
  %d = alloca i32, align 4
  %ref.tmp5 = alloca %class.anon.7, align 8
  %e = alloca i32, align 4
  %ref.tmp7 = alloca %class.anon.8, align 8
  %call = call noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_0clEii"(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, i32 noundef 1, i32 noundef 2)
  store i32 %call, ptr %a, align 4
  %call2 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_1clEv"(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp1)
  store i32 %call2, ptr %b, align 4
  %0 = getelementptr inbounds nuw %class.anon.6, ptr %ref.tmp3, i32 0, i32 0
  %1 = load i32, ptr %a, align 4
  store i32 %1, ptr %0, align 4
  %2 = getelementptr inbounds nuw %class.anon.6, ptr %ref.tmp3, i32 0, i32 1
  %3 = load i32, ptr %b, align 4
  store i32 %3, ptr %2, align 4
  %call4 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_2clEv"(ptr noundef nonnull align 4 dereferenceable(8) %ref.tmp3)
  store i32 %call4, ptr %c, align 4
  %4 = getelementptr inbounds nuw %class.anon.7, ptr %ref.tmp5, i32 0, i32 0
  store ptr %c, ptr %4, align 8
  %call6 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_3clEv"(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp5)
  store i32 %call6, ptr %d, align 4
  %5 = getelementptr inbounds nuw %class.anon.8, ptr %ref.tmp7, i32 0, i32 0
  %6 = load i32, ptr %a, align 4
  store i32 %6, ptr %5, align 8
  %7 = getelementptr inbounds nuw %class.anon.8, ptr %ref.tmp7, i32 0, i32 1
  store ptr %b, ptr %7, align 8
  %call8 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvEN3$_4clEi"(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp7, i32 noundef 0)
  store i32 %call8, ptr %e, align 4
  %8 = load i32, ptr %a, align 4
  %9 = load i32, ptr %b, align 4
  %add = add nsw i32 %8, %9
  %10 = load i32, ptr %c, align 4
  %add9 = add nsw i32 %add, %10
  %11 = load i32, ptr %d, align 4
  %add10 = add nsw i32 %add9, %11
  %12 = load i32, ptr %e, align 4
  %add11 = add nsw i32 %add10, %12
  ret i32 %add11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_0clEii"(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %i, i32 noundef %j) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %i.addr, align 4
  %1 = load i32, ptr %j.addr, align 4
  %add = add nsw i32 %0, %1
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_1clEv"(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 48
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_2clEv"(ptr noundef nonnull align 4 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds nuw %class.anon.6, ptr %this1, i32 0, i32 0
  %1 = load i32, ptr %0, align 4
  %2 = getelementptr inbounds nuw %class.anon.6, ptr %this1, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %add = add nsw i32 %1, %3
  ret i32 %add
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvENK3$_3clEv"(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds nuw %class.anon.7, ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = load i32, ptr %1, align 4
  ret i32 %2
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvEN3$_4clEi"(ptr noundef nonnull align 8 dereferenceable(16) %this, i32 noundef %x) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %identity = alloca %class.anon.17, align 1
  %i = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = getelementptr inbounds nuw %class.anon.8, ptr %this1, i32 0, i32 0
  %2 = load i32, ptr %1, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = getelementptr inbounds nuw %class.anon.8, ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %4, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %4, align 4
  %6 = getelementptr inbounds nuw %class.anon.8, ptr %this1, i32 0, i32 0
  %7 = load i32, ptr %6, align 8
  %add = add nsw i32 %7, %5
  store i32 %add, ptr %6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %x.addr, align 4
  %10 = getelementptr inbounds nuw %class.anon.8, ptr %this1, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds nuw %class.anon.8, ptr %this1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = load i32, ptr %13, align 4
  %add2 = add nsw i32 %11, %14
  %call = call noundef i32 @"_ZZZN5cxx1112test_lambdas5test2EvEN3$_4clEiENKUliE_clEi"(ptr noundef nonnull align 1 dereferenceable(1) %identity, i32 noundef %add2)
  %add3 = add nsw i32 %9, %call
  ret i32 %add3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define noundef i32 @_ZN5cxx1112test_lambdas5test3Ev() #2 {
entry:
  %nullary = alloca %class.anon.9, align 1
  %unary = alloca %class.anon.11, align 1
  %higher1st = alloca %class.anon.13, align 1
  %higher2nd = alloca %class.anon.15, align 1
  %agg.tmp = alloca %class.anon.9, align 1
  %ref.tmp = alloca %class.anon.16, align 1
  %agg.tmp1 = alloca %class.anon.9, align 1
  %agg.tmp3 = alloca %class.anon.11, align 1
  %call = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_0clEZNS0_5test3EvE3$_1"(ptr noundef nonnull align 1 dereferenceable(1) %higher1st)
  %call2 = call i16 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_2clEZNS0_5test3EvE3$_1"(ptr noundef nonnull align 1 dereferenceable(1) %higher2nd)
  %coerce.dive = getelementptr inbounds nuw %class.anon.16, ptr %ref.tmp, i32 0, i32 0
  store i16 %call2, ptr %coerce.dive, align 1
  %call4 = call noundef i32 @"_ZZZN5cxx1112test_lambdas5test3EvENK3$_2clEZNS0_5test3EvE3$_1ENKUlZNS0_5test3EvE3$_3E_clES3_"(ptr noundef nonnull align 1 dereferenceable(2) %ref.tmp)
  %add = add nsw i32 %call, %call4
  ret i32 %add
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_0clEZNS0_5test3EvE3$_1"(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 {
entry:
  %f = alloca %class.anon.9, align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_1clEv"(ptr noundef nonnull align 1 dereferenceable(1) %f)
  ret i32 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal i16 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_2clEZNS0_5test3EvE3$_1"(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %retval = alloca %class.anon.16, align 1
  %f1 = alloca %class.anon.9, align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %retval, i64 1
  %coerce.dive = getelementptr inbounds nuw %class.anon.16, ptr %retval, i32 0, i32 0
  %1 = load i16, ptr %coerce.dive, align 1
  ret i16 %1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZZN5cxx1112test_lambdas5test3EvENK3$_2clEZNS0_5test3EvE3$_1ENKUlZNS0_5test3EvE3$_3E_clES3_"(ptr noundef nonnull align 1 dereferenceable(2) %this) #2 {
entry:
  %f2 = alloca %class.anon.11, align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds i8, ptr %this1, i64 1
  %call = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_1clEv"(ptr noundef nonnull align 1 dereferenceable(1) %0)
  %call2 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_3clEi"(ptr noundef nonnull align 1 dereferenceable(1) %this1, i32 noundef %call)
  %call3 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_3clEi"(ptr noundef nonnull align 1 dereferenceable(1) %f2, i32 noundef %call2)
  ret i32 %call3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define void @_ZN5cxx1126test_template_alias_sfinae4testEv() #2 {
entry:
  call void (...) @_ZN5cxx1126test_template_alias_sfinae4funcINS0_3fooEEEvz(i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZN5cxx1126test_template_alias_sfinae4funcINS0_3fooEEEvz(...) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZZN5cxx1112test_lambdas5test2EvEN3$_4clEiENKUliE_clEi"(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %y) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %y.addr, align 4
  ret i32 %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_1clEv"(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_3clEi"(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %x) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i32, ptr %x.addr, align 4
  ret i32 %0
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
