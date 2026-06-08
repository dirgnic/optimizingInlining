; ModuleID = './source_snapshot/public_repos/tracy/server/TracyTaskDispatch.cpp'
source_filename = "./source_snapshot/public_repos/tracy/server/TracyTaskDispatch.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.anon = type { ptr, ptr, i64 }
%"class.tracy::TaskDispatch" = type { %"class.std::__1::vector", %"class.std::__1::mutex", %"class.std::__1::condition_variable", %"class.std::__1::condition_variable", %"struct.std::__1::atomic", i64, %"class.std::__1::vector.1" }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.std::__1::mutex" = type { %struct._opaque_pthread_mutex_t }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::condition_variable" = type { %struct._opaque_pthread_cond_t }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__cxx_atomic_impl" }
%"struct.std::__1::__cxx_atomic_impl" = type { %"struct.std::__1::__cxx_atomic_base_impl" }
%"struct.std::__1::__cxx_atomic_base_impl" = type { i8 }
%"class.std::__1::vector.1" = type { ptr, ptr, %"class.std::__1::__compressed_pair.2" }
%"class.std::__1::__compressed_pair.2" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.3" = type { ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.10" }
%"class.std::__1::__compressed_pair.10" = type { %"struct.std::__1::__compressed_pair_elem.3", %"struct.std::__1::__compressed_pair_elem.11" }
%"struct.std::__1::__compressed_pair_elem.11" = type { ptr }
%"class.std::__1::__wrap_iter" = type { ptr }
%"class.std::__1::thread" = type { ptr }
%"class.std::__1::lock_guard" = type { ptr }
%"class.std::__1::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"class.std::__1::function" = type { %"class.std::__1::__function::__value_func" }
%"class.std::__1::__function::__value_func" = type { %"struct.std::__1::aligned_storage<24, 8>::type", ptr }
%"struct.std::__1::aligned_storage<24, 8>::type" = type { [24 x i8] }
%class.anon.8 = type { ptr }
%class.anon.9 = type { ptr }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector" = type { ptr }
%"class.std::__1::vector<std::__1::thread>::__destroy_vector" = type { ptr }
%"class.std::__1::reverse_iterator" = type { ptr, ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"class.std::__1::_AllocatorDestroyRangeReverse" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator.12" = type { [8 x i8], %"class.std::__1::reverse_iterator", %"class.std::__1::reverse_iterator" }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.13" }
%"class.std::__1::__compressed_pair.13" = type { %"struct.std::__1::__compressed_pair_elem.14" }
%"struct.std::__1::__compressed_pair_elem.14" = type { ptr }
%"class.std::__1::unique_ptr.16" = type { %"class.std::__1::__compressed_pair.17" }
%"class.std::__1::__compressed_pair.17" = type { %"struct.std::__1::__compressed_pair_elem.18" }
%"struct.std::__1::__compressed_pair_elem.18" = type { ptr }
%"struct.std::__1::__tuple_indices.22" = type { i8 }
%"struct.std::__1::__value_init_tag" = type { i8 }
%"struct.std::__1::__tuple_indices" = type { i8 }
%"struct.std::__1::__tuple_types" = type { i8 }
%"struct.std::__1::__tuple_types.23" = type { i8 }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf", %"class.std::__1::__tuple_leaf.19" }
%"class.std::__1::__tuple_leaf" = type { %"class.std::__1::unique_ptr" }
%"class.std::__1::__tuple_leaf.19" = type { %class.anon }
%"class.std::__1::__thread_specific_ptr" = type { i64 }
%"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::__split_buffer.24" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.25" }
%"class.std::__1::__compressed_pair.25" = type { %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem.26" }
%"struct.std::__1::__compressed_pair_elem.26" = type { ptr }
%"class.std::__1::reverse_iterator.28" = type { ptr, ptr }
%"struct.std::__1::__allocation_result.27" = type { ptr, i64 }
%"class.std::__1::_AllocatorDestroyRangeReverse.30" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator.31" = type { [8 x i8], %"class.std::__1::reverse_iterator.28", %"class.std::__1::reverse_iterator.28" }

@.str = private unnamed_addr constant [8 x i8] c"%s #%zu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.2 = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"unique_lock::unlock: not locked\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSNSt3__117bad_function_callE = linkonce_odr hidden constant [28 x i8] c"NSt3__117bad_function_callE\00", align 1
@_ZTISt9exception = external constant ptr
@_ZTINSt3__117bad_function_callE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__117bad_function_callE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTISt9exception }, align 8
@_ZTVNSt3__117bad_function_callE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt3__117bad_function_callE, ptr @_ZNSt3__117bad_function_callD1Ev, ptr @_ZNSt3__117bad_function_callD0Ev, ptr @_ZNKSt9exception4whatEv] }, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"unique_lock::lock: references null mutex\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"unique_lock::lock: already locked\00", align 1

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy12TaskDispatchC2EmPKc(ptr noundef nonnull returned align 8 dereferenceable(224) %this, i64 noundef %workers, ptr noundef %name) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %workers.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %ref.tmp = alloca %class.anon, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %workers, ptr %workers.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %m_queue = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #14
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__15mutexC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock) #14
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 2
  %call3 = call noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #14
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 3
  %call4 = call noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #14
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 4
  %call5 = call noundef ptr @_ZNSt3__16atomicIbEC1B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i1 noundef zeroext false) #14
  %m_jobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 5
  store i64 0, ptr %m_jobs, align 8
  %m_workers = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 6
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers) #14
  %m_workers7 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 6
  %0 = load i64, ptr %workers.addr, align 8
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %m_workers7, i64 noundef %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %workers.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %m_workers8 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 6
  %3 = getelementptr inbounds %class.anon, ptr %ref.tmp, i32 0, i32 0
  store ptr %this1, ptr %3, align 8
  %4 = getelementptr inbounds %class.anon, ptr %ref.tmp, i32 0, i32 1
  %5 = load ptr, ptr %name.addr, align 8
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds %class.anon, ptr %ref.tmp, i32 0, i32 2
  %7 = load i64, ptr %i, align 8
  store i64 %7, ptr %6, align 8
  %call10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEERS1_DpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %m_workers8, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont9
  %8 = load i64, ptr %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

lpad:                                             ; preds = %for.body, %entry
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = extractvalue { ptr, i32 } %9, 0
  store ptr %10, ptr %exn.slot, align 8
  %11 = extractvalue { ptr, i32 } %9, 1
  store i32 %11, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers) #14
  %call12 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #14
  %call13 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #14
  %call14 = call noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock) #14
  %call15 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #14
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val16 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val16
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15mutexC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(64) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__15mutexC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__118condition_variableC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIbEC1B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__d to i8
  store i8 %frombool, ptr %__d.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %__d.addr, align 1
  %tobool = trunc i8 %0 to i1
  %call = call noundef ptr @_ZNSt3__16atomicIbEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this1, i1 noundef zeroext %tobool) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__a = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %cmp3 = icmp ugt i64 %1, %call2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #15
  unreachable

if.end:                                           ; preds = %if.then
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  store ptr %call5, ptr %__a, align 8
  %2 = load i64, ptr %__n.addr, align 8
  %call6 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %3 = load ptr, ptr %__a, align 8
  %call7 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %2, i64 noundef %call6, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %call8 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  br label %if.end10

lpad:                                             ; preds = %if.end
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  br label %eh.resume

if.end10:                                         ; preds = %invoke.cont, %entry
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEERS1_DpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__args.addr, align 8
  call void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__construct_one_at_endB6v15007IJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__emplace_back_slow_pathIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %call2
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull returned align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy12TaskDispatchC1EmPKc(ptr noundef nonnull returned align 8 dereferenceable(224) %this, i64 noundef %workers, ptr noundef %name) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %workers.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %workers, ptr %workers.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %workers.addr, align 8
  %1 = load ptr, ptr %name.addr, align 8
  %call = call noundef ptr @_ZN5tracy12TaskDispatchC2EmPKc(ptr noundef nonnull align 8 dereferenceable(224) %this1, i64 noundef %0, ptr noundef %1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12TaskDispatchD2Ev(ptr noundef nonnull returned align 8 dereferenceable(224) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__range1 = alloca ptr, align 8
  %__begin1 = alloca %"class.std::__1::__wrap_iter", align 8
  %__end1 = alloca %"class.std::__1::__wrap_iter", align 8
  %worker = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 4
  call void @_ZNSt3__113__atomic_baseIbLb0EE5storeB6v15007EbNS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i1 noundef zeroext true, i32 noundef 3) #14
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #14
  %m_queueLock2 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock2) #14
  %m_workers = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 6
  store ptr %m_workers, ptr %__range1, align 8
  %0 = load ptr, ptr %__range1, align 8
  %call = call i64 @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__begin1, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %1 = load ptr, ptr %__range1, align 8
  %call3 = call i64 @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  %coerce.dive4 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %__end1, i32 0, i32 0
  %coerce.val.ip5 = inttoptr i64 %call3 to ptr
  store ptr %coerce.val.ip5, ptr %coerce.dive4, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %call6 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin1, ptr noundef nonnull align 8 dereferenceable(8) %__end1) #14
  br i1 %call6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__begin1) #14
  store ptr %call7, ptr %worker, align 8
  %2 = load ptr, ptr %worker, align 8
  invoke void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont8
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__begin1) #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %m_workers10 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 6
  %call11 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers10) #14
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 3
  %call12 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #14
  %m_cvWork13 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 2
  %call14 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork13) #14
  %m_queueLock15 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  %call16 = call noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock15) #14
  %m_queue = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %call17 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #14
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3

terminate.lpad:                                   ; preds = %for.body, %entry
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__113__atomic_baseIbLb0EE5storeB6v15007EbNS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d, i32 noundef %__m) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i8, align 1
  %__m.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__d to i8
  store i8 %frombool, ptr %__d.addr, align 1
  store i32 %__m, ptr %__m.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_ = getelementptr inbounds %"struct.std::__1::__atomic_base", ptr %this1, i32 0, i32 0
  %0 = load i8, ptr %__d.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = load i32, ptr %__m.addr, align 4
  call void @_ZNSt3__118__cxx_atomic_storeB6v15007IbEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef %__a_, i1 noundef zeroext %tobool, i32 noundef %1) #14
  ret void
}

declare void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64)) #5

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #6 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #14
  call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) #3

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64)) #3

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC1B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %this1, ptr noundef %0) #14
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC1B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %this1, ptr noundef %0) #14
  %coerce.dive = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  ret ptr %0
}

declare void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i32 1
  store ptr %incdec.ptr, ptr %__i, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12TaskDispatchD1Ev(ptr noundef nonnull returned align 8 dereferenceable(224) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN5tracy12TaskDispatchD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch5QueueERKNSt3__18functionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef nonnull align 8 dereferenceable(32) %f) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %lock = alloca %"class.std::__1::lock_guard", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  %m_queue = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %f.addr, align 8
  %call2 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %m_queue, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #14
  %call3 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #14
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call4 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__m, ptr %__m.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__m.addr, align 8
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %call2
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch5QueueEONSt3__18functionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef nonnull align 8 dereferenceable(32) %f) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %lock = alloca %"class.std::__1::lock_guard", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  %m_queue = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %f.addr, align 8
  %call2 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %m_queue, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #14
  %call3 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #14
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call4 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %call2
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch4SyncEv(ptr noundef nonnull align 8 dereferenceable(224) %this) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %lock = alloca %"class.std::__1::unique_lock", align 8
  %f = alloca %"class.std::__1::function", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %class.anon.8, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont11, %entry
  %m_queue = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %call2 = call noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #14
  %lnot = xor i1 %call2, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %m_queue3 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %call4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue3) #14
  %call5 = invoke noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %f, ptr noundef nonnull align 8 dereferenceable(32) %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  %m_queue6 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %m_queue6)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont9 unwind label %lpad7

invoke.cont9:                                     ; preds = %invoke.cont8
  invoke void @_ZNKSt3__18functionIFvvEEclEv(ptr noundef nonnull align 8 dereferenceable(32) %f)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont9
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE4lockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont11 unwind label %lpad7

invoke.cont11:                                    ; preds = %invoke.cont10
  %call12 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #14
  br label %while.cond, !llvm.loop !8

lpad:                                             ; preds = %while.end, %while.body
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont10, %invoke.cont9, %invoke.cont8, %invoke.cont
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call13 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #14
  br label %ehcleanup

while.end:                                        ; preds = %while.cond
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 3
  %6 = getelementptr inbounds %class.anon.8, ptr %agg.tmp, i32 0, i32 0
  store ptr %this1, ptr %6, align 8
  %coerce.dive = getelementptr inbounds %class.anon.8, ptr %agg.tmp, i32 0, i32 0
  %7 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %7 to i64
  invoke void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch4SyncEvE3$_1EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs, ptr noundef nonnull align 8 dereferenceable(9) %lock, i64 %coerce.val.pi)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %while.end
  %call15 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #14
  ret void

ehcleanup:                                        ; preds = %lpad7, %lpad
  %call16 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val17 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val17
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__m, ptr %__m.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__m.addr, align 8
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %this1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__end_, align 8
  %cmp = icmp eq ptr %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i64 -1
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 1
  %0 = load i8, ptr %__owns_, align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 1, ptr noundef @.str.3) #15
  unreachable

if.end:                                           ; preds = %entry
  %__m_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__m_, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #14
  %__owns_2 = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 1
  store i8 0, ptr %__owns_2, align 8
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNKSt3__18functionIFvvEEclEv(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::function", ptr %this1, i32 0, i32 0
  call void @_ZNKSt3__110__function12__value_funcIFvvEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__f_)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__111unique_lockINS_5mutexEE4lockEv(ptr noundef nonnull align 8 dereferenceable(9) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__m_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__m_, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 1, ptr noundef @.str.4) #15
  unreachable

if.end:                                           ; preds = %entry
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 1
  %1 = load i8, ptr %__owns_, align 8
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 11, ptr noundef @.str.5) #15
  unreachable

if.end3:                                          ; preds = %if.end
  %__m_4 = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__m_4, align 8
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  %__owns_5 = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 1
  store i8 1, ptr %__owns_5, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__18functionIFvvEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch4SyncEvE3$_1EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %__lk, i64 %__pred.coerce) #2 align 2 {
entry:
  %__pred = alloca %class.anon.8, align 8
  %this.addr = alloca ptr, align 8
  %__lk.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %class.anon.8, ptr %__pred, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__pred.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__lk, ptr %__lk.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call noundef zeroext i1 @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_15(ptr noundef nonnull align 8 dereferenceable(8) %__pred)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %__lk.addr, align 8
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48) %this1, ptr noundef nonnull align 8 dereferenceable(9) %0) #14
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(9) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch6WorkerEv(ptr noundef nonnull align 8 dereferenceable(224) %this) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %lock = alloca %"class.std::__1::unique_lock", align 8
  %agg.tmp = alloca %class.anon.9, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca %"class.std::__1::function", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 1
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 2
  %0 = getelementptr inbounds %class.anon.9, ptr %agg.tmp, i32 0, i32 0
  store ptr %this1, ptr %0, align 8
  %coerce.dive = getelementptr inbounds %class.anon.9, ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  invoke void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch6WorkerEvE3$_2EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork, ptr noundef nonnull align 8 dereferenceable(9) %lock, i64 %coerce.val.pi)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 4
  %call2 = call noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i32 noundef 2) #14
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.end, %for.cond
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont
  %m_queue = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #14
  %call5 = invoke noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %f, ptr noundef nonnull align 8 dereferenceable(32) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %if.end
  %m_queue6 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %m_queue6)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont4
  %m_jobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 5
  %5 = load i64, ptr %m_jobs, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %m_jobs, align 8
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont9 unwind label %lpad7

invoke.cont9:                                     ; preds = %invoke.cont8
  invoke void @_ZNKSt3__18functionIFvvEEclEv(ptr noundef nonnull align 8 dereferenceable(32) %f)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont9
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE4lockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont11 unwind label %lpad7

invoke.cont11:                                    ; preds = %invoke.cont10
  %m_jobs12 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 5
  %6 = load i64, ptr %m_jobs12, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %m_jobs12, align 8
  %m_jobs13 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 5
  %7 = load i64, ptr %m_jobs13, align 8
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %invoke.cont11
  %m_queue14 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 0
  %call15 = call noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue14) #14
  br i1 %call15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this1, i32 0, i32 3
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #14
  br label %if.end17

lpad7:                                            ; preds = %if.end17, %invoke.cont10, %invoke.cont9, %invoke.cont8, %invoke.cont4
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  %call20 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #14
  br label %ehcleanup

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %invoke.cont11
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont18 unwind label %lpad7

invoke.cont18:                                    ; preds = %if.end17
  %call19 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #14
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont18, %if.then
  %call21 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #14
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !llvm.loop !10

ehcleanup:                                        ; preds = %lpad7, %lpad
  %call22 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #14
  br label %eh.resume

return:                                           ; preds = %cleanup
  ret void

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val23 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch6WorkerEvE3$_2EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %__lk, i64 %__pred.coerce) #2 align 2 {
entry:
  %__pred = alloca %class.anon.9, align 8
  %this.addr = alloca ptr, align 8
  %__lk.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %class.anon.9, ptr %__pred, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__pred.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__lk, ptr %__lk.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call noundef zeroext i1 @"_ZZN5tracy12TaskDispatch6WorkerEvENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(8) %__pred)
  %lnot = xor i1 %call, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %__lk.addr, align 8
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48) %this1, ptr noundef nonnull align 8 dereferenceable(9) %0) #14
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %__m) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %__m, ptr %__m.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_ = getelementptr inbounds %"struct.std::__1::__atomic_base", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %__m.addr, align 4
  %call = call noundef zeroext i1 @_ZNSt3__117__cxx_atomic_loadB6v15007IbEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef %__a_, i32 noundef %0) #14
  ret i1 %call
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch7SetNameEPKcm(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef %name, i64 noundef %num) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %tmp = alloca [128 x i8], align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store i64 %num, ptr %num.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], ptr %tmp, i64 0, i64 0
  %0 = load ptr, ptr %name.addr, align 8
  %1 = load i64, ptr %num.addr, align 8
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 128, ptr noundef @.str, ptr noundef %0, i64 noundef %1)
  %arraydecay2 = getelementptr inbounds [128 x i8], ptr %tmp, i64 0, i64 0
  call void @_ZN5tracy13SetThreadNameEPKc(ptr noundef %arraydecay2)
  ret void
}

declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

declare void @_ZN5tracy13SetThreadNameEPKc(ptr noundef) #5

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15mutexC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(64) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__m_ = getelementptr inbounds %"class.std::__1::mutex", ptr %this1, i32 0, i32 0
  %__sig = getelementptr inbounds %struct._opaque_pthread_mutex_t, ptr %__m_, i32 0, i32 0
  store i64 850045863, ptr %__sig, align 8
  %__opaque = getelementptr inbounds %struct._opaque_pthread_mutex_t, ptr %__m_, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %__opaque, i8 0, i64 56, i1 false)
  %arrayinit.begin = getelementptr inbounds [56 x i8], ptr %__opaque, i64 0, i64 0
  ret ptr %this1
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118condition_variableC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cv_ = getelementptr inbounds %"class.std::__1::condition_variable", ptr %this1, i32 0, i32 0
  %__sig = getelementptr inbounds %struct._opaque_pthread_cond_t, ptr %__cv_, i32 0, i32 0
  store i64 1018212795, ptr %__sig, align 8
  %__opaque = getelementptr inbounds %struct._opaque_pthread_cond_t, ptr %__cv_, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %__opaque, i8 0, i64 40, i1 false)
  %arrayinit.begin = getelementptr inbounds [40 x i8], ptr %__opaque, i64 0, i64 0
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIbEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__d to i8
  store i8 %frombool, ptr %__d.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %__d.addr, align 1
  %tobool = trunc i8 %0 to i1
  %call = call noundef ptr @_ZNSt3__113__atomic_baseIbLb0EEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this1, i1 noundef zeroext %tobool) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__atomic_baseIbLb0EEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__d.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__d to i8
  store i8 %frombool, ptr %__d.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_ = getelementptr inbounds %"struct.std::__1::__atomic_base", ptr %this1, i32 0, i32 0
  %0 = load i8, ptr %__d.addr, align 1
  %tobool = trunc i8 %0 to i1
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC1B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %__a_, i1 noundef zeroext %tobool) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC1B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__value.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__value to i8
  store i8 %frombool, ptr %__value.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %__value.addr, align 1
  %tobool = trunc i8 %0 to i1
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this1, i1 noundef zeroext %tobool) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__value.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__value to i8
  store i8 %frombool, ptr %__value.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i8, ptr %__value.addr, align 1
  %tobool = trunc i8 %0 to i1
  %call = call noundef ptr @_ZNSt3__122__cxx_atomic_base_implIbEC2Eb(ptr noundef nonnull align 1 dereferenceable(1) %this1, i1 noundef zeroext %tobool) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__cxx_atomic_base_implIbEC2Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__value.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  %frombool = zext i1 %__value to i8
  store i8 %frombool, ptr %__value.addr, align 1
  %this1 = load ptr, ptr %this.addr, align 8
  %__a_value = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", ptr %this1, i32 0, i32 0
  %0 = load i8, ptr %__value.addr, align 1
  %tobool = trunc i8 %0 to i1
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %__a_value, align 1
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  ret ptr %0
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__m, ptr %__m.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__m_ = getelementptr inbounds %"class.std::__1::lock_guard", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__m.addr, align 8
  store ptr %0, ptr %__m_, align 8
  %__m_2 = getelementptr inbounds %"class.std::__1::lock_guard", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__m_2, align 8
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__m_ = getelementptr inbounds %"class.std::__1::lock_guard", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__m_, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %this1)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #16
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
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

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_8functionIFvvEEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_8functionIFvvEEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %this1)
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %invoke.cont
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #16
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.3", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  store ptr null, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__default_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_6threadEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_6threadEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_6threadEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_6threadEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC1ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #16
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC1ERS6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__vec.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec_, align 8
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %__vec_2 = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__vec_2, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %1)
  %__vec_3 = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__vec_3, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__begin_, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__vec_4 = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__vec_4, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %__vec_5 = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__vec_5, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  %__vec_6 = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %6 = load ptr, ptr %__vec_6, align 8
  %__begin_7 = getelementptr inbounds %"class.std::__1::vector", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__begin_7, align 8
  %__vec_8 = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__vec_8, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #14
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE10deallocateB6v15007ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC2ERS6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec.addr, align 8
  store ptr %0, ptr %__vec_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr6 = getelementptr inbounds %"class.std::__1::function", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call8 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr9 = getelementptr inbounds %"class.std::__1::function", ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__base_destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE10deallocateB6v15007ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #4 align 2 {
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
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE10deallocateB6v15007EPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load ptr, ptr %call, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 align 2 {
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
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
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
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__base_destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %incdec.ptr) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr %4, ptr %__end_3, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE7destroyB6v15007EPS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_8functionIFvvEEEE7destroyB6v15007EPS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_8functionIFvvEEEE10deallocateB6v15007EPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #4 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @__clang_call_terminate(ptr %3) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #2 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %0) #14
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
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #4 {
entry:
  %__align.addr = alloca i64, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %cmp = icmp ugt i64 %0, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #2 {
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
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #2 {
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #4 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  call void @_ZdlPvSt11align_val_t(ptr noundef %0, i64 noundef %1) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #4 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::vector<std::__1::thread>::__destroy_vector", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC1ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #16
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC1ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__vec.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC2ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec_, align 8
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %__vec_2 = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__vec_2, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %1)
  %__vec_3 = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__vec_3, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %__begin_, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__vec_4 = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__vec_4, align 8
  call void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %__vec_5 = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__vec_5, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  %__vec_6 = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %6 = load ptr, ptr %__vec_6, align 8
  %__begin_7 = getelementptr inbounds %"class.std::__1::vector.1", ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %__begin_7, align 8
  %__vec_8 = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__vec_8, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #14
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC2ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds %"class.std::__1::vector<std::__1::thread>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec.addr, align 8
  store ptr %0, ptr %__vec_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr6 = getelementptr inbounds %"class.std::__1::thread", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call8 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr9 = getelementptr inbounds %"class.std::__1::thread", ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__base_destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #4 align 2 {
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
  call void @_ZNSt3__19allocatorINS_6threadEE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load ptr, ptr %call, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 align 2 {
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
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__base_destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %incdec.ptr) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  store ptr %4, ptr %__end_3, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorINS_6threadEE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_6threadEE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16threadD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_6threadEE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #4 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @__clang_call_terminate(ptr %3) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.3", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %call) #14
  store i64 %call2, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #14
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
  call void @__clang_call_terminate(ptr %2) #16
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #9 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef @.str.1) #15
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #2 align 2 {
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
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %__begin_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
  %4 = load [2 x i64], ptr %agg.tmp, align 8
  %5 = load [2 x i64], ptr %agg.tmp3, align 8
  %6 = load [2 x i64], ptr %agg.tmp5, align 8
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EES6_S6_EET2_RT_T0_T1_S7_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %4, [2 x i64] %5, [2 x i64] %6)
  store [2 x i64] %call8, ptr %ref.tmp, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %7 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %7, i32 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_11 = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__v.addr, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %8, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_11, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #14
  %__end_13 = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__v.addr, align 8
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %9, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #14
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %10 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  call void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #14
  %11 = load ptr, ptr %__v.addr, align 8
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  %13 = load ptr, ptr %__v.addr, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %13, i32 0, i32 0
  store ptr %12, ptr %__first_, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call18) #14
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %this1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
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

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_6threadEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #4 align 2 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #14
  ret i64 %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
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
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 align 2 {
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

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_6threadEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #4 align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef %__msg) #9 personality ptr @__gxx_personality_v0 {
entry:
  %__msg.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__msg, ptr %__msg.addr, align 8
  %exception = call ptr @__cxa_allocate_exception(i64 16) #14
  %0 = load ptr, ptr %__msg.addr, align 8
  %call = invoke noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt12length_error, ptr @_ZNSt12length_errorD1Ev) #15
  unreachable

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val1 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val1
}

declare ptr @__cxa_allocate_exception(i64)

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
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr)

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

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load i64, ptr %__cap.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %2 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_6threadEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %2)
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
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %5, i64 %6
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %__first_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %7 = load ptr, ptr %__first_6, align 8
  %8 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds %"class.std::__1::thread", ptr %7, i64 %8
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  store ptr %add.ptr7, ptr %call8, align 8
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_6threadEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #2 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %__alloc.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_6threadEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  store ptr %call, ptr %ptr, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 1
  %2 = load i64, ptr %__n.addr, align 8
  store i64 %2, ptr %count, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  store ptr %0, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_6threadEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
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

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #9 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #14
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #14
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt20bad_array_new_length, ptr @_ZNSt20bad_array_new_lengthD1Ev) #15
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %__size, i64 noundef %__align) #2 {
entry:
  %retval = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  %__align_val = alloca i64, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %0 = load i64, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %0) #14
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

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #2 {
entry:
  %__args.addr = alloca i64, align 8
  %__args.addr2 = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %0, i64 noundef %1) #18
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %1) ]
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %__args) #2 {
entry:
  %__args.addr = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %0) #18
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #10

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #10

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__value_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.3", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EES6_S6_EET2_RT_T0_T1_S7_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, [2 x i64] %__first1.coerce, [2 x i64] %__last1.coerce, [2 x i64] %__first2.coerce) #2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %__first1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__last1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__first2 = alloca %"class.std::__1::reverse_iterator", align 8
  %__alloc.addr = alloca ptr, align 8
  %__destruct_first = alloca %"class.std::__1::reverse_iterator", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::_AllocatorDestroyRangeReverse", align 8
  store [2 x i64] %__first1.coerce, ptr %__first1, align 8
  store [2 x i64] %__last1.coerce, ptr %__last1, align 8
  store [2 x i64] %__first2.coerce, ptr %__first2, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__destruct_first, ptr align 8 %__first2, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont7, %entry
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadES2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first1, ptr noundef nonnull align 8 dereferenceable(16) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_6threadEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS6_EEEEE4typeES8_(ptr noundef nonnull align 8 dereferenceable(16) %__first2) #14
  %call3 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %while.body
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(8) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call6 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  %call8 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  br label %while.cond, !llvm.loop !14

lpad:                                             ; preds = %invoke.cont5, %invoke.cont4, %invoke.cont2, %while.body, %while.cond
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %4 = call ptr @__cxa_begin_catch(ptr %exn) #14
  %5 = load ptr, ptr %__alloc.addr, align 8
  %call11 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC1B6v15007ERS3_RS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %catch
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad9

while.end:                                        ; preds = %invoke.cont
  br label %try.cont

lpad9:                                            ; preds = %invoke.cont12, %invoke.cont10, %catch
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont13 unwind label %terminate.lpad

invoke.cont13:                                    ; preds = %lpad9
  br label %eh.resume

try.cont:                                         ; preds = %while.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__first2, i64 16, i1 false)
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9

eh.resume:                                        ; preds = %invoke.cont13
  %exn14 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn14, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15

terminate.lpad:                                   ; preds = %lpad9
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC2B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
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
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__current_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr6 = getelementptr inbounds %"class.std::__1::thread", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds %"class.std::__1::thread", ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadES2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %cmp = icmp ne ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 align 2 {
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
  call void @_ZNSt3__19allocatorINS_6threadEE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_6threadEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS6_EEEEE4typeES8_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_6threadEEEvE6__callB6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__tmp, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %__tmp, align 8
  ret ptr %incdec.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC1B6v15007ERS3_RS6_S9_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC2B6v15007ERS3_RS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.12", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.12", align 8
  %agg.tmp4 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__last_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp2, ptr align 8 %1, i64 16, i1 false)
  %2 = load [2 x i64], ptr %agg.tmp2, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp, [2 x i64] %2)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__first_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp4, ptr align 8 %3, i64 16, i1 false)
  %4 = load [2 x i64], ptr %agg.tmp4, align 8
  %call5 = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp3, [2 x i64] %4)
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_6threadEEENS_16reverse_iteratorINS4_IPS2_EEEES7_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %agg.tmp, ptr noundef %agg.tmp3)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_6threadEE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__16threadC1B6v15007EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16threadC1B6v15007EOS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef ptr @_ZNSt3__16threadC2B6v15007EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16threadC2B6v15007EOS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__t_ = getelementptr inbounds %"class.std::__1::thread", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__t.addr, align 8
  %__t_2 = getelementptr inbounds %"class.std::__1::thread", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__t_2, align 8
  store ptr %1, ptr %__t_, align 8
  %2 = load ptr, ptr %__t.addr, align 8
  %__t_3 = getelementptr inbounds %"class.std::__1::thread", ptr %2, i32 0, i32 0
  store ptr null, ptr %__t_3, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_6threadEEEvE6__callB6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %call) #14
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC2B6v15007ERS3_RS6_S9_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #1 align 2 {
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
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_6threadEEENS_16reverse_iteratorINS4_IPS2_EEEES7_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last) #2 {
entry:
  %__alloc.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_6threadEEES4_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__first, ptr noundef nonnull align 8 dereferenceable(40) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_6threadEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(40) %__first) #14
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__first)
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC1B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #0 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator", align 8
  %this.addr = alloca ptr, align 8
  store [2 x i64] %__x.coerce, ptr %__x, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load [2 x i64], ptr %__x, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC2B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %this1, [2 x i64] %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_6threadEEES4_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__x, ptr noundef nonnull align 8 dereferenceable(40) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call2 = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %1)
  store [2 x i64] %call2, ptr %ref.tmp1, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadES2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1)
  ret i1 %call3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_6threadEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_6threadEEEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %current)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %current, i64 16, i1 false)
  %0 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_6threadEEEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %call) #14
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__tmp = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__tmp, ptr align 8 %current, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__tmp)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i32 1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC2B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #1 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator", align 8
  %this.addr = alloca ptr, align 8
  store [2 x i64] %__x.coerce, ptr %__x, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__t, ptr align 8 %__x, i64 16, i1 false)
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %current, ptr align 8 %__x, i64 16, i1 false)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC2B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
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

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %__first_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_2, align 8
  %call3 = invoke noundef i64 @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #14
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %0 = load ptr, ptr %call, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %incdec.ptr) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__construct_one_at_endB6v15007IJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__tx = alloca %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %0) #14
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JZN5tracy12TaskDispatchC1EmPKcE3$_0EvEEvRS3_PT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %2, i32 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__emplace_back_slow_pathIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load ptr, ptr %__a, align 8
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load ptr, ptr %__a, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %2) #14
  %3 = load ptr, ptr %__args.addr, align 8
  invoke void @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JZN5tracy12TaskDispatchC1EmPKcE3$_0EvEEvRS3_PT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i32 0, i32 2
  %4 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JZN5tracy12TaskDispatchC1EmPKcE3$_0EvEEvRS3_PT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 {
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
  call void @"_ZNSt3__19allocatorINS_6threadEE9constructB6v15007IS1_JZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvPT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__v.addr, align 8
  store ptr %0, ptr %__v_, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__end_, align 8
  store ptr %2, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector.1", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__end_2, align 8
  %5 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %4, i64 %5
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__19allocatorINS_6threadEE9constructB6v15007IS1_JZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvPT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 {
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
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_16(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__16threadC1IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__f) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %call = call noundef ptr @"_ZNSt3__16threadC2IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__16threadC2IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__f) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  %__tsp = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %__p = alloca %"class.std::__1::unique_ptr.16", align 8
  %__ec = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef 8) #18
  %call2 = invoke noundef ptr @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007ILb1EvEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %__tsp, ptr noundef %call) #14
  %call6 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef 32) #18
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %0 = load ptr, ptr %__f.addr, align 8
  %call7 = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_13(ptr noundef nonnull align 8 dereferenceable(32) %call6, ptr noundef nonnull align 8 dereferenceable(8) %__tsp, ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %call8 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC1B6v15007ILb1EvEEPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef %call6) #14
  %__t_ = getelementptr inbounds %"class.std::__1::thread", ptr %this1, i32 0, i32 0
  %call9 = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_19(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  %call12 = invoke noundef i32 @_ZNSt3__122__libcpp_thread_createB6v15007EPP17_opaque_pthread_tPFPvS3_ES3_(ptr noundef %__t_, ptr noundef @"_ZNSt3__114__thread_proxyB6v15007INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEEPvSD_", ptr noundef %call9)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont5
  store i32 %call12, ptr %__ec, align 4
  %1 = load i32, ptr %__ec, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont11
  %call13 = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_18(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  br label %if.end

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  call void @_ZdlPv(ptr noundef %call) #17
  br label %eh.resume

lpad4:                                            ; preds = %invoke.cont
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad10:                                           ; preds = %if.else, %invoke.cont5
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  %call16 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont11
  %11 = load i32, ptr %__ec, align 4
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef %11, ptr noundef @.str.2) #15
          to label %invoke.cont14 unwind label %lpad10

invoke.cont14:                                    ; preds = %if.else
  unreachable

if.end:                                           ; preds = %if.then
  %call15 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  %call17 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__tsp) #14
  ret ptr %this1

ehcleanup:                                        ; preds = %lpad10, %lpad4
  %call18 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__tsp) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val19 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val19
}

declare noundef ptr @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007ILb1EvEEPS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007ILb1EvEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC1B6v15007IJS5_SA_ELi0EEEDpOT_"(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u1) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %__u.addr2 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  store ptr %__u1, ptr %__u.addr2, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %__u.addr2, align 8
  %call = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJS5_SA_ELi0EEEDpOT_"(ptr noundef nonnull align 8 dereferenceable(32) %this3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  ret ptr %this3
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC1B6v15007ILb1EvEEPSB_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC2B6v15007ILb1EvEEPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #14
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__122__libcpp_thread_createB6v15007EPP17_opaque_pthread_tPFPvS3_ES3_(ptr noundef %__t, ptr noundef %__func, ptr noundef %__arg) #2 {
entry:
  %__t.addr = alloca ptr, align 8
  %__func.addr = alloca ptr, align 8
  %__arg.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  store ptr %__func, ptr %__func.addr, align 8
  store ptr %__arg, ptr %__arg.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %1 = load ptr, ptr %__func.addr, align 8
  %2 = load ptr, ptr %__arg.addr, align 8
  %call = call i32 @pthread_create(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @"_ZNSt3__114__thread_proxyB6v15007INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEEPvSD_"(ptr noundef %__vp) #2 personality ptr @__gxx_personality_v0 {
entry:
  %__vp.addr = alloca ptr, align 8
  %__p = alloca %"class.std::__1::unique_ptr.16", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices.22", align 1
  store ptr %__vp, ptr %__vp.addr, align 8
  %0 = load ptr, ptr %__vp.addr, align 8
  %call = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC1B6v15007ILb1EvEEPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef %0) #14
  %call1 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_17(ptr noundef nonnull align 8 dereferenceable(32) %call2) #14
  %call4 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call3) #14
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call6 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  invoke void @"_ZNSt3__116__thread_executeB6v15007INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE"(ptr noundef nonnull align 8 dereferenceable(32) %call6)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %call8 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  ret ptr null

lpad:                                             ; preds = %invoke.cont5, %invoke.cont, %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE7releaseB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_2) #14
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef, ptr noundef) #13

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_7(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007ILb1EvEEPS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #16
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IRS2_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IRS2_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.14", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJS5_SA_ELi0EEEDpOT_"(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u1) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %__u.addr2 = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__tuple_indices", align 1
  %agg.tmp4 = alloca %"struct.std::__1::__tuple_types", align 1
  %agg.tmp5 = alloca %"struct.std::__1::__tuple_indices.22", align 1
  %agg.tmp6 = alloca %"struct.std::__1::__tuple_types.23", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  store ptr %__u1, ptr %__u.addr2, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %this3, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %__u.addr2, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_12(ptr noundef nonnull align 8 dereferenceable(32) %__base_, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  ret ptr %this3
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC1B6v15007IJLm0ELm1EEJS7_SC_EJEJEJS7_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_"(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u4) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.22", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.23", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %__u.addr5 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  store ptr %__u4, ptr %__u.addr5, align 8
  %this6 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %5 = load ptr, ptr %__u.addr5, align 8
  %call = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJLm0ELm1EEJS7_SC_EJEJEJS7_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_"(ptr noundef nonnull align 8 dereferenceable(32) %this6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  ret ptr %this6
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJLm0ELm1EEJS7_SC_EJEJEJS7_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_"(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u4) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.22", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.23", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %__u.addr5 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  store ptr %__u4, ptr %__u.addr5, align 8
  %this6 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this6, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %5 = getelementptr inbounds i8, ptr %this6, i64 8
  %6 = load ptr, ptr %__u.addr5, align 8
  %call7 = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_6(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  ret ptr %this6
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__t.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007EOS4_(ptr noundef nonnull align 8 dereferenceable(8) %__value_, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_leafILm1EZN5tracy12TaskDispatchC1EmPKcE3$_0Lb0EEC2B6v15007IS5_vEEOT_"(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__t) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf.19", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__t.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__value_, ptr align 8 %0, i64 24, i1 false)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007EOS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007EOS4_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007EOS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr %call, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__u.addr, align 8
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_2) #14
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.14", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IS2_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007IS3_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IS2_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.14", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007IS3_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC2B6v15007ILb1EvEEPSB_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call = invoke noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_10(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #16
  unreachable
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEEC1B6v15007IRSD_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEEC2B6v15007IRSD_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEEC2B6v15007IRSD_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_8(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_3(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEELi0ELb0EEC2B6v15007IRSD_vEEOT_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.18", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE"(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__119__thread_local_dataEv() #5

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__key_ = getelementptr inbounds %"class.std::__1::__thread_specific_ptr", ptr %this1, i32 0, i32 0
  %0 = load i64, ptr %__key_, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %call = call noundef i32 @_ZNSt3__116__libcpp_tls_setB6v15007EmPv(i64 noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__13getB6v15007ILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSF_"(ptr noundef nonnull align 8 dereferenceable(32) %__t) #4 {
entry:
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %0, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__base_) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__116__thread_executeB6v15007INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE"(ptr noundef nonnull align 8 dereferenceable(32) %__t) #2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices.22", align 1
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %1 = load ptr, ptr %__t.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @"_ZNSt3__13getB6v15007ILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSF_"(ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  call void @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_14(ptr noundef nonnull align 8 dereferenceable(24) %call)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__116__libcpp_tls_setB6v15007EmPv(i64 noundef %__key, ptr noundef %__p) #2 {
entry:
  %__key.addr = alloca i64, align 8
  %__p.addr = alloca ptr, align 8
  store i64 %__key, ptr %__key.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load i64, ptr %__key.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %call = call i32 @pthread_setspecific(i64 noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @pthread_setspecific(i64 noundef, ptr noundef) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__18__invokeB6v15007IZN5tracy12TaskDispatchC1EmPKcE3$_0JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS6_DpOS7_"(ptr noundef nonnull align 8 dereferenceable(24) %__f) #2 {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  call void @"_ZZN5tracy12TaskDispatchC1EmPKcENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(24) ptr @"_ZNSt3__13getB6v15007ILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSF_"(ptr noundef nonnull align 8 dereferenceable(32) %__t) #4 {
entry:
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %0, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, ptr %__base_, i64 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_9(ptr noundef nonnull align 8 dereferenceable(24) %add.ptr) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZZN5tracy12TaskDispatchC1EmPKcENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds %class.anon, ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %class.anon, ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.anon, ptr %this1, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  call void @_ZN5tracy12TaskDispatch7SetNameEPKcm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef %3, i64 noundef %5)
  call void @_ZN5tracy12TaskDispatch6WorkerEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(24) ptr @"_ZNSt3__112__tuple_leafILm1EZN5tracy12TaskDispatchC1EmPKcE3$_0Lb0EE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf.19", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_4(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.18", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_2(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.18", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED2B6v15007Ev"(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE5resetB6v15007EPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef null) #14
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE5resetB6v15007EPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_2) #14
  store ptr %1, ptr %call3, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE6secondB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_4) #14
  %3 = load ptr, ptr %__tmp, align 8
  call void @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_11(ptr noundef nonnull align 1 dereferenceable(1) %call5, ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE6secondB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_0(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEclB6v15007EPSB_"(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) #4 align 2 {
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
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_5(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @_ZdlPv(ptr noundef %0) #17
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEELi1ELb1EE5__getB6v15007Ev"(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED2Ev"(ptr noundef nonnull align 8 dereferenceable(32) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED2Ev"(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull align 8 dereferenceable(32) %__base_) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_1(ptr noundef nonnull align 8 dereferenceable(32) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED2Ev"(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__value_) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef null) #14
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_2) #14
  store ptr %1, ptr %call3, align 8
  %2 = load ptr, ptr %__tmp, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__ptr_4 = getelementptr inbounds %"class.std::__1::unique_ptr", ptr %this1, i32 0, i32 0
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_4) #14
  %3 = load ptr, ptr %__tmp, align 8
  call void @_ZNKSt3__114default_deleteINS_15__thread_structEEclB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %call5, ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__114default_deleteINS_15__thread_structEEclB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  call void @_ZdlPv(ptr noundef %0) #17
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__v_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %1, i32 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #2 align 2 {
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
  %call = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %1 = load i64, ptr %__ms, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
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

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
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
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #4 {
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

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__cxx_atomic_storeB6v15007IbEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef %__a, i1 noundef zeroext %__val, i32 noundef %__order) #4 {
entry:
  %__a.addr = alloca ptr, align 8
  %__val.addr = alloca i8, align 1
  %__order.addr = alloca i32, align 4
  %.atomictmp = alloca i8, align 1
  store ptr %__a, ptr %__a.addr, align 8
  %frombool = zext i1 %__val to i8
  store i8 %frombool, ptr %__val.addr, align 1
  store i32 %__order, ptr %__order.addr, align 4
  %0 = load ptr, ptr %__a.addr, align 8
  %__a_value = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", ptr %0, i32 0, i32 0
  %1 = load i32, ptr %__order.addr, align 4
  %2 = load i8, ptr %__val.addr, align 1
  %tobool = trunc i8 %2 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, ptr %.atomictmp, align 1
  switch i32 %1, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i8, ptr %.atomictmp, align 1
  store atomic i8 %3, ptr %__a_value monotonic, align 1
  br label %atomic.continue

release:                                          ; preds = %entry
  %4 = load i8, ptr %.atomictmp, align 1
  store atomic i8 %4, ptr %__a_value release, align 1
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %5 = load i8, ptr %.atomictmp, align 1
  store atomic i8 %5, ptr %__a_value seq_cst, align 1
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC1B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
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
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC2B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0, ptr noundef %1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC2B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
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
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__tx = alloca %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC1ERS6_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #14
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JRKS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %2, i32 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer.24", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load ptr, ptr %__a, align 8
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC1EmmS6_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load ptr, ptr %__a, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %2) #14
  %3 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JRKS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i32 0, i32 2
  %4 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC1ERS6_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC2ERS6_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JRKS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
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
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC2ERS6_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__v.addr, align 8
  store ptr %0, ptr %__v_, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__end_, align 8
  store ptr %2, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__end_2, align 8
  %5 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %4, i64 %5
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
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
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %__v_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__v_, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %1, i32 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #2 align 2 {
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
  %call = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %1 = load i64, ptr %__ms, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #15
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
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
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC1EmmS6_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC2EmmS6_(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator.28", align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %__begin_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
  %4 = load [2 x i64], ptr %agg.tmp, align 8
  %5 = load [2 x i64], ptr %agg.tmp3, align 8
  %6 = load [2 x i64], ptr %agg.tmp5, align 8
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %4, [2 x i64] %5, [2 x i64] %6)
  store [2 x i64] %call8, ptr %ref.tmp, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %7 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %7, i32 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_11 = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__v.addr, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %8, i32 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_11, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #14
  %__end_13 = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %9 = load ptr, ptr %__v.addr, align 8
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %9, i32 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #14
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %10 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  call void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #14
  %11 = load ptr, ptr %__v.addr, align 8
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  %13 = load ptr, ptr %__v.addr, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %13, i32 0, i32 0
  store ptr %12, ptr %__first_, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call18) #14
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %this1)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE8max_sizeB6v15007IS5_vEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %call) #14
  store i64 %call2, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #14
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
  call void @__clang_call_terminate(ptr %2) #16
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #9 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef @.str.1) #15
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE8max_sizeB6v15007IS5_vEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #4 align 2 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_8functionIFvvEEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_8functionIFvvEEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 576460752303423487
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC2EmmS6_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %__a.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result.27", align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__cap, ptr %__cap.addr, align 8
  store i64 %__start, ptr %__start.addr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 3
  store ptr null, ptr %ref.tmp, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC1B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load i64, ptr %__cap.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %2 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_8functionIFvvEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %2)
  store [2 x i64] %call3, ptr %__allocation, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result.27", ptr %__allocation, i32 0, i32 0
  %3 = load ptr, ptr %ptr, align 8
  %__first_4 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 0
  store ptr %3, ptr %__first_4, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result.27", ptr %__allocation, i32 0, i32 1
  %4 = load i64, ptr %count, align 8
  store i64 %4, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__first_5 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__first_5, align 8
  %6 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %5, i64 %6
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %__first_6 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 0
  %7 = load ptr, ptr %__first_6, align 8
  %8 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds %"class.std::__1::function", ptr %7, i64 %8
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  store ptr %add.ptr7, ptr %call8, align 8
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC1B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC2B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_8functionIFvvEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #2 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result.27", align 8
  %__alloc.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::__allocation_result.27", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  store ptr %call, ptr %ptr, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result.27", ptr %retval, i32 0, i32 1
  %2 = load i64, ptr %__n.addr, align 8
  store i64 %2, ptr %count, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC2B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %1 = getelementptr inbounds i8, ptr %this1, i64 8
  %2 = load ptr, ptr %__t2.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EEC2B6v15007IS6_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EEC2B6v15007IS6_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.26", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  store ptr %0, ptr %__value_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE8max_sizeB6v15007IS5_vEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #14
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #15
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %1, 32
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.26", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__value_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, [2 x i64] %__first1.coerce, [2 x i64] %__last1.coerce, [2 x i64] %__first2.coerce) #2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator.28", align 8
  %__first1 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %__last1 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %__first2 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %__alloc.addr = alloca ptr, align 8
  %__destruct_first = alloca %"class.std::__1::reverse_iterator.28", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp = alloca %"class.std::__1::_AllocatorDestroyRangeReverse.30", align 8
  store [2 x i64] %__first1.coerce, ptr %__first1, align 8
  store [2 x i64] %__last1.coerce, ptr %__last1, align 8
  store [2 x i64] %__first2.coerce, ptr %__first2, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__destruct_first, ptr align 8 %__first2, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont7, %entry
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_8functionIFvvEEES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first1, ptr noundef nonnull align 8 dereferenceable(16) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS8_EEEEE4typeESA_(ptr noundef nonnull align 8 dereferenceable(16) %__first2) #14
  %call3 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %while.body
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(32) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call6 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont4
  %call8 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  br label %while.cond, !llvm.loop !17

lpad:                                             ; preds = %invoke.cont5, %invoke.cont4, %invoke.cont2, %while.body, %while.cond
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %4 = call ptr @__cxa_begin_catch(ptr %exn) #14
  %5 = load ptr, ptr %__alloc.addr, align 8
  %call11 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC1B6v15007ERS5_RS8_SB_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %catch
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  invoke void @__cxa_rethrow() #15
          to label %unreachable unwind label %lpad9

while.end:                                        ; preds = %invoke.cont
  br label %try.cont

lpad9:                                            ; preds = %invoke.cont12, %invoke.cont10, %catch
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont13 unwind label %terminate.lpad

invoke.cont13:                                    ; preds = %lpad9
  br label %eh.resume

try.cont:                                         ; preds = %while.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__first2, i64 16, i1 false)
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9

eh.resume:                                        ; preds = %invoke.cont13
  %exn14 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn14, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15

terminate.lpad:                                   ; preds = %lpad9
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #16
  unreachable

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC2B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
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
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__current_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr6 = getelementptr inbounds %"class.std::__1::function", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds %"class.std::__1::function", ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  %__c.addr = alloca ptr, align 8
  store ptr %__c, ptr %__c.addr, align 8
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_8functionIFvvEEES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %cmp = icmp ne ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
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
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS8_EEEEE4typeESA_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_8functionIFvvEEEEEvE6__callB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__tmp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  store ptr %0, ptr %__tmp, align 8
  %1 = load ptr, ptr %__tmp, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %__tmp, align 8
  ret ptr %incdec.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC1B6v15007ERS5_RS8_SB_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC2B6v15007ERS5_RS8_SB_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.31", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.31", align 8
  %agg.tmp4 = alloca %"class.std::__1::reverse_iterator.28", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__alloc_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__last_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp2, ptr align 8 %1, i64 16, i1 false)
  %2 = load [2 x i64], ptr %agg.tmp2, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC1B6v15007ES5_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp, [2 x i64] %2)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__first_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp4, ptr align 8 %3, i64 16, i1 false)
  %4 = load [2 x i64], ptr %agg.tmp4, align 8
  %call5 = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC1B6v15007ES5_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp3, [2 x i64] %4)
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorINS6_IPS4_EEEES9_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %agg.tmp, ptr noundef %agg.tmp3)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC1EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC1EOS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC2EOS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::function", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__f.addr, align 8
  %__f_2 = getelementptr inbounds %"class.std::__1::function", ptr %0, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007EOS3_(ptr noundef nonnull align 8 dereferenceable(32) %__f_, ptr noundef nonnull align 8 dereferenceable(32) %__f_2) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007EOS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007EOS3_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007EOS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__buf_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__f.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__f_2, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__f.addr, align 8
  %__f_3 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__f_3, align 8
  %4 = load ptr, ptr %__f.addr, align 8
  %__buf_4 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %4, i32 0, i32 0
  %cmp5 = icmp eq ptr %3, %__buf_4
  br i1 %cmp5, label %if.then6, label %if.else12

if.then6:                                         ; preds = %if.else
  %__buf_7 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 0
  %call = invoke noundef ptr @_ZNSt3__110__function12__value_funcIFvvEE9__as_baseEPv(ptr noundef %__buf_7)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then6
  %__f_8 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  store ptr %call, ptr %__f_8, align 8
  %5 = load ptr, ptr %__f.addr, align 8
  %__f_9 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %__f_9, align 8
  %__f_10 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__f_10, align 8
  %vtable = load ptr, ptr %6, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %8 = load ptr, ptr %vfn, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7)
          to label %invoke.cont11 unwind label %terminate.lpad

invoke.cont11:                                    ; preds = %invoke.cont
  br label %if.end

if.else12:                                        ; preds = %if.else
  %9 = load ptr, ptr %__f.addr, align 8
  %__f_13 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %__f_13, align 8
  %__f_14 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  store ptr %10, ptr %__f_14, align 8
  %11 = load ptr, ptr %__f.addr, align 8
  %__f_15 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %11, i32 0, i32 1
  store ptr null, ptr %__f_15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else12, %invoke.cont11
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12

terminate.lpad:                                   ; preds = %invoke.cont, %if.then6
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110__function12__value_funcIFvvEE9__as_baseEPv(ptr noundef %__p) #4 align 2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_8functionIFvvEEEEEvE6__callB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %call) #14
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this1)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC2B6v15007ERS5_RS8_SB_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #1 align 2 {
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
  %__alloc_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  store ptr %0, ptr %__alloc_, align 8
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__first.addr, align 8
  store ptr %1, ptr %__first_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__last.addr, align 8
  store ptr %2, ptr %__last_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorINS6_IPS4_EEEES9_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last) #2 {
entry:
  %__alloc.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEES6_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__first, ptr noundef nonnull align 8 dereferenceable(40) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS9_EEEEE4typeESB_(ptr noundef nonnull align 8 dereferenceable(40) %__first) #14
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__first)
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC1B6v15007ES5_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #0 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator.28", align 8
  %this.addr = alloca ptr, align 8
  store [2 x i64] %__x.coerce, ptr %__x, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load [2 x i64], ptr %__x, align 8
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC2B6v15007ES5_(ptr noundef nonnull align 8 dereferenceable(40) %this1, [2 x i64] %0)
  ret ptr %this1
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEES6_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__x, ptr noundef nonnull align 8 dereferenceable(40) %__y) #2 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  %ref.tmp1 = alloca %"class.std::__1::reverse_iterator.28", align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call2 = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %1)
  store [2 x i64] %call2, ptr %ref.tmp1, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_8functionIFvvEEES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1)
  ret i1 %call3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS9_EEEEE4typeESB_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvE6__callB6v15007ERKS7_(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this1, i32 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %current)
  ret ptr %this1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator.28", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %current, i64 16, i1 false)
  %0 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvE6__callB6v15007ERKS7_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %call) #14
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__tmp, ptr align 8 %current, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__tmp)
  %call2 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i32 1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC2B6v15007ES5_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #1 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator.28", align 8
  %this.addr = alloca ptr, align 8
  store [2 x i64] %__x.coerce, ptr %__x, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__t, ptr align 8 %__x, i64 16, i1 false)
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %current, ptr align 8 %__x, i64 16, i1 false)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC2B6v15007ES4_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  store ptr %0, ptr %__t, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__x.addr, align 8
  store ptr %1, ptr %current, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %__first_2 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_2, align 8
  %call3 = invoke noundef i64 @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE10deallocateB6v15007ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #14
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2

terminate.lpad:                                   ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %0 = load ptr, ptr %call, align 8
  %__first_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__first_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
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
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #14
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %incdec.ptr) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this1, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__tx = alloca %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC1ERS6_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #14
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %2, i32 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__a = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer.24", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  store ptr %call, ptr %__a, align 8
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load ptr, ptr %__a, align 8
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC1EmmS6_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %1 = load ptr, ptr %__a, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %2) #14
  %3 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i32 0, i32 2
  %4 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__m.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__m, ptr %__m.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__m_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__m.addr, align 8
  store ptr %0, ptr %__m_, align 8
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 1
  store i8 1, ptr %__owns_, align 8
  %__m_2 = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__m_2, align 8
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(9) %this) unnamed_addr #1 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 1
  %0 = load i8, ptr %__owns_, align 8
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__m_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__m_, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC2ERKS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::function", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__f.addr, align 8
  %__f_2 = getelementptr inbounds %"class.std::__1::function", ptr %0, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %__f_, ptr noundef nonnull align 8 dereferenceable(32) %__f_2)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007ERKS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %this1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret ptr %this1
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007ERKS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__buf_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__f.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__f_2, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__f.addr, align 8
  %__f_3 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %__f_3, align 8
  %4 = load ptr, ptr %__f.addr, align 8
  %__buf_4 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %4, i32 0, i32 0
  %cmp5 = icmp eq ptr %3, %__buf_4
  br i1 %cmp5, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.else
  %__buf_7 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEE9__as_baseEPv(ptr noundef %__buf_7)
  %__f_8 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  store ptr %call, ptr %__f_8, align 8
  %5 = load ptr, ptr %__f.addr, align 8
  %__f_9 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %__f_9, align 8
  %__f_10 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %7 = load ptr, ptr %__f_10, align 8
  %vtable = load ptr, ptr %6, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %8 = load ptr, ptr %vfn, align 8
  call void %8(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7)
  br label %if.end

if.else11:                                        ; preds = %if.else
  %9 = load ptr, ptr %__f.addr, align 8
  %__f_12 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %__f_12, align 8
  %vtable13 = load ptr, ptr %10, align 8
  %vfn14 = getelementptr inbounds ptr, ptr %vtable13, i64 2
  %11 = load ptr, ptr %vfn14, align 8
  %call15 = call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %__f_16 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  store ptr %call15, ptr %__f_16, align 8
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::function", ptr %this1, i32 0, i32 0
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %__f_) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__f_, align 8
  %__buf_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 0
  %cmp = icmp eq ptr %0, %__buf_
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__f_2, align 8
  %vtable = load ptr, ptr %1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 4
  %2 = load ptr, ptr %vfn, align 8
  call void %2(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br label %if.end8

if.else:                                          ; preds = %entry
  %__f_3 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__f_3, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %__f_5 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %4 = load ptr, ptr %__f_5, align 8
  %vtable6 = load ptr, ptr %4, align 8
  %vfn7 = getelementptr inbounds ptr, ptr %vtable6, i64 5
  %5 = load ptr, ptr %vfn7, align 8
  call void %5(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %__old_size = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE27__invalidate_iterators_pastB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  store i64 %call, ptr %__old_size, align 8
  %1 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__base_destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %1) #14
  %2 = load i64, ptr %__old_size, align 8
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %2) #14
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #16
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE27__invalidate_iterators_pastB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__old_size) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__old_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__old_size, ptr %__old_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %0 = load i64, ptr %__old_size.addr, align 8
  %add.ptr5 = getelementptr inbounds %"class.std::__1::function", ptr %call4, i64 %0
  %call6 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %call7 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #14
  %add.ptr8 = getelementptr inbounds %"class.std::__1::function", ptr %call6, i64 %call7
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr5, ptr noundef %add.ptr8) #14
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__110__function12__value_funcIFvvEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__125__throw_bad_function_callB6v15007Ev() #15
  unreachable

if.end:                                           ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__f_2, align 8
  %vtable = load ptr, ptr %1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8
  call void %2(ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__throw_bad_function_callB6v15007Ev() #9 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #14
  call void @llvm.memset.p0.i64(ptr align 16 %exception, i8 0, i64 8, i1 false)
  %call = call noundef ptr @_ZNSt3__117bad_function_callC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #14
  call void @__cxa_throw(ptr %exception, ptr @_ZTINSt3__117bad_function_callE, ptr @_ZNSt3__117bad_function_callD1Ev) #15
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__117bad_function_callC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__117bad_function_callD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callC2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt9exceptionC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVNSt3__117bad_function_callE, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt9exceptionC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i32 0, inrange i32 0, i32 2), ptr %this1, align 8
  ret ptr %this1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__117bad_function_callD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__117bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  call void @_ZdlPv(ptr noundef %this1) #17
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callD2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt9exceptionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef zeroext i1 @"_ZZN5tracy12TaskDispatch4SyncEvENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds %class.anon.8, ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %m_jobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %1, i32 0, i32 5
  %2 = load i64, ptr %m_jobs, align 8
  %cmp = icmp eq i64 %2, 0
  ret i1 %cmp
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) #3

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__117__cxx_atomic_loadB6v15007IbEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef %__a, i32 noundef %__order) #4 {
entry:
  %__a.addr = alloca ptr, align 8
  %__order.addr = alloca i32, align 4
  %atomic-temp = alloca i8, align 1
  store ptr %__a, ptr %__a.addr, align 8
  store i32 %__order, ptr %__order.addr, align 4
  %0 = load ptr, ptr %__a.addr, align 8
  %__a_value = getelementptr inbounds %"struct.std::__1::__cxx_atomic_base_impl", ptr %0, i32 0, i32 0
  %1 = load i32, ptr %__order.addr, align 4
  switch i32 %1, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %2 = load atomic i8, ptr %__a_value monotonic, align 1
  store i8 %2, ptr %atomic-temp, align 1
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i8, ptr %__a_value acquire, align 1
  store i8 %3, ptr %atomic-temp, align 1
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %4 = load atomic i8, ptr %__a_value seq_cst, align 1
  store i8 %4, ptr %atomic-temp, align 1
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load i8, ptr %atomic-temp, align 1
  %tobool = trunc i8 %5 to i1
  ret i1 %tobool
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef zeroext i1 @"_ZZN5tracy12TaskDispatch6WorkerEvENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds %class.anon.9, ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %m_queue = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %1, i32 0, i32 0
  %call = call noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #14
  br i1 %call, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %1, i32 0, i32 4
  %call2 = call noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i32 noundef 2) #14
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %2
}

attributes #0 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { noreturn nounwind }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #8 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nocallback nofree nounwind willreturn }
attributes #13 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal noundef nonnull align 1 dereferenceable(1) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_0(ptr noundef nonnull align 1 dereferenceable(1) %this)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_1(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #14
  ret ptr %this1
}

define internal noundef nonnull align 8 dereferenceable(8) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_2(ptr noundef nonnull align 8 dereferenceable(8) %this)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.18", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_3(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__value_init_tag", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

define internal noundef nonnull align 8 dereferenceable(8) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_4(ptr noundef nonnull align 8 dereferenceable(8) %this)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.18", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_5(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED2Ev"(ptr noundef nonnull align 8 dereferenceable(32) %this1) #14
  ret ptr %this1
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_6(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__t) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf.19", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__t.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__value_, ptr align 8 %0, i64 24, i1 false)
  ret ptr %this1
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_7(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE5resetB6v15007EPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef null) #14
  ret ptr %this1
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_8(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.18", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__value_, align 8
  ret ptr %this1
}

define internal noundef nonnull align 8 dereferenceable(24) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_9(ptr noundef nonnull align 8 dereferenceable(24) %this)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__value_ = getelementptr inbounds %"class.std::__1::__tuple_leaf.19", ptr %this1, i32 0, i32 0
  ret ptr %__value_
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_10(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr  alwaysinline#0 align 2 {
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
  %call = call noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEEC2B6v15007IRSD_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret ptr %this1
}

define internal void @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_11(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr)  alwaysinline#4 align 2 {
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
  %call = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull align 8 dereferenceable(32) %0) #14
  call void @_ZdlPv(ptr noundef %0) #17
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_12(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u4) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %0 = alloca %"struct.std::__1::__tuple_indices", align 1
  %1 = alloca %"struct.std::__1::__tuple_types", align 1
  %2 = alloca %"struct.std::__1::__tuple_indices.22", align 1
  %3 = alloca %"struct.std::__1::__tuple_types.23", align 1
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %__u.addr5 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  store ptr %__u4, ptr %__u.addr5, align 8
  %this6 = load ptr, ptr %this.addr, align 8
  %4 = load ptr, ptr %__u.addr, align 8
  %5 = load ptr, ptr %__u.addr5, align 8
  %call = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJLm0ELm1EEJS7_SC_EJEJEJS7_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_"(ptr noundef nonnull align 8 dereferenceable(32) %this6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  ret ptr %this6
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_13(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u1) unnamed_addr  alwaysinline#1 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  %__u.addr2 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  store ptr %__u1, ptr %__u.addr2, align 8
  %this3 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  %1 = load ptr, ptr %__u.addr2, align 8
  %call = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJS5_SA_ELi0EEEDpOT_"(ptr noundef nonnull align 8 dereferenceable(32) %this3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #14
  ret ptr %this3
}

define internal void @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_14(ptr noundef nonnull align 8 dereferenceable(24) %__f)  alwaysinline#2 {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  call void @"_ZZN5tracy12TaskDispatchC1EmPKcENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

define internal noundef zeroext i1 @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_15(ptr noundef nonnull align 8 dereferenceable(8) %this)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = getelementptr inbounds %class.anon.8, ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %m_jobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %1, i32 0, i32 5
  %2 = load i64, ptr %m_jobs, align 8
  %cmp = icmp eq i64 %2, 0
  ret i1 %cmp
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_16(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__f) unnamed_addr  alwaysinline#0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %call = call noundef ptr @"_ZNSt3__16threadC2IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

define internal noundef nonnull align 8 dereferenceable(8) ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_17(ptr noundef nonnull align 8 dereferenceable(32) %__t)  alwaysinline#4 {
entry:
  %__t.addr = alloca ptr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  %__base_ = getelementptr inbounds %"class.std::__1::tuple", ptr %0, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__base_) #14
  ret ptr %call
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_18(ptr noundef nonnull align 8 dereferenceable(8) %this)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__t = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__t, align 8
  %__ptr_2 = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_2) #14
  store ptr null, ptr %call3, align 8
  %1 = load ptr, ptr %__t, align 8
  ret ptr %1
}

define internal noundef ptr @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_19(ptr noundef nonnull align 8 dereferenceable(8) %this)  alwaysinline#4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__ptr_ = getelementptr inbounds %"class.std::__1::unique_ptr.16", ptr %this1, i32 0, i32 0
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__ptr_) #14
  %0 = load ptr, ptr %call, align 8
  ret ptr %0
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
