; ModuleID = './out/rewritten_ir/teacher_greedy_ir_size_work/source_snapshot_DCMTK_config_tests_cxx11.prepared.ll'
source_filename = "./source_snapshot/DCMTK/config/tests/cxx11.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.anon.17 = type { i8 }
%class.anon.8 = type { i32, ptr }
%class.anon.16 = type { %class.anon.11, %class.anon.9 }
%class.anon.11 = type { i8 }
%class.anon.9 = type { i8 }
%class.anon.13 = type { i8 }

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
  %x.addr.i = alloca i32, align 4
  %identity.i = alloca %class.anon.17, align 1
  %i.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %identity.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i)
  store i32 0, ptr %x.addr.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  store i32 %storemerge, ptr %i.i, align 4
  %1 = load i32, ptr %ref.tmp7, align 8
  %cmp.i = icmp slt i32 %storemerge, %1
  br i1 %cmp.i, label %for.body.i, label %pc_inline_source_snapshot_DCMTK_config_tests_cxx11_14.exit

for.body.i:                                       ; preds = %for.cond.i
  %2 = getelementptr inbounds %class.anon.8, ptr %ref.tmp7, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %dec.i = add nsw i32 %4, -1
  store i32 %dec.i, ptr %3, align 4
  %5 = load i32, ptr %ref.tmp7, align 8
  %add.i10 = add nsw i32 %5, %4
  store i32 %add.i10, ptr %ref.tmp7, align 8
  %6 = load i32, ptr %i.i, align 4
  %inc.i = add nsw i32 %6, 1
  br label %for.cond.i, !llvm.loop !6

pc_inline_source_snapshot_DCMTK_config_tests_cxx11_14.exit: ; preds = %for.cond.i
  %7 = load i32, ptr %x.addr.i, align 4
  %8 = load i32, ptr %ref.tmp7, align 8
  %9 = getelementptr inbounds %class.anon.8, ptr %ref.tmp7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 4
  %add2.i = add nsw i32 %8, %11
  %call.i = call noundef i32 @"_ZZZN5cxx1112test_lambdas5test2EvEN3$_5clEiENKUliE_clEi"(ptr noundef nonnull align 1 dereferenceable(1) %identity.i, i32 noundef %add2.i)
  %add3.i = add nsw i32 %7, %call.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %identity.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i)
  store i32 %add3.i, ptr %e, align 4
  %12 = load i32, ptr %a, align 4
  %13 = load i32, ptr %b, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, ptr %c, align 4
  %add9 = add nsw i32 %add, %14
  %15 = load i32, ptr %d, align 4
  %add10 = add nsw i32 %add9, %15
  %16 = load i32, ptr %e, align 4
  %add11 = add nsw i32 %add10, %16
  ret i32 %add11
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1112test_lambdas5test3Ev() #2 {
entry:
  %retval.i = alloca %class.anon.16, align 2
  %higher1st = alloca %class.anon.13, align 1
  %ref.tmp = alloca %class.anon.16, align 2
  %call = call noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_6clEZNS0_5test3EvE3$_7"(ptr noundef nonnull align 1 dereferenceable(1) %higher1st)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retval.i)
  %0 = load i16, ptr %retval.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retval.i)
  store i16 %0, ptr %ref.tmp, align 2
  %call4 = call noundef i32 @"_ZZZN5cxx1112test_lambdas5test3EvENK3$_8clEZNS0_5test3EvE3$_7ENKUlZNS0_5test3EvE3$_9E_clES3_"(ptr noundef nonnull align 1 dereferenceable(2) %ref.tmp)
  %add = add nsw i32 %call, %call4
  ret i32 %add
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @"_ZZN5cxx1112test_lambdas5test3EvENK3$_6clEZNS0_5test3EvE3$_7"(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1112test_lambdas5test3EvENK3$_8clEZNS0_5test3EvE3$_7ENKUlZNS0_5test3EvE3$_9E_clES3_"(ptr noundef nonnull align 1 dereferenceable(2) %this) #2 align 2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5cxx1126test_template_alias_sfinae4testEv() #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1112test_lambdas5test2EvEN3$_5clEiENKUliE_clEi"(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %y) #1 align 2 {
entry:
  ret i32 %y
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
