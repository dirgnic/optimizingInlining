; ModuleID = './thesis_attempt/source_snapshot/DCMTK/config/tests/memory.cc'
source_filename = "./thesis_attempt/source_snapshot/DCMTK/config/tests/memory.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::unique_ptr" = type { ptr }
%"class.std::__1::shared_ptr" = type { ptr, ptr }
%"struct.std::__1::shared_ptr<int>::__shared_ptr_default_delete" = type { i8 }
%"class.std::__1::allocator" = type { i8 }
%"class.std::__1::__shared_ptr_pointer" = type { %"class.std::__1::__shared_weak_count", ptr }
%"class.std::__1::__shared_weak_count" = type { %"class.std::__1::__shared_count", i64 }
%"class.std::__1::__shared_count" = type { ptr, i64 }
%"class.std::__1::allocator.3" = type { i8 }
%"class.std::type_info" = type { ptr, i64 }

@_ZTVNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED1Ev, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED0Ev, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE16__on_zero_sharedEv, ptr @_ZNKSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE21__on_zero_shared_weakEv] }, align 8
@_ZTINSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__119__shared_weak_countE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE = linkonce_odr hidden constant [104 x i8] c"NSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE\00", align 1
@_ZTINSt3__119__shared_weak_countE = external constant ptr
@_ZTVNSt3__119__shared_weak_countE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVNSt3__114__shared_countE = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTINSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTINSt3__114default_deleteIiEE }, align 8
@_ZTSNSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE = linkonce_odr hidden constant [57 x i8] c"NSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE\00", align 1
@_ZTINSt3__114default_deleteIiEE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__114default_deleteIiEE to i64), i64 -9223372036854775808) to ptr) }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSNSt3__114default_deleteIiEE = linkonce_odr hidden constant [28 x i8] c"NSt3__114default_deleteIiEE\00", align 1

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca ptr, align 8
  %pp = alloca %"class.std::__1::unique_ptr", align 8
  %cleanup.dest.slot = alloca i32, align 4
  %s_p = alloca %"class.std::__1::shared_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %s_p2 = alloca %"class.std::__1::shared_ptr", align 8
  %s_p3 = alloca %"class.std::__1::shared_ptr", align 8
  store i32 0, ptr %retval, align 4
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef 4) #7
  store i32 55, ptr %call, align 4
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  %call1 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC1B8ne200100ILb1EvEEPi(ptr noundef nonnull align 8 dereferenceable(8) %pp, ptr noundef %0) #8
  %1 = load ptr, ptr %p, align 8
  %2 = load i32, ptr %1, align 4
  %call2 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #8
  %3 = load i32, ptr %call2, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %call3 = call noundef ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #8
  %cmp4 = icmp ne ptr %4, %call3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

if.end6:                                          ; preds = %if.end
  %call7 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE7releaseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #8
  %5 = load ptr, ptr %p, align 8
  %call8 = invoke noundef ptr @_ZNSt3__110shared_ptrIiEC1B8ne200100IiTnNS_9enable_ifIXsr4_AndINS_29__raw_pointer_compatible_withIT_ivEENS_14__is_deletableIPS5_vEEEE5valueEiE4typeELi0EEES8_(ptr noundef nonnull align 8 dereferenceable(16) %s_p, ptr noundef %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end6
  %call9 = call noundef ptr @_ZNSt3__110shared_ptrIiEC1B8ne200100ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %s_p2, ptr noundef nonnull align 8 dereferenceable(16) %s_p) #8
  %call10 = call noundef ptr @_ZNSt3__110shared_ptrIiEC1B8ne200100ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %s_p3, ptr noundef nonnull align 8 dereferenceable(16) %s_p2) #8
  %call11 = call noundef ptr @_ZNKSt3__110shared_ptrIiE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #8
  %call12 = call noundef ptr @_ZNKSt3__110shared_ptrIiE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p3) #8
  %cmp13 = icmp ne ptr %call11, %call12
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %invoke.cont
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.end6
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call32 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #8
  br label %eh.resume

if.end15:                                         ; preds = %invoke.cont
  %call16 = call noundef i64 @_ZNKSt3__110shared_ptrIiE9use_countB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #8
  %cmp17 = icmp ne i64 %call16, 3
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110shared_ptrIiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #8
  %9 = load i32, ptr %call20, align 4
  %call21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110shared_ptrIiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p3) #8
  %10 = load i32, ptr %call21, align 4
  %cmp22 = icmp ne i32 %9, %10
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then18, %if.then14
  %call25 = call noundef ptr @_ZNSt3__110shared_ptrIiED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p3) #8
  %call27 = call noundef ptr @_ZNSt3__110shared_ptrIiED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p2) #8
  %call29 = call noundef ptr @_ZNSt3__110shared_ptrIiED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %s_p) #8
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup, %if.then5, %if.then
  %call31 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %pp) #8
  %11 = load i32, ptr %retval, align 4
  ret i32 %11

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val33 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val33
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC1B8ne200100ILb1EvEEPi(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC2B8ne200100ILb1EvEEPi(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrIiNS_14default_deleteIiEEE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE7releaseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110shared_ptrIiEC1B8ne200100IiTnNS_9enable_ifIXsr4_AndINS_29__raw_pointer_compatible_withIT_ivEENS_14__is_deletableIPS5_vEEEE5valueEiE4typeELi0EEES8_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__p) unnamed_addr #3 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__110shared_ptrIiEC2B8ne200100IiTnNS_9enable_ifIXsr4_AndINS_29__raw_pointer_compatible_withIT_ivEENS_14__is_deletableIPS5_vEEEE5valueEiE4typeELi0EEES8_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  ret ptr %this1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiEC1B8ne200100ERKS1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__r) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  %call = call noundef ptr @_ZNSt3__110shared_ptrIiEC2B8ne200100ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__110shared_ptrIiE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__110shared_ptrIiE9use_countB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cntrl_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__cntrl_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %__cntrl_2 = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__cntrl_2, align 8
  %call = call noundef i64 @_ZNKSt3__119__shared_weak_count9use_countB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110shared_ptrIiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110shared_ptrIiED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC2B8ne200100ILb1EvEEPi(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE5resetB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef null) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE5resetB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #2 {
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
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNKSt3__114default_deleteIiEclB8ne200100EPi(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__114default_deleteIiEclB8ne200100EPi(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) #2 {
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
  call void @_ZdlPvm(ptr noundef %0, i64 noundef 4) #9
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110shared_ptrIiEC2B8ne200100IiTnNS_9enable_ifIXsr4_AndINS_29__raw_pointer_compatible_withIT_ivEENS_14__is_deletableIPS5_vEEEE5valueEiE4typeELi0EEES8_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__p) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
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
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEEC1B8ne200100ILb1EvEEPi(ptr noundef nonnull align 8 dereferenceable(8) %__hold, ptr noundef %1) #8
  %call2 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 32) #7
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %2 = load ptr, ptr %__p.addr, align 8
  %call4 = call noundef ptr @_ZNSt3__19allocatorIiEC1B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %agg.tmp3) #8
  %call7 = invoke noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC1B8ne200100ES1_S5_S7_(ptr noundef nonnull align 8 dereferenceable(32) %call2, ptr noundef %2)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  %__cntrl_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  store ptr %call2, ptr %__cntrl_, align 8
  %call8 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEE7releaseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__hold) #8
  %3 = load ptr, ptr %__p.addr, align 8
  %4 = load ptr, ptr %__p.addr, align 8
  call void (ptr, ...) @_ZNSt3__110shared_ptrIiE18__enable_weak_thisB8ne200100Ez(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %3, ptr noundef %4) #8
  %call9 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__hold) #8
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
  call void @_ZdlPvm(ptr noundef %call2, i64 noundef 32) #9
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad5, %lpad
  %call10 = call noundef ptr @_ZNSt3__110unique_ptrIiNS_14default_deleteIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__hold) #8
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC1B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC1B8ne200100ES1_S5_S7_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef %__p) unnamed_addr #3 {
entry:
  %__d = alloca %"struct.std::__1::shared_ptr<int>::__shared_ptr_default_delete", align 1
  %__a = alloca %"class.std::__1::allocator", align 1
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this2 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC2B8ne200100ES1_S5_S7_(ptr noundef nonnull align 8 dereferenceable(32) %this2, ptr noundef %0)
  ret ptr %this2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110shared_ptrIiE18__enable_weak_thisB8ne200100Ez(ptr noundef nonnull align 8 dereferenceable(16) %this, ...) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEC2B8ne200100ES1_S5_S7_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef %__p) unnamed_addr #2 {
entry:
  %__d = alloca %"struct.std::__1::shared_ptr<int>::__shared_ptr_default_delete", align 1
  %__a = alloca %"class.std::__1::allocator", align 1
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this2 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__shared_weak_countC2B8ne200100El(ptr noundef nonnull align 8 dereferenceable(24) %this2, i64 noundef 0) #8
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEE, i32 0, i32 0, i32 2), ptr %this2, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__shared_ptr_pointer", ptr %this2, i32 0, i32 1
  %0 = load ptr, ptr %__p.addr, align 8
  store ptr %0, ptr %__ptr_, align 8
  ret ptr %this2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119__shared_weak_countC2B8ne200100El(ptr noundef nonnull returned align 8 dereferenceable(24) %this, i64 noundef %__refs) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__refs.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__refs, ptr %__refs.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__refs.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__shared_countC2B8ne200100El(ptr noundef nonnull align 8 dereferenceable(16) %this1, i64 noundef %0) #8
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVNSt3__119__shared_weak_countE, i32 0, i32 0, i32 2), ptr %this1, align 8
  %__shared_weak_owners_ = getelementptr inbounds nuw %"class.std::__1::__shared_weak_count", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__refs.addr, align 8
  store i64 %1, ptr %__shared_weak_owners_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #8
  call void @_ZdlPvm(ptr noundef %this1, i64 noundef 32) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__shared_ptr_pointer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__ptr_, align 8
  call void @_ZNKSt3__114default_deleteIiEclB8ne200100EPi(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__t) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt9type_infoeqB8ne200100ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @_ZTINSt3__110shared_ptrIiE27__shared_ptr_default_deleteIiiEE) #8
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %this1, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a = alloca %"class.std::__1::allocator.3", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC1B8ne200100IiEERKNS0_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef nonnull align 1 dereferenceable(1) %this1) #8
  %call2 = call noundef ptr @_ZNSt3__114pointer_traitsIPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEE10pointer_toB8ne200100ERS9_(ptr noundef nonnull align 8 dereferenceable(32) %this1) #8
  call void @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEE10deallocateB8ne200100EPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %call2, i64 noundef 1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__shared_countC2B8ne200100El(ptr noundef nonnull returned align 8 dereferenceable(16) %this, i64 noundef %__refs) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__refs.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__refs, ptr %__refs.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVNSt3__114__shared_countE, i32 0, i32 0, i32 2), ptr %this1, align 8
  %__shared_owners_ = getelementptr inbounds nuw %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__refs.addr, align 8
  store i64 %0, ptr %__shared_owners_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__120__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #8
  ret ptr %this1
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt9type_infoeqB8ne200100ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__arg) #2 {
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
  %__type_name = getelementptr inbounds nuw %"class.std::type_info", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__type_name, align 8
  %1 = load ptr, ptr %__arg.addr, align 8
  %__type_name2 = getelementptr inbounds nuw %"class.std::type_info", ptr %1, i32 0, i32 1
  %2 = load i64, ptr %__type_name2, align 8
  store i64 %0, ptr %__lhs.addr.i, align 8
  store i64 %2, ptr %__rhs.addr.i, align 8
  %3 = load i64, ptr %__lhs.addr.i, align 8
  %4 = load i64, ptr %__rhs.addr.i, align 8
  %cmp.i = icmp eq i64 %3, %4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  store i1 true, ptr %retval.i, align 1
  br label %_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB8ne200100Emm.exit

if.end.i:                                         ; preds = %entry
  %5 = load i64, ptr %__lhs.addr.i, align 8
  %call.i = call noundef zeroext i1 @_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl21__is_type_name_uniqueB8ne200100Em(i64 noundef %5) #8
  br i1 %call.i, label %if.then2.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %6 = load i64, ptr %__rhs.addr.i, align 8
  %call1.i = call noundef zeroext i1 @_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl21__is_type_name_uniqueB8ne200100Em(i64 noundef %6) #8
  br i1 %call1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %lor.lhs.false.i, %if.end.i
  store i1 false, ptr %retval.i, align 1
  br label %_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB8ne200100Emm.exit

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
  %call6.i = call i32 @strcmp(ptr noundef %9, ptr noundef %12) #8
  %cmp7.i = icmp eq i32 %call6.i, 0
  store i1 %cmp7.i, ptr %retval.i, align 1
  br label %_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB8ne200100Emm.exit

_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl4__eqB8ne200100Emm.exit: ; preds = %if.then.i, %if.then2.i, %if.end3.i
  %13 = load i1, ptr %retval.i, align 1
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt27__type_info_implementations30__non_unique_arm_rtti_bit_impl21__is_type_name_uniqueB8ne200100Em(i64 noundef %__lhs) #2 {
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
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC1B8ne200100IiEERKNS0_IT_EE(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load ptr, ptr %.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC2B8ne200100IiEERKNS0_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEE10deallocateB8ne200100EPS8_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #2 {
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
  call void @_ZNSt3__119__libcpp_deallocateB8ne200100INS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %0, i64 noundef %1, i64 noundef 8) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsIPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEE10pointer_toB8ne200100ERS9_(ptr noundef nonnull align 8 dereferenceable(32) %__r) #2 {
entry:
  %__r.addr = alloca ptr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %0 = load ptr, ptr %__r.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__19allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS0_IiEEEEEC2B8ne200100IiEERKNS0_IT_EE(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS1_IiEEEEEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS1_IiEEEEEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB8ne200100INS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %__ptr, i64 noundef %__n, i64 noundef %__align) #2 {
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
  %mul = mul i64 %0, 32
  store i64 %mul, ptr %__size, align 8
  %1 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %1) #8
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__align.addr, align 8
  store i64 %2, ptr %__align_val, align 8
  %3 = load ptr, ptr %__ptr.addr, align 8
  %4 = load i64, ptr %__size, align 8
  %5 = load i64, ptr %__align_val, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEmSt11align_val_tEEEvDpT_(ptr noundef %3, i64 noundef %4, i64 noundef %5) #8
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__ptr.addr, align 8
  %7 = load i64, ptr %__size, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEmEEEvDpT_(ptr noundef %6, i64 noundef %7) #8
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %__align) #2 {
entry:
  %__align.addr = alloca i64, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %cmp = icmp ugt i64 %0, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEmSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1, i64 noundef %__args3) #2 {
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
  call void @_ZdlPvmSt11align_val_t(ptr noundef %0, i64 noundef %1, i64 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPNS_20__shared_ptr_pointerIPiNS_10shared_ptrIiE27__shared_ptr_default_deleteIiiEENS_9allocatorIiEEEEmEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #2 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  call void @_ZdlPvm(ptr noundef %0, i64 noundef %1) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__cntrl_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__cntrl_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__cntrl_2 = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__cntrl_2, align 8
  call void @_ZNSt3__119__shared_weak_count16__release_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__shared_weak_count16__release_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__114__shared_count16__release_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #8
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__114__shared_count16__release_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__shared_owners_ = getelementptr inbounds nuw %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %call = call noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_decrementB8ne200100IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__shared_owners_) #8
  %cmp = icmp eq i64 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %this1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 2
  %0 = load ptr, ptr %vfn, align 8
  call void %0(ptr noundef nonnull align 8 dereferenceable(16) %this1) #8
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
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_decrementB8ne200100IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__t) #2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110shared_ptrIiEC2B8ne200100ERKS1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__r) unnamed_addr #2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__r.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__r, ptr %__r.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__r.addr, align 8
  %__ptr_2 = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__ptr_2, align 8
  store ptr %1, ptr %__ptr_, align 8
  %__cntrl_ = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__r.addr, align 8
  %__cntrl_3 = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__cntrl_3, align 8
  store ptr %3, ptr %__cntrl_, align 8
  %__cntrl_4 = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__cntrl_4, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__cntrl_5 = getelementptr inbounds nuw %"class.std::__1::shared_ptr", ptr %this1, i32 0, i32 1
  %5 = load ptr, ptr %__cntrl_5, align 8
  call void @_ZNSt3__119__shared_weak_count12__add_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__shared_weak_count12__add_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__114__shared_count12__add_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__shared_count12__add_sharedB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__shared_owners_ = getelementptr inbounds nuw %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %call = call noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_incrementB8ne200100IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__shared_owners_) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__134__libcpp_atomic_refcount_incrementB8ne200100IlEET_RS1_(ptr noundef nonnull align 8 dereferenceable(8) %__t) #2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__119__shared_weak_count9use_countB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__114__shared_count9use_countB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1) #8
  ret i64 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__shared_count9use_countB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__shared_owners_ = getelementptr inbounds nuw %"class.std::__1::__shared_count", ptr %this1, i32 0, i32 1
  %call = invoke noundef i64 @_ZNSt3__121__libcpp_relaxed_loadB8ne200100IlEET_PKS1_(ptr noundef %__shared_owners_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %add = add nsw i64 %call, 1
  ret i64 %add

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__121__libcpp_relaxed_loadB8ne200100IlEET_PKS1_(ptr noundef %__value) #2 {
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

; Function Attrs: noinline noreturn nounwind ssp uwtable(sync)
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #6 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #8
  call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
