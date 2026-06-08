; ModuleID = './thesis_attempt/source_snapshot/DCMTK/config/tests/map.cc'
source_filename = "./thesis_attempt/source_snapshot/DCMTK/config/tests/map.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%"struct.std::__1::piecewise_construct_t" = type { i8 }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { ptr, %"class.std::__1::__tree_end_node", i64 }
%"class.std::__1::__tree_end_node" = type { ptr }
%"class.std::__1::__map_iterator" = type { %"class.std::__1::__tree_iterator" }
%"class.std::__1::__tree_iterator" = type { ptr }
%"struct.std::__1::pair.3" = type <{ %"class.std::__1::__tree_iterator", i8, [7 x i8] }>
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf" }
%"class.std::__1::__tuple_leaf" = type { ptr }
%"class.std::__1::tuple.4" = type { i8 }
%"struct.std::__1::pair" = type { i32, i32 }
%"class.std::__1::__tree_const_iterator" = type { ptr }
%"class.std::__1::__map_value_compare" = type { i8 }
%"struct.std::__1::less" = type { i8 }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8, [7 x i8] }>
%"class.std::__1::__tree_node" = type { %"class.std::__1::__tree_node_base.base", %"struct.std::__1::__value_type", [4 x i8] }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", ptr, ptr, i8 }>
%"struct.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"class.std::__1::unique_ptr" = type { ptr, %"class.std::__1::__tree_node_destructor.base", %"class.std::__1::__compressed_pair_padding.5" }
%"class.std::__1::__tree_node_destructor.base" = type <{ ptr, i8 }>
%"class.std::__1::__compressed_pair_padding.5" = type { [7 x i8] }
%"class.std::__1::__tree_node_destructor" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_indices.7" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_types.8" = type { i8 }

@_ZNSt3__119piecewise_constructE = linkonce_odr constant %"struct.std::__1::piecewise_construct_t" zeroinitializer, align 1
@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
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
  %call = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  %call1 = call noundef zeroext i1 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
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
  %call9 = call noundef i64 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
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
  %call55 = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
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
  %call26 = invoke i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4findB8ne200100ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp24)
          to label %invoke.cont25 unwind label %lpad

invoke.cont25:                                    ; preds = %if.end23
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.dive27 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call26 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive27, align 8
  %coerce.dive28 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.dive29 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive28, i32 0, i32 0
  %5 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi = ptrtoint ptr %5 to i64
  %call31 = invoke i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5eraseB8ne200100ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeISC_PvEElEEEE(ptr noundef nonnull align 8 dereferenceable(24) %m, i64 %coerce.val.pi)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont25
  %coerce.dive32 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %coerce, i32 0, i32 0
  %coerce.dive33 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive32, i32 0, i32 0
  %coerce.val.ip34 = inttoptr i64 %call31 to ptr
  store ptr %coerce.val.ip34, ptr %coerce.dive33, align 8
  store i32 3, ptr %ref.tmp36, align 4
  %call38 = invoke i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4findB8ne200100ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp36)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont30
  %coerce.dive39 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %ref.tmp35, i32 0, i32 0
  %coerce.dive40 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive39, i32 0, i32 0
  %coerce.val.ip41 = inttoptr i64 %call38 to ptr
  store ptr %coerce.val.ip41, ptr %coerce.dive40, align 8
  %call43 = call i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  %coerce.dive44 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %ref.tmp42, i32 0, i32 0
  %coerce.dive45 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive44, i32 0, i32 0
  %coerce.val.ip46 = inttoptr i64 %call43 to ptr
  store ptr %coerce.val.ip46, ptr %coerce.dive45, align 8
  %call48 = invoke noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEESB_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp35, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp42)
          to label %invoke.cont47 unwind label %lpad

invoke.cont47:                                    ; preds = %invoke.cont37
  br i1 %call48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %invoke.cont47
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %invoke.cont47
  call void @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  %call51 = call noundef zeroext i1 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
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
  %call54 = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val56 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val56
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #10
  %0 = load i64, ptr %call, align 8
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEixEOi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::pair.3", align 8
  %ref.tmp2 = alloca %"class.std::__1::tuple", align 8
  %ref.tmp5 = alloca %"class.std::__1::tuple.4", align 1
  %undef.agg.tmp = alloca %"class.std::__1::tuple.4", align 1
  %tmp.coerce = alloca [2 x i64], align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %1 = load ptr, ptr %__k.addr, align 8
  %call = call i64 @_ZNSt3__116forward_as_tupleB8ne200100IJiEEENS_5tupleIJDpOT_EEES4_(ptr noundef nonnull align 4 dereferenceable(4) %1) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::tuple", ptr %ref.tmp2, i32 0, i32 0
  %coerce.dive3 = getelementptr inbounds nuw %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive4 = getelementptr inbounds nuw %"class.std::__1::__tuple_leaf", ptr %coerce.dive3, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive4, align 8
  call void @_ZNSt3__116forward_as_tupleB8ne200100IJEEENS_5tupleIJDpOT_EEES4_() #10
  %call6 = call [2 x i64] @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE25__emplace_unique_key_argsIiJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_4pairINS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__119piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp5)
  store [2 x i64] %call6, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ref.tmp, ptr align 8 %tmp.coerce, i64 9, i1 false)
  %first = getelementptr inbounds nuw %"struct.std::__1::pair.3", ptr %ref.tmp, i32 0, i32 0
  %call7 = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEptB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %first)
  %call8 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3__112__value_typeIiiE11__get_valueB8ne200100Ev(ptr noundef nonnull align 4 dereferenceable(8) %call7)
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %call8, i32 0, i32 1
  ret ptr %second
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #10
  %0 = load i64, ptr %call, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5eraseB8ne200100ENS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeISC_PvEElEEEE(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 %__p.coerce) #2 {
entry:
  %retval = alloca %"class.std::__1::__map_iterator", align 8
  %__p = alloca %"class.std::__1::__map_iterator", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::__tree_const_iterator", align 8
  %agg.tmp4 = alloca %"class.std::__1::__tree_iterator", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %__p, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive1, align 8
  store ptr %this, ptr %this.addr, align 8
  %this2 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this2, i32 0, i32 0
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %__p, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp4, ptr align 8 %__i_, i64 8, i1 false)
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %agg.tmp4, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp3, i64 %coerce.val.pi) #10
  %coerce.dive6 = getelementptr inbounds nuw %"class.std::__1::__tree_const_iterator", ptr %agg.tmp3, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call8 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5eraseENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, i64 %coerce.val.pi7)
  %coerce.dive9 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip10 = inttoptr i64 %call8 to ptr
  store ptr %coerce.val.ip10, ptr %coerce.dive9, align 8
  %coerce.dive11 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive11, align 8
  %coerce.val.pi12 = ptrtoint ptr %2 to i64
  %call13 = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B8ne200100ES8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi12) #10
  %coerce.dive14 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive15 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive14, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive15, align 8
  %coerce.val.pi16 = ptrtoint ptr %3 to i64
  ret i64 %coerce.val.pi16
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE4findB8ne200100ERS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k) #2 {
entry:
  %retval = alloca %"class.std::__1::__map_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__k.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__k, ptr %__k.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__k.addr, align 8
  %call = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4findIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 4 dereferenceable(4) %0)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  %call3 = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B8ne200100ES8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #10
  %coerce.dive4 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive4, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %2 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_14__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEESB_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__y.addr, align 8
  %__i_1 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %1, i32 0, i32 0
  %call = call noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__i_, ptr noundef nonnull align 8 dereferenceable(8) %__i_1)
  ret i1 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__map_iterator", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__tree_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call3 = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B8ne200100ES8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 %coerce.val.pi) #10
  %coerce.dive4 = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %retval, i32 0, i32 0
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %coerce.dive4, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::__map_value_compare", align 1
  %agg.tmp = alloca %"struct.std::__1::less", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC1B8ne200100ES4_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #10
  %call2 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC1ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %__tree_, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC1B8ne200100ES4_(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %__c = alloca %"struct.std::__1::less", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC2B8ne200100ES4_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC1ERKS6_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__comp.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEC2B8ne200100ES4_(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %__c = alloca %"struct.std::__1::less", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEEC2ERKS6_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__comp) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__comp, ptr %__comp.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_node_ = getelementptr inbounds nuw %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_node_) #10
  %call2 = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEC1B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  store i64 0, ptr %__size_, align 8
  %0 = load ptr, ptr %__comp.addr, align 8
  %call3 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %call3, ptr %call4, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEC1B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_node_ = getelementptr inbounds nuw %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB8ne200100ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__end_node_) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_node_ = getelementptr inbounds nuw %"class.std::__1::__tree", ptr %this1, i32 0, i32 0
  ret ptr %__begin_node_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB8ne200100ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__r) #1 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__13mapIiiNS_4lessIiEENS_9allocatorINS_4pairIKiiEEEEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__tree_ = getelementptr inbounds nuw %"class.std::__1::map", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tree_) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__nd) #1 personality ptr @__gxx_personality_v0 {
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
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %__left_, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %2) #10
  %3 = load ptr, ptr %__nd.addr, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__right_, align 8
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %4) #10
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %call, ptr %__na, align 8
  %5 = load ptr, ptr %__na, align 8
  %6 = load ptr, ptr %__nd.addr, align 8
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %6, i32 0, i32 1
  %call2 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB8ne200100ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB8ne200100INS_4pairIKiiEEvTnNS_9enable_ifIXntsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SF_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %call2)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  %7 = load ptr, ptr %__na, align 8
  %8 = load ptr, ptr %__nd.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB8ne200100ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef %8, i64 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %invoke.cont3, %entry
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %if.then
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  %0 = load ptr, ptr %__left_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB8ne200100INS_4pairIKiiEEvTnNS_9enable_ifIXntsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %__p) #2 {
entry:
  %.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__112__destroy_atB8ne200100INS_4pairIKiiEETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS5_(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB8ne200100ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__n) #2 {
entry:
  %__n.addr = alloca ptr, align 8
  store ptr %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__n.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3__112__value_typeIiiE11__get_valueB8ne200100Ev(ptr noundef nonnull align 4 dereferenceable(8) %0)
  ret ptr %call
}

; Function Attrs: noinline noreturn nounwind ssp uwtable(sync)
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #3 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #10
  call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB8ne200100ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE10deallocateB8ne200100EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__112__destroy_atB8ne200100INS_4pairIKiiEETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS5_(ptr noundef %__loc) #1 {
entry:
  %__loc.addr = alloca ptr, align 8
  store ptr %__loc, ptr %__loc.addr, align 8
  %0 = load ptr, ptr %__loc.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt3__112__value_typeIiiE11__get_valueB8ne200100Ev(ptr noundef nonnull align 4 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cc_ = getelementptr inbounds nuw %"struct.std::__1::__value_type", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__17launderB8ne200100INS_4pairIKiiEEEEPT_S5_(ptr noundef %__cc_) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__17launderB8ne200100INS_4pairIKiiEEEEPT_S5_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__19__launderB8ne200100INS_4pairIKiiEEEEPT_S5_(ptr noundef %0) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19__launderB8ne200100INS_4pairIKiiEEEEPT_S5_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE10deallocateB8ne200100EPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__119__libcpp_deallocateB8ne200100INS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %0, i64 noundef %1, i64 noundef 8) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB8ne200100INS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %__ptr, i64 noundef %__n, i64 noundef %__align) #1 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__size = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %0, 40
  store i64 %mul, ptr %__size, align 8
  %1 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %1) #10
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__align.addr, align 8
  store i64 %2, ptr %__align_val, align 8
  %3 = load ptr, ptr %__ptr.addr, align 8
  %4 = load i64, ptr %__size, align 8
  %5 = load i64, ptr %__align_val, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__tree_nodeINS_12__value_typeIiiEEPvEEmSt11align_val_tEEEvDpT_(ptr noundef %3, i64 noundef %4, i64 noundef %5) #10
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__ptr.addr, align 8
  %7 = load i64, ptr %__size, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__tree_nodeINS_12__value_typeIiiEEPvEEmEEEvDpT_(ptr noundef %6, i64 noundef %7) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %__align) #1 {
entry:
  %__align.addr = alloca i64, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %cmp = icmp ugt i64 %0, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__tree_nodeINS_12__value_typeIiiEEPvEEmSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1, i64 noundef %__args3) #1 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  %__args.addr4 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  store i64 %__args3, ptr %__args.addr4, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  %2 = load i64, ptr %__args.addr4, align 8
  call void @_ZdlPvmSt11align_val_t(ptr noundef %0, i64 noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__tree_nodeINS_12__value_typeIiiEEPvEEmEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #1 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  call void @_ZdlPvm(ptr noundef %0, i64 noundef %1) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_node_ = getelementptr inbounds nuw %"class.std::__1::__tree", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEEE10pointer_toB8ne200100ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__end_node_) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  ret ptr %__size_
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr [2 x i64] @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE25__emplace_unique_key_argsIiJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_4pairINS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__k, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair.3", align 8
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
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS2_PvEENS_22__tree_node_destructorINS7_ISL_EEEEEEDpOT_(ptr dead_on_unwind writable sret(%"class.std::__1::unique_ptr") align 8 %__h, ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %8 = load ptr, ptr %__parent, align 8
  %9 = load ptr, ptr %__child, align 8
  %call6 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #10
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSE_SE_(ptr noundef nonnull align 8 dereferenceable(24) %this5, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %call6) #10
  %call7 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE7releaseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #10
  store ptr %call7, ptr %__r, align 8
  store i8 1, ptr %__inserted, align 1
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__h) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %__r, align 8
  %call9 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100ES6_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef %10) #10
  %call10 = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC1B8ne200100IS8_RbTnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(9) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__inserted) #10
  %11 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__116forward_as_tupleB8ne200100IJiEEENS_5tupleIJDpOT_EEES4_(ptr noundef nonnull align 4 dereferenceable(4) %__t) #1 {
entry:
  %retval = alloca %"class.std::__1::tuple", align 8
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef ptr @_ZNSt3__15tupleIJOiEEC1B8ne200100IJiETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS2_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOS8_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 4 dereferenceable(4) %0) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::tuple", ptr %retval, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds nuw %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__tuple_leaf", ptr %coerce.dive1, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116forward_as_tupleB8ne200100IJEEENS_5tupleIJDpOT_EEES4_() #1 {
entry:
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEptB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_12__value_typeIiiEEE10pointer_toB8ne200100ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_) #10
  ret ptr %call2
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__find_equalIiEERPNS_16__tree_node_baseIPvEERPNS_15__tree_end_nodeISE_EERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__parent, ptr noundef nonnull align 4 dereferenceable(4) %__v) #2 {
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
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %call, ptr %__nd, align 8
  %call2 = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__root_ptrB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %call2, ptr %__nd_ptr, align 8
  %0 = load ptr, ptr %__nd, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end25
  %call3 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %1 = load ptr, ptr %__v.addr, align 8
  %2 = load ptr, ptr %__nd, align 8
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %2, i32 0, i32 1
  %call4 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB8ne200100ERKiRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call3, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(8) %__value_)
  br i1 %call4, label %if.then5, label %if.else11

if.then5:                                         ; preds = %while.body
  %3 = load ptr, ptr %__nd, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %__left_, align 8
  %cmp6 = icmp ne ptr %4, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %5 = load ptr, ptr %__nd, align 8
  %__left_8 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %5, i32 0, i32 0
  store ptr %__left_8, ptr %__nd_ptr, align 8
  %6 = load ptr, ptr %__nd, align 8
  %__left_9 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_9, align 8
  store ptr %7, ptr %__nd, align 8
  br label %if.end

if.else:                                          ; preds = %if.then5
  %8 = load ptr, ptr %__nd, align 8
  %9 = load ptr, ptr %__parent.addr, align 8
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %__parent.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %__left_10 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %11, i32 0, i32 0
  store ptr %__left_10, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then7
  br label %if.end25

if.else11:                                        ; preds = %while.body
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %12 = load ptr, ptr %__nd, align 8
  %__value_13 = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %__v.addr, align 8
  %call14 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB8ne200100ERKS2_RKi(ptr noundef nonnull align 1 dereferenceable(1) %call12, ptr noundef nonnull align 4 dereferenceable(8) %__value_13, ptr noundef nonnull align 4 dereferenceable(4) %13)
  br i1 %call14, label %if.then15, label %if.else23

if.then15:                                        ; preds = %if.else11
  %14 = load ptr, ptr %__nd, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %__right_, align 8
  %cmp16 = icmp ne ptr %15, null
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.then15
  %16 = load ptr, ptr %__nd, align 8
  %__right_18 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %16, i32 0, i32 1
  store ptr %__right_18, ptr %__nd_ptr, align 8
  %17 = load ptr, ptr %__nd, align 8
  %__right_19 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %__right_19, align 8
  store ptr %18, ptr %__nd, align 8
  br label %if.end22

if.else20:                                        ; preds = %if.then15
  %19 = load ptr, ptr %__nd, align 8
  %20 = load ptr, ptr %__parent.addr, align 8
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr %__nd, align 8
  %__right_21 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %21, i32 0, i32 1
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
  %call27 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %25 = load ptr, ptr %__parent.addr, align 8
  store ptr %call27, ptr %25, align 8
  %26 = load ptr, ptr %__parent.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %__left_28 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %27, i32 0, i32 0
  store ptr %__left_28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.else23, %if.else20, %if.else
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__construct_nodeIJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEENS_10unique_ptrINS_11__tree_nodeIS2_PvEENS_22__tree_node_destructorINS7_ISL_EEEEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::unique_ptr") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this5) #10
  store ptr %call, ptr %__na, align 8
  store i1 false, ptr %nrvo, align 1
  %0 = load ptr, ptr %__na, align 8
  %call6 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8allocateB8ne200100ERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef 1)
  %1 = load ptr, ptr %__na, align 8
  %call7 = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC1B8ne200100ERS7_b(ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %1, i1 noundef zeroext false) #10
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1B8ne200100ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(9) %ref.tmp) #10
  %2 = load ptr, ptr %__na, align 8
  %call9 = call noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEptB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #10
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %call9, i32 0, i32 1
  %call10 = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB8ne200100ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  %4 = load ptr, ptr %__args.addr2, align 8
  %5 = load ptr, ptr %__args.addr4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE9constructB8ne200100INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSG_IJEEEETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SM_DpOSN_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %call10, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont
  %call12 = call noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE11get_deleterB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #10
  %__value_constructed = getelementptr inbounds nuw %"class.std::__1::__tree_node_destructor", ptr %call12, i32 0, i32 1
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
  %call14 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #10
  br label %eh.resume

nrvo.unused:                                      ; preds = %invoke.cont11
  %call13 = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %agg.result) #10
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %invoke.cont11
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE16__insert_node_atEPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEERSE_SE_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__parent, ptr noundef nonnull align 8 dereferenceable(8) %__child, ptr noundef %__new_node) #1 {
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
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %0, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  %1 = load ptr, ptr %__new_node.addr, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %1, i32 0, i32 1
  store ptr null, ptr %__right_, align 8
  %2 = load ptr, ptr %__parent.addr, align 8
  %3 = load ptr, ptr %__new_node.addr, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %3, i32 0, i32 2
  store ptr %2, ptr %__parent_, align 8
  %4 = load ptr, ptr %__new_node.addr, align 8
  %5 = load ptr, ptr %__child.addr, align 8
  store ptr %4, ptr %5, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %6 = load ptr, ptr %call, align 8
  %__left_2 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_2, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %8 = load ptr, ptr %call3, align 8
  %__left_4 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %__left_4, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %9, ptr %call5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %__left_7 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %call6, i32 0, i32 0
  %10 = load ptr, ptr %__left_7, align 8
  %11 = load ptr, ptr %__child.addr, align 8
  %12 = load ptr, ptr %11, align 8
  call void @_ZNSt3__127__tree_balance_after_insertB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %10, ptr noundef %12) #10
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %13 = load i64, ptr %call8, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %call8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE7releaseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__ptr_2, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100ES6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B8ne200100ES6_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC1B8ne200100IS8_RbTnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSD_OSE_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC2B8ne200100IS8_RbTnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__root_ptrB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %call, i32 0, i32 0
  ret ptr %__left_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB8ne200100ERKiRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x, ptr noundef nonnull align 4 dereferenceable(8) %__y) #2 {
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
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__112__value_typeIiiE11__get_valueB8ne200100Ev(ptr noundef nonnull align 4 dereferenceable(8) %1)
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %call, i32 0, i32 0
  %call2 = call noundef zeroext i1 @_ZNKSt3__14lessIiEclB8ne200100ERKiS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %first)
  ret i1 %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB8ne200100ERKS2_RKi(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(8) %__x, ptr noundef nonnull align 4 dereferenceable(4) %__y) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__112__value_typeIiiE11__get_valueB8ne200100Ev(ptr noundef nonnull align 4 dereferenceable(8) %0)
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %call, i32 0, i32 0
  %1 = load ptr, ptr %__y.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNKSt3__14lessIiEclB8ne200100ERKiS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 4 dereferenceable(4) %first, ptr noundef nonnull align 4 dereferenceable(4) %1)
  ret i1 %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__14lessIiEclB8ne200100ERKiS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x, ptr noundef nonnull align 4 dereferenceable(4) %__y) #1 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__112__value_typeIiiE11__get_valueB8ne200100Ev(ptr noundef nonnull align 4 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cc_ = getelementptr inbounds nuw %"struct.std::__1::__value_type", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__17launderB8ne200100IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %__cc_) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__17launderB8ne200100IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__19__launderB8ne200100IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %0) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19__launderB8ne200100IKNS_4pairIKiiEEEEPT_S6_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8allocateB8ne200100ERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC1B8ne200100ERS7_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__na.addr = alloca ptr, align 8
  %__val.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__na, ptr %__na.addr, align 8
  %storedv = zext i1 %__val to i8
  store i8 %storedv, ptr %__val.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__na.addr, align 8
  %1 = load i8, ptr %__val.addr, align 1
  %loadedv = trunc i8 %1 to i1
  %call = call noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B8ne200100ERS7_b(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %loadedv) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC1B8ne200100ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2B8ne200100ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9) %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE9constructB8ne200100INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSG_IJEEEETnNS_9enable_ifIXsr15__has_constructIS7_PT_DpT0_EE5valueEiE4typeELi0EEEvRS7_SM_DpOSN_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #2 {
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
  call void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE9constructB8ne200100INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEptB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(9) ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE11get_deleterB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__deleter_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 1
  ret ptr %__deleter_
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8max_sizeB8ne200100IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS7_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100INS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEPT_NS_15__element_countEm(i64 noundef %1, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE8max_sizeB8ne200100IS7_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS7_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #1 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret i64 %call
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #6 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #10
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #10
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt20bad_array_new_length, ptr @_ZNSt20bad_array_new_lengthD1Ev) #13
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100INS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEPT_NS_15__element_countEm(i64 noundef %__n, i64 noundef %__align) #2 {
entry:
  %retval = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__size = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %0, 40
  store i64 %mul, ptr %__size, align 8
  %1 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %1) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__align.addr, align 8
  store i64 %2, ptr %__align_val, align 8
  %3 = load i64, ptr %__size, align 8
  %4 = load i64, ptr %__align_val, align 8
  %call1 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB8ne200100IJmSt11align_val_tEEEPvDpT_(i64 noundef %3, i64 noundef %4)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %__size, align 8
  %call2 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB8ne200100IJmEEEPvDpT_(i64 noundef %5)
  store ptr %call2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 461168601842738790
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB8ne200100IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #2 {
entry:
  %__args.addr = alloca i64, align 8
  %__args.addr2 = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %0, i64 noundef %1) #14
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %1) ]
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB8ne200100IJmEEEPvDpT_(i64 noundef %__args) #2 {
entry:
  %__args.addr = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %0) #14
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEC2B8ne200100ERS7_b(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 1 dereferenceable(1) %__na, i1 noundef zeroext %__val) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__na.addr = alloca ptr, align 8
  %__val.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__na, ptr %__na.addr, align 8
  %storedv = zext i1 %__val to i8
  store i8 %storedv, ptr %__val.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %__na_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__na.addr, align 8
  store ptr %0, ptr %__na_, align 8
  %__value_constructed = getelementptr inbounds nuw %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 1
  %1 = load i8, ptr %__val.addr, align 1
  %loadedv = trunc i8 %1 to i1
  %storedv2 = zext i1 %loadedv to i8
  store i8 %storedv2, ptr %__value_constructed, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEEC2B8ne200100ILb1EvEEPS5_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS9_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(9) %__d) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__d.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store ptr %__d, ptr %__d.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  %__deleter_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__d.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__deleter_, ptr align 8 %1, i64 16, i1 false)
  %__padding2_162_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 2
  %call = call noundef ptr @_ZNSt3__125__compressed_pair_paddingINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELb0EEC1Ev(ptr noundef nonnull align 1 dereferenceable(7) %__padding2_162_) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__125__compressed_pair_paddingINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELb0EEC1Ev(ptr noundef nonnull returned align 1 dereferenceable(7) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__125__compressed_pair_paddingINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELb0EEC2Ev(ptr noundef nonnull align 1 dereferenceable(7) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__125__compressed_pair_paddingINS_22__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEELb0EEC2Ev(ptr noundef nonnull returned align 1 dereferenceable(7) %this) unnamed_addr #1 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__padding_ = getelementptr inbounds nuw %"class.std::__1::__compressed_pair_padding.5", ptr %this1, i32 0, i32 0
  %arrayinit.end = getelementptr inbounds i8, ptr %__padding_, i64 7
  br label %arrayinit.body

arrayinit.body:                                   ; preds = %arrayinit.body, %entry
  %arrayinit.cur = phi ptr [ %__padding_, %entry ], [ %arrayinit.next, %arrayinit.body ]
  store i8 0, ptr %arrayinit.cur, align 1
  %arrayinit.next = getelementptr inbounds i8, ptr %arrayinit.cur, i64 1
  %arrayinit.done = icmp eq ptr %arrayinit.next, %arrayinit.end
  br i1 %arrayinit.done, label %arrayinit.end2, label %arrayinit.body

arrayinit.end2:                                   ; preds = %arrayinit.body
  %0 = load ptr, ptr %retval, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEE9constructB8ne200100INS_4pairIKiiEEJRKNS_21piecewise_construct_tENS_5tupleIJOiEEENSE_IJEEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 1 dereferenceable(1) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1, ptr noundef nonnull align 1 dereferenceable(1) %__args3) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  %__args.addr4 = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %agg.tmp6 = alloca %"class.std::__1::tuple", align 8
  %agg.tmp7 = alloca %"class.std::__1::tuple.4", align 1
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
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::tuple", ptr %agg.tmp6, i32 0, i32 0
  %coerce.dive8 = getelementptr inbounds nuw %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive9 = getelementptr inbounds nuw %"class.std::__1::__tuple_leaf", ptr %coerce.dive8, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive9, align 8
  %coerce.val.pi = ptrtoint ptr %4 to i64
  %call = call noundef ptr @_ZNSt3__14pairIKiiEC1B8ne200100IJOiEJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS6_IJDpT0_EEE(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %coerce.val.pi) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIKiiEC1B8ne200100IJOiEJEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS6_IJDpT0_EEE(ptr noundef nonnull returned align 4 dereferenceable(8) %this, i64 %__first_args.coerce) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
entry:
  %__pc = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %__first_args = alloca %"class.std::__1::tuple", align 8
  %__second_args = alloca %"class.std::__1::tuple.4", align 1
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %agg.tmp5 = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp6 = alloca %"struct.std::__1::__tuple_indices.7", align 1
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::tuple", ptr %__first_args, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds nuw %"struct.std::__1::__tuple_impl", ptr %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__tuple_leaf", ptr %coerce.dive1, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first_args.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive2, align 8
  store ptr %this, ptr %this.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__14pairIKiiEC1B8ne200100IJOiEJEJLm0EETpTnmJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull align 4 dereferenceable(8) %this4, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this4

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #11
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIKiiEC1B8ne200100IJOiEJEJLm0EETpTnmJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull returned align 4 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args) unnamed_addr #2 {
entry:
  %0 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %1 = alloca %"struct.std::__1::__tuple_indices", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.7", align 1
  %this.addr = alloca ptr, align 8
  %__first_args.addr = alloca ptr, align 8
  %__second_args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first_args, ptr %__first_args.addr, align 8
  store ptr %__second_args, ptr %__second_args.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %3 = load ptr, ptr %__first_args.addr, align 8
  %4 = load ptr, ptr %__second_args.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIKiiEC2B8ne200100IJOiEJEJLm0EETpTnmJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull align 4 dereferenceable(8) %this3, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  ret ptr %this3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIKiiEC2B8ne200100IJOiEJEJLm0EETpTnmJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNS6_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSF_IJXspT2_EEEE(ptr noundef nonnull returned align 4 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__first_args, ptr noundef nonnull align 1 dereferenceable(1) %__second_args) unnamed_addr #1 {
entry:
  %0 = alloca %"struct.std::__1::piecewise_construct_t", align 1
  %1 = alloca %"struct.std::__1::__tuple_indices", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.7", align 1
  %this.addr = alloca ptr, align 8
  %__first_args.addr = alloca ptr, align 8
  %__second_args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first_args, ptr %__first_args.addr, align 8
  store ptr %__second_args, ptr %__second_args.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this3, i32 0, i32 0
  %3 = load ptr, ptr %__first_args.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB8ne200100ILm0EJOiEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = load i32, ptr %call, align 4
  store i32 %4, ptr %first, align 4
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this3, i32 0, i32 1
  store i32 0, ptr %second, align 4
  ret ptr %this3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__13getB8ne200100ILm0EJOiEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERS6_(ptr noundef nonnull align 8 dereferenceable(8) %__t) #1 {
entry:
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %__base_ = getelementptr inbounds nuw %"class.std::__1::tuple", ptr %0, i32 0, i32 0
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__base_) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__value_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__127__tree_balance_after_insertB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %__root, ptr noundef %__x) #1 personality ptr @__gxx_personality_v0 {
entry:
  %__root.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  %__y35 = alloca ptr, align 8
  store ptr %__root, ptr %__root.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__root.addr, align 8
  %cmp = icmp eq ptr %0, %1
  %2 = load ptr, ptr %__x.addr, align 8
  %__is_black_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %2, i32 0, i32 3
  %storedv = zext i1 %cmp to i8
  store i8 %storedv, ptr %__is_black_, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end65, %entry
  %3 = load ptr, ptr %__x.addr, align 8
  %4 = load ptr, ptr %__root.addr, align 8
  %cmp1 = icmp ne ptr %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %__x.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %land.rhs
  %__is_black_2 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call, i32 0, i32 3
  %6 = load i8, ptr %__is_black_2, align 8
  %loadedv = trunc i8 %6 to i1
  %lnot = xor i1 %loadedv, true
  br label %land.end

land.end:                                         ; preds = %invoke.cont, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %lnot, %invoke.cont ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %__x.addr, align 8
  %call4 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %8)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %while.body
  %call5 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %call4) #10
  br i1 %call5, label %if.then, label %if.else34

if.then:                                          ; preds = %invoke.cont3
  %9 = load ptr, ptr %__x.addr, align 8
  %call7 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %9)
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %if.then
  %call9 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %call7)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call9, i32 0, i32 1
  %10 = load ptr, ptr %__right_, align 8
  store ptr %10, ptr %__y, align 8
  %11 = load ptr, ptr %__y, align 8
  %cmp10 = icmp ne ptr %11, null
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %invoke.cont8
  %12 = load ptr, ptr %__y, align 8
  %__is_black_11 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %12, i32 0, i32 3
  %13 = load i8, ptr %__is_black_11, align 8
  %loadedv12 = trunc i8 %13 to i1
  br i1 %loadedv12, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %__x.addr, align 8
  %call15 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %14)
          to label %invoke.cont14 unwind label %terminate.lpad

invoke.cont14:                                    ; preds = %if.then13
  store ptr %call15, ptr %__x.addr, align 8
  %15 = load ptr, ptr %__x.addr, align 8
  %__is_black_16 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %15, i32 0, i32 3
  store i8 1, ptr %__is_black_16, align 8
  %16 = load ptr, ptr %__x.addr, align 8
  %call18 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %16)
          to label %invoke.cont17 unwind label %terminate.lpad

invoke.cont17:                                    ; preds = %invoke.cont14
  store ptr %call18, ptr %__x.addr, align 8
  %17 = load ptr, ptr %__x.addr, align 8
  %18 = load ptr, ptr %__root.addr, align 8
  %cmp19 = icmp eq ptr %17, %18
  %19 = load ptr, ptr %__x.addr, align 8
  %__is_black_20 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %19, i32 0, i32 3
  %storedv21 = zext i1 %cmp19 to i8
  store i8 %storedv21, ptr %__is_black_20, align 8
  %20 = load ptr, ptr %__y, align 8
  %__is_black_22 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %20, i32 0, i32 3
  store i8 1, ptr %__is_black_22, align 8
  br label %if.end33

if.else:                                          ; preds = %land.lhs.true, %invoke.cont8
  %21 = load ptr, ptr %__x.addr, align 8
  %call23 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %21) #10
  br i1 %call23, label %if.end, label %if.then24

if.then24:                                        ; preds = %if.else
  %22 = load ptr, ptr %__x.addr, align 8
  %call26 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %22)
          to label %invoke.cont25 unwind label %terminate.lpad

invoke.cont25:                                    ; preds = %if.then24
  store ptr %call26, ptr %__x.addr, align 8
  %23 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__118__tree_left_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %23) #10
  br label %if.end

if.end:                                           ; preds = %invoke.cont25, %if.else
  %24 = load ptr, ptr %__x.addr, align 8
  %call28 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %24)
          to label %invoke.cont27 unwind label %terminate.lpad

invoke.cont27:                                    ; preds = %if.end
  store ptr %call28, ptr %__x.addr, align 8
  %25 = load ptr, ptr %__x.addr, align 8
  %__is_black_29 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %25, i32 0, i32 3
  store i8 1, ptr %__is_black_29, align 8
  %26 = load ptr, ptr %__x.addr, align 8
  %call31 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %26)
          to label %invoke.cont30 unwind label %terminate.lpad

invoke.cont30:                                    ; preds = %invoke.cont27
  store ptr %call31, ptr %__x.addr, align 8
  %27 = load ptr, ptr %__x.addr, align 8
  %__is_black_32 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %27, i32 0, i32 3
  store i8 0, ptr %__is_black_32, align 8
  %28 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__119__tree_right_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %28) #10
  br label %while.end

if.end33:                                         ; preds = %invoke.cont17
  br label %if.end65

if.else34:                                        ; preds = %invoke.cont3
  %29 = load ptr, ptr %__x.addr, align 8
  %call37 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %29)
          to label %invoke.cont36 unwind label %terminate.lpad

invoke.cont36:                                    ; preds = %if.else34
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call37, i32 0, i32 2
  %30 = load ptr, ptr %__parent_, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %__left_, align 8
  store ptr %31, ptr %__y35, align 8
  %32 = load ptr, ptr %__y35, align 8
  %cmp38 = icmp ne ptr %32, null
  br i1 %cmp38, label %land.lhs.true39, label %if.else52

land.lhs.true39:                                  ; preds = %invoke.cont36
  %33 = load ptr, ptr %__y35, align 8
  %__is_black_40 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %33, i32 0, i32 3
  %34 = load i8, ptr %__is_black_40, align 8
  %loadedv41 = trunc i8 %34 to i1
  br i1 %loadedv41, label %if.else52, label %if.then42

if.then42:                                        ; preds = %land.lhs.true39
  %35 = load ptr, ptr %__x.addr, align 8
  %call44 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %35)
          to label %invoke.cont43 unwind label %terminate.lpad

invoke.cont43:                                    ; preds = %if.then42
  store ptr %call44, ptr %__x.addr, align 8
  %36 = load ptr, ptr %__x.addr, align 8
  %__is_black_45 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %36, i32 0, i32 3
  store i8 1, ptr %__is_black_45, align 8
  %37 = load ptr, ptr %__x.addr, align 8
  %call47 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %37)
          to label %invoke.cont46 unwind label %terminate.lpad

invoke.cont46:                                    ; preds = %invoke.cont43
  store ptr %call47, ptr %__x.addr, align 8
  %38 = load ptr, ptr %__x.addr, align 8
  %39 = load ptr, ptr %__root.addr, align 8
  %cmp48 = icmp eq ptr %38, %39
  %40 = load ptr, ptr %__x.addr, align 8
  %__is_black_49 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %40, i32 0, i32 3
  %storedv50 = zext i1 %cmp48 to i8
  store i8 %storedv50, ptr %__is_black_49, align 8
  %41 = load ptr, ptr %__y35, align 8
  %__is_black_51 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %41, i32 0, i32 3
  store i8 1, ptr %__is_black_51, align 8
  br label %if.end64

if.else52:                                        ; preds = %land.lhs.true39, %invoke.cont36
  %42 = load ptr, ptr %__x.addr, align 8
  %call53 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %42) #10
  br i1 %call53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.else52
  %43 = load ptr, ptr %__x.addr, align 8
  %call56 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %43)
          to label %invoke.cont55 unwind label %terminate.lpad

invoke.cont55:                                    ; preds = %if.then54
  store ptr %call56, ptr %__x.addr, align 8
  %44 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__119__tree_right_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %44) #10
  br label %if.end57

if.end57:                                         ; preds = %invoke.cont55, %if.else52
  %45 = load ptr, ptr %__x.addr, align 8
  %call59 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %45)
          to label %invoke.cont58 unwind label %terminate.lpad

invoke.cont58:                                    ; preds = %if.end57
  store ptr %call59, ptr %__x.addr, align 8
  %46 = load ptr, ptr %__x.addr, align 8
  %__is_black_60 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %46, i32 0, i32 3
  store i8 1, ptr %__is_black_60, align 8
  %47 = load ptr, ptr %__x.addr, align 8
  %call62 = invoke noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %47)
          to label %invoke.cont61 unwind label %terminate.lpad

invoke.cont61:                                    ; preds = %invoke.cont58
  store ptr %call62, ptr %__x.addr, align 8
  %48 = load ptr, ptr %__x.addr, align 8
  %__is_black_63 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %48, i32 0, i32 3
  store i8 0, ptr %__is_black_63, align 8
  %49 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__118__tree_left_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %49) #10
  br label %while.end

if.end64:                                         ; preds = %invoke.cont46
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end33
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %invoke.cont61, %invoke.cont30, %land.end
  ret void

terminate.lpad:                                   ; preds = %invoke.cont58, %if.end57, %if.then54, %invoke.cont43, %if.then42, %if.else34, %invoke.cont27, %if.end, %if.then24, %invoke.cont14, %if.then13, %invoke.cont6, %if.then, %while.body, %land.rhs
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__tree", ptr %this1, i32 0, i32 2
  ret ptr %__size_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__parent_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %__x) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %__parent_, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__left_, align 8
  %cmp = icmp eq ptr %0, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__118__tree_left_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %__x) #1 personality ptr @__gxx_personality_v0 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__right_, align 8
  store ptr %1, ptr %__y, align 8
  %2 = load ptr, ptr %__y, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__left_, align 8
  %4 = load ptr, ptr %__x.addr, align 8
  %__right_1 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %4, i32 0, i32 1
  store ptr %3, ptr %__right_1, align 8
  %5 = load ptr, ptr %__x.addr, align 8
  %__right_2 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %__right_2, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %__x.addr, align 8
  %__right_3 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %__right_3, align 8
  %9 = load ptr, ptr %__x.addr, align 8
  invoke void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB8ne200100EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef %9)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %10 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %__parent_, align 8
  %12 = load ptr, ptr %__y, align 8
  %__parent_4 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %12, i32 0, i32 2
  store ptr %11, ptr %__parent_4, align 8
  %13 = load ptr, ptr %__x.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %13) #10
  br i1 %call, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %__y, align 8
  %15 = load ptr, ptr %__x.addr, align 8
  %__parent_6 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %__parent_6, align 8
  %__left_7 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %16, i32 0, i32 0
  store ptr %14, ptr %__left_7, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %__y, align 8
  %18 = load ptr, ptr %__x.addr, align 8
  %call8 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %18)
  %__right_9 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call8, i32 0, i32 1
  store ptr %17, ptr %__right_9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %19 = load ptr, ptr %__x.addr, align 8
  %20 = load ptr, ptr %__y, align 8
  %__left_11 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %20, i32 0, i32 0
  store ptr %19, ptr %__left_11, align 8
  %21 = load ptr, ptr %__x.addr, align 8
  %22 = load ptr, ptr %__y, align 8
  invoke void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB8ne200100EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef %22)
          to label %invoke.cont12 unwind label %terminate.lpad

invoke.cont12:                                    ; preds = %if.end10
  ret void

terminate.lpad:                                   ; preds = %if.end10, %if.then
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__tree_right_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %__x) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__left_, align 8
  store ptr %1, ptr %__y, align 8
  %2 = load ptr, ptr %__y, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__right_, align 8
  %4 = load ptr, ptr %__x.addr, align 8
  %__left_1 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %4, i32 0, i32 0
  store ptr %3, ptr %__left_1, align 8
  %5 = load ptr, ptr %__x.addr, align 8
  %__left_2 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %__left_2, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %__x.addr, align 8
  %__left_3 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %__left_3, align 8
  %9 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB8ne200100EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %__parent_, align 8
  %12 = load ptr, ptr %__y, align 8
  %__parent_4 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %12, i32 0, i32 2
  store ptr %11, ptr %__parent_4, align 8
  %13 = load ptr, ptr %__x.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %13) #10
  br i1 %call, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %__y, align 8
  %15 = load ptr, ptr %__x.addr, align 8
  %__parent_6 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %__parent_6, align 8
  %__left_7 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %16, i32 0, i32 0
  store ptr %14, ptr %__left_7, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %__y, align 8
  %18 = load ptr, ptr %__x.addr, align 8
  %call8 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %18)
  %__right_9 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call8, i32 0, i32 1
  store ptr %17, ptr %__right_9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %19 = load ptr, ptr %__x.addr, align 8
  %20 = load ptr, ptr %__y, align 8
  %__right_11 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %20, i32 0, i32 1
  store ptr %19, ptr %__right_11, align 8
  %21 = load ptr, ptr %__x.addr, align 8
  %22 = load ptr, ptr %__y, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB8ne200100EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef %22)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB8ne200100EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %this, ptr noundef %__p) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %this1, i32 0, i32 2
  store ptr %0, ptr %__parent_, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5resetB8ne200100EPS5_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_11__tree_nodeINS_12__value_typeIiiEEPvEENS_22__tree_node_destructorINS_9allocatorIS5_EEEEE5resetB8ne200100EPS5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  store ptr %1, ptr %__ptr_2, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__deleter_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEclB8ne200100EPS6_(ptr noundef nonnull align 8 dereferenceable(9) %__deleter_, ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__122__tree_node_destructorINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEEclB8ne200100EPS6_(ptr noundef nonnull align 8 dereferenceable(9) %this, ptr noundef %__p) #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_constructed = getelementptr inbounds nuw %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 1
  %0 = load i8, ptr %__value_constructed, align 8
  %loadedv = trunc i8 %0 to i1
  br i1 %loadedv, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__na_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__na_, align 8
  %2 = load ptr, ptr %__p.addr, align 8
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %2, i32 0, i32 1
  %call = invoke noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB8ne200100ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__value_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB8ne200100INS_4pairIKiiEEvTnNS_9enable_ifIXntsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SF_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  br label %if.end

if.end:                                           ; preds = %invoke.cont2, %entry
  %3 = load ptr, ptr %__p.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %__na_4 = getelementptr inbounds nuw %"class.std::__1::__tree_node_destructor", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__na_4, align 8
  %5 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB8ne200100ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, i64 noundef 1) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %if.then
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B8ne200100ES6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEbEC2B8ne200100IS8_RbTnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOSD_OSE_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 1 dereferenceable(1) %__u2) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair.3", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %first, ptr align 8 %0, i64 8, i1 false)
  %second = getelementptr inbounds nuw %"struct.std::__1::pair.3", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__u2.addr, align 8
  %2 = load i8, ptr %1, align 1
  %loadedv = trunc i8 %2 to i1
  %storedv = zext i1 %loadedv to i8
  store i8 %storedv, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__15tupleIJOiEEC1B8ne200100IJiETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS2_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOS8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__15tupleIJOiEEC2B8ne200100IJiETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS2_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOS8_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__15tupleIJOiEEC2B8ne200100IJiETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS2_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOS8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp2 = alloca %"struct.std::__1::__tuple_types", align 1
  %agg.tmp3 = alloca %"struct.std::__1::__tuple_indices.7", align 1
  %agg.tmp4 = alloca %"struct.std::__1::__tuple_types.8", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__base_ = getelementptr inbounds nuw %"class.std::__1::tuple", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC1B8ne200100IJLm0EEJS3_ETpTnmJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull align 8 dereferenceable(8) %__base_, ptr noundef nonnull align 4 dereferenceable(4) %0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC1B8ne200100IJLm0EEJS3_ETpTnmJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.7", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.8", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC2B8ne200100IJLm0EEJS3_ETpTnmJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull align 8 dereferenceable(8) %this4, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  ret ptr %this4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJOiEEC2B8ne200100IJLm0EEJS3_ETpTnmJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS7_IJDpT2_EEEDpOT3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__u) unnamed_addr #1 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.7", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.8", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this4 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EEC2B8ne200100IiTnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXntu9__is_sameu14__remove_cvrefIT_ES2_EEEENS_16is_constructibleIS1_JS6_EEEEE5valueEiE4typeELi0EEEOS6_(ptr noundef nonnull align 8 dereferenceable(8) %this4, ptr noundef nonnull align 4 dereferenceable(4) %4) #10
  ret ptr %this4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0EOiLb0EEC2B8ne200100IiTnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXntu9__is_sameu14__remove_cvrefIT_ES2_EEEENS_16is_constructibleIS1_JS6_EEEEE5valueEiE4typeELi0EEEOS6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__t.addr, align 8
  store ptr %0, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_12__value_typeIiiEEE10pointer_toB8ne200100ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %__r) #1 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4findIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v) #2 {
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
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %call2 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %call3 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE13__lower_boundIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SF_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISD_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %call, ptr noundef %call2)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call3 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call4 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %ref.tmp, i32 0, i32 0
  %coerce.val.ip6 = inttoptr i64 %call4 to ptr
  store ptr %coerce.val.ip6, ptr %coerce.dive5, align 8
  %call7 = call noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  br i1 %call7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call8 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %1 = load ptr, ptr %__v.addr, align 8
  %call9 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p)
  %call10 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB8ne200100ERKiRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call8, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(8) %call9)
  %lnot = xor i1 %call10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__p, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %land.end
  %call11 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %coerce.dive12 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip13 = inttoptr i64 %call11 to ptr
  store ptr %coerce.val.ip13, ptr %coerce.dive12, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %coerce.dive14 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive14, align 8
  %coerce.val.pi = ptrtoint ptr %3 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC1B8ne200100ES8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__i.coerce) unnamed_addr #1 {
entry:
  %__i = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__i, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC2B8ne200100ES8_(ptr noundef nonnull align 8 dereferenceable(8) %this1, i64 %coerce.val.pi) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE13__lower_boundIiEENS_15__tree_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SF_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISD_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v, ptr noundef %__root, ptr noundef %__result) #1 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10value_compB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %1 = load ptr, ptr %__root.addr, align 8
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__v.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNKSt3__119__map_value_compareIiNS_12__value_typeIiiEENS_4lessIiEELb1EEclB8ne200100ERKS2_RKi(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef nonnull align 4 dereferenceable(8) %__value_, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %__root.addr, align 8
  store ptr %3, ptr %__result.addr, align 8
  %4 = load ptr, ptr %__root.addr, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %__left_, align 8
  store ptr %5, ptr %__root.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %__root.addr, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %__right_, align 8
  store ptr %7, ptr %__root.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %__result.addr, align 8
  %call3 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %8) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %9 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %9 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %call2 = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %call) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B8ne200100EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B8ne200100EPNS_15__tree_end_nodeIPNS_16__tree_node_baseIS4_EEEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEES9_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS3_PvEElEEEC2B8ne200100ES8_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__i.coerce) unnamed_addr #1 {
entry:
  %__i = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__map_iterator", ptr %this1, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i_, ptr align 8 %__i, i64 8, i1 false)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5eraseENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEE(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 %__p.coerce) #2 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %__p = alloca %"class.std::__1::__tree_const_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__np = alloca ptr, align 8
  %__na = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_const_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p)
  store ptr %call, ptr %__np, align 8
  %0 = load ptr, ptr %__np, align 8
  %call2 = call i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE21__remove_node_pointerEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #10
  %coerce.dive3 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip4 = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip4, ptr %coerce.dive3, align 8
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__node_allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %call5, ptr %__na, align 8
  %1 = load ptr, ptr %__na, align 8
  %call6 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p)
  %call7 = call noundef ptr @_ZNSt3__122__tree_key_value_typesINS_12__value_typeIiiEEE9__get_ptrB8ne200100ERS2_(ptr noundef nonnull align 4 dereferenceable(8) %call6)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE7destroyB8ne200100INS_4pairIKiiEEvTnNS_9enable_ifIXntsr13__has_destroyIS7_PT_EE5valueEiE4typeELi0EEEvRS7_SF_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call7)
  %2 = load ptr, ptr %__na, align 8
  %3 = load ptr, ptr %__np, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeIiiEEPvEEEEE10deallocateB8ne200100ERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i64 noundef 1) #10
  %coerce.dive8 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive8, align 8
  %coerce.val.pi = ptrtoint ptr %4 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__p.coerce) unnamed_addr #1 {
entry:
  %__p = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B8ne200100ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull align 8 dereferenceable(8) %this1, i64 %coerce.val.pi) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE21__remove_node_pointerEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__ptr) #1 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__ptr.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__ptr.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC1B8ne200100ES6_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %0) #10
  %call2 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %retval)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %1 = load ptr, ptr %call3, align 8
  %2 = load ptr, ptr %__ptr.addr, align 8
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_, align 8
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %3, ptr %call4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %invoke.cont
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %4 = load i64, ptr %call5, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %call5, align 8
  %call6 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %call6, i32 0, i32 0
  %5 = load ptr, ptr %__left_, align 8
  %6 = load ptr, ptr %__ptr.addr, align 8
  call void @_ZNSt3__113__tree_removeB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %5, ptr noundef %6) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %retval, i32 0, i32 0
  %7 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %7 to i64
  ret i64 %coerce.val.pi

terminate.lpad:                                   ; preds = %entry
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  call void @__clang_call_terminate(ptr %9) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElE8__get_npB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  %__value_ = getelementptr inbounds nuw %"class.std::__1::__tree_node", ptr %call, i32 0, i32 1
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115__tree_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  %call = call noundef ptr @_ZNSt3__116__tree_next_iterB8ne200100IPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEES5_EET_T0_(ptr noundef %0) #10
  %__ptr_2 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %this1, i32 0, i32 0
  store ptr %call, ptr %__ptr_2, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__113__tree_removeB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %__root, ptr noundef %__z) #1 {
entry:
  %__root.addr = alloca ptr, align 8
  %__z.addr = alloca ptr, align 8
  %__y = alloca ptr, align 8
  %__x = alloca ptr, align 8
  %__w = alloca ptr, align 8
  %__removed_black = alloca i8, align 1
  store ptr %__root, ptr %__root.addr, align 8
  store ptr %__z, ptr %__z.addr, align 8
  %0 = load ptr, ptr %__z.addr, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__left_, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %__z.addr, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__right_, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %__z.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load ptr, ptr %__z.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__tree_nextB8ne200100IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %5) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ %call, %cond.false ]
  store ptr %cond, ptr %__y, align 8
  %6 = load ptr, ptr %__y, align 8
  %__left_2 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__left_2, align 8
  %cmp3 = icmp ne ptr %7, null
  br i1 %cmp3, label %cond.true4, label %cond.false6

cond.true4:                                       ; preds = %cond.end
  %8 = load ptr, ptr %__y, align 8
  %__left_5 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %__left_5, align 8
  br label %cond.end8

cond.false6:                                      ; preds = %cond.end
  %10 = load ptr, ptr %__y, align 8
  %__right_7 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %__right_7, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.true4
  %cond9 = phi ptr [ %9, %cond.true4 ], [ %11, %cond.false6 ]
  store ptr %cond9, ptr %__x, align 8
  store ptr null, ptr %__w, align 8
  %12 = load ptr, ptr %__x, align 8
  %cmp10 = icmp ne ptr %12, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end8
  %13 = load ptr, ptr %__y, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %__parent_, align 8
  %15 = load ptr, ptr %__x, align 8
  %__parent_11 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %15, i32 0, i32 2
  store ptr %14, ptr %__parent_11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end8
  %16 = load ptr, ptr %__y, align 8
  %call12 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %16) #10
  br i1 %call12, label %if.then13, label %if.else21

if.then13:                                        ; preds = %if.end
  %17 = load ptr, ptr %__x, align 8
  %18 = load ptr, ptr %__y, align 8
  %__parent_14 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %__parent_14, align 8
  %__left_15 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %19, i32 0, i32 0
  store ptr %17, ptr %__left_15, align 8
  %20 = load ptr, ptr %__y, align 8
  %21 = load ptr, ptr %__root.addr, align 8
  %cmp16 = icmp ne ptr %20, %21
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then13
  %22 = load ptr, ptr %__y, align 8
  %call18 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %22)
  %__right_19 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call18, i32 0, i32 1
  %23 = load ptr, ptr %__right_19, align 8
  store ptr %23, ptr %__w, align 8
  br label %if.end20

if.else:                                          ; preds = %if.then13
  %24 = load ptr, ptr %__x, align 8
  store ptr %24, ptr %__root.addr, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  br label %if.end26

if.else21:                                        ; preds = %if.end
  %25 = load ptr, ptr %__x, align 8
  %26 = load ptr, ptr %__y, align 8
  %call22 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %26)
  %__right_23 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call22, i32 0, i32 1
  store ptr %25, ptr %__right_23, align 8
  %27 = load ptr, ptr %__y, align 8
  %__parent_24 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %__parent_24, align 8
  %__left_25 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %__left_25, align 8
  store ptr %29, ptr %__w, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.end20
  %30 = load ptr, ptr %__y, align 8
  %__is_black_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %30, i32 0, i32 3
  %31 = load i8, ptr %__is_black_, align 8
  %loadedv = trunc i8 %31 to i1
  %storedv = zext i1 %loadedv to i8
  store i8 %storedv, ptr %__removed_black, align 1
  %32 = load ptr, ptr %__y, align 8
  %33 = load ptr, ptr %__z.addr, align 8
  %cmp27 = icmp ne ptr %32, %33
  br i1 %cmp27, label %if.then28, label %if.end56

if.then28:                                        ; preds = %if.end26
  %34 = load ptr, ptr %__z.addr, align 8
  %__parent_29 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %__parent_29, align 8
  %36 = load ptr, ptr %__y, align 8
  %__parent_30 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %36, i32 0, i32 2
  store ptr %35, ptr %__parent_30, align 8
  %37 = load ptr, ptr %__z.addr, align 8
  %call31 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %37) #10
  br i1 %call31, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.then28
  %38 = load ptr, ptr %__y, align 8
  %39 = load ptr, ptr %__y, align 8
  %__parent_33 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %__parent_33, align 8
  %__left_34 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %40, i32 0, i32 0
  store ptr %38, ptr %__left_34, align 8
  br label %if.end38

if.else35:                                        ; preds = %if.then28
  %41 = load ptr, ptr %__y, align 8
  %42 = load ptr, ptr %__y, align 8
  %call36 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %42)
  %__right_37 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call36, i32 0, i32 1
  store ptr %41, ptr %__right_37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then32
  %43 = load ptr, ptr %__z.addr, align 8
  %__left_39 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %__left_39, align 8
  %45 = load ptr, ptr %__y, align 8
  %__left_40 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %45, i32 0, i32 0
  store ptr %44, ptr %__left_40, align 8
  %46 = load ptr, ptr %__y, align 8
  %__left_41 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %__left_41, align 8
  %48 = load ptr, ptr %__y, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB8ne200100EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %47, ptr noundef %48)
  %49 = load ptr, ptr %__z.addr, align 8
  %__right_42 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %__right_42, align 8
  %51 = load ptr, ptr %__y, align 8
  %__right_43 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %51, i32 0, i32 1
  store ptr %50, ptr %__right_43, align 8
  %52 = load ptr, ptr %__y, align 8
  %__right_44 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %__right_44, align 8
  %cmp45 = icmp ne ptr %53, null
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end38
  %54 = load ptr, ptr %__y, align 8
  %__right_47 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %__right_47, align 8
  %56 = load ptr, ptr %__y, align 8
  call void @_ZNSt3__116__tree_node_baseIPvE12__set_parentB8ne200100EPS2_(ptr noundef nonnull align 8 dereferenceable(25) %55, ptr noundef %56)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end38
  %57 = load ptr, ptr %__z.addr, align 8
  %__is_black_49 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %57, i32 0, i32 3
  %58 = load i8, ptr %__is_black_49, align 8
  %loadedv50 = trunc i8 %58 to i1
  %59 = load ptr, ptr %__y, align 8
  %__is_black_51 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %59, i32 0, i32 3
  %storedv52 = zext i1 %loadedv50 to i8
  store i8 %storedv52, ptr %__is_black_51, align 8
  %60 = load ptr, ptr %__root.addr, align 8
  %61 = load ptr, ptr %__z.addr, align 8
  %cmp53 = icmp eq ptr %60, %61
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end48
  %62 = load ptr, ptr %__y, align 8
  store ptr %62, ptr %__root.addr, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end48
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end26
  %63 = load i8, ptr %__removed_black, align 1
  %loadedv57 = trunc i8 %63 to i1
  br i1 %loadedv57, label %land.lhs.true, label %if.end209

land.lhs.true:                                    ; preds = %if.end56
  %64 = load ptr, ptr %__root.addr, align 8
  %cmp58 = icmp ne ptr %64, null
  br i1 %cmp58, label %if.then59, label %if.end209

if.then59:                                        ; preds = %land.lhs.true
  %65 = load ptr, ptr %__x, align 8
  %cmp60 = icmp ne ptr %65, null
  br i1 %cmp60, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.then59
  %66 = load ptr, ptr %__x, align 8
  %__is_black_62 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %66, i32 0, i32 3
  store i8 1, ptr %__is_black_62, align 8
  br label %if.end208

if.else63:                                        ; preds = %if.then59
  br label %while.cond

while.cond:                                       ; preds = %if.end207, %if.else63
  br label %while.body

while.body:                                       ; preds = %while.cond
  %67 = load ptr, ptr %__w, align 8
  %call64 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %67) #10
  br i1 %call64, label %if.else136, label %if.then65

if.then65:                                        ; preds = %while.body
  %68 = load ptr, ptr %__w, align 8
  %__is_black_66 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %68, i32 0, i32 3
  %69 = load i8, ptr %__is_black_66, align 8
  %loadedv67 = trunc i8 %69 to i1
  br i1 %loadedv67, label %if.end79, label %if.then68

if.then68:                                        ; preds = %if.then65
  %70 = load ptr, ptr %__w, align 8
  %__is_black_69 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %70, i32 0, i32 3
  store i8 1, ptr %__is_black_69, align 8
  %71 = load ptr, ptr %__w, align 8
  %call70 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %71)
  %__is_black_71 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call70, i32 0, i32 3
  store i8 0, ptr %__is_black_71, align 8
  %72 = load ptr, ptr %__w, align 8
  %call72 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %72)
  call void @_ZNSt3__118__tree_left_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call72) #10
  %73 = load ptr, ptr %__root.addr, align 8
  %74 = load ptr, ptr %__w, align 8
  %__left_73 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %__left_73, align 8
  %cmp74 = icmp eq ptr %73, %75
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then68
  %76 = load ptr, ptr %__w, align 8
  store ptr %76, ptr %__root.addr, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then68
  %77 = load ptr, ptr %__w, align 8
  %__left_77 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %__left_77, align 8
  %__right_78 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %__right_78, align 8
  store ptr %79, ptr %__w, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.end76, %if.then65
  %80 = load ptr, ptr %__w, align 8
  %__left_80 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %__left_80, align 8
  %cmp81 = icmp eq ptr %81, null
  br i1 %cmp81, label %land.lhs.true86, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %if.end79
  %82 = load ptr, ptr %__w, align 8
  %__left_83 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %__left_83, align 8
  %__is_black_84 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %83, i32 0, i32 3
  %84 = load i8, ptr %__is_black_84, align 8
  %loadedv85 = trunc i8 %84 to i1
  br i1 %loadedv85, label %land.lhs.true86, label %if.else112

land.lhs.true86:                                  ; preds = %lor.lhs.false82, %if.end79
  %85 = load ptr, ptr %__w, align 8
  %__right_87 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %85, i32 0, i32 1
  %86 = load ptr, ptr %__right_87, align 8
  %cmp88 = icmp eq ptr %86, null
  br i1 %cmp88, label %if.then93, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %land.lhs.true86
  %87 = load ptr, ptr %__w, align 8
  %__right_90 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %87, i32 0, i32 1
  %88 = load ptr, ptr %__right_90, align 8
  %__is_black_91 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %88, i32 0, i32 3
  %89 = load i8, ptr %__is_black_91, align 8
  %loadedv92 = trunc i8 %89 to i1
  br i1 %loadedv92, label %if.then93, label %if.else112

if.then93:                                        ; preds = %lor.lhs.false89, %land.lhs.true86
  %90 = load ptr, ptr %__w, align 8
  %__is_black_94 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %90, i32 0, i32 3
  store i8 0, ptr %__is_black_94, align 8
  %91 = load ptr, ptr %__w, align 8
  %call95 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %91)
  store ptr %call95, ptr %__x, align 8
  %92 = load ptr, ptr %__x, align 8
  %93 = load ptr, ptr %__root.addr, align 8
  %cmp96 = icmp eq ptr %92, %93
  br i1 %cmp96, label %if.then100, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.then93
  %94 = load ptr, ptr %__x, align 8
  %__is_black_98 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %94, i32 0, i32 3
  %95 = load i8, ptr %__is_black_98, align 8
  %loadedv99 = trunc i8 %95 to i1
  br i1 %loadedv99, label %if.end102, label %if.then100

if.then100:                                       ; preds = %lor.lhs.false97, %if.then93
  %96 = load ptr, ptr %__x, align 8
  %__is_black_101 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %96, i32 0, i32 3
  store i8 1, ptr %__is_black_101, align 8
  br label %while.end

if.end102:                                        ; preds = %lor.lhs.false97
  %97 = load ptr, ptr %__x, align 8
  %call103 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %97) #10
  br i1 %call103, label %cond.true104, label %cond.false107

cond.true104:                                     ; preds = %if.end102
  %98 = load ptr, ptr %__x, align 8
  %call105 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %98)
  %__right_106 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call105, i32 0, i32 1
  %99 = load ptr, ptr %__right_106, align 8
  br label %cond.end110

cond.false107:                                    ; preds = %if.end102
  %100 = load ptr, ptr %__x, align 8
  %__parent_108 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %__parent_108, align 8
  %__left_109 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %__left_109, align 8
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false107, %cond.true104
  %cond111 = phi ptr [ %99, %cond.true104 ], [ %102, %cond.false107 ]
  store ptr %cond111, ptr %__w, align 8
  br label %if.end135

if.else112:                                       ; preds = %lor.lhs.false89, %lor.lhs.false82
  %103 = load ptr, ptr %__w, align 8
  %__right_113 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %103, i32 0, i32 1
  %104 = load ptr, ptr %__right_113, align 8
  %cmp114 = icmp eq ptr %104, null
  br i1 %cmp114, label %if.then119, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %if.else112
  %105 = load ptr, ptr %__w, align 8
  %__right_116 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %__right_116, align 8
  %__is_black_117 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %106, i32 0, i32 3
  %107 = load i8, ptr %__is_black_117, align 8
  %loadedv118 = trunc i8 %107 to i1
  br i1 %loadedv118, label %if.then119, label %if.end124

if.then119:                                       ; preds = %lor.lhs.false115, %if.else112
  %108 = load ptr, ptr %__w, align 8
  %__left_120 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %__left_120, align 8
  %__is_black_121 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %109, i32 0, i32 3
  store i8 1, ptr %__is_black_121, align 8
  %110 = load ptr, ptr %__w, align 8
  %__is_black_122 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %110, i32 0, i32 3
  store i8 0, ptr %__is_black_122, align 8
  %111 = load ptr, ptr %__w, align 8
  call void @_ZNSt3__119__tree_right_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %111) #10
  %112 = load ptr, ptr %__w, align 8
  %call123 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %112)
  store ptr %call123, ptr %__w, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %lor.lhs.false115
  %113 = load ptr, ptr %__w, align 8
  %call125 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %113)
  %__is_black_126 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call125, i32 0, i32 3
  %114 = load i8, ptr %__is_black_126, align 8
  %loadedv127 = trunc i8 %114 to i1
  %115 = load ptr, ptr %__w, align 8
  %__is_black_128 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %115, i32 0, i32 3
  %storedv129 = zext i1 %loadedv127 to i8
  store i8 %storedv129, ptr %__is_black_128, align 8
  %116 = load ptr, ptr %__w, align 8
  %call130 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %116)
  %__is_black_131 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call130, i32 0, i32 3
  store i8 1, ptr %__is_black_131, align 8
  %117 = load ptr, ptr %__w, align 8
  %__right_132 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %117, i32 0, i32 1
  %118 = load ptr, ptr %__right_132, align 8
  %__is_black_133 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %118, i32 0, i32 3
  store i8 1, ptr %__is_black_133, align 8
  %119 = load ptr, ptr %__w, align 8
  %call134 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %119)
  call void @_ZNSt3__118__tree_left_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call134) #10
  br label %while.end

if.end135:                                        ; preds = %cond.end110
  br label %if.end207

if.else136:                                       ; preds = %while.body
  %120 = load ptr, ptr %__w, align 8
  %__is_black_137 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %120, i32 0, i32 3
  %121 = load i8, ptr %__is_black_137, align 8
  %loadedv138 = trunc i8 %121 to i1
  br i1 %loadedv138, label %if.end150, label %if.then139

if.then139:                                       ; preds = %if.else136
  %122 = load ptr, ptr %__w, align 8
  %__is_black_140 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %122, i32 0, i32 3
  store i8 1, ptr %__is_black_140, align 8
  %123 = load ptr, ptr %__w, align 8
  %call141 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %123)
  %__is_black_142 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call141, i32 0, i32 3
  store i8 0, ptr %__is_black_142, align 8
  %124 = load ptr, ptr %__w, align 8
  %call143 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %124)
  call void @_ZNSt3__119__tree_right_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call143) #10
  %125 = load ptr, ptr %__root.addr, align 8
  %126 = load ptr, ptr %__w, align 8
  %__right_144 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %126, i32 0, i32 1
  %127 = load ptr, ptr %__right_144, align 8
  %cmp145 = icmp eq ptr %125, %127
  br i1 %cmp145, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.then139
  %128 = load ptr, ptr %__w, align 8
  store ptr %128, ptr %__root.addr, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.then139
  %129 = load ptr, ptr %__w, align 8
  %__right_148 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %129, i32 0, i32 1
  %130 = load ptr, ptr %__right_148, align 8
  %__left_149 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %__left_149, align 8
  store ptr %131, ptr %__w, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.end147, %if.else136
  %132 = load ptr, ptr %__w, align 8
  %__left_151 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %__left_151, align 8
  %cmp152 = icmp eq ptr %133, null
  br i1 %cmp152, label %land.lhs.true157, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %if.end150
  %134 = load ptr, ptr %__w, align 8
  %__left_154 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %__left_154, align 8
  %__is_black_155 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %135, i32 0, i32 3
  %136 = load i8, ptr %__is_black_155, align 8
  %loadedv156 = trunc i8 %136 to i1
  br i1 %loadedv156, label %land.lhs.true157, label %if.else183

land.lhs.true157:                                 ; preds = %lor.lhs.false153, %if.end150
  %137 = load ptr, ptr %__w, align 8
  %__right_158 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %137, i32 0, i32 1
  %138 = load ptr, ptr %__right_158, align 8
  %cmp159 = icmp eq ptr %138, null
  br i1 %cmp159, label %if.then164, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %land.lhs.true157
  %139 = load ptr, ptr %__w, align 8
  %__right_161 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %139, i32 0, i32 1
  %140 = load ptr, ptr %__right_161, align 8
  %__is_black_162 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %140, i32 0, i32 3
  %141 = load i8, ptr %__is_black_162, align 8
  %loadedv163 = trunc i8 %141 to i1
  br i1 %loadedv163, label %if.then164, label %if.else183

if.then164:                                       ; preds = %lor.lhs.false160, %land.lhs.true157
  %142 = load ptr, ptr %__w, align 8
  %__is_black_165 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %142, i32 0, i32 3
  store i8 0, ptr %__is_black_165, align 8
  %143 = load ptr, ptr %__w, align 8
  %call166 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %143)
  store ptr %call166, ptr %__x, align 8
  %144 = load ptr, ptr %__x, align 8
  %__is_black_167 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %144, i32 0, i32 3
  %145 = load i8, ptr %__is_black_167, align 8
  %loadedv168 = trunc i8 %145 to i1
  br i1 %loadedv168, label %lor.lhs.false169, label %if.then171

lor.lhs.false169:                                 ; preds = %if.then164
  %146 = load ptr, ptr %__x, align 8
  %147 = load ptr, ptr %__root.addr, align 8
  %cmp170 = icmp eq ptr %146, %147
  br i1 %cmp170, label %if.then171, label %if.end173

if.then171:                                       ; preds = %lor.lhs.false169, %if.then164
  %148 = load ptr, ptr %__x, align 8
  %__is_black_172 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %148, i32 0, i32 3
  store i8 1, ptr %__is_black_172, align 8
  br label %while.end

if.end173:                                        ; preds = %lor.lhs.false169
  %149 = load ptr, ptr %__x, align 8
  %call174 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %149) #10
  br i1 %call174, label %cond.true175, label %cond.false178

cond.true175:                                     ; preds = %if.end173
  %150 = load ptr, ptr %__x, align 8
  %call176 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %150)
  %__right_177 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call176, i32 0, i32 1
  %151 = load ptr, ptr %__right_177, align 8
  br label %cond.end181

cond.false178:                                    ; preds = %if.end173
  %152 = load ptr, ptr %__x, align 8
  %__parent_179 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %152, i32 0, i32 2
  %153 = load ptr, ptr %__parent_179, align 8
  %__left_180 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %153, i32 0, i32 0
  %154 = load ptr, ptr %__left_180, align 8
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false178, %cond.true175
  %cond182 = phi ptr [ %151, %cond.true175 ], [ %154, %cond.false178 ]
  store ptr %cond182, ptr %__w, align 8
  br label %if.end206

if.else183:                                       ; preds = %lor.lhs.false160, %lor.lhs.false153
  %155 = load ptr, ptr %__w, align 8
  %__left_184 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %__left_184, align 8
  %cmp185 = icmp eq ptr %156, null
  br i1 %cmp185, label %if.then190, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %if.else183
  %157 = load ptr, ptr %__w, align 8
  %__left_187 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %157, i32 0, i32 0
  %158 = load ptr, ptr %__left_187, align 8
  %__is_black_188 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %158, i32 0, i32 3
  %159 = load i8, ptr %__is_black_188, align 8
  %loadedv189 = trunc i8 %159 to i1
  br i1 %loadedv189, label %if.then190, label %if.end195

if.then190:                                       ; preds = %lor.lhs.false186, %if.else183
  %160 = load ptr, ptr %__w, align 8
  %__right_191 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %160, i32 0, i32 1
  %161 = load ptr, ptr %__right_191, align 8
  %__is_black_192 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %161, i32 0, i32 3
  store i8 1, ptr %__is_black_192, align 8
  %162 = load ptr, ptr %__w, align 8
  %__is_black_193 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %162, i32 0, i32 3
  store i8 0, ptr %__is_black_193, align 8
  %163 = load ptr, ptr %__w, align 8
  call void @_ZNSt3__118__tree_left_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %163) #10
  %164 = load ptr, ptr %__w, align 8
  %call194 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %164)
  store ptr %call194, ptr %__w, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then190, %lor.lhs.false186
  %165 = load ptr, ptr %__w, align 8
  %call196 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %165)
  %__is_black_197 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call196, i32 0, i32 3
  %166 = load i8, ptr %__is_black_197, align 8
  %loadedv198 = trunc i8 %166 to i1
  %167 = load ptr, ptr %__w, align 8
  %__is_black_199 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %167, i32 0, i32 3
  %storedv200 = zext i1 %loadedv198 to i8
  store i8 %storedv200, ptr %__is_black_199, align 8
  %168 = load ptr, ptr %__w, align 8
  %call201 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %168)
  %__is_black_202 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %call201, i32 0, i32 3
  store i8 1, ptr %__is_black_202, align 8
  %169 = load ptr, ptr %__w, align 8
  %__left_203 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %__left_203, align 8
  %__is_black_204 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %170, i32 0, i32 3
  store i8 1, ptr %__is_black_204, align 8
  %171 = load ptr, ptr %__w, align 8
  %call205 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %171)
  call void @_ZNSt3__119__tree_right_rotateB8ne200100IPNS_16__tree_node_baseIPvEEEEvT_(ptr noundef %call205) #10
  br label %while.end

if.end206:                                        ; preds = %cond.end181
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end135
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.end195, %if.then171, %if.end124, %if.then100
  br label %if.end208

if.end208:                                        ; preds = %while.end, %if.then61
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %land.lhs.true, %if.end56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__tree_next_iterB8ne200100IPNS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEES5_EET_T0_(ptr noundef %__x) #1 {
entry:
  %retval = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__right_, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__x.addr, align 8
  %__right_1 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__right_1, align 8
  %call = call noundef ptr @_ZNSt3__110__tree_minB8ne200100IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %3) #10
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %__x.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %4) #10
  %lnot = xor i1 %call2, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %__x.addr, align 8
  %call3 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %5)
  store ptr %call3, ptr %__x.addr, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %__x.addr, align 8
  %__parent_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %__parent_, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110__tree_minB8ne200100IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %__x) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %__x.addr, align 8
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__left_, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %__x.addr, align 8
  %__left_1 = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__left_1, align 8
  store ptr %3, ptr %__x.addr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__x.addr, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__tree_nextB8ne200100IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %__x) #1 {
entry:
  %retval = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__right_ = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__right_, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__x.addr, align 8
  %__right_1 = getelementptr inbounds nuw %"class.std::__1::__tree_node_base", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__right_1, align 8
  %call = call noundef ptr @_ZNSt3__110__tree_minB8ne200100IPNS_16__tree_node_baseIPvEEEET_S5_(ptr noundef %3) #10
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %__x.addr, align 8
  %call2 = call noundef zeroext i1 @_ZNSt3__120__tree_is_left_childB8ne200100IPNS_16__tree_node_baseIPvEEEEbT_(ptr noundef %4) #10
  %lnot = xor i1 %call2, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %__x.addr, align 8
  %call3 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %5)
  store ptr %call3, ptr %__x.addr, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %__x.addr, align 8
  %call4 = call noundef ptr @_ZNKSt3__116__tree_node_baseIPvE15__parent_unsafeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(25) %6)
  store ptr %call4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__tree_const_iteratorINS_12__value_typeIiiEEPNS_11__tree_nodeIS2_PvEElEC2B8ne200100ENS_15__tree_iteratorIS2_S6_lEE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, i64 %__p.coerce) unnamed_addr #1 {
entry:
  %__p = alloca %"class.std::__1::__tree_iterator", align 8
  %this.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__p.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__tree_const_iterator", ptr %this1, i32 0, i32 0
  %__ptr_2 = getelementptr inbounds nuw %"class.std::__1::__tree_iterator", ptr %__p, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_2, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE6__rootB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  call void @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE7destroyEPNS_11__tree_nodeIS2_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #10
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store i64 0, ptr %call2, align 8
  %call3 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE12__begin_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %call3, ptr %call4, align 8
  %call5 = call noundef ptr @_ZNSt3__16__treeINS_12__value_typeIiiEENS_19__map_value_compareIiS2_NS_4lessIiEELb1EEENS_9allocatorIS2_EEE10__end_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %__left_ = getelementptr inbounds nuw %"class.std::__1::__tree_end_node", ptr %call5, i32 0, i32 0
  store ptr null, ptr %__left_, align 8
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline noreturn optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
