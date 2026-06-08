; ModuleID = './thesis_attempt/source_snapshot/DCMTK/config/tests/stack.cc'
source_filename = "./thesis_attempt/source_snapshot/DCMTK/config/tests/stack.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::stack" = type { %"class.std::__1::deque" }
%"class.std::__1::deque" = type { %"class.std::__1::__deque_base" }
%"class.std::__1::__deque_base" = type { %"struct.std::__1::__split_buffer", i64, %"class.std::__1::__compressed_pair.1" }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { i64 }
%"class.std::__1::__deque_iterator" = type { ptr, ptr }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::is_trivially_destructible" = type { i8 }
%"struct.std::__1::integral_constant.7" = type { i8 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::__split_buffer.8" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.9" }
%"class.std::__1::__compressed_pair.9" = type { %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem.10" }
%"struct.std::__1::__compressed_pair_elem.10" = type { ptr }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.11" }
%"class.std::__1::__compressed_pair.11" = type { %"struct.std::__1::__compressed_pair_elem.12", %"struct.std::__1::__compressed_pair_elem.13" }
%"struct.std::__1::__compressed_pair_elem.12" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.13" = type { %"class.std::__1::__allocator_destructor" }
%"class.std::__1::__allocator_destructor" = type { ptr, i64 }
%"class.std::__1::move_iterator" = type { ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::pair" = type { ptr, ptr }
%"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::random_access_iterator_tag" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }

@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable
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
  %call = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %s) #12
  %call1 = invoke noundef zeroext i1 @_ZNKSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
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
  %call16 = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %s) #12
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont
  store i32 1, ptr %ref.tmp, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %if.end
  store i32 2, ptr %ref.tmp3, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  store i32 3, ptr %ref.tmp5, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp5)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont7
  store i32 42, ptr %ref.tmp9, align 4
  invoke void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(48) %s, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp9)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont8
  %call12 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3topB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %s)
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
  %call15 = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %s) #12
  %4 = load i32, ptr %retval, align 4
  ret i32 %4

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val17 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef zeroext i1 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %c) #12
  ret i1 %call
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE4pushB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__v.addr, align 8
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(48) %c, ptr noundef nonnull align 4 dereferenceable(4) %0)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3popB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(48) %c)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEE3topB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE4backEv(ptr noundef nonnull align 8 dereferenceable(48) %c) #12
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(48) %c) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__i = alloca ptr, align 8
  %__e = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #12
  store ptr %call, ptr %__i, align 8
  %__map_2 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call3 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_2) #12
  store ptr %call3, ptr %__e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %__i, align 8
  %1 = load ptr, ptr %__e, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %for.body
  %2 = load ptr, ptr %__i, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %call4, ptr noundef %3, i64 noundef 1024) #12
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %4 = load ptr, ptr %__i, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %__map_5 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call6 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_5) #12
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5

terminate.lpad:                                   ; preds = %for.body
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__i = alloca %"class.std::__1::__deque_iterator", align 8
  %__e = alloca %"class.std::__1::__deque_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  store ptr %call, ptr %__a, align 8
  %call2 = call [2 x i64] @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  store [2 x i64] %call2, ptr %__i, align 8
  %call3 = call [2 x i64] @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  store [2 x i64] %call3, ptr %__e, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont9, %invoke.cont
  %call5 = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %__i, ptr noundef nonnull align 8 dereferenceable(16) %__e)
          to label %invoke.cont4 unwind label %terminate.lpad

invoke.cont4:                                     ; preds = %for.cond
  br i1 %call5, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont4
  %0 = load ptr, ptr %__a, align 8
  %call7 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__i)
          to label %invoke.cont6 unwind label %terminate.lpad

invoke.cont6:                                     ; preds = %for.body
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB6v15007IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call7)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont8
  %call10 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__i)
          to label %invoke.cont9 unwind label %terminate.lpad

invoke.cont9:                                     ; preds = %for.inc
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %invoke.cont4
  %call12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %for.end
  store i64 0, ptr %call12, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont19, %invoke.cont11
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call14 = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
          to label %invoke.cont13 unwind label %terminate.lpad

invoke.cont13:                                    ; preds = %while.cond
  %cmp = icmp ugt i64 %call14, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont13
  %1 = load ptr, ptr %__a, align 8
  %__map_15 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_15)
          to label %invoke.cont16 unwind label %terminate.lpad

invoke.cont16:                                    ; preds = %while.body
  %2 = load ptr, ptr %call17, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 noundef 1024) #12
  %__map_18 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  invoke void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_18)
          to label %invoke.cont19 unwind label %terminate.lpad

invoke.cont19:                                    ; preds = %invoke.cont16
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %invoke.cont13
  %__map_20 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call22 = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_20)
          to label %invoke.cont21 unwind label %terminate.lpad

invoke.cont21:                                    ; preds = %while.end
  switch i64 %call22, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %invoke.cont21
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  store i64 512, ptr %__start_, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %invoke.cont21
  %__start_24 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  store i64 1024, ptr %__start_24, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %invoke.cont21, %sw.bb23, %sw.bb
  ret void

terminate.lpad:                                   ; preds = %while.end, %invoke.cont16, %while.body, %while.cond, %for.end, %for.inc, %invoke.cont6, %for.body, %for.cond, %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #2 align 2 {
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
  call void @_ZNSt3__19allocatorIiE10deallocateB6v15007EPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__size_) #12
  ret ptr %call
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #4 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #12
  call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr [2 x i64] @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::__deque_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__mp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #12
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %div = udiv i64 %0, 1024
  %add.ptr = getelementptr inbounds ptr, ptr %call, i64 %div
  store ptr %add.ptr, ptr %__mp, align 8
  %1 = load ptr, ptr %__mp, align 8
  %__map_2 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call3 = invoke noundef zeroext i1 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont
  %2 = load ptr, ptr %__mp, align 8
  %3 = load ptr, ptr %2, align 8
  %__start_4 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %4 = load i64, ptr %__start_4, align 8
  %rem = urem i64 %4, 1024
  %add.ptr5 = getelementptr inbounds i32, ptr %3, i64 %rem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr5, %cond.false ]
  %call6 = call noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC1B6v15007ES3_S1_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef %1, ptr noundef %cond) #12
  %5 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %5

terminate.lpad:                                   ; preds = %entry
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  call void @__clang_call_terminate(ptr %7) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr [2 x i64] @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::__deque_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__p = alloca i64, align 8
  %__mp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i64, ptr %call, align 8
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__start_, align 8
  %add = add i64 %0, %1
  store i64 %add, ptr %__p, align 8
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call2 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #12
  %2 = load i64, ptr %__p, align 8
  %div = udiv i64 %2, 1024
  %add.ptr = getelementptr inbounds ptr, ptr %call2, i64 %div
  store ptr %add.ptr, ptr %__mp, align 8
  %3 = load ptr, ptr %__mp, align 8
  %__map_3 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call4 = call noundef zeroext i1 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_3)
  br i1 %call4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont
  %4 = load ptr, ptr %__mp, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %__p, align 8
  %rem = urem i64 %6, 1024
  %add.ptr5 = getelementptr inbounds i32, ptr %5, i64 %rem
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %add.ptr5, %cond.false ]
  %call6 = call noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC1B6v15007ES3_S1_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef %3, ptr noundef %cond) #12
  %7 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %7

terminate.lpad:                                   ; preds = %entry
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  call void @__clang_call_terminate(ptr %9) #13
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB6v15007IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorIiE7destroyB6v15007EPi(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__ptr_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__ptr_, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %__ptr_, align 8
  %__m_iter_ = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__m_iter_, align 8
  %2 = load ptr, ptr %1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp eq i64 %sub.ptr.div, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__m_iter_2 = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__m_iter_2, align 8
  %incdec.ptr3 = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr %incdec.ptr3, ptr %__m_iter_2, align 8
  %__m_iter_4 = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__m_iter_4, align 8
  %5 = load ptr, ptr %4, align 8
  %__ptr_5 = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  store ptr %5, ptr %__ptr_5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__size_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 1
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE19__destruct_at_beginB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__begin_, align 8
  %cmp = icmp eq ptr %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC1B6v15007ES3_S1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__m, ptr noundef %__p) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC2B6v15007ES3_S1_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, ptr noundef %1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEC2B6v15007ES3_S1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__m, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__m, ptr %__m.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__m_iter_ = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__m.addr, align 8
  store ptr %0, ptr %__m_iter_, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__p.addr, align 8
  store ptr %1, ptr %__ptr_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007ERKNS_16__deque_iteratorIiPiRiPS1_lLl1024EEES6_(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__ptr_, align 8
  %2 = load ptr, ptr %__y.addr, align 8
  %__ptr_1 = getelementptr inbounds %"class.std::__1::__deque_iterator", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__ptr_1, align 8
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE7destroyB6v15007EPi(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE19__destruct_at_beginB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_begin) #3 align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE19__destruct_at_beginEPS1_NS_17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_begin) #2 align 2 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant", align 1
  %this.addr = alloca ptr, align 8
  %__new_begin.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_begin, ptr %__new_begin.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %1 = load ptr, ptr %__new_begin.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr %1, ptr %__begin_, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE10deallocateB6v15007EPim(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %mul = mul i64 %1, 4
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %0, i64 noundef %mul, i64 noundef 4)
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
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #5

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
declare void @_ZdlPv(ptr noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %__first_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_2, align 8
  %call3 = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #12
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #2 align 2 {
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
  call void @_ZNSt3__19allocatorIPiE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %0 = load ptr, ptr %call, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_last) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant.7", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef %__new_last) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant.7", align 1
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %incdec.ptr) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorIPiE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIPiE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIPiE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %mul = mul i64 %1, 8
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15stackIiNS_5dequeIiNS_9allocatorIiEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %c = getelementptr inbounds %"class.std::__1::stack", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %c) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEEC2Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca i32, align 4
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #12
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  store i64 0, ptr %__start_, align 8
  %__size_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 2
  store i32 0, ptr %ref.tmp, align 4
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEEC1B6v15007IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__size_, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #13
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEEC1B6v15007IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #6 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEEC2B6v15007IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEEC2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #13
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #6 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #6 align 2 {
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
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPPiLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPiEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPPiLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  store ptr null, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPiEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIPiEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIPiEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPiEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPiEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairImNS_9allocatorIiEEEC2B6v15007IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #6 align 2 {
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
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B6v15007IivEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
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
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  %0 = load i64, ptr %call, align 8
  %cmp = icmp eq i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__size_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairImNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__size_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairImNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
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
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 4 dereferenceable(4) %__v) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::__deque_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %cmp = icmp eq i64 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr %__a, align 8
  %call3 = call [2 x i64] @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  store [2 x i64] %call3, ptr %ref.tmp, align 8
  %call4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116__deque_iteratorIiPiRiPS1_lLl1024EEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %1 = load ptr, ptr %__v.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call4, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %2 = load i64, ptr %call5, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %call5, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE10__capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #12
  %1 = load i64, ptr %call2, align 8
  %add = add i64 %0, %1
  %sub = sub i64 %call, %add
  ret i64 %sub
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEE19__add_back_capacityEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__pt = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp20 = alloca ptr, align 8
  %__pt22 = alloca ptr, align 8
  %__buf = alloca %"struct.std::__1::__split_buffer.8", align 8
  %ref.tmp28 = alloca i64, align 8
  %ref.tmp31 = alloca i64, align 8
  %__hold = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp39 = alloca %"class.std::__1::__allocator_destructor", align 8
  %ref.tmp42 = alloca ptr, align 8
  %__i = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE13__front_spareB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %cmp = icmp uge i64 %call2, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  %sub = sub i64 %0, 1024
  store i64 %sub, ptr %__start_, align 8
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
  %1 = load ptr, ptr %call3, align 8
  store ptr %1, ptr %__pt, align 8
  %__map_4 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_4)
  %__map_5 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backB6v15007ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %__map_5, ptr noundef nonnull align 8 dereferenceable(8) %__pt)
  br label %if.end67

if.else:                                          ; preds = %entry
  %__map_6 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call7 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_6)
  %__map_8 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call9 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_8)
  %cmp10 = icmp ult i64 %call7, %call9
  br i1 %cmp10, label %if.then11, label %if.else27

if.then11:                                        ; preds = %if.else
  %__map_12 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call13 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12__back_spareB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_12)
  %cmp14 = icmp ne i64 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.then11
  %__map_16 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__a, align 8
  %call17 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB6v15007ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1024)
  store ptr %call17, ptr %ref.tmp, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %__map_16, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  br label %if.end

if.else18:                                        ; preds = %if.then11
  %__map_19 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__a, align 8
  %call21 = call noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB6v15007ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef 1024)
  store ptr %call21, ptr %ref.tmp20, align 8
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %__map_19, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp20)
  %__map_23 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_23)
  %4 = load ptr, ptr %call24, align 8
  store ptr %4, ptr %__pt22, align 8
  %__map_25 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9pop_frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_25)
  %__map_26 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backB6v15007ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %__map_26, ptr noundef nonnull align 8 dereferenceable(8) %__pt22)
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then15
  br label %if.end66

if.else27:                                        ; preds = %if.else
  %__map_29 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call30 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_29)
  %mul = mul i64 2, %call30
  store i64 %mul, ptr %ref.tmp28, align 8
  store i64 1, ptr %ref.tmp31, align 8
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp28, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp31)
  %5 = load i64, ptr %call32, align 8
  %__map_33 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call34 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_33)
  %__map_35 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call36 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_35) #12
  %call37 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__buf, i64 noundef %5, i64 noundef %call34, ptr noundef nonnull align 1 dereferenceable(1) %call36)
  %6 = load ptr, ptr %__a, align 8
  %call38 = invoke noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB6v15007ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %6, i64 noundef 1024)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else27
  %7 = load ptr, ptr %__a, align 8
  %call40 = call noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC1B6v15007ERS2_m(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp39, ptr noundef nonnull align 1 dereferenceable(1) %7, i64 noundef 1024) #12
  %call41 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC1B6v15007ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %__hold, ptr noundef %call38, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp39) #12
  %call43 = call noundef ptr @_ZNKSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #12
  store ptr %call43, ptr %ref.tmp42, align 8
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %__buf, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp42)
          to label %invoke.cont45 unwind label %lpad44

invoke.cont45:                                    ; preds = %invoke.cont
  %call46 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #12
  %__map_47 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call48 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_47) #12
  store ptr %call48, ptr %__i, align 8
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont52, %invoke.cont45
  %8 = load ptr, ptr %__i, align 8
  %__map_49 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call50 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_49) #12
  %cmp51 = icmp ne ptr %8, %call50
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %__i, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %9, i32 -1
  store ptr %incdec.ptr, ptr %__i, align 8
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE10push_frontERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %__buf, ptr noundef nonnull align 8 dereferenceable(8) %incdec.ptr)
          to label %invoke.cont52 unwind label %lpad44

invoke.cont52:                                    ; preds = %for.body
  br label %for.cond, !llvm.loop !11

lpad:                                             ; preds = %if.else27
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %exn.slot, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad44:                                           ; preds = %for.body, %invoke.cont
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  store ptr %14, ptr %exn.slot, align 8
  %15 = extractvalue { ptr, i32 } %13, 1
  store i32 %15, ptr %ehselector.slot, align 4
  %call63 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #12
  br label %ehcleanup

for.end:                                          ; preds = %for.cond
  %__map_53 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__map_53, i32 0, i32 0
  %__first_54 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__buf, i32 0, i32 0
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_, ptr noundef nonnull align 8 dereferenceable(8) %__first_54) #12
  %__map_55 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__map_55, i32 0, i32 1
  %__begin_56 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__buf, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_, ptr noundef nonnull align 8 dereferenceable(8) %__begin_56) #12
  %__map_57 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__map_57, i32 0, i32 2
  %__end_58 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__buf, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_, ptr noundef nonnull align 8 dereferenceable(8) %__end_58) #12
  %__map_59 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_59) #12
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__buf) #12
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull align 8 dereferenceable(8) %call61) #12
  %call62 = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__hold) #12
  %call64 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__buf) #12
  br label %if.end66

ehcleanup:                                        ; preds = %lpad44, %lpad
  %call65 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__buf) #12
  br label %eh.resume

if.end66:                                         ; preds = %for.end, %if.end
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then
  ret void

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val68 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val68
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #3 align 2 {
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
  call void @_ZNSt3__19allocatorIiE9constructB6v15007IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE10__capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %__map_2 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_2)
  %mul = mul i64 %call3, 1024
  %sub = sub i64 %mul, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE13__front_spareB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %0 = load i64, ptr %__start_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backB6v15007ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp20 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.8", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp27 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__first_, align 8
  %cmp2 = icmp ugt ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__begin_4 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__begin_4, align 8
  %__first_5 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
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
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__begin_8 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__begin_8, align 8
  %10 = load i64, ptr %__d, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.neg
  %call9 = call noundef ptr @_ZNSt3__14moveB6v15007IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__end_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr %call9, ptr %__end_10, align 8
  %11 = load i64, ptr %__d, align 8
  %__begin_11 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %12 = load ptr, ptr %__begin_11, align 8
  %idx.neg12 = sub i64 0, %11
  %add.ptr13 = getelementptr inbounds ptr, ptr %12, i64 %idx.neg12
  store ptr %add.ptr13, ptr %__begin_11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %13 = load ptr, ptr %call14, align 8
  %__first_15 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_15, align 8
  %sub.ptr.lhs.cast16 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast17 = ptrtoint ptr %14 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %sub.ptr.div19 = sdiv exact i64 %sub.ptr.sub18, 8
  %mul = mul i64 2, %sub.ptr.div19
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp20, align 8
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp20)
  %15 = load i64, ptr %call21, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %div22 = udiv i64 %17, 4
  %call23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %call24 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div22, ptr noundef nonnull align 1 dereferenceable(1) %call23)
  %__begin_25 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_25, align 8
  %call26 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_28 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_28, align 8
  %call30 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp27, ptr noundef %19)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive31 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp27, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive31, align 8
  %coerce.val.pi32 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi32)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont29
  %__first_34 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %__first_35 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_34, ptr noundef nonnull align 8 dereferenceable(8) %__first_35) #12
  %__begin_36 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %__begin_37 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_36, ptr noundef nonnull align 8 dereferenceable(8) %__begin_37) #12
  %__end_38 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %__end_39 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_38, ptr noundef nonnull align 8 dereferenceable(8) %__end_39) #12
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call40, ptr noundef nonnull align 8 dereferenceable(8) %call41) #12
  %call42 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %if.end

lpad:                                             ; preds = %invoke.cont29, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call43 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont33, %if.then3
  br label %if.end44

if.end44:                                         ; preds = %if.end, %entry
  %call45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %__end_46 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %25 = load ptr, ptr %__end_46, align 8
  %call47 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %25) #12
  %26 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JRKS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call45, ptr noundef %call47, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__end_48 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %27 = load ptr, ptr %__end_48, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %__end_48, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val49 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val49
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE12__back_spareB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %0 = load ptr, ptr %call, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__end_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp20 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.8", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp27 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__first_, align 8
  %cmp2 = icmp ugt ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__begin_4 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__begin_4, align 8
  %__first_5 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
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
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__begin_8 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__begin_8, align 8
  %10 = load i64, ptr %__d, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.neg
  %call9 = call noundef ptr @_ZNSt3__14moveB6v15007IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__end_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr %call9, ptr %__end_10, align 8
  %11 = load i64, ptr %__d, align 8
  %__begin_11 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %12 = load ptr, ptr %__begin_11, align 8
  %idx.neg12 = sub i64 0, %11
  %add.ptr13 = getelementptr inbounds ptr, ptr %12, i64 %idx.neg12
  store ptr %add.ptr13, ptr %__begin_11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %13 = load ptr, ptr %call14, align 8
  %__first_15 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_15, align 8
  %sub.ptr.lhs.cast16 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast17 = ptrtoint ptr %14 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %sub.ptr.div19 = sdiv exact i64 %sub.ptr.sub18, 8
  %mul = mul i64 2, %sub.ptr.div19
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp20, align 8
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp20)
  %15 = load i64, ptr %call21, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %div22 = udiv i64 %17, 4
  %call23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %call24 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div22, ptr noundef nonnull align 1 dereferenceable(1) %call23)
  %__begin_25 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_25, align 8
  %call26 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_28 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_28, align 8
  %call30 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp27, ptr noundef %19)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive31 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp27, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive31, align 8
  %coerce.val.pi32 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi32)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont29
  %__first_34 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %__first_35 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_34, ptr noundef nonnull align 8 dereferenceable(8) %__first_35) #12
  %__begin_36 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %__begin_37 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_36, ptr noundef nonnull align 8 dereferenceable(8) %__begin_37) #12
  %__end_38 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %__end_39 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_38, ptr noundef nonnull align 8 dereferenceable(8) %__end_39) #12
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call40, ptr noundef nonnull align 8 dereferenceable(8) %call41) #12
  %call42 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %if.end

lpad:                                             ; preds = %invoke.cont29, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call43 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont33, %if.then3
  br label %if.end44

if.end44:                                         ; preds = %if.end, %entry
  %call45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %__end_46 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %25 = load ptr, ptr %__end_46, align 8
  %call47 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %25) #12
  %26 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call45, ptr noundef %call47, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__end_48 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %27 = load ptr, ptr %__end_48, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %__end_48, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val49 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val49
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateB6v15007ERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #3 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE10push_frontEOS1_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp19 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.8", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp27 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %3 = load ptr, ptr %call, align 8
  %cmp2 = icmp ult ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %4 = load ptr, ptr %call4, align 8
  %__end_5 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
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
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__end_8 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %9 = load ptr, ptr %__end_8, align 8
  %10 = load i64, ptr %__d, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %10
  %call9 = call noundef ptr @_ZNSt3__113move_backwardB6v15007IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %11 = load i64, ptr %__d, align 8
  %__end_11 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %12 = load ptr, ptr %__end_11, align 8
  %add.ptr12 = getelementptr inbounds ptr, ptr %12, i64 %11
  store ptr %add.ptr12, ptr %__end_11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %13 = load ptr, ptr %call13, align 8
  %__first_14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_14, align 8
  %sub.ptr.lhs.cast15 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast16 = ptrtoint ptr %14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 8
  %mul = mul i64 2, %sub.ptr.div18
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp19, align 8
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp19)
  %15 = load i64, ptr %call20, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %add21 = add i64 %17, 3
  %div22 = udiv i64 %add21, 4
  %call23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %call24 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div22, ptr noundef nonnull align 1 dereferenceable(1) %call23)
  %__begin_25 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_25, align 8
  %call26 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_28 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_28, align 8
  %call30 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp27, ptr noundef %19)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive31 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp27, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive31, align 8
  %coerce.val.pi32 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi32)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont29
  %__first_34 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %__first_35 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_34, ptr noundef nonnull align 8 dereferenceable(8) %__first_35) #12
  %__begin_36 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %__begin_37 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_36, ptr noundef nonnull align 8 dereferenceable(8) %__begin_37) #12
  %__end_38 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %__end_39 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_38, ptr noundef nonnull align 8 dereferenceable(8) %__end_39) #12
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call40, ptr noundef nonnull align 8 dereferenceable(8) %call41) #12
  %call42 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %if.end

lpad:                                             ; preds = %invoke.cont29, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call43 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont33, %if.then3
  br label %if.end44

if.end44:                                         ; preds = %if.end, %entry
  %call45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #12
  %__begin_46 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %25 = load ptr, ptr %__begin_46, align 8
  %add.ptr47 = getelementptr inbounds ptr, ptr %25, i64 -1
  %call48 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %add.ptr47) #12
  %26 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call45, ptr noundef %call48, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__begin_49 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %27 = load ptr, ptr %__begin_49, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %27, i32 -1
  store ptr %incdec.ptr, ptr %__begin_49, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val50 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val50
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #3 {
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

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 align 2 {
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC1B6v15007ERS2_m(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__s) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC2B6v15007ERS2_m(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC1B6v15007ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(16) %__d) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC2B6v15007ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp20 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.8", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp27 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__first_, align 8
  %cmp2 = icmp ugt ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %__begin_4 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__begin_4, align 8
  %__first_5 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
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
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__begin_8 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__begin_8, align 8
  %10 = load i64, ptr %__d, align 8
  %idx.neg = sub i64 0, %10
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.neg
  %call9 = call noundef ptr @_ZNSt3__14moveB6v15007IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__end_10 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  store ptr %call9, ptr %__end_10, align 8
  %11 = load i64, ptr %__d, align 8
  %__begin_11 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %12 = load ptr, ptr %__begin_11, align 8
  %idx.neg12 = sub i64 0, %11
  %add.ptr13 = getelementptr inbounds ptr, ptr %12, i64 %idx.neg12
  store ptr %add.ptr13, ptr %__begin_11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %13 = load ptr, ptr %call14, align 8
  %__first_15 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_15, align 8
  %sub.ptr.lhs.cast16 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast17 = ptrtoint ptr %14 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  %sub.ptr.div19 = sdiv exact i64 %sub.ptr.sub18, 8
  %mul = mul i64 2, %sub.ptr.div19
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp20, align 8
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp20)
  %15 = load i64, ptr %call21, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %div22 = udiv i64 %17, 4
  %call23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %call24 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div22, ptr noundef nonnull align 1 dereferenceable(1) %call23)
  %__begin_25 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_25, align 8
  %call26 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_28 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_28, align 8
  %call30 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp27, ptr noundef %19)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive31 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp27, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive31, align 8
  %coerce.val.pi32 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi32)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont29
  %__first_34 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %__first_35 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_34, ptr noundef nonnull align 8 dereferenceable(8) %__first_35) #12
  %__begin_36 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %__begin_37 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_36, ptr noundef nonnull align 8 dereferenceable(8) %__begin_37) #12
  %__end_38 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %__end_39 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_38, ptr noundef nonnull align 8 dereferenceable(8) %__end_39) #12
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call40, ptr noundef nonnull align 8 dereferenceable(8) %call41) #12
  %call42 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %if.end

lpad:                                             ; preds = %invoke.cont29, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call43 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont33, %if.then3
  br label %if.end44

if.end44:                                         ; preds = %if.end, %entry
  %call45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %__end_46 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %25 = load ptr, ptr %__end_46, align 8
  %call47 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %25) #12
  %26 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call45, ptr noundef %call47, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__end_48 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %27 = load ptr, ptr %__end_48, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %__end_48, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val49 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val49
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #12
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE10push_frontERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__d = alloca i64, align 8
  %__c = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp19 = alloca i64, align 8
  %__t = alloca %"struct.std::__1::__split_buffer.8", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp27 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %3 = load ptr, ptr %call, align 8
  %cmp2 = icmp ult ptr %2, %3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %4 = load ptr, ptr %call4, align 8
  %__end_5 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
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
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__begin_6, align 8
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %8 = load ptr, ptr %__end_7, align 8
  %__end_8 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %9 = load ptr, ptr %__end_8, align 8
  %10 = load i64, ptr %__d, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %10
  %call9 = call noundef ptr @_ZNSt3__113move_backwardB6v15007IPPiS2_EET0_T_S4_S3_(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr)
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %11 = load i64, ptr %__d, align 8
  %__end_11 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %12 = load ptr, ptr %__end_11, align 8
  %add.ptr12 = getelementptr inbounds ptr, ptr %12, i64 %11
  store ptr %add.ptr12, ptr %__end_11, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %13 = load ptr, ptr %call13, align 8
  %__first_14 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %14 = load ptr, ptr %__first_14, align 8
  %sub.ptr.lhs.cast15 = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast16 = ptrtoint ptr %14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %sub.ptr.div18 = sdiv exact i64 %sub.ptr.sub17, 8
  %mul = mul i64 2, %sub.ptr.div18
  store i64 %mul, ptr %ref.tmp, align 8
  store i64 1, ptr %ref.tmp19, align 8
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp19)
  %15 = load i64, ptr %call20, align 8
  store i64 %15, ptr %__c, align 8
  %16 = load i64, ptr %__c, align 8
  %17 = load i64, ptr %__c, align 8
  %add21 = add i64 %17, 3
  %div22 = udiv i64 %add21, 4
  %call23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %call24 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 noundef %16, i64 noundef %div22, ptr noundef nonnull align 1 dereferenceable(1) %call23)
  %__begin_25 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %18 = load ptr, ptr %__begin_25, align 8
  %call26 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %__end_28 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %19 = load ptr, ptr %__end_28, align 8
  %call30 = invoke noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp27, ptr noundef %19)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %20 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %20 to i64
  %coerce.dive31 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp27, i32 0, i32 0
  %21 = load ptr, ptr %coerce.dive31, align 8
  %coerce.val.pi32 = ptrtoint ptr %21 to i64
  invoke void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %__t, i64 %coerce.val.pi, i64 %coerce.val.pi32)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont29
  %__first_34 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %__first_35 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 0
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__first_34, ptr noundef nonnull align 8 dereferenceable(8) %__first_35) #12
  %__begin_36 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %__begin_37 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_36, ptr noundef nonnull align 8 dereferenceable(8) %__begin_37) #12
  %__end_38 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %__end_39 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %__t, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_38, ptr noundef nonnull align 8 dereferenceable(8) %__end_39) #12
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  call void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call40, ptr noundef nonnull align 8 dereferenceable(8) %call41) #12
  %call42 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %if.end

lpad:                                             ; preds = %invoke.cont29, %invoke.cont, %if.else
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %exn.slot, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %ehselector.slot, align 4
  %call43 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__t) #12
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont33, %if.then3
  br label %if.end44

if.end44:                                         ; preds = %if.end, %entry
  %call45 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %__begin_46 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %25 = load ptr, ptr %__begin_46, align 8
  %add.ptr47 = getelementptr inbounds ptr, ptr %25, i64 -1
  %call48 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %add.ptr47) #12
  %26 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JRKS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call45, ptr noundef %call48, ptr noundef nonnull align 8 dereferenceable(8) %26)
  %__begin_49 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %27 = load ptr, ptr %__begin_49, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %27, i32 -1
  store ptr %incdec.ptr, ptr %__begin_49, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val50 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val50
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__14moveB6v15007IPPiS2_EET0_T_S4_S3_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 {
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
  %call = call [2 x i64] @_ZNSt3__16__moveB6v15007INS_17_ClassicAlgPolicyEPPiS3_S3_EENS_9enable_ifIXaaaasr21is_copy_constructibleIT0_EE5valuesr21is_copy_constructibleIT1_EE5valuesr21is_copy_constructibleIT2_EE5valueENS_4pairIS5_S7_EEE4typeES5_S6_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %ref.tmp, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE18__construct_at_endINS_13move_iteratorIPS1_EEEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeESB_SB_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 %__first.coerce, i64 %__last.coerce) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %this.addr = alloca ptr, align 8
  %__tx = alloca %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp4 = alloca %"class.std::__1::move_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %this, ptr %this.addr, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this3, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp4, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp4, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call = call noundef i64 @_ZNSt3__18distanceB6v15007INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_(i64 %coerce.val.pi, i64 %coerce.val.pi7)
  %call8 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC1EPPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef %__end_, i64 noundef %call) #12
  br label %for.cond

for.cond:                                         ; preds = %invoke.cont16, %entry
  %__pos_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %2 = load ptr, ptr %__pos_, align 8
  %__end_9 = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %3 = load ptr, ptr %__end_9, align 8
  %cmp = icmp ne ptr %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this3) #12
  %__pos_11 = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %4 = load ptr, ptr %__pos_11, align 8
  %call12 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %4) #12
  %call13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__113move_iteratorIPPiEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call10, ptr noundef %call12, ptr noundef nonnull align 8 dereferenceable(8) %call13)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %invoke.cont
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont14
  %__pos_15 = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %5 = load ptr, ptr %__pos_15, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %__pos_15, align 8
  %call17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPPiEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %for.inc
  br label %for.cond, !llvm.loop !12

lpad:                                             ; preds = %for.inc, %invoke.cont, %for.body
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call19 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #12
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %call18 = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #12
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val20 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val20
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113move_iteratorIPPiEC1B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__i) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__113move_iteratorIPPiEC2B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JRKS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #3 align 2 {
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
  call void @_ZNSt3__19allocatorIPiE9constructB6v15007IS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__moveB6v15007INS_17_ClassicAlgPolicyEPPiS3_S3_EENS_9enable_ifIXaaaasr21is_copy_constructibleIT0_EE5valuesr21is_copy_constructibleIT1_EE5valuesr21is_copy_constructibleIT2_EE5valueENS_4pairIS5_S7_EEE4typeES5_S6_S7_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__ret = alloca %"struct.std::__1::pair", align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp5 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPPiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %0) #12
  %1 = load ptr, ptr %__last.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPPiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %1) #12
  %2 = load ptr, ptr %__result.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPPiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %2) #12
  %call3 = call [2 x i64] @_ZNSt3__111__move_implB6v15007INS_17_ClassicAlgPolicyEPiS2_vEENS_4pairIPT0_PT1_EES5_S5_S7_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2)
  store [2 x i64] %call3, ptr %__ret, align 8
  %3 = load ptr, ptr %__first.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %__ret, i32 0, i32 0
  %4 = load ptr, ptr %first, align 8
  %call4 = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %3, ptr noundef %4) #12
  store ptr %call4, ptr %ref.tmp, align 8
  %5 = load ptr, ptr %__result.addr, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %__ret, i32 0, i32 1
  %6 = load ptr, ptr %second, align 8
  %call6 = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %5, ptr noundef %6) #12
  store ptr %call6, ptr %ref.tmp5, align 8
  %call7 = call [2 x i64] @_ZNSt3__19make_pairB6v15007IPPiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp5)
  store [2 x i64] %call7, ptr %retval, align 8
  %7 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__111__move_implB6v15007INS_17_ClassicAlgPolicyEPiS2_vEENS_4pairIPT0_PT1_EES5_S5_S7_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
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
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %__n, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %3 = load ptr, ptr %__first.addr, align 8
  %4 = load i64, ptr %__n, align 8
  %mul = mul i64 %4, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 %mul, i1 false)
  %5 = load ptr, ptr %__first.addr, align 8
  %6 = load i64, ptr %__n, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr %add.ptr, ptr %ref.tmp, align 8
  %7 = load ptr, ptr %__result.addr, align 8
  %8 = load i64, ptr %__n, align 8
  %add.ptr2 = getelementptr inbounds ptr, ptr %7, i64 %8
  store ptr %add.ptr2, ptr %ref.tmp1, align 8
  %call = call [2 x i64] @_ZNSt3__19make_pairB6v15007IPPiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  store [2 x i64] %call, ptr %retval, align 8
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPPiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %__i) #2 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__unwrapB6v15007ES2_(ptr noundef %0) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB6v15007IPPiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC1B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #2 personality ptr @__gxx_personality_v0 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__rewrapB6v15007ES2_S2_(ptr noundef %0, ptr noundef %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %call

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #13
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__unwrapB6v15007ES2_(ptr noundef %__i) #2 align 2 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %0) #12
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC1B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__14pairIPPiS2_EC2B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPPiS2_EC2B6v15007IS2_S2_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u1.addr = alloca ptr, align 8
  %__u2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u1, ptr %__u1.addr, align 8
  store ptr %__u2, ptr %__u2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %first = getelementptr inbounds %"struct.std::__1::pair", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u1.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %first, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__u2.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %second, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPPiLb1EE8__rewrapB6v15007ES2_S2_(ptr noundef %__orig_iter, ptr noundef %__unwrapped_iter) #2 align 2 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__unwrapped_iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__unwrapped_iter, ptr %__unwrapped_iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__unwrapped_iter.addr, align 8
  %2 = load ptr, ptr %__orig_iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %2) #12
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 %sub.ptr.div
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__18distanceB6v15007INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_(i64 %__first.coerce, i64 %__last.coerce) #3 {
entry:
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::move_iterator", align 8
  %agg.tmp4 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp3, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive5 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive6 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %agg.tmp3, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call = call noundef i64 @_ZNSt3__110__distanceB6v15007INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_NS_26random_access_iterator_tagE(i64 %coerce.val.pi, i64 %coerce.val.pi7)
  ret i64 %call
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC1EPPS1_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC2EPPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #3 align 2 {
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
  call void @_ZNSt3__19allocatorIPiE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__113move_iteratorIPPiEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__current_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPPiEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__current_, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %__current_, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__110__distanceB6v15007INS_13move_iteratorIPPiEEEENS_15iterator_traitsIT_E15difference_typeES6_S6_NS_26random_access_iterator_tagE(i64 %__first.coerce, i64 %__last.coerce) #3 {
entry:
  %__first = alloca %"class.std::__1::move_iterator", align 8
  %__last = alloca %"class.std::__1::move_iterator", align 8
  %0 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %coerce.dive = getelementptr inbounds %"class.std::__1::move_iterator", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  %call = call noundef i64 @_ZNSt3__1miB6v15007IPPiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__last, ptr noundef nonnull align 8 dereferenceable(8) %__first)
  ret i64 %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__1miB6v15007IPPiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__113move_iteratorIPPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__113move_iteratorIPPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__113move_iteratorIPPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__current_, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionC2EPPS1_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__pos_, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__p.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %4
  store ptr %add.ptr, ptr %__end_, align 8
  %__dest_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %5 = load ptr, ptr %__p.addr, align 8
  store ptr %5, ptr %__dest_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorIPiE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPiEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPiEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.10", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__value_, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__pos_, align 8
  %__dest_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int *, std::__1::allocator<int *> &>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__dest_, align 8
  store ptr %0, ptr %1, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113move_iteratorIPPiEC2B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__i) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__i.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__current_ = getelementptr inbounds %"class.std::__1::move_iterator", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i.addr, align 8
  store ptr %0, ptr %__current_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorIPiE9constructB6v15007IS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 align 2 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #15
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 4
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 4)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #2 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  ret i64 %call
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #8 {
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
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 4611686018427387903
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #9

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
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #10

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #10

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113move_backwardB6v15007IPPiS2_EET0_T_S4_S3_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %call = call noundef ptr @_ZNSt3__115__move_backwardB6v15007INS_17_ClassicAlgPolicyEPPiS3_EET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__115__move_backwardB6v15007INS_17_ClassicAlgPolicyEPPiS3_EET1_T0_S5_S4_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__result.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPPiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %1) #12
  %2 = load ptr, ptr %__last.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPPiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %2) #12
  %3 = load ptr, ptr %__result.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPPiNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %3) #12
  %call3 = call noundef ptr @_ZNSt3__120__move_backward_implB6v15007INS_17_ClassicAlgPolicyEPiS2_EENS_9enable_ifIXaasr7is_sameINS_12remove_constIT0_E4typeET1_EE5valuesr28is_trivially_move_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2)
  %call4 = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPPiS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %0, ptr noundef %call3) #12
  ret ptr %call4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__120__move_backward_implB6v15007INS_17_ClassicAlgPolicyEPiS2_EENS_9enable_ifIXaasr7is_sameINS_12remove_constIT0_E4typeET1_EE5valuesr28is_trivially_move_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
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
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %__n, align 8
  %4 = load ptr, ptr %__result.addr, align 8
  %idx.neg = sub i64 0, %3
  %add.ptr = getelementptr inbounds ptr, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %__result.addr, align 8
  %5 = load ptr, ptr %__result.addr, align 8
  %6 = load ptr, ptr %__first.addr, align 8
  %7 = load i64, ptr %__n, align 8
  %mul = mul i64 %7, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %__result.addr, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #2 align 2 {
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

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 align 2 {
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
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 3
  store ptr null, ptr %ref.tmp, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load i64, ptr %__cap.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %2 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIPiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %2)
  store [2 x i64] %call3, ptr %__allocation, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 0
  %3 = load ptr, ptr %ptr, align 8
  %__first_4 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  store ptr %3, ptr %__first_4, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 1
  %4 = load i64, ptr %count, align 8
  store i64 %4, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__first_5 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__first_5, align 8
  %6 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 %6
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %__first_6 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %7 = load ptr, ptr %__first_6, align 8
  %8 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds ptr, ptr %7, i64 %8
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  store ptr %add.ptr7, ptr %call8, align 8
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #6 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIPiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #3 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %__alloc.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIPiE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  store ptr %call, ptr %ptr, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 1
  %2 = load i64, ptr %__n.addr, align 8
  store i64 %2, ptr %count, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPPiLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPiEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPiEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.10", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  store ptr %0, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIPiE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #12
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #15
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 8
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #2 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorIPiE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  ret i64 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIPiE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEC2B6v15007ERS2_m(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__s) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__s.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store i64 %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__a.addr, align 8
  store ptr %0, ptr %__alloc_, align 8
  %__s_ = getelementptr inbounds %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__s.addr, align 8
  store i64 %1, ptr %__s_, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC2B6v15007ILb1EvEES1_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS5_EEXT_EE20__good_rval_ref_typeE(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(16) %__d) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC1B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 8 dereferenceable(16) %0)
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
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC1B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(16) %__t2) unnamed_addr #6 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC2B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret ptr %this1
}

; Function Attrs: noinline optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEEC2B6v15007IRS1_S5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(16) %__t2) unnamed_addr #6 align 2 {
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
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIiEEEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B6v15007IRS1_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIiEEEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.13", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__value_, ptr align 8 %0, i64 16, i1 false)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.12", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPPiNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5resetB6v15007ES1_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef null) #12
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5resetB6v15007ES1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_) #12
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_2) #12
  store ptr %1, ptr %call3, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__ptr_4) #12
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEclB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(16) %call5, ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__117__compressed_pairIPiNS_22__allocator_destructorINS_9allocatorIiEEEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIiEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__122__allocator_destructorINS_9allocatorIiEEEclB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__p) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc_, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__s_ = getelementptr inbounds %"class.std::__1::__allocator_destructor", ptr %this1, i32 0, i32 1
  %2 = load i64, ptr %__s_, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__122__compressed_pair_elemINS_22__allocator_destructorINS_9allocatorIiEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.13", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %__first_2 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_2, align 8
  %call3 = invoke noundef i64 @_ZNKSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #12
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %0 = load ptr, ptr %call, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant.7", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = alloca %"struct.std::__1::integral_constant.7", align 1
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #12
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IPiEEPT_S3_(ptr noundef %incdec.ptr) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIPiEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIPiRNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.8", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPPiRNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #12
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorIiE9constructB6v15007IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 align 2 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr void @_ZNSt3__15dequeIiNS_9allocatorIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__p = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %0 = load i64, ptr %call2, align 8
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__start_, align 8
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  store i64 %sub, ptr %__p, align 8
  %2 = load ptr, ptr %__a, align 8
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call3 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #12
  %3 = load i64, ptr %__p, align 8
  %div = udiv i64 %3, 1024
  %add.ptr = getelementptr inbounds ptr, ptr %call3, i64 %div
  %4 = load ptr, ptr %add.ptr, align 8
  %5 = load i64, ptr %__p, align 8
  %rem = urem i64 %5, 1024
  %add.ptr4 = getelementptr inbounds i32, ptr %4, i64 %rem
  %call5 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %add.ptr4) #12
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB6v15007IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %call5)
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %6 = load i64, ptr %call6, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %call6, align 8
  %call7 = call noundef zeroext i1 @_ZNSt3__15dequeIiNS_9allocatorIiEEE25__maybe_remove_back_spareB6v15007Eb(ptr noundef nonnull align 8 dereferenceable(48) %this1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__15dequeIiNS_9allocatorIiEEE25__maybe_remove_back_spareB6v15007Eb(ptr noundef nonnull align 8 dereferenceable(48) %this, i1 noundef zeroext %__keep_one) #3 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca ptr, align 8
  %__keep_one.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__keep_one to i8
  store i8 %frombool, ptr %__keep_one.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE19__back_spare_blocksB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %cmp = icmp uge i64 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %__keep_one.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE19__back_spare_blocksB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %call4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_)
  %1 = load ptr, ptr %call5, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %call4, ptr noundef %1, i64 noundef 1024) #12
  %__map_6 = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8pop_backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_6)
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i1 false, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1
  ret i1 %2
}

; Function Attrs: mustprogress noinline optnone ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE19__back_spare_blocksB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__15dequeIiNS_9allocatorIiEEE12__back_spareB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %div = udiv i64 %call, 1024
  ret i64 %div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE8pop_backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %0, i64 -1
  call void @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__15dequeIiNS_9allocatorIiEEE4backEv(ptr noundef nonnull align 8 dereferenceable(48) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__deque_baseIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1)
  %0 = load i64, ptr %call, align 8
  %__start_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 1
  %1 = load i64, ptr %__start_, align 8
  %add = add i64 %0, %1
  %sub = sub i64 %add, 1
  store i64 %sub, ptr %__p, align 8
  %__map_ = getelementptr inbounds %"class.std::__1::__deque_base", ptr %this1, i32 0, i32 0
  %call2 = call noundef ptr @_ZNSt3__114__split_bufferIPiNS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__map_) #12
  %2 = load i64, ptr %__p, align 8
  %div = udiv i64 %2, 1024
  %add.ptr = getelementptr inbounds ptr, ptr %call2, i64 %div
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = load i64, ptr %__p, align 8
  %rem = urem i64 %4, 1024
  %add.ptr3 = getelementptr inbounds i32, ptr %3, i64 %rem
  ret ptr %add.ptr3
}

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { noinline noreturn nounwind }
attributes #5 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noinline optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn }
attributes #8 = { mustprogress noinline noreturn optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
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
