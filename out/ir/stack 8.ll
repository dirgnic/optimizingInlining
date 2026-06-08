; ModuleID = './thesis_attempt/source_snapshot/DCMTK/config/tests/stack.cc'
source_filename = "./thesis_attempt/source_snapshot/DCMTK/config/tests/stack.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::stack" = type { %"class.std::__1::deque" }
%"class.std::__1::deque" = type { %"struct.std::__1::__split_buffer", i64, i64 }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, ptr }
%"class.std::__1::__deque_iterator" = type { ptr, ptr }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::is_trivially_destructible" = type { i8 }
%"struct.std::__1::integral_constant.3" = type { i8 }
%"struct.std::__1::__split_buffer.7" = type { ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::unique_ptr" = type { ptr, %"class.std::__1::__allocator_destructor" }
%"class.std::__1::__allocator_destructor" = type { ptr, i64 }
%"class.std::__1::move_iterator" = type { ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::pair" = type { ptr, ptr }
%"struct.std::__1::__move_impl" = type { i8 }
%"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::random_access_iterator_tag" = type { i8 }
%"struct.std::__1::__move_backward_impl" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }

@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %"class.std::__1::stack", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %ref.tmp3 = alloca i32, align 4
  %ref.tmp5 = alloca i32, align 4
  %ref.tmp9 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %s) #10
  %call1 = invoke noundef zeroext i1 @_ZNKSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %invoke.cont10, %invoke.cont8, %invoke.cont7, %invoke.cont6, %invoke.cont4, %invoke.cont2, %if.end, %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call16 = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %s) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont
  store i32 1, ptr %ref.tmp, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %if.end
  store i32 2, ptr %ref.tmp3, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  store i32 3, ptr %ref.tmp5, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont7
  store i32 42, ptr %ref.tmp9, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp9)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont8
  %call12 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3topB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %invoke.cont10
  %3 = load i32, ptr %call12, align 4
  %cmp = icmp ne i32 %3, 42
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %invoke.cont11
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %invoke.cont11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  %call15 = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %s) #10
  %4 = load i32, ptr %retval, align 4
  ret i32 %4

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val17 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val17
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds nuw %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef zeroext i1 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %c) #10
  ret i1 %call
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds nuw %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__v.addr, align 8
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(48) %c, ptr noundef nonnull align 4 dereferenceable(4) %0)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds nuw %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(48) %c)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3topB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds nuw %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE4backEv(ptr noundef nonnull align 8 dereferenceable(48) %c) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds nuw %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %c) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__i = alloca ptr, align 8
  %__e = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #10
  store ptr %call, ptr %__i, align 8
  %__map_2 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call3 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_2) #10
  store ptr %call3, ptr %__e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %__i, align 8
  %1 = load ptr, ptr %__e, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE7__allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %2 = load ptr, ptr %__i, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %call4, ptr noundef %3, i64 noundef 1024) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %__i, align 8
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %__map_5 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call6 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_5) #10
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__15dequeIiNS_9allocatorIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__i = alloca %"class.std::__1::__deque_iterator", align 8
  %__e = alloca %"class.std::__1::__deque_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE7__allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store ptr %call, ptr %__a, align 8
  %call2 = call [2 x i64] @_ZNSt3__15dequeIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store [2 x i64] %call2, ptr %__i, align 8
  %call3 = call [2 x i64] @_ZNSt3__15dequeIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store [2 x i64] %call3, ptr %__e, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont8, %entry
  %call4 = invoke noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %__i, ptr noundef nonnull align 8 dereferenceable(16) %__e)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %for.cond
  br i1 %call4, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %0 = load ptr, ptr %__a, align 8
  %call6 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %__i)
          to label %invoke.cont5 unwind label %terminate.lpad

invoke.cont5:                                     ; preds = %for.body
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiTnNS_9enable_ifIXsr13__has_destroyIS2_PT_EE5valueEiE4typeELi0EEEvRS2_S7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call6)
          to label %invoke.cont7 unwind label %terminate.lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont7
  %call9 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %__i)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %for.inc
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %invoke.cont
  %call10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE6__sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store i64 0, ptr %call10, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont17, %for.end
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call12 = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %while.cond
  %cmp = icmp ugt i64 %call12, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont11
  %1 = load ptr, ptr %__a, align 8
  %__map_13 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_13)
          to label %invoke.cont14 unwind label %terminate.lpad

invoke.cont14:                                    ; preds = %while.body
  %2 = load ptr, ptr %call15, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 noundef 1024) #10
  %__map_16 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  invoke void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_16)
          to label %invoke.cont17 unwind label %terminate.lpad

invoke.cont17:                                    ; preds = %invoke.cont14
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %invoke.cont11
  %__map_18 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call20 = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_18)
          to label %invoke.cont19 unwind label %terminate.lpad

invoke.cont19:                                    ; preds = %while.end
  switch i64 %call20, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb21
  ]

sw.bb:                                            ; preds = %invoke.cont19
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  store i64 512, ptr %__start_, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %invoke.cont19
  %__start_22 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  store i64 1024, ptr %__start_22, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %invoke.cont19, %sw.bb21, %sw.bb
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(48) %this1, i64 noundef 0) #10
  ret void

terminate.lpad:                                   ; preds = %while.end, %invoke.cont14, %while.body, %while.cond, %for.inc, %invoke.cont5, %for.body, %for.cond
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__19allocatorIiE10deallocateB8ne200100EPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE7__allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__15dequeIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::__deque_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__mp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #10
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %div = udiv i64 %0, 1024
  %add.ptr = getelementptr inbounds nuw ptr, ptr %call, i64 %div
  store ptr %add.ptr, ptr %__mp, align 8
  %1 = load ptr, ptr %__mp, align 8
  %__map_2 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call3 = invoke noundef zeroext i1 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont
  %2 = load ptr, ptr %__mp, align 8
  %3 = load ptr, ptr %2, align 8
  %__start_4 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %4 = load i64, ptr %__start_4, align 8
  %rem = urem i64 %4, 1024
  %add.ptr5 = getelementptr inbounds nuw i32, ptr %3, i64 %rem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr5, %cond.false ]
  %call6 = call noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC1B8ne200100ES3_S1_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef %1, ptr noundef %cond) #10
  %5 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %5

terminate.lpad:                                   ; preds = %entry
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__15dequeIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__deque_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__p = alloca i64, align 8
  %__mp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %add = add i64 %call, %0
  store i64 %add, ptr %__p, align 8
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call2 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #10
  %1 = load i64, ptr %__p, align 8
  %div = udiv i64 %1, 1024
  %add.ptr = getelementptr inbounds nuw ptr, ptr %call2, i64 %div
  store ptr %add.ptr, ptr %__mp, align 8
  %2 = load ptr, ptr %__mp, align 8
  %__map_3 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call4 = call noundef zeroext i1 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_3)
  br i1 %call4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %__mp, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %__p, align 8
  %rem = urem i64 %5, 1024
  %add.ptr5 = getelementptr inbounds nuw i32, ptr %4, i64 %rem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr5, %cond.false ]
  %call6 = call noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC1B8ne200100ES3_S1_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef %2, ptr noundef %cond) #10
  %6 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB8ne200100ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
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
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiTnNS_9enable_ifIXsr13__has_destroyIS2_PT_EE5valueEiE4typeELi0EEEvRS2_S7_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorIiE7destroyB8ne200100EPi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__ptr_, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %__ptr_, align 8
  %__m_iter_ = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__m_iter_, align 8
  %2 = load ptr, ptr %1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp eq i64 %sub.ptr.div, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__m_iter_2 = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__m_iter_2, align 8
  %incdec.ptr3 = getelementptr inbounds nuw ptr, ptr %3, i32 1
  store ptr %incdec.ptr3, ptr %__m_iter_2, align 8
  %__m_iter_4 = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__m_iter_4, align 8
  %5 = load ptr, ptr %4, align 8
  %__ptr_5 = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  store ptr %5, ptr %__ptr_5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE6__sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 2
  ret ptr %__size_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 1
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE19__destruct_at_beginB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(48) %this, i64 noundef %__current_size) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__current_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__begin_, align 8
  %cmp = icmp eq ptr %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC1B8ne200100ES3_S1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__m, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__m, ptr %__m.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__m.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC2B8ne200100ES3_S1_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, ptr noundef %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC2B8ne200100ES3_S1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__m, ptr noundef %__p) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__m, ptr %__m.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__m_iter_ = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__m.addr, align 8
  store ptr %0, ptr %__m_iter_, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__p.addr, align 8
  store ptr %1, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__15dequeIiNS_9allocatorIiEEE6__sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %0 = load i64, ptr %call, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__15dequeIiNS_9allocatorIiEEE6__sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 2
  ret ptr %__size_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB8ne200100ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds nuw %"class.std::__1::__deque_iterator", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE7destroyB8ne200100EPi(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE19__destruct_at_beginB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_begin) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_begin.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  %ref.tmp = alloca %"struct.std::__1::is_trivially_destructible", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_begin, ptr %__new_begin.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_begin.addr, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE19__destruct_at_beginEPS1_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE19__destruct_at_beginEPS1_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_begin) #1 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant", align 1
  %this.addr = alloca ptr, align 8
  %__new_begin.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_begin, ptr %__new_begin.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load ptr, ptr %__new_begin.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr %1, ptr %__begin_, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE10deallocateB8ne200100EPim(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %0, i64 noundef %1, i64 noundef 4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %__ptr, i64 noundef %__n, i64 noundef %__align) #1 {
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
  %mul = mul i64 %0, 4
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
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPimSt11align_val_tEEEvDpT_(ptr noundef %3, i64 noundef %4, i64 noundef %5) #10
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__ptr.addr, align 8
  %7 = load i64, ptr %__size, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPimEEEvDpT_(ptr noundef %6, i64 noundef %7) #10
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPimSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1, i64 noundef %__args3) #1 {
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPimEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #1 {
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
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #10
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__first_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_2, align 8
  %call = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE10deallocateB8ne200100ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %1, i64 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE10deallocateB8ne200100ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__19allocatorIPiE10deallocateB8ne200100EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %__cap_, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_last) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant.3", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_last) #1 personality ptr @__gxx_personality_v0 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant.3", align 1
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %__end_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %incdec.ptr) #10
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE7destroyB8ne200100IS2_TnNS_9enable_ifIXsr13__has_destroyIS3_PT_EE5valueEiE4typeELi0EEEvRS3_S8_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #11
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE7destroyB8ne200100IS2_TnNS_9enable_ifIXsr13__has_destroyIS3_PT_EE5valueEiE4typeELi0EEEvRS3_S8_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorIPiE7destroyB8ne200100EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIPiE7destroyB8ne200100EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIPiE10deallocateB8ne200100EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__119__libcpp_deallocateB8ne200100IPiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %0, i64 noundef %1, i64 noundef 8) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB8ne200100IPiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %__ptr, i64 noundef %__n, i64 noundef %__align) #1 {
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
  %mul = mul i64 %0, 8
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
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPPimSt11align_val_tEEEvDpT_(ptr noundef %3, i64 noundef %4, i64 noundef %5) #10
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__ptr.addr, align 8
  %7 = load i64, ptr %__size, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPPimEEEvDpT_(ptr noundef %6, i64 noundef %7) #10
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPPimSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1, i64 noundef %__args3) #1 {
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPPimEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #1 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds nuw %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %c) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #10
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  store i64 0, ptr %__start_, align 8
  %__size_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 2
  store i64 0, ptr %__size_, align 8
  %call2 = call noundef ptr @_ZNSt3__19allocatorIiEC1B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(48) %this1, i64 noundef 0) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC1B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr null, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  store ptr null, ptr %__cap_, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIPiEC1B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIPiEC1B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIPiEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIPiEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPiEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPiEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE5emptyB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %cmp = icmp eq i64 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__15dequeIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::__deque_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE7__allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %cmp = icmp eq i64 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE24__annotate_increase_backB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(48) %this1, i64 noundef 1) #10
  %0 = load ptr, ptr %__a, align 8
  %call3 = call [2 x i64] @_ZNSt3__15dequeIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store [2 x i64] %call3, ptr %ref.tmp, align 8
  %call4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %1 = load ptr, ptr %__v.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiETnNS_9enable_ifIXsr15__has_constructIS2_PT_DpT0_EE5valueEiE4typeELi0EEEvRS2_S7_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call4, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE6__sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %2 = load i64, ptr %call5, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %call5, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE10__capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %call2 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %add = add i64 %0, %call2
  %sub = sub i64 %call, %add
  ret i64 %sub
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__pt = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp20 = alloca ptr, align 8
  %__pt22 = alloca ptr, align 8
  %__buf = alloca %"struct.std::__1::__split_buffer.7", align 8
  %ref.tmp31 = alloca i64, align 8
  %ref.tmp34 = alloca i64, align 8
  %__hold = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp41 = alloca %"class.std::__1::__allocator_destructor", align 8
  %ref.tmp44 = alloca ptr, align 8
  %__i = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE7__allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE13__front_spareB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %cmp = icmp uge i64 %call2, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %sub = sub i64 %0, 1024
  store i64 %sub, ptr %__start_, align 8
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
  %1 = load ptr, ptr %call3, align 8
  store ptr %1, ptr %__pt, align 8
  %__map_4 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_4)
  %__map_5 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12emplace_backIJRS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %__map_5, ptr noundef nonnull align 8 dereferenceable(8) %__pt)
  br label %if.end71

if.else:                                          ; preds = %entry
  %__map_6 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call7 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_6)
  %__map_8 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call9 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_8)
  %cmp10 = icmp ult i64 %call7, %call9
  br i1 %cmp10, label %if.then11, label %if.else30

if.then11:                                        ; preds = %if.else
  %__map_12 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call13 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12__back_spareB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_12)
  %cmp14 = icmp ne i64 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.then11
  %__map_16 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__a, align 8
  %call17 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB8ne200100ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1024)
  store ptr %call17, ptr %ref.tmp, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %__map_16, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  br label %if.end

if.else18:                                        ; preds = %if.then11
  %__map_19 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__a, align 8
  %call21 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB8ne200100ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1024)
  store ptr %call21, ptr %ref.tmp20, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE13emplace_frontIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %__map_19, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp20)
  %__map_23 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_23)
  %4 = load ptr, ptr %call24, align 8
  store ptr %4, ptr %__pt22, align 8
  %__map_25 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_25)
  %__map_26 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12emplace_backIJRS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %__map_26, ptr noundef nonnull align 8 dereferenceable(8) %__pt22)
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then15
  %__map_27 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call28 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_27)
  %sub29 = sub i64 %call28, 1
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE22__annotate_whole_blockB8ne200100EmNS3_22__asan_annotation_typeE(ptr noundef nonnull align 8 dereferenceable(48) %this1, i64 noundef %sub29, i32 noundef 1) #10
  br label %if.end70

if.else30:                                        ; preds = %if.else
  %__map_32 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call33 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_32)
  %mul = mul i64 2, %call33
  store i64 %mul, ptr %ref.tmp31, align 8
  store i64 1, ptr %ref.tmp34, align 8
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp31, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp34)
  %5 = load i64, ptr %call35, align 8
  %__map_36 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call37 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_36)
  %__map_38 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call39 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__buf, i64 noundef %5, i64 noundef %call37, ptr noundef nonnull align 1 dereferenceable(1) %__map_38)
  %6 = load ptr, ptr %__a, align 8
  %call40 = invoke noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB8ne200100ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %6, i64 noundef 1024)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else30
  %7 = load ptr, ptr %__a, align 8
  %call42 = call noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC1B8ne200100ERS2_m(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp41, ptr noundef nonnull align 1 dereferenceable(1) %7, i64 noundef 1024) #10
  %call43 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC1B8ne200100ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %__hold, ptr noundef %call40, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp41) #10
  %call45 = call noundef ptr @_ZNKSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #10
  store ptr %call45, ptr %ref.tmp44, align 8
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %__buf, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp44)
          to label %invoke.cont47 unwind label %lpad46

invoke.cont47:                                    ; preds = %invoke.cont
  %call48 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE7releaseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #10
  %__map_49 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call50 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_49) #10
  store ptr %call50, ptr %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont54, %invoke.cont47
  %8 = load ptr, ptr %__i, align 8
  %__map_51 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call52 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_51) #10
  %cmp53 = icmp ne ptr %8, %call52
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %__i, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %9, i32 -1
  store ptr %incdec.ptr, ptr %__i, align 8
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE13emplace_frontIJRS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %__buf, ptr noundef nonnull align 8 dereferenceable(8) %incdec.ptr)
          to label %invoke.cont54 unwind label %lpad46

invoke.cont54:                                    ; preds = %for.body
  br label %for.cond, !llvm.loop !11

lpad:                                             ; preds = %if.else30
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad46:                                           ; preds = %for.body, %invoke.cont
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %exn.slot, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %ehselector.slot, align 4
  %call67 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #10
  br label %ehcleanup

for.end:                                          ; preds = %for.cond
  %__map_55 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %__map_55, i32 0, i32 0
  %__first_56 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__buf, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_, ptr noundef nonnull align 8 dereferenceable(8) %__first_56) #10
  %__map_57 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %__map_57, i32 0, i32 1
  %__begin_58 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__buf, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_, ptr noundef nonnull align 8 dereferenceable(8) %__begin_58) #10
  %__map_59 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %__map_59, i32 0, i32 2
  %__end_60 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__buf, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_, ptr noundef nonnull align 8 dereferenceable(8) %__end_60) #10
  %__map_61 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %__map_61, i32 0, i32 3
  %__cap_62 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__buf, i32 0, i32 3
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_, ptr noundef nonnull align 8 dereferenceable(8) %__cap_62) #10
  %__map_63 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call64 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_63)
  %sub65 = sub i64 %call64, 1
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE22__annotate_whole_blockB8ne200100EmNS3_22__asan_annotation_typeE(ptr noundef nonnull align 8 dereferenceable(48) %this1, i64 noundef %sub65, i32 noundef 1) #10
  %call66 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #10
  %call68 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__buf) #10
  br label %if.end70

ehcleanup:                                        ; preds = %lpad46, %lpad
  %call69 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__buf) #10
  br label %eh.resume

if.end70:                                         ; preds = %for.end, %if.end
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then
  ret void

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val72 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val72
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE24__annotate_increase_backB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(48) %this, i64 noundef %__n) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiETnNS_9enable_ifIXsr15__has_constructIS2_PT_DpT0_EE5valueEiE4typeELi0EEEvRS2_S7_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 {
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
  call void @_ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE10__capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %__map_2 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_2)
  %mul = mul i64 %call3, 1024
  %sub = sub i64 %mul, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE13__front_spareB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12emplace_backIJRS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp19 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.7", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp25 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %1 = load ptr, ptr %__cap_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__first_, align 8
  %cmp2 = icmp ugt ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__begin_4 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__begin_4, align 8
  %__first_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__first_5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__d, align 8
  %6 = load i64, ptr %__d, align 8
  %add = add nsw i64 %6, 1
  %div = sdiv i64 %add, 2
  store i64 %div, ptr %__d, align 8
  %__begin_6 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__begin_8 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__begin_8, align 8
  %10 = load i64, ptr %__d, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.neg
  %call = call noundef ptr @_ZNSt3__14moveB8ne200100IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__end_9 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr %call, ptr %__end_9, align 8
  %11 = load i64, ptr %__d, align 8
  %__begin_10 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %12 = load ptr, ptr %__begin_10, align 8
  %idx.neg11 = sub i64 0, %11
  %add.ptr12 = getelementptr inbounds ptr, ptr %12, i64 %idx.neg11
  store ptr %add.ptr12, ptr %__begin_10, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %__cap_13 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %13 = load ptr, ptr %__cap_13, align 8
  %__first_14 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_14, align 8
  %sub.ptr.lhs.cast15 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast16 = ptrtoint ptr %14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 8
  %mul = mul i64 2, %sub.ptr.div18
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp19, align 8
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp19)
  %15 = load i64, ptr %call20, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %div21 = udiv i64 %17, 4
  %call22 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div21, ptr noundef nonnull align 1 dereferenceable(1) %this1)
  %__begin_23 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_23, align 8
  %call24 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_26 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_26, align 8
  %call28 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp25, ptr noundef %19)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive29 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp25, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi30 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi30)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont27
  %__first_32 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %__first_33 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_32, ptr noundef nonnull align 8 dereferenceable(8) %__first_33) #10
  %__begin_34 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %__begin_35 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_34, ptr noundef nonnull align 8 dereferenceable(8) %__begin_35) #10
  %__end_36 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %__end_37 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_36, ptr noundef nonnull align 8 dereferenceable(8) %__end_37) #10
  %__cap_38 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %__cap_39 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 3
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_38, ptr noundef nonnull align 8 dereferenceable(8) %__cap_39) #10
  %call40 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %if.end

lpad:                                             ; preds = %invoke.cont27, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call41 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont31, %if.then3
  br label %if.end42

if.end42:                                         ; preds = %if.end, %entry
  %__end_43 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %25 = load ptr, ptr %__end_43, align 8
  %call44 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %25) #10
  %26 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JRS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S9_DpOSA_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call44, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__end_45 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %27 = load ptr, ptr %__end_45, align 8
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %__end_45, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val46 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val46
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12__back_spareB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %__cap_, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__end_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp19 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.7", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp25 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %1 = load ptr, ptr %__cap_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__first_, align 8
  %cmp2 = icmp ugt ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__begin_4 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__begin_4, align 8
  %__first_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__first_5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__d, align 8
  %6 = load i64, ptr %__d, align 8
  %add = add nsw i64 %6, 1
  %div = sdiv i64 %add, 2
  store i64 %div, ptr %__d, align 8
  %__begin_6 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__begin_8 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__begin_8, align 8
  %10 = load i64, ptr %__d, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.neg
  %call = call noundef ptr @_ZNSt3__14moveB8ne200100IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__end_9 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr %call, ptr %__end_9, align 8
  %11 = load i64, ptr %__d, align 8
  %__begin_10 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %12 = load ptr, ptr %__begin_10, align 8
  %idx.neg11 = sub i64 0, %11
  %add.ptr12 = getelementptr inbounds ptr, ptr %12, i64 %idx.neg11
  store ptr %add.ptr12, ptr %__begin_10, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %__cap_13 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %13 = load ptr, ptr %__cap_13, align 8
  %__first_14 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_14, align 8
  %sub.ptr.lhs.cast15 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast16 = ptrtoint ptr %14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 8
  %mul = mul i64 2, %sub.ptr.div18
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp19, align 8
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp19)
  %15 = load i64, ptr %call20, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %div21 = udiv i64 %17, 4
  %call22 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div21, ptr noundef nonnull align 1 dereferenceable(1) %this1)
  %__begin_23 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_23, align 8
  %call24 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_26 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_26, align 8
  %call28 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp25, ptr noundef %19)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive29 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp25, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi30 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi30)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont27
  %__first_32 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %__first_33 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_32, ptr noundef nonnull align 8 dereferenceable(8) %__first_33) #10
  %__begin_34 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %__begin_35 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_34, ptr noundef nonnull align 8 dereferenceable(8) %__begin_35) #10
  %__end_36 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %__end_37 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_36, ptr noundef nonnull align 8 dereferenceable(8) %__end_37) #10
  %__cap_38 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %__cap_39 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 3
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_38, ptr noundef nonnull align 8 dereferenceable(8) %__cap_39) #10
  %call40 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %if.end

lpad:                                             ; preds = %invoke.cont27, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call41 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont31, %if.then3
  br label %if.end42

if.end42:                                         ; preds = %if.end, %entry
  %__end_43 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %25 = load ptr, ptr %__end_43, align 8
  %call44 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %25) #10
  %26 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S8_DpOS9_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call44, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__end_45 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %27 = load ptr, ptr %__end_45, align 8
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %__end_45, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val46 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val46
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB8ne200100ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE13emplace_frontIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp18 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.7", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp25 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %3 = load ptr, ptr %__cap_, align 8
  %cmp2 = icmp ult ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__cap_4 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %4 = load ptr, ptr %__cap_4, align 8
  %__end_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %5 = load ptr, ptr %__end_5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__d, align 8
  %6 = load i64, ptr %__d, align 8
  %add = add nsw i64 %6, 1
  %div = sdiv i64 %add, 2
  store i64 %div, ptr %__d, align 8
  %__begin_6 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__end_8 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %9 = load ptr, ptr %__end_8, align 8
  %10 = load i64, ptr %__d, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %10
  %call = call noundef ptr @_ZNSt3__113move_backwardB8ne200100IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__begin_9 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr %call, ptr %__begin_9, align 8
  %11 = load i64, ptr %__d, align 8
  %__end_10 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %12 = load ptr, ptr %__end_10, align 8
  %add.ptr11 = getelementptr inbounds ptr, ptr %12, i64 %11
  store ptr %add.ptr11, ptr %__end_10, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %__cap_12 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %13 = load ptr, ptr %__cap_12, align 8
  %__first_13 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_13, align 8
  %sub.ptr.lhs.cast14 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast15 = ptrtoint ptr %14 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %sub.ptr.div17 = sdiv exact i64 %sub.ptr.sub16, 8
  %mul = mul i64 2, %sub.ptr.div17
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp18, align 8
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp18)
  %15 = load i64, ptr %call19, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %add20 = add i64 %17, 3
  %div21 = udiv i64 %add20, 4
  %call22 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div21, ptr noundef nonnull align 1 dereferenceable(1) %this1)
  %__begin_23 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_23, align 8
  %call24 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_26 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_26, align 8
  %call28 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp25, ptr noundef %19)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive29 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp25, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi30 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi30)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont27
  %__first_32 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %__first_33 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_32, ptr noundef nonnull align 8 dereferenceable(8) %__first_33) #10
  %__begin_34 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %__begin_35 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_34, ptr noundef nonnull align 8 dereferenceable(8) %__begin_35) #10
  %__end_36 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %__end_37 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_36, ptr noundef nonnull align 8 dereferenceable(8) %__end_37) #10
  %__cap_38 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %__cap_39 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 3
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_38, ptr noundef nonnull align 8 dereferenceable(8) %__cap_39) #10
  %call40 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %if.end

lpad:                                             ; preds = %invoke.cont27, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call41 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont31, %if.then3
  br label %if.end42

if.end42:                                         ; preds = %if.end, %entry
  %__begin_43 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %25 = load ptr, ptr %__begin_43, align 8
  %add.ptr44 = getelementptr inbounds ptr, ptr %25, i64 -1
  %call45 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %add.ptr44) #10
  %26 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S8_DpOS9_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call45, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__begin_46 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %27 = load ptr, ptr %__begin_46, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %27, i32 -1
  store ptr %incdec.ptr, ptr %__begin_46, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val47 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val47
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE22__annotate_whole_blockB8ne200100EmNS3_22__asan_annotation_typeE(ptr noundef nonnull align 8 dereferenceable(48) %this, i64 noundef %__block_index, i32 noundef %__annotation_type) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__block_index.addr = alloca i64, align 8
  %__annotation_type.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__block_index, ptr %__block_index.addr, align 8
  store i32 %__annotation_type, ptr %__annotation_type.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__less", align 1
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__b.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #2 {
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
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC1B8ne200100ERS2_m(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__s) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__s.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__s.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC2B8ne200100ERS2_m(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC1B8ne200100ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(16) %__d) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC2B8ne200100ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE12emplace_backIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp19 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.7", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp25 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %1 = load ptr, ptr %__cap_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__first_, align 8
  %cmp2 = icmp ugt ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__begin_4 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__begin_4, align 8
  %__first_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__first_5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__d, align 8
  %6 = load i64, ptr %__d, align 8
  %add = add nsw i64 %6, 1
  %div = sdiv i64 %add, 2
  store i64 %div, ptr %__d, align 8
  %__begin_6 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__begin_8 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__begin_8, align 8
  %10 = load i64, ptr %__d, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.neg
  %call = call noundef ptr @_ZNSt3__14moveB8ne200100IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__end_9 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  store ptr %call, ptr %__end_9, align 8
  %11 = load i64, ptr %__d, align 8
  %__begin_10 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %12 = load ptr, ptr %__begin_10, align 8
  %idx.neg11 = sub i64 0, %11
  %add.ptr12 = getelementptr inbounds ptr, ptr %12, i64 %idx.neg11
  store ptr %add.ptr12, ptr %__begin_10, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %__cap_13 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %13 = load ptr, ptr %__cap_13, align 8
  %__first_14 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_14, align 8
  %sub.ptr.lhs.cast15 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast16 = ptrtoint ptr %14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 8
  %mul = mul i64 2, %sub.ptr.div18
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp19, align 8
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp19)
  %15 = load i64, ptr %call20, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %div21 = udiv i64 %17, 4
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %18 = load ptr, ptr %__alloc_, align 8
  %call22 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div21, ptr noundef nonnull align 1 dereferenceable(1) %18)
  %__begin_23 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %19 = load ptr, ptr %__begin_23, align 8
  %call24 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %19)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_26 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %20 = load ptr, ptr %__end_26, align 8
  %call28 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp25, ptr noundef %20)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %21 to i64
  %coerce.dive29 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp25, i32 0, i32 0
  %22 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi30 = ptrtoint ptr %22 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi30)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont27
  %__first_32 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %__first_33 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_32, ptr noundef nonnull align 8 dereferenceable(8) %__first_33) #10
  %__begin_34 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %__begin_35 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_34, ptr noundef nonnull align 8 dereferenceable(8) %__begin_35) #10
  %__end_36 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %__end_37 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_36, ptr noundef nonnull align 8 dereferenceable(8) %__end_37) #10
  %__cap_38 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %__cap_39 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 3
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_38, ptr noundef nonnull align 8 dereferenceable(8) %__cap_39) #10
  %call40 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %if.end

lpad:                                             ; preds = %invoke.cont27, %invoke.cont, %if.else
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  store ptr %24, ptr %exn.slot, align 8
  %25 = extractvalue { ptr, i32 } %23, 1
  store i32 %25, ptr %ehselector.slot, align 4
  %call41 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont31, %if.then3
  br label %if.end42

if.end42:                                         ; preds = %if.end, %entry
  %__alloc_43 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %26 = load ptr, ptr %__alloc_43, align 8
  %__end_44 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %27 = load ptr, ptr %__end_44, align 8
  %call45 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %27) #10
  %28 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S8_DpOS9_(ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef %call45, ptr noundef nonnull align 8 dereferenceable(8) %28)
  %__end_46 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %29 = load ptr, ptr %__end_46, align 8
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %__end_46, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val47 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val47
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE3getB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds nuw %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE7releaseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
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
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE13emplace_frontIJRS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp18 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.7", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp25 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %3 = load ptr, ptr %__cap_, align 8
  %cmp2 = icmp ult ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__cap_4 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %4 = load ptr, ptr %__cap_4, align 8
  %__end_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %5 = load ptr, ptr %__end_5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__d, align 8
  %6 = load i64, ptr %__d, align 8
  %add = add nsw i64 %6, 1
  %div = sdiv i64 %add, 2
  store i64 %div, ptr %__d, align 8
  %__begin_6 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__end_8 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %9 = load ptr, ptr %__end_8, align 8
  %10 = load i64, ptr %__d, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %10
  %call = call noundef ptr @_ZNSt3__113move_backwardB8ne200100IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__begin_9 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  store ptr %call, ptr %__begin_9, align 8
  %11 = load i64, ptr %__d, align 8
  %__end_10 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %12 = load ptr, ptr %__end_10, align 8
  %add.ptr11 = getelementptr inbounds ptr, ptr %12, i64 %11
  store ptr %add.ptr11, ptr %__end_10, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %__cap_12 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %13 = load ptr, ptr %__cap_12, align 8
  %__first_13 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_13, align 8
  %sub.ptr.lhs.cast14 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast15 = ptrtoint ptr %14 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %sub.ptr.div17 = sdiv exact i64 %sub.ptr.sub16, 8
  %mul = mul i64 2, %sub.ptr.div17
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp18, align 8
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp18)
  %15 = load i64, ptr %call19, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %add20 = add i64 %17, 3
  %div21 = udiv i64 %add20, 4
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %18 = load ptr, ptr %__alloc_, align 8
  %call22 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div21, ptr noundef nonnull align 1 dereferenceable(1) %18)
  %__begin_23 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %19 = load ptr, ptr %__begin_23, align 8
  %call24 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %19)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_26 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %20 = load ptr, ptr %__end_26, align 8
  %call28 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp25, ptr noundef %20)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %21 to i64
  %coerce.dive29 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp25, i32 0, i32 0
  %22 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi30 = ptrtoint ptr %22 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi30)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont27
  %__first_32 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %__first_33 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_32, ptr noundef nonnull align 8 dereferenceable(8) %__first_33) #10
  %__begin_34 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %__begin_35 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_34, ptr noundef nonnull align 8 dereferenceable(8) %__begin_35) #10
  %__end_36 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %__end_37 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_36, ptr noundef nonnull align 8 dereferenceable(8) %__end_37) #10
  %__cap_38 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %__cap_39 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %__t, i32 0, i32 3
  call void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_38, ptr noundef nonnull align 8 dereferenceable(8) %__cap_39) #10
  %call40 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %if.end

lpad:                                             ; preds = %invoke.cont27, %invoke.cont, %if.else
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  store ptr %24, ptr %exn.slot, align 8
  %25 = extractvalue { ptr, i32 } %23, 1
  store i32 %25, ptr %ehselector.slot, align 4
  %call41 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #10
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont31, %if.then3
  br label %if.end42

if.end42:                                         ; preds = %if.end, %entry
  %__alloc_43 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %26 = load ptr, ptr %__alloc_43, align 8
  %__begin_44 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %27 = load ptr, ptr %__begin_44, align 8
  %add.ptr45 = getelementptr inbounds ptr, ptr %27, i64 -1
  %call46 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %add.ptr45) #10
  %28 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JRS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S9_DpOSA_(ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef %call46, ptr noundef nonnull align 8 dereferenceable(8) %28)
  %__begin_47 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %29 = load ptr, ptr %__begin_47, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %29, i32 -1
  store ptr %incdec.ptr, ptr %__begin_47, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val48 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val48
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ne200100IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
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
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__14moveB8ne200100IPPiS2_EET0_T_S4_S3_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::pair", align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call [2 x i64] @_ZNSt3__16__moveB8ne200100INS_17_ClassicAlgPolicyEPPiS3_S3_EENS_4pairIT0_T2_EES5_T1_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %ref.tmp, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EETnNS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEiE4typeELi0EEEvSB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 %__first.coerce, i64 %__last.coerce) #2 {
entry:
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp4 = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp5 = alloca %"class.std::__1::move_iterator", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %this, ptr %this.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp4, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp5, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp4, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive7 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp5, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive7, align 8
  %coerce.val.pi8 = ptrtoint ptr %1 to i64
  %call = call noundef i64 @_ZNSt3__18distanceB8ne200100INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_(i64 %coerce.val.pi, i64 %coerce.val.pi8)
  %coerce.dive9 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive9, align 8
  %coerce.val.pi10 = ptrtoint ptr %2 to i64
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE28__construct_at_end_with_sizeINS_13move_iteratorIPS1_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(40) %this3, i64 %coerce.val.pi10, i64 noundef %call)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B8ne200100ES2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__i) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__113move_iteratorIPPiEC2B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JRS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S9_DpOSA_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 {
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
  call void @_ZNSt3__19allocatorIPiE9constructB8ne200100IS1_JRS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__moveB8ne200100INS_17_ClassicAlgPolicyEPPiS3_S3_EENS_4pairIT0_T2_EES5_T1_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call [2 x i64] @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__move_implINS_17_ClassicAlgPolicyEEEPPiS5_S5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS7_S8_EES7_T1_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %retval, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__move_implINS_17_ClassicAlgPolicyEEEPPiS5_S5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS7_S8_EES7_T1_S8_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__out_first) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__out_first.addr = alloca ptr, align 8
  %__range = alloca %"struct.std::__1::pair", align 8
  %__result = alloca %"struct.std::__1::pair", align 8
  %ref.tmp = alloca %"struct.std::__1::__move_impl", align 1
  %ref.tmp3 = alloca ptr, align 8
  %ref.tmp6 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__out_first, ptr %__out_first.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %call = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ne200100IPPiS2_EENS_4pairIT0_S4_EET_S6_(ptr noundef %0, ptr noundef %1)
  store [2 x i64] %call, ptr %__range, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__range, i32 0, i32 0
  %2 = load ptr, ptr %first, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__range, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  %4 = load ptr, ptr %__out_first.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPPiNS_18__unwrap_iter_implIS2_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS6_EEEES6_(ptr noundef %4) #10
  %call2 = call [2 x i64] @_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne200100IPiS4_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS6_PS7_EESB_SB_SC_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef %2, ptr noundef %3, ptr noundef %call1)
  store [2 x i64] %call2, ptr %__result, align 8
  %5 = load ptr, ptr %__first.addr, align 8
  %first4 = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__result, i32 0, i32 0
  %6 = load ptr, ptr %first4, align 8
  %call5 = call noundef ptr @_ZNSt3__114__rewrap_rangeB8ne200100IPPiS2_EET_S3_T0_(ptr noundef %5, ptr noundef %6)
  store ptr %call5, ptr %ref.tmp3, align 8
  %7 = load ptr, ptr %__out_first.addr, align 8
  %second7 = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__result, i32 0, i32 1
  %8 = load ptr, ptr %second7, align 8
  %call8 = call noundef ptr @_ZNSt3__113__rewrap_iterB8ne200100IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %7, ptr noundef %8) #10
  store ptr %call8, ptr %ref.tmp6, align 8
  %call9 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IPPiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp3, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp6)
  store [2 x i64] %call9, ptr %retval, align 8
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__unwrap_rangeB8ne200100IPPiS2_EENS_4pairIT0_S4_EET_S6_(ptr noundef %__first, ptr noundef %__last) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp1 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPPiNS_18__unwrap_iter_implIS2_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS6_EEEES6_(ptr noundef %0) #10
  store ptr %call, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPPiNS_18__unwrap_iter_implIS2_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS6_EEEES6_(ptr noundef %1) #10
  store ptr %call2, ptr %ref.tmp1, align 8
  %call3 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IPPiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  store [2 x i64] %call3, ptr %retval, align 8
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr [2 x i64] @_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne200100IPiS4_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS6_PS7_EESB_SB_SC_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %this.addr = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call [2 x i64] @_ZNSt3__119__copy_trivial_implB8ne200100IPiS1_EENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %retval, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPPiNS_18__unwrap_iter_implIS2_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS6_EEEES6_(ptr noundef %__i) #1 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__unwrapB8ne200100ES2_(ptr noundef %0) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ne200100IPPiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #1 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC1B8ne200100IS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__rewrap_rangeB8ne200100IPPiS2_EET_S3_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #1 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__rewrap_iterB8ne200100IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %0, ptr noundef %1) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113__rewrap_iterB8ne200100IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #1 personality ptr @__gxx_personality_v0 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__rewrapB8ne200100ES2_S2_(ptr noundef %0, ptr noundef %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %call

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #11
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__copy_trivial_implB8ne200100IPiS1_EENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__last.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__n, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %3 = load ptr, ptr %__first.addr, align 8
  %4 = load i64, ptr %__n, align 8
  %call = call noundef ptr @_ZNSt3__119__constexpr_memmoveB8ne200100IPiS1_TnNS_9enable_ifIXsr23__is_always_bitcastableIT0_T_EE5valueEiE4typeELi0EEEPS4_S7_PS3_NS_15__element_countE(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  %5 = load ptr, ptr %__result.addr, align 8
  %6 = load i64, ptr %__n, align 8
  %add.ptr = getelementptr inbounds nuw ptr, ptr %5, i64 %6
  store ptr %add.ptr, ptr %ref.tmp, align 8
  %call1 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IRPPiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_(ptr noundef nonnull align 8 dereferenceable(8) %__last.addr, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  store [2 x i64] %call1, ptr %retval, align 8
  %7 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119__constexpr_memmoveB8ne200100IPiS1_TnNS_9enable_ifIXsr23__is_always_bitcastableIT0_T_EE5valueEiE4typeELi0EEEPS4_S7_PS3_NS_15__element_countE(ptr noundef %__dest, ptr noundef %__src, i64 noundef %__n) #1 {
entry:
  %__dest.addr = alloca ptr, align 8
  %__src.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__count = alloca i64, align 8
  store ptr %__dest, ptr %__dest.addr, align 8
  store ptr %__src, ptr %__src.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  store i64 %0, ptr %__count, align 8
  %1 = load i64, ptr %__count, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__dest.addr, align 8
  %3 = load ptr, ptr %__src.addr, align 8
  %4 = load i64, ptr %__count, align 8
  %sub = sub i64 %4, 1
  %mul = mul i64 %sub, 8
  %add = add i64 %mul, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 %add, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %__dest.addr, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ne200100IRPPiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #1 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC1B8ne200100IRS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC1B8ne200100IRS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC2B8ne200100IRS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC2B8ne200100IRS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %first, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__u2.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__unwrapB8ne200100ES2_(ptr noundef %__i) #1 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %0) #10
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC1B8ne200100IS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC2B8ne200100IS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC2B8ne200100IS2_S2_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %first, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__u2.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__rewrapB8ne200100ES2_S2_(ptr noundef %__orig_iter, ptr noundef %__unwrapped_iter) #1 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__unwrapped_iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__unwrapped_iter, ptr %__unwrapped_iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__unwrapped_iter.addr, align 8
  %2 = load ptr, ptr %__orig_iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %2) #10
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 %sub.ptr.div
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE28__construct_at_end_with_sizeINS_13move_iteratorIPS1_EEEEvT_m(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 %__first.coerce, i64 noundef %__n) #2 personality ptr @__gxx_personality_v0 {
entry:
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__tx = alloca %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100EPPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef %__end_, i64 noundef %0) #10
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont8, %entry
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %1 = load ptr, ptr %__pos_, align 8
  %__end_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__end_2, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %3 = load ptr, ptr %__alloc_, align 8
  %__pos_3 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %4 = load ptr, ptr %__pos_3, align 8
  %call4 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %4) #10
  %call5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__113move_iteratorIPPiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S8_DpOS9_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %call4, ptr noundef nonnull align 8 dereferenceable(8) %call5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont6
  %__pos_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %5 = load ptr, ptr %__pos_7, align 8
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %__pos_7, align 8
  %call9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPPiEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %for.inc
  br label %for.cond, !llvm.loop !12

lpad:                                             ; preds = %for.inc, %invoke.cont, %for.body
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #10
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #10
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val12 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val12
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__18distanceB8ne200100INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_(i64 %__first.coerce, i64 %__last.coerce) #2 {
entry:
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp3, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive6 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %agg.tmp3, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call = call noundef i64 @_ZNSt3__110__distanceB8ne200100INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_NS_26random_access_iterator_tagE(i64 %coerce.val.pi, i64 %coerce.val.pi7)
  ret i64 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne200100EPPS1_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100EPPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB8ne200100IS2_JS2_ETnNS_9enable_ifIXsr15__has_constructIS3_PT_DpT0_EE5valueEiE4typeELi0EEEvRS3_S8_DpOS9_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 {
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
  call void @_ZNSt3__19allocatorIPiE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__113move_iteratorIPPiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__current_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPPiEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__current_, align 8
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %__current_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne200100EPPS1_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__pos_, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__p.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds nuw ptr, ptr %3, i64 %4
  store ptr %add.ptr, ptr %__end_, align 8
  %__dest_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %5 = load ptr, ptr %__p.addr, align 8
  store ptr %5, ptr %__dest_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIPiE9constructB8ne200100IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #1 {
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
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__pos_, align 8
  %__dest_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__dest_, align 8
  store ptr %0, ptr %1, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__110__distanceB8ne200100INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_NS_26random_access_iterator_tagE(i64 %__first.coerce, i64 %__last.coerce) #2 {
entry:
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %0 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  %call = call noundef i64 @_ZNSt3__1miB8ne200100IPPiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__last, ptr noundef nonnull align 8 dereferenceable(8) %__first)
  ret i64 %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__1miB8ne200100IPPiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__113move_iteratorIPPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__113move_iteratorIPPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__113move_iteratorIPPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__current_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113move_iteratorIPPiEC2B8ne200100ES2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__i) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds nuw %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i.addr, align 8
  store ptr %0, ptr %__current_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIPiE9constructB8ne200100IS1_JRS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #1 {
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
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm(i64 noundef %1, i64 noundef 4)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #1 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
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
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm(i64 noundef %__n, i64 noundef %__align) #2 {
entry:
  %retval = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__size = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %0, 4
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
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 4611686018427387903
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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113move_backwardB8ne200100IPPiS2_EET0_T_S4_S3_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::pair", align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call [2 x i64] @_ZNSt3__115__move_backwardB8ne200100INS_17_ClassicAlgPolicyEPPiS3_S3_EENS_4pairIT0_T2_EES5_T1_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %ref.tmp, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__115__move_backwardB8ne200100INS_17_ClassicAlgPolicyEPPiS3_S3_EENS_4pairIT0_T2_EES5_T1_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call [2 x i64] @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPiS5_S5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS7_S8_EES7_T1_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %retval, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_20__move_backward_implINS_17_ClassicAlgPolicyEEEPPiS5_S5_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS7_S8_EES7_T1_S8_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__out_first) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__out_first.addr = alloca ptr, align 8
  %__range = alloca %"struct.std::__1::pair", align 8
  %__result = alloca %"struct.std::__1::pair", align 8
  %ref.tmp = alloca %"struct.std::__1::__move_backward_impl", align 1
  %ref.tmp3 = alloca ptr, align 8
  %ref.tmp6 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__out_first, ptr %__out_first.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %call = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ne200100IPPiS2_EENS_4pairIT0_S4_EET_S6_(ptr noundef %0, ptr noundef %1)
  store [2 x i64] %call, ptr %__range, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__range, i32 0, i32 0
  %2 = load ptr, ptr %first, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__range, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  %4 = load ptr, ptr %__out_first.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPPiNS_18__unwrap_iter_implIS2_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS6_EEEES6_(ptr noundef %4) #10
  %call2 = call [2 x i64] @_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB8ne200100IPiS4_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS6_PS7_EESB_SB_SC_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef %2, ptr noundef %3, ptr noundef %call1)
  store [2 x i64] %call2, ptr %__result, align 8
  %5 = load ptr, ptr %__first.addr, align 8
  %first4 = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__result, i32 0, i32 0
  %6 = load ptr, ptr %first4, align 8
  %call5 = call noundef ptr @_ZNSt3__114__rewrap_rangeB8ne200100IPPiS2_EET_S3_T0_(ptr noundef %5, ptr noundef %6)
  store ptr %call5, ptr %ref.tmp3, align 8
  %7 = load ptr, ptr %__out_first.addr, align 8
  %second7 = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__result, i32 0, i32 1
  %8 = load ptr, ptr %second7, align 8
  %call8 = call noundef ptr @_ZNSt3__113__rewrap_iterB8ne200100IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %7, ptr noundef %8) #10
  store ptr %call8, ptr %ref.tmp6, align 8
  %call9 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IPPiS2_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp3, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp6)
  store [2 x i64] %call9, ptr %retval, align 8
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr [2 x i64] @_ZNKSt3__120__move_backward_implINS_17_ClassicAlgPolicyEEclB8ne200100IPiS4_TnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS6_PS7_EESB_SB_SC_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %this.addr = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ne200100IPiS1_EENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %retval, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ne200100IPiS1_EENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__n = alloca i64, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__last.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__n, align 8
  %2 = load i64, ptr %__n, align 8
  %3 = load ptr, ptr %__result.addr, align 8
  %idx.neg = sub i64 0, %2
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.neg
  store ptr %add.ptr, ptr %__result.addr, align 8
  %4 = load ptr, ptr %__result.addr, align 8
  %5 = load ptr, ptr %__first.addr, align 8
  %6 = load i64, ptr %__n, align 8
  %call = call noundef ptr @_ZNSt3__119__constexpr_memmoveB8ne200100IPiS1_TnNS_9enable_ifIXsr23__is_always_bitcastableIT0_T_EE5valueEiE4typeELi0EEEPS4_S7_PS3_NS_15__element_countE(ptr noundef %4, ptr noundef %5, i64 noundef %6)
  %call1 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IRPPiS3_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_(ptr noundef nonnull align 8 dereferenceable(8) %__last.addr, ptr noundef nonnull align 8 dereferenceable(8) %__result.addr)
  store [2 x i64] %call1, ptr %retval, align 8
  %7 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ne200100IRPPiS3_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS5_Iu7__decayIT0_EE4typeEEEOS6_OSA_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #1 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC1B8ne200100IRS2_S5_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC1B8ne200100IRS2_S5_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC2B8ne200100IRS2_S5_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC2B8ne200100IRS2_S5_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS7_OS8_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %first, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__u2.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__b.addr, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %call, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %__b.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %__a.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %3, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessIvvEclB8ne200100ImmEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__lhs.addr = alloca ptr, align 8
  %__rhs.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__lhs, ptr %__lhs.addr, align 8
  store ptr %__rhs, ptr %__rhs.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__lhs.addr, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load ptr, ptr %__rhs.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp = icmp ult i64 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__cap, ptr %__cap.addr, align 8
  store i64 %__start, ptr %__start.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  store ptr null, ptr %__cap_, align 8
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %0 = load ptr, ptr %__a.addr, align 8
  store ptr %0, ptr %__alloc_, align 8
  %1 = load i64, ptr %__cap.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %__alloc_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %2 = load ptr, ptr %__alloc_2, align 8
  %3 = load i64, ptr %__cap.addr, align 8
  %call = call [2 x i64] @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIPiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %3)
  store [2 x i64] %call, ptr %__allocation, align 8
  %ptr = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 0
  %4 = load ptr, ptr %ptr, align 8
  %__first_3 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  store ptr %4, ptr %__first_3, align 8
  %count = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 1
  %5 = load i64, ptr %count, align 8
  store i64 %5, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__first_4 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %6 = load ptr, ptr %__first_4, align 8
  %7 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds nuw ptr, ptr %6, i64 %7
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %__first_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__first_5, align 8
  %9 = load i64, ptr %__cap.addr, align 8
  %add.ptr6 = getelementptr inbounds nuw ptr, ptr %8, i64 %9
  %__cap_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  store ptr %add.ptr6, ptr %__cap_7, align 8
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIPiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #2 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %__alloc.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %ptr = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIPiE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  store ptr %call, ptr %ptr, align 8
  %count = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 1
  %2 = load i64, ptr %__n.addr, align 8
  store i64 %2, ptr %count, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIPiE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE8max_sizeB8ne200100IS3_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #10
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #13
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100IPiEEPT_NS_15__element_countEm(i64 noundef %1, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE8max_sizeB8ne200100IS3_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #1 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorIPiE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  ret i64 %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100IPiEEPT_NS_15__element_countEm(i64 noundef %__n, i64 noundef %__align) #2 {
entry:
  %retval = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__size = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %0, 8
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
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIPiE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC2B8ne200100ERS2_m(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__s) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__s.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds nuw %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__a.addr, align 8
  store ptr %0, ptr %__alloc_, align 8
  %__s_ = getelementptr inbounds nuw %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__s.addr, align 8
  store i64 %1, ptr %__s_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC2B8ne200100ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(16) %__d) unnamed_addr #1 {
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
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5resetB8ne200100ES1_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null) #10
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5resetB8ne200100ES1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #1 {
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
  call void @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEclB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(16) %__deleter_, ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEclB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__p) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds nuw %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc_, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__s_ = getelementptr inbounds nuw %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 1
  %2 = load i64, ptr %__s_, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #10
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %1 = load ptr, ptr %__alloc_, align 8
  %__first_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__first_2, align 8
  %call = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE10deallocateB8ne200100ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3

terminate.lpad:                                   ; preds = %if.then
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 3
  %0 = load ptr, ptr %__cap_, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant.3", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #1 personality ptr @__gxx_personality_v0 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant.3", align 1
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 4
  %3 = load ptr, ptr %__alloc_, align 8
  %__end_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer.7", ptr %this1, i32 0, i32 2
  %4 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %4, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IPiEEPT_S3_(ptr noundef %incdec.ptr) #10
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE7destroyB8ne200100IS2_TnNS_9enable_ifIXsr13__has_destroyIS3_PT_EE5valueEiE4typeELi0EEEvRS3_S8_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIiE9constructB8ne200100IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #1 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__15dequeIiNS_9allocatorIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__old_sz = alloca i64, align 8
  %__old_start = alloca i64, align 8
  %__a = alloca ptr, align 8
  %__p = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store i64 %call, ptr %__old_sz, align 8
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  store i64 %0, ptr %__old_start, align 8
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE7__allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  store ptr %call2, ptr %__a, align 8
  %call3 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %__start_4 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__start_4, align 8
  %add = add i64 %call3, %1
  %sub = sub i64 %add, 1
  store i64 %sub, ptr %__p, align 8
  %2 = load ptr, ptr %__a, align 8
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #10
  %3 = load i64, ptr %__p, align 8
  %div = udiv i64 %3, 1024
  %add.ptr = getelementptr inbounds nuw ptr, ptr %call5, i64 %div
  %4 = load ptr, ptr %add.ptr, align 8
  %5 = load i64, ptr %__p, align 8
  %rem = urem i64 %5, 1024
  %add.ptr6 = getelementptr inbounds nuw i32, ptr %4, i64 %rem
  %call7 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %add.ptr6) #10
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiTnNS_9enable_ifIXsr13__has_destroyIS2_PT_EE5valueEiE4typeELi0EEEvRS2_S7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %call7)
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE6__sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %6 = load i64, ptr %call8, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %call8, align 8
  %7 = load i64, ptr %__old_sz, align 8
  %8 = load i64, ptr %__old_start, align 8
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE22__annotate_shrink_backB8ne200100Emm(ptr noundef nonnull align 8 dereferenceable(48) %this1, i64 noundef %7, i64 noundef %8) #10
  %call9 = call noundef zeroext i1 @_ZNSt3__15dequeIiNS_9allocatorIiEEE25__maybe_remove_back_spareB8ne200100Eb(ptr noundef nonnull align 8 dereferenceable(48) %this1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE22__annotate_shrink_backB8ne200100Emm(ptr noundef nonnull align 8 dereferenceable(48) %this, i64 noundef %__old_size, i64 noundef %__old_start) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__old_size.addr = alloca i64, align 8
  %__old_start.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__old_size, ptr %__old_size.addr, align 8
  store i64 %__old_start, ptr %__old_start.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__15dequeIiNS_9allocatorIiEEE25__maybe_remove_back_spareB8ne200100Eb(ptr noundef nonnull align 8 dereferenceable(48) %this, i1 noundef zeroext %__keep_one) #2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %__keep_one.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %storedv = zext i1 %__keep_one to i8
  store i8 %storedv, ptr %__keep_one.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE19__back_spare_blocksB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %cmp = icmp uge i64 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %__keep_one.addr, align 1
  %loadedv = trunc i8 %0 to i1
  br i1 %loadedv, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE19__back_spare_blocksB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %tobool = icmp ne i64 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
  %sub = sub i64 %call3, 1
  call void @_ZNKSt3__15dequeIiNS_9allocatorIiEEE22__annotate_whole_blockB8ne200100EmNS3_22__asan_annotation_typeE(ptr noundef nonnull align 8 dereferenceable(48) %this1, i64 noundef %sub, i32 noundef 0) #10
  %call4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE7__allocB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %__map_5 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_5)
  %1 = load ptr, ptr %call6, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %call4, ptr noundef %1, i64 noundef 1024) #10
  %__map_7 = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8pop_backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_7)
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1
  ret i1 %2
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE19__back_spare_blocksB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %div = udiv i64 %call, 1024
  ret i64 %div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8pop_backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 -1
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE4backEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #10
  %__start_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %add = add i64 %call, %0
  %sub = sub i64 %add, 1
  store i64 %sub, ptr %__p, align 8
  %__map_ = getelementptr inbounds nuw %"class.std::__1::deque", ptr %this1, i32 0, i32 0
  %call2 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #10
  %1 = load i64, ptr %__p, align 8
  %div = udiv i64 %1, 1024
  %add.ptr = getelementptr inbounds nuw ptr, ptr %call2, i64 %div
  %2 = load ptr, ptr %add.ptr, align 8
  %3 = load i64, ptr %__p, align 8
  %rem = urem i64 %3, 1024
  %add.ptr3 = getelementptr inbounds nuw i32, ptr %2, i64 %rem
  ret ptr %add.ptr3
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
