; ModuleID = './source_snapshot/DCMTK/config/tests/list.cc'
source_filename = "./source_snapshot/DCMTK/config/tests/list.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::list" = type { %"class.std::__1::__list_imp" }
%"class.std::__1::__list_imp" = type { %"struct.std::__1::__list_node_base", i64 }
%"struct.std::__1::__list_node_base" = type { ptr, ptr }
%"class.std::__1::__list_iterator" = type { ptr }
%"class.std::__1::__list_const_iterator" = type { ptr }
%"struct.std::__1::__list_node" = type <{ %"struct.std::__1::__list_node_base", %union.anon, [4 x i8] }>
%union.anon = type { i32 }
%"struct.std::__1::__allocation_guard" = type { [8 x i8], i64, ptr }
%"class.std::__1::allocator" = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }

@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %l = alloca %"class.std::__1::list", align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp2 = alloca i32, align 4
  %ref.tmp4 = alloca i32, align 4
  %ref.tmp6 = alloca %"class.std::__1::__list_iterator", align 8
  %ref.tmp12 = alloca %"class.std::__1::__list_iterator", align 8
  %sum = alloca i32, align 4
  %it = alloca %"class.std::__1::__list_iterator", align 8
  %ref.tmp24 = alloca %"class.std::__1::__list_iterator", align 8
  %it37 = alloca %"class.std::__1::__list_iterator", align 8
  %m = alloca %"class.std::__1::list", align 8
  %ref.tmp42 = alloca i32, align 4
  %ref.tmp45 = alloca %"class.std::__1::__list_iterator", align 8
  %cit = alloca %"class.std::__1::__list_const_iterator", align 8
  %ref.tmp53 = alloca %"class.std::__1::__list_iterator", align 8
  %ref.tmp58 = alloca %"class.std::__1::__list_const_iterator", align 8
  store i32 0, ptr %retval, align 4
  %call = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %call1 = call noundef zeroext i1 @_ZNKSt3__14listIiNS_9allocatorIiEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end:                                           ; preds = %entry
  store i32 18, ptr %ref.tmp, align 4
  invoke void @_ZNSt3__14listIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %l, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  store i32 22, ptr %ref.tmp2, align 4
  invoke void @_ZNSt3__14listIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %l, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp2)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  store i32 2, ptr %ref.tmp4, align 4
  invoke void @_ZNSt3__14listIiNS_9allocatorIiEEE10push_frontEOi(ptr noundef nonnull align 8 dereferenceable(24) %l, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  %call7 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %ref.tmp6, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call7 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call9 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__115__list_iteratorIiPvEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp6)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont5
  %0 = load i32, ptr %call9, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %invoke.cont8
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

lpad:                                             ; preds = %for.inc, %for.body, %for.cond, %if.end11, %invoke.cont5, %invoke.cont3, %invoke.cont, %if.end
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %ehcleanup

if.end11:                                         ; preds = %invoke.cont8
  call void @_ZNSt3__14listIiNS_9allocatorIiEEE7reverseEv(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %call13 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %coerce.dive14 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %ref.tmp12, i32 0, i32 0
  %coerce.val.ip15 = inttoptr i64 %call13 to ptr
  store ptr %coerce.val.ip15, ptr %coerce.dive14, align 8
  %call17 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__115__list_iteratorIiPvEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp12)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %if.end11
  %4 = load i32, ptr %call17, align 4
  %cmp18 = icmp ne i32 %4, 22
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %invoke.cont16
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end20:                                         ; preds = %invoke.cont16
  store i32 0, ptr %sum, align 4
  %call21 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %coerce.dive22 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %it, i32 0, i32 0
  %coerce.val.ip23 = inttoptr i64 %call21 to ptr
  store ptr %coerce.val.ip23, ptr %coerce.dive22, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont32, %if.end20
  %call25 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %coerce.dive26 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %ref.tmp24, i32 0, i32 0
  %coerce.val.ip27 = inttoptr i64 %call25 to ptr
  store ptr %coerce.val.ip27, ptr %coerce.dive26, align 8
  %call29 = invoke noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_15__list_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp24)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %for.cond
  br i1 %call29, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont28
  %call31 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__115__list_iteratorIiPvEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %for.body
  %5 = load i32, ptr %call31, align 4
  %6 = load i32, ptr %sum, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, ptr %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont30
  %call33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115__list_iteratorIiPvEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %it)
          to label %invoke.cont32 unwind label %lpad

invoke.cont32:                                    ; preds = %for.inc
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %invoke.cont28
  %7 = load i32, ptr %sum, align 4
  %cmp34 = icmp ne i32 %7, 42
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end36:                                         ; preds = %for.end
  %call38 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %coerce.dive39 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %it37, i32 0, i32 0
  %coerce.val.ip40 = inttoptr i64 %call38 to ptr
  store ptr %coerce.val.ip40, ptr %coerce.dive39, align 8
  %call41 = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  store i32 23, ptr %ref.tmp42, align 4
  invoke void @_ZNSt3__14listIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %m, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp42)
          to label %invoke.cont44 unwind label %lpad43

invoke.cont44:                                    ; preds = %if.end36
  call void @_ZNSt3__14listIiNS_9allocatorIiEEE4swapB8ne200100ERS3_(ptr noundef nonnull align 8 dereferenceable(24) %l, ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  %call46 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  %coerce.dive47 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %ref.tmp45, i32 0, i32 0
  %coerce.val.ip48 = inttoptr i64 %call46 to ptr
  store ptr %coerce.val.ip48, ptr %coerce.dive47, align 8
  %call50 = invoke noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_15__list_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %it37, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp45)
          to label %invoke.cont49 unwind label %lpad43

invoke.cont49:                                    ; preds = %invoke.cont44
  br i1 %call50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %invoke.cont49
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad43:                                           ; preds = %if.end52, %invoke.cont44, %if.end36
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  %call65 = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  br label %ehcleanup

if.end52:                                         ; preds = %invoke.cont49
  %call54 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  %coerce.dive55 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %ref.tmp53, i32 0, i32 0
  %coerce.val.ip56 = inttoptr i64 %call54 to ptr
  store ptr %coerce.val.ip56, ptr %coerce.dive55, align 8
  %call57 = call noundef ptr @_ZNSt3__121__list_const_iteratorIiPvEC1B8ne200100ERKNS_15__list_iteratorIiS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %cit, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp53) #10
  %call59 = call noundef ptr @_ZNSt3__121__list_const_iteratorIiPvEC1B8ne200100ERKNS_15__list_iteratorIiS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp58, ptr noundef nonnull align 8 dereferenceable(8) %it37) #10
  %call61 = invoke noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_21__list_const_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp58, ptr noundef nonnull align 8 dereferenceable(8) %cit)
          to label %invoke.cont60 unwind label %lpad43

invoke.cont60:                                    ; preds = %if.end52
  br i1 %call61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %invoke.cont60
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %invoke.cont60
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then62, %if.then51
  %call64 = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %m) #10
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup, %if.then35, %if.then19, %if.then10, %if.then
  %call67 = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  %11 = load i32, ptr %retval, align 4
  ret i32 %11

ehcleanup:                                        ; preds = %lpad43, %lpad
  %call68 = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %l) #10
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val69 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val69
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__14listIiNS_9allocatorIiEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret i1 %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14listIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__node = alloca ptr, align 8
  %__nl = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__110__list_impIiNS_9allocatorIiEEE13__create_nodeB8ne200100IJiEEEPNS_11__list_nodeIiPvEEPNS_16__list_node_baseIiS6_EESB_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %0)
  store ptr %call, ptr %__node, align 8
  %1 = load ptr, ptr %__node, align 8
  %call2 = call noundef ptr @_ZNSt3__111__list_nodeIiPvE9__as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %1)
  store ptr %call2, ptr %__nl, align 8
  %2 = load ptr, ptr %__nl, align 8
  %3 = load ptr, ptr %__nl, align 8
  call void @_ZNSt3__14listIiNS_9allocatorIiEEE20__link_nodes_at_backEPNS_16__list_node_baseIiPvEES7_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %2, ptr noundef %3)
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  %4 = load i64, ptr %__size_, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %__size_, align 8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14listIiNS_9allocatorIiEEE10push_frontEOi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__node = alloca ptr, align 8
  %__nl = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__110__list_impIiNS_9allocatorIiEEE13__create_nodeB8ne200100IJiEEEPNS_11__list_nodeIiPvEEPNS_16__list_node_baseIiS6_EESB_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %0)
  store ptr %call, ptr %__node, align 8
  %1 = load ptr, ptr %__node, align 8
  %call2 = call noundef ptr @_ZNSt3__111__list_nodeIiPvE9__as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %1)
  store ptr %call2, ptr %__nl, align 8
  %2 = load ptr, ptr %__nl, align 8
  %3 = load ptr, ptr %__nl, align 8
  call void @_ZNSt3__14listIiNS_9allocatorIiEEE21__link_nodes_at_frontEPNS_16__list_node_baseIiPvEES7_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %2, ptr noundef %3)
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  %4 = load i64, ptr %__size_, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %__size_, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__list_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call i64 @_ZNSt3__110__list_impIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__115__list_iteratorIiPvEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  %call = call noundef ptr @_ZNSt3__116__list_node_baseIiPvE9__as_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %call2 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__111__list_nodeIiPvE11__get_valueB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14listIiNS_9allocatorIiEEE7reverseEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__e = alloca %"class.std::__1::__list_iterator", align 8
  %__i = alloca %"class.std::__1::__list_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__size_, align 8
  %cmp = icmp ugt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__e, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call2 = call i64 @_ZNSt3__14listIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %coerce.dive3 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__i, i32 0, i32 0
  %coerce.val.ip4 = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip4, ptr %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__i, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_, align 8
  %__ptr_5 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__e, i32 0, i32 0
  %2 = load ptr, ptr %__ptr_5, align 8
  %cmp6 = icmp ne ptr %1, %2
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %__ptr_7 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__i, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_7, align 8
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %3, i32 0, i32 0
  %__ptr_8 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__i, i32 0, i32 0
  %4 = load ptr, ptr %__ptr_8, align 8
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %4, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPNS_16__list_node_baseIiPvEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__prev_, ptr noundef nonnull align 8 dereferenceable(8) %__next_) #10
  %__ptr_9 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__i, i32 0, i32 0
  %5 = load ptr, ptr %__ptr_9, align 8
  %__prev_10 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %__prev_10, align 8
  %__ptr_11 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__i, i32 0, i32 0
  store ptr %6, ptr %__ptr_11, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %__ptr_12 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__e, i32 0, i32 0
  %7 = load ptr, ptr %__ptr_12, align 8
  %__prev_13 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %7, i32 0, i32 0
  %__ptr_14 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %__e, i32 0, i32 0
  %8 = load ptr, ptr %__ptr_14, align 8
  %__next_15 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %8, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPNS_16__list_node_baseIiPvEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__prev_13, ptr noundef nonnull align 8 dereferenceable(8) %__next_15) #10
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_15__list_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_15__list_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__14listIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__list_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call i64 @_ZNSt3__110__list_impIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %retval, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__115__list_iteratorIiPvEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__next_, align 8
  %__ptr_2 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %this1, i32 0, i32 0
  store ptr %1, ptr %__ptr_2, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14listIiNS_9allocatorIiEEE4swapB8ne200100ERS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__c) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__c.addr, align 8
  call void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__list_const_iteratorIiPvEC1B8ne200100ERKNS_15__list_iteratorIiS1_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__121__list_const_iteratorIiPvEC2B8ne200100ERKNS_15__list_iteratorIiS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_21__list_const_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_21__list_const_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110__list_impIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110__list_impIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__f = alloca ptr, align 8
  %__l = alloca ptr, align 8
  %__np = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %__end_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_, i32 0, i32 1
  %0 = load ptr, ptr %__next_, align 8
  store ptr %0, ptr %__f, align 8
  %call2 = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  store ptr %call2, ptr %__l, align 8
  %1 = load ptr, ptr %__f, align 8
  %2 = load ptr, ptr %__l, align 8
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__prev_, align 8
  call void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE14__unlink_nodesEPNS_16__list_node_baseIiPvEES7_(ptr noundef %1, ptr noundef %3) #10
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  store i64 0, ptr %__size_, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont5, %if.then
  %4 = load ptr, ptr %__f, align 8
  %5 = load ptr, ptr %__l, align 8
  %cmp = icmp ne ptr %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %__f, align 8
  %call3 = invoke noundef ptr @_ZNSt3__116__list_node_baseIiPvE9__as_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  store ptr %call3, ptr %__np, align 8
  %7 = load ptr, ptr %__f, align 8
  %__next_4 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %__next_4, align 8
  store ptr %8, ptr %__f, align 8
  %9 = load ptr, ptr %__np, align 8
  invoke void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE13__delete_nodeB8ne200100EPNS_11__list_nodeIiPvEE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %9)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %invoke.cont
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %while.body
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__size_, align 8
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %call = invoke noundef ptr @_ZNSt3__116__list_node_baseIiPvE6__selfB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call3 = invoke noundef ptr @_ZNSt3__126__list_node_pointer_traitsIiPvE26__unsafe_link_pointer_castB8ne200100EPNS_16__list_node_baseIiS1_EE(ptr noundef %call)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %call3

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE14__unlink_nodesEPNS_16__list_node_baseIiPvEES7_(ptr noundef %__f, ptr noundef %__l) #1 {
entry:
  %__f.addr = alloca ptr, align 8
  %__l.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  store ptr %__l, ptr %__l.addr, align 8
  %0 = load ptr, ptr %__l.addr, align 8
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__next_, align 8
  %2 = load ptr, ptr %__f.addr, align 8
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__prev_, align 8
  %__next_1 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %3, i32 0, i32 1
  store ptr %1, ptr %__next_1, align 8
  %4 = load ptr, ptr %__f.addr, align 8
  %__prev_2 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %__prev_2, align 8
  %6 = load ptr, ptr %__l.addr, align 8
  %__next_3 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %__next_3, align 8
  %__prev_4 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %7, i32 0, i32 0
  store ptr %5, ptr %__prev_4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__list_node_baseIiPvE9__as_nodeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__list_node_baseIiPvE6__selfB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE13__delete_nodeB8ne200100EPNS_11__list_nodeIiPvEE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__node) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__node.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__node, ptr %__node.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__node.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__111__list_nodeIiPvE11__get_valueB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE7destroyB8ne200100IivTnNS_9enable_ifIXntsr13__has_destroyIS5_PT_EE5valueEiE4typeELi0EEEvRS5_SA_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call)
  %1 = load ptr, ptr %__node.addr, align 8
  call void @_ZNSt3__112__destroy_atB8ne200100INS_11__list_nodeIiPvEETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS5_(ptr noundef %1)
  %2 = load ptr, ptr %__node.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE10deallocateB8ne200100ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %2, i64 noundef 1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__126__list_node_pointer_traitsIiPvE26__unsafe_link_pointer_castB8ne200100EPNS_16__list_node_baseIiS1_EE(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__list_node_baseIiPvE6__selfB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_16__list_node_baseIiPvEEE10pointer_toB8ne200100ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %this1) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_16__list_node_baseIiPvEEE10pointer_toB8ne200100ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %__r) #1 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE7destroyB8ne200100IivTnNS_9enable_ifIXntsr13__has_destroyIS5_PT_EE5valueEiE4typeELi0EEEvRS5_SA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %__p) #2 {
entry:
  %.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__112__destroy_atB8ne200100IiTnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS2_(ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__111__list_nodeIiPvE11__get_valueB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds nuw %"struct.std::__1::__list_node", ptr %this1, i32 0, i32 1
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__112__destroy_atB8ne200100INS_11__list_nodeIiPvEETnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS5_(ptr noundef %__loc) #1 {
entry:
  %__loc.addr = alloca ptr, align 8
  store ptr %__loc, ptr %__loc.addr, align 8
  %0 = load ptr, ptr %__loc.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__list_nodeIiPvED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE10deallocateB8ne200100ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEE10deallocateB8ne200100EPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__112__destroy_atB8ne200100IiTnNS_9enable_ifIXntsr8is_arrayIT_EE5valueEiE4typeELi0EEEvPS2_(ptr noundef %__loc) #1 {
entry:
  %__loc.addr = alloca ptr, align 8
  store ptr %__loc, ptr %__loc.addr, align 8
  %0 = load ptr, ptr %__loc.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__list_nodeIiPvED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(20) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__list_nodeIiPvED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__list_nodeIiPvED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(20) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEE10deallocateB8ne200100EPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__119__libcpp_deallocateB8ne200100INS_11__list_nodeIiPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %0, i64 noundef %1, i64 noundef 8) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB8ne200100INS_11__list_nodeIiPvEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %__ptr, i64 noundef %__n, i64 noundef %__align) #1 {
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
  %mul = mul i64 %0, 24
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
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__list_nodeIiPvEEmSt11align_val_tEEEvDpT_(ptr noundef %3, i64 noundef %4, i64 noundef %5) #10
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__ptr.addr, align 8
  %7 = load i64, ptr %__size, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__list_nodeIiPvEEmEEEvDpT_(ptr noundef %6, i64 noundef %7) #10
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__list_nodeIiPvEEmSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1, i64 noundef %__args3) #1 {
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_11__list_nodeIiPvEEmEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #1 {
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
define linkonce_odr hidden noundef ptr @_ZNSt3__14listIiNS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110__list_impIiNS_9allocatorIiEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110__list_impIiNS_9allocatorIiEEEC2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %call = invoke noundef ptr @_ZNSt3__116__list_node_baseIiPvEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  store i64 0, ptr %__size_, align 8
  %call2 = call noundef ptr @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEEC1B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #11
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__list_node_baseIiPvEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__list_node_baseIiPvEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEEC1B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__list_node_baseIiPvEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__116__list_node_baseIiPvE6__selfB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
  store ptr %call, ptr %__prev_, align 8
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %this1, i32 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__116__list_node_baseIiPvE6__selfB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
  store ptr %call2, ptr %__next_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__list_nodeIiPvEEEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_11__list_nodeIiPvEEEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110__list_impIiNS_9allocatorIiEEE13__create_nodeB8ne200100IJiEEEPNS_11__list_nodeIiPvEEPNS_16__list_node_baseIiS6_EESB_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__prev, ptr noundef %__next, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__prev.addr = alloca ptr, align 8
  %__next.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__guard = alloca %"struct.std::__1::__allocation_guard", align 8
  %agg.tmp = alloca %"class.std::__1::allocator", align 1
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__prev, ptr %__prev.addr, align 8
  store ptr %__next, ptr %__next.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEEC1B8ne200100IS5_EET_m(ptr noundef nonnull align 8 dereferenceable(24) %__guard, i64 noundef 1)
  %call2 = call noundef ptr @_ZNKSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEE5__getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__guard) #10
  %call3 = invoke noundef ptr @_ZNSt3__114__construct_atB8ne200100INS_11__list_nodeIiPvEEJRPNS_16__list_node_baseIiS2_EES7_EPS3_EEPT_SA_DpOT0_(ptr noundef %call2, ptr noundef nonnull align 8 dereferenceable(8) %__prev.addr, ptr noundef nonnull align 8 dereferenceable(8) %__next.addr)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call4 = call noundef ptr @_ZNKSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEE5__getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__guard) #10
  %call5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__111__list_nodeIiPvE11__get_valueB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %call4)
  %0 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE9constructB8ne200100IiJiETnNS_9enable_ifIXsr15__has_constructIS5_PT_DpT0_EE5valueEiE4typeELi0EEEvRS5_SA_DpOSB_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call5, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  %call7 = call noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEE13__release_ptrB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__guard) #10
  %call8 = call noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__guard) #10
  ret ptr %call7

lpad:                                             ; preds = %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__guard) #10
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__list_nodeIiPvE9__as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(20) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__list_node_baseIiPvE6__selfB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14listIiNS_9allocatorIiEEE20__link_nodes_at_backEPNS_16__list_node_baseIiPvEES7_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__f, ptr noundef %__l) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  %__l.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  store ptr %__l, ptr %__l.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %0 = load ptr, ptr %__l.addr, align 8
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %0, i32 0, i32 1
  store ptr %call, ptr %__next_, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_, i32 0, i32 0
  %1 = load ptr, ptr %__prev_, align 8
  %2 = load ptr, ptr %__f.addr, align 8
  %__prev_2 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %2, i32 0, i32 0
  store ptr %1, ptr %__prev_2, align 8
  %3 = load ptr, ptr %__f.addr, align 8
  %4 = load ptr, ptr %__f.addr, align 8
  %__prev_3 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %__prev_3, align 8
  %__next_4 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %5, i32 0, i32 1
  store ptr %3, ptr %__next_4, align 8
  %6 = load ptr, ptr %__l.addr, align 8
  %__end_5 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__prev_6 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_5, i32 0, i32 0
  store ptr %6, ptr %__prev_6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEEC1B8ne200100IS5_EET_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n) unnamed_addr #2 {
entry:
  %__alloc = alloca %"class.std::__1::allocator", align 1
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEEC2B8ne200100IS5_EET_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__construct_atB8ne200100INS_11__list_nodeIiPvEEJRPNS_16__list_node_baseIiS2_EES7_EPS3_EEPT_SA_DpOT0_(ptr noundef %__location, ptr noundef nonnull align 8 dereferenceable(8) %__args, ptr noundef nonnull align 8 dereferenceable(8) %__args1) #2 {
entry:
  %__location.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  store ptr %__location, ptr %__location.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__location.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %__args.addr2, align 8
  %4 = load ptr, ptr %3, align 8
  %call = call noundef ptr @_ZNSt3__111__list_nodeIiPvEC1B8ne200100EPNS_16__list_node_baseIiS1_EES5_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %2, ptr noundef %4)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEE5__getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE9constructB8ne200100IiJiETnNS_9enable_ifIXsr15__has_constructIS5_PT_DpT0_EE5valueEiE4typeELi0EEEvRS5_SA_DpOSB_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 {
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
  call void @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEE9constructB8ne200100IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEE13__release_ptrB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__ptr_, align 8
  store ptr %0, ptr %__tmp, align 8
  %__ptr_2 = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 2
  store ptr null, ptr %__ptr_2, align 8
  %1 = load ptr, ptr %__tmp, align 8
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEEC2B8ne200100IS5_EET_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__n) unnamed_addr #2 {
entry:
  %__alloc = alloca %"class.std::__1::allocator", align 1
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__n_ = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__n.addr, align 8
  store i64 %0, ptr %__n_, align 8
  %__ptr_ = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 2
  %__n_2 = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__n_2, align 8
  %call = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE8allocateB8ne200100ERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, i64 noundef %1)
  store ptr %call, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE8allocateB8ne200100ERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE8max_sizeB8ne200100IS5_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100INS_11__list_nodeIiPvEEEEPT_NS_15__element_countEm(i64 noundef %1, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE8max_sizeB8ne200100IS5_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #1 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_11__list_nodeIiPvEEE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret i64 %call
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #5 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #10
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #10
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt20bad_array_new_length, ptr @_ZNSt20bad_array_new_lengthD1Ev) #13
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100INS_11__list_nodeIiPvEEEEPT_NS_15__element_countEm(i64 noundef %__n, i64 noundef %__align) #2 {
entry:
  %retval = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__size = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %0, 24
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
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_11__list_nodeIiPvEEE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 768614336404564650
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #6

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
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #7

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__list_nodeIiPvEC1B8ne200100EPNS_16__list_node_baseIiS1_EES5_(ptr noundef nonnull returned align 8 dereferenceable(20) %this, ptr noundef %__prev, ptr noundef %__next) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__prev.addr = alloca ptr, align 8
  %__next.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__prev, ptr %__prev.addr, align 8
  store ptr %__next, ptr %__next.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__prev.addr, align 8
  %1 = load ptr, ptr %__next.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__list_nodeIiPvEC2B8ne200100EPNS_16__list_node_baseIiS1_EES5_(ptr noundef nonnull align 8 dereferenceable(20) %this1, ptr noundef %0, ptr noundef %1)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__list_nodeIiPvEC2B8ne200100EPNS_16__list_node_baseIiS1_EES5_(ptr noundef nonnull returned align 8 dereferenceable(20) %this, ptr noundef %__prev, ptr noundef %__next) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__prev.addr = alloca ptr, align 8
  %__next.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__prev, ptr %__prev.addr, align 8
  store ptr %__next, ptr %__next.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__prev.addr, align 8
  %1 = load ptr, ptr %__next.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__list_node_baseIiPvEC2B8ne200100EPS2_S3_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, ptr noundef %1)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__list_node_baseIiPvEC2B8ne200100EPS2_S3_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__prev, ptr noundef %__next) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__prev.addr = alloca ptr, align 8
  %__next.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__prev, ptr %__prev.addr, align 8
  store ptr %__next, ptr %__next.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__prev.addr, align 8
  store ptr %0, ptr %__prev_, align 8
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__next.addr, align 8
  store ptr %1, ptr %__next_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorINS_11__list_nodeIiPvEEE9constructB8ne200100IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #1 {
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
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEE9__destroyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__118__allocation_guardINS_9allocatorINS_11__list_nodeIiPvEEEEE9__destroyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__ptr_, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_2 = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__ptr_2, align 8
  %__n_ = getelementptr inbounds nuw %"struct.std::__1::__allocation_guard", ptr %this1, i32 0, i32 1
  %2 = load i64, ptr %__n_, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_11__list_nodeIiPvEEEEE10deallocateB8ne200100ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %1, i64 noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14listIiNS_9allocatorIiEEE21__link_nodes_at_frontEPNS_16__list_node_baseIiPvEES7_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__f, ptr noundef %__l) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  %__l.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  store ptr %__l, ptr %__l.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %0 = load ptr, ptr %__f.addr, align 8
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %0, i32 0, i32 0
  store ptr %call, ptr %__prev_, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_, i32 0, i32 1
  %1 = load ptr, ptr %__next_, align 8
  %2 = load ptr, ptr %__l.addr, align 8
  %__next_2 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %2, i32 0, i32 1
  store ptr %1, ptr %__next_2, align 8
  %3 = load ptr, ptr %__l.addr, align 8
  %4 = load ptr, ptr %__l.addr, align 8
  %__next_3 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %__next_3, align 8
  %__prev_4 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %5, i32 0, i32 0
  store ptr %3, ptr %__prev_4, align 8
  %6 = load ptr, ptr %__f.addr, align 8
  %__end_5 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__next_6 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_5, i32 0, i32 1
  store ptr %6, ptr %__next_6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__110__list_impIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__list_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_, i32 0, i32 1
  %0 = load ptr, ptr %__next_, align 8
  %call = call noundef ptr @_ZNSt3__115__list_iteratorIiPvEC1B8ne200100EPNS_16__list_node_baseIiS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %0) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__list_iteratorIiPvEC1B8ne200100EPNS_16__list_node_baseIiS1_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__list_iteratorIiPvEC2B8ne200100EPNS_16__list_node_baseIiS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__115__list_iteratorIiPvEC2B8ne200100EPNS_16__list_node_baseIiS1_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ne200100IPNS_16__list_node_baseIiPvEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__110__list_impIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__list_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %call2 = call noundef ptr @_ZNSt3__115__list_iteratorIiPvEC1B8ne200100EPNS_16__list_node_baseIiS1_EE(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %call) #10
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_15__list_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110__list_impIiNS_9allocatorIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__c) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__c.addr, align 8
  call void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorINS_11__list_nodeIiPvEEEEEEvRT_S7_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  %__size_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__c.addr, align 8
  %__size_2 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %1, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_(ptr noundef nonnull align 8 dereferenceable(8) %__size_, ptr noundef nonnull align 8 dereferenceable(8) %__size_2) #10
  %__end_ = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__c.addr, align 8
  %__end_3 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %2, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100INS_16__list_node_baseIiPvEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_(ptr noundef nonnull align 8 dereferenceable(16) %__end_, ptr noundef nonnull align 8 dereferenceable(16) %__end_3) #10
  %__size_4 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 1
  %3 = load i64, ptr %__size_4, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %__end_5 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__prev_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_5, i32 0, i32 0
  store ptr %call, ptr %__prev_, align 8
  %__end_6 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__next_ = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_6, i32 0, i32 1
  store ptr %call, ptr %__next_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  %__end_8 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__next_9 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_8, i32 0, i32 1
  %4 = load ptr, ptr %__next_9, align 8
  %__prev_10 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %4, i32 0, i32 0
  store ptr %call7, ptr %__prev_10, align 8
  %__end_11 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %this1, i32 0, i32 0
  %__prev_12 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_11, i32 0, i32 0
  %5 = load ptr, ptr %__prev_12, align 8
  %__next_13 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %5, i32 0, i32 1
  store ptr %call7, ptr %__next_13, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %__c.addr, align 8
  %__size_14 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %6, i32 0, i32 1
  %7 = load i64, ptr %__size_14, align 8
  %cmp15 = icmp eq i64 %7, 0
  br i1 %cmp15, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.end
  %8 = load ptr, ptr %__c.addr, align 8
  %call17 = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #10
  %9 = load ptr, ptr %__c.addr, align 8
  %__end_18 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %9, i32 0, i32 0
  %__prev_19 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_18, i32 0, i32 0
  store ptr %call17, ptr %__prev_19, align 8
  %10 = load ptr, ptr %__c.addr, align 8
  %__end_20 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %10, i32 0, i32 0
  %__next_21 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_20, i32 0, i32 1
  store ptr %call17, ptr %__next_21, align 8
  br label %if.end30

if.else22:                                        ; preds = %if.end
  %11 = load ptr, ptr %__c.addr, align 8
  %call23 = call noundef ptr @_ZNKSt3__110__list_impIiNS_9allocatorIiEEE13__end_as_linkB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #10
  %12 = load ptr, ptr %__c.addr, align 8
  %__end_24 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %12, i32 0, i32 0
  %__next_25 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_24, i32 0, i32 1
  %13 = load ptr, ptr %__next_25, align 8
  %__prev_26 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %13, i32 0, i32 0
  store ptr %call23, ptr %__prev_26, align 8
  %14 = load ptr, ptr %__c.addr, align 8
  %__end_27 = getelementptr inbounds nuw %"class.std::__1::__list_imp", ptr %14, i32 0, i32 0
  %__prev_28 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %__end_27, i32 0, i32 0
  %15 = load ptr, ptr %__prev_28, align 8
  %__next_29 = getelementptr inbounds nuw %"struct.std::__1::__list_node_base", ptr %15, i32 0, i32 1
  store ptr %call23, ptr %__next_29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else22, %if.then16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorINS_11__list_nodeIiPvEEEEEEvRT_S7_(ptr noundef nonnull align 1 dereferenceable(1) %__a1, ptr noundef nonnull align 1 dereferenceable(1) %__a2) #1 {
entry:
  %__a1.addr = alloca ptr, align 8
  %__a2.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %__a1, ptr %__a1.addr, align 8
  store ptr %__a2, ptr %__a2.addr, align 8
  %0 = load ptr, ptr %__a1.addr, align 8
  %1 = load ptr, ptr %__a2.addr, align 8
  call void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorINS_11__list_nodeIiPvEEEEEEvRT_S7_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ne200100ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  %__t = alloca i64, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %__t, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %3 = load i64, ptr %2, align 8
  %4 = load ptr, ptr %__x.addr, align 8
  store i64 %3, ptr %4, align 8
  %5 = load i64, ptr %__t, align 8
  %6 = load ptr, ptr %__y.addr, align 8
  store i64 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ne200100INS_16__list_node_baseIiPvEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  %__t = alloca %"struct.std::__1::__list_node_base", align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__t, ptr align 8 %0, i64 16, i1 false)
  %1 = load ptr, ptr %__y.addr, align 8
  %2 = load ptr, ptr %__x.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %1, i64 16, i1 false)
  %3 = load ptr, ptr %__y.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %__t, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorINS_11__list_nodeIiPvEEEEEEvRT_S7_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 {
entry:
  %2 = alloca %"struct.std::__1::integral_constant", align 1
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__list_const_iteratorIiPvEC2B8ne200100ERKNS_15__list_iteratorIiS1_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__list_const_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds nuw %"class.std::__1::__list_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_2, align 8
  store ptr %1, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_21__list_const_iteratorIiPvEES4_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__list_const_iterator", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds nuw %"class.std::__1::__list_const_iterator", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { mustprogress noinline noreturn optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
