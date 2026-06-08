; ModuleID = './source_snapshot/DCMTK/config/tests/memory.cc'
source_filename = "./source_snapshot/DCMTK/config/tests/memory.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.std::__1::shared_ptr" = type { ptr, ptr }
%"struct.std::__1::__value_init_tag" = type { i8 }
%"struct.std::__1::shared_ptr<int>::__shared_ptr_default_delete" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem" }
%"class.std::__1::__shared_ptr_pointer" = type { %"class.std::__1::__shared_weak_count", %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__shared_weak_count" = type { %"class.std::__1::__shared_count", i64 }
%"class.std::__1::__shared_count" = type { ptr, i64 }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::allocator.6" = type { i8 }
%"class.std::type_info" = type { ptr, i64 }

@_ZTVNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED1Ev, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED0Ev, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE16__on_zero_sharedEv, ptr @_ZNKSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE21__on_zero_shared_weakEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE = linkonce_odr hidden constant [104 x i8] c"NSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE\00", align 1
@_ZTINSt3__119__shared_weak_countE = external constant ptr
@_ZTINSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__119__shared_weak_countE }, align 8
@_ZTVNSt3__119__shared_weak_countE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVNSt3__114__shared_countE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTSNSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE = linkonce_odr hidden constant [57 x i8] c"NSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSNSt3__114default_deleteIiEE = linkonce_odr hidden constant [28 x i8] c"NSt3__114default_deleteIiEE\00", align 1
@_ZTINSt3__114default_deleteIiEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__114default_deleteIiEE to i64), i64 -9223372036854775808) to ptr) }, align 8
@_ZTINSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__114default_deleteIiEE }, align 8

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca ptr, align 8
  %pp = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %s_p = alloca %"class.std::__1::shared_ptr", align 8
  %s_p2 = alloca %"class.std::__1::shared_ptr", align 8
  %s_p3 = alloca %"class.std::__1::shared_ptr", align 8
  store i32 0, ptr %retval, align 4
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef 4) #10
  store i32 55, ptr %call, align 4
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  %call1 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC1B6v15007ILb1EvEEPi(ptr noundef nonnull align 8 dereferenceable(8) %pp, ptr noundef %0) #11
  %1 = load ptr, ptr %p, align 8
  %2 = load i32, ptr %1, align 4
  %call2 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %3 = load i32, ptr %call2, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

lpad:                                             ; preds = %if.end6, %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call33 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont
  %7 = load ptr, ptr %p, align 8
  %call3 = call noundef ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #11
  %cmp4 = icmp ne ptr %7, %call3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

if.end6:                                          ; preds = %if.end
  %call7 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #11
  %8 = load ptr, ptr %p, align 8
  %call9 = invoke noundef ptr @_ZNSt3__110shared_ptrIiEC1IivEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %s_p, ptr noundef %8)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %if.end6
  %call10 = call noundef ptr @_ZNSt3__110shared_ptrIiEC1B6v15007ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %s_p2, ptr noundef nonnull align 8 dereferenceable(16) %s_p) #11
  %call11 = call noundef ptr @_ZNSt3__110shared_ptrIiEC1B6v15007ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %s_p3, ptr noundef nonnull align 8 dereferenceable(16) %s_p2) #11
  %call12 = call noundef ptr @_ZNKSt3__110shared_ptrIiE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #11
  %call13 = call noundef ptr @_ZNKSt3__110shared_ptrIiE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p3) #11
  %cmp14 = icmp ne ptr %call12, %call13
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %invoke.cont8
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %invoke.cont8
  %call17 = call noundef i64 @_ZNKSt3__110shared_ptrIiE9use_countB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #11
  %cmp18 = icmp ne i64 %call17, 3
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110shared_ptrIiEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #11
  %9 = load i32, ptr %call21, align 4
  %call22 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110shared_ptrIiEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p3) #11
  %10 = load i32, ptr %call22, align 4
  %cmp23 = icmp ne i32 %9, %10
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then19, %if.then15
  %call26 = call noundef ptr @_ZNSt3__110shared_ptrIiED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p3) #11
  %call28 = call noundef ptr @_ZNSt3__110shared_ptrIiED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p2) #11
  %call30 = call noundef ptr @_ZNSt3__110shared_ptrIiED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #11
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup, %if.then5, %if.then
  %call32 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #11
  %11 = load i32, ptr %retval, align 4
  ret i32 %11

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val34 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val34
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC1B6v15007ILb1EvEEPi(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC2B6v15007ILb1EvEEPi(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #11
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #11
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #11
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_2) #11
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110shared_ptrIiEC1IivEEPT_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__p) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__110shared_ptrIiEC2IivEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiEC1B6v15007ERKS1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__r) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  %call = call noundef ptr @_ZNSt3__110shared_ptrIiEC2B6v15007ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110shared_ptrIiE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__110shared_ptrIiE9use_countB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cntrl_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__cntrl_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %__cntrl_2 = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__cntrl_2, align 8
  %call = call noundef i64 @_ZNKSt3__119__shared_weak_count9use_countB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110shared_ptrIiEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110shared_ptrIiED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #11
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #11
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC2B6v15007ILb1EvEEPi(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEEC1B6v15007IRS1_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #12
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEEC1B6v15007IRS1_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEEC2B6v15007IRS1_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #5 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #11
  call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEEC2B6v15007IRS1_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B6v15007IRS1_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteIiEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B6v15007IRS1_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteIiEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE5resetB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef null) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE5resetB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #11
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_2) #11
  store ptr %1, ptr %call3, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_4) #11
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNKSt3__114default_deleteIiEclB6v15007EPi(ptr noundef nonnull align 1 dereferenceable(1) %call5, ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_14default_deleteIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__114default_deleteIiEclB6v15007EPi(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__ptr.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__ptr.addr, align 8
  %isnull = icmp eq ptr %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  call void @_ZdlPv(ptr noundef %0) #13
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_14default_deleteIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110shared_ptrIiEC2IivEEPT_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__p) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__hold = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"struct.std::__1::shared_ptr<int>::__shared_ptr_default_delete", align 1
  %agg.tmp3 = alloca %"class.std::__1::allocator", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC1B6v15007ILb1EvEEPi(ptr noundef nonnull align 8 dereferenceable(8) %__hold, ptr noundef %1) #11
  %call2 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 32) #10
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = load ptr, ptr %__p.addr, align 8
  %call4 = call noundef ptr @_ZNSt3__19allocatorIiEC1B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %agg.tmp3) #11
  %call7 = invoke noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC1B6v15007ES1_S5_S7_(ptr noundef nonnull align 8 dereferenceable(32) %call2, ptr noundef %2)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  %__cntrl_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  store ptr %call2, ptr %__cntrl_, align 8
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__hold) #11
  %3 = load ptr, ptr %__p.addr, align 8
  %4 = load ptr, ptr %__p.addr, align 8
  call void (ptr, ...) @_ZNSt3__110shared_ptrIiE18__enable_weak_thisB6v15007Ez(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %3, ptr noundef %4) #11
  %call9 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__hold) #11
  ret ptr %this1

lpad:                                             ; preds = %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  call void @_ZdlPv(ptr noundef %call2) #13
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad5, %lpad
  %call10 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__hold) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC1B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC1B6v15007ES1_S5_S7_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef %__p) unnamed_addr #4 align 2 {
entry:
  %__d = alloca %"struct.std::__1::shared_ptr<int>::__shared_ptr_default_delete", align 1
  %__a = alloca %"class.std::__1::allocator", align 1
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this2 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC2B6v15007ES1_S5_S7_(ptr noundef nonnull align 8 dereferenceable(32) %this2, ptr noundef %0)
  ret ptr %this2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrIiE18__enable_weak_thisB6v15007Ez(ptr noundef nonnull align 8 dereferenceable(16) %this, ...) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC2B6v15007ES1_S5_S7_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef %__p) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__d = alloca %"struct.std::__1::shared_ptr<int>::__shared_ptr_default_delete", align 1
  %__a = alloca %"class.std::__1::allocator", align 1
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::__compressed_pair.3", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this2 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__shared_weak_countC2B6v15007El(ptr noundef nonnull align 8 dereferenceable(24) %this2, i64 noundef 0) #11
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE, i32 0, inrange i32 0, i32 2), ptr %this2, align 8
  %__data_ = getelementptr inbounds %"class.std::__1::__shared_ptr_pointer", ptr %this2, i32 0, i32 1
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEC1B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 1 dereferenceable(1) %__d)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call5 = invoke noundef ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEEC1B6v15007IS6_S8_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__data_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  ret ptr %this2

lpad:                                             ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this2) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__shared_weak_countC2B6v15007El(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__refs) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__refs.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__refs, ptr %__refs.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__refs.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__shared_countC2B6v15007El(ptr noundef nonnull align 8 dereferenceable(16) %this1, i64 noundef %0) #11
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVNSt3__119__shared_weak_countE, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  %__shared_weak_owners_ = getelementptr inbounds %"class.std::__1::__shared_weak_count", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__refs.addr, align 8
  store i64 %1, ptr %__shared_weak_owners_, align 8
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEC1B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEC2B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEEC1B6v15007IS6_S8_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEEC2B6v15007IS6_S8_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #11
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #11
  call void @_ZdlPv(ptr noundef %this1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__data_ = getelementptr inbounds %"class.std::__1::__shared_ptr_pointer", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__data_) #11
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call) #11
  %__data_3 = getelementptr inbounds %"class.std::__1::__shared_ptr_pointer", ptr %this1, i32 0, i32 1
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__data_3) #11
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call4) #11
  %0 = load ptr, ptr %call5, align 8
  call void @_ZNKSt3__114default_deleteIiEclB6v15007EPi(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %0) #11
  %__data_6 = getelementptr inbounds %"class.std::__1::__shared_ptr_pointer", ptr %this1, i32 0, i32 1
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__data_6) #11
  %call8 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call7) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNKSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__t) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt9type_infoeqB6v15007ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @_ZTINSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE) #11
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %__data_ = getelementptr inbounds %"class.std::__1::__shared_ptr_pointer", ptr %this1, i32 0, i32 1
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__data_) #11
  %call3 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call2) #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call3, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a = alloca %"class.std::__1::allocator.6", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__data_ = getelementptr inbounds %"class.std::__1::__shared_ptr_pointer", ptr %this1, i32 0, i32 1
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__data_) #11
  %call2 = call noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC1B6v15007IiEERKNS0_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef nonnull align 1 dereferenceable(1) %call) #11
  %__data_3 = getelementptr inbounds %"class.std::__1::__shared_ptr_pointer", ptr %this1, i32 0, i32 1
  %call4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__data_3) #11
  %call5 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEE10pointer_toB6v15007ERS9_(ptr noundef nonnull align 8 dereferenceable(32) %this1) #11
  call void @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEE10deallocateB6v15007EPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %call5, i64 noundef 1) #11
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__shared_countC2B6v15007El(ptr noundef nonnull returned align 8 dereferenceable(16) %this, i64 noundef %__refs) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__refs.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__refs, ptr %__refs.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVNSt3__114__shared_countE, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  %__shared_owners_ = getelementptr inbounds %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__refs.addr, align 8
  store i64 %0, ptr %__shared_owners_, align 8
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEC2B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B6v15007IRS1_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEELi1ELb1EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEELi1ELb1EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEEC2B6v15007IS6_S8_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_17__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEELi0ELb0EEC2B6v15007IS7_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B6v15007IS2_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_17__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEELi0ELb0EEC2B6v15007IS7_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__value_, ptr align 8 %0, i64 8, i1 false)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B6v15007IS2_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  ret ptr %this1
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemINS_17__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemINS_17__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt9type_infoeqB6v15007ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__arg) #3 align 2 {
entry:
  %__v.addr.i3 = alloca i64, align 8
  %__v.addr.i = alloca i64, align 8
  %retval.i = alloca i1, align 1
  %__lhs.addr.i = alloca i64, align 8
  %__rhs.addr.i = alloca i64, align 8
  %this.addr = alloca ptr, align 8
  %__arg.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__arg, ptr %__arg.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__type_name = getelementptr inbounds %"class.std::type_info", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__type_name, align 8
  %1 = load ptr, ptr %__arg.addr, align 8
  %__type_name2 = getelementptr inbounds %"class.std::type_info", ptr %1, i32 0, i32 1
  %2 = load i64, ptr %__type_name2, align 8
  store i64 %0, ptr %__lhs.addr.i, align 8
  store i64 %2, ptr %__rhs.addr.i, align 8
  %3 = load i64, ptr %__lhs.addr.i, align 8
  %4 = load i64, ptr %__rhs.addr.i, align 8
  %cmp.i = icmp eq i64 %3, %4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  store i1 true, ptr %retval.i, align 1
  br label %_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB6v15007Emm.exit

if.end.i:                                         ; preds = %entry
  %5 = load i64, ptr %__lhs.addr.i, align 8
  %call.i = call noundef zeroext i1 @_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl21__is_type_name_uniqueB6v15007Em(i64 noundef %5) #11
  br i1 %call.i, label %if.then2.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %6 = load i64, ptr %__rhs.addr.i, align 8
  %call1.i = call noundef zeroext i1 @_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl21__is_type_name_uniqueB6v15007Em(i64 noundef %6) #11
  br i1 %call1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %lor.lhs.false.i, %if.end.i
  store i1 false, ptr %retval.i, align 1
  br label %_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB6v15007Emm.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %7 = load i64, ptr %__lhs.addr.i, align 8
  store i64 %7, ptr %__v.addr.i3, align 8
  %8 = load i64, ptr %__v.addr.i3, align 8
  %and.i4 = and i64 %8, 9223372036854775807
  %9 = inttoptr i64 %and.i4 to ptr
  %10 = load i64, ptr %__rhs.addr.i, align 8
  store i64 %10, ptr %__v.addr.i, align 8
  %11 = load i64, ptr %__v.addr.i, align 8
  %and.i = and i64 %11, 9223372036854775807
  %12 = inttoptr i64 %and.i to ptr
  %call6.i = call i32 @strcmp(ptr noundef %9, ptr noundef %12) #11
  %cmp7.i = icmp eq i32 %call6.i, 0
  store i1 %cmp7.i, ptr %retval.i, align 1
  br label %_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB6v15007Emm.exit

_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB6v15007Emm.exit: ; preds = %if.then.i, %if.then2.i, %if.end3.i
  %13 = load i1, ptr %retval.i, align 1
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_17__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl21__is_type_name_uniqueB6v15007Em(i64 noundef %__lhs) #3 align 2 {
entry:
  %__lhs.addr = alloca i64, align 8
  store i64 %__lhs, ptr %__lhs.addr, align 8
  %0 = load i64, ptr %__lhs.addr, align 8
  %and = and i64 %0, -9223372036854775808
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemINS_17__compressed_pairIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairINS0_IPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEEEENS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC1B6v15007IiEERKNS0_IT_EE(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load ptr, ptr %.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC2B6v15007IiEERKNS0_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEE10deallocateB6v15007EPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
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
  %mul = mul i64 %1, 32
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %0, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEE10pointer_toB6v15007ERS9_(ptr noundef nonnull align 8 dereferenceable(32) %__r) #3 align 2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC2B6v15007IiEERKNS0_IT_EE(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS1_IiEEEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS1_IiEEEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #9 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %0) #11
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
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #3 {
entry:
  %__align.addr = alloca i64, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %cmp = icmp ugt i64 %0, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #9 {
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
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #9 {
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #3 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  call void @_ZdlPvSt11align_val_t(ptr noundef %0, i64 noundef %1) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #3 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__cntrl_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__cntrl_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__cntrl_2 = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__cntrl_2, align 8
  call void @_ZNSt3__119__shared_weak_count16__release_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__shared_weak_count16__release_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__114__shared_count16__release_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__114__shared_count16__release_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__shared_owners_ = getelementptr inbounds %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %call = call noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_decrementB6v15007IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__shared_owners_) #11
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 2
  %0 = load ptr, ptr %vfn, align 8
  call void %0(ptr noundef nonnull align 8 dereferenceable(16) %this1) #11
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, ptr %retval, align 1
  ret i1 %1
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_decrementB6v15007IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__t) #3 {
entry:
  %__t.addr = alloca ptr, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  store i64 -1, ptr %.atomictmp, align 8
  %1 = load i64, ptr %.atomictmp, align 8
  %2 = atomicrmw add ptr %0, i64 %1 acq_rel, align 8
  %3 = add i64 %2, %1
  store i64 %3, ptr %atomic-temp, align 8
  %4 = load i64, ptr %atomic-temp, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiEC2B6v15007ERKS1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__r) unnamed_addr #2 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__r.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_2, align 8
  store ptr %1, ptr %__ptr_, align 8
  %__cntrl_ = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__r.addr, align 8
  %__cntrl_3 = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__cntrl_3, align 8
  store ptr %3, ptr %__cntrl_, align 8
  %__cntrl_4 = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__cntrl_4, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__cntrl_5 = getelementptr inbounds %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %5 = load ptr, ptr %__cntrl_5, align 8
  call void @_ZNSt3__119__shared_weak_count12__add_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__shared_weak_count12__add_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__114__shared_count12__add_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__shared_count12__add_sharedB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__shared_owners_ = getelementptr inbounds %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %call = call noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_incrementB6v15007IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__shared_owners_) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_incrementB6v15007IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__t) #3 {
entry:
  %__t.addr = alloca ptr, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  store i64 1, ptr %.atomictmp, align 8
  %1 = load i64, ptr %.atomictmp, align 8
  %2 = atomicrmw add ptr %0, i64 %1 monotonic, align 8
  %3 = add i64 %2, %1
  store i64 %3, ptr %atomic-temp, align 8
  %4 = load i64, ptr %atomic-temp, align 8
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__119__shared_weak_count9use_countB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__114__shared_count9use_countB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #11
  ret i64 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__shared_count9use_countB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__shared_owners_ = getelementptr inbounds %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %call = invoke noundef i64 @_ZNSt3__121__libcpp_relaxed_loadB6v15007IlEET_PKS1_(ptr noundef %__shared_owners_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %add = add nsw i64 %call, 1
  ret i64 %add

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__121__libcpp_relaxed_loadB6v15007IlEET_PKS1_(ptr noundef %__value) #3 {
entry:
  %__value.addr = alloca ptr, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %__value, ptr %__value.addr, align 8
  %0 = load ptr, ptr %__value.addr, align 8
  %1 = load atomic i64, ptr %0 monotonic, align 8
  store i64 %1, ptr %atomic-temp, align 8
  %2 = load i64, ptr %atomic-temp, align 8
  ret i64 %2
}

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
