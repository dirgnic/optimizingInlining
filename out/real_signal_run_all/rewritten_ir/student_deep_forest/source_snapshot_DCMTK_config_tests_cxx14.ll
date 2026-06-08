; ModuleID = './out/real_signal_run_all/rewritten_ir/student_deep_forest/source_snapshot_DCMTK_config_tests_cxx14.prepared.ll'
source_filename = "./source_snapshot/DCMTK/config/tests/cxx14.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.anon = type { i8 }
%class.anon.0 = type { i32 }

; Function Attrs: mustprogress norecurse nounwind ssp uwtable
define noundef i32 @main() #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1424test_polymorphic_lambdas4testEv() #1 {
entry:
  %lambda = alloca %class.anon, align 1
  %ref.tmp = alloca i32, align 4
  %ref.tmp1 = alloca i64, align 8
  %ref.tmp2 = alloca float, align 4
  %ref.tmp3 = alloca i8, align 1
  store i32 1, ptr %ref.tmp, align 4
  store i64 1, ptr %ref.tmp1, align 8
  store float 1.000000e+00, ptr %ref.tmp2, align 4
  store i8 49, ptr %ref.tmp3, align 1
  %call = call noundef i32 @"_ZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_"(ptr noundef nonnull align 1 dereferenceable(1) %lambda, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp2, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp3)
  ret i32 %call
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef i32 @"_ZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_"(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %args, ptr noundef nonnull align 8 dereferenceable(8) %args1, ptr noundef nonnull align 4 dereferenceable(4) %args3, ptr noundef nonnull align 1 dereferenceable(1) %args5) #1 align 2 {
entry:
  %aretiny = alloca [4 x i32], align 4
  store i32 0, ptr %aretiny, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %aretiny, i64 1
  store i32 0, ptr %arrayinit.element, align 4
  %arrayinit.element9 = getelementptr inbounds i32, ptr %aretiny, i64 2
  store i32 0, ptr %arrayinit.element9, align 4
  %arrayinit.element11 = getelementptr inbounds i32, ptr %aretiny, i64 3
  store i32 1, ptr %arrayinit.element11, align 4
  %0 = load i32, ptr %aretiny, align 4
  ret i32 %0
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1424test_lambda_init_capture4testEv() #1 {
entry:
  %lambda1 = alloca %class.anon.0, align 4
  store i32 0, ptr %lambda1, align 4
  %call = call noundef i32 @"_ZZN5cxx1424test_lambda_init_capture4testEvENK3$_1clEi"(ptr noundef nonnull align 4 dereferenceable(4) %lambda1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZN5cxx1424test_lambda_init_capture4testEvENK3$_1clEi"(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %b) #2 align 2 {
entry:
  %0 = load i32, ptr %this, align 4
  %add = add nsw i32 %0, %b
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1426test_return_type_deduction1fERi(ptr noundef nonnull align 4 dereferenceable(4) %x) #2 {
entry:
  %0 = load i32, ptr %x, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZN5cxx1426test_return_type_deduction1gERi(ptr noundef nonnull align 4 dereferenceable(4) %x) #2 {
entry:
  ret ptr %x
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1426test_return_type_deduction4testEv() #2 {
entry:
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { mustprogress norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
