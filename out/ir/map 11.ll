; ModuleID = './source_snapshot/DCMTK/config/tests/map.cc'
source_filename = "./source_snapshot/DCMTK/config/tests/map.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"struct.std::__1::piecewise_construct_t" = type { i8 }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { ptr, %"class.std::__1::__compressed_pair", %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__tree_end_node" = type { ptr }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { i64 }
%"class.std::__1::__map_iterator" = type { %"class.std::__1::__tree_iterator" }
%"class.std::__1::__tree_iterator" = type { ptr }
%"struct.std::__1::pair.4" = type <{ %"class.std::__1::__tree_iterator", i8, [7 x i8] }>
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf" }
%"class.std::__1::__tuple_leaf" = type { ptr }
%"class.std::__1::tuple.5" = type { i8 }
%"struct.std::__1::pair" = type { i32, i32 }
%"class.std::__1::__tree_const_iterator" = type { ptr }
%"class.std::__1::__map_value_compare" = type { i8 }
%"struct.std::__1::less" = type { i8 }
%"struct.std::__1::__value_init_tag" = type { i8 }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8, [7 x i8] }>
%"class.std::__1::__tree_node" = type { %"class.std::__1::__tree_node_base.base", %"struct.std::__1::__value_type", [4 x i8] }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8 }>
%"struct.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.6" }
%"class.std::__1::__compressed_pair.6" = type { %"struct.std::__1::__compressed_pair_elem.7", %"struct.std::__1::__compressed_pair_elem.8" }
%"struct.std::__1::__compressed_pair_elem.7" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.8" = type { %"class.std::__1::__tree_node_destructor" }
%"class.std::__1::__tree_node_destructor" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_indices.9" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_types.10" = type { i8 }

@_ZNSt3__1L19piecewise_constructE = internal constant %"struct.std::__1::piecewise_construct_t" undef, align 1
@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca %"class.std::__1::map", align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp3 = alloca i32, align 4
  %ref.tmp6 = alloca i32, align 4
  %ref.tmp12 = alloca i32, align 4
  %ref.tmp18 = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__1::__map_iterator", align 8
  %ref.tmp24 = alloca i32, align 4
  %coerce = alloca %"class.std::__1::__map_iterator", align 8
  %ref.tmp35 = alloca %"class.std::__1::__map_iterator", align 8
  %ref.tmp36 = alloca i32, align 4
  %ref.tmp42 = alloca %"class.std::__1::__map_iterator", align 8
  store i32 0, ptr %retval, align 4
  %call = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  %call1 = call noundef zeroext i1 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 3, ptr %ref.tmp, align 4
  %call2 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEixEOi(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  store i32 555, ptr %call2, align 4
  store i32 66, ptr %ref.tmp3, align 4
  %call5 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEixEOi(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  store i32 2, ptr %call5, align 4
  store i32 42, ptr %ref.tmp6, align 4
  %call8 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEixEOi(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp6)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont4
  store i32 42, ptr %call8, align 4
  %call9 = call noundef i64 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  %cmp = icmp ne i64 %call9, 3
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %invoke.cont7
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %invoke.cont37, %invoke.cont30, %invoke.cont25, %if.end23, %if.end17, %if.end11, %invoke.cont4, %invoke.cont, %if.end
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call55 = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  br label %eh.resume

if.end11:                                         ; preds = %invoke.cont7
  store i32 3, ptr %ref.tmp12, align 4
  %call14 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEixEOi(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp12)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %if.end11
  %3 = load i32, ptr %call14, align 4
  %cmp15 = icmp ne i32 %3, 555
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %invoke.cont13
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %invoke.cont13
  store i32 42, ptr %ref.tmp18, align 4
  %call20 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEixEOi(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp18)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %if.end17
  %4 = load i32, ptr %call20, align 4
  %cmp21 = icmp ne i32 %4, 42
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %invoke.cont19
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %invoke.cont19
  store i32 3, ptr %ref.tmp24, align 4
  %call26 = invoke i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4findB6v15007ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp24)
          to label %invoke.cont25 unwind label %lpad

invoke.cont25:                                    ; preds = %if.end23
  %coerce.dive = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.dive27 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call26 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive27, align 8
  %coerce.dive28 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.dive29 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive28, i32 0, i32 0
  %5 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi = ptrtoint ptr %5 to i64
  %call31 = invoke i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5eraseB6v15007ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeISC_PvEElEEEE(ptr noundef nonnull align 8 dereferenceable(24) %m, i64 %coerce.val.pi)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont25
  %coerce.dive32 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %coerce, i32 0, i32 0
  %coerce.dive33 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive32, i32 0, i32 0
  %coerce.val.ip34 = inttoptr i64 %call31 to ptr
  store ptr %coerce.val.ip34, ptr %coerce.dive33, align 8
  store i32 3, ptr %ref.tmp36, align 4
  %call38 = invoke i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4findB6v15007ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp36)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont30
  %coerce.dive39 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %ref.tmp35, i32 0, i32 0
  %coerce.dive40 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive39, i32 0, i32 0
  %coerce.val.ip41 = inttoptr i64 %call38 to ptr
  store ptr %coerce.val.ip41, ptr %coerce.dive40, align 8
  %call43 = call i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  %coerce.dive44 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %ref.tmp42, i32 0, i32 0
  %coerce.dive45 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive44, i32 0, i32 0
  %coerce.val.ip46 = inttoptr i64 %call43 to ptr
  store ptr %coerce.val.ip46, ptr %coerce.dive45, align 8
  %call48 = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEESB_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp35, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp42)
          to label %invoke.cont47 unwind label %lpad

invoke.cont47:                                    ; preds = %invoke.cont37
  br i1 %call48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %invoke.cont47
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %invoke.cont47
  call void @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  %call51 = call noundef zeroext i1 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  br i1 %call51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end50
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.end50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then52, %if.then49, %if.then22, %if.then16, %if.then10, %if.then
  %call54 = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #12
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val56 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val56
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #12
  %0 = load i64, ptr %call, align 8
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEixEOi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::pair.4", align 8
  %ref.tmp2 = alloca %"class.std::__1::tuple", align 8
  %ref.tmp5 = alloca %"class.std::__1::tuple.5", align 1
  %undef.agg.tmp = alloca %"class.std::__1::tuple.5", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %1 = load ptr, ptr %__k.addr, align 8
  %call = call i64 @_ZNSt3__116forward_as_tupleB6v15007IJiEEENS_5tupleIJDpOT_EEES4_(ptr noundef nonnull align 4 dereferenceable(4) %1) #12
  %coerce.dive = getelementptr inbounds %"class.std::__1::tuple", ptr %ref.tmp2, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %coerce.dive3, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive4, align 8
  call void @_ZNSt3__116forward_as_tupleB6v15007IJEEENS_5tupleIJDpOT_EEES4_() #12
  %call6 = call [2 x i64] @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE25__emplace_unique_key_argsIiJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_4pairINS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__1L19piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp5)
  store [2 x i64] %call6, ptr %ref.tmp, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.4", ptr %ref.tmp, i32 0, i32 0
  %call7 = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %first)
  %call8 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3__112__value_typeIiiE11__get_valueB6v15007Ev(ptr noundef nonnull align 4 dereferenceable(8) %call7)
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %call8, i32 0, i32 1
  ret ptr %second
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #12
  %0 = load i64, ptr %call, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5eraseB6v15007ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeISC_PvEElEEEE(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 %__p.coerce) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__map_iterator", align 8
  %__p = alloca %"class.std::__1::__map_iterator", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::__tree_const_iterator", align 8
  %agg.tmp4 = alloca %"class.std::__1::__tree_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %__p, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive1, align 8
  store ptr %this, ptr %this.addr, align 8
  %this2 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this2, i32 0, i32 0
  %__i_ = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %__p, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp4, ptr align 8 %__i_, i64 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp4, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp3, i64 %coerce.val.pi) #12
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %agg.tmp3, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call8 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5eraseENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, i64 %coerce.val.pi7)
  %coerce.dive9 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip10 = inttoptr i64 %call8 to ptr
  store ptr %coerce.val.ip10, ptr %coerce.dive9, align 8
  %coerce.dive11 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive11, align 8
  %coerce.val.pi12 = ptrtoint ptr %2 to i64
  %call13 = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi12) #12
  %coerce.dive14 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive14, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive15, align 8
  %coerce.val.pi16 = ptrtoint ptr %3 to i64
  ret i64 %coerce.val.pi16
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4findB6v15007ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__map_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4findIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 4 dereferenceable(4) %0)
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  %call3 = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #12
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive4, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %2 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEESB_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__y.addr, align 8
  %__i_1 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %1, i32 0, i32 0
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__i_, ptr noundef nonnull align 8 dereferenceable(8) %__i_1)
  ret i1 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %retval = alloca %"class.std::__1::__map_iterator", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #12
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call3 = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #12
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %coerce.dive4, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::__map_value_compare", align 1
  %agg.tmp = alloca %"struct.std::__1::less", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC1B6v15007ES4_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #12
  %call2 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC1ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC1B6v15007ES4_(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %__c = alloca %"struct.std::__1::less", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC2B6v15007ES4_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC1ERKS6_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__comp.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC2B6v15007ES4_(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %__c = alloca %"struct.std::__1::less", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC2ERKS6_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  %ref.tmp = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEEC1B6v15007ILb1EvEEv(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  store i32 0, ptr %ref.tmp, align 4
  %0 = load ptr, ptr %__comp.addr, align 8
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEEC1B6v15007IiRKS6_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %call4 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %call4, ptr %call5, align 8
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #13
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEEC1B6v15007ILb1EvEEv(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEEC2B6v15007ILb1EvEEv(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %this1
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #5 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #12
  call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEEC1B6v15007IiRKS6_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEEC2B6v15007IiRKS6_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #12
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %call) #12
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_node_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 0
  ret ptr %__begin_node_
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEEC2B6v15007ILb1EvEEv(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  %agg.tmp2 = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__value_) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEEC2B6v15007IiRKS6_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
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
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEELi1ELb1EEC2B6v15007IRKS6_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEELi1ELb1EEC2B6v15007IRKS6_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__r) #2 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__nd) #2 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %2) #12
  %3 = load ptr, ptr %__nd.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__right_, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %4) #12
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %call, ptr %__na, align 8
  %5 = load ptr, ptr %__na, align 8
  %6 = load ptr, ptr %__nd.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %6, i32 0, i32 1
  %call2 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB6v15007ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB6v15007INS_4pairIKiiEEvvEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %call2)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %7 = load ptr, ptr %__na, align 8
  %8 = load ptr, ptr %__nd.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %invoke.cont3, %entry
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %if.then
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  %0 = load ptr, ptr %__left_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB6v15007INS_4pairIKiiEEvvEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %__p) #2 align 2 {
entry:
  %.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB6v15007ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__n) #3 align 2 {
entry:
  %__n.addr = alloca ptr, align 8
  store ptr %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__n.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3__112__value_typeIiiE11__get_valueB6v15007Ev(ptr noundef nonnull align 4 dereferenceable(8) %0)
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #2 align 2 {
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
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE10deallocateB6v15007EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3__112__value_typeIiiE11__get_valueB6v15007Ev(ptr noundef nonnull align 4 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cc = getelementptr inbounds %"struct.std::__1::__value_type", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__17launderB6v15007INS_4pairIKiiEEEEPT_S5_(ptr noundef %__cc) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__17launderB6v15007INS_4pairIKiiEEEEPT_S5_(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__19__launderB6v15007INS_4pairIKiiEEEEPT_S5_(ptr noundef %0) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19__launderB6v15007INS_4pairIKiiEEEEPT_S5_(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE10deallocateB6v15007EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %mul = mul i64 %1, 40
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %0, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #13
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #3 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %0) #12
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #2 {
entry:
  %__align.addr = alloca i64, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %cmp = icmp ugt i64 %0, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #3 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #3 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  %0 = load ptr, ptr %__ptr.addr, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #2 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  call void @_ZdlPvSt11align_val_t(ptr noundef %0, i64 noundef %1) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #2 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair1_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair1_) #12
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB6v15007ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %call) #12
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEES3_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr [2 x i64] @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE25__emplace_unique_key_argsIiJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_4pairINS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #3 align 2 {
entry:
  %retval = alloca %"struct.std::__1::pair.4", align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  %__parent = alloca ptr, align 8
  %__child = alloca ptr, align 8
  %__r = alloca ptr, align 8
  %__inserted = alloca i8, align 1
  %__h = alloca %"class.std::__1::unique_ptr", align 8
  %ref.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  store ptr %__args3, ptr %__args.addr4, align 8
  %this5 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISE_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef nonnull align 8 dereferenceable(8) %__parent, ptr noundef nonnull align 4 dereferenceable(4) %0)
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
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS2_PvEENS_22__tree_node_destructorINS7_ISL_EEEEEEDpOT_(ptr sret(%"class.std::__1::unique_ptr") align 8 %__h, ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %8 = load ptr, ptr %__parent, align 8
  %9 = load ptr, ptr %__child, align 8
  %call6 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #12
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSE_SE_(ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %call6) #12
  %call7 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #12
  store ptr %call7, ptr %__r, align 8
  store i8 1, ptr %__inserted, align 1
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %__r, align 8
  %call9 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007ES6_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef %10) #12
  %call10 = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC1B6v15007IS8_RbLS5_0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__inserted) #12
  %11 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__116forward_as_tupleB6v15007IJiEEENS_5tupleIJDpOT_EEES4_(ptr noundef nonnull align 4 dereferenceable(4) %__t) #2 {
entry:
  %retval = alloca %"class.std::__1::tuple", align 8
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef ptr @_ZNSt3__15tupleIJOiEEC1B6v15007IJiELi0EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 4 dereferenceable(4) %0) #12
  %coerce.dive = getelementptr inbounds %"class.std::__1::tuple", ptr %retval, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %coerce.dive1, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116forward_as_tupleB6v15007IJEEENS_5tupleIJDpOT_EEES4_() #2 {
entry:
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_12__value_typeIiiEEE10pointer_toB6v15007ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_) #12
  ret ptr %call2
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISE_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__parent, ptr noundef nonnull align 4 dereferenceable(4) %__v) #3 align 2 {
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
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %call, ptr %__nd, align 8
  %call2 = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__root_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %call2, ptr %__nd_ptr, align 8
  %0 = load ptr, ptr %__nd, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end25
  %call3 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %1 = load ptr, ptr %__v.addr, align 8
  %2 = load ptr, ptr %__nd, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %2, i32 0, i32 1
  %call4 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB6v15007ERKiRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call3, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(8) %__value_)
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
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %12 = load ptr, ptr %__nd, align 8
  %__value_13 = getelementptr inbounds %"class.std::__1::__tree_node", ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %__v.addr, align 8
  %call14 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB6v15007ERKS2_RKi(ptr noundef nonnull align 1 dereferenceable(1) %call12, ptr noundef nonnull align 4 dereferenceable(8) %__value_13, ptr noundef nonnull align 4 dereferenceable(4) %13)
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
  br label %while.body, !llvm.loop !6

if.end26:                                         ; preds = %entry
  %call27 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
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

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS2_PvEENS_22__tree_node_destructorINS7_ISL_EEEEEEDpOT_(ptr noalias sret(%"class.std::__1::unique_ptr") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %result.ptr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  %__na = alloca ptr, align 8
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca %"class.std::__1::__tree_node_destructor", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %agg.result, ptr %result.ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  store ptr %__args3, ptr %__args.addr4, align 8
  %this5 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this5) #12
  store ptr %call, ptr %__na, align 8
  store i1 false, ptr %nrvo, align 1
  %0 = load ptr, ptr %__na, align 8
  %call6 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8allocateB6v15007ERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef 1)
  %1 = load ptr, ptr %__na, align 8
  %call7 = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC1B6v15007ERS7_b(ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext false) #12
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1B6v15007ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp) #12
  %2 = load ptr, ptr %__na, align 8
  %call9 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #12
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call9, i32 0, i32 1
  %call10 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB6v15007ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  %4 = load ptr, ptr %__args.addr2, align 8
  %5 = load ptr, ptr %__args.addr4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE9constructB6v15007INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSG_IJEEEEvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %call10, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %call12 = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #12
  %__value_constructed = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %call12, i32 0, i32 1
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
  %call14 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #12
  br label %eh.resume

nrvo.unused:                                      ; preds = %invoke.cont11
  %call13 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #12
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSE_SE_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__parent, ptr noundef nonnull align 8 dereferenceable(8) %__child, ptr noundef %__new_node) #2 align 2 {
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
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %6 = load ptr, ptr %call, align 8
  %__left_2 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_2, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %8 = load ptr, ptr %call3, align 8
  %__left_4 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %__left_4, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %9, ptr %call5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %__left_7 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call6, i32 0, i32 0
  %10 = load ptr, ptr %__left_7, align 8
  %11 = load ptr, ptr %__child.addr, align 8
  %12 = load ptr, ptr %11, align 8
  call void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %10, ptr noundef %12) #12
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %13 = load i64, ptr %call8, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %call8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #12
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007ES6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B6v15007ES6_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC1B6v15007IS8_RbLS5_0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC2B6v15007IS8_RbLS5_0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__root_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  ret ptr %__left_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB6v15007ERKiRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x, ptr noundef nonnull align 4 dereferenceable(8) %__y) #3 align 2 {
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
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__112__value_typeIiiE11__get_valueB6v15007Ev(ptr noundef nonnull align 4 dereferenceable(8) %1)
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %call, i32 0, i32 0
  %call2 = call noundef zeroext i1 @_ZNKSt3__14lessIiEclB6v15007ERKiS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %first)
  ret i1 %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB6v15007ERKS2_RKi(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(8) %__x, ptr noundef nonnull align 4 dereferenceable(4) %__y) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__112__value_typeIiiE11__get_valueB6v15007Ev(ptr noundef nonnull align 4 dereferenceable(8) %0)
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %call, i32 0, i32 0
  %1 = load ptr, ptr %__y.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNKSt3__14lessIiEclB6v15007ERKiS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 4 dereferenceable(4) %first, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i1 %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__14lessIiEclB6v15007ERKiS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x, ptr noundef nonnull align 4 dereferenceable(4) %__y) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %__y.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__112__value_typeIiiE11__get_valueB6v15007Ev(ptr noundef nonnull align 4 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cc = getelementptr inbounds %"struct.std::__1::__value_type", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__17launderB6v15007IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %__cc) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__17launderB6v15007IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__19__launderB6v15007IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %0) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19__launderB6v15007IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8allocateB6v15007ERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC1B6v15007ERS7_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B6v15007ERS7_b(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %tobool) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1B6v15007ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2B6v15007ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9) %1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE9constructB6v15007INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSG_IJEEEEvEEvRS7_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #3 align 2 {
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
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE9constructB6v15007INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8max_sizeB6v15007IS7_vEEmRKS7_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #15
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 40
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8max_sizeB6v15007IS7_vEEmRKS7_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #2 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  ret i64 %call
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #7 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #12
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #12
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt20bad_array_new_length, ptr @_ZNSt20bad_array_new_lengthD1Ev) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %__size, i64 noundef %__align) #3 {
entry:
  %retval = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %0) #12
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 461168601842738790
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #3 {
entry:
  %__args.addr = alloca i64, align 8
  %__args.addr2 = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %0, i64 noundef %1) #16
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %1) ]
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %__args) #3 {
entry:
  %__args.addr = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %0) #16
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #9

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B6v15007ERS7_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 align 2 {
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2B6v15007ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1B6v15007IRS6_SA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 8 dereferenceable(9) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #13
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1B6v15007IRS6_SA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(9) %__t2) unnamed_addr #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2B6v15007IRS6_SA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1)
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2B6v15007IRS6_SA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(9) %__t2) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEELi0ELb0EEC2B6v15007IRS6_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELi1ELb0EEC2B6v15007IS9_vEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(9) %2)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEELi0ELb0EEC2B6v15007IRS6_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.7", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELi1ELb0EEC2B6v15007IS9_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(9) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.8", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__value_, ptr align 8 %0, i64 16, i1 false)
  ret ptr %this1
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE9constructB6v15007INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %agg.tmp6 = alloca %"class.std::__1::tuple", align 8
  %agg.tmp7 = alloca %"class.std::__1::tuple.5", align 1
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
  %call = call noundef ptr @_ZNSt3__14pairIKiiEC1B6v15007IJOiEJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS6_IJDpT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %coerce.val.pi) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKiiEC1B6v15007IJOiEJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS6_IJDpT0_EEE(ptr noundef nonnull returned align 4 dereferenceable(8) %this, i64 %__first_args.coerce) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__pc = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %__first_args = alloca %"class.std::__1::tuple", align 8
  %__second_args = alloca %"class.std::__1::tuple.5", align 1
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %agg.tmp5 = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp6 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %coerce.dive = getelementptr inbounds %"class.std::__1::tuple", ptr %__first_args, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %coerce.dive1, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first_args.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive2, align 8
  store ptr %this, ptr %this.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__14pairIKiiEC1B6v15007IJOiEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull align 4 dereferenceable(8) %this4, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this4

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #13
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKiiEC1B6v15007IJOiEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull returned align 4 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args) unnamed_addr #4 align 2 {
entry:
  %0 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %1 = alloca %"struct.std::__1::__tuple_indices", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %this.addr = alloca ptr, align 8
  %__first_args.addr = alloca ptr, align 8
  %__second_args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first_args, ptr %__first_args.addr, align 8
  store ptr %__second_args, ptr %__second_args.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %3 = load ptr, ptr %__first_args.addr, align 8
  %4 = load ptr, ptr %__second_args.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIKiiEC2B6v15007IJOiEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull align 4 dereferenceable(8) %this3, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret ptr %this3
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIKiiEC2B6v15007IJOiEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull returned align 4 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %1 = alloca %"struct.std::__1::__tuple_indices", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %this.addr = alloca ptr, align 8
  %__first_args.addr = alloca ptr, align 8
  %__second_args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first_args, ptr %__first_args.addr, align 8
  store ptr %__second_args, ptr %__second_args.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %this3, i32 0, i32 0
  %3 = load ptr, ptr %__first_args.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB6v15007ILm0EJOiEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %4 = load i32, ptr %call, align 4
  store i32 %4, ptr %first, align 4
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %this3, i32 0, i32 1
  store i32 0, ptr %second, align 4
  ret ptr %this3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB6v15007ILm0EJOiEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__t) #2 {
entry:
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %0, i32 0, i32 0
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__base_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__value_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.7", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__122__compressed_pair_elemINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.8", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %__root, ptr noundef %__x) #2 personality ptr @__gxx_personality_v0 {
entry:
  %__root.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  %__y37 = alloca ptr, align 8
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

while.cond:                                       ; preds = %if.end67, %entry
  %5 = load ptr, ptr %__x.addr, align 8
  %6 = load ptr, ptr %__root.addr, align 8
  %cmp3 = icmp ne ptr %5, %6
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %__x.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %7)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %land.rhs
  %__is_black_4 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call, i32 0, i32 3
  %8 = load i8, ptr %__is_black_4, align 8
  %tobool = trunc i8 %8 to i1
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %invoke.cont, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %invoke.cont ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %__x.addr, align 8
  %call6 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %10)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %while.body
  %call7 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %call6) #12
  br i1 %call7, label %if.then, label %if.else36

if.then:                                          ; preds = %invoke.cont5
  %11 = load ptr, ptr %__x.addr, align 8
  %call9 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %11)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %if.then
  %call11 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %call9)
          to label %invoke.cont10 unwind label %terminate.lpad

invoke.cont10:                                    ; preds = %invoke.cont8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call11, i32 0, i32 1
  %12 = load ptr, ptr %__right_, align 8
  store ptr %12, ptr %__y, align 8
  %13 = load ptr, ptr %__y, align 8
  %cmp12 = icmp ne ptr %13, null
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %invoke.cont10
  %14 = load ptr, ptr %__y, align 8
  %__is_black_13 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %14, i32 0, i32 3
  %15 = load i8, ptr %__is_black_13, align 8
  %tobool14 = trunc i8 %15 to i1
  br i1 %tobool14, label %if.else, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %__x.addr, align 8
  %call17 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %16)
          to label %invoke.cont16 unwind label %terminate.lpad

invoke.cont16:                                    ; preds = %if.then15
  store ptr %call17, ptr %__x.addr, align 8
  %17 = load ptr, ptr %__x.addr, align 8
  %__is_black_18 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %17, i32 0, i32 3
  store i8 1, ptr %__is_black_18, align 8
  %18 = load ptr, ptr %__x.addr, align 8
  %call20 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %18)
          to label %invoke.cont19 unwind label %terminate.lpad

invoke.cont19:                                    ; preds = %invoke.cont16
  store ptr %call20, ptr %__x.addr, align 8
  %19 = load ptr, ptr %__x.addr, align 8
  %20 = load ptr, ptr %__root.addr, align 8
  %cmp21 = icmp eq ptr %19, %20
  %21 = load ptr, ptr %__x.addr, align 8
  %__is_black_22 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %21, i32 0, i32 3
  %frombool23 = zext i1 %cmp21 to i8
  store i8 %frombool23, ptr %__is_black_22, align 8
  %22 = load ptr, ptr %__y, align 8
  %__is_black_24 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %22, i32 0, i32 3
  store i8 1, ptr %__is_black_24, align 8
  br label %if.end35

if.else:                                          ; preds = %land.lhs.true, %invoke.cont10
  %23 = load ptr, ptr %__x.addr, align 8
  %call25 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %23) #12
  br i1 %call25, label %if.end, label %if.then26

if.then26:                                        ; preds = %if.else
  %24 = load ptr, ptr %__x.addr, align 8
  %call28 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %24)
          to label %invoke.cont27 unwind label %terminate.lpad

invoke.cont27:                                    ; preds = %if.then26
  store ptr %call28, ptr %__x.addr, align 8
  %25 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %25) #12
  br label %if.end

if.end:                                           ; preds = %invoke.cont27, %if.else
  %26 = load ptr, ptr %__x.addr, align 8
  %call30 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %26)
          to label %invoke.cont29 unwind label %terminate.lpad

invoke.cont29:                                    ; preds = %if.end
  store ptr %call30, ptr %__x.addr, align 8
  %27 = load ptr, ptr %__x.addr, align 8
  %__is_black_31 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %27, i32 0, i32 3
  store i8 1, ptr %__is_black_31, align 8
  %28 = load ptr, ptr %__x.addr, align 8
  %call33 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %28)
          to label %invoke.cont32 unwind label %terminate.lpad

invoke.cont32:                                    ; preds = %invoke.cont29
  store ptr %call33, ptr %__x.addr, align 8
  %29 = load ptr, ptr %__x.addr, align 8
  %__is_black_34 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %29, i32 0, i32 3
  store i8 0, ptr %__is_black_34, align 8
  %30 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %30) #12
  br label %while.end

if.end35:                                         ; preds = %invoke.cont19
  br label %if.end67

if.else36:                                        ; preds = %invoke.cont5
  %31 = load ptr, ptr %__x.addr, align 8
  %call39 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %31)
          to label %invoke.cont38 unwind label %terminate.lpad

invoke.cont38:                                    ; preds = %if.else36
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call39, i32 0, i32 2
  %32 = load ptr, ptr %__parent_, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %__left_, align 8
  store ptr %33, ptr %__y37, align 8
  %34 = load ptr, ptr %__y37, align 8
  %cmp40 = icmp ne ptr %34, null
  br i1 %cmp40, label %land.lhs.true41, label %if.else54

land.lhs.true41:                                  ; preds = %invoke.cont38
  %35 = load ptr, ptr %__y37, align 8
  %__is_black_42 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %35, i32 0, i32 3
  %36 = load i8, ptr %__is_black_42, align 8
  %tobool43 = trunc i8 %36 to i1
  br i1 %tobool43, label %if.else54, label %if.then44

if.then44:                                        ; preds = %land.lhs.true41
  %37 = load ptr, ptr %__x.addr, align 8
  %call46 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %37)
          to label %invoke.cont45 unwind label %terminate.lpad

invoke.cont45:                                    ; preds = %if.then44
  store ptr %call46, ptr %__x.addr, align 8
  %38 = load ptr, ptr %__x.addr, align 8
  %__is_black_47 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %38, i32 0, i32 3
  store i8 1, ptr %__is_black_47, align 8
  %39 = load ptr, ptr %__x.addr, align 8
  %call49 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %39)
          to label %invoke.cont48 unwind label %terminate.lpad

invoke.cont48:                                    ; preds = %invoke.cont45
  store ptr %call49, ptr %__x.addr, align 8
  %40 = load ptr, ptr %__x.addr, align 8
  %41 = load ptr, ptr %__root.addr, align 8
  %cmp50 = icmp eq ptr %40, %41
  %42 = load ptr, ptr %__x.addr, align 8
  %__is_black_51 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %42, i32 0, i32 3
  %frombool52 = zext i1 %cmp50 to i8
  store i8 %frombool52, ptr %__is_black_51, align 8
  %43 = load ptr, ptr %__y37, align 8
  %__is_black_53 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %43, i32 0, i32 3
  store i8 1, ptr %__is_black_53, align 8
  br label %if.end66

if.else54:                                        ; preds = %land.lhs.true41, %invoke.cont38
  %44 = load ptr, ptr %__x.addr, align 8
  %call55 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %44) #12
  br i1 %call55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.else54
  %45 = load ptr, ptr %__x.addr, align 8
  %call58 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %45)
          to label %invoke.cont57 unwind label %terminate.lpad

invoke.cont57:                                    ; preds = %if.then56
  store ptr %call58, ptr %__x.addr, align 8
  %46 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %46) #12
  br label %if.end59

if.end59:                                         ; preds = %invoke.cont57, %if.else54
  %47 = load ptr, ptr %__x.addr, align 8
  %call61 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %47)
          to label %invoke.cont60 unwind label %terminate.lpad

invoke.cont60:                                    ; preds = %if.end59
  store ptr %call61, ptr %__x.addr, align 8
  %48 = load ptr, ptr %__x.addr, align 8
  %__is_black_62 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %48, i32 0, i32 3
  store i8 1, ptr %__is_black_62, align 8
  %49 = load ptr, ptr %__x.addr, align 8
  %call64 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %49)
          to label %invoke.cont63 unwind label %terminate.lpad

invoke.cont63:                                    ; preds = %invoke.cont60
  store ptr %call64, ptr %__x.addr, align 8
  %50 = load ptr, ptr %__x.addr, align 8
  %__is_black_65 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %50, i32 0, i32 3
  store i8 0, ptr %__is_black_65, align 8
  %51 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %51) #12
  br label %while.end

if.end66:                                         ; preds = %invoke.cont48
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end35
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %invoke.cont63, %invoke.cont32, %land.end
  ret void

terminate.lpad:                                   ; preds = %invoke.cont60, %if.end59, %if.then56, %invoke.cont45, %if.then44, %if.else36, %invoke.cont29, %if.end, %if.then26, %invoke.cont16, %if.then15, %invoke.cont8, %if.then, %while.body, %land.rhs
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @__clang_call_terminate(ptr %53) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pair3_ = getelementptr inbounds %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__pair3_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__parent_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %__x) #2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %__x) #2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %16) #12
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
  call void @__clang_call_terminate(ptr %27) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %__x) #2 {
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
  %call = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %16) #12
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %this, ptr noundef %__p) #2 align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_19__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.7", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5resetB6v15007EPS5_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5resetB6v15007EPS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #12
  store ptr %1, ptr %call3, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__117__compressed_pairIPNS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_4) #12
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEclB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(9) %call5, ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEclB6v15007EPS6_(ptr noundef nonnull align 8 dereferenceable(9) %this, ptr noundef %__p) #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %2, i32 0, i32 1
  %call = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB6v15007ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB6v15007INS_4pairIKiiEEvvEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %3 = load ptr, ptr %__p.addr, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %__na_4 = getelementptr inbounds %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__na_4, align 8
  %5 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, i64 noundef 1) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void

terminate.lpad:                                   ; preds = %if.then
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B6v15007ES6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC2B6v15007IS8_RbLS5_0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair.4", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %first, ptr align 8 %0, i64 8, i1 false)
  %second = getelementptr inbounds %"struct.std::__1::pair.4", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__u2.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = trunc i8 %2 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15tupleIJOiEEC1B6v15007IJiELi0EEEDpOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__15tupleIJOiEEC2B6v15007IJiELi0EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15tupleIJOiEEC2B6v15007IJiELi0EEEDpOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp2 = alloca %"struct.std::__1::__tuple_types", align 1
  %agg.tmp3 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %agg.tmp4 = alloca %"struct.std::__1::__tuple_types.10", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC1B6v15007IJLm0EEJS3_EJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull align 8 dereferenceable(8) %__base_, ptr noundef nonnull align 4 dereferenceable(4) %0) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC1B6v15007IJLm0EEJS3_EJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.10", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC2B6v15007IJLm0EEJS3_EJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull align 8 dereferenceable(8) %this4, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  ret ptr %this4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC2B6v15007IJLm0EEJS3_EJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.9", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.10", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EEC2B6v15007IivEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this4, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  ret ptr %this4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EEC2B6v15007IivEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t) unnamed_addr #1 align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_12__value_typeIiiEEE10pointer_toB6v15007ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__r) #2 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4findIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__p = alloca %"class.std::__1::__tree_iterator", align 8
  %ref.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__v.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %call2 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %call3 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE13__lower_boundIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SF_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISD_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %call, ptr noundef %call2)
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call3 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call4 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %ref.tmp, i32 0, i32 0
  %coerce.val.ip6 = inttoptr i64 %call4 to ptr
  store ptr %coerce.val.ip6, ptr %coerce.dive5, align 8
  %call7 = call noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  br i1 %call7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call8 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %1 = load ptr, ptr %__v.addr, align 8
  %call9 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p)
  %call10 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB6v15007ERKiRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call8, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(8) %call9)
  %lnot = xor i1 %call10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__p, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %land.end
  %call11 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %coerce.dive12 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip13 = inttoptr i64 %call11 to ptr
  store ptr %coerce.val.ip13, ptr %coerce.dive12, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive14 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive14, align 8
  %coerce.val.pi = ptrtoint ptr %3 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B6v15007ES8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__i.coerce) unnamed_addr #1 align 2 {
entry:
  %__i = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %coerce.dive2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__i, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC2B6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(8) %this1, i64 %coerce.val.pi) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE13__lower_boundIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SF_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISD_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v, ptr noundef %__root, ptr noundef %__result) #2 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %1 = load ptr, ptr %__root.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__v.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB6v15007ERKS2_RKi(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef nonnull align 4 dereferenceable(8) %__value_, ptr noundef nonnull align 4 dereferenceable(4) %2)
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
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %__result.addr, align 8
  %call3 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %8) #12
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %9 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %9 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %call2 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %call) #12
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  ret ptr %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B6v15007EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC2B6v15007ES8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__i.coerce) unnamed_addr #1 align 2 {
entry:
  %__i = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds %"class.std::__1::__map_iterator", ptr %this1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i_, ptr align 8 %__i, i64 8, i1 false)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5eraseENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 %__p.coerce) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %__p = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__np = alloca ptr, align 8
  %__na = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p)
  store ptr %call, ptr %__np, align 8
  %0 = load ptr, ptr %__np, align 8
  %call2 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE21__remove_node_pointerEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #12
  %coerce.dive3 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip4 = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip4, ptr %coerce.dive3, align 8
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %call5, ptr %__na, align 8
  %1 = load ptr, ptr %__na, align 8
  %call6 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p)
  %call7 = call noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB6v15007ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %call6)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB6v15007INS_4pairIKiiEEvvEEvRS7_PT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call7)
  %2 = load ptr, ptr %__na, align 8
  %3 = load ptr, ptr %__np, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB6v15007ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i64 noundef 1) #12
  %coerce.dive8 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive8, align 8
  %coerce.val.pi = ptrtoint ptr %4 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__p.coerce) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B6v15007ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull align 8 dereferenceable(8) %this1, i64 %coerce.val.pi) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE21__remove_node_pointerEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__ptr) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__ptr.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__ptr.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B6v15007ES6_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %0) #12
  %call2 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %retval)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %1 = load ptr, ptr %call3, align 8
  %2 = load ptr, ptr %__ptr.addr, align 8
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_, align 8
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %3, ptr %call4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %invoke.cont
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %4 = load i64, ptr %call5, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %call5, align 8
  %call6 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call6, i32 0, i32 0
  %5 = load ptr, ptr %__left_, align 8
  %6 = load ptr, ptr %__ptr.addr, align 8
  call void @_ZNSt3__113__tree_removeIPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %5, ptr noundef %6) #12
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %7 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %7 to i64
  ret i64 %coerce.val.pi

terminate.lpad:                                   ; preds = %entry
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  call void @__clang_call_terminate(ptr %9) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  %call = call noundef ptr @_ZNSt3__116__tree_next_iterB6v15007IPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEES5_EET_T0_(ptr noundef %0) #12
  %__ptr_2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  store ptr %call, ptr %__ptr_2, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__113__tree_removeIPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %__root, ptr noundef %__z) #2 {
entry:
  %__root.addr = alloca ptr, align 8
  %__z.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  %__x = alloca ptr, align 8
  %__w = alloca ptr, align 8
  %__removed_black = alloca i8, align 1
  store ptr %__root, ptr %__root.addr, align 8
  store ptr %__z, ptr %__z.addr, align 8
  %0 = load ptr, ptr %__root.addr, align 8
  %cmp = icmp ne ptr %0, null
  call void @llvm.assume(i1 %cmp)
  %1 = load ptr, ptr %__z.addr, align 8
  %cmp1 = icmp ne ptr %1, null
  call void @llvm.assume(i1 %cmp1)
  %2 = load ptr, ptr %__z.addr, align 8
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__left_, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %__z.addr, align 8
  %__right_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %__right_, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %__z.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load ptr, ptr %__z.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__tree_nextIPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %7) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %call, %cond.false ]
  store ptr %cond, ptr %__y, align 8
  %8 = load ptr, ptr %__y, align 8
  %__left_4 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %__left_4, align 8
  %cmp5 = icmp ne ptr %9, null
  br i1 %cmp5, label %cond.true6, label %cond.false8

cond.true6:                                       ; preds = %cond.end
  %10 = load ptr, ptr %__y, align 8
  %__left_7 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %__left_7, align 8
  br label %cond.end10

cond.false8:                                      ; preds = %cond.end
  %12 = load ptr, ptr %__y, align 8
  %__right_9 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %__right_9, align 8
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false8, %cond.true6
  %cond11 = phi ptr [ %11, %cond.true6 ], [ %13, %cond.false8 ]
  store ptr %cond11, ptr %__x, align 8
  store ptr null, ptr %__w, align 8
  %14 = load ptr, ptr %__x, align 8
  %cmp12 = icmp ne ptr %14, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end10
  %15 = load ptr, ptr %__y, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %__parent_, align 8
  %17 = load ptr, ptr %__x, align 8
  %__parent_13 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %17, i32 0, i32 2
  store ptr %16, ptr %__parent_13, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end10
  %18 = load ptr, ptr %__y, align 8
  %call14 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %18) #12
  br i1 %call14, label %if.then15, label %if.else23

if.then15:                                        ; preds = %if.end
  %19 = load ptr, ptr %__x, align 8
  %20 = load ptr, ptr %__y, align 8
  %__parent_16 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %__parent_16, align 8
  %__left_17 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %21, i32 0, i32 0
  store ptr %19, ptr %__left_17, align 8
  %22 = load ptr, ptr %__y, align 8
  %23 = load ptr, ptr %__root.addr, align 8
  %cmp18 = icmp ne ptr %22, %23
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then15
  %24 = load ptr, ptr %__y, align 8
  %call20 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %24)
  %__right_21 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call20, i32 0, i32 1
  %25 = load ptr, ptr %__right_21, align 8
  store ptr %25, ptr %__w, align 8
  br label %if.end22

if.else:                                          ; preds = %if.then15
  %26 = load ptr, ptr %__x, align 8
  store ptr %26, ptr %__root.addr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  br label %if.end28

if.else23:                                        ; preds = %if.end
  %27 = load ptr, ptr %__x, align 8
  %28 = load ptr, ptr %__y, align 8
  %call24 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %28)
  %__right_25 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call24, i32 0, i32 1
  store ptr %27, ptr %__right_25, align 8
  %29 = load ptr, ptr %__y, align 8
  %__parent_26 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %__parent_26, align 8
  %__left_27 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %__left_27, align 8
  store ptr %31, ptr %__w, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.end22
  %32 = load ptr, ptr %__y, align 8
  %__is_black_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %32, i32 0, i32 3
  %33 = load i8, ptr %__is_black_, align 8
  %tobool = trunc i8 %33 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, ptr %__removed_black, align 1
  %34 = load ptr, ptr %__y, align 8
  %35 = load ptr, ptr %__z.addr, align 8
  %cmp29 = icmp ne ptr %34, %35
  br i1 %cmp29, label %if.then30, label %if.end58

if.then30:                                        ; preds = %if.end28
  %36 = load ptr, ptr %__z.addr, align 8
  %__parent_31 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %__parent_31, align 8
  %38 = load ptr, ptr %__y, align 8
  %__parent_32 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %38, i32 0, i32 2
  store ptr %37, ptr %__parent_32, align 8
  %39 = load ptr, ptr %__z.addr, align 8
  %call33 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %39) #12
  br i1 %call33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %if.then30
  %40 = load ptr, ptr %__y, align 8
  %41 = load ptr, ptr %__y, align 8
  %__parent_35 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %__parent_35, align 8
  %__left_36 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %42, i32 0, i32 0
  store ptr %40, ptr %__left_36, align 8
  br label %if.end40

if.else37:                                        ; preds = %if.then30
  %43 = load ptr, ptr %__y, align 8
  %44 = load ptr, ptr %__y, align 8
  %call38 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %44)
  %__right_39 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call38, i32 0, i32 1
  store ptr %43, ptr %__right_39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then34
  %45 = load ptr, ptr %__z.addr, align 8
  %__left_41 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %__left_41, align 8
  %47 = load ptr, ptr %__y, align 8
  %__left_42 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %47, i32 0, i32 0
  store ptr %46, ptr %__left_42, align 8
  %48 = load ptr, ptr %__y, align 8
  %__left_43 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %__left_43, align 8
  %50 = load ptr, ptr %__y, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %49, ptr noundef %50)
  %51 = load ptr, ptr %__z.addr, align 8
  %__right_44 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %__right_44, align 8
  %53 = load ptr, ptr %__y, align 8
  %__right_45 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %53, i32 0, i32 1
  store ptr %52, ptr %__right_45, align 8
  %54 = load ptr, ptr %__y, align 8
  %__right_46 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %__right_46, align 8
  %cmp47 = icmp ne ptr %55, null
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end40
  %56 = load ptr, ptr %__y, align 8
  %__right_49 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %__right_49, align 8
  %58 = load ptr, ptr %__y, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %57, ptr noundef %58)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end40
  %59 = load ptr, ptr %__z.addr, align 8
  %__is_black_51 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %59, i32 0, i32 3
  %60 = load i8, ptr %__is_black_51, align 8
  %tobool52 = trunc i8 %60 to i1
  %61 = load ptr, ptr %__y, align 8
  %__is_black_53 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %61, i32 0, i32 3
  %frombool54 = zext i1 %tobool52 to i8
  store i8 %frombool54, ptr %__is_black_53, align 8
  %62 = load ptr, ptr %__root.addr, align 8
  %63 = load ptr, ptr %__z.addr, align 8
  %cmp55 = icmp eq ptr %62, %63
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end50
  %64 = load ptr, ptr %__y, align 8
  store ptr %64, ptr %__root.addr, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end50
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end28
  %65 = load i8, ptr %__removed_black, align 1
  %tobool59 = trunc i8 %65 to i1
  br i1 %tobool59, label %land.lhs.true, label %if.end211

land.lhs.true:                                    ; preds = %if.end58
  %66 = load ptr, ptr %__root.addr, align 8
  %cmp60 = icmp ne ptr %66, null
  br i1 %cmp60, label %if.then61, label %if.end211

if.then61:                                        ; preds = %land.lhs.true
  %67 = load ptr, ptr %__x, align 8
  %cmp62 = icmp ne ptr %67, null
  br i1 %cmp62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then61
  %68 = load ptr, ptr %__x, align 8
  %__is_black_64 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %68, i32 0, i32 3
  store i8 1, ptr %__is_black_64, align 8
  br label %if.end210

if.else65:                                        ; preds = %if.then61
  br label %while.cond

while.cond:                                       ; preds = %if.end209, %if.else65
  br label %while.body

while.body:                                       ; preds = %while.cond
  %69 = load ptr, ptr %__w, align 8
  %call66 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %69) #12
  br i1 %call66, label %if.else138, label %if.then67

if.then67:                                        ; preds = %while.body
  %70 = load ptr, ptr %__w, align 8
  %__is_black_68 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %70, i32 0, i32 3
  %71 = load i8, ptr %__is_black_68, align 8
  %tobool69 = trunc i8 %71 to i1
  br i1 %tobool69, label %if.end81, label %if.then70

if.then70:                                        ; preds = %if.then67
  %72 = load ptr, ptr %__w, align 8
  %__is_black_71 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %72, i32 0, i32 3
  store i8 1, ptr %__is_black_71, align 8
  %73 = load ptr, ptr %__w, align 8
  %call72 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %73)
  %__is_black_73 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call72, i32 0, i32 3
  store i8 0, ptr %__is_black_73, align 8
  %74 = load ptr, ptr %__w, align 8
  %call74 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %74)
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call74) #12
  %75 = load ptr, ptr %__root.addr, align 8
  %76 = load ptr, ptr %__w, align 8
  %__left_75 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %__left_75, align 8
  %cmp76 = icmp eq ptr %75, %77
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then70
  %78 = load ptr, ptr %__w, align 8
  store ptr %78, ptr %__root.addr, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then70
  %79 = load ptr, ptr %__w, align 8
  %__left_79 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %__left_79, align 8
  %__right_80 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %__right_80, align 8
  store ptr %81, ptr %__w, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end78, %if.then67
  %82 = load ptr, ptr %__w, align 8
  %__left_82 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %__left_82, align 8
  %cmp83 = icmp eq ptr %83, null
  br i1 %cmp83, label %land.lhs.true88, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %if.end81
  %84 = load ptr, ptr %__w, align 8
  %__left_85 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %__left_85, align 8
  %__is_black_86 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %85, i32 0, i32 3
  %86 = load i8, ptr %__is_black_86, align 8
  %tobool87 = trunc i8 %86 to i1
  br i1 %tobool87, label %land.lhs.true88, label %if.else114

land.lhs.true88:                                  ; preds = %lor.lhs.false84, %if.end81
  %87 = load ptr, ptr %__w, align 8
  %__right_89 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %__right_89, align 8
  %cmp90 = icmp eq ptr %88, null
  br i1 %cmp90, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %land.lhs.true88
  %89 = load ptr, ptr %__w, align 8
  %__right_92 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %89, i32 0, i32 1
  %90 = load ptr, ptr %__right_92, align 8
  %__is_black_93 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %90, i32 0, i32 3
  %91 = load i8, ptr %__is_black_93, align 8
  %tobool94 = trunc i8 %91 to i1
  br i1 %tobool94, label %if.then95, label %if.else114

if.then95:                                        ; preds = %lor.lhs.false91, %land.lhs.true88
  %92 = load ptr, ptr %__w, align 8
  %__is_black_96 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %92, i32 0, i32 3
  store i8 0, ptr %__is_black_96, align 8
  %93 = load ptr, ptr %__w, align 8
  %call97 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %93)
  store ptr %call97, ptr %__x, align 8
  %94 = load ptr, ptr %__x, align 8
  %95 = load ptr, ptr %__root.addr, align 8
  %cmp98 = icmp eq ptr %94, %95
  br i1 %cmp98, label %if.then102, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.then95
  %96 = load ptr, ptr %__x, align 8
  %__is_black_100 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %96, i32 0, i32 3
  %97 = load i8, ptr %__is_black_100, align 8
  %tobool101 = trunc i8 %97 to i1
  br i1 %tobool101, label %if.end104, label %if.then102

if.then102:                                       ; preds = %lor.lhs.false99, %if.then95
  %98 = load ptr, ptr %__x, align 8
  %__is_black_103 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %98, i32 0, i32 3
  store i8 1, ptr %__is_black_103, align 8
  br label %while.end

if.end104:                                        ; preds = %lor.lhs.false99
  %99 = load ptr, ptr %__x, align 8
  %call105 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %99) #12
  br i1 %call105, label %cond.true106, label %cond.false109

cond.true106:                                     ; preds = %if.end104
  %100 = load ptr, ptr %__x, align 8
  %call107 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %100)
  %__right_108 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call107, i32 0, i32 1
  %101 = load ptr, ptr %__right_108, align 8
  br label %cond.end112

cond.false109:                                    ; preds = %if.end104
  %102 = load ptr, ptr %__x, align 8
  %__parent_110 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %__parent_110, align 8
  %__left_111 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %__left_111, align 8
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false109, %cond.true106
  %cond113 = phi ptr [ %101, %cond.true106 ], [ %104, %cond.false109 ]
  store ptr %cond113, ptr %__w, align 8
  br label %if.end137

if.else114:                                       ; preds = %lor.lhs.false91, %lor.lhs.false84
  %105 = load ptr, ptr %__w, align 8
  %__right_115 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %__right_115, align 8
  %cmp116 = icmp eq ptr %106, null
  br i1 %cmp116, label %if.then121, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.else114
  %107 = load ptr, ptr %__w, align 8
  %__right_118 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %107, i32 0, i32 1
  %108 = load ptr, ptr %__right_118, align 8
  %__is_black_119 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %108, i32 0, i32 3
  %109 = load i8, ptr %__is_black_119, align 8
  %tobool120 = trunc i8 %109 to i1
  br i1 %tobool120, label %if.then121, label %if.end126

if.then121:                                       ; preds = %lor.lhs.false117, %if.else114
  %110 = load ptr, ptr %__w, align 8
  %__left_122 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %__left_122, align 8
  %__is_black_123 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %111, i32 0, i32 3
  store i8 1, ptr %__is_black_123, align 8
  %112 = load ptr, ptr %__w, align 8
  %__is_black_124 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %112, i32 0, i32 3
  store i8 0, ptr %__is_black_124, align 8
  %113 = load ptr, ptr %__w, align 8
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %113) #12
  %114 = load ptr, ptr %__w, align 8
  %call125 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %114)
  store ptr %call125, ptr %__w, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %lor.lhs.false117
  %115 = load ptr, ptr %__w, align 8
  %call127 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %115)
  %__is_black_128 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call127, i32 0, i32 3
  %116 = load i8, ptr %__is_black_128, align 8
  %tobool129 = trunc i8 %116 to i1
  %117 = load ptr, ptr %__w, align 8
  %__is_black_130 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %117, i32 0, i32 3
  %frombool131 = zext i1 %tobool129 to i8
  store i8 %frombool131, ptr %__is_black_130, align 8
  %118 = load ptr, ptr %__w, align 8
  %call132 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %118)
  %__is_black_133 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call132, i32 0, i32 3
  store i8 1, ptr %__is_black_133, align 8
  %119 = load ptr, ptr %__w, align 8
  %__right_134 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %__right_134, align 8
  %__is_black_135 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %120, i32 0, i32 3
  store i8 1, ptr %__is_black_135, align 8
  %121 = load ptr, ptr %__w, align 8
  %call136 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %121)
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call136) #12
  br label %while.end

if.end137:                                        ; preds = %cond.end112
  br label %if.end209

if.else138:                                       ; preds = %while.body
  %122 = load ptr, ptr %__w, align 8
  %__is_black_139 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %122, i32 0, i32 3
  %123 = load i8, ptr %__is_black_139, align 8
  %tobool140 = trunc i8 %123 to i1
  br i1 %tobool140, label %if.end152, label %if.then141

if.then141:                                       ; preds = %if.else138
  %124 = load ptr, ptr %__w, align 8
  %__is_black_142 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %124, i32 0, i32 3
  store i8 1, ptr %__is_black_142, align 8
  %125 = load ptr, ptr %__w, align 8
  %call143 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %125)
  %__is_black_144 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call143, i32 0, i32 3
  store i8 0, ptr %__is_black_144, align 8
  %126 = load ptr, ptr %__w, align 8
  %call145 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %126)
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call145) #12
  %127 = load ptr, ptr %__root.addr, align 8
  %128 = load ptr, ptr %__w, align 8
  %__right_146 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %128, i32 0, i32 1
  %129 = load ptr, ptr %__right_146, align 8
  %cmp147 = icmp eq ptr %127, %129
  br i1 %cmp147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.then141
  %130 = load ptr, ptr %__w, align 8
  store ptr %130, ptr %__root.addr, align 8
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.then141
  %131 = load ptr, ptr %__w, align 8
  %__right_150 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %__right_150, align 8
  %__left_151 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %__left_151, align 8
  store ptr %133, ptr %__w, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.end149, %if.else138
  %134 = load ptr, ptr %__w, align 8
  %__left_153 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %__left_153, align 8
  %cmp154 = icmp eq ptr %135, null
  br i1 %cmp154, label %land.lhs.true159, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %if.end152
  %136 = load ptr, ptr %__w, align 8
  %__left_156 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %__left_156, align 8
  %__is_black_157 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %137, i32 0, i32 3
  %138 = load i8, ptr %__is_black_157, align 8
  %tobool158 = trunc i8 %138 to i1
  br i1 %tobool158, label %land.lhs.true159, label %if.else185

land.lhs.true159:                                 ; preds = %lor.lhs.false155, %if.end152
  %139 = load ptr, ptr %__w, align 8
  %__right_160 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %139, i32 0, i32 1
  %140 = load ptr, ptr %__right_160, align 8
  %cmp161 = icmp eq ptr %140, null
  br i1 %cmp161, label %if.then166, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %land.lhs.true159
  %141 = load ptr, ptr %__w, align 8
  %__right_163 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %141, i32 0, i32 1
  %142 = load ptr, ptr %__right_163, align 8
  %__is_black_164 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %142, i32 0, i32 3
  %143 = load i8, ptr %__is_black_164, align 8
  %tobool165 = trunc i8 %143 to i1
  br i1 %tobool165, label %if.then166, label %if.else185

if.then166:                                       ; preds = %lor.lhs.false162, %land.lhs.true159
  %144 = load ptr, ptr %__w, align 8
  %__is_black_167 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %144, i32 0, i32 3
  store i8 0, ptr %__is_black_167, align 8
  %145 = load ptr, ptr %__w, align 8
  %call168 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %145)
  store ptr %call168, ptr %__x, align 8
  %146 = load ptr, ptr %__x, align 8
  %__is_black_169 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %146, i32 0, i32 3
  %147 = load i8, ptr %__is_black_169, align 8
  %tobool170 = trunc i8 %147 to i1
  br i1 %tobool170, label %lor.lhs.false171, label %if.then173

lor.lhs.false171:                                 ; preds = %if.then166
  %148 = load ptr, ptr %__x, align 8
  %149 = load ptr, ptr %__root.addr, align 8
  %cmp172 = icmp eq ptr %148, %149
  br i1 %cmp172, label %if.then173, label %if.end175

if.then173:                                       ; preds = %lor.lhs.false171, %if.then166
  %150 = load ptr, ptr %__x, align 8
  %__is_black_174 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %150, i32 0, i32 3
  store i8 1, ptr %__is_black_174, align 8
  br label %while.end

if.end175:                                        ; preds = %lor.lhs.false171
  %151 = load ptr, ptr %__x, align 8
  %call176 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %151) #12
  br i1 %call176, label %cond.true177, label %cond.false180

cond.true177:                                     ; preds = %if.end175
  %152 = load ptr, ptr %__x, align 8
  %call178 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %152)
  %__right_179 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call178, i32 0, i32 1
  %153 = load ptr, ptr %__right_179, align 8
  br label %cond.end183

cond.false180:                                    ; preds = %if.end175
  %154 = load ptr, ptr %__x, align 8
  %__parent_181 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %154, i32 0, i32 2
  %155 = load ptr, ptr %__parent_181, align 8
  %__left_182 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %__left_182, align 8
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false180, %cond.true177
  %cond184 = phi ptr [ %153, %cond.true177 ], [ %156, %cond.false180 ]
  store ptr %cond184, ptr %__w, align 8
  br label %if.end208

if.else185:                                       ; preds = %lor.lhs.false162, %lor.lhs.false155
  %157 = load ptr, ptr %__w, align 8
  %__left_186 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %__left_186, align 8
  %cmp187 = icmp eq ptr %158, null
  br i1 %cmp187, label %if.then192, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %if.else185
  %159 = load ptr, ptr %__w, align 8
  %__left_189 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %__left_189, align 8
  %__is_black_190 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %160, i32 0, i32 3
  %161 = load i8, ptr %__is_black_190, align 8
  %tobool191 = trunc i8 %161 to i1
  br i1 %tobool191, label %if.then192, label %if.end197

if.then192:                                       ; preds = %lor.lhs.false188, %if.else185
  %162 = load ptr, ptr %__w, align 8
  %__right_193 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %162, i32 0, i32 1
  %163 = load ptr, ptr %__right_193, align 8
  %__is_black_194 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %163, i32 0, i32 3
  store i8 1, ptr %__is_black_194, align 8
  %164 = load ptr, ptr %__w, align 8
  %__is_black_195 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %164, i32 0, i32 3
  store i8 0, ptr %__is_black_195, align 8
  %165 = load ptr, ptr %__w, align 8
  call void @_ZNSt3__118__tree_left_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %165) #12
  %166 = load ptr, ptr %__w, align 8
  %call196 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %166)
  store ptr %call196, ptr %__w, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %lor.lhs.false188
  %167 = load ptr, ptr %__w, align 8
  %call198 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %167)
  %__is_black_199 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call198, i32 0, i32 3
  %168 = load i8, ptr %__is_black_199, align 8
  %tobool200 = trunc i8 %168 to i1
  %169 = load ptr, ptr %__w, align 8
  %__is_black_201 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %169, i32 0, i32 3
  %frombool202 = zext i1 %tobool200 to i8
  store i8 %frombool202, ptr %__is_black_201, align 8
  %170 = load ptr, ptr %__w, align 8
  %call203 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %170)
  %__is_black_204 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %call203, i32 0, i32 3
  store i8 1, ptr %__is_black_204, align 8
  %171 = load ptr, ptr %__w, align 8
  %__left_205 = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %171, i32 0, i32 0
  %172 = load ptr, ptr %__left_205, align 8
  %__is_black_206 = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %172, i32 0, i32 3
  store i8 1, ptr %__is_black_206, align 8
  %173 = load ptr, ptr %__w, align 8
  %call207 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %173)
  call void @_ZNSt3__119__tree_right_rotateIPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call207) #12
  br label %while.end

if.end208:                                        ; preds = %cond.end183
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.end137
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.end197, %if.then173, %if.end126, %if.then102
  br label %if.end210

if.end210:                                        ; preds = %while.end, %if.then63
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %land.lhs.true, %if.end58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__tree_next_iterB6v15007IPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEES5_EET_T0_(ptr noundef %__x) #2 {
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
  %call = call noundef ptr @_ZNSt3__110__tree_minB6v15007IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %4) #12
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load ptr, ptr %__x.addr, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %5) #12
  %lnot = xor i1 %call3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %__x.addr, align 8
  %call4 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %6)
  store ptr %call4, ptr %__x.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds %"class.std::__1::__tree_node_base", ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %__parent_, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__tree_minB6v15007IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %__x) #2 {
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
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %__x.addr, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__111__tree_nextIPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %__x) #2 {
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
  %call = call noundef ptr @_ZNSt3__110__tree_minB6v15007IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %4) #12
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load ptr, ptr %__x.addr, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB6v15007IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %5) #12
  %lnot = xor i1 %call3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %__x.addr, align 8
  %call4 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %6)
  store ptr %call4, ptr %__x.addr, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %__x.addr, align 8
  %call5 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(25) %7)
  store ptr %call5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B6v15007ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__p.coerce) unnamed_addr #1 align 2 {
entry:
  %__p = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  %__ptr_2 = getelementptr inbounds %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_2, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #12
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store i64 0, ptr %call2, align 8
  %call3 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  store ptr %call3, ptr %call4, align 8
  %call5 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  %__left_ = getelementptr inbounds %"class.std::__1::__tree_end_node", ptr %call5, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress noinline noreturn optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nocallback nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
