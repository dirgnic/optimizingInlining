; ModuleID = './out/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_DCMTK_config_tests_cxx11.prepared.ll'
source_filename = "./source_snapshot/DCMTK/config/tests/cxx11.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.anon.8 = type { i32, ptr }
%class.anon.11 = type { i8 }
%class.anon.16 = type { %class.anon.11, %class.anon.9 }
%class.anon.9 = type { i8 }

; Function Attrs: mustprogress norecurse nounwind ssp uwtable
define noundef i32 @main() #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1113test_decltype1fEv() #1 {
entry:
  ret i32 3
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1119test_type_deduction4testEii(i32 noundef %c, i32 noundef %v) #2 {
entry:
  %c.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %sumi = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store volatile i32 %v, ptr %v.addr, align 4
  %0 = load volatile i32, ptr %v.addr, align 4
  %add = add nsw i32 %0, %c
  %add1 = add nsw i32 %add, 120
  store i32 %add1, ptr %sumi, align 4
  %add2 = add nsw i32 %0, %c
  %conv = sitofp i32 %add2 to double
  %add3 = fadd double %conv, 1.000000e+00
  %cmp = fcmp ogt double %add3, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %sumi, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %c.addr, align 4
  %3 = load volatile i32, ptr %v.addr, align 4
  %add.i = add nsw i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %add.i, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1113test_noexcept1fEv() #1 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1113test_noexcept1gEv() #1 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define void @_ZN5cxx1122test_rvalue_references1fERi(ptr noundef nonnull align 4 dereferenceable(4) %0) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define void @_ZN5cxx1122test_rvalue_references1fERKi(ptr noundef nonnull align 4 dereferenceable(4) %0) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define void @_ZN5cxx1122test_rvalue_references1fEOi(ptr noundef nonnull align 4 dereferenceable(4) %0) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define void @_ZN5cxx1122test_rvalue_references4testEv() #1 {
entry:
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5cxx1112test_lambdas5test1Ev() #2 {
entry:
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1112test_lambdas5test2Ev() #2 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %ref.tmp7 = alloca %class.anon.8, align 8
  store i32 3, ptr %a, align 4
  store i32 48, ptr %b, align 4
  store i32 51, ptr %c, align 4
  store i32 51, ptr %d, align 4
  store i32 3, ptr %ref.tmp7, align 8
  %0 = getelementptr inbounds %class.anon.8, ptr %ref.tmp7, i64 0, i32 1
  store ptr %b, ptr %0, align 8
  %call8 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvEN3$_5clEi"(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp7, i32 noundef 0)
  store i32 %call8, ptr %e, align 4
  %1 = load i32, ptr %a, align 4
  %2 = load i32, ptr %b, align 4
  %add = add nsw i32 %1, %2
  %3 = load i32, ptr %c, align 4
  %add9 = add nsw i32 %add, %3
  %4 = load i32, ptr %d, align 4
  %add10 = add nsw i32 %add9, %4
  %5 = load i32, ptr %e, align 4
  %add11 = add nsw i32 %add10, %5
  ret i32 %add11
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test2EvEN3$_5clEi"(ptr noundef nonnull align 8 dereferenceable(16) %this, i32 noundef %x) #2 align 2 {
entry:
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %0 = load i32, ptr %this, align 8
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = getelementptr inbounds %class.anon.8, ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = load i32, ptr %2, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %2, align 4
  %4 = load i32, ptr %this, align 8
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %this, align 8
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %7 = load i32, ptr %this, align 8
  %8 = getelementptr inbounds %class.anon.8, ptr %this, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 4
  %add2 = add nsw i32 %7, %10
  %add3 = add nsw i32 %6, %add2
  ret i32 %add3
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1112test_lambdas5test3Ev() #2 {
entry:
  %f2.i = alloca %class.anon.11, align 1
  %retval.i = alloca %class.anon.16, align 2
  %f.i = alloca %class.anon.9, align 1
  %ref.tmp = alloca %class.anon.16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f.i)
  %call.i = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_7clEv"(ptr noundef nonnull align 1 dereferenceable(1) %f.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retval.i)
  %0 = load i16, ptr %retval.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retval.i)
  store i16 %0, ptr %ref.tmp, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f2.i)
  %1 = getelementptr inbounds %class.anon.16, ptr %ref.tmp, i64 0, i32 1
  %call.i5 = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_7clEv"(ptr noundef nonnull align 1 dereferenceable(1) %1)
  %call2.i = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_9clEi"(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, i32 noundef %call.i5)
  %call3.i = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_9clEi"(ptr noundef nonnull align 1 dereferenceable(1) %f2.i, i32 noundef %call2.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f2.i)
  %add = add nsw i32 %call.i, %call3.i
  ret i32 %add
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5cxx1126test_template_alias_sfinae4testEv() #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_7clEv"(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 align 2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_9clEi"(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %x) #1 align 2 {
entry:
  ret i32 %x
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { mustprogress norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }

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
