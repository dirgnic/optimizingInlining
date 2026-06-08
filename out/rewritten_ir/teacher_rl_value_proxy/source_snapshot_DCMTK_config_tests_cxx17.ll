; ModuleID = './out/rewritten_ir/teacher_rl_value_proxy/source_snapshot_DCMTK_config_tests_cxx17.prepared.ll'
source_filename = "./source_snapshot/DCMTK/config/tests/cxx17.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::initializer_list" = type { ptr, i64 }
%"struct.cxx17::test_extended_aggregate_initialization::derived" = type { %"struct.cxx17::test_extended_aggregate_initialization::base1", %"struct.cxx17::test_extended_aggregate_initialization::base2", i32 }
%"struct.cxx17::test_extended_aggregate_initialization::base1" = type { i32, i32 }
%"struct.cxx17::test_extended_aggregate_initialization::base2" = type { i32 }
%"struct.cxx17::test_general_range_based_for_loop::range" = type { i8 }
%"struct.cxx17::test_non_type_auto_template_parameters::B" = type { i8 }
%"struct.cxx17::test_non_type_auto_template_parameters::B.0" = type { i8 }
%"struct.std::__1::pair" = type { i32, i32 }
%"struct.cxx17::test_structured_bindings::S" = type { i8, double }
%"struct.cxx17::test_general_range_based_for_loop::iter" = type { i32 }
%"struct.cxx17::test_general_range_based_for_loop::sentinel" = type { i32 }
%"struct.cxx17::test_template_argument_deduction_for_class_templates::pair" = type { i32, i32 }

@_ZGRN5cxx1725test_auto_brace_init_list3fooE_ = internal constant [1 x i32] [i32 5], align 4
@_ZN5cxx1725test_auto_brace_init_list3fooE = global %"class.std::initializer_list" { ptr @_ZGRN5cxx1725test_auto_brace_init_list3fooE_, i64 1 }, align 8
@_ZN5cxx1725test_auto_brace_init_list3barE = global i32 5, align 4
@_ZN5cxx1738test_extended_aggregate_initialization2d1E = global %"struct.cxx17::test_extended_aggregate_initialization::derived" zeroinitializer, align 4
@_ZN5cxx1738test_extended_aggregate_initialization2d2E = global %"struct.cxx17::test_extended_aggregate_initialization::derived" zeroinitializer, align 4
@__const._ZN5cxx1733test_general_range_based_for_loop1fEv.r = private unnamed_addr constant %"struct.cxx17::test_general_range_based_for_loop::range" undef, align 1
@_ZN5cxx1728test_enum_class_construction3fooE = global i8 42, align 1
@_ZN5cxx1738test_non_type_auto_template_parameters2b1E = global %"struct.cxx17::test_non_type_auto_template_parameters::B" zeroinitializer, align 1
@_ZN5cxx1738test_non_type_auto_template_parameters2b2E = global %"struct.cxx17::test_non_type_auto_template_parameters::B.0" zeroinitializer, align 1
@_ZN5cxx1724test_structured_bindings3arrE = global [2 x i32] [i32 1, i32 2], align 4
@_ZN5cxx1724test_structured_bindings2prE = global %"struct.std::__1::pair" { i32 1, i32 2 }, align 4
@_ZN5cxx1724test_structured_bindingsDC2x12y1EE = global [2 x i32] zeroinitializer, align 4
@_ZN5cxx1724test_structured_bindingsDC3xr13yr1EE = global ptr null, align 8
@_ZN5cxx1724test_structured_bindingsDC2x22y2EE = global %"struct.std::__1::pair" zeroinitializer, align 8
@_ZN5cxx1724test_structured_bindings2x2E = constant ptr @_ZN5cxx1724test_structured_bindingsDC2x22y2EE, align 8
@_ZN5cxx1724test_structured_bindings2y2E = constant ptr getelementptr (i8, ptr @_ZN5cxx1724test_structured_bindingsDC2x22y2EE, i64 4), align 8
@_ZN5cxx1724test_structured_bindingsDC3xr23yr2EE = global ptr null, align 8
@_ZN5cxx1724test_structured_bindings3xr2E = global ptr null, align 8
@_ZN5cxx1724test_structured_bindings3yr2E = global ptr null, align 8
@_ZN5cxx1724test_structured_bindingsDC2x32y3EE = internal global %"struct.cxx17::test_structured_bindings::S" zeroinitializer, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cxx17.cc, ptr null }]

; Function Attrs: mustprogress norecurse nounwind ssp uwtable
define noundef i32 @main() #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1750test_fallthrough_nodiscard_maybe_unused_attributes2f1Ev() #1 {
entry:
  ret i32 42
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1750test_fallthrough_nodiscard_maybe_unused_attributes2f2Ev() #1 {
entry:
  ret i32 42
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  store i32 1, ptr @_ZN5cxx1738test_extended_aggregate_initialization2d1E, align 4
  store i32 2, ptr getelementptr inbounds (%"struct.cxx17::test_extended_aggregate_initialization::derived", ptr @_ZN5cxx1738test_extended_aggregate_initialization2d1E, i64 0, i32 0, i32 1), align 4
  %call = call noundef ptr @_ZN5cxx1738test_extended_aggregate_initialization5base2C2Ev(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds (%"struct.cxx17::test_extended_aggregate_initialization::derived", ptr @_ZN5cxx1738test_extended_aggregate_initialization2d1E, i64 0, i32 1, i32 0))
  store i32 4, ptr getelementptr inbounds (%"struct.cxx17::test_extended_aggregate_initialization::derived", ptr @_ZN5cxx1738test_extended_aggregate_initialization2d1E, i64 0, i32 2), align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN5cxx1738test_extended_aggregate_initialization5base2C2Ev(ptr noundef nonnull returned align 4 dereferenceable(4) %this) unnamed_addr #3 align 2 {
entry:
  store i32 42, ptr %this, align 4
  ret ptr %this
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.1() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  store i32 0, ptr @_ZN5cxx1738test_extended_aggregate_initialization2d2E, align 4
  store i32 42, ptr getelementptr inbounds (%"struct.cxx17::test_extended_aggregate_initialization::derived", ptr @_ZN5cxx1738test_extended_aggregate_initialization2d2E, i64 0, i32 0, i32 1), align 4
  %call = call noundef ptr @_ZN5cxx1738test_extended_aggregate_initialization5base2C2Ev(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds (%"struct.cxx17::test_extended_aggregate_initialization::derived", ptr @_ZN5cxx1738test_extended_aggregate_initialization2d2E, i64 0, i32 1, i32 0))
  store i32 4, ptr getelementptr inbounds (%"struct.cxx17::test_extended_aggregate_initialization::derived", ptr @_ZN5cxx1738test_extended_aggregate_initialization2d2E, i64 0, i32 2), align 4
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef zeroext i1 @_ZN5cxx1733test_general_range_based_for_loopeqERKNS0_4iterERKNS0_8sentinelE(ptr noundef nonnull align 4 dereferenceable(4) %i, ptr noundef nonnull align 4 dereferenceable(4) %s) #1 {
entry:
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %s, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef zeroext i1 @_ZN5cxx1733test_general_range_based_for_loopneERKNS0_4iterERKNS0_8sentinelE(ptr noundef nonnull align 4 dereferenceable(4) %i, ptr noundef nonnull align 4 dereferenceable(4) %s) #1 {
entry:
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %s, align 4
  %cmp.i = icmp ne i32 %0, %1
  ret i1 %cmp.i
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5cxx1733test_general_range_based_for_loop1fEv() #4 {
entry:
  %__begin2 = alloca %"struct.cxx17::test_general_range_based_for_loop::iter", align 4
  %__end2 = alloca %"struct.cxx17::test_general_range_based_for_loop::sentinel", align 4
  store i32 0, ptr %__begin2, align 4
  store i32 5, ptr %__end2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call.i = call noundef zeroext i1 @_ZN5cxx1733test_general_range_based_for_loopeqERKNS0_4iterERKNS0_8sentinelE(ptr noundef nonnull align 4 dereferenceable(4) %__begin2, ptr noundef nonnull align 4 dereferenceable(4) %__end2)
  br i1 %call.i, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %0 = load i32, ptr %__begin2, align 4
  %inc.i = add nsw i32 %0, 1
  store i32 %inc.i, ptr %__begin2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1741test_selection_statement_with_initializer1fEv() #1 {
entry:
  ret i32 13
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1741test_selection_statement_with_initializer2f2Ev() #1 {
entry:
  %retval = alloca i32, align 4
  store i32 3, ptr %retval, align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: ssp uwtable
define void @_ZN5cxx1752test_template_argument_deduction_for_class_templates1fEv() #2 {
entry:
  %p = alloca %"struct.cxx17::test_template_argument_deduction_for_class_templates::pair", align 4
  %call.i = call noundef ptr @_ZN5cxx1752test_template_argument_deduction_for_class_templates4pairIijEC2Eij(ptr noundef nonnull align 4 dereferenceable(8) %p, i32 noundef 13, i32 noundef 42)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef nonnull align 4 dereferenceable(8) ptr @_ZN5cxx1724test_structured_bindings2f1Ev() #1 {
entry:
  ret ptr @_ZN5cxx1724test_structured_bindings3arrE
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef nonnull align 4 dereferenceable(8) ptr @_ZN5cxx1724test_structured_bindings2f2Ev() #1 {
entry:
  ret ptr @_ZN5cxx1724test_structured_bindings2prE
}

; Function Attrs: mustprogress nounwind ssp uwtable
define [2 x i64] @_ZN5cxx1724test_structured_bindings2f3Ev() #1 {
entry:
  %retval = alloca %"struct.cxx17::test_structured_bindings::S", align 8
  %bf.load = load i8, ptr %retval, align 8
  %bf.clear = and i8 %bf.load, -4
  store i8 %bf.clear, ptr %retval, align 8
  %y1 = getelementptr inbounds %"struct.cxx17::test_structured_bindings::S", ptr %retval, i64 0, i32 1
  store volatile double 0.000000e+00, ptr %y1, align 8
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.2() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5cxx1724test_structured_bindings2f1Ev()
  br label %arrayinit.body

arrayinit.body:                                   ; preds = %arrayinit.body, %entry
  %arrayinit.index = phi i64 [ 0, %entry ], [ %arrayinit.next, %arrayinit.body ]
  %0 = getelementptr inbounds i32, ptr @_ZN5cxx1724test_structured_bindingsDC2x12y1EE, i64 %arrayinit.index
  %arrayidx = getelementptr inbounds [2 x i32], ptr %call, i64 0, i64 %arrayinit.index
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %0, align 4
  %arrayinit.next = add nuw i64 %arrayinit.index, 1
  %arrayinit.done = icmp eq i64 %arrayinit.next, 2
  br i1 %arrayinit.done, label %arrayinit.end, label %arrayinit.body

arrayinit.end:                                    ; preds = %arrayinit.body
  ret void
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.3() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5cxx1724test_structured_bindings2f1Ev()
  store ptr %call, ptr @_ZN5cxx1724test_structured_bindingsDC3xr13yr1EE, align 8
  ret void
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.4() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5cxx1724test_structured_bindings2f2Ev()
  %0 = load i64, ptr %call, align 4
  store i64 %0, ptr @_ZN5cxx1724test_structured_bindingsDC2x22y2EE, align 8
  ret void
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.5() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5cxx1724test_structured_bindings2f2Ev()
  store ptr %call, ptr @_ZN5cxx1724test_structured_bindingsDC3xr23yr2EE, align 8
  ret void
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.6() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %0 = load ptr, ptr @_ZN5cxx1724test_structured_bindingsDC3xr23yr2EE, align 8
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB6v15007ILm0EiiEERNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERS5_(ptr noundef nonnull align 4 dereferenceable(8) %0) #8
  store ptr %call, ptr @_ZN5cxx1724test_structured_bindings3xr2E, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB6v15007ILm0EiiEERNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERS5_(ptr noundef nonnull align 4 dereferenceable(8) %__p) #1 {
entry:
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__110__get_pairILm0EE3getB6v15007IiiEERT_RNS_4pairIS3_T0_EE(ptr noundef nonnull align 4 dereferenceable(8) %__p) #8
  ret ptr %call
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.7() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %0 = load ptr, ptr @_ZN5cxx1724test_structured_bindingsDC3xr23yr2EE, align 8
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB6v15007ILm1EiiEERNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERS5_(ptr noundef nonnull align 4 dereferenceable(8) %0) #8
  store ptr %call, ptr @_ZN5cxx1724test_structured_bindings3yr2E, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB6v15007ILm1EiiEERNS_13tuple_elementIXT_ENS_4pairIT0_T1_EEE4typeERS5_(ptr noundef nonnull align 4 dereferenceable(8) %__p) #1 {
entry:
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__110__get_pairILm1EE3getB6v15007IiiEERT0_RNS_4pairIT_S3_EE(ptr noundef nonnull align 4 dereferenceable(8) %__p) #8
  ret ptr %call
}

; Function Attrs: ssp uwtable
define internal void @__cxx_global_var_init.8() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  %call = call [2 x i64] @_ZN5cxx1724test_structured_bindings2f3Ev()
  %call.elt = extractvalue [2 x i64] %call, 0
  store i64 %call.elt, ptr @_ZN5cxx1724test_structured_bindingsDC2x32y3EE, align 8
  %call.elt1 = extractvalue [2 x i64] %call, 1
  store i64 %call.elt1, ptr getelementptr inbounds (%"struct.cxx17::test_structured_bindings::S", ptr @_ZN5cxx1724test_structured_bindingsDC2x32y3EE, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZN5cxx1721test_inline_variables1gIiEET_S2_(i32 noundef %0) #1 {
entry:
  ret i32 5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__110__get_pairILm0EE3getB6v15007IiiEERT_RNS_4pairIS3_T0_EE(ptr noundef nonnull align 4 dereferenceable(8) %__p) #1 align 2 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__110__get_pairILm1EE3getB6v15007IiiEERT0_RNS_4pairIT_S3_EE(ptr noundef nonnull align 4 dereferenceable(8) %__p) #1 align 2 {
entry:
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %__p, i64 0, i32 1
  ret ptr %second
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN5cxx1752test_template_argument_deduction_for_class_templates4pairIijEC2Eij(ptr noundef nonnull returned align 4 dereferenceable(8) %this, i32 noundef %p1, i32 noundef %p2) unnamed_addr #3 align 2 {
entry:
  store i32 %p1, ptr %this, align 4
  %m2 = getelementptr inbounds %"struct.cxx17::test_template_argument_deduction_for_class_templates::pair", ptr %this, i64 0, i32 1
  store i32 %p2, ptr %m2, align 4
  ret ptr %this
}

; Function Attrs: ssp uwtable
define internal void @_GLOBAL__sub_I_cxx17.cc() #2 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.3()
  call void @__cxx_global_var_init.4()
  call void @__cxx_global_var_init.5()
  call void @__cxx_global_var_init.6()
  call void @__cxx_global_var_init.7()
  call void @__cxx_global_var_init.8()
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_0() #6 {
entry:
  ret i32 42
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_1() #6 {
entry:
  ret i32 42
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_2() #6 {
entry:
  ret i32 42
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_3() #6 {
entry:
  ret i32 42
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_4() #6 {
entry:
  ret i32 42
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef zeroext i1 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_5(ptr noundef nonnull align 4 dereferenceable(4) %i, ptr noundef nonnull align 4 dereferenceable(4) %s) #6 {
entry:
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %s, align 4
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef zeroext i1 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_8(ptr noundef nonnull align 4 dereferenceable(4) %i, ptr noundef nonnull align 4 dereferenceable(4) %s) #6 {
entry:
  %call = call noundef zeroext i1 @_ZN5cxx1733test_general_range_based_for_loopeqERKNS0_4iterERKNS0_8sentinelE(ptr noundef nonnull align 4 dereferenceable(4) %i, ptr noundef nonnull align 4 dereferenceable(4) %s)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_11() #6 {
entry:
  ret i32 13
}

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i32 @pc_inline_source_snapshot_DCMTK_config_tests_cxx17_12() #6 {
entry:
  ret i32 13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

attributes #0 = { mustprogress norecurse nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { alwaysinline mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
