; ModuleID = './source_snapshot/public_repos/inih/cpp/INIReader.cpp'
source_filename = "./source_snapshot/public_repos/inih/cpp/INIReader.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"struct.std::__1::piecewise_construct_t" = type { i8 }
%class.INIReader = type { i32, %"class.std::__1::map" }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { ptr, %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__tree_end_node" = type { ptr }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { i64 }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.4" }
%"class.std::__1::__compressed_pair.4" = type { %"struct.std::__1::__compressed_pair_elem.5" }
%"struct.std::__1::__compressed_pair_elem.5" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"class.std::__1::__map_const_iterator" = type { %"class.std::__1::__tree_const_iterator" }
%"class.std::__1::__tree_const_iterator" = type { ptr }
%"struct.std::__1::pair" = type { %"class.std::__1::basic_string", %"class.std::__1::basic_string" }
%"class.std::__1::__wrap_iter" = type { ptr }
%class.anon.26 = type { i8 }
%class.anon = type { i8 }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair.10" }
%"class.std::__1::__compressed_pair.10" = type { %"struct.std::__1::__compressed_pair_elem.11" }
%"struct.std::__1::__compressed_pair_elem.11" = type { ptr }
%"class.std::__1::set" = type { %"class.std::__1::__tree.16" }
%"class.std::__1::__tree.16" = type { ptr, %"class.std::__1::__compressed_pair.17", %"class.std::__1::__compressed_pair.22" }
%"class.std::__1::__compressed_pair.17" = type { %"struct.std::__1::__compressed_pair_elem" }
%"class.std::__1::__compressed_pair.22" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::pair.24" = type <{ %"class.std::__1::__tree_const_iterator.25", i8, [7 x i8] }>
%"class.std::__1::__tree_const_iterator.25" = type { ptr }
%"struct.std::__1::pair.29" = type <{ %"class.std::__1::__tree_iterator", i8, [7 x i8] }>
%"class.std::__1::__tree_iterator" = type { ptr }
%"struct.std::__1::__uninitialized_size_tag" = type { i8 }
%"class.std::__1::allocator.7" = type { i8 }
%"struct.std::__1::pair.40" = type <{ %"class.std::__1::__tree_iterator.41", i8, [7 x i8] }>
%"class.std::__1::__tree_iterator.41" = type { ptr }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf" }
%"class.std::__1::__tuple_leaf" = type { ptr }
%"class.std::__1::tuple.43" = type { i8 }
%"class.std::__1::__map_value_compare" = type { i8 }
%"struct.std::__1::less" = type { i8 }
%"struct.std::__1::__value_init_tag" = type { i8 }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8, [7 x i8] }>
%"class.std::__1::__tree_node" = type { %"class.std::__1::__tree_node_base.base", %"struct.std::__1::__value_type" }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8 }>
%"struct.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"struct.std::__1::basic_string<char>::__short" = type { [23 x i8], [0 x i8], i8 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::basic_string_view" = type { ptr, i64 }
%"struct.std::__1::__less" = type { i8 }
%"class.std::__1::__tree_node.28" = type { %"class.std::__1::__tree_node_base.base", %"class.std::__1::basic_string" }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.31" }
%"class.std::__1::__compressed_pair.31" = type { %"struct.std::__1::__compressed_pair_elem.32", %"struct.std::__1::__compressed_pair_elem.33" }
%"struct.std::__1::__compressed_pair_elem.32" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.33" = type { %"class.std::__1::__tree_node_destructor" }
%"class.std::__1::__tree_node_destructor" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::__1::__transaction" = type <{ %"class.std::__1::vector<std::__1::string>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<std::__1::string>::__destroy_vector" = type { ptr }
%"struct.std::__1::input_iterator_tag" = type { i8 }
%"struct.std::__1::bidirectional_iterator_tag" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"struct.std::__1::vector<std::__1::string>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::_AllocatorDestroyRangeReverse" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator" = type { ptr, ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.34" }
%"class.std::__1::__compressed_pair.34" = type { %"struct.std::__1::__compressed_pair_elem.11", %"struct.std::__1::__compressed_pair_elem.35" }
%"struct.std::__1::__compressed_pair_elem.35" = type { ptr }
%"class.std::__1::_AllocatorDestroyRangeReverse.36" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator.37" = type { [8 x i8], %"class.std::__1::reverse_iterator", %"class.std::__1::reverse_iterator" }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::pair.38" = type { ptr, ptr }
%"struct.std::__1::pair.39" = type { ptr, ptr }
%"class.std::__1::unique_ptr.44" = type { %"class.std::__1::__compressed_pair.45" }
%"class.std::__1::__compressed_pair.45" = type { %"struct.std::__1::__compressed_pair_elem.46", %"struct.std::__1::__compressed_pair_elem.47" }
%"struct.std::__1::__compressed_pair_elem.46" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.47" = type { %"class.std::__1::__tree_node_destructor.48" }
%"class.std::__1::__tree_node_destructor.48" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_indices.50" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_types.51" = type { i8 }

@.str = private unnamed_addr constant [21 x i8] c"parse error on line \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"; missing ']' or '='?\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unable to open file\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"unknown error \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTISt20bad_array_new_length = external constant ptr
@.str.16 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZNSt3__1L19piecewise_constructE = internal constant %"struct.std::__1::piecewise_construct_t" undef, align 1

; Function Attrs: ssp uwtable
define noundef ptr @_ZN9INIReaderC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %filename) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  %0 = load ptr, ptr %filename.addr, align 8
  %call2 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %call3 = invoke i32 @ini_parse(ptr noundef %call2, ptr noundef @_ZN9INIReader12ValueHandlerEPvPKcS2_S2_, ptr noundef %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_error = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  store i32 %call3, ptr %_error, align 8
  ret ptr %this1

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call4 = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

declare i32 @ini_parse(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN9INIReader12ValueHandlerEPvPKcS2_S2_(ptr noundef %user, ptr noundef %section, ptr noundef %name, ptr noundef %value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %user.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %reader = alloca ptr, align 8
  %key = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp1 = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %user, ptr %user.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %value, ptr %value.addr, align 8
  %0 = load ptr, ptr %name.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %user.addr, align 8
  store ptr %1, ptr %reader, align 8
  %2 = load ptr, ptr %section.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef %2)
  %3 = load ptr, ptr %name.addr, align 8
  %call2 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp1, ptr noundef %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  invoke void @_ZN9INIReader7MakeKeyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr sret(%"class.std::__1::basic_string") align 8 %key, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp1)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %call5 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp1) #13
  %call7 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %4 = load ptr, ptr %reader, align 8
  %_values = getelementptr inbounds %class.INIReader, ptr %4, i32 0, i32 1
  %call11 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEixERSA_(ptr noundef nonnull align 8 dereferenceable(24) %_values, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont4
  %call12 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %call11) #13
  %cmp = icmp ugt i64 %call12, 0
  br i1 %cmp, label %if.then13, label %if.end19

if.then13:                                        ; preds = %invoke.cont10
  %5 = load ptr, ptr %reader, align 8
  %_values14 = getelementptr inbounds %class.INIReader, ptr %5, i32 0, i32 1
  %call16 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEixERSA_(ptr noundef nonnull align 8 dereferenceable(24) %_values14, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont15 unwind label %lpad9

invoke.cont15:                                    ; preds = %if.then13
  %call18 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(24) %call16, ptr noundef @.str.15)
          to label %invoke.cont17 unwind label %lpad9

invoke.cont17:                                    ; preds = %invoke.cont15
  br label %if.end19

lpad:                                             ; preds = %if.end
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad3:                                            ; preds = %invoke.cont
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp1) #13
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad3, %lpad
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad9:                                            ; preds = %invoke.cont22, %cond.end, %invoke.cont15, %if.then13, %invoke.cont4
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  store ptr %13, ptr %exn.slot, align 8
  %14 = extractvalue { ptr, i32 } %12, 1
  store i32 %14, ptr %ehselector.slot, align 4
  %call28 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  br label %eh.resume

if.end19:                                         ; preds = %invoke.cont17, %invoke.cont10
  %15 = load ptr, ptr %value.addr, align 8
  %tobool20 = icmp ne ptr %15, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end19
  %16 = load ptr, ptr %value.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %16, %cond.true ], [ @.str.4, %cond.false ]
  %17 = load ptr, ptr %reader, align 8
  %_values21 = getelementptr inbounds %class.INIReader, ptr %17, i32 0, i32 1
  %call23 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEixERSA_(ptr noundef nonnull align 8 dereferenceable(24) %_values21, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont22 unwind label %lpad9

invoke.cont22:                                    ; preds = %cond.end
  %call25 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(24) %call23, ptr noundef %cond)
          to label %invoke.cont24 unwind label %lpad9

invoke.cont24:                                    ; preds = %invoke.cont22
  store i32 1, ptr %retval, align 4
  %call26 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  br label %return

return:                                           ; preds = %invoke.cont24, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18

eh.resume:                                        ; preds = %lpad9, %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val29 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val29
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %filename) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_0(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN9INIReaderC2EPKcm(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef %buffer, i64 noundef %buffer_size) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buffer_size.addr = alloca i64, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %buffer_size, ptr %buffer_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  %0 = load ptr, ptr %buffer.addr, align 8
  %1 = load i64, ptr %buffer_size.addr, align 8
  %call2 = invoke i32 @ini_parse_string_length(ptr noundef %0, i64 noundef %1, ptr noundef @_ZN9INIReader12ValueHandlerEPvPKcS2_S2_, ptr noundef %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_error = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  store i32 %call2, ptr %_error, align 8
  ret ptr %this1

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val4 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val4
}

declare i32 @ini_parse_string_length(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: ssp uwtable
define noundef ptr @_ZN9INIReaderC1EPKcm(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef %buffer, i64 noundef %buffer_size) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buffer_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %buffer_size, ptr %buffer_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %1 = load i64, ptr %buffer_size.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_1(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %0, i64 noundef %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i32 @_ZNK9INIReader10ParseErrorEv(ptr noundef nonnull align 8 dereferenceable(32) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_error = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %_error, align 8
  ret i32 %0
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZNK9INIReader17ParseErrorMessageEv(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(32) %this) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp15 = alloca %"class.std::__1::basic_string", align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_error = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %_error, align 8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_error3 = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  %1 = load i32, ptr %_error3, align 8
  call void @_ZNSt3__19to_stringEi(ptr sret(%"class.std::__1::basic_string") align 8 %ref.tmp2, i32 noundef %1)
  invoke void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_(ptr sret(%"class.std::__1::basic_string") align 8 %ref.tmp, ptr noundef @.str, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  invoke void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_(ptr sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.1)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call7 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp2) #13
  br label %return

lpad:                                             ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad4:                                            ; preds = %invoke.cont
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad4, %lpad
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp2) #13
  br label %eh.resume

if.end:                                           ; preds = %entry
  %_error9 = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  %8 = load i32, ptr %_error9, align 8
  switch i32 %8, label %sw.epilog [
    i32 -2, label %sw.bb
    i32 -1, label %sw.bb11
    i32 0, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  %call10 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef @.str.2)
  br label %return

sw.bb11:                                          ; preds = %if.end
  %call12 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef @.str.3)
  br label %return

sw.bb13:                                          ; preds = %if.end
  %call14 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef @.str.4)
  br label %return

sw.epilog:                                        ; preds = %if.end
  %_error16 = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  %9 = load i32, ptr %_error16, align 8
  call void @_ZNSt3__19to_stringEi(ptr sret(%"class.std::__1::basic_string") align 8 %ref.tmp15, i32 noundef %9)
  invoke void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_(ptr sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef @.str.5, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp15)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %sw.epilog
  %call19 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp15) #13
  br label %return

lpad17:                                           ; preds = %sw.epilog
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  %call21 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp15) #13
  br label %eh.resume

return:                                           ; preds = %invoke.cont18, %sw.bb13, %sw.bb11, %sw.bb, %invoke.cont5
  ret void

eh.resume:                                        ; preds = %lpad17, %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val22 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val22
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_PKS6_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef %__rhs) #4 {
entry:
  %result.ptr = alloca ptr, align 8
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %1 = load ptr, ptr %__rhs.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1)
  %call1 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %call) #13
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_OS9_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef %__lhs, ptr noundef nonnull align 8 dereferenceable(24) %__rhs) #4 {
entry:
  %result.ptr = alloca ptr, align 8
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__rhs.addr, align 8
  %1 = load ptr, ptr %__lhs.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, ptr noundef %1)
  %call1 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %call) #13
  ret void
}

declare void @_ZNSt3__19to_stringEi(ptr sret(%"class.std::__1::basic_string") align 8, i32 noundef) #2

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca ptr, align 8
  %key = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::__map_const_iterator", align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %default_value, ptr %default_value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  call void @_ZN9INIReader7MakeKeyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr sret(%"class.std::__1::basic_string") align 8 %key, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call = invoke noundef i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE5countB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(24) %_values, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tobool = icmp ne i64 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont
  %_values2 = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call4 = invoke i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(24) %_values2, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %cond.true
  %coerce.dive = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %ref.tmp, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call4 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive5, align 8
  %call7 = invoke noundef ptr @_ZNKSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont3
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %call7, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont
  %2 = load ptr, ptr %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %invoke.cont6
  %cond-lvalue = phi ptr [ %second, %invoke.cont6 ], [ %2, %cond.false ]
  %call9 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %cond-lvalue)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %cond.end
  %call10 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  ret void

lpad:                                             ; preds = %cond.end, %invoke.cont3, %cond.true, %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val12 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val12
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN9INIReader7MakeKeyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp3 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp7 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp11 = alloca %class.anon.26, align 1
  %coerce = alloca %"class.std::__1::__wrap_iter", align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i1 false, ptr %nrvo, align 1
  %0 = load ptr, ptr %section.addr, align 8
  call void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_(ptr sret(%"class.std::__1::basic_string") align 8 %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef @.str.14)
  %1 = load ptr, ptr %name.addr, align 8
  invoke void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_(ptr sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call2 = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call4 = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp3, i32 0, i32 0
  %coerce.val.ip6 = inttoptr i64 %call4 to ptr
  store ptr %coerce.val.ip6, ptr %coerce.dive5, align 8
  %call8 = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %coerce.dive9 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp7, i32 0, i32 0
  %coerce.val.ip10 = inttoptr i64 %call8 to ptr
  store ptr %coerce.val.ip10, ptr %coerce.dive9, align 8
  %coerce.dive12 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive12, align 8
  %coerce.val.pi = ptrtoint ptr %2 to i64
  %coerce.dive13 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp3, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive13, align 8
  %coerce.val.pi14 = ptrtoint ptr %3 to i64
  %coerce.dive15 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp7, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive15, align 8
  %coerce.val.pi16 = ptrtoint ptr %4 to i64
  %call19 = invoke i64 @"_ZNSt3__19transformB6v15007INS_11__wrap_iterIPcEES3_ZN9INIReader7MakeKeyERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESC_E3$_1EET0_T_SF_SE_T1_"(i64 %coerce.val.pi, i64 %coerce.val.pi14, i64 %coerce.val.pi16)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont
  %coerce.dive20 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %coerce, i32 0, i32 0
  %coerce.val.ip21 = inttoptr i64 %call19 to ptr
  store ptr %coerce.val.ip21, ptr %coerce.dive20, align 8
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

lpad:                                             ; preds = %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call1 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad17:                                           ; preds = %invoke.cont
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  %call23 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %eh.resume

nrvo.unused:                                      ; preds = %invoke.cont18
  %call22 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %invoke.cont18
  ret void

eh.resume:                                        ; preds = %lpad17, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val24 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val24
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE5countB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__k) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE14__count_uniqueIS7_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret i64 %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE4findB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__k) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::__map_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_const_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE4findIS7_EENS_21__tree_const_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  %call3 = call noundef ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEC1B6v15007ESE_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #13
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive4, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %2 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__i_)
  %call2 = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNKSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %call)
  %call3 = call noundef ptr @_ZNSt3__114pointer_traitsIPKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE10pointer_toB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(48) %call2) #13
  ret ptr %call3
}

declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(ptr noundef nonnull returned align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress ssp uwtable
define void @_ZNK9INIReader9GetStringERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, ptr noundef nonnull align 8 dereferenceable(24) %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca ptr, align 8
  %str = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %default_value, ptr %default_value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8 %str, ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call4 = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %str) #13
  br i1 %call4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont
  %2 = load ptr, ptr %default_value.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %2, %cond.true ], [ %str, %cond.false ]
  %call7 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %cond-lvalue)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %cond.end
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %str) #13
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad5:                                            ; preds = %cond.end
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %str) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad5, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %cmp = icmp eq i64 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define noundef i64 @_ZNK9INIReader10GetIntegerERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_l(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 noundef %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %valstr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %value = alloca ptr, align 8
  %end = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %default_value, ptr %default_value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8 %valstr, ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call4 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  store ptr %call4, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %call7 = invoke i64 @strtol(ptr noundef %2, ptr noundef %end, i32 noundef 0)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  store i64 %call7, ptr %n, align 8
  %3 = load ptr, ptr %end, align 8
  %4 = load ptr, ptr %value, align 8
  %cmp = icmp ugt ptr %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont6
  %5 = load i64, ptr %n, align 8
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont6
  %6 = load i64, ptr %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ]
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  ret i64 %cond

lpad:                                             ; preds = %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad5:                                            ; preds = %invoke.cont
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad5, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define noundef i64 @_ZNK9INIReader12GetInteger64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_x(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 noundef %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %valstr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %value = alloca ptr, align 8
  %end = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %default_value, ptr %default_value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8 %valstr, ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call4 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  store ptr %call4, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %call7 = invoke i64 @strtoll(ptr noundef %2, ptr noundef %end, i32 noundef 0)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  store i64 %call7, ptr %n, align 8
  %3 = load ptr, ptr %end, align 8
  %4 = load ptr, ptr %value, align 8
  %cmp = icmp ugt ptr %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont6
  %5 = load i64, ptr %n, align 8
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont6
  %6 = load i64, ptr %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ]
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  ret i64 %cond

lpad:                                             ; preds = %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad5:                                            ; preds = %invoke.cont
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad5, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

declare i64 @strtoll(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define noundef i64 @_ZNK9INIReader11GetUnsignedERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_m(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 noundef %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %valstr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %value = alloca ptr, align 8
  %end = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %default_value, ptr %default_value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8 %valstr, ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call4 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  store ptr %call4, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %call7 = invoke i64 @strtoul(ptr noundef %2, ptr noundef %end, i32 noundef 0)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  store i64 %call7, ptr %n, align 8
  %3 = load ptr, ptr %end, align 8
  %4 = load ptr, ptr %value, align 8
  %cmp = icmp ugt ptr %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont6
  %5 = load i64, ptr %n, align 8
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont6
  %6 = load i64, ptr %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ]
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  ret i64 %cond

lpad:                                             ; preds = %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad5:                                            ; preds = %invoke.cont
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad5, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define noundef i64 @_ZNK9INIReader13GetUnsigned64ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_y(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, i64 noundef %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca i64, align 8
  %valstr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %value = alloca ptr, align 8
  %end = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %default_value, ptr %default_value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8 %valstr, ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call4 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  store ptr %call4, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %call7 = invoke i64 @strtoull(ptr noundef %2, ptr noundef %end, i32 noundef 0)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  store i64 %call7, ptr %n, align 8
  %3 = load ptr, ptr %end, align 8
  %4 = load ptr, ptr %value, align 8
  %cmp = icmp ugt ptr %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont6
  %5 = load i64, ptr %n, align 8
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont6
  %6 = load i64, ptr %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %5, %cond.true ], [ %6, %cond.false ]
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  ret i64 %cond

lpad:                                             ; preds = %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad5:                                            ; preds = %invoke.cont
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad5, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define noundef double @_ZNK9INIReader7GetRealERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_d(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, double noundef %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca double, align 8
  %valstr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %value = alloca ptr, align 8
  %end = alloca ptr, align 8
  %n = alloca double, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store double %default_value, ptr %default_value.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8 %valstr, ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call4 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  store ptr %call4, ptr %value, align 8
  %2 = load ptr, ptr %value, align 8
  %call7 = invoke double @"\01_strtod"(ptr noundef %2, ptr noundef %end)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  store double %call7, ptr %n, align 8
  %3 = load ptr, ptr %end, align 8
  %4 = load ptr, ptr %value, align 8
  %cmp = icmp ugt ptr %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont6
  %5 = load double, ptr %n, align 8
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont6
  %6 = load double, ptr %default_value.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %5, %cond.true ], [ %6, %cond.false ]
  %call8 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  ret double %cond

lpad:                                             ; preds = %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad5:                                            ; preds = %invoke.cont
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad5, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

declare double @"\01_strtod"(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_b(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name, i1 noundef zeroext %default_value) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %default_value.addr = alloca i8, align 1
  %valstr = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp5 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp9 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp13 = alloca %class.anon, align 1
  %coerce = alloca %"class.std::__1::__wrap_iter", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %frombool = zext i1 %default_value to i8
  store i8 %frombool, ptr %default_value.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZNK9INIReader3GetERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_S8_(ptr sret(%"class.std::__1::basic_string") align 8 %valstr, ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %call4 = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call4 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call6 = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  %coerce.dive7 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp5, i32 0, i32 0
  %coerce.val.ip8 = inttoptr i64 %call6 to ptr
  store ptr %coerce.val.ip8, ptr %coerce.dive7, align 8
  %call10 = call i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  %coerce.dive11 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp9, i32 0, i32 0
  %coerce.val.ip12 = inttoptr i64 %call10 to ptr
  store ptr %coerce.val.ip12, ptr %coerce.dive11, align 8
  %coerce.dive14 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive14, align 8
  %coerce.val.pi = ptrtoint ptr %2 to i64
  %coerce.dive15 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp5, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive15, align 8
  %coerce.val.pi16 = ptrtoint ptr %3 to i64
  %coerce.dive17 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %agg.tmp9, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive17, align 8
  %coerce.val.pi18 = ptrtoint ptr %4 to i64
  %call21 = invoke i64 @"_ZNSt3__19transformB6v15007INS_11__wrap_iterIPcEES3_ZNK9INIReader10GetBooleanERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESC_bE3$_0EET0_T_SF_SE_T1_"(i64 %coerce.val.pi, i64 %coerce.val.pi16, i64 %coerce.val.pi18)
          to label %invoke.cont20 unwind label %lpad19

invoke.cont20:                                    ; preds = %invoke.cont
  %coerce.dive22 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %coerce, i32 0, i32 0
  %coerce.val.ip23 = inttoptr i64 %call21 to ptr
  store ptr %coerce.val.ip23, ptr %coerce.dive22, align 8
  %call24 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.6) #13
  br i1 %call24, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %invoke.cont20
  %call25 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.7) #13
  br i1 %call25, label %if.then, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %call27 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.8) #13
  br i1 %call27, label %if.then, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %call29 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.9) #13
  br i1 %call29, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false28, %lor.lhs.false26, %lor.lhs.false, %invoke.cont20
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad19:                                           ; preds = %invoke.cont
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  %call40 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  br label %eh.resume

if.else:                                          ; preds = %lor.lhs.false28
  %call30 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.10) #13
  br i1 %call30, label %if.then37, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.else
  %call32 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.11) #13
  br i1 %call32, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  %call34 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.12) #13
  br i1 %call34, label %if.then37, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %call36 = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %valstr, ptr noundef @.str.13) #13
  br i1 %call36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %lor.lhs.false35, %lor.lhs.false33, %lor.lhs.false31, %if.else
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else38:                                        ; preds = %lor.lhs.false35
  %11 = load i8, ptr %default_value.addr, align 1
  %tobool = trunc i8 %11 to i1
  store i1 %tobool, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then37, %if.then
  %call39 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %valstr) #13
  %12 = load i1, ptr %retval, align 1
  ret i1 %12

eh.resume:                                        ; preds = %lpad19, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val41 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val41
}

; Function Attrs: mustprogress ssp uwtable
define internal i64 @"_ZNSt3__19transformB6v15007INS_11__wrap_iterIPcEES3_ZNK9INIReader10GetBooleanERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESC_bE3$_0EET0_T_SF_SE_T1_"(i64 %__first.coerce, i64 %__last.coerce, i64 %__result.coerce) #4 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__first = alloca %"class.std::__1::__wrap_iter", align 8
  %__last = alloca %"class.std::__1::__wrap_iter", align 8
  %__result = alloca %"class.std::__1::__wrap_iter", align 8
  %__op = alloca %class.anon, align 1
  %ref.tmp = alloca i8, align 1
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__result, i32 0, i32 0
  %coerce.val.ip4 = inttoptr i64 %__result.coerce to ptr
  store ptr %coerce.val.ip4, ptr %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPcEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__first, ptr noundef nonnull align 8 dereferenceable(8) %__last) #13
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__111__wrap_iterIPcEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first) #13
  %0 = load i8, ptr %call5, align 1
  store i8 %0, ptr %ref.tmp, align 1
  %call6 = call noundef zeroext i8 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_2(ptr noundef nonnull align 1 dereferenceable(1) %__op, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
  %call7 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__111__wrap_iterIPcEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__result) #13
  store i8 %call6, ptr %call7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPcEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first) #13
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPcEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__result) #13
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__result, i64 8, i1 false)
  %coerce.dive10 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive10, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNSt3__111__wrap_iterIPcEC1B6v15007EPKvS1_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %this1, ptr noundef %call) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %call2
  %call3 = call noundef ptr @_ZNSt3__111__wrap_iterIPcEC1B6v15007EPKvS1_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %this1, ptr noundef %add.ptr) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_(ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef %__rhs) #3 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i1, align 1
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  %__rhs_len = alloca i64, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__rhs.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  %1 = load ptr, ptr %__rhs.addr, align 8
  %call = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %1) #13
  store i64 %call, ptr %__rhs_len, align 8
  %2 = load i64, ptr %__rhs_len, align 8
  %3 = load ptr, ptr %__lhs.addr, align 8
  %call1 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %cmp2 = icmp ne i64 %2, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %__lhs.addr, align 8
  %5 = load ptr, ptr %__rhs.addr, align 8
  %6 = load i64, ptr %__rhs_len, align 8
  %call3 = invoke noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 0, i64 noundef -1, ptr noundef %5, i64 noundef %6)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.end
  %cmp4 = icmp eq i32 %call3, 0
  store i1 %cmp4, ptr %retval, align 1
  br label %return

return:                                           ; preds = %invoke.cont, %if.then
  %7 = load i1, ptr %retval, align 1
  ret i1 %7

terminate.lpad:                                   ; preds = %if.end
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  call void @__clang_call_terminate(ptr %9) #14
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZNK9INIReader8SectionsEv(ptr noalias sret(%"class.std::__1::vector") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(32) %this) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %sectionSet = alloca %"class.std::__1::set", align 8
  %it = alloca %"class.std::__1::__map_const_iterator", align 8
  %ref.tmp = alloca %"class.std::__1::__map_const_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %pos = alloca i64, align 8
  %ref.tmp13 = alloca %"class.std::__1::basic_string", align 8
  %coerce = alloca %"struct.std::__1::pair.24", align 8
  %agg.tmp = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp28 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sectionSet) #13
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call2 = call i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %it, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont23, %entry
  %_values4 = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call5 = call i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values4) #13
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %ref.tmp, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive6, i32 0, i32 0
  %coerce.val.ip8 = inttoptr i64 %call5 to ptr
  store ptr %coerce.val.ip8, ptr %coerce.dive7, align 8
  %call9 = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEESH_(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  br i1 %call9, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %call11 = invoke noundef ptr @_ZNKSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %for.body
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %call11, i32 0, i32 0
  %call12 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm(ptr noundef nonnull align 8 dereferenceable(24) %first, i8 noundef signext 61, i64 noundef 0) #13
  store i64 %call12, ptr %pos, align 8
  %0 = load i64, ptr %pos, align 8
  %cmp = icmp ne i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont10
  %call15 = invoke noundef ptr @_ZNKSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %if.then
  %first16 = getelementptr inbounds %"struct.std::__1::pair", ptr %call15, i32 0, i32 0
  %1 = load i64, ptr %pos, align 8
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB6v15007Emm(ptr sret(%"class.std::__1::basic_string") align 8 %ref.tmp13, ptr noundef nonnull align 8 dereferenceable(24) %first16, i64 noundef 0, i64 noundef %1)
          to label %invoke.cont17 unwind label %lpad

invoke.cont17:                                    ; preds = %invoke.cont14
  %call20 = invoke [2 x i64] @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE6insertB6v15007EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %sectionSet, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp13)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont17
  store [2 x i64] %call20, ptr %coerce, align 8
  %call21 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp13) #13
  br label %if.end

lpad:                                             ; preds = %for.end, %for.inc, %invoke.cont14, %if.then, %for.body, %for.cond
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad18:                                           ; preds = %invoke.cont17
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call22 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp13) #13
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont19, %invoke.cont10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont23 unwind label %lpad

invoke.cont23:                                    ; preds = %for.inc
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %invoke.cont
  %call25 = call i64 @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sectionSet) #13
  %coerce.dive26 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip27 = inttoptr i64 %call25 to ptr
  store ptr %coerce.val.ip27, ptr %coerce.dive26, align 8
  %call29 = call i64 @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sectionSet) #13
  %coerce.dive30 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp28, i32 0, i32 0
  %coerce.val.ip31 = inttoptr i64 %call29 to ptr
  store ptr %coerce.val.ip31, ptr %coerce.dive30, align 8
  %coerce.dive32 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp, i32 0, i32 0
  %8 = load ptr, ptr %coerce.dive32, align 8
  %coerce.val.pi = ptrtoint ptr %8 to i64
  %coerce.dive33 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp28, i32 0, i32 0
  %9 = load ptr, ptr %coerce.dive33, align 8
  %coerce.val.pi34 = ptrtoint ptr %9 to i64
  %call36 = invoke noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1INS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEEET_NS_9enable_ifIXaasr27__is_cpp17_forward_iteratorISG_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISG_E9referenceEEE5valueESG_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, i64 %coerce.val.pi, i64 %coerce.val.pi34)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %for.end
  %call37 = call noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sectionSet) #13
  ret void

ehcleanup:                                        ; preds = %lpad18, %lpad
  %call38 = call noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %sectionSet) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val39 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val39
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__map_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_const_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call3 = call noundef ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEC1B6v15007ESE_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #13
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive4, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEESH_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__y.addr, align 8
  %__i_1 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %1, i32 0, i32 0
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEESF_(ptr noundef nonnull align 8 dereferenceable(8) %__i_, ptr noundef nonnull align 8 dereferenceable(8) %__i_1)
  ret i1 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__map_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_const_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call3 = call noundef ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEC1B6v15007ESE_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #13
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive4, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext, i64 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE6insertB6v15007EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v) #4 align 2 {
entry:
  %retval = alloca %"struct.std::__1::pair.24", align 8
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::pair.29", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::set", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__v.addr, align 8
  %call = call [2 x i64] @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE15__insert_uniqueB6v15007EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 8 dereferenceable(24) %0)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %call2 = call noundef ptr @_ZNSt3__14pairINS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC1B6v15007INS_15__tree_iteratorIS7_SB_lEEbLS9_0EEEONS0_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(9) %retval, ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp) #13
  %1 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB6v15007Emm(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__pos, i64 noundef %__n) #4 align 2 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__pos.addr = alloca i64, align 8
  %__n.addr = alloca i64, align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__pos, ptr %__pos.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__pos.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__i_)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::set", ptr %this1, i32 0, i32 0
  %call = call i64 @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call3 = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007ENS_15__tree_iteratorIS6_SA_lEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #13
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi5 = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::set", ptr %this1, i32 0, i32 0
  %call = call i64 @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call3 = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007ENS_15__tree_iteratorIS6_SA_lEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #13
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi5 = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi5
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1INS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEEET_NS_9enable_ifIXaasr27__is_cpp17_forward_iteratorISG_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISG_E9referenceEEE5valueESG_E4typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 %__first.coerce, i64 %__last.coerce) unnamed_addr #0 align 2 {
entry:
  %__first = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %__last = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %this, ptr %this.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__first, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__last, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %1 to i64
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2INS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEEET_NS_9enable_ifIXaasr27__is_cpp17_forward_iteratorISG_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISG_E9referenceEEE5valueESG_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %this3, i64 %coerce.val.pi, i64 %coerce.val.pi6)
  ret ptr %this3
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZNK9INIReader4KeysERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noalias sret(%"class.std::__1::vector") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %nrvo = alloca i1, align 1
  %keyPrefix = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %it = alloca %"class.std::__1::__map_const_iterator", align 8
  %ref.tmp9 = alloca %"class.std::__1::__map_const_iterator", align 8
  %ref.tmp23 = alloca %"class.std::__1::basic_string", align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store i1 false, ptr %nrvo, align 1
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %0 = load ptr, ptr %section.addr, align 8
  %call2 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN9INIReader7MakeKeyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr sret(%"class.std::__1::basic_string") align 8 %keyPrefix, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  %call5 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call7 = call i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %it, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call7 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive8, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont33, %invoke.cont4
  %_values10 = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call11 = call i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values10) #13
  %coerce.dive12 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %ref.tmp9, i32 0, i32 0
  %coerce.dive13 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive12, i32 0, i32 0
  %coerce.val.ip14 = inttoptr i64 %call11 to ptr
  store ptr %coerce.val.ip14, ptr %coerce.dive13, align 8
  %call17 = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEESH_(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp9)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %for.cond
  br i1 %call17, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont16
  %call19 = invoke noundef ptr @_ZNKSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont18 unwind label %lpad15

invoke.cont18:                                    ; preds = %for.body
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %call19, i32 0, i32 0
  %call20 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %keyPrefix) #13
  %call22 = invoke noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareB6v15007EmmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %first, i64 noundef 0, i64 noundef %call20, ptr noundef nonnull align 8 dereferenceable(24) %keyPrefix)
          to label %invoke.cont21 unwind label %lpad15

invoke.cont21:                                    ; preds = %invoke.cont18
  %cmp = icmp eq i32 %call22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont21
  %call25 = invoke noundef ptr @_ZNKSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont24 unwind label %lpad15

invoke.cont24:                                    ; preds = %if.then
  %first26 = getelementptr inbounds %"struct.std::__1::pair", ptr %call25, i32 0, i32 0
  %call27 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %keyPrefix) #13
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6substrB6v15007Emm(ptr sret(%"class.std::__1::basic_string") align 8 %ref.tmp23, ptr noundef nonnull align 8 dereferenceable(24) %first26, i64 noundef %call27, i64 noundef -1)
          to label %invoke.cont28 unwind label %lpad15

invoke.cont28:                                    ; preds = %invoke.cont24
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9push_backB6v15007EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp23)
          to label %invoke.cont30 unwind label %lpad29

invoke.cont30:                                    ; preds = %invoke.cont28
  %call31 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp23) #13
  br label %if.end

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %ehcleanup38

lpad3:                                            ; preds = %invoke.cont
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %ehcleanup38

lpad15:                                           ; preds = %for.inc, %invoke.cont24, %if.then, %invoke.cont18, %for.body, %for.cond
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad29:                                           ; preds = %invoke.cont28
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  %call32 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp23) #13
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont30, %invoke.cont21
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %call34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont33 unwind label %lpad15

invoke.cont33:                                    ; preds = %for.inc
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %invoke.cont16
  store i1 true, ptr %nrvo, align 1
  %call35 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %keyPrefix) #13
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

ehcleanup:                                        ; preds = %lpad29, %lpad15
  %call36 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %keyPrefix) #13
  br label %ehcleanup38

nrvo.unused:                                      ; preds = %for.end
  %call37 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end
  ret void

ehcleanup38:                                      ; preds = %ehcleanup, %lpad3, %lpad
  %call39 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup38
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val40 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val40
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareB6v15007EmmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__pos1, i64 noundef %__n1, ptr noundef nonnull align 8 dereferenceable(24) %__str) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pos1.addr = alloca i64, align 8
  %__n1.addr = alloca i64, align 8
  %__str.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__pos1, ptr %__pos1.addr, align 8
  store i64 %__n1, ptr %__n1.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__pos1.addr, align 8
  %1 = load i64, ptr %__n1.addr, align 8
  %2 = load ptr, ptr %__str.addr, align 8
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  %3 = load ptr, ptr %__str.addr, align 8
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  %call3 = call noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0, i64 noundef %1, ptr noundef %call, i64 noundef %call2)
  ret i32 %call3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret i64 %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9push_backB6v15007EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__x) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB6v15007IJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZNK9INIReader10HasSectionERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %key = alloca %"class.std::__1::basic_string", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %pos = alloca %"class.std::__1::__map_const_iterator", align 8
  %ref.tmp8 = alloca %"class.std::__1::__map_const_iterator", align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef @.str.4)
  invoke void @_ZN9INIReader7MakeKeyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr sret(%"class.std::__1::basic_string") align 8 %key, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call6 = invoke i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE11lower_boundB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(24) %_values, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %pos, i32 0, i32 0
  %coerce.dive7 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call6 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive7, align 8
  %_values9 = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call10 = call i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values9) #13
  %coerce.dive11 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %ref.tmp8, i32 0, i32 0
  %coerce.dive12 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive11, i32 0, i32 0
  %coerce.val.ip13 = inttoptr i64 %call10 to ptr
  store ptr %coerce.val.ip13, ptr %coerce.dive12, align 8
  %call15 = invoke noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEESH_(ptr noundef nonnull align 8 dereferenceable(8) %pos, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp8)
          to label %invoke.cont14 unwind label %lpad4

invoke.cont14:                                    ; preds = %invoke.cont5
  br i1 %call15, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont14
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #13
  br label %eh.resume

lpad4:                                            ; preds = %invoke.cont16, %if.end, %invoke.cont5, %invoke.cont
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call22 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont14
  %call17 = invoke noundef ptr @_ZNKSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %pos)
          to label %invoke.cont16 unwind label %lpad4

invoke.cont16:                                    ; preds = %if.end
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %call17, i32 0, i32 0
  %call18 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  %call20 = invoke noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareB6v15007EmmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %first, i64 noundef 0, i64 noundef %call18, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont19 unwind label %lpad4

invoke.cont19:                                    ; preds = %invoke.cont16
  %cmp = icmp eq i32 %call20, 0
  store i1 %cmp, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont19, %if.then
  %call21 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  %7 = load i1, ptr %retval, align 1
  ret i1 %7

eh.resume:                                        ; preds = %lpad4, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val23 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val23
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE11lower_boundB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__k) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::__map_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_const_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE11lower_boundB6v15007IS7_EENS_21__tree_const_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  %call3 = call noundef ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEC1B6v15007ESE_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #13
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %coerce.dive4, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %2 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEESH_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__y.addr, align 8
  %__i_1 = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %1, i32 0, i32 0
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEESF_(ptr noundef nonnull align 8 dereferenceable(8) %__i_, ptr noundef nonnull align 8 dereferenceable(8) %__i_1)
  ret i1 %call
}

; Function Attrs: mustprogress ssp uwtable
define noundef zeroext i1 @_ZNK9INIReader8HasValueERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %section, ptr noundef nonnull align 8 dereferenceable(24) %name) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %section.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key = alloca %"class.std::__1::basic_string", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %section, ptr %section.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %section.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  call void @_ZN9INIReader7MakeKeyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_(ptr sret(%"class.std::__1::basic_string") align 8 %key, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call = invoke noundef i64 @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEE5countB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(24) %_values, ptr noundef nonnull align 8 dereferenceable(24) %key)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tobool = icmp ne i64 %call, 0
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  ret i1 %tobool

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %key) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val4 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val4
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEOS9_RKS9_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef nonnull align 8 dereferenceable(24) %__rhs) #4 {
entry:
  %result.ptr = alloca ptr, align 8
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %1 = load ptr, ptr %__rhs.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %call1 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %call) #13
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__1plB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EERKS9_PKS6_(ptr noalias sret(%"class.std::__1::basic_string") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef %__rhs) #4 {
entry:
  %result.ptr = alloca ptr, align 8
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  %__lhs_sz = alloca i64, align 8
  %__rhs_sz = alloca i64, align 8
  %nrvo = alloca i1, align 1
  %agg.tmp = alloca %"struct.std::__1::__uninitialized_size_tag", align 1
  %ref.tmp = alloca %"class.std::__1::allocator.7", align 1
  %ref.tmp2 = alloca %"class.std::__1::allocator.7", align 1
  %undef.agg.tmp = alloca %"class.std::__1::allocator.7", align 1
  %undef.agg.tmp3 = alloca %"class.std::__1::allocator.7", align 1
  %__ptr = alloca ptr, align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store i64 %call, ptr %__lhs_sz, align 8
  %1 = load ptr, ptr %__rhs.addr, align 8
  %call1 = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %1) #13
  store i64 %call1, ptr %__rhs_sz, align 8
  store i1 false, ptr %nrvo, align 1
  %2 = load i64, ptr %__lhs_sz, align 8
  %3 = load i64, ptr %__rhs_sz, align 8
  %add = add i64 %2, %3
  %4 = load ptr, ptr %__lhs.addr, align 8
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionB6v15007IS2_vvEES2_RKS2_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  %call4 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ENS_24__uninitialized_size_tagEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, i64 noundef %add, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
  %call5 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %call5) #13
  store ptr %call6, ptr %__ptr, align 8
  %5 = load ptr, ptr %__ptr, align 8
  %6 = load ptr, ptr %__lhs.addr, align 8
  %call7 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #13
  %7 = load i64, ptr %__lhs_sz, align 8
  %call8 = call noundef ptr @_ZNSt3__111char_traitsIcE4copyEPcPKcm(ptr noundef %5, ptr noundef %call7, i64 noundef %7) #13
  %8 = load ptr, ptr %__ptr, align 8
  %9 = load i64, ptr %__lhs_sz, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9
  %10 = load ptr, ptr %__rhs.addr, align 8
  %11 = load i64, ptr %__rhs_sz, align 8
  %call9 = call noundef ptr @_ZNSt3__111char_traitsIcE4copyEPcPKcm(ptr noundef %add.ptr, ptr noundef %10, i64 noundef %11) #13
  %12 = load ptr, ptr %__ptr, align 8
  %13 = load i64, ptr %__lhs_sz, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load i64, ptr %__rhs_sz, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr10, i64 %14
  %call12 = call noundef ptr @_ZNSt3__111char_traitsIcE6assignEPcmc(ptr noundef %add.ptr11, i64 noundef 1, i8 noundef signext 0) #13
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %entry
  %call13 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %entry
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal i64 @"_ZNSt3__19transformB6v15007INS_11__wrap_iterIPcEES3_ZN9INIReader7MakeKeyERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESC_E3$_1EET0_T_SF_SE_T1_"(i64 %__first.coerce, i64 %__last.coerce, i64 %__result.coerce) #4 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__first = alloca %"class.std::__1::__wrap_iter", align 8
  %__last = alloca %"class.std::__1::__wrap_iter", align 8
  %__result = alloca %"class.std::__1::__wrap_iter", align 8
  %__op = alloca %class.anon.26, align 1
  %ref.tmp = alloca i8, align 1
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  %coerce.dive3 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__result, i32 0, i32 0
  %coerce.val.ip4 = inttoptr i64 %__result.coerce to ptr
  store ptr %coerce.val.ip4, ptr %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPcEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__first, ptr noundef nonnull align 8 dereferenceable(8) %__last) #13
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__111__wrap_iterIPcEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first) #13
  %0 = load i8, ptr %call5, align 1
  store i8 %0, ptr %ref.tmp, align 1
  %call6 = call noundef zeroext i8 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_3(ptr noundef nonnull align 1 dereferenceable(1) %__op, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
  %call7 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__111__wrap_iterIPcEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__result) #13
  store i8 %call6, ptr %call7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPcEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first) #13
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPcEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__result) #13
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__result, i64 8, i1 false)
  %coerce.dive10 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive10, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEixERSA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__k) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::pair.40", align 8
  %ref.tmp2 = alloca %"class.std::__1::tuple", align 8
  %ref.tmp5 = alloca %"class.std::__1::tuple.43", align 1
  %undef.agg.tmp = alloca %"class.std::__1::tuple.43", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %1 = load ptr, ptr %__k.addr, align 8
  %call = call i64 @_ZNSt3__116forward_as_tupleB6v15007IJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_5tupleIJDpOT_EEESC_(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::tuple", ptr %ref.tmp2, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %coerce.dive3, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive4, align 8
  call void @_ZNSt3__116forward_as_tupleB6v15007IJEEENS_5tupleIJDpOT_EEES4_() #13
  %call6 = call [2 x i64] @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRKS7_EEENSJ_IJEEEEEENS_4pairINS_15__tree_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__1L19piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp5)
  store [2 x i64] %call6, ptr %ref.tmp, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.40", ptr %ref.tmp, i32 0, i32 0
  %call7 = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %first)
  %call8 = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %call7)
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %call8, i32 0, i32 1
  ret ptr %second
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__s) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::__map_value_compare", align 1
  %agg.tmp = alloca %"struct.std::__1::less", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEC1B6v15007ESA_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #13
  %call2 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEEC1ERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEC1B6v15007ESA_(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %__c = alloca %"struct.std::__1::less", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEC2B6v15007ESA_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEEC1ERKSC_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__comp.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEC2B6v15007ESA_(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %__c = alloca %"struct.std::__1::less", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEEC2ERKSC_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  %ref.tmp = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEEC1B6v15007ILb1EvEEv(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  store i32 0, ptr %ref.tmp, align 4
  %0 = load ptr, ptr %__comp.addr, align 8
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEEC1B6v15007IiRKSC_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call4, ptr %call5, align 8
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #14
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEEC1B6v15007ILb1EvEEv(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEEC2B6v15007ILb1EvEEv(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %this1
}

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #6 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #13
  call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEEC1B6v15007IiRKSC_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEEC2B6v15007IiRKSC_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #13
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %call) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_node_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 0
  ret ptr %__begin_node_
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEEC2B6v15007ILb1EvEEv(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  %agg.tmp2 = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__value_) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEEC2B6v15007IiRKSC_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B6v15007IivEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEELi1ELb1EEC2B6v15007IRKSC_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B6v15007IivEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load i32, ptr %0, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEELi1ELb1EEC2B6v15007IRKSC_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__r) #3 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__nd) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__nd.addr = alloca ptr, align 8
  %__na = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__nd, ptr %__nd.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__nd.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__nd.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %__left_, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %2) #13
  %3 = load ptr, ptr %__nd.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__right_, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE7destroyEPNS_11__tree_nodeIS8_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %4) #13
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call, ptr %__na, align 8
  %5 = load ptr, ptr %__na, align 8
  %6 = load ptr, ptr %__nd.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %6, i32 0, i32 1
  %call2 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE9__get_ptrB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB6v15007INS_4pairIKS8_S8_EEvvEEvRSC_PT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %call2)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %7 = load ptr, ptr %__na, align 8
  %8 = load ptr, ptr %__nd.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE10deallocateB6v15007ERSC_PSB_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %invoke.cont3, %entry
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %if.then
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  %0 = load ptr, ptr %__left_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB6v15007INS_4pairIKS8_S8_EEvvEEvRSC_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %__p) #3 align 2 {
entry:
  %.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE9__get_ptrB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__n) #4 align 2 {
entry:
  %__n.addr = alloca ptr, align 8
  store ptr %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__n.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE10deallocateB6v15007ERSC_PSB_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE10deallocateB6v15007EPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED1Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_ED2Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %second) #13
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %this1, i32 0, i32 0
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %first) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cc = getelementptr inbounds %"struct.std::__1::__value_type", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__17launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef %__cc) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__17launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__19__launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef %0) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19__launderB6v15007INS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SB_(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE10deallocateB6v15007EPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 80
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %0, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #14
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #4 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %0) #13
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %__align.addr, align 8
  store i64 %1, ptr %__align_val, align 8
  %2 = load ptr, ptr %__ptr.addr, align 8
  %3 = load i64, ptr %__size.addr, align 8
  %4 = load i64, ptr %__align_val, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %__ptr.addr, align 8
  %6 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %5, i64 noundef %6)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #3 {
entry:
  %__align.addr = alloca i64, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %cmp = icmp ugt i64 %0, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #4 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__args.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__ptr.addr, align 8
  %1 = load i64, ptr %__args.addr, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #4 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  %0 = load ptr, ptr %__ptr.addr, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #3 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  call void @_ZdlPvSt11align_val_t(ptr noundef %0, i64 noundef %1) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #7

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #3 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #13
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %call) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEESE_EES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %call) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %0, i32 0, i32 2
  %bf.load = load i8, ptr %__is_long_, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %tobool = icmp ne i8 %bf.lshr, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__data_, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [23 x i8], ptr %__data_, i64 0, i64 0
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15007ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %arrayidx) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.5", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15007ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %__r) #3 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__str.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007EOS5_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__str.addr, align 8
  %__r_2 = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__r_, ptr align 8 %__r_2, i64 24, i1 false)
  %1 = load ptr, ptr %__str.addr, align 8
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %this1)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont3
  %2 = load ptr, ptr %__str.addr, align 8
  invoke void @_ZNSt3__115__debug_db_swapB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_S8_(ptr noundef %this1, ptr noundef %2)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont4, %invoke.cont3
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3

terminate.lpad:                                   ; preds = %if.then, %invoke.cont, %entry
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115__debug_db_swapB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_S8_(ptr noundef %__lhs, ptr noundef %__rhs) #3 {
entry:
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::basic_string<char>::__rep", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %ref.tmp, i8 0, i64 24, i1 false)
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call, ptr align 8 %ref.tmp, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.5", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) #2

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %__r_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  %0 = load ptr, ptr %__s.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  %1 = load ptr, ptr %__s.addr, align 8
  %2 = load ptr, ptr %__s.addr, align 8
  %call3 = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %2) #13
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %1, i64 noundef %call3)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %this1)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__s) #3 align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #13
  ret i64 %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %agg.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 8 dereferenceable(24) %this1)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.5", ptr %this1, i32 0, i32 0
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #5

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE14__count_uniqueIS7_EEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__k) #4 align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %__rt = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call, ptr %__rt, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %0 = load ptr, ptr %__rt, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %1 = load ptr, ptr %__k.addr, align 8
  %2 = load ptr, ptr %__rt, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %2, i32 0, i32 1
  %call3 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS6_RKS8_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %__value_)
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %__rt, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %__left_, align 8
  store ptr %4, ptr %__rt, align 8
  br label %if.end9

if.else:                                          ; preds = %while.body
  %call4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %5 = load ptr, ptr %__rt, align 8
  %__value_5 = getelementptr inbounds %"class.std::__1::__tree_node", ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %__k.addr, align 8
  %call6 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS8_RKS6_(ptr noundef nonnull align 1 dereferenceable(1) %call4, ptr noundef nonnull align 8 dereferenceable(48) %__value_5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br i1 %call6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %7 = load ptr, ptr %__rt, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %__right_, align 8
  store ptr %8, ptr %__rt, align 8
  br label %if.end

if.else8:                                         ; preds = %if.else
  store i64 1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.else8
  %9 = load i64, ptr %retval, align 8
  ret i64 %9
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #13
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS6_RKS8_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(24) %__x, ptr noundef nonnull align 8 dereferenceable(48) %__y) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNKSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %call, i32 0, i32 0
  %call2 = call noundef zeroext i1 @_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB6v15007ERKS6_S9_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %first)
  ret i1 %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS8_RKS6_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(48) %__x, ptr noundef nonnull align 8 dereferenceable(24) %__y) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNKSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %call, i32 0, i32 0
  %1 = load ptr, ptr %__y.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB6v15007ERKS6_S9_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 8 dereferenceable(24) %first, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB6v15007ERKS6_S9_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(24) %__x, ptr noundef nonnull align 8 dereferenceable(24) %__y) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1ltB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  ret i1 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZNKSt3__112__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_E11__get_valueB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cc = getelementptr inbounds %"struct.std::__1::__value_type", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__17launderB6v15007IKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SC_(ptr noundef %__cc) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1ltB6v15007IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %__lhs, ptr noundef nonnull align 8 dereferenceable(24) %__rhs) #3 {
entry:
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %1 = load ptr, ptr %__rhs.addr, align 8
  %call = call noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %cmp = icmp slt i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::basic_string_view", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__str.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %call2 = call noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9enable_ifIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEiE4typeERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp) #13
  ret i32 %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareINS_17basic_string_viewIcS2_EEEENS_9enable_ifIXsr33__can_be_converted_to_string_viewIcS2_T_EE5valueEiE4typeERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(16) %__t) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  %__sv = alloca %"class.std::__1::basic_string_view", align 8
  %__lhs_sz = alloca i64, align 8
  %__rhs_sz = alloca i64, align 8
  %__result = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__sv, ptr align 8 %0, i64 16, i1 false)
  %call = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store i64 %call, ptr %__lhs_sz, align 8
  %call2 = call noundef i64 @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__sv) #13
  store i64 %call2, ptr %__rhs_sz, align 8
  %call3 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call4 = call noundef ptr @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__sv) #13
  %call5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__lhs_sz, ptr noundef nonnull align 8 dereferenceable(8) %__rhs_sz)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = load i64, ptr %call5, align 8
  %call6 = call noundef i32 @_ZNSt3__111char_traitsIcE7compareEPKcS3_m(ptr noundef %call3, ptr noundef %call4, i64 noundef %1) #13
  store i32 %call6, ptr %__result, align 4
  %2 = load i32, ptr %__result, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %3 = load i32, ptr %__result, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %invoke.cont
  %4 = load i64, ptr %__lhs_sz, align 8
  %5 = load i64, ptr %__rhs_sz, align 8
  %cmp7 = icmp ult i64 %4, %5
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %6 = load i64, ptr %__lhs_sz, align 8
  %7 = load i64, ptr %__rhs_sz, align 8
  %cmp10 = icmp ugt i64 %6, %7
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then8, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

terminate.lpad:                                   ; preds = %entry
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::basic_string_view", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call3 = call noundef ptr @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B6v15007EPKcm(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef %call, i64 noundef %call2) #13
  %0 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size = getelementptr inbounds %"class.std::__1::basic_string_view", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__size, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i32 @_ZNSt3__111char_traitsIcE7compareEPKcS3_m(ptr noundef %__s1, ptr noundef %__s2, i64 noundef %__n) #3 align 2 {
entry:
  %retval = alloca i32, align 4
  %__s1.addr = alloca ptr, align 8
  %__s2.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__s1, ptr %__s1.addr, align 8
  store ptr %__s2, ptr %__s2.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__s1.addr, align 8
  %2 = load ptr, ptr %__s2.addr, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %call = call i32 @memcmp(ptr noundef %1, ptr noundef %2, i64 noundef %3) #13
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__data = getelementptr inbounds %"class.std::__1::basic_string_view", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__data, align 8
  ret ptr %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #4 {
entry:
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__less", align 1
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__b.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %call
}

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #4 {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %__b.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %__a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %2, %cond.true ], [ %3, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp = icmp ult i64 %1, %3
  ret i1 %cmp
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B6v15007EPKcm(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__len) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  store i64 %__len, ptr %__len.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %1 = load i64, ptr %__len.addr, align 8
  %call = call noundef ptr @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B6v15007EPKcm(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B6v15007EPKcm(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__len) unnamed_addr #1 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__len.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  store i64 %__len, ptr %__len.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__data = getelementptr inbounds %"class.std::__1::basic_string_view", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__s.addr, align 8
  store ptr %0, ptr %__data, align 8
  %__size = getelementptr inbounds %"class.std::__1::basic_string_view", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__len.addr, align 8
  store i64 %1, ptr %__size, align 8
  %2 = load i64, ptr %__len.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %__s.addr, align 8
  %cmp2 = icmp ne ptr %3, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  call void @llvm.assume(i1 %4)
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__17launderB6v15007IKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SC_(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__19__launderB6v15007IKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SC_(ptr noundef %0) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19__launderB6v15007IKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEEEPT_SC_(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE4findIS7_EENS_21__tree_const_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__p = alloca %"class.std::__1::__tree_const_iterator", align 8
  %ref.tmp = alloca %"class.std::__1::__tree_const_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__v.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call3 = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE13__lower_boundIS7_EENS_21__tree_const_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %call, ptr noundef %call2)
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call3 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call4 = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %ref.tmp, i32 0, i32 0
  %coerce.val.ip6 = inttoptr i64 %call4 to ptr
  store ptr %coerce.val.ip6, ptr %coerce.dive5, align 8
  %call7 = call noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEESF_(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  br i1 %call7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call8 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %1 = load ptr, ptr %__v.addr, align 8
  %call9 = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p)
  %call10 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS6_RKS8_(ptr noundef nonnull align 1 dereferenceable(1) %call8, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %call9)
  %lnot = xor i1 %call10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__p, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %land.end
  %call11 = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %coerce.dive12 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip13 = inttoptr i64 %call11 to ptr
  store ptr %coerce.val.ip13, ptr %coerce.dive12, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive14 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %retval, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive14, align 8
  %coerce.val.pi = ptrtoint ptr %3 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEC1B6v15007ESE_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__i.coerce) unnamed_addr #1 align 2 {
entry:
  %__i = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %__i, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEC2B6v15007ESE_(ptr noundef nonnull align 8 dereferenceable(8) %this1, i64 %coerce.val.pi) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE13__lower_boundIS7_EENS_21__tree_const_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, ptr noundef %__root, ptr noundef %__result) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__root.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store ptr %__root, ptr %__root.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %__root.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %1 = load ptr, ptr %__root.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__v.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS8_RKS6_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef nonnull align 8 dereferenceable(48) %__value_, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %__root.addr, align 8
  store ptr %3, ptr %__result.addr, align 8
  %4 = load ptr, ptr %__root.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %__left_, align 8
  store ptr %5, ptr %__root.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %__root.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %__right_, align 8
  store ptr %7, ptr %__root.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %__result.addr, align 8
  %call3 = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseISA_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %8) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %retval, i32 0, i32 0
  %9 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %9 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEESF_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEESF_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseISA_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %call) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  ret ptr %__value_
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseISA_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC2B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseISA_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC2B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseISA_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEESF_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__120__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEEC2B6v15007ESE_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__i.coerce) unnamed_addr #1 align 2 {
entry:
  %__i = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::__map_const_iterator", ptr %this1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i_, ptr align 8 %__i, i64 8, i1 false)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPKNS_4pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE10pointer_toB6v15007ERSA_(ptr noundef nonnull align 8 dereferenceable(48) %__r) #3 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPKNS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE10pointer_toB6v15007ERS9_(ptr noundef nonnull align 8 dereferenceable(48) %__value_) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPKNS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE10pointer_toB6v15007ERS9_(ptr noundef nonnull align 8 dereferenceable(48) %__r) #3 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call2, %cond.true ], [ %call3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPcEC1B6v15007EPKvS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPcEC2B6v15007EPKvS1_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0, ptr noundef %1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__data_, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [23 x i8], ptr %__data_, i64 0, i64 0
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %arrayidx) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPcE10pointer_toB6v15007ERc(ptr noundef nonnull align 1 dereferenceable(1) %__r) #3 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPcEC2B6v15007EPKvS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  store ptr %0, ptr %__i, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPcEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IPcEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef zeroext i8 @"_ZZNK9INIReader10GetBooleanERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_bENK3$_0clERKh"(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %ch) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %ch.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %call = call noundef i32 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_4(i32 noundef %conv)
  %conv2 = trunc i32 %call to i8
  ret i8 %conv2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__111__wrap_iterIPcEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPcEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %__i, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IPcEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPcE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPcE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPcE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  ret ptr %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef i32 @_Z7toloweri(i32 noundef %_c) #4 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, ptr %_c.addr, align 4
  %0 = load i32, ptr %_c.addr, align 4
  %call = call i32 @__tolower(i32 noundef %0)
  ret i32 %call
}

declare i32 @__tolower(i32 noundef) #2

declare noundef i32 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::less", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::set", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC1ERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC1ERKS8_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__comp.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEEC2ERKS8_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  %ref.tmp = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 1
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEEC1B6v15007ILb1EvEEv(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 2
  store i32 0, ptr %ref.tmp, align 4
  %0 = load ptr, ptr %__comp.addr, align 8
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC1B6v15007IiRKS8_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call4, ptr %call5, align 8
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #14
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEEC1B6v15007ILb1EvEEv(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEEC2B6v15007ILb1EvEEv(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC1B6v15007IiRKS8_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B6v15007IiRKS8_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #13
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %call) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_node_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 0
  ret ptr %__begin_node_
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEEC2B6v15007ILb1EvEEv(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  %agg.tmp2 = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B6v15007IiRKS8_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B6v15007IivEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EEC2B6v15007IRKS8_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EEC2B6v15007IRKS8_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::set", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  call void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__nd) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__nd.addr = alloca ptr, align 8
  %__na = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__nd, ptr %__nd.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__nd.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__nd.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %__left_, align 8
  call void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %2) #13
  %3 = load ptr, ptr %__nd.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__right_, align 8
  call void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %4) #13
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call, ptr %__na, align 8
  %5 = load ptr, ptr %__na, align 8
  %6 = load ptr, ptr %__nd.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node.28", ptr %6, i32 0, i32 1
  %call2 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9__get_ptrB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(24) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE7destroyB6v15007IS7_vvEEvRSA_PT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %call2)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %7 = load ptr, ptr %__na, align 8
  %8 = load ptr, ptr %__nd.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE10deallocateB6v15007ERSA_PS9_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %invoke.cont3, %entry
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %if.then
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  %0 = load ptr, ptr %__left_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE7destroyB6v15007IS7_vvEEvRSA_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %__p) #3 align 2 {
entry:
  %.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9__get_ptrB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(24) %__n) #3 align 2 {
entry:
  %__n.addr = alloca ptr, align 8
  store ptr %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__n.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE10deallocateB6v15007ERSA_PS9_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE10deallocateB6v15007EPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE10deallocateB6v15007EPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 56
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %0, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #13
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %call) #13
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS7_IcEEEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %0 = load ptr, ptr %call, align 8
  %call2 = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseISA_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %0) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_node_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 0
  ret ptr %__begin_node_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  %call = call noundef ptr @_ZNSt3__116__tree_next_iterB6v15007IPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEES5_EET_T0_(ptr noundef %0) #13
  %__ptr_2 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  store ptr %call, ptr %__ptr_2, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__tree_next_iterB6v15007IPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEES5_EET_T0_(ptr noundef %__x) #3 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  %1 = load ptr, ptr %__x.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__right_, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %__x.addr, align 8
  %__right_2 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__right_2, align 8
  %call = call noundef ptr @_ZNSt3__110__tree_minB6v15007IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %4) #13
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %if.end
  %5 = load ptr, ptr %__x.addr, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %5) #13
  %lnot = xor i1 %call3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %__x.addr, align 8
  %call4 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %6)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  store ptr %call4, ptr %__x.addr, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %__parent_, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9

terminate.lpad:                                   ; preds = %while.body
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__tree_minB6v15007IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %__x) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %__x.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %__left_, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %__x.addr, align 8
  %__left_2 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %__left_2, align 8
  store ptr %4, ptr %__x.addr, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %__x.addr, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %__x) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %__parent_, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__left_, align 8
  %cmp = icmp eq ptr %0, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__parent_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  ret ptr %call
}

declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_(ptr noundef nonnull returned align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE15__insert_uniqueB6v15007EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v) #4 align 2 {
entry:
  %retval = alloca %"struct.std::__1::pair.29", align 8
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__v.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__tree_key_value_typesINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9__get_keyB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %1 = load ptr, ptr %__v.addr, align 8
  %call2 = call [2 x i64] @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %call, ptr noundef nonnull align 8 dereferenceable(24) %1)
  store [2 x i64] %call2, ptr %retval, align 8
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC1B6v15007INS_15__tree_iteratorIS7_SB_lEEbLS9_0EEEONS0_IT_T0_EE(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(9) %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairINS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC2B6v15007INS_15__tree_iteratorIS7_SB_lEEbLS9_0EEEONS0_IT_T0_EE(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 8 dereferenceable(9) %0) #13
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr [2 x i64] @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JS6_EEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__k, ptr noundef nonnull align 8 dereferenceable(24) %__args) #4 align 2 {
entry:
  %retval = alloca %"struct.std::__1::pair.29", align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__parent = alloca ptr, align 8
  %__child = alloca ptr, align 8
  %__r = alloca ptr, align 8
  %__inserted = alloca i8, align 1
  %__h = alloca %"class.std::__1::unique_ptr", align 8
  %ref.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(8) %__parent, ptr noundef nonnull align 8 dereferenceable(24) %0)
  store ptr %call, ptr %__child, align 8
  %1 = load ptr, ptr %__child, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %__r, align 8
  store i8 0, ptr %__inserted, align 1
  %3 = load ptr, ptr %__child, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__construct_nodeIJS6_EEENS_10unique_ptrINS_11__tree_nodeIS6_PvEENS_22__tree_node_destructorINS4_ISF_EEEEEEDpOT_(ptr sret(%"class.std::__1::unique_ptr") align 8 %__h, ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %6 = load ptr, ptr %__parent, align 8
  %7 = load ptr, ptr %__child, align 8
  %call2 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #13
  call void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSF_SF_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %call2) #13
  %call3 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #13
  store ptr %call3, ptr %__r, align 8
  store i8 1, ptr %__inserted, align 1
  %call4 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %__r, align 8
  %call5 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007ESA_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef %8) #13
  %call6 = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC1B6v15007ISC_RbLS9_0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__inserted) #13
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__122__tree_key_value_typesINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9__get_keyB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %__v) #3 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %0 = load ptr, ptr %__v.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__find_equalIS6_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISF_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__parent, ptr noundef nonnull align 8 dereferenceable(24) %__v) #3 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__parent.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__nd = alloca ptr, align 8
  %__nd_ptr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__parent, ptr %__parent.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call, ptr %__nd, align 8
  %call2 = call noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__root_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call2, ptr %__nd_ptr, align 8
  %0 = load ptr, ptr %__nd, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end25
  %call3 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %1 = load ptr, ptr %__v.addr, align 8
  %2 = load ptr, ptr %__nd, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node.28", ptr %2, i32 0, i32 1
  %call4 = call noundef zeroext i1 @_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB6v15007ERKS6_S9_(ptr noundef nonnull align 1 dereferenceable(1) %call3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %__value_)
  br i1 %call4, label %if.then5, label %if.else11

if.then5:                                         ; preds = %while.body
  %3 = load ptr, ptr %__nd, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %__left_, align 8
  %cmp6 = icmp ne ptr %4, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %5 = load ptr, ptr %__nd, align 8
  %__left_8 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %5, i32 0, i32 0
  store ptr %__left_8, ptr %__nd_ptr, align 8
  %6 = load ptr, ptr %__nd, align 8
  %__left_9 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_9, align 8
  store ptr %7, ptr %__nd, align 8
  br label %if.end

if.else:                                          ; preds = %if.then5
  %8 = load ptr, ptr %__nd, align 8
  %9 = load ptr, ptr %__parent.addr, align 8
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %__parent.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %__left_10 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %11, i32 0, i32 0
  store ptr %__left_10, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then7
  br label %if.end25

if.else11:                                        ; preds = %while.body
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %12 = load ptr, ptr %__nd, align 8
  %__value_13 = getelementptr inbounds %"class.std::__1::__tree_node.28", ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %__v.addr, align 8
  %call14 = call noundef zeroext i1 @_ZNKSt3__14lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEclB6v15007ERKS6_S9_(ptr noundef nonnull align 1 dereferenceable(1) %call12, ptr noundef nonnull align 8 dereferenceable(24) %__value_13, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br i1 %call14, label %if.then15, label %if.else23

if.then15:                                        ; preds = %if.else11
  %14 = load ptr, ptr %__nd, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %__right_, align 8
  %cmp16 = icmp ne ptr %15, null
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.then15
  %16 = load ptr, ptr %__nd, align 8
  %__right_18 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %16, i32 0, i32 1
  store ptr %__right_18, ptr %__nd_ptr, align 8
  %17 = load ptr, ptr %__nd, align 8
  %__right_19 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %__right_19, align 8
  store ptr %18, ptr %__nd, align 8
  br label %if.end22

if.else20:                                        ; preds = %if.then15
  %19 = load ptr, ptr %__nd, align 8
  %20 = load ptr, ptr %__parent.addr, align 8
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr %__nd, align 8
  %__right_21 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %21, i32 0, i32 1
  store ptr %__right_21, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.then17
  br label %if.end24

if.else23:                                        ; preds = %if.else11
  %22 = load ptr, ptr %__nd, align 8
  %23 = load ptr, ptr %__parent.addr, align 8
  store ptr %22, ptr %23, align 8
  %24 = load ptr, ptr %__nd_ptr, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  br label %while.body, !llvm.loop !15

if.end26:                                         ; preds = %entry
  %call27 = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %25 = load ptr, ptr %__parent.addr, align 8
  store ptr %call27, ptr %25, align 8
  %26 = load ptr, ptr %__parent.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %__left_28 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %27, i32 0, i32 0
  store ptr %__left_28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.else23, %if.else20, %if.else
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__construct_nodeIJS6_EEENS_10unique_ptrINS_11__tree_nodeIS6_PvEENS_22__tree_node_destructorINS4_ISF_EEEEEEDpOT_(ptr noalias sret(%"class.std::__1::unique_ptr") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__na = alloca ptr, align 8
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca %"class.std::__1::__tree_node_destructor", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call, ptr %__na, align 8
  store i1 false, ptr %nrvo, align 1
  %0 = load ptr, ptr %__na, align 8
  %call2 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE8allocateB6v15007ERSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef 1)
  %1 = load ptr, ptr %__na, align 8
  %call3 = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEC1B6v15007ERSA_b(ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext false) #13
  %call4 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC1B6v15007ILb1EvEEPS9_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef %call2, ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp) #13
  %2 = load ptr, ptr %__na, align 8
  %call5 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node.28", ptr %call5, i32 0, i32 1
  %call6 = call noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9__get_ptrB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(24) %__value_)
  %3 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE9constructB6v15007IS7_JS7_EvEEvRSA_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call7 = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %__value_constructed = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %call7, i32 0, i32 1
  store i8 1, ptr %__value_constructed, align 8
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %eh.resume

nrvo.unused:                                      ; preds = %invoke.cont
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %invoke.cont
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSF_SF_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__parent, ptr noundef nonnull align 8 dereferenceable(8) %__child, ptr noundef %__new_node) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__parent.addr = alloca ptr, align 8
  %__child.addr = alloca ptr, align 8
  %__new_node.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__parent, ptr %__parent.addr, align 8
  store ptr %__child, ptr %__child.addr, align 8
  store ptr %__new_node, ptr %__new_node.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_node.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %0, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  %1 = load ptr, ptr %__new_node.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %1, i32 0, i32 1
  store ptr null, ptr %__right_, align 8
  %2 = load ptr, ptr %__parent.addr, align 8
  %3 = load ptr, ptr %__new_node.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 2
  store ptr %2, ptr %__parent_, align 8
  %4 = load ptr, ptr %__new_node.addr, align 8
  %5 = load ptr, ptr %__child.addr, align 8
  store ptr %4, ptr %5, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %6 = load ptr, ptr %call, align 8
  %__left_2 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_2, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %8 = load ptr, ptr %call3, align 8
  %__left_4 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %__left_4, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %9, ptr %call5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__left_7 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call6, i32 0, i32 0
  %10 = load ptr, ptr %__left_7, align 8
  %11 = load ptr, ptr %__child.addr, align 8
  %12 = load ptr, ptr %11, align 8
  call void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %10, ptr noundef %12) #13
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %13 = load i64, ptr %call8, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %call8, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #13
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007ESA_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC2B6v15007ESA_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC1B6v15007ISC_RbLS9_0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %__u2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC2B6v15007ISC_RbLS9_0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__root_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  ret ptr %__left_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE8allocateB6v15007ERSA_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEC1B6v15007ERSA_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__na.addr = alloca ptr, align 8
  %__val.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__na, ptr %__na.addr, align 8
  %frombool = zext i1 %__val to i8
  store i8 %frombool, ptr %__val.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__na.addr, align 8
  %1 = load i8, ptr %__val.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEC2B6v15007ERSA_b(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %tobool) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC1B6v15007ILb1EvEEPS9_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__d.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__d, ptr %__d.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__d.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC2B6v15007ILb1EvEEPS9_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9) %1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE9constructB6v15007IS7_JS7_EvEEvRSA_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE9constructB6v15007IS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE8max_sizeB6v15007ISA_vEEmRKSA_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #16
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 56
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE8max_sizeB6v15007ISA_vEEmRKSA_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %call
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #11 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #13
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #13
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt20bad_array_new_length, ptr @_ZNSt20bad_array_new_lengthD1Ev) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %__size, i64 noundef %__align) #4 {
entry:
  %retval = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %0) #13
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %__align.addr, align 8
  store i64 %1, ptr %__align_val, align 8
  %2 = load i64, ptr %__size.addr, align 8
  %3 = load i64, ptr %__align_val, align 8
  %call1 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %2, i64 noundef %3)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %__size.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %4)
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 329406144173384850
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #4 {
entry:
  %__args.addr = alloca i64, align 8
  %__args.addr2 = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %0, i64 noundef %1) #17
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %1) ]
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %__args) #4 {
entry:
  %__args.addr = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %0) #17
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #12

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEC2B6v15007ERSA_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__na.addr = alloca ptr, align 8
  %__val.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__na, ptr %__na.addr, align 8
  %frombool = zext i1 %__val to i8
  store i8 %frombool, ptr %__val.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %__na_ = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__na.addr, align 8
  store ptr %0, ptr %__na_, align 8
  %__value_constructed = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 1
  %1 = load i8, ptr %__val.addr, align 1
  %tobool = trunc i8 %1 to i1
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %__value_constructed, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC2B6v15007ILb1EvEEPS9_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISC_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__d.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__d, ptr %__d.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__d.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC1B6v15007IRSA_SD_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 8 dereferenceable(9) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #14
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC1B6v15007IRSA_SD_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(9) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC2B6v15007IRSA_SD_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEEC2B6v15007IRSA_SD_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(9) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEELi0ELb0EEC2B6v15007IRSA_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEPvEEEEEELi1ELb0EEC2B6v15007ISC_vEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(9) %2)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEELi0ELb0EEC2B6v15007IRSA_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.32", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEPvEEEEEELi1ELb0EEC2B6v15007ISC_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(9) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.33", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__value_, ptr align 8 %0, i64 16, i1 false)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEE9constructB6v15007IS6_JS6_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.32", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEPvEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEPvEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.33", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %__root, ptr noundef %__x) #3 {
entry:
  %__root.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  %__y29 = alloca ptr, align 8
  store ptr %__root, ptr %__root.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__root.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  %1 = load ptr, ptr %__x.addr, align 8
  %cmp1 = icmp ne ptr %1, null
  call void @llvm.assume(i1 %cmp1)
  %2 = load ptr, ptr %__x.addr, align 8
  %3 = load ptr, ptr %__root.addr, align 8
  %cmp2 = icmp eq ptr %2, %3
  %4 = load ptr, ptr %__x.addr, align 8
  %__is_black_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %4, i32 0, i32 3
  %frombool = zext i1 %cmp2 to i8
  store i8 %frombool, ptr %__is_black_, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end53, %entry
  %5 = load ptr, ptr %__x.addr, align 8
  %6 = load ptr, ptr %__root.addr, align 8
  %cmp3 = icmp ne ptr %5, %6
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %7)
  %__is_black_4 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call, i32 0, i32 3
  %8 = load i8, ptr %__is_black_4, align 8
  %tobool = trunc i8 %8 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %__x.addr, align 8
  %call5 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %10)
  %call6 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %call5) #13
  br i1 %call6, label %if.then, label %if.else28

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %__x.addr, align 8
  %call7 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %11)
  %call8 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %call7)
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call8, i32 0, i32 1
  %12 = load ptr, ptr %__right_, align 8
  store ptr %12, ptr %__y, align 8
  %13 = load ptr, ptr %__y, align 8
  %cmp9 = icmp ne ptr %13, null
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %14 = load ptr, ptr %__y, align 8
  %__is_black_10 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %14, i32 0, i32 3
  %15 = load i8, ptr %__is_black_10, align 8
  %tobool11 = trunc i8 %15 to i1
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %__x.addr, align 8
  %call13 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %16)
  store ptr %call13, ptr %__x.addr, align 8
  %17 = load ptr, ptr %__x.addr, align 8
  %__is_black_14 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %17, i32 0, i32 3
  store i8 1, ptr %__is_black_14, align 8
  %18 = load ptr, ptr %__x.addr, align 8
  %call15 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %18)
  store ptr %call15, ptr %__x.addr, align 8
  %19 = load ptr, ptr %__x.addr, align 8
  %20 = load ptr, ptr %__root.addr, align 8
  %cmp16 = icmp eq ptr %19, %20
  %21 = load ptr, ptr %__x.addr, align 8
  %__is_black_17 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %21, i32 0, i32 3
  %frombool18 = zext i1 %cmp16 to i8
  store i8 %frombool18, ptr %__is_black_17, align 8
  %22 = load ptr, ptr %__y, align 8
  %__is_black_19 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %22, i32 0, i32 3
  store i8 1, ptr %__is_black_19, align 8
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true, %if.then
  %23 = load ptr, ptr %__x.addr, align 8
  %call20 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %23) #13
  br i1 %call20, label %if.end, label %if.then21

if.then21:                                        ; preds = %if.else
  %24 = load ptr, ptr %__x.addr, align 8
  %call22 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %24)
  store ptr %call22, ptr %__x.addr, align 8
  %25 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %25) #13
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.else
  %26 = load ptr, ptr %__x.addr, align 8
  %call23 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %26)
  store ptr %call23, ptr %__x.addr, align 8
  %27 = load ptr, ptr %__x.addr, align 8
  %__is_black_24 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %27, i32 0, i32 3
  store i8 1, ptr %__is_black_24, align 8
  %28 = load ptr, ptr %__x.addr, align 8
  %call25 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %28)
  store ptr %call25, ptr %__x.addr, align 8
  %29 = load ptr, ptr %__x.addr, align 8
  %__is_black_26 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %29, i32 0, i32 3
  store i8 0, ptr %__is_black_26, align 8
  %30 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %30) #13
  br label %while.end

if.end27:                                         ; preds = %if.then12
  br label %if.end53

if.else28:                                        ; preds = %while.body
  %31 = load ptr, ptr %__x.addr, align 8
  %call30 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %31)
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call30, i32 0, i32 2
  %32 = load ptr, ptr %__parent_, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %__left_, align 8
  store ptr %33, ptr %__y29, align 8
  %34 = load ptr, ptr %__y29, align 8
  %cmp31 = icmp ne ptr %34, null
  br i1 %cmp31, label %land.lhs.true32, label %if.else43

land.lhs.true32:                                  ; preds = %if.else28
  %35 = load ptr, ptr %__y29, align 8
  %__is_black_33 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %35, i32 0, i32 3
  %36 = load i8, ptr %__is_black_33, align 8
  %tobool34 = trunc i8 %36 to i1
  br i1 %tobool34, label %if.else43, label %if.then35

if.then35:                                        ; preds = %land.lhs.true32
  %37 = load ptr, ptr %__x.addr, align 8
  %call36 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %37)
  store ptr %call36, ptr %__x.addr, align 8
  %38 = load ptr, ptr %__x.addr, align 8
  %__is_black_37 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %38, i32 0, i32 3
  store i8 1, ptr %__is_black_37, align 8
  %39 = load ptr, ptr %__x.addr, align 8
  %call38 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %39)
  store ptr %call38, ptr %__x.addr, align 8
  %40 = load ptr, ptr %__x.addr, align 8
  %41 = load ptr, ptr %__root.addr, align 8
  %cmp39 = icmp eq ptr %40, %41
  %42 = load ptr, ptr %__x.addr, align 8
  %__is_black_40 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %42, i32 0, i32 3
  %frombool41 = zext i1 %cmp39 to i8
  store i8 %frombool41, ptr %__is_black_40, align 8
  %43 = load ptr, ptr %__y29, align 8
  %__is_black_42 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %43, i32 0, i32 3
  store i8 1, ptr %__is_black_42, align 8
  br label %if.end52

if.else43:                                        ; preds = %land.lhs.true32, %if.else28
  %44 = load ptr, ptr %__x.addr, align 8
  %call44 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %44) #13
  br i1 %call44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.else43
  %45 = load ptr, ptr %__x.addr, align 8
  %call46 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %45)
  store ptr %call46, ptr %__x.addr, align 8
  %46 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %46) #13
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.else43
  %47 = load ptr, ptr %__x.addr, align 8
  %call48 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %47)
  store ptr %call48, ptr %__x.addr, align 8
  %48 = load ptr, ptr %__x.addr, align 8
  %__is_black_49 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %48, i32 0, i32 3
  store i8 1, ptr %__is_black_49, align 8
  %49 = load ptr, ptr %__x.addr, align 8
  %call50 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %49)
  store ptr %call50, ptr %__x.addr, align 8
  %50 = load ptr, ptr %__x.addr, align 8
  %__is_black_51 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %50, i32 0, i32 3
  store i8 0, ptr %__is_black_51, align 8
  %51 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %51) #13
  br label %while.end

if.end52:                                         ; preds = %if.then35
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end27
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %if.end47, %if.end, %land.end
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree.16", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %__x) #3 personality ptr @__gxx_personality_v0 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  %1 = load ptr, ptr %__x.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__right_, align 8
  %cmp1 = icmp ne ptr %2, null
  call void @llvm.assume(i1 %cmp1)
  %3 = load ptr, ptr %__x.addr, align 8
  %__right_2 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__right_2, align 8
  store ptr %4, ptr %__y, align 8
  %5 = load ptr, ptr %__y, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %__left_, align 8
  %7 = load ptr, ptr %__x.addr, align 8
  %__right_3 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %7, i32 0, i32 1
  store ptr %6, ptr %__right_3, align 8
  %8 = load ptr, ptr %__x.addr, align 8
  %__right_4 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %__right_4, align 8
  %cmp5 = icmp ne ptr %9, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %__x.addr, align 8
  %__right_6 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %__right_6, align 8
  %12 = load ptr, ptr %__x.addr, align 8
  invoke void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef %12)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %13 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %__parent_, align 8
  %15 = load ptr, ptr %__y, align 8
  %__parent_7 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %15, i32 0, i32 2
  store ptr %14, ptr %__parent_7, align 8
  %16 = load ptr, ptr %__x.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %16) #13
  br i1 %call, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %__y, align 8
  %18 = load ptr, ptr %__x.addr, align 8
  %__parent_9 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %__parent_9, align 8
  %__left_10 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %19, i32 0, i32 0
  store ptr %17, ptr %__left_10, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %__y, align 8
  %21 = load ptr, ptr %__x.addr, align 8
  %call11 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %21)
  %__right_12 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call11, i32 0, i32 1
  store ptr %20, ptr %__right_12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %22 = load ptr, ptr %__x.addr, align 8
  %23 = load ptr, ptr %__y, align 8
  %__left_14 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %23, i32 0, i32 0
  store ptr %22, ptr %__left_14, align 8
  %24 = load ptr, ptr %__x.addr, align 8
  %25 = load ptr, ptr %__y, align 8
  invoke void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %24, ptr noundef %25)
          to label %invoke.cont15 unwind label %terminate.lpad

invoke.cont15:                                    ; preds = %if.end13
  ret void

terminate.lpad:                                   ; preds = %if.end13, %if.then
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %__x) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  %1 = load ptr, ptr %__x.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %__left_, align 8
  %cmp1 = icmp ne ptr %2, null
  call void @llvm.assume(i1 %cmp1)
  %3 = load ptr, ptr %__x.addr, align 8
  %__left_2 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %__left_2, align 8
  store ptr %4, ptr %__y, align 8
  %5 = load ptr, ptr %__y, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %__right_, align 8
  %7 = load ptr, ptr %__x.addr, align 8
  %__left_3 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %7, i32 0, i32 0
  store ptr %6, ptr %__left_3, align 8
  %8 = load ptr, ptr %__x.addr, align 8
  %__left_4 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %__left_4, align 8
  %cmp5 = icmp ne ptr %9, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %__x.addr, align 8
  %__left_6 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %__left_6, align 8
  %12 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %__parent_, align 8
  %15 = load ptr, ptr %__y, align 8
  %__parent_7 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %15, i32 0, i32 2
  store ptr %14, ptr %__parent_7, align 8
  %16 = load ptr, ptr %__x.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %16) #13
  br i1 %call, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %__y, align 8
  %18 = load ptr, ptr %__x.addr, align 8
  %__parent_9 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %__parent_9, align 8
  %__left_10 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %19, i32 0, i32 0
  store ptr %17, ptr %__left_10, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %__y, align 8
  %21 = load ptr, ptr %__x.addr, align 8
  %call11 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %21)
  %__right_12 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call11, i32 0, i32 1
  store ptr %20, ptr %__right_12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %22 = load ptr, ptr %__x.addr, align 8
  %23 = load ptr, ptr %__y, align 8
  %__right_14 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %23, i32 0, i32 1
  store ptr %22, ptr %__right_14, align 8
  %24 = load ptr, ptr %__x.addr, align 8
  %25 = load ptr, ptr %__y, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %24, ptr noundef %25)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %this, ptr noundef %__p) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %this1, i32 0, i32 2
  store ptr %0, ptr %__parent_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_4lessINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.32", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5resetB6v15007EPS9_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5resetB6v15007EPS9_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #13
  store ptr %1, ptr %call3, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__tree_node_destructorINS5_IS9_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_4) #13
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15007EPS9_(ptr noundef nonnull align 8 dereferenceable(9) %call5, ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEclB6v15007EPS9_(ptr noundef nonnull align 8 dereferenceable(9) %this, ptr noundef %__p) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_constructed = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 1
  %0 = load i8, ptr %__value_constructed, align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__na_ = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__na_, align 8
  %2 = load ptr, ptr %__p.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node.28", ptr %2, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE9__get_ptrB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(24) %__value_)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE7destroyB6v15007IS7_vvEEvRSA_PT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %__p.addr, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %__na_4 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__na_4, align 8
  %5 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEE10deallocateB6v15007ERSA_PS9_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, i64 noundef 1) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC2B6v15007ESA_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC2B6v15007ISC_RbLS9_0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.29", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %first, ptr align 8 %0, i64 8, i1 false)
  %second = getelementptr inbounds %"struct.std::__1::pair.29", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__u2.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = trunc i8 %2 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEbEC2B6v15007INS_15__tree_iteratorIS7_SB_lEEbLS9_0EEEONS0_IT_T0_EE(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(9) %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.24", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  %first2 = getelementptr inbounds %"struct.std::__1::pair.29", ptr %0, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %first2, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  %call = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007ENS_15__tree_iteratorIS6_SA_lEE(ptr noundef nonnull align 8 dereferenceable(8) %first, i64 %coerce.val.pi) #13
  %second = getelementptr inbounds %"struct.std::__1::pair.24", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__p.addr, align 8
  %second3 = getelementptr inbounds %"struct.std::__1::pair.29", ptr %2, i32 0, i32 1
  %3 = load i8, ptr %second3, align 1
  %tobool = trunc i8 %3 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007ENS_15__tree_iteratorIS6_SA_lEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__p.coerce) unnamed_addr #1 align 2 {
entry:
  %__p = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC2B6v15007ENS_15__tree_iteratorIS6_SA_lEE(ptr noundef nonnull align 8 dereferenceable(8) %this1, i64 %coerce.val.pi) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC2B6v15007ENS_15__tree_iteratorIS6_SA_lEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__p.coerce) unnamed_addr #1 align 2 {
entry:
  %__p = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %this1, i32 0, i32 0
  %__ptr_2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_2, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %0 = load ptr, ptr %call, align 8
  %call2 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS8_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %0) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS8_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC2B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS8_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC2B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS8_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4lessIS6_EENS4_IS6_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS8_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %call) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2INS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEEET_NS_9enable_ifIXaasr27__is_cpp17_forward_iteratorISG_EE5valuesr16is_constructibleIS6_NS_15iterator_traitsISG_E9referenceEEE5valueESG_E4typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 %__first.coerce, i64 %__last.coerce) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %__first = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %__last = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp4 = alloca %"struct.std::__1::__default_init_tag", align 1
  %__guard = alloca %"struct.std::__1::__transaction", align 8
  %agg.tmp = alloca %"class.std::__1::vector<std::__1::string>::__destroy_vector", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %__n = alloca i64, align 8
  %agg.tmp7 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp8 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp16 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp17 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %this, ptr %this.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  store ptr %this3, ptr %retval, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this3, i32 0, i32 0
  store ptr null, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this3, i32 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this3, i32 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp4)
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC1ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this3)
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  call void @_ZNSt3__118__make_transactionB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_13__transactionIT_EESC_(ptr sret(%"struct.std::__1::__transaction") align 8 %__guard, i64 %coerce.val.pi)
  invoke void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %this3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp7, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp8, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive9 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp7, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive9, align 8
  %coerce.val.pi10 = ptrtoint ptr %1 to i64
  %coerce.dive11 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp8, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive11, align 8
  %coerce.val.pi12 = ptrtoint ptr %2 to i64
  %call14 = invoke noundef i64 @_ZNSt3__18distanceB6v15007INS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEEENS_15iterator_traitsIT_E15difference_typeESE_SE_(i64 %coerce.val.pi10, i64 %coerce.val.pi12)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont
  store i64 %call14, ptr %__n, align 8
  %3 = load i64, ptr %__n, align 8
  %cmp = icmp ugt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont13
  %4 = load i64, ptr %__n, align 8
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this3, i64 noundef %4)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %if.then
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp16, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp17, ptr align 8 %__last, i64 8, i1 false)
  %5 = load i64, ptr %__n, align 8
  %coerce.dive18 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp16, i32 0, i32 0
  %6 = load ptr, ptr %coerce.dive18, align 8
  %coerce.val.pi19 = ptrtoint ptr %6 to i64
  %coerce.dive20 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp17, i32 0, i32 0
  %7 = load ptr, ptr %coerce.dive20, align 8
  %coerce.val.pi21 = ptrtoint ptr %7 to i64
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESH_SH_m(ptr noundef nonnull align 8 dereferenceable(24) %this3, i64 %coerce.val.pi19, i64 %coerce.val.pi21, i64 noundef %5)
          to label %invoke.cont22 unwind label %lpad

invoke.cont22:                                    ; preds = %invoke.cont15
  br label %if.end

lpad:                                             ; preds = %invoke.cont15, %if.then, %invoke.cont, %entry
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  %call24 = call noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %__guard) #13
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont22, %invoke.cont13
  call void @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %__guard) #13
  %call23 = call noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %__guard) #13
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val25 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val25
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__make_transactionB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_13__transactionIT_EESC_(ptr noalias sret(%"struct.std::__1::__transaction") align 8 %agg.result, i64 %__rollback.coerce) #4 {
entry:
  %result.ptr = alloca ptr, align 8
  %__rollback = alloca %"class.std::__1::vector<std::__1::string>::__destroy_vector", align 8
  %agg.tmp = alloca %"class.std::__1::vector<std::__1::string>::__destroy_vector", align 8
  store ptr %agg.result, ptr %result.ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %__rollback, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__rollback.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__rollback, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive1, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC1B6v15007ESA_(ptr noundef nonnull align 8 dereferenceable(9) %agg.result, i64 %coerce.val.pi)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC1ERS8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__vec.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__18distanceB6v15007INS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEEENS_15iterator_traitsIT_E15difference_typeESE_SE_(i64 %__first.coerce, i64 %__last.coerce) #4 {
entry:
  %__first = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %__last = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp3 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp4 = alloca %"struct.std::__1::input_iterator_tag", align 1
  %ref.tmp = alloca %"struct.std::__1::bidirectional_iterator_tag", align 1
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp3, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp3, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call = call noundef i64 @_ZNSt3__110__distanceB6v15007INS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEEENS_15iterator_traitsIT_E15difference_typeESE_SE_NS_18input_iterator_tagE(i64 %coerce.val.pi, i64 %coerce.val.pi7)
  ret i64 %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #16
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %1 = load i64, ptr %__n.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %1)
  store [2 x i64] %call3, ptr %__allocation, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 0
  %2 = load ptr, ptr %ptr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  store ptr %2, ptr %__begin_, align 8
  %ptr4 = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 0
  %3 = load ptr, ptr %ptr4, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr %3, ptr %__end_, align 8
  %__begin_5 = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__begin_5, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 1
  %5 = load i64, ptr %count, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %4, i64 %5
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %add.ptr, ptr %call6, align 8
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 0) #13
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endINS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESH_SH_m(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 %__first.coerce, i64 %__last.coerce, i64 noundef %__n) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__first = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %__last = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__tx = alloca %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", align 8
  %agg.tmp = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %agg.tmp5 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC1ERS8_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this3, i64 noundef %0)
  %call4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp5, ptr align 8 %__last, i64 8, i1 false)
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %1 = load ptr, ptr %__pos_, align 8
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi = ptrtoint ptr %2 to i64
  %coerce.dive7 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %agg.tmp5, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive7, align 8
  %coerce.val.pi8 = ptrtoint ptr %3 to i64
  %call9 = invoke noundef ptr @_ZNSt3__130__uninitialized_allocator_copyB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEESD_PS6_EET2_RT_T0_T1_SF_(ptr noundef nonnull align 1 dereferenceable(1) %call4, i64 %coerce.val.pi, i64 %coerce.val.pi8, ptr noundef %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_10 = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  store ptr %call9, ptr %__pos_10, align 8
  %call11 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #13
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call12 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val13 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val13
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEE10__completeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__completed_ = getelementptr inbounds %"struct.std::__1::__transaction", ptr %this1, i32 0, i32 1
  store i8 1, ptr %__completed_, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(9) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %this1) #13
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  store ptr null, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC1B6v15007ESA_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, i64 %__rollback.coerce) unnamed_addr #0 align 2 {
entry:
  %__rollback = alloca %"class.std::__1::vector<std::__1::string>::__destroy_vector", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %__rollback, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__rollback.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %__rollback, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B6v15007ESA_(ptr noundef nonnull align 8 dereferenceable(9) %this1, i64 %coerce.val.pi)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEC2B6v15007ESA_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, i64 %__rollback.coerce) unnamed_addr #1 align 2 {
entry:
  %__rollback = alloca %"class.std::__1::vector<std::__1::string>::__destroy_vector", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %__rollback, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__rollback.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__rollback_ = getelementptr inbounds %"struct.std::__1::__transaction", ptr %this1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__rollback_, ptr align 8 %__rollback, i64 8, i1 false)
  %__completed_ = getelementptr inbounds %"struct.std::__1::__transaction", ptr %this1, i32 0, i32 1
  store i8 0, ptr %__completed_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC2ERS8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec.addr, align 8
  store ptr %0, ptr %__vec_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__110__distanceB6v15007INS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS7_PvEElEEEENS_15iterator_traitsIT_E15difference_typeESE_SE_NS_18input_iterator_tagE(i64 %__first.coerce, i64 %__last.coerce) #4 {
entry:
  %__first = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %__last = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %0 = alloca %"struct.std::__1::input_iterator_tag", align 1
  %__r = alloca i64, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store i64 0, ptr %__r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEESD_(ptr noundef nonnull align 8 dereferenceable(8) %__first, ptr noundef nonnull align 8 dereferenceable(8) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %__r, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, ptr %__r, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first)
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %2 = load i64, ptr %__r, align 8
  ret i64 %2
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEESD_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  %call = call noundef ptr @_ZNSt3__116__tree_next_iterB6v15007IPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEES5_EET_T0_(ptr noundef %0) #13
  %__ptr_2 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %this1, i32 0, i32 0
  store ptr %call, ptr %__ptr_2, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEESD_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB6v15007IS7_vEEmRKS7_(ptr noundef nonnull align 1 dereferenceable(1) %call) #13
  store i64 %call2, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #13
  store i64 %call4, ptr %ref.tmp3, align 8
  %call5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i64, ptr %call5, align 8
  ret i64 %0

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #14
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef @.str.16) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #4 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %__alloc.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  store ptr %call, ptr %ptr, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 1
  %2 = load i64, ptr %__n.addr, align 8
  store i64 %2, ptr %count, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__current_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %add.ptr6 = getelementptr inbounds %"class.std::__1::basic_string", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds %"class.std::__1::basic_string", ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerB6v15007EPKvSA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB6v15007IS7_vEEmRKS7_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #3 align 2 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #13
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 768614336404564650
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #3 align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef %__msg) #11 personality ptr @__gxx_personality_v0 {
entry:
  %__msg.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__msg, ptr %__msg.addr, align 8
  %exception = call ptr @__cxa_allocate_exception(i64 16) #13
  %0 = load ptr, ptr %__msg.addr, align 8
  %call = invoke noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt12length_error, ptr @_ZNSt12length_errorD1Ev) #16
  unreachable

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val1 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val1
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  ret ptr %this1
}

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  ret ptr %this1
}

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeB6v15007IS7_vEEmRKS7_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #16
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 24
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerB6v15007EPKvSA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  %.addr2 = alloca ptr, align 8
  %.addr3 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  store ptr %2, ptr %.addr2, align 8
  store ptr %3, ptr %.addr3, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %0) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %0 = load ptr, ptr %call, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC1ERS8_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__v.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2ERS8_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__130__uninitialized_allocator_copyB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEESD_PS6_EET2_RT_T0_T1_SF_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 %__first1.coerce, i64 %__last1.coerce, ptr noundef %__first2) #4 personality ptr @__gxx_personality_v0 {
entry:
  %__first1 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %__last1 = alloca %"class.std::__1::__tree_const_iterator.25", align 8
  %__alloc.addr = alloca ptr, align 8
  %__first2.addr = alloca ptr, align 8
  %__destruct_first = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::_AllocatorDestroyRangeReverse", align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__first1, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first1.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %__last1, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last1.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store ptr %__first2, ptr %__first2.addr, align 8
  %0 = load ptr, ptr %__first2.addr, align 8
  store ptr %0, ptr %__destruct_first, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont6, %entry
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_21__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEESD_(ptr noundef nonnull align 8 dereferenceable(8) %__first1, ptr noundef nonnull align 8 dereferenceable(8) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont
  %1 = load ptr, ptr %__alloc.addr, align 8
  %2 = load ptr, ptr %__first2.addr, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %2) #13
  %call5 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first1)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %while.body
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB6v15007IS6_JRKS6_EvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(24) %call5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first1)
  %3 = load ptr, ptr %__first2.addr, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 1
  store ptr %incdec.ptr, ptr %__first2.addr, align 8
  br label %while.cond, !llvm.loop !18

lpad:                                             ; preds = %invoke.cont4, %while.body, %while.cond
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %7 = call ptr @__cxa_begin_catch(ptr %exn) #13
  %8 = load ptr, ptr %__alloc.addr, align 8
  %call10 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC1B6v15007ERS7_RS8_SB_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(8) %__first2.addr)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %catch
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont11 unwind label %lpad8

invoke.cont11:                                    ; preds = %invoke.cont9
  invoke void @__cxa_rethrow() #16
          to label %unreachable unwind label %lpad8

while.end:                                        ; preds = %invoke.cont
  br label %try.cont

lpad8:                                            ; preds = %invoke.cont11, %invoke.cont9, %catch
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont12 unwind label %terminate.lpad

invoke.cont12:                                    ; preds = %lpad8
  br label %eh.resume

try.cont:                                         ; preds = %while.end
  %12 = load ptr, ptr %__first2.addr, align 8
  ret ptr %12

eh.resume:                                        ; preds = %invoke.cont12
  %exn13 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn13, 0
  %lpad.val14 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val14

terminate.lpad:                                   ; preds = %lpad8
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont11
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC2ERS8_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__v.addr, align 8
  store ptr %0, ptr %__v_, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__end_, align 8
  store ptr %2, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__end_2, align 8
  %5 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %4, i64 %5
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB6v15007IS6_JRKS6_EvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB6v15007IS5_JRKS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node.28", ptr %call, i32 0, i32 1
  ret ptr %__value_
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC1B6v15007ERS7_RS8_SB_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(8) %__first, ptr noundef nonnull align 8 dereferenceable(8) %__last) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B6v15007ERS7_RS8_SB_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__last_, align 8
  %2 = load ptr, ptr %1, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007ES7_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %2)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__first_, align 8
  %4 = load ptr, ptr %3, align 8
  %call3 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007ES7_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp2, ptr noundef %4)
  %5 = load [2 x i64], ptr %agg.tmp, align 8
  %6 = load [2 x i64], ptr %agg.tmp2, align 8
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, [2 x i64] %5, [2 x i64] %6)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB6v15007IS5_JRKS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPNS_11__tree_nodeIS6_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator.25", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EC2B6v15007ERS7_RS8_SB_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(8) %__first, ptr noundef nonnull align 8 dereferenceable(8) %__last) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  store ptr %0, ptr %__alloc_, align 8
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__first.addr, align 8
  store ptr %1, ptr %__first_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__last.addr, align 8
  store ptr %2, ptr %__last_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, [2 x i64] %__first.coerce, [2 x i64] %__last.coerce) #4 {
entry:
  %__first = alloca %"class.std::__1::reverse_iterator", align 8
  %__last = alloca %"class.std::__1::reverse_iterator", align 8
  %__alloc.addr = alloca ptr, align 8
  store [2 x i64] %__first.coerce, ptr %__first, align 8
  store [2 x i64] %__last.coerce, ptr %__last, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKSB_EEEEE4typeESD_(ptr noundef nonnull align 8 dereferenceable(16) %__first) #13
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB6v15007IS6_vEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first)
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007ES7_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B6v15007ES7_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #4 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %cmp = icmp ne ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB6v15007IS6_vEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB6v15007EPS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKSB_EEEEE4typeESD_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB6v15007ERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyB6v15007EPS5_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvE6__callB6v15007ERKS9_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %call) #13
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #14
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__tmp, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %__tmp, align 8
  ret ptr %incdec.ptr
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC2B6v15007ES7_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  store ptr %0, ptr %__t, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__x.addr, align 8
  store ptr %1, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__v_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %1, i32 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__transactionINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(9) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__completed_ = getelementptr inbounds %"struct.std::__1::__transaction", ptr %this1, i32 0, i32 1
  %0 = load i8, ptr %__completed_, align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %__rollback_ = getelementptr inbounds %"struct.std::__1::__transaction", ptr %this1, i32 0, i32 0
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__rollback_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #14
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec_, align 8
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %__vec_2 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__vec_2, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %1)
  %__vec_3 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__vec_3, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__begin_, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__vec_4 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__vec_4, align 8
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  %__vec_5 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__vec_5, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  %__vec_6 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %6 = load ptr, ptr %__vec_6, align 8
  %__begin_7 = getelementptr inbounds %"class.std::__1::vector", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__begin_7, align 8
  %__vec_8 = getelementptr inbounds %"class.std::__1::vector<std::__1::string>::__destroy_vector", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__vec_8, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #13
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %add.ptr6 = getelementptr inbounds %"class.std::__1::basic_string", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call8 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %add.ptr9 = getelementptr inbounds %"class.std::__1::basic_string", ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerB6v15007EPKvSA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB6v15007EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__base_destruct_at_endB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %incdec.ptr) #13
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB6v15007IS6_vEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr %4, ptr %__end_3, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateB6v15007EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 24
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %0, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #14
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::vector<std::__1::string>::__destroy_vector", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorC1ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #14
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %this1)
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #14
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB6v15007IJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__tx = alloca %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionC1ERS8_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %0) #13
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB6v15007IS6_JS6_EvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<std::__1::string>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %2, i32 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #13
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIS6_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__x) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %0 = load ptr, ptr %__a, align 8
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC1EmmS8_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load ptr, ptr %__a, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %2) #13
  %3 = load ptr, ptr %__x.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB6v15007IS6_JS6_EvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i32 0, i32 2
  %4 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #13
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB6v15007IS6_JS6_EvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB6v15007IS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructB6v15007IS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #4 align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca ptr, align 8
  %__new_size.addr = alloca i64, align 8
  %__ms = alloca i64, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__new_size, ptr %__new_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %1 = load i64, ptr %__ms, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #16
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store i64 %call2, ptr %__cap, align 8
  %2 = load i64, ptr %__cap, align 8
  %3 = load i64, ptr %__ms, align 8
  %div = udiv i64 %3, 2
  %cmp3 = icmp uge i64 %2, %div
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load i64, ptr %__ms, align 8
  store i64 %4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load i64, ptr %__cap, align 8
  %mul = mul i64 2, %5
  store i64 %mul, ptr %ref.tmp, align 8
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__new_size.addr)
  %6 = load i64, ptr %call6, align 8
  store i64 %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %7 = load i64, ptr %retval, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC1EmmS8_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__cap, ptr %__cap.addr, align 8
  store i64 %__start, ptr %__start.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__cap.addr, align 8
  %1 = load i64, ptr %__start.addr, align 8
  %2 = load ptr, ptr %__a.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS6_RS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007ES7_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007ES7_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEC1B6v15007ES7_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
  %4 = load [2 x i64], ptr %agg.tmp, align 8
  %5 = load [2 x i64], ptr %agg.tmp3, align 8
  %6 = load [2 x i64], ptr %agg.tmp5, align 8
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %4, [2 x i64] %5, [2 x i64] %6)
  store [2 x i64] %call8, ptr %ref.tmp, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %7 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %7, i32 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_11 = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__v.addr, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %8, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS9_EE5valueEvE4typeERS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_11, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #13
  %__end_13 = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__v.addr, align 8
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %9, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS9_EE5valueEvE4typeERS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #13
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %10 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  call void @_ZNSt3__14swapB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS9_EE5valueEvE4typeERS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #13
  %11 = load ptr, ptr %__v.addr, align 8
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  %13 = load ptr, ptr %__v.addr, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %13, i32 0, i32 0
  store ptr %12, ptr %__first_, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  call void @_ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call18) #13
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %this1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #4 {
entry:
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__less", align 1
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__b.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #3 {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__b.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %__b.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %__a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %2, %cond.true ], [ %3, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2EmmS8_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__cap, ptr %__cap.addr, align 8
  store i64 %__start, ptr %__start.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  store ptr null, ptr %ref.tmp, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC1B6v15007IDnS9_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load i64, ptr %__cap.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #13
  %2 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSA_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %2)
  store [2 x i64] %call3, ptr %__allocation, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 0
  %3 = load ptr, ptr %ptr, align 8
  %__first_4 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  store ptr %3, ptr %__first_4, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 1
  %4 = load i64, ptr %count, align 8
  store i64 %4, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__first_5 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__first_5, align 8
  %6 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %5, i64 %6
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %__first_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %7 = load ptr, ptr %__first_6, align 8
  %8 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds %"class.std::__1::basic_string", ptr %7, i64 %8
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #13
  store ptr %add.ptr7, ptr %call8, align 8
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC1B6v15007IDnS9_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2B6v15007IDnS9_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #13
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEC2B6v15007IDnS9_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb0EEC2B6v15007IS8_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb0EEC2B6v15007IS8_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.35", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  store ptr %0, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.35", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__value_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EESA_SA_EET2_RT_T0_T1_SB_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, [2 x i64] %__first1.coerce, [2 x i64] %__last1.coerce, [2 x i64] %__first2.coerce) #4 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %__first1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__last1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__first2 = alloca %"class.std::__1::reverse_iterator", align 8
  %__alloc.addr = alloca ptr, align 8
  %__destruct_first = alloca %"class.std::__1::reverse_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::_AllocatorDestroyRangeReverse.36", align 8
  store [2 x i64] %__first1.coerce, ptr %__first1, align 8
  store [2 x i64] %__last1.coerce, ptr %__last1, align 8
  store [2 x i64] %__first2.coerce, ptr %__first2, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__destruct_first, ptr align 8 %__first2, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont3, %entry
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first1, ptr noundef nonnull align 8 dereferenceable(16) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKSB_EEEEE4typeESD_(ptr noundef nonnull align 8 dereferenceable(16) %__first2) #13
  %call2 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructB6v15007IS6_JS6_EvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(24) %call2)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %while.body
  %call4 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first2)
  br label %while.cond, !llvm.loop !21

lpad:                                             ; preds = %while.body, %while.cond
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %4 = call ptr @__cxa_begin_catch(ptr %exn) #13
  %5 = load ptr, ptr %__alloc.addr, align 8
  %call8 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EEEC1B6v15007ERS7_RSA_SD_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %catch
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont9 unwind label %lpad6

invoke.cont9:                                     ; preds = %invoke.cont7
  invoke void @__cxa_rethrow() #16
          to label %unreachable unwind label %lpad6

while.end:                                        ; preds = %invoke.cont
  br label %try.cont

lpad6:                                            ; preds = %invoke.cont9, %invoke.cont7, %catch
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont10 unwind label %terminate.lpad

invoke.cont10:                                    ; preds = %lpad6
  br label %eh.resume

try.cont:                                         ; preds = %while.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__first2, i64 16, i1 false)
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9

eh.resume:                                        ; preds = %invoke.cont10
  %exn11 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn11, 0
  %lpad.val12 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val12

terminate.lpad:                                   ; preds = %lpad6
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont9
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS9_EE5valueEvE4typeERS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__t, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %__x.addr, align 8
  store ptr %3, ptr %4, align 8
  %5 = load ptr, ptr %__t, align 8
  %6 = load ptr, ptr %__y.addr, align 8
  store ptr %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EEEC1B6v15007ERS7_RSA_SD_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__last.addr, align 8
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EEEC2B6v15007ERS7_RSA_SD_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.37", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.37", align 8
  %agg.tmp4 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.36", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.36", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__last_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp2, ptr align 8 %1, i64 16, i1 false)
  %2 = load [2 x i64], ptr %agg.tmp2, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC1B6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp, [2 x i64] %2)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.36", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__first_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp4, ptr align 8 %3, i64 16, i1 false)
  %4 = load [2 x i64], ptr %agg.tmp4, align 8
  %call5 = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC1B6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp3, [2 x i64] %4)
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorINS8_IPS6_EEEESB_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %agg.tmp, ptr noundef %agg.tmp3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorIPS6_EEEC2B6v15007ERS7_RSA_SD_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__alloc.addr = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.36", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  store ptr %0, ptr %__alloc_, align 8
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.36", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__first.addr, align 8
  store ptr %1, ptr %__first_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.36", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__last.addr, align 8
  store ptr %2, ptr %__last_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEENS_16reverse_iteratorINS8_IPS6_EEEESB_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last) #4 {
entry:
  %__alloc.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEES9_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__first, ptr noundef nonnull align 8 dereferenceable(40) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKSC_EEEEE4typeESE_(ptr noundef nonnull align 8 dereferenceable(40) %__first) #13
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB6v15007IS6_vEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__first)
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC1B6v15007ES8_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #0 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator", align 8
  %this.addr = alloca ptr, align 8
  store [2 x i64] %__x.coerce, ptr %__x, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load [2 x i64], ptr %__x, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(40) %this1, [2 x i64] %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEES9_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__x, ptr noundef nonnull align 8 dereferenceable(40) %__y) #4 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call2 = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %1)
  store [2 x i64] %call2, ptr %ref.tmp1, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEbRKNS_16reverse_iteratorIT_EERKNS8_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1)
  ret i1 %call3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKSC_EEEEE4typeESE_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEvE6__callB6v15007ERKSA_(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.37", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %current)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.37", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %current, i64 16, i1 false)
  %0 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEvE6__callB6v15007ERKSA_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %call) #13
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #14
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__tmp = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.37", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__tmp, ptr align 8 %current, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__tmp)
  %call2 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %0, i32 1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEC2B6v15007ES8_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #1 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator", align 8
  %this.addr = alloca ptr, align 8
  store [2 x i64] %__x.coerce, ptr %__x, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.37", ptr %this1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__t, ptr align 8 %__x, i64 16, i1 false)
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.37", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %current, ptr align 8 %__x, i64 16, i1 false)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #13
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #13
  %__first_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_2, align 8
  %call3 = invoke noundef i64 @_ZNKSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #13
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE17__destruct_at_endB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #13
  %0 = load ptr, ptr %call, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE17__destruct_at_endB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE17__destruct_at_endB6v15007EPS6_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE17__destruct_at_endB6v15007EPS6_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant", align 1
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #13
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::basic_string", ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_(ptr noundef %incdec.ptr) #13
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB6v15007IS6_vEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE11lower_boundB6v15007IS7_EENS_21__tree_const_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__v.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call3 = call i64 @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE13__lower_boundIS7_EENS_21__tree_const_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEERKT_SK_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISI_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %call, ptr noundef %call2)
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call3 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE37select_on_container_copy_constructionB6v15007IS2_vvEES2_RKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007ENS_24__uninitialized_size_tagEmRKS4_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__size, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__uninitialized_size_tag", align 1
  %this.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load i64, ptr %__size.addr, align 8
  %2 = load ptr, ptr %__a.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007ENS_24__uninitialized_size_tagEmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__111char_traitsIcE4copyEPcPKcm(ptr noundef %__s1, ptr noundef %__s2, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__s1.addr = alloca ptr, align 8
  %__s2.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__s1, ptr %__s1.addr, align 8
  store ptr %__s2, ptr %__s2.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__s2.addr, align 8
  %1 = load ptr, ptr %__s1.addr, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %__s2.addr, align 8
  %3 = load ptr, ptr %__s1.addr, align 8
  %4 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4
  %cmp1 = icmp uge ptr %2, %add.ptr
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  call void @llvm.assume(i1 %5)
  %6 = load ptr, ptr %__s2.addr, align 8
  %7 = load i64, ptr %__n.addr, align 8
  %8 = load ptr, ptr %__s1.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__16copy_nB6v15007IPKcmPcEENS_9enable_ifIXsr33__is_cpp17_random_access_iteratorIT_EE5valueET1_E4typeES5_T0_S6_(ptr noundef %6, i64 noundef %7, ptr noundef %8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %lor.end
  %9 = load ptr, ptr %__s1.addr, align 8
  ret ptr %9

terminate.lpad:                                   ; preds = %lor.end
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__111char_traitsIcE6assignEPcmc(ptr noundef %__s, i64 noundef %__n, i8 noundef signext %__a) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a.addr = alloca i8, align 1
  store ptr %__s, ptr %__s.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i8 %__a, ptr %__a.addr, align 1
  %0 = load ptr, ptr %__s.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__16fill_nB6v15007IPcmcEET_S2_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %__a.addr)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %2 = load ptr, ptr %__s.addr, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #14
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007ENS_24__uninitialized_size_tagEmRKS4_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__size, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %0 = alloca %"struct.std::__1::__uninitialized_size_tag", align 1
  %this.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %__capacity = alloca i64, align 8
  %__allocation = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__a.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %__r_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %2 = load i64, ptr %__size.addr, align 8
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %cmp = icmp ugt i64 %2, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #16
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %__size.addr, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB6v15007Em(i64 noundef %3)
  br i1 %call3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %4 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %4) #13
  br label %if.end8

if.else:                                          ; preds = %if.end
  %5 = load i64, ptr %__size.addr, align 8
  %call5 = call noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendB6v15007Em(i64 noundef %5) #13
  %add = add i64 %call5, 1
  store i64 %add, ptr %__capacity, align 8
  %call6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %6 = load i64, ptr %__capacity, align 8
  %call7 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateB6v15007ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call6, i64 noundef %6)
  store ptr %call7, ptr %__allocation, align 8
  %7 = load ptr, ptr %__allocation, align 8
  %8 = load i64, ptr %__capacity, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__begin_lifetimeB6v15007EPcm(ptr noundef %7, i64 noundef %8)
  %9 = load i64, ptr %__capacity, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %9) #13
  %10 = load ptr, ptr %__allocation, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerB6v15007EPc(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %10) #13
  %11 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %11) #13
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %this1)
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca i64, align 8
  %this.addr = alloca ptr, align 8
  %__m = alloca i64, align 8
  %__uses_lsb = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call) #13
  store i64 %call2, ptr %__m, align 8
  %0 = load i64, ptr %__m, align 8
  %call3 = call noundef i64 @_ZNSt3__114numeric_limitsImE3maxB6v15007Ev() #13
  %div = udiv i64 %call3, 2
  %cmp = icmp ule i64 %0, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %__m, align 8
  %sub = sub i64 %1, 16
  store i64 %sub, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store i8 0, ptr %__uses_lsb, align 1
  %2 = load i8, ptr %__uses_lsb, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %3 = load i64, ptr %__m, align 8
  %sub4 = sub i64 %3, 16
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %4 = load i64, ptr %__m, align 8
  %div5 = udiv i64 %4, 2
  %sub6 = sub i64 %div5, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub4, %cond.true ], [ %sub6, %cond.false ]
  store i64 %cond, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %5 = load i64, ptr %retval, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #11 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef @.str.17) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__fits_in_ssoB6v15007Em(i64 noundef %__sz) #3 align 2 {
entry:
  %__sz.addr = alloca i64, align 8
  store i64 %__sz, ptr %__sz.addr, align 8
  %0 = load i64, ptr %__sz.addr, align 8
  %cmp = icmp ult i64 %0, 23
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__s) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__s.addr, align 8
  %cmp = icmp ult i64 %0, 23
  call void @llvm.assume(i1 %cmp)
  %1 = load i64, ptr %__s.addr, align 8
  %conv = trunc i64 %1 to i8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %2 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %2, i32 0, i32 2
  %bf.load = load i8, ptr %__size_, align 1
  %bf.value = and i8 %conv, 127
  %bf.clear = and i8 %bf.load, -128
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %__size_, align 1
  %__r_2 = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_2) #13
  %3 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call3, i32 0, i32 0
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %3, i32 0, i32 2
  %bf.load4 = load i8, ptr %__is_long_, align 1
  %bf.clear5 = and i8 %bf.load4, 127
  %bf.set6 = or i8 %bf.clear5, 0
  store i8 %bf.set6, ptr %__is_long_, align 1
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendB6v15007Em(i64 noundef %__s) #3 align 2 {
entry:
  %retval = alloca i64, align 8
  %__s.addr = alloca i64, align 8
  %__guess = alloca i64, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %0 = load i64, ptr %__s.addr, align 8
  %cmp = icmp ult i64 %0, 23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 22, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__s.addr, align 8
  %add = add i64 %1, 1
  %call = call noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itB6v15007ILm16EEEmm(i64 noundef %add) #13
  %sub = sub i64 %call, 1
  store i64 %sub, ptr %__guess, align 8
  %2 = load i64, ptr %__guess, align 8
  %cmp1 = icmp eq i64 %2, 23
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i64, ptr %__guess, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %__guess, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, ptr %__guess, align 8
  store i64 %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, ptr %retval, align 8
  ret i64 %5
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateB6v15007ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIcE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__begin_lifetimeB6v15007EPcm(ptr noundef %__begin, i64 noundef %__n) #3 align 2 {
entry:
  %__begin.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__begin, ptr %__begin.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__s) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__s.addr, align 8
  %div = udiv i64 %0, 1
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__cap_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %1, i32 0, i32 2
  %bf.load = load i64, ptr %__cap_, align 8
  %bf.value = and i64 %div, 9223372036854775807
  %bf.clear = and i64 %bf.load, -9223372036854775808
  %bf.set = or i64 %bf.clear, %bf.value
  store i64 %bf.set, ptr %__cap_, align 8
  %__r_2 = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_2) #13
  %2 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call3, i32 0, i32 0
  %__is_long_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %2, i32 0, i32 2
  %bf.load4 = load i64, ptr %__is_long_, align 8
  %bf.clear5 = and i64 %bf.load4, 9223372036854775807
  %bf.set6 = or i64 %bf.clear5, -9223372036854775808
  store i64 %bf.set6, ptr %__is_long_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerB6v15007EPc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__data_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %1, i32 0, i32 0
  store ptr %0, ptr %__data_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__s) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__s.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %1 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %1, i32 0, i32 1
  store i64 %0, ptr %__size_, align 8
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagERKS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 8 dereferenceable(24) %this1)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007IRKS2_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007IRKS2_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorIcE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsImE3maxB6v15007Ev() #3 align 2 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB6v15007Ev() #13
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIcE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 -1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB6v15007Ev() #3 align 2 {
entry:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itB6v15007ILm16EEEmm(i64 noundef %__s) #3 align 2 {
entry:
  %__s.addr = alloca i64, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %0 = load i64, ptr %__s.addr, align 8
  %add = add i64 %0, 15
  %and = and i64 %add, -16
  ret i64 %and
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #16
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 1
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 1)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16copy_nB6v15007IPKcmPcEENS_9enable_ifIXsr33__is_cpp17_random_access_iteratorIT_EE5valueET1_E4typeES5_T0_S6_(ptr noundef %__first, i64 noundef %__orig_n, ptr noundef %__result) #4 {
entry:
  %__first.addr = alloca ptr, align 8
  %__orig_n.addr = alloca i64, align 8
  %__result.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__orig_n, ptr %__orig_n.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load i64, ptr %__orig_n.addr, align 8
  store i64 %0, ptr %__n, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__first.addr, align 8
  %3 = load i64, ptr %__n, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load ptr, ptr %__result.addr, align 8
  %call = call noundef ptr @_ZNSt3__14copyB6v15007IPKcPcEET0_T_S5_S4_(ptr noundef %1, ptr noundef %add.ptr, ptr noundef %4)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__14copyB6v15007IPKcPcEET0_T_S5_S4_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #4 {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::pair.38", align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call [2 x i64] @_ZNSt3__16__copyB6v15007IPKcS2_PcLi0EEENS_4pairIT_T1_EES5_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair.38", ptr %ref.tmp, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  ret ptr %3
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__copyB6v15007IPKcS2_PcLi0EEENS_4pairIT_T1_EES5_T0_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #4 {
entry:
  %retval = alloca %"struct.std::__1::pair.38", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__range = alloca %"struct.std::__1::pair.39", align 8
  %__ret = alloca %"struct.std::__1::pair.38", align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp5 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %call = call [2 x i64] @_ZNSt3__114__unwrap_rangeB6v15007IPKcS2_EENS_4pairIT0_S4_EET_S6_(ptr noundef %0, ptr noundef %1)
  store [2 x i64] %call, ptr %__range, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.39", ptr %__range, i32 0, i32 0
  %2 = load ptr, ptr %first, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair.39", ptr %__range, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  %4 = load ptr, ptr %__result.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPcNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %4) #13
  %call2 = call [2 x i64] @_ZNSt3__111__copy_implB6v15007IKccvEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %call1)
  store [2 x i64] %call2, ptr %__ret, align 8
  %5 = load ptr, ptr %__first.addr, align 8
  %first3 = getelementptr inbounds %"struct.std::__1::pair.38", ptr %__ret, i32 0, i32 0
  %6 = load ptr, ptr %first3, align 8
  %call4 = call noundef ptr @_ZNSt3__114__rewrap_rangeB6v15007IPKcS2_EET_S3_T0_(ptr noundef %5, ptr noundef %6)
  store ptr %call4, ptr %ref.tmp, align 8
  %7 = load ptr, ptr %__result.addr, align 8
  %second6 = getelementptr inbounds %"struct.std::__1::pair.38", ptr %__ret, i32 0, i32 1
  %8 = load ptr, ptr %second6, align 8
  %call7 = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPcS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %7, ptr noundef %8) #13
  store ptr %call7, ptr %ref.tmp5, align 8
  %call8 = call [2 x i64] @_ZNSt3__19make_pairB6v15007IPKcPcEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp5)
  store [2 x i64] %call8, ptr %retval, align 8
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__unwrap_rangeB6v15007IPKcS2_EENS_4pairIT0_S4_EET_S6_(ptr noundef %__first, ptr noundef %__last) #4 {
entry:
  %retval = alloca %"struct.std::__1::pair.39", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp1 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPKcNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %0) #13
  store ptr %call, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPKcNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %1) #13
  store ptr %call2, ptr %ref.tmp1, align 8
  %call3 = call [2 x i64] @_ZNSt3__19make_pairB6v15007IPKcS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  store [2 x i64] %call3, ptr %retval, align 8
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__111__copy_implB6v15007IKccvEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #4 {
entry:
  %retval = alloca %"struct.std::__1::pair.38", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp1 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__last.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %__n, align 8
  %2 = load i64, ptr %__n, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %__result.addr, align 8
  %4 = load ptr, ptr %__first.addr, align 8
  %5 = load i64, ptr %__n, align 8
  %mul = mul i64 %5, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %__first.addr, align 8
  %7 = load i64, ptr %__n, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %add.ptr, ptr %ref.tmp, align 8
  %8 = load ptr, ptr %__result.addr, align 8
  %9 = load i64, ptr %__n, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %8, i64 %9
  store ptr %add.ptr2, ptr %ref.tmp1, align 8
  %call = call [2 x i64] @_ZNSt3__19make_pairB6v15007IPKcPcEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  store [2 x i64] %call, ptr %retval, align 8
  %10 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %10
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPcNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %__i) #3 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__unwrapB6v15007ES1_(ptr noundef %0) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB6v15007IPKcPcEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #3 {
entry:
  %retval = alloca %"struct.std::__1::pair.38", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPKcPcEC1B6v15007IS2_S3_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__rewrap_rangeB6v15007IPKcS2_EET_S3_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #3 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPKcS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %0, ptr noundef %1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPcS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #3 personality ptr @__gxx_personality_v0 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__rewrapB6v15007ES1_S1_(ptr noundef %0, ptr noundef %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %call

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB6v15007IPKcS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #3 {
entry:
  %retval = alloca %"struct.std::__1::pair.39", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPKcS2_EC1B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPKcNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %__i) #3 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implIPKcLb1EE8__unwrapB6v15007ES2_(ptr noundef %0) #13
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPKcS2_EC1B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %__u2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPKcS2_EC2B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPKcS2_EC2B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.39", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %first, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair.39", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__u2.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPKcLb1EE8__unwrapB6v15007ES2_(ptr noundef %__i) #3 align 2 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %0) #13
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__unwrapB6v15007ES1_(ptr noundef %__i) #3 align 2 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %0) #13
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPKcPcEC1B6v15007IS2_S3_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %__u2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPKcPcEC2B6v15007IS2_S3_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPKcPcEC2B6v15007IS2_S3_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.38", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %first, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair.38", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__u2.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPKcS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #3 personality ptr @__gxx_personality_v0 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__118__unwrap_iter_implIPKcLb1EE8__rewrapB6v15007ES2_S2_(ptr noundef %0, ptr noundef %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %call

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPKcLb1EE8__rewrapB6v15007ES2_S2_(ptr noundef %__orig_iter, ptr noundef %__unwrapped_iter) #3 align 2 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__unwrapped_iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__unwrapped_iter, ptr %__unwrapped_iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__unwrapped_iter.addr, align 8
  %2 = load ptr, ptr %__orig_iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IKcEEPT_S3_(ptr noundef %2) #13
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %sub.ptr.sub
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__rewrapB6v15007ES1_S1_(ptr noundef %__orig_iter, ptr noundef %__unwrapped_iter) #3 align 2 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__unwrapped_iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__unwrapped_iter, ptr %__unwrapped_iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__unwrapped_iter.addr, align 8
  %2 = load ptr, ptr %__orig_iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IcEEPT_S2_(ptr noundef %2) #13
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %sub.ptr.sub
  ret ptr %add.ptr
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16fill_nB6v15007IPcmcEET_S2_T0_RKT1_(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__value) #4 {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__121__convert_to_integralB6v15007Em(i64 noundef %1)
  %2 = load ptr, ptr %__value.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__18__fill_nB6v15007IPcmcEET_S2_T0_RKT1_(ptr noundef %0, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %call1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__18__fill_nB6v15007IPcmcEET_S2_T0_RKT1_(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__value) #3 {
entry:
  %__first.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__value.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %__value.addr, align 8
  %2 = load i8, ptr %1, align 1
  %3 = load ptr, ptr %__first.addr, align 8
  store i8 %2, ptr %3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %__first.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__first.addr, align 8
  %5 = load i64, ptr %__n.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, ptr %__n.addr, align 8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %__first.addr, align 8
  ret ptr %6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__121__convert_to_integralB6v15007Em(i64 noundef %__val) #3 {
entry:
  %__val.addr = alloca i64, align 8
  store i64 %__val, ptr %__val.addr, align 8
  %0 = load i64, ptr %__val.addr, align 8
  ret i64 %0
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__str) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__str.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__str, ptr %__str.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__str.addr, align 8
  %call = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %1 = load ptr, ptr %__str.addr, align 8
  %call2 = call noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  %call3 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, i64 noundef %call2)
  ret ptr %call3
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress ssp uwtable
define internal noundef zeroext i8 @"_ZZN9INIReader7MakeKeyERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES8_ENK3$_1clERKh"(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %ch) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %ch.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %call = call noundef i32 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_5(i32 noundef %conv)
  %conv2 = trunc i32 %call to i8
  ret i8 %conv2
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr [2 x i64] @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRKS7_EEENSJ_IJEEEEEENS_4pairINS_15__tree_iteratorIS8_PNS_11__tree_nodeIS8_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__k, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #4 align 2 {
entry:
  %retval = alloca %"struct.std::__1::pair.40", align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  %__parent = alloca ptr, align 8
  %__child = alloca ptr, align 8
  %__r = alloca ptr, align 8
  %__inserted = alloca i8, align 1
  %__h = alloca %"class.std::__1::unique_ptr.44", align 8
  %ref.tmp = alloca %"class.std::__1::__tree_iterator.41", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  store ptr %__args3, ptr %__args.addr4, align 8
  %this5 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISJ_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef nonnull align 8 dereferenceable(8) %__parent, ptr noundef nonnull align 8 dereferenceable(24) %0)
  store ptr %call, ptr %__child, align 8
  %1 = load ptr, ptr %__child, align 8
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %__r, align 8
  store i8 0, ptr %__inserted, align 1
  %3 = load ptr, ptr %__child, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %__args.addr, align 8
  %6 = load ptr, ptr %__args.addr2, align 8
  %7 = load ptr, ptr %__args.addr4, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS7_EEENSJ_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS8_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_(ptr sret(%"class.std::__1::unique_ptr.44") align 8 %__h, ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %8 = load ptr, ptr %__parent, align 8
  %9 = load ptr, ptr %__child, align 8
  %call6 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #13
  call void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSJ_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %call6) #13
  %call7 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #13
  store ptr %call7, ptr %__r, align 8
  store i8 1, ptr %__inserted, align 1
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %__r, align 8
  %call9 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC1B6v15007ESC_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef %10) #13
  %call10 = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEbEC1B6v15007ISE_RbLSB_0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__inserted) #13
  %11 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116forward_as_tupleB6v15007IJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_5tupleIJDpOT_EEESC_(ptr noundef nonnull align 8 dereferenceable(24) %__t) #3 {
entry:
  %retval = alloca %"class.std::__1::tuple", align 8
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef ptr @_ZNSt3__15tupleIJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007INS_4_AndELi0EEES8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %coerce.dive = getelementptr inbounds %"class.std::__1::tuple", ptr %retval, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %coerce.dive1, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116forward_as_tupleB6v15007IJEEENS_5tupleIJDpOT_EEES4_() #3 {
entry:
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE10pointer_toB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__value_) #13
  ret ptr %call2
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__find_equalIS7_EERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISJ_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__parent, ptr noundef nonnull align 8 dereferenceable(24) %__v) #4 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__parent.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__nd = alloca ptr, align 8
  %__nd_ptr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__parent, ptr %__parent.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call, ptr %__nd, align 8
  %call2 = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__root_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %call2, ptr %__nd_ptr, align 8
  %0 = load ptr, ptr %__nd, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end25
  %call3 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %1 = load ptr, ptr %__v.addr, align 8
  %2 = load ptr, ptr %__nd, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %2, i32 0, i32 1
  %call4 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS6_RKS8_(ptr noundef nonnull align 1 dereferenceable(1) %call3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %__value_)
  br i1 %call4, label %if.then5, label %if.else11

if.then5:                                         ; preds = %while.body
  %3 = load ptr, ptr %__nd, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %__left_, align 8
  %cmp6 = icmp ne ptr %4, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %5 = load ptr, ptr %__nd, align 8
  %__left_8 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %5, i32 0, i32 0
  store ptr %__left_8, ptr %__nd_ptr, align 8
  %6 = load ptr, ptr %__nd, align 8
  %__left_9 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_9, align 8
  store ptr %7, ptr %__nd, align 8
  br label %if.end

if.else:                                          ; preds = %if.then5
  %8 = load ptr, ptr %__nd, align 8
  %9 = load ptr, ptr %__parent.addr, align 8
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %__parent.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %__left_10 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %11, i32 0, i32 0
  store ptr %__left_10, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then7
  br label %if.end25

if.else11:                                        ; preds = %while.body
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %12 = load ptr, ptr %__nd, align 8
  %__value_13 = getelementptr inbounds %"class.std::__1::__tree_node", ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %__v.addr, align 8
  %call14 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS6_S6_EENS_4lessIS6_EELb1EEclB6v15007ERKS8_RKS6_(ptr noundef nonnull align 1 dereferenceable(1) %call12, ptr noundef nonnull align 8 dereferenceable(48) %__value_13, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br i1 %call14, label %if.then15, label %if.else23

if.then15:                                        ; preds = %if.else11
  %14 = load ptr, ptr %__nd, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %__right_, align 8
  %cmp16 = icmp ne ptr %15, null
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.then15
  %16 = load ptr, ptr %__nd, align 8
  %__right_18 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %16, i32 0, i32 1
  store ptr %__right_18, ptr %__nd_ptr, align 8
  %17 = load ptr, ptr %__nd, align 8
  %__right_19 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %__right_19, align 8
  store ptr %18, ptr %__nd, align 8
  br label %if.end22

if.else20:                                        ; preds = %if.then15
  %19 = load ptr, ptr %__nd, align 8
  %20 = load ptr, ptr %__parent.addr, align 8
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr %__nd, align 8
  %__right_21 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %21, i32 0, i32 1
  store ptr %__right_21, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %if.then17
  br label %if.end24

if.else23:                                        ; preds = %if.else11
  %22 = load ptr, ptr %__nd, align 8
  %23 = load ptr, ptr %__parent.addr, align 8
  store ptr %22, ptr %23, align 8
  %24 = load ptr, ptr %__nd_ptr, align 8
  store ptr %24, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  br label %while.body, !llvm.loop !25

if.end26:                                         ; preds = %entry
  %call27 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %25 = load ptr, ptr %__parent.addr, align 8
  store ptr %call27, ptr %25, align 8
  %26 = load ptr, ptr %__parent.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %__left_28 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %27, i32 0, i32 0
  store ptr %__left_28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.else23, %if.else20, %if.else
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJRKS7_EEENSJ_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS8_PvEENS_22__tree_node_destructorINS5_ISR_EEEEEEDpOT_(ptr noalias sret(%"class.std::__1::unique_ptr.44") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  %__na = alloca ptr, align 8
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca %"class.std::__1::__tree_node_destructor.48", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  store ptr %__args3, ptr %__args.addr4, align 8
  %this5 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this5) #13
  store ptr %call, ptr %__na, align 8
  store i1 false, ptr %nrvo, align 1
  %0 = load ptr, ptr %__na, align 8
  %call6 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE8allocateB6v15007ERSC_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef 1)
  %1 = load ptr, ptr %__na, align 8
  %call7 = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEC1B6v15007ERSC_b(ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext false) #13
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC1B6v15007ILb1EvEEPSB_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISE_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp) #13
  %2 = load ptr, ptr %__na, align 8
  %call9 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call9, i32 0, i32 1
  %call10 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE9__get_ptrB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__value_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  %4 = load ptr, ptr %__args.addr2, align 8
  %5 = load ptr, ptr %__args.addr4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE9constructB6v15007INS_4pairIKS8_S8_EEJRKNS_21piecewise_construct_tENS_5tupleIJRSG_EEENSL_IJEEEEvEEvRSC_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %call10, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %call12 = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  %__value_constructed = getelementptr inbounds %"class.std::__1::__tree_node_destructor.48", ptr %call12, i32 0, i32 1
  store i8 1, ptr %__value_constructed, align 8
  store i1 true, ptr %nrvo, align 1
  %nrvo.val = load i1, ptr %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

lpad:                                             ; preds = %invoke.cont, %entry
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call14 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %eh.resume

nrvo.unused:                                      ; preds = %invoke.cont11
  %call13 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #13
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %invoke.cont11
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSJ_SJ_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__parent, ptr noundef nonnull align 8 dereferenceable(8) %__child, ptr noundef %__new_node) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__parent.addr = alloca ptr, align 8
  %__child.addr = alloca ptr, align 8
  %__new_node.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__parent, ptr %__parent.addr, align 8
  store ptr %__child, ptr %__child.addr, align 8
  store ptr %__new_node, ptr %__new_node.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_node.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %0, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  %1 = load ptr, ptr %__new_node.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %1, i32 0, i32 1
  store ptr null, ptr %__right_, align 8
  %2 = load ptr, ptr %__parent.addr, align 8
  %3 = load ptr, ptr %__new_node.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 2
  store ptr %2, ptr %__parent_, align 8
  %4 = load ptr, ptr %__new_node.addr, align 8
  %5 = load ptr, ptr %__child.addr, align 8
  store ptr %4, ptr %5, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %6 = load ptr, ptr %call, align 8
  %__left_2 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_2, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %8 = load ptr, ptr %call3, align 8
  %__left_4 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %__left_4, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  store ptr %9, ptr %call5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__left_7 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call6, i32 0, i32 0
  %10 = load ptr, ptr %__left_7, align 8
  %11 = load ptr, ptr %__child.addr, align 8
  %12 = load ptr, ptr %11, align 8
  call void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %10, ptr noundef %12) #13
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %13 = load i64, ptr %call8, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %call8, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #13
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC1B6v15007ESC_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC2B6v15007ESC_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEbEC1B6v15007ISE_RbLSB_0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %__u2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEbEC2B6v15007ISE_RbLSB_0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__root_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  ret ptr %__left_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE8allocateB6v15007ERSC_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEC1B6v15007ERSC_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__na.addr = alloca ptr, align 8
  %__val.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__na, ptr %__na.addr, align 8
  %frombool = zext i1 %__val to i8
  store i8 %frombool, ptr %__val.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__na.addr, align 8
  %1 = load i8, ptr %__val.addr, align 1
  %tobool = trunc i8 %1 to i1
  %call = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEC2B6v15007ERSC_b(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %tobool) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC1B6v15007ILb1EvEEPSB_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISE_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__d.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__d, ptr %__d.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__d.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC2B6v15007ILb1EvEEPSB_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISE_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9) %1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE9constructB6v15007INS_4pairIKS8_S8_EEJRKNS_21piecewise_construct_tENS_5tupleIJRSG_EEENSL_IJEEEEvEEvRSC_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  store ptr %__args3, ptr %__args.addr4, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %2 = load ptr, ptr %__args.addr, align 8
  %3 = load ptr, ptr %__args.addr2, align 8
  %4 = load ptr, ptr %__args.addr4, align 8
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE9constructB6v15007INS_4pairIKS7_S7_EEJRKNS_21piecewise_construct_tENS_5tupleIJRSE_EEENSJ_IJEEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE8max_sizeB6v15007ISC_vEEmRKSC_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #13
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #16
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 80
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE8max_sizeB6v15007ISC_vEEmRKSC_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 230584300921369395
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEC2B6v15007ERSC_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__na.addr = alloca ptr, align 8
  %__val.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__na, ptr %__na.addr, align 8
  %frombool = zext i1 %__val to i8
  store i8 %frombool, ptr %__val.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %__na_ = getelementptr inbounds %"class.std::__1::__tree_node_destructor.48", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__na.addr, align 8
  store ptr %0, ptr %__na_, align 8
  %__value_constructed = getelementptr inbounds %"class.std::__1::__tree_node_destructor.48", ptr %this1, i32 0, i32 1
  %1 = load i8, ptr %__val.addr, align 1
  %tobool = trunc i8 %1 to i1
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %__value_constructed, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC2B6v15007ILb1EvEEPSB_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeISE_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__d.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__d, ptr %__d.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__d.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC1B6v15007IRSC_SF_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 8 dereferenceable(9) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #14
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC1B6v15007IRSC_SF_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(9) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC2B6v15007IRSC_SF_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEEC2B6v15007IRSC_SF_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(9) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEELi0ELb0EEC2B6v15007IRSC_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEES9_EEPvEEEEEELi1ELb0EEC2B6v15007ISE_vEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(9) %2)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEELi0ELb0EEC2B6v15007IRSC_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.46", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEES9_EEPvEEEEEELi1ELb0EEC2B6v15007ISE_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(9) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.47", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__value_, ptr align 8 %0, i64 16, i1 false)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEES7_EEPvEEE9constructB6v15007INS_4pairIKS7_S7_EEJRKNS_21piecewise_construct_tENS_5tupleIJRSE_EEENSJ_IJEEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %agg.tmp6 = alloca %"class.std::__1::tuple", align 8
  %agg.tmp7 = alloca %"class.std::__1::tuple.43", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  store ptr %__args3, ptr %__args.addr4, align 8
  %this5 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %2 = load ptr, ptr %__args.addr2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp6, ptr align 8 %2, i64 8, i1 false)
  %3 = load ptr, ptr %__args.addr4, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::tuple", ptr %agg.tmp6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %coerce.dive8, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive9, align 8
  %coerce.val.pi = ptrtoint ptr %4 to i64
  %call = call noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_EC1B6v15007IJRS7_EJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 %coerce.val.pi)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_EC1B6v15007IJRS7_EJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSC_IJDpT0_EEE(ptr noundef nonnull returned align 8 dereferenceable(48) %this, i64 %__first_args.coerce) unnamed_addr #0 align 2 {
entry:
  %__pc = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %__first_args = alloca %"class.std::__1::tuple", align 8
  %__second_args = alloca %"class.std::__1::tuple.43", align 1
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %agg.tmp5 = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp6 = alloca %"struct.std::__1::__tuple_indices.50", align 1
  %coerce.dive = getelementptr inbounds %"class.std::__1::tuple", ptr %__first_args, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %coerce.dive1, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first_args.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive2, align 8
  store ptr %this, ptr %this.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_EC1B6v15007IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSC_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSL_IJXspT2_EEEE(ptr noundef nonnull align 8 dereferenceable(48) %this4, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args)
  ret ptr %this4
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_EC1B6v15007IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSC_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSL_IJXspT2_EEEE(ptr noundef nonnull returned align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args) unnamed_addr #0 align 2 {
entry:
  %0 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %1 = alloca %"struct.std::__1::__tuple_indices", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.50", align 1
  %this.addr = alloca ptr, align 8
  %__first_args.addr = alloca ptr, align 8
  %__second_args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first_args, ptr %__first_args.addr, align 8
  store ptr %__second_args, ptr %__second_args.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %3 = load ptr, ptr %__first_args.addr, align 8
  %4 = load ptr, ptr %__second_args.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_EC2B6v15007IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSC_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSL_IJXspT2_EEEE(ptr noundef nonnull align 8 dereferenceable(48) %this3, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret ptr %this3
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_EC2B6v15007IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSC_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSL_IJXspT2_EEEE(ptr noundef nonnull returned align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args) unnamed_addr #0 align 2 {
entry:
  %0 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %1 = alloca %"struct.std::__1::__tuple_indices", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.50", align 1
  %this.addr = alloca ptr, align 8
  %__first_args.addr = alloca ptr, align 8
  %__second_args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first_args, ptr %__first_args.addr, align 8
  store ptr %__second_args, ptr %__second_args.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %this3, i32 0, i32 0
  %3 = load ptr, ptr %__first_args.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__13getB6v15007ILm0EJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSD_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %call4 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %first, ptr noundef nonnull align 8 dereferenceable(24) %call)
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %this3, i32 0, i32 1
  %call5 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %second) #13
  ret ptr %this3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__13getB6v15007ILm0EJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSD_(ptr noundef nonnull align 8 dereferenceable(8) %__t) #3 {
entry:
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %0, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112__tuple_leafILm0ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__base_) #13
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112__tuple_leafILm0ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__value_, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %__r_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %this1)
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__default_initB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1)
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #14
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.46", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEES9_EEPvEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEES9_EEPvEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.47", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EENS_19__map_value_compareIS7_S8_NS_4lessIS7_EELb1EEENS5_IS8_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12__value_typeIS7_S7_EENS_4lessIS7_EELb1EEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #13
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.46", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5resetB6v15007EPSB_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null) #13
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5resetB6v15007EPSB_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #13
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #13
  store ptr %1, ptr %call3, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr.44", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPvEENS_22__tree_node_destructorINS6_ISB_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_4) #13
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEclB6v15007EPSB_(ptr noundef nonnull align 8 dereferenceable(9) %call5, ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEEclB6v15007EPSB_(ptr noundef nonnull align 8 dereferenceable(9) %this, ptr noundef %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_constructed = getelementptr inbounds %"class.std::__1::__tree_node_destructor.48", ptr %this1, i32 0, i32 1
  %0 = load i8, ptr %__value_constructed, align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__na_ = getelementptr inbounds %"class.std::__1::__tree_node_destructor.48", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__na_, align 8
  %2 = load ptr, ptr %__p.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %2, i32 0, i32 1
  %call = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE9__get_ptrB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE7destroyB6v15007INS_4pairIKS8_S8_EEvvEEvRSC_PT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %3 = load ptr, ptr %__p.addr, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %__na_4 = getelementptr inbounds %"class.std::__1::__tree_node_destructor.48", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__na_4, align 8
  %5 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEES8_EEPvEEEEE10deallocateB6v15007ERSC_PSB_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, i64 noundef 1) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #14
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElEC2B6v15007ESC_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator.41", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_EEPNS_11__tree_nodeIS9_PvEElEEbEC2B6v15007ISE_RbLSB_0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.40", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %first, ptr align 8 %0, i64 8, i1 false)
  %second = getelementptr inbounds %"struct.std::__1::pair.40", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__u2.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = trunc i8 %2 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15tupleIJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007INS_4_AndELi0EEES8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef ptr @_ZNSt3__15tupleIJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007INS_4_AndELi0EEES8_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15tupleIJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007INS_4_AndELi0EEES8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp2 = alloca %"struct.std::__1::__tuple_types", align 1
  %agg.tmp3 = alloca %"struct.std::__1::__tuple_indices.50", align 1
  %agg.tmp4 = alloca %"struct.std::__1::__tuple_types.51", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007IJLm0EEJSA_EJEJEJSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(ptr noundef nonnull align 8 dereferenceable(8) %__base_, ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007IJLm0EEJSA_EJEJEJSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.50", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.51", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007IJLm0EEJSA_EJEJEJSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(ptr noundef nonnull align 8 dereferenceable(8) %this4, ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  ret ptr %this4
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007IJLm0EEJSA_EJEJEJSA_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.50", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.51", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2B6v15007IS8_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this4, ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  ret ptr %this4
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EEC2B6v15007IS8_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__t.addr, align 8
  store ptr %0, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEE10pointer_toB6v15007ERS8_(ptr noundef nonnull align 8 dereferenceable(48) %__r) #3 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES7_EEPNS_11__tree_nodeIS8_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator.41", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__long", ptr %0, i32 0, i32 1
  %1 = load i64, ptr %__size_, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__r_ = getelementptr inbounds %"class.std::__1::basic_string", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__r_) #13
  %0 = getelementptr inbounds %"struct.std::__1::basic_string<char>::__rep", ptr %call, i32 0, i32 0
  %__size_ = getelementptr inbounds %"struct.std::__1::basic_string<char>::__short", ptr %0, i32 0, i32 2
  %bf.load = load i8, ptr %__size_, align 1
  %bf.clear = and i8 %bf.load, 127
  %conv = zext i8 %bf.clear to i64
  ret i64 %conv
}

attributes #0 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #10 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define noundef ptr @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_0(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %filename) unnamed_addr  alwaysinline#0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  %0 = load ptr, ptr %filename.addr, align 8
  %call2 = call noundef ptr @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #13
  %call3 = invoke i32 @ini_parse(ptr noundef %call2, ptr noundef @_ZN9INIReader12ValueHandlerEPvPKcS2_S2_, ptr noundef %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_error = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  store i32 %call3, ptr %_error, align 8
  ret ptr %this1

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call4 = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5
}

define noundef ptr @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_1(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef %buffer, i64 noundef %buffer_size) unnamed_addr  alwaysinline#0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buffer_size.addr = alloca i64, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %buffer_size, ptr %buffer_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %_values = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  %0 = load ptr, ptr %buffer.addr, align 8
  %1 = load i64, ptr %buffer_size.addr, align 8
  %call2 = invoke i32 @ini_parse_string_length(ptr noundef %0, i64 noundef %1, ptr noundef @_ZN9INIReader12ValueHandlerEPvPKcS2_S2_, ptr noundef %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_error = getelementptr inbounds %class.INIReader, ptr %this1, i32 0, i32 0
  store i32 %call2, ptr %_error, align 8
  ret ptr %this1

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call3 = call noundef ptr @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES6_NS_4lessIS6_EENS4_INS_4pairIKS6_S6_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %_values) #13
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val4 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val4
}

define internal noundef zeroext i8 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_2(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %ch)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %ch.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %call = call noundef i32 @_Z7toloweri(i32 noundef %conv)
  %conv2 = trunc i32 %call to i8
  ret i8 %conv2
}

define internal noundef zeroext i8 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_3(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %ch)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %ch.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i32
  %call = call noundef i32 @_Z7toloweri(i32 noundef %conv)
  %conv2 = trunc i32 %call to i8
  ret i8 %conv2
}

define linkonce_odr noundef i32 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_4(i32 noundef %_c)  alwaysinline#4 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, ptr %_c.addr, align 4
  %0 = load i32, ptr %_c.addr, align 4
  %call = call i32 @__tolower(i32 noundef %0)
  ret i32 %call
}

define linkonce_odr noundef i32 @pc_inline_source_snapshot_public_repos_inih_cpp_INIReader_5(i32 noundef %_c)  alwaysinline#4 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, ptr %_c.addr, align 4
  %0 = load i32, ptr %_c.addr, align 4
  %call = call i32 @__tolower(i32 noundef %0)
  ret i32 %call
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
