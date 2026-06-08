; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_DCMTK_config_tests_cxx14.prepared.ll'
source_filename = "./source_snapshot/DCMTK/config/tests/cxx14.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.anon.2 = type { i8 }

; Function Attrs: mustprogress norecurse nounwind ssp uwtable
define noundef i32 @main() #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1424test_polymorphic_lambdas4testEv() #1 {
entry:
  %args.addr2.i = alloca ptr, align 8
  %args.addr4.i = alloca ptr, align 8
  %args.addr6.i = alloca ptr, align 8
  %istiny.i = alloca %class.anon.2, align 1
  %aretiny.i = alloca [4 x i32], align 4
  %ref.tmp = alloca i32, align 4
  %ref.tmp1 = alloca i64, align 8
  %ref.tmp2 = alloca float, align 4
  %ref.tmp3 = alloca i8, align 1
  store i32 1, ptr %ref.tmp, align 4
  store i64 1, ptr %ref.tmp1, align 8
  store float 1.000000e+00, ptr %ref.tmp2, align 4
  store i8 49, ptr %ref.tmp3, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.addr2.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.addr4.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.addr6.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %istiny.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %aretiny.i)
  store ptr %ref.tmp1, ptr %args.addr2.i, align 8
  store ptr %ref.tmp2, ptr %args.addr4.i, align 8
  store ptr %ref.tmp3, ptr %args.addr6.i, align 8
  %0 = load i32, ptr %ref.tmp, align 4
  %call.i = call noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIiEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %istiny.i, i32 noundef %0)
  store i32 %call.i, ptr %aretiny.i, align 4
  %arrayinit.element.i = getelementptr inbounds i32, ptr %aretiny.i, i64 1
  %1 = load ptr, ptr %args.addr2.i, align 8
  %2 = load i64, ptr %1, align 8
  %call8.i = call noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIlEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %istiny.i, i64 noundef %2)
  store i32 %call8.i, ptr %arrayinit.element.i, align 4
  %arrayinit.element9.i = getelementptr inbounds i32, ptr %aretiny.i, i64 2
  %3 = load ptr, ptr %args.addr4.i, align 8
  %4 = load float, ptr %3, align 4
  %call10.i = call noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIfEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %istiny.i, float noundef %4)
  store i32 %call10.i, ptr %arrayinit.element9.i, align 4
  %arrayinit.element11.i = getelementptr inbounds i32, ptr %aretiny.i, i64 3
  %5 = load ptr, ptr %args.addr6.i, align 8
  %6 = load i8, ptr %5, align 1
  %call12.i = call noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIcEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %istiny.i, i8 noundef signext %6)
  store i32 %call12.i, ptr %arrayinit.element11.i, align 4
  %7 = load i32, ptr %aretiny.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.addr2.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.addr4.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.addr6.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %istiny.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %aretiny.i)
  ret i32 %7
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1424test_lambda_init_capture4testEv() #1 {
entry:
  ret i32 0
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

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIiEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %x) #2 align 2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIlEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %x) #2 align 2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIfEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, float noundef %x) #2 align 2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIcEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, i8 noundef signext %x) #2 align 2 {
entry:
  ret i32 1
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
