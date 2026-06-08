; ModuleID = './out/real_signal_run/rewritten_ir/student_conservative_forest/source_snapshot_public_repos_tracy_server_TracyTaskDispatch.prepared.ll'
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
%"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.13" }
%"class.std::__1::__compressed_pair.13" = type { %"struct.std::__1::__compressed_pair_elem.14" }
%"struct.std::__1::__compressed_pair_elem.14" = type { ptr }
%"class.std::__1::unique_ptr.16" = type { %"class.std::__1::__compressed_pair.17" }
%"class.std::__1::__compressed_pair.17" = type { %"struct.std::__1::__compressed_pair_elem.18" }
%"struct.std::__1::__compressed_pair_elem.18" = type { ptr }
%"struct.std::__1::__value_init_tag" = type { i8 }
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
  %workers.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %ref.tmp = alloca %class.anon, align 8
  store i64 %workers, ptr %workers.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %this, ptr %retval, align 8
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__15mutexC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock) #16
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 2
  %call3 = call noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #16
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 3
  %call4 = call noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #16
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 4
  %call5 = call noundef ptr @_ZNSt3__16atomicIbEC1B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i1 noundef zeroext false) #16
  %m_jobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 5
  store i64 0, ptr %m_jobs, align 8
  %m_workers = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 6
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers) #16
  %m_workers7 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 6
  %0 = load i64, ptr %workers.addr, align 8
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %m_workers7, i64 noundef %0)
          to label %for.cond unwind label %lpad

for.cond:                                         ; preds = %entry, %for.inc
  %storemerge = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  store i64 %storemerge, ptr %i, align 8
  %1 = load i64, ptr %workers.addr, align 8
  %cmp = icmp ult i64 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %m_workers8 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 6
  store ptr %this, ptr %ref.tmp, align 8
  %2 = getelementptr inbounds %class.anon, ptr %ref.tmp, i64 0, i32 1
  %3 = load ptr, ptr %name.addr, align 8
  store ptr %3, ptr %2, align 8
  %4 = getelementptr inbounds %class.anon, ptr %ref.tmp, i64 0, i32 2
  %5 = load i64, ptr %i, align 8
  store i64 %5, ptr %4, align 8
  %call10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEERS1_DpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %m_workers8, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %for.inc unwind label %lpad

for.inc:                                          ; preds = %for.body
  %6 = load i64, ptr %i, align 8
  %inc = add i64 %6, 1
  br label %for.cond, !llvm.loop !6

lpad:                                             ; preds = %for.body, %entry
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call11 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers) #16
  %call12 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #16
  %call13 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #16
  %call14 = call noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock) #16
  %call15 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val16 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val16

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15mutexC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(64) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__15mutexC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__118condition_variableC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIbEC1B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16atomicIbEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__n.addr = alloca i64, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %cmp = icmp ult i64 %call, %__n
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %cmp3 = icmp ugt i64 %0, %call2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  unreachable

if.end:                                           ; preds = %if.then
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %1 = load i64, ptr %__n.addr, align 8
  %call6 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call7 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %1, i64 noundef %call6, ptr noundef nonnull align 1 dereferenceable(1) %call5)
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %call8 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  br label %if.end10

lpad:                                             ; preds = %if.end
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11

if.end10:                                         ; preds = %invoke.cont, %entry
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE12emplace_backIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEERS1_DpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__args.addr, align 8
  call void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__construct_one_at_endB6v15007IJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__emplace_back_slow_pathIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %call2
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull returned align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %this
}

; Function Attrs: ssp uwtable
define noundef ptr @_ZN5tracy12TaskDispatchC1EmPKc(ptr noundef nonnull returned align 8 dereferenceable(224) %this, i64 noundef %workers, ptr noundef %name) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZN5tracy12TaskDispatchC2EmPKc(ptr noundef nonnull align 8 dereferenceable(224) %this, i64 noundef %workers, ptr noundef %name)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12TaskDispatchD2Ev(ptr noundef nonnull returned align 8 dereferenceable(224) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %__begin1 = alloca %"class.std::__1::__wrap_iter", align 8
  %__end1 = alloca %"class.std::__1::__wrap_iter", align 8
  store ptr %this, ptr %retval, align 8
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 4
  call void @_ZNSt3__113__atomic_baseIbLb0EE5storeB6v15007EbNS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i1 noundef zeroext true, i32 noundef 3) #16
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  invoke void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #16
  %m_queueLock2 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock2) #16
  %m_workers = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 6
  %call = call i64 @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers) #16
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %__begin1, align 8
  %call3 = call i64 @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers) #16
  %coerce.val.ip5 = inttoptr i64 %call3 to ptr
  store ptr %coerce.val.ip5, ptr %__end1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %call6 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__begin1, ptr noundef nonnull align 8 dereferenceable(8) %__end1) #16
  br i1 %call6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__begin1) #16
  invoke void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %call7)
          to label %for.inc unwind label %terminate.lpad

for.inc:                                          ; preds = %for.body
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__begin1) #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %m_workers10 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 6
  %call11 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_workers10) #16
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 3
  %call12 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #16
  %m_cvWork13 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 2
  %call14 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork13) #16
  %m_queueLock15 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  %call16 = call noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock15) #16
  %call17 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %0 = load ptr, ptr %retval, align 8
  ret ptr %0

terminate.lpad:                                   ; preds = %for.body, %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #6
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__113__atomic_baseIbLb0EE5storeB6v15007EbNS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d, i32 noundef %__m) #4 align 2 {
entry:
  call void @_ZNSt3__118__cxx_atomic_storeB6v15007IbEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef nonnull %this, i1 noundef zeroext %__d, i32 noundef %__m) #16
  ret void
}

declare void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64)) #5

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #6 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #16
  call void @_ZSt9terminatev() #6
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
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC1B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %0) #16
  %1 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC1B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %0) #16
  %1 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #16
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

declare void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i64 1
  store ptr %incdec.ptr, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN5tracy12TaskDispatchD1Ev(ptr noundef nonnull returned align 8 dereferenceable(224) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZN5tracy12TaskDispatchD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %this) #16
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch5QueueERKNSt3__18functionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef nonnull align 8 dereferenceable(32) %f) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %lock = alloca %"class.std::__1::lock_guard", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  %call2 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %f)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #16
  %call3 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #16
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call4 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJRKS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %call2
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch5QueueEONSt3__18functionIFvvEEE(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef nonnull align 8 dereferenceable(32) %f) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %lock = alloca %"class.std::__1::lock_guard", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  %call2 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %f)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork) #16
  %call3 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #16
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call4 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val5
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %call2
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch4SyncEv(ptr noundef nonnull align 8 dereferenceable(224) %this) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %lock = alloca %"class.std::__1::unique_lock", align 8
  %f = alloca %"class.std::__1::function", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont11, %entry
  %call2 = call noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  br i1 %call2, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = invoke noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %f, ptr noundef nonnull align 8 dereferenceable(32) %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.body
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %this)
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont9 unwind label %lpad7

invoke.cont9:                                     ; preds = %invoke.cont
  invoke void @_ZNKSt3__18functionIFvvEEclEv(ptr noundef nonnull align 8 dereferenceable(32) %f)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont9
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE4lockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont11 unwind label %lpad7

invoke.cont11:                                    ; preds = %invoke.cont10
  %call12 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #16
  br label %while.cond, !llvm.loop !8

lpad:                                             ; preds = %while.end, %while.body
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad7:                                            ; preds = %invoke.cont10, %invoke.cont9, %invoke.cont
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call13 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #16
  br label %ehcleanup

while.end:                                        ; preds = %while.cond
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 3
  %coerce.val.pi = ptrtoint ptr %this to i64
  invoke void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch4SyncEvE3$_1EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs, ptr noundef nonnull align 8 dereferenceable(9) %lock, i64 %coerce.val.pi)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %while.end
  %call15 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #16
  ret void

ehcleanup:                                        ; preds = %lpad7, %lpad
  %call16 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val17 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val17
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__end_, align 8
  %cmp = icmp eq ptr %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i64 -1
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %add.ptr) #16
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %this) #2 align 2 {
entry:
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  %0 = load i8, ptr %__owns_, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 1, ptr noundef nonnull @.str.3) #17
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %this, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  %__owns_2 = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  store i8 0, ptr %__owns_2, align 8
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNKSt3__18functionIFvvEEclEv(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  call void @_ZNKSt3__110__function12__value_funcIFvvEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__111unique_lockINS_5mutexEE4lockEv(ptr noundef nonnull align 8 dereferenceable(9) %this) #2 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 1, ptr noundef nonnull @.str.4) #17
  unreachable

if.end:                                           ; preds = %entry
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  %1 = load i8, ptr %__owns_, align 8
  %2 = and i8 %1, 1
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 11, ptr noundef nonnull @.str.5) #17
  unreachable

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %this, align 8
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %__owns_5 = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  store i8 1, ptr %__owns_5, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvvEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #16
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch4SyncEvE3$_1EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %__lk, i64 %__pred.coerce) #2 align 2 {
entry:
  %__pred = alloca %class.anon.8, align 8
  %__lk.addr = alloca ptr, align 8
  %coerce.val.ip = inttoptr i64 %__pred.coerce to ptr
  store ptr %coerce.val.ip, ptr %__pred, align 8
  store ptr %__lk, ptr %__lk.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %__pred, align 8
  %m_jobs.i = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %0, i64 0, i32 5
  %1 = load i64, ptr %m_jobs.i, align 8
  %cmp.i.not = icmp eq i64 %1, 0
  br i1 %cmp.i.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %__lk.addr, align 8
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %2) #16
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(9) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %this) #16
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch6WorkerEv(ptr noundef nonnull align 8 dereferenceable(224) %this) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %lock = alloca %"class.std::__1::unique_lock", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %f = alloca %"class.std::__1::function", align 8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %m_queueLock = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_queueLock)
  %m_cvWork = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 2
  %coerce.val.pi = ptrtoint ptr %this to i64
  invoke void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch6WorkerEvE3$_2EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %m_cvWork, ptr noundef nonnull align 8 dereferenceable(9) %lock, i64 %coerce.val.pi)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 4
  %call2 = call noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i32 noundef 2) #16
  br i1 %call2, label %cleanup, label %if.end

lpad:                                             ; preds = %if.end, %for.cond
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont
  %call3 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = invoke noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %f, ptr noundef nonnull align 8 dereferenceable(32) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %if.end
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %this)
  %m_jobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 5
  %3 = load i64, ptr %m_jobs, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %m_jobs, align 8
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont9 unwind label %lpad7

invoke.cont9:                                     ; preds = %invoke.cont4
  invoke void @_ZNKSt3__18functionIFvvEEclEv(ptr noundef nonnull align 8 dereferenceable(32) %f)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont9
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE4lockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont11 unwind label %lpad7

invoke.cont11:                                    ; preds = %invoke.cont10
  %m_jobs12 = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 5
  %4 = load i64, ptr %m_jobs12, align 8
  %dec = add i64 %4, -1
  store i64 %dec, ptr %m_jobs12, align 8
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %invoke.cont11
  %call15 = call noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  br i1 %call15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  %m_cvJobs = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %this, i64 0, i32 3
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cvJobs) #16
  br label %if.end17

lpad7:                                            ; preds = %if.end17, %invoke.cont10, %invoke.cont9, %invoke.cont4
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call20 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #16
  br label %ehcleanup

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %invoke.cont11
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont18 unwind label %lpad7

invoke.cont18:                                    ; preds = %if.end17
  %call19 = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %f) #16
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont, %invoke.cont18
  %call21 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #16
  switch i1 %call2, label %unreachable [
    i1 false, label %for.cond
    i1 true, label %return
  ], !llvm.loop !10

ehcleanup:                                        ; preds = %lpad7, %lpad
  %call22 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val23 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val23

return:                                           ; preds = %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__118condition_variable4waitIZN5tracy12TaskDispatch6WorkerEvE3$_2EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %__lk, i64 %__pred.coerce) #2 align 2 {
entry:
  %__pred = alloca %class.anon.9, align 8
  %__lk.addr = alloca ptr, align 8
  %coerce.val.ip = inttoptr i64 %__pred.coerce to ptr
  store ptr %coerce.val.ip, ptr %__pred, align 8
  store ptr %__lk, ptr %__lk.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call noundef zeroext i1 @"_ZZN5tracy12TaskDispatch6WorkerEvENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(8) %__pred)
  br i1 %call, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %__lk.addr, align 8
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %0) #16
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %__m) #4 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__117__cxx_atomic_loadB6v15007IbEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef nonnull %this, i32 noundef %__m) #16
  ret i1 %call
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy12TaskDispatch7SetNameEPKcm(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef %name, i64 noundef %num) #2 align 2 {
entry:
  %tmp = alloca [128 x i8], align 1
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i64 noundef 128, ptr noundef nonnull @.str, ptr noundef %name, i64 noundef %num)
  call void @_ZN5tracy13SetThreadNameEPKc(ptr noundef nonnull %tmp)
  ret void
}

declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

declare void @_ZN5tracy13SetThreadNameEPKc(ptr noundef) #5

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15mutexC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(64) %this) unnamed_addr #1 align 2 {
entry:
  store i64 850045863, ptr %this, align 8
  %__opaque = getelementptr inbounds %struct._opaque_pthread_mutex_t, ptr %this, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %__opaque, i8 0, i64 56, i1 false)
  ret ptr %this
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118condition_variableC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  store i64 1018212795, ptr %this, align 8
  %__opaque = getelementptr inbounds %struct._opaque_pthread_cond_t, ptr %this, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %__opaque, i8 0, i64 40, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIbEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__113__atomic_baseIbLb0EEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__atomic_baseIbLb0EEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC1B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC1B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__cxx_atomic_base_implIbEC2Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__cxx_atomic_base_implIbEC2Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %frombool2 = zext i1 %__value to i8
  store i8 %frombool2, ptr %this, align 1
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__x) #16
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__y) #16
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  store ptr %__m, ptr %this, align 8
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %__m)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr null, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr null, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_8functionIFvvEEEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_8functionIFvvEEEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr null, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr null, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorINS_6threadEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_6threadEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_6threadEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_6threadEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector<std::__1::function<void ()>>::__destroy_vector", align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC1ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC1ERS6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %1 = load ptr, ptr %this, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %1)
  %2 = load ptr, ptr %this, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %5 = load ptr, ptr %this, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %6 = load ptr, ptr %this, align 8
  %7 = load ptr, ptr %6, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE10deallocateB6v15007ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE16__destroy_vectorC2ERS6_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  store ptr %__vec, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr6 = getelementptr inbounds %"class.std::__1::function", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call8 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr9 = getelementptr inbounds %"class.std::__1::function", ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__base_destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE10deallocateB6v15007ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #4 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE10deallocateB6v15007EPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 5
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 5
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %__p) #4 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__base_destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp.not = icmp eq ptr %1, %2
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %3, i64 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef nonnull %incdec.ptr) #16
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  store ptr %4, ptr %__end_3, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #6
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE7destroyB6v15007EPS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_8functionIFvvEEEE7destroyB6v15007EPS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvvEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %__p) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_8functionIFvvEEEE10deallocateB6v15007EPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %mul = shl i64 %__n, 5
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #2 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #16
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__align.addr, align 8
  %1 = load ptr, ptr %__ptr.addr, align 8
  %2 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %1, i64 noundef %2, i64 noundef %0)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__ptr.addr, align 8
  %4 = load i64, ptr %__size.addr, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %3, i64 noundef %4)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #4 {
entry:
  %cmp = icmp ugt i64 %__align, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #2 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__ptr, i64 noundef %__args)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #2 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__ptr)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #4 {
entry:
  call void @_ZdlPvSt11align_val_t(ptr noundef %__args, i64 noundef %__args1) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #4 {
entry:
  call void @_ZdlPv(ptr noundef %__args) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector<std::__1::thread>::__destroy_vector", align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC1ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC1ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC2ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %1 = load ptr, ptr %this, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %1)
  %2 = load ptr, ptr %this, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %5 = load ptr, ptr %this, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %6 = load ptr, ptr %this, align 8
  %7 = load ptr, ptr %6, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE16__destroy_vectorC2ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  store ptr %__vec, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr6 = getelementptr inbounds %"class.std::__1::thread", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call8 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr9 = getelementptr inbounds %"class.std::__1::thread", ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__base_destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #4 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_6threadEE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %0) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %__p) #4 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__base_destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp.not = icmp eq ptr %1, %2
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %3, i64 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef nonnull %incdec.ptr) #16
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  store ptr %4, ptr %__end_3, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #6
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_6threadEE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_6threadEE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16threadD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorINS_6threadEE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %mul = shl i64 %__n, 3
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %call) #16
  store i64 %call2, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #16
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
  call void @__clang_call_terminate(ptr %2) #6
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #9 align 2 {
entry:
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef nonnull @.str.1) #17
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #2 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__v, ptr %__v.addr, align 8
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %1 = load ptr, ptr %this, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
  %.unpack = load i64, ptr %agg.tmp, align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack2, 1
  %.unpack3 = load i64, ptr %agg.tmp3, align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack3, 0
  %.elt4 = getelementptr inbounds [2 x i64], ptr %agg.tmp3, i64 0, i64 1
  %.unpack5 = load i64, ptr %.elt4, align 8
  %7 = insertvalue [2 x i64] %6, i64 %.unpack5, 1
  %.unpack6 = load i64, ptr %agg.tmp5, align 8
  %8 = insertvalue [2 x i64] undef, i64 %.unpack6, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %agg.tmp5, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %9 = insertvalue [2 x i64] %8, i64 %.unpack8, 1
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EES6_S6_EET2_RT_T0_T1_S7_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %5, [2 x i64] %7, [2 x i64] %9)
  %call8.elt = extractvalue [2 x i64] %call8, 0
  store i64 %call8.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack9 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call8.elt10 = extractvalue [2 x i64] %call8, 1
  store i64 %call8.elt10, ptr %ref.tmp.repack9, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %10 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #16
  %__end_13 = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #16
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %11 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #16
  call void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #16
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  store ptr %12, ptr %11, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call18) #16
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef nonnull %this)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #4 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_6threadEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %__a) #16
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #4 align 2 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #16
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
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %__b, ptr noundef nonnull align 8 dereferenceable(8) %__a)
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %cond-lvalue = select i1 %call, ptr %0, ptr %1
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 align 2 {
entry:
  %0 = load i64, ptr %__x, align 8
  %1 = load i64, ptr %__y, align 8
  %cmp = icmp ult i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_6threadEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #4 align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef %__msg) #9 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %exception = call ptr @__cxa_allocate_exception(i64 16) #16
  %call = invoke noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef %__msg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #17
  unreachable

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #16
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
  %call = call noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s)
  ret ptr %this
}

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result", align 8
  store i64 %__cap, ptr %__cap.addr, align 8
  store i64 %__start, ptr %__start.addr, align 8
  store ptr %this, ptr %retval, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  store ptr null, ptr %ref.tmp, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  %cmp = icmp eq i64 %__cap, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %this, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %0 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_6threadEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %0)
  %call3.elt = extractvalue [2 x i64] %call3, 0
  store i64 %call3.elt, ptr %__allocation, align 8
  %__allocation.repack1 = getelementptr inbounds [2 x i64], ptr %__allocation, i64 0, i64 1
  %call3.elt2 = extractvalue [2 x i64] %call3, 1
  store i64 %call3.elt2, ptr %__allocation.repack1, align 8
  %.cast = inttoptr i64 %call3.elt to ptr
  store ptr %.cast, ptr %this, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %__allocation, i64 0, i32 1
  %1 = load i64, ptr %count, align 8
  store i64 %1, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %this, align 8
  %3 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %2, i64 %3
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %4 = load ptr, ptr %this, align 8
  %5 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds %"class.std::__1::thread", ptr %4, i64 %5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  store ptr %add.ptr7, ptr %call8, align 8
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_6threadEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #2 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_6threadEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n)
  store ptr %call, ptr %retval, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %retval, i64 0, i32 1
  store i64 %__n, ptr %count, align 8
  %.unpack.cast = ptrtoint ptr %call to i64
  %0 = insertvalue [2 x i64] undef, i64 %.unpack.cast, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2B6v15007IDnS5_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2B6v15007IS4_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr %__u, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_6threadEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeB6v15007IS3_vEEmRKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  %cmp = icmp ult i64 %call, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #17
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__n.addr, align 8
  %mul = shl i64 %0, 3
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #9 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #16
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #16
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #17
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %__size, i64 noundef %__align) #2 {
entry:
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__align.addr, align 8
  %1 = load i64, ptr %__size.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %1, i64 noundef %0)
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %__size.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ %call2, %if.end ], [ %call1, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #2 {
entry:
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %__args, i64 noundef %__args1) #19
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %__args1) ]
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %__args) #2 {
entry:
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %__args) #19
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
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
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
  %__first1.coerce.elt = extractvalue [2 x i64] %__first1.coerce, 0
  store i64 %__first1.coerce.elt, ptr %__first1, align 8
  %__first1.repack1 = getelementptr inbounds [2 x i64], ptr %__first1, i64 0, i64 1
  %__first1.coerce.elt2 = extractvalue [2 x i64] %__first1.coerce, 1
  store i64 %__first1.coerce.elt2, ptr %__first1.repack1, align 8
  %__last1.coerce.elt = extractvalue [2 x i64] %__last1.coerce, 0
  store i64 %__last1.coerce.elt, ptr %__last1, align 8
  %__last1.repack3 = getelementptr inbounds [2 x i64], ptr %__last1, i64 0, i64 1
  %__last1.coerce.elt4 = extractvalue [2 x i64] %__last1.coerce, 1
  store i64 %__last1.coerce.elt4, ptr %__last1.repack3, align 8
  %__first2.coerce.elt = extractvalue [2 x i64] %__first2.coerce, 0
  store i64 %__first2.coerce.elt, ptr %__first2, align 8
  %__first2.repack5 = getelementptr inbounds [2 x i64], ptr %__first2, i64 0, i64 1
  %__first2.coerce.elt6 = extractvalue [2 x i64] %__first2.coerce, 1
  store i64 %__first2.coerce.elt6, ptr %__first2.repack5, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont4, %entry
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadES2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first1, ptr noundef nonnull align 8 dereferenceable(16) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %try.cont

while.body:                                       ; preds = %invoke.cont
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_6threadEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS6_EEEEE4typeES8_(ptr noundef nonnull align 8 dereferenceable(16) %__first2) #16
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(8) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %while.body
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first2)
  br label %while.cond, !llvm.loop !14

lpad:                                             ; preds = %while.body, %while.cond
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %exn = load ptr, ptr %exn.slot, align 8
  %4 = call ptr @__cxa_begin_catch(ptr %exn) #16
  %5 = load ptr, ptr %__alloc.addr, align 8
  %call11 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC1B6v15007ERS3_RS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %lpad
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad9

lpad9:                                            ; preds = %invoke.cont12, %invoke.cont10, %lpad
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

try.cont:                                         ; preds = %invoke.cont
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %__first2, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %9 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %10 = insertvalue [2 x i64] %9, i64 %.unpack8, 1
  ret [2 x i64] %10

eh.resume:                                        ; preds = %lpad9
  %exn14 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn14, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15

terminate.lpad:                                   ; preds = %lpad9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  call void @__clang_call_terminate(ptr %12) #6
  unreachable

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC1B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC2B6v15007ES2_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__x)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %0 = load ptr, ptr %__x, align 8
  %1 = load ptr, ptr %__y, align 8
  store ptr %1, ptr %__x, align 8
  store ptr %0, ptr %__y, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #4 align 2 {
entry:
  %__current_size.addr = alloca i64, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr6 = getelementptr inbounds %"class.std::__1::thread", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds %"class.std::__1::thread", ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_6threadENS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadES2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #2 {
entry:
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__x)
  %call1 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__y)
  %cmp = icmp ne ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JS2_EvEEvRS3_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_6threadEE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_6threadEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS6_EEEEE4typeES8_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_6threadEEEvE6__callB6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i64 -1
  ret ptr %incdec.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i64 -1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC1B6v15007ERS3_RS6_S9_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC2B6v15007ERS3_RS6_S9_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.12", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.12", align 8
  %agg.tmp4 = alloca %"class.std::__1::reverse_iterator", align 8
  %0 = load ptr, ptr %this, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__last_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp2, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %agg.tmp2, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %3 = insertvalue [2 x i64] %2, i64 %.unpack2, 1
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp, [2 x i64] %3)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %__first_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp4, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.unpack3 = load i64, ptr %agg.tmp4, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack3, 0
  %.elt4 = getelementptr inbounds [2 x i64], ptr %agg.tmp4, i64 0, i64 1
  %.unpack5 = load i64, ptr %.elt4, align 8
  %6 = insertvalue [2 x i64] %5, i64 %.unpack5, 1
  %call5 = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp3, [2 x i64] %6)
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_6threadEEENS_16reverse_iteratorINS4_IPS2_EEEES7_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %agg.tmp, ptr noundef nonnull %agg.tmp3)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_6threadEE9constructB6v15007IS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16threadC1B6v15007EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef nonnull align 8 dereferenceable(8) %__args) #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16threadC1B6v15007EOS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16threadC2B6v15007EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16threadC2B6v15007EOS0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %__t, align 8
  store ptr %0, ptr %this, align 8
  store ptr null, ptr %__t, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_6threadEEEvE6__callB6v15007ERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %call) #16
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_6threadEEENS_16reverse_iteratorIPS2_EEEC2B6v15007ERS3_RS6_S9_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #1 align 2 {
entry:
  store ptr %__alloc, ptr %this, align 8
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 1
  store ptr %__first, ptr %__first_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 2
  store ptr %__last, ptr %__last_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_6threadEEENS_16reverse_iteratorINS4_IPS2_EEEES7_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last) #2 {
entry:
  %__alloc.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_6threadEEES4_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__first, ptr noundef nonnull align 8 dereferenceable(40) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_6threadEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(40) %__first) #16
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__first)
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC1B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC2B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_6threadEEES4_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__x, ptr noundef nonnull align 8 dereferenceable(40) %__y) #2 {
entry:
  %__y.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__y, ptr %__y.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__x)
  %call.elt = extractvalue [2 x i64] %call, 0
  store i64 %call.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack1 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call.elt2 = extractvalue [2 x i64] %call, 1
  store i64 %call.elt2, ptr %ref.tmp.repack1, align 8
  %0 = load ptr, ptr %__y.addr, align 8
  %call2 = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %call2.elt = extractvalue [2 x i64] %call2, 0
  store i64 %call2.elt, ptr %ref.tmp1, align 8
  %ref.tmp1.repack3 = getelementptr inbounds [2 x i64], ptr %ref.tmp1, i64 0, i64 1
  %call2.elt4 = extractvalue [2 x i64] %call2, 1
  store i64 %call2.elt4, ptr %ref.tmp1.repack3, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_6threadES2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1)
  ret i1 %call3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_6threadEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_6threadEEEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %current)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_6threadEEEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %call) #16
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_6threadEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %__tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__tmp, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__tmp)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__116reverse_iteratorIPNS_6threadEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i64 1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_6threadEEEEC2B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #1 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator", align 8
  %__x.coerce.elt = extractvalue [2 x i64] %__x.coerce, 0
  store i64 %__x.coerce.elt, ptr %__x, align 8
  %__x.repack1 = getelementptr inbounds [2 x i64], ptr %__x, i64 0, i64 1
  %__x.coerce.elt2 = extractvalue [2 x i64] %__x.coerce, 1
  store i64 %__x.coerce.elt2, ptr %__x.repack1, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__t, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.12", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %current, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_6threadEEC2B6v15007ES2_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  store ptr %__x, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %0 = load ptr, ptr %this, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %1 = load ptr, ptr %this, align 8
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 {
entry:
  call void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endB6v15007EPS1_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__end_, align 8
  %cmp.not = icmp eq ptr %0, %1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %2, i64 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef nonnull %incdec.ptr) #16
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #6
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE22__construct_one_at_endB6v15007IJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %0) #16
  invoke void @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JZN5tracy12TaskDispatchC1EmPKcE3$_0EvEEvRS3_PT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(24) %__args)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %1, i64 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #16
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__emplace_back_slow_pathIJZN5tracy12TaskDispatchC1EmPKcE3$_0EEEvDpOT_"(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__args, ptr %__args.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_6threadEEEPT_S3_(ptr noundef %0) #16
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JZN5tracy12TaskDispatchC1EmPKcE3$_0EvEEvRS3_PT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %2 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %2, i64 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC1ERS4_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructB6v15007IS2_JZN5tracy12TaskDispatchC1EmPKcE3$_0EvEEvRS3_PT_DpOT0_"(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args) #2 align 2 {
entry:
  %call.i = call noundef ptr @"_ZNSt3__16threadC1IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef nonnull align 8 dereferenceable(24) %__args)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionC2ERS4_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__v, ptr %this, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %__v, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector.1", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__end_2, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::thread", ptr %2, i64 %3
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__16threadC1IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__16threadC2IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__f)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__16threadC2IZN5tracy12TaskDispatchC1EmPKcE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__f) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__f.addr = alloca ptr, align 8
  %__tsp = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %__p = alloca %"class.std::__1::unique_ptr.16", align 8
  %__ec = alloca i32, align 4
  store ptr %__f, ptr %__f.addr, align 8
  %call = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19
  %call2 = invoke noundef ptr @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007ILb1EvEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %__tsp, ptr noundef nonnull %call) #16
  %call6 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %0 = load ptr, ptr %__f.addr, align 8
  %call.i = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJS5_SA_ELi0EEEDpOT_"(ptr noundef nonnull align 8 dereferenceable(32) %call6, ptr noundef nonnull align 8 dereferenceable(8) %__tsp, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %call8 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC1B6v15007ILb1EvEEPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef nonnull %call6) #16
  %call9 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  %call12 = invoke noundef i32 @_ZNSt3__122__libcpp_thread_createB6v15007EPP17_opaque_pthread_tPFPvS3_ES3_(ptr noundef nonnull %this, ptr noundef nonnull @"_ZNSt3__114__thread_proxyB6v15007INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEEPvSD_", ptr noundef %call9)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont5
  store i32 %call12, ptr %__ec, align 4
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont11
  %call13 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE7releaseB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  %call15 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  %call17 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__tsp) #16
  ret ptr %this

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  call void @_ZdlPv(ptr noundef %call) #18
  br label %eh.resume

lpad4:                                            ; preds = %invoke.cont
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad10:                                           ; preds = %if.else, %invoke.cont5
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call16 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont11
  %10 = load i32, ptr %__ec, align 4
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef %10, ptr noundef nonnull @.str.2) #17
          to label %invoke.cont14 unwind label %lpad10

invoke.cont14:                                    ; preds = %if.else
  unreachable

ehcleanup:                                        ; preds = %lpad10, %lpad4
  %call18 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__tsp) #16
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
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007ILb1EvEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC1B6v15007ILb1EvEEPSB_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC2B6v15007ILb1EvEEPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #16
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__122__libcpp_thread_createB6v15007EPP17_opaque_pthread_tPFPvS3_ES3_(ptr noundef %__t, ptr noundef %__func, ptr noundef %__arg) #2 {
entry:
  %call = call i32 @pthread_create(ptr noundef %__t, ptr noundef null, ptr noundef %__func, ptr noundef %__arg)
  ret i32 %call
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @"_ZNSt3__114__thread_proxyB6v15007INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEEPvSD_"(ptr noundef %__vp) #2 personality ptr @__gxx_personality_v0 {
entry:
  %__p = alloca %"class.std::__1::unique_ptr.16", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC1B6v15007ILb1EvEEPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef %__vp) #16
  %call1 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__13getB6v15007ILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSF_"(ptr noundef nonnull align 8 dereferenceable(32) %call2) #16
  %call4 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call3) #16
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call6 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  invoke void @"_ZNSt3__116__thread_executeB6v15007INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE"(ptr noundef nonnull align 8 dereferenceable(32) %call6)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %call8 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  ret ptr null

lpad:                                             ; preds = %invoke.cont5, %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call.i = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  %0 = load ptr, ptr %call.i, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE7releaseB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  %0 = load ptr, ptr %call, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  store ptr null, ptr %call3, align 8
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef, ptr noundef) #13

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEED1B6v15007Ev"(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  call void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE5resetB6v15007EPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef null) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007ILb1EvEEPS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %__p, ptr %__p.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IRS2_NS_16__value_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IRS2_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IRS2_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %__u, align 8
  store ptr %0, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007ENS_16__value_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJS5_SA_ELi0EEEDpOT_"(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u1) unnamed_addr #1 align 2 {
entry:
  %call.i = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJLm0ELm1EEJS7_SC_EJEJEJS7_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_"(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u1) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEC2B6v15007IJLm0ELm1EEJS7_SC_EJEJEJS7_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSG_IJDpT2_EEEDpOT3_"(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(24) %__u4) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) #16
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %__u4, i64 24, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007EOS4_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007EOS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007EOS4_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007EOS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca ptr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__u) #16
  store ptr %call, ptr %ref.tmp, align 8
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__u) #16
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  %0 = load ptr, ptr %call, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  store ptr null, ptr %call3, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IS2_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007IS3_vEEOT_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B6v15007IS2_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %__u, align 8
  store ptr %0, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B6v15007IS3_vEEOT_(ptr noundef nonnull returned align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEEC2B6v15007ILb1EvEEPSB_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %__p, ptr %__p.addr, align 8
  %call.i1 = invoke noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEEC2B6v15007IRSD_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEEC2B6v15007IRSD_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %0 = load ptr, ptr %__t1, align 8
  store ptr %0, ptr %this, align 8
  ret ptr %this
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__119__thread_local_dataEv() #5

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #2 align 2 {
entry:
  %0 = load i64, ptr %this, align 8
  %call = call noundef i32 @_ZNSt3__116__libcpp_tls_setB6v15007EmPv(i64 noundef %0, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__13getB6v15007ILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSF_"(ptr noundef nonnull align 8 dereferenceable(32) %__t) #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__t) #16
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__116__thread_executeB6v15007INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE"(ptr noundef nonnull align 8 dereferenceable(32) %__t) #2 {
entry:
  %add.ptr.i = getelementptr inbounds i8, ptr %__t, i64 8
  %call.i = call noundef nonnull align 8 dereferenceable(24) ptr @"_ZNSt3__112__tuple_leafILm1EZN5tracy12TaskDispatchC1EmPKcE3$_0Lb0EE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(24) %add.ptr.i) #16
  call void @"_ZZN5tracy12TaskDispatchC1EmPKcENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %call.i)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__116__libcpp_tls_setB6v15007EmPv(i64 noundef %__key, ptr noundef %__p) #2 {
entry:
  %call = call i32 @pthread_setspecific(i64 noundef %__key, ptr noundef %__p)
  ret i32 %call
}

declare i32 @pthread_setspecific(i64 noundef, ptr noundef) #5

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZZN5tracy12TaskDispatchC1EmPKcENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %tmp.i = alloca [128 x i8], align 1
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds %class.anon, ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds %class.anon, ptr %this, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i)
  %call.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i64 noundef 128, ptr noundef nonnull @.str, ptr noundef %2, i64 noundef %4)
  call void @_ZN5tracy13SetThreadNameEPKc(ptr noundef nonnull %tmp.i)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i)
  call void @_ZN5tracy12TaskDispatch6WorkerEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(24) ptr @"_ZNSt3__112__tuple_leafILm1EZN5tracy12TaskDispatchC1EmPKcE3$_0Lb0EE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS3_ISB_EEE5resetB6v15007EPSB_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #4 align 2 {
entry:
  %__tmp = alloca ptr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEENS4_ISC_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  store ptr %__p, ptr %call3, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = call noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEELi1ELb1EE5__getB6v15007Ev"(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  %1 = load ptr, ptr %__tmp, align 8
  %isnull.i = icmp eq ptr %1, null
  br i1 %isnull.i, label %if.end, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.then
  %call.i3 = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  call void @_ZdlPv(ptr noundef %1) #18
  br label %if.end

if.end:                                           ; preds = %delete.notnull.i, %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EEEEELi1ELb1EE5__getB6v15007Ev"(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call.i = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull align 8 dereferenceable(32) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN5tracy12TaskDispatchC1EmPKcE3$_0EED1Ev"(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call.i = call noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  call void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef null) #16
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #4 align 2 {
entry:
  %__tmp = alloca ptr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  store ptr %__p, ptr %call3, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  %1 = load ptr, ptr %__tmp, align 8
  call void @_ZNKSt3__114default_deleteINS_15__thread_structEEclB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %call5, ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__114default_deleteINS_15__thread_structEEclB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) #4 align 2 {
entry:
  %isnull = icmp eq ptr %__ptr, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %call = call noundef ptr @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr) #16
  call void @_ZdlPv(ptr noundef %__ptr) #18
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::thread>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %1 = load ptr, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.1", ptr %1, i64 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #2 align 2 {
entry:
  %__new_size.addr = alloca i64, align 8
  %__ms = alloca i64, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__new_size, ptr %__new_size.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  store i64 %call2, ptr %__cap, align 8
  %1 = load i64, ptr %__ms, align 8
  %div1 = lshr i64 %1, 1
  %cmp3.not = icmp ult i64 %call2, %div1
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load i64, ptr %__ms, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %3 = load i64, ptr %__cap, align 8
  %mul = shl i64 %3, 1
  store i64 %mul, ptr %ref.tmp, align 8
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__new_size.addr)
  %4 = load i64, ptr %call6, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %storemerge = phi i64 [ %4, %if.end5 ], [ %2, %if.then4 ]
  ret i64 %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
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
  %call = call noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
  %cond-lvalue = select i1 %call, ptr %0, ptr %1
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__cxx_atomic_storeB6v15007IbEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef %__a, i1 noundef zeroext %__val, i32 noundef %__order) #4 {
entry:
  %.atomictmp = alloca i8, align 1
  %frombool1 = zext i1 %__val to i8
  store i8 %frombool1, ptr %.atomictmp, align 1
  switch i32 %__order, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %0 = load i8, ptr %.atomictmp, align 1
  store atomic i8 %0, ptr %__a monotonic, align 1
  br label %atomic.continue

release:                                          ; preds = %entry
  %1 = load i8, ptr %.atomictmp, align 1
  store atomic i8 %1, ptr %__a release, align 1
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %2 = load i8, ptr %.atomictmp, align 1
  store atomic i8 %2, ptr %__a seq_cst, align 1
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC1B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC2B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPNS_6threadEEC2B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC1ERS6_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #16
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JRKS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(32) %__args)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %1, i64 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #16
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer.24", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__args, ptr %__args.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC1EmmS6_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i64 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #16
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JRKS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i64 0, i32 2
  %2 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %2, i64 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC1ERS6_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC2ERS6_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JRKS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC2ERS6_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__v, ptr %this, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %__v, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__end_2, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %2, i64 %3
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %1 = load ptr, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %1, i64 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #2 align 2 {
entry:
  %__new_size.addr = alloca i64, align 8
  %__ms = alloca i64, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__new_size, ptr %__new_size.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  store i64 %call2, ptr %__cap, align 8
  %1 = load i64, ptr %__ms, align 8
  %div1 = lshr i64 %1, 1
  %cmp3.not = icmp ult i64 %call2, %div1
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load i64, ptr %__ms, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %3 = load i64, ptr %__cap, align 8
  %mul = shl i64 %3, 1
  store i64 %mul, ptr %ref.tmp, align 8
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__new_size.addr)
  %4 = load i64, ptr %call6, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %storemerge = phi i64 [ %4, %if.end5 ], [ %2, %if.then4 ]
  ret i64 %storemerge
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC1EmmS6_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC2EmmS6_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #2 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator.28", align 8
  store ptr %__v, ptr %__v.addr, align 8
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %1 = load ptr, ptr %this, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
  %.unpack = load i64, ptr %agg.tmp, align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack2, 1
  %.unpack3 = load i64, ptr %agg.tmp3, align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack3, 0
  %.elt4 = getelementptr inbounds [2 x i64], ptr %agg.tmp3, i64 0, i64 1
  %.unpack5 = load i64, ptr %.elt4, align 8
  %7 = insertvalue [2 x i64] %6, i64 %.unpack5, 1
  %.unpack6 = load i64, ptr %agg.tmp5, align 8
  %8 = insertvalue [2 x i64] undef, i64 %.unpack6, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %agg.tmp5, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %9 = insertvalue [2 x i64] %8, i64 %.unpack8, 1
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EES8_S8_EET2_RT_T0_T1_S9_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %5, [2 x i64] %7, [2 x i64] %9)
  %call8.elt = extractvalue [2 x i64] %call8, 0
  store i64 %call8.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack9 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call8.elt10 = extractvalue [2 x i64] %call8, 1
  store i64 %call8.elt10, ptr %ref.tmp.repack9, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %10 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %10, i64 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %10, i64 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #16
  %__end_13 = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %10, i64 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #16
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %11 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #16
  call void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #16
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  store ptr %12, ptr %11, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call18) #16
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef nonnull %this)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE8max_sizeB6v15007IS5_vEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %call) #16
  store i64 %call2, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #16
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
  call void @__clang_call_terminate(ptr %2) #6
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #9 align 2 {
entry:
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef nonnull @.str.1) #17
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE8max_sizeB6v15007IS5_vEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #4 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__19allocatorINS_8functionIFvvEEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %__a) #16
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorINS_8functionIFvvEEEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret i64 576460752303423487
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEENS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_8functionIFvvEEEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #4 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC2EmmS6_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %__cap.addr = alloca i64, align 8
  %__start.addr = alloca i64, align 8
  %ref.tmp = alloca ptr, align 8
  %__allocation = alloca %"struct.std::__1::__allocation_result.27", align 8
  store i64 %__cap, ptr %__cap.addr, align 8
  store i64 %__start, ptr %__start.addr, align 8
  store ptr %this, ptr %retval, align 8
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 3
  store ptr null, ptr %ref.tmp, align 8
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC1B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  %cmp = icmp eq i64 %__cap, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %this, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %0 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_8functionIFvvEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %0)
  %call3.elt = extractvalue [2 x i64] %call3, 0
  store i64 %call3.elt, ptr %__allocation, align 8
  %__allocation.repack1 = getelementptr inbounds [2 x i64], ptr %__allocation, i64 0, i64 1
  %call3.elt2 = extractvalue [2 x i64] %call3, 1
  store i64 %call3.elt2, ptr %__allocation.repack1, align 8
  %.cast = inttoptr i64 %call3.elt to ptr
  store ptr %.cast, ptr %this, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result.27", ptr %__allocation, i64 0, i32 1
  %1 = load i64, ptr %count, align 8
  store i64 %1, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %this, align 8
  %3 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %2, i64 %3
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %4 = load ptr, ptr %this, align 8
  %5 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds %"class.std::__1::function", ptr %4, i64 %5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  store ptr %add.ptr7, ptr %call8, align 8
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC1B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC2B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorINS_8functionIFvvEEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #2 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result.27", align 8
  %call = call noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n)
  store ptr %call, ptr %retval, align 8
  %count = getelementptr inbounds %"struct.std::__1::__allocation_result.27", ptr %retval, i64 0, i32 1
  store i64 %__n, ptr %count, align 8
  %.unpack.cast = ptrtoint ptr %call to i64
  %0 = insertvalue [2 x i64] undef, i64 %.unpack.cast, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEEC2B6v15007IDnS7_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EEC2B6v15007IS6_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EEC2B6v15007IS6_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr %__u, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorINS_8functionIFvvEEEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE8max_sizeB6v15007IS5_vEEmRKS5_(ptr noundef nonnull align 1 dereferenceable(1) %this) #16
  %cmp = icmp ult i64 %call, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #17
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__n.addr, align 8
  %mul = shl i64 %0, 5
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_8functionIFvvEEEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
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
  %__first1.coerce.elt = extractvalue [2 x i64] %__first1.coerce, 0
  store i64 %__first1.coerce.elt, ptr %__first1, align 8
  %__first1.repack1 = getelementptr inbounds [2 x i64], ptr %__first1, i64 0, i64 1
  %__first1.coerce.elt2 = extractvalue [2 x i64] %__first1.coerce, 1
  store i64 %__first1.coerce.elt2, ptr %__first1.repack1, align 8
  %__last1.coerce.elt = extractvalue [2 x i64] %__last1.coerce, 0
  store i64 %__last1.coerce.elt, ptr %__last1, align 8
  %__last1.repack3 = getelementptr inbounds [2 x i64], ptr %__last1, i64 0, i64 1
  %__last1.coerce.elt4 = extractvalue [2 x i64] %__last1.coerce, 1
  store i64 %__last1.coerce.elt4, ptr %__last1.repack3, align 8
  %__first2.coerce.elt = extractvalue [2 x i64] %__first2.coerce, 0
  store i64 %__first2.coerce.elt, ptr %__first2, align 8
  %__first2.repack5 = getelementptr inbounds [2 x i64], ptr %__first2, i64 0, i64 1
  %__first2.coerce.elt6 = extractvalue [2 x i64] %__first2.coerce, 1
  store i64 %__first2.coerce.elt6, ptr %__first2.repack5, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont4, %entry
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_8functionIFvvEEES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first1, ptr noundef nonnull align 8 dereferenceable(16) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %try.cont

while.body:                                       ; preds = %invoke.cont
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS8_EEEEE4typeESA_(ptr noundef nonnull align 8 dereferenceable(16) %__first2) #16
  %call3 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(32) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %while.body
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first2)
  br label %while.cond, !llvm.loop !17

lpad:                                             ; preds = %while.body, %while.cond
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %exn = load ptr, ptr %exn.slot, align 8
  %4 = call ptr @__cxa_begin_catch(ptr %exn) #16
  %5 = load ptr, ptr %__alloc.addr, align 8
  %call11 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC1B6v15007ERS5_RS8_SB_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %lpad
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  invoke void @__cxa_rethrow() #17
          to label %unreachable unwind label %lpad9

lpad9:                                            ; preds = %invoke.cont12, %invoke.cont10, %lpad
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

try.cont:                                         ; preds = %invoke.cont
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %__first2, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %9 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %10 = insertvalue [2 x i64] %9, i64 %.unpack8, 1
  ret [2 x i64] %10

eh.resume:                                        ; preds = %lpad9
  %exn14 = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn14, 0
  %lpad.val15 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val15

terminate.lpad:                                   ; preds = %lpad9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  call void @__clang_call_terminate(ptr %12) #6
  unreachable

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC1B6v15007ES4_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC2B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__x)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPNS_8functionIFvvEEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS6_EE5valueEvE4typeERS6_S9_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #4 {
entry:
  %0 = load ptr, ptr %__x, align 8
  %1 = load ptr, ptr %__y, align 8
  store ptr %1, ptr %__x, align 8
  store ptr %0, ptr %__y, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #4 align 2 {
entry:
  %__current_size.addr = alloca i64, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr6 = getelementptr inbounds %"class.std::__1::function", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds %"class.std::__1::function", ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorINS_8functionIFvvEEENS_9allocatorIS4_EEEEEEvPT_(ptr noundef %__c) #4 {
entry:
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_8functionIFvvEEES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #2 {
entry:
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__x)
  %call1 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__y)
  %cmp = icmp ne ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS8_EEEEE4typeESA_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_8functionIFvvEEEEEvE6__callB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i64 -1
  ret ptr %incdec.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i64 -1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC1B6v15007ERS5_RS8_SB_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC2B6v15007ERS5_RS8_SB_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #2 align 2 {
entry:
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.31", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.31", align 8
  %agg.tmp4 = alloca %"class.std::__1::reverse_iterator.28", align 8
  %0 = load ptr, ptr %this, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__last_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp2, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %agg.tmp2, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %3 = insertvalue [2 x i64] %2, i64 %.unpack2, 1
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC1B6v15007ES5_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp, [2 x i64] %3)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %__first_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp4, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.unpack3 = load i64, ptr %agg.tmp4, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack3, 0
  %.elt4 = getelementptr inbounds [2 x i64], ptr %agg.tmp4, i64 0, i64 1
  %.unpack5 = load i64, ptr %.elt4, align 8
  %6 = insertvalue [2 x i64] %5, i64 %.unpack5, 1
  %call5 = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC1B6v15007ES5_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp3, [2 x i64] %6)
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorINS6_IPS4_EEEES9_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %agg.tmp, ptr noundef nonnull %agg.tmp3)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorINS_8functionIFvvEEEE9constructB6v15007IS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC1EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %__p, ptr noundef nonnull align 8 dereferenceable(32) %__args) #16
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC1EOS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvvEEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC2EOS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007EOS3_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007EOS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007EOS3_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007EOS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  store ptr %this, ptr %retval, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %__f, i64 0, i32 1
  %0 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr null, ptr %__f_2, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8
  %__f_3 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__f_3, align 8
  %cmp5 = icmp eq ptr %2, %1
  br i1 %cmp5, label %if.then6, label %if.else12

if.then6:                                         ; preds = %if.else
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEE9__as_baseEPv(ptr noundef nonnull %this)
  %__f_8 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr %call, ptr %__f_8, align 8
  %3 = load ptr, ptr %__f.addr, align 8
  %__f_9 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %__f_9, align 8
  %vtable = load ptr, ptr %4, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %5 = load ptr, ptr %vfn, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %call)
          to label %if.end16 unwind label %terminate.lpad

if.else12:                                        ; preds = %if.else
  %6 = load ptr, ptr %__f.addr, align 8
  %__f_13 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %__f_13, align 8
  %__f_14 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr %7, ptr %__f_14, align 8
  %__f_15 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %6, i64 0, i32 1
  store ptr null, ptr %__f_15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then6, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8

terminate.lpad:                                   ; preds = %if.then6
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #6
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110__function12__value_funcIFvvEE9__as_baseEPv(ptr noundef %__p) #4 align 2 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_8functionIFvvEEEEEvE6__callB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %call) #16
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorIPS4_EEEC2B6v15007ERS5_RS8_SB_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #1 align 2 {
entry:
  store ptr %__alloc, ptr %this, align 8
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this, i64 0, i32 1
  store ptr %__first, ptr %__first_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse.30", ptr %this, i64 0, i32 2
  store ptr %__last, ptr %__last_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorINS_8functionIFvvEEEEENS_16reverse_iteratorINS6_IPS4_EEEES9_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last) #2 {
entry:
  %__alloc.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEES6_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__first, ptr noundef nonnull align 8 dereferenceable(40) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS9_EEEEE4typeESB_(ptr noundef nonnull align 8 dereferenceable(40) %__first) #16
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__first)
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC1B6v15007ES5_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC2B6v15007ES5_(ptr noundef nonnull align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPNS_8functionIFvvEEEEES6_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__x, ptr noundef nonnull align 8 dereferenceable(40) %__y) #2 {
entry:
  %__y.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  %ref.tmp1 = alloca %"class.std::__1::reverse_iterator.28", align 8
  store ptr %__y, ptr %__y.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__x)
  %call.elt = extractvalue [2 x i64] %call, 0
  store i64 %call.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack1 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call.elt2 = extractvalue [2 x i64] %call, 1
  store i64 %call.elt2, ptr %ref.tmp.repack1, align 8
  %0 = load ptr, ptr %__y.addr, align 8
  %call2 = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %call2.elt = extractvalue [2 x i64] %call2, 0
  store i64 %call2.elt, ptr %ref.tmp1, align 8
  %ref.tmp1.repack3 = getelementptr inbounds [2 x i64], ptr %ref.tmp1, i64 0, i64 1
  %call2.elt4 = extractvalue [2 x i64] %call2, 1
  store i64 %call2.elt4, ptr %ref.tmp1.repack3, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPNS_8functionIFvvEEES4_EEbRKNS_16reverse_iteratorIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1)
  ret i1 %call3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS9_EEEEE4typeESB_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvE6__callB6v15007ERKS7_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %current)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator.28", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_8functionIFvvEEEEEEEvE6__callB6v15007ERKS7_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %call) #16
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #6
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #2 align 2 {
entry:
  %__tmp = alloca %"class.std::__1::reverse_iterator.28", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__tmp, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__tmp)
  %call2 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt3__116reverse_iteratorIPNS_8functionIFvvEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %0, i64 1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPNS_8functionIFvvEEEEEEC2B6v15007ES5_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #1 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator.28", align 8
  %__x.coerce.elt = extractvalue [2 x i64] %__x.coerce, 0
  store i64 %__x.coerce.elt, ptr %__x, align 8
  %__x.repack1 = getelementptr inbounds [2 x i64], ptr %__x, i64 0, i64 1
  %__x.coerce.elt2 = extractvalue [2 x i64] %__x.coerce, 1
  store i64 %__x.coerce.elt2, ptr %__x.repack1, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__t, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.31", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %current, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPNS_8functionIFvvEEEEC2B6v15007ES4_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.28", ptr %this, i64 0, i32 1
  store ptr %__x, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %0 = load ptr, ptr %this, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %1 = load ptr, ptr %this, align 8
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE10deallocateB6v15007ERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 5
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 {
entry:
  call void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__end_, align 8
  %cmp.not = icmp eq ptr %0, %1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #16
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %2, i64 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef nonnull %incdec.ptr) #16
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE7destroyB6v15007IS4_vEEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #6
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #4 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #16
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPNS_8functionIFvvEEERNS_9allocatorIS3_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPNS_8functionIFvvEEELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__construct_one_at_endB6v15007IJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionC1ERS6_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #16
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(32) %__args)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<std::__1::function<void ()>>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %1, i64 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #16
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(32) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer.24", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__args, ptr %__args.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEEC1EmmS6_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i64 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_8functionIFvvEEEEEPT_S5_(ptr noundef %0) #16
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorINS_8functionIFvvEEEEEE9constructB6v15007IS4_JS4_EvEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer.24", ptr %__v, i64 0, i32 2
  %2 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"class.std::__1::function", ptr %2, i64 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferINS_8functionIFvvEEERNS_9allocatorIS3_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #16
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  store ptr %__m, ptr %this, align 8
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  store i8 1, ptr %__owns_, align 8
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %__m)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(9) %this) unnamed_addr #1 align 2 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  %0 = load i8, ptr %__owns_, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %this, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEEC2ERKS2_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC1B6v15007ERKS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEEC2B6v15007ERKS3_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %retval = alloca ptr, align 8
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  store ptr %this, ptr %retval, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %__f, i64 0, i32 1
  %0 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr null, ptr %__f_2, align 8
  br label %if.end17

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8
  %__f_3 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__f_3, align 8
  %cmp5 = icmp eq ptr %2, %1
  br i1 %cmp5, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.else
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEE9__as_baseEPv(ptr noundef nonnull %this)
  %__f_8 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr %call, ptr %__f_8, align 8
  %3 = load ptr, ptr %__f.addr, align 8
  %__f_9 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %__f_9, align 8
  %vtable = load ptr, ptr %4, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %5 = load ptr, ptr %vfn, align 8
  call void %5(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %call)
  br label %if.end17

if.else11:                                        ; preds = %if.else
  %6 = load ptr, ptr %__f.addr, align 8
  %__f_12 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %__f_12, align 8
  %vtable13 = load ptr, ptr %7, align 8
  %vfn14 = getelementptr inbounds ptr, ptr %vtable13, i64 2
  %8 = load ptr, ptr %vfn14, align 8
  %call15 = call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %__f_16 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr %call15, ptr %__f_16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.else11, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvvEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvvEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %0, %this
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__f_2, align 8
  %vtable = load ptr, ptr %1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 4
  %2 = load ptr, ptr %vfn, align 8
  call void %2(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  br label %if.end8

if.else:                                          ; preds = %entry
  %__f_3 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  %3 = load ptr, ptr %__f_3, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.else
  %__f_5 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %__f_5, align 8
  %vtable6 = load ptr, ptr %4, align 8
  %vfn7 = getelementptr inbounds ptr, ptr %vtable6, i64 5
  %5 = load ptr, ptr %vfn7, align 8
  call void %5(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE27__invalidate_iterators_pastB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last)
  %call = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE22__base_destruct_at_endB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #16
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call) #16
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE27__invalidate_iterators_pastB6v15007EPS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #4 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__old_size) #4 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call2 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call3 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr = getelementptr inbounds %"class.std::__1::function", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr5 = getelementptr inbounds %"class.std::__1::function", ptr %call4, i64 %__old_size
  %call6 = call noundef ptr @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %call7 = call noundef i64 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  %add.ptr8 = getelementptr inbounds %"class.std::__1::function", ptr %call6, i64 %call7
  call void @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE31__annotate_contiguous_containerB6v15007EPKvS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr5, ptr noundef %add.ptr8) #16
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__110__function12__value_funcIFvvEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #2 align 2 {
entry:
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__125__throw_bad_function_callB6v15007Ev() #17
  unreachable

if.end:                                           ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
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
  %exception = call ptr @__cxa_allocate_exception(i64 8) #16
  store i64 0, ptr %exception, align 16
  %call = call noundef ptr @_ZNSt3__117bad_function_callC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #16
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTINSt3__117bad_function_callE, ptr nonnull @_ZNSt3__117bad_function_callD1Ev) #17
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117bad_function_callC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117bad_function_callD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callC2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt9exceptionC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVNSt3__117bad_function_callE, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt9exceptionC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__117bad_function_callD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  call void @_ZdlPv(ptr noundef %this) #18
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callD2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #16
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt9exceptionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) #3

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__117__cxx_atomic_loadB6v15007IbEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef %__a, i32 noundef %__order) #4 {
entry:
  %atomic-temp = alloca i8, align 1
  switch i32 %__order, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %0 = load atomic i8, ptr %__a monotonic, align 1
  store i8 %0, ptr %atomic-temp, align 1
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %1 = load atomic i8, ptr %__a acquire, align 1
  store i8 %1, ptr %atomic-temp, align 1
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %2 = load atomic i8, ptr %__a seq_cst, align 1
  store i8 %2, ptr %atomic-temp, align 1
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %3 = load i8, ptr %atomic-temp, align 1
  %4 = and i8 %3, 1
  %tobool = icmp ne i8 %4, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef zeroext i1 @"_ZZN5tracy12TaskDispatch6WorkerEvENK3$_2clEv"(ptr noundef nonnull align 8 dereferenceable(8) %this) #4 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__16vectorINS_8functionIFvvEEENS_9allocatorIS3_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %call, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %m_exit = getelementptr inbounds %"class.tracy::TaskDispatch", ptr %0, i64 0, i32 4
  %call2 = call noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %m_exit, i32 noundef 2) #16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: alwaysinline mustprogress ssp uwtable
define void @pc_inline_source_snapshot_public_repos_tracy_server_TracyTaskDispatch_16(ptr noundef nonnull align 8 dereferenceable(224) %this, ptr noundef %name, i64 noundef %num) #14 align 2 {
entry:
  %tmp = alloca [128 x i8], align 1
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i64 noundef 128, ptr noundef nonnull @.str, ptr noundef %name, i64 noundef %num)
  call void @_ZN5tracy13SetThreadNameEPKc(ptr noundef nonnull %tmp)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

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
attributes #14 = { alwaysinline mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #15 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin allocsize(0) }

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
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
