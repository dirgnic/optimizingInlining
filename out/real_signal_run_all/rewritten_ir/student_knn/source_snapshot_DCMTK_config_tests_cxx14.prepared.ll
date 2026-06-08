; ModuleID = './source_snapshot/DCMTK/config/tests/cxx14.cc'
source_filename = "./source_snapshot/DCMTK/config/tests/cxx14.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.anon = type { i8 }
%class.anon.2 = type { i8 }
%class.anon.0 = type { i32 }
%class.anon.1 = type { i32 }

; Function Attrs: mustprogress norecurse nounwind ssp uwtable
define noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
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
  %this.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %args.addr2 = alloca ptr, align 8
  %args.addr4 = alloca ptr, align 8
  %args.addr6 = alloca ptr, align 8
  %istiny = alloca %class.anon.2, align 1
  %aretiny = alloca [4 x i32], align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %args, ptr %args.addr, align 8
  store ptr %args1, ptr %args.addr2, align 8
  store ptr %args3, ptr %args.addr4, align 8
  store ptr %args5, ptr %args.addr6, align 8
  %this7 = load ptr, ptr %this.addr, align 8
  %arrayinit.begin = getelementptr inbounds [4 x i32], ptr %aretiny, i64 0, i64 0
  %0 = load ptr, ptr %args.addr, align 8
  %1 = load i32, ptr %0, align 4
  %call = call noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_0(ptr noundef nonnull align 1 dereferenceable(1) %istiny, i32 noundef %1)
  store i32 %call, ptr %arrayinit.begin, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %arrayinit.begin, i64 1
  %2 = load ptr, ptr %args.addr2, align 8
  %3 = load i64, ptr %2, align 8
  %call8 = call noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_1(ptr noundef nonnull align 1 dereferenceable(1) %istiny, i64 noundef %3)
  store i32 %call8, ptr %arrayinit.element, align 4
  %arrayinit.element9 = getelementptr inbounds i32, ptr %arrayinit.element, i64 1
  %4 = load ptr, ptr %args.addr4, align 8
  %5 = load float, ptr %4, align 4
  %call10 = call noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_2(ptr noundef nonnull align 1 dereferenceable(1) %istiny, float noundef %5)
  store i32 %call10, ptr %arrayinit.element9, align 4
  %arrayinit.element11 = getelementptr inbounds i32, ptr %arrayinit.element9, i64 1
  %6 = load ptr, ptr %args.addr6, align 8
  %7 = load i8, ptr %6, align 1
  %call12 = call noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_3(ptr noundef nonnull align 1 dereferenceable(1) %istiny, i8 noundef signext %7)
  store i32 %call12, ptr %arrayinit.element11, align 4
  %arrayidx = getelementptr inbounds [4 x i32], ptr %aretiny, i64 0, i64 0
  %8 = load i32, ptr %arrayidx, align 4
  ret i32 %8
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5cxx1424test_lambda_init_capture4testEv() #1 {
entry:
  %x = alloca i32, align 4
  %lambda1 = alloca %class.anon.0, align 4
  %lambda2 = alloca %class.anon.1, align 4
  store i32 0, ptr %x, align 4
  %0 = getelementptr inbounds %class.anon.0, ptr %lambda1, i32 0, i32 0
  %1 = load i32, ptr %x, align 4
  store i32 %1, ptr %0, align 4
  %2 = getelementptr inbounds %class.anon.1, ptr %lambda2, i32 0, i32 0
  %3 = load i32, ptr %x, align 4
  %call = call noundef i32 @"_ZZN5cxx1424test_lambda_init_capture4testEvENK3$_1clEi"(ptr noundef nonnull align 4 dereferenceable(4) %lambda1, i32 noundef %3)
  store i32 %call, ptr %2, align 4
  %call1 = call noundef i32 @"_ZZN5cxx1424test_lambda_init_capture4testEvENK3$_2clEv"(ptr noundef nonnull align 4 dereferenceable(4) %lambda2)
  ret i32 %call1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZN5cxx1424test_lambda_init_capture4testEvENK3$_1clEi"(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %b) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds %class.anon.0, ptr %this1, i32 0, i32 0
  %1 = load i32, ptr %0, align 4
  %2 = load i32, ptr %b.addr, align 4
  %add = add nsw i32 %1, %2
  ret i32 %add
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZN5cxx1424test_lambda_init_capture4testEvENK3$_2clEv"(ptr noundef nonnull align 4 dereferenceable(4) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds %class.anon.1, ptr %this1, i32 0, i32 0
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1426test_return_type_deduction1fERi(ptr noundef nonnull align 4 dereferenceable(4) %x) #2 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef nonnull align 4 dereferenceable(4) ptr @_ZN5cxx1426test_return_type_deduction1gERi(ptr noundef nonnull align 4 dereferenceable(4) %x) #2 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1426test_return_type_deduction4testEv() #2 {
entry:
  %x = alloca i32, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIiEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %x) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIlEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %x) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIfEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, float noundef %x) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  store ptr %this, ptr %this.addr, align 8
  store float %x, ptr %x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef i32 @"_ZZZN5cxx1424test_polymorphic_lambdas4testEvENK3$_0clIJilfcEEEDaDpOT_ENKUlT_E_clIcEEDaS6_"(ptr noundef nonnull align 1 dereferenceable(1) %this, i8 noundef signext %x) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %x, ptr %x.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 1
}

attributes #0 = { mustprogress norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_0(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %x)  alwaysinline#2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 0
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_1(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %x)  alwaysinline#2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 0
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_2(ptr noundef nonnull align 1 dereferenceable(1) %this, float noundef %x)  alwaysinline#2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  store ptr %this, ptr %this.addr, align 8
  store float %x, ptr %x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 0
}

define internal noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx14_3(ptr noundef nonnull align 1 dereferenceable(1) %this, i8 noundef signext %x)  alwaysinline#2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %x, ptr %x.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  ret i32 1
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
