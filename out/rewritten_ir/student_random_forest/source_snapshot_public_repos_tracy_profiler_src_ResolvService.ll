; ModuleID = './out/rewritten_ir/student_random_forest/source_snapshot_public_repos_tracy_profiler_src_ResolvService.prepared.ll'
source_filename = "./source_snapshot/public_repos/tracy/profiler/src/ResolvService.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%class.anon = type { ptr }
%class.ResolvService = type { %"struct.std::__1::atomic", %"class.std::__1::mutex", %"class.std::__1::condition_variable", %"class.std::__1::vector", i16, %"class.std::__1::thread" }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__cxx_atomic_impl" }
%"struct.std::__1::__cxx_atomic_impl" = type { %"struct.std::__1::__cxx_atomic_base_impl" }
%"struct.std::__1::__cxx_atomic_base_impl" = type { i8 }
%"class.std::__1::mutex" = type { %struct._opaque_pthread_mutex_t }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%"class.std::__1::condition_variable" = type { %struct._opaque_pthread_cond_t }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.std::__1::thread" = type { ptr }
%"class.std::__1::lock_guard" = type { ptr }
%"struct.ResolvService::QueueItem" = type { i32, %"class.std::__1::function" }
%"class.std::__1::function" = type { %"class.std::__1::__function::__value_func" }
%"class.std::__1::__function::__value_func" = type { %"struct.std::__1::aligned_storage<24, 8>::type", ptr }
%"struct.std::__1::aligned_storage<24, 8>::type" = type { [24 x i8] }
%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.std::__1::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.2" }
%"class.std::__1::__compressed_pair.2" = type { %"struct.std::__1::__compressed_pair_elem.3" }
%"struct.std::__1::__compressed_pair_elem.3" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%class.anon.1 = type { ptr }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.8" }
%"class.std::__1::__compressed_pair.8" = type { %"struct.std::__1::__compressed_pair_elem.9" }
%"struct.std::__1::__compressed_pair_elem.9" = type { ptr }
%"class.std::__1::unique_ptr.11" = type { %"class.std::__1::__compressed_pair.12" }
%"class.std::__1::__compressed_pair.12" = type { %"struct.std::__1::__compressed_pair_elem.13" }
%"struct.std::__1::__compressed_pair_elem.13" = type { ptr }
%"struct.std::__1::__value_init_tag" = type { i8 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::vector<ResolvService::QueueItem>::__destroy_vector" = type { ptr }
%"struct.std::__1::vector<ResolvService::QueueItem>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.19" }
%"class.std::__1::__compressed_pair.19" = type { %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem.20" }
%"struct.std::__1::__compressed_pair_elem.20" = type { ptr }
%"class.std::__1::reverse_iterator" = type { ptr, ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"class.std::__1::_AllocatorDestroyRangeReverse" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator.21" = type { [8 x i8], %"class.std::__1::reverse_iterator", %"class.std::__1::reverse_iterator" }

@.str = private unnamed_addr constant [26 x i8] c"thread constructor failed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.2 = private unnamed_addr constant [32 x i8] c"unique_lock::unlock: not locked\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTSNSt3__117bad_function_callE = linkonce_odr hidden constant [28 x i8] c"NSt3__117bad_function_callE\00", align 1
@_ZTISt9exception = external constant ptr
@_ZTINSt3__117bad_function_callE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr inttoptr (i64 add (i64 ptrtoint (ptr @_ZTSNSt3__117bad_function_callE to i64), i64 -9223372036854775808) to ptr), ptr @_ZTISt9exception }, align 8
@_ZTVNSt3__117bad_function_callE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt3__117bad_function_callE, ptr @_ZNSt3__117bad_function_callD1Ev, ptr @_ZNSt3__117bad_function_callD0Ev, ptr @_ZNKSt9exception4whatEv] }, align 8
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8

; Function Attrs: ssp uwtable
define noundef ptr @_ZN13ResolvServiceC2Et(ptr noundef nonnull returned align 8 dereferenceable(160) %this, i16 noundef zeroext %port) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %port.addr = alloca i16, align 2
  %ref.tmp = alloca %class.anon, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  %call = call noundef ptr @_ZNSt3__16atomicIbEC1B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext false) #17
  %m_lock = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 1
  %call2 = call noundef ptr @_ZNSt3__15mutexC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_lock) #17
  %m_cv = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 2
  %call3 = call noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cv) #17
  %m_queue = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 3
  %call4 = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #17
  %m_port = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 4
  %0 = load i16, ptr %port.addr, align 2
  store i16 %0, ptr %m_port, align 8
  %m_thread = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 5
  store ptr %this, ptr %ref.tmp, align 8
  %call5 = invoke noundef ptr @"_ZNSt3__16threadC1IZN13ResolvServiceC1EtE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(8) %m_thread, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #17
  %call7 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cv) #17
  %call8 = call noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_lock) #17
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val9 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val9
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIbEC1B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16atomicIbEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15mutexC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(64) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__15mutexC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(64) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118condition_variableC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__118condition_variableC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret ptr %this
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__16threadC1IZN13ResolvServiceC1EtE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__16threadC2IZN13ResolvServiceC1EtE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__f)
  ret ptr %this
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull returned align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull returned align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: ssp uwtable
define noundef ptr @_ZN13ResolvServiceC1Et(ptr noundef nonnull returned align 8 dereferenceable(160) %this, i16 noundef zeroext %port) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZN13ResolvServiceC2Et(ptr noundef nonnull align 8 dereferenceable(160) %this, i16 noundef zeroext %port)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN13ResolvServiceD2Ev(ptr noundef nonnull returned align 8 dereferenceable(160) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  call void @_ZNSt3__113__atomic_baseIbLb0EE5storeB6v15007EbNS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext true, i32 noundef 0) #17
  %m_cv = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cv) #17
  %m_thread = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 5
  invoke void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %m_thread)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %m_thread2 = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 5
  %call = call noundef ptr @_ZNSt3__16threadD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %m_thread2) #17
  %m_queue = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 3
  %call3 = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #17
  %m_cv4 = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 2
  %call5 = call noundef ptr @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %m_cv4) #17
  %m_lock = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 1
  %call6 = call noundef ptr @_ZNSt3__15mutexD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %m_lock) #17
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__113__atomic_baseIbLb0EE5storeB6v15007EbNS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d, i32 noundef %__m) #3 align 2 {
entry:
  call void @_ZNSt3__118__cxx_atomic_storeB6v15007IbEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef nonnull %this, i1 noundef zeroext %__d, i32 noundef %__m) #17
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) #2

declare void @_ZNSt3__16thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #5 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #17
  call void @_ZSt9terminatev() #5
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__16threadD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define noundef ptr @_ZN13ResolvServiceD1Ev(ptr noundef nonnull returned align 8 dereferenceable(160) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZN13ResolvServiceD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %this) #17
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN13ResolvService5QueryEjRKNSt3__18functionIFvONS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEEEE(ptr noundef nonnull align 8 dereferenceable(160) %this, i32 noundef %ip, ptr noundef nonnull align 8 dereferenceable(32) %callback) #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %lock = alloca %"class.std::__1::lock_guard", align 8
  %ref.tmp = alloca %"struct.ResolvService::QueueItem", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %m_lock = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_lock)
  store i32 %ip, ptr %ref.tmp, align 8
  %callback3 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %ref.tmp, i64 0, i32 1
  %call4 = invoke noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1ERKS9_(ptr noundef nonnull align 8 dereferenceable(32) %callback3, ptr noundef nonnull align 8 dereferenceable(32) %callback)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %m_queue = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 3
  %call7 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %m_queue, ptr noundef nonnull align 8 dereferenceable(40) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  %call8 = call noundef ptr @_ZN13ResolvService9QueueItemD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %ref.tmp) #17
  %m_cv = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 2
  call void @_ZNSt3__118condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %m_cv) #17
  %call10 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #17
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZN13ResolvService9QueueItemD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %ref.tmp) #17
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad5, %lpad
  %call11 = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %lock) #17
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val12 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val12
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__args) #6 align 2 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE22__construct_one_at_endB6v15007IJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret ptr %call2
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1ERKS9_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN13ResolvService9QueueItemD1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %callback.i = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %this, i64 0, i32 1
  %call.i = call noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED1Ev(ptr noundef nonnull align 8 dereferenceable(32) %callback.i) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define void @_ZN13ResolvService6WorkerEv(ptr noundef nonnull align 8 dereferenceable(160) %this) #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %addr = alloca %struct.sockaddr_in, align 4
  %buf = alloca [128 x i8], align 1
  %lock = alloca %"class.std::__1::unique_lock", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %query = alloca %"struct.ResolvService::QueueItem", align 8
  %ref.tmp = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %addr, i8 0, i64 16, i1 false)
  %sin_family = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 1
  store i8 2, ptr %sin_family, align 1
  %m_port = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 4
  %0 = load i16, ptr %m_port, align 8
  %1 = call i1 @llvm.is.constant.i16(i16 %0)
  br i1 %1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %m_port2 = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 4
  %2 = load i16, ptr %m_port2, align 8
  %rev = call i16 @llvm.bswap.i16(i16 %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %m_port7 = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 4
  %3 = load i16, ptr %m_port7, align 8
  %call = call noundef zeroext i16 @_ZL12_OSSwapInt16t(i16 noundef zeroext %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %rev, %cond.true ], [ %call, %cond.false ]
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 2
  store i16 %cond, ptr %sin_port, align 2
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %cond.end
  %m_lock = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 1
  %call8 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %lock, ptr noundef nonnull align 8 dereferenceable(64) %m_lock)
  %m_cv = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 2
  %coerce.val.pi = ptrtoint ptr %this to i64
  invoke void @"_ZNSt3__118condition_variable4waitIZN13ResolvService6WorkerEvE3$_1EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %m_cv, ptr noundef nonnull align 8 dereferenceable(9) %lock, i64 %coerce.val.pi)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %call9 = call noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef 0) #17
  br i1 %call9, label %cleanup, label %if.end

lpad:                                             ; preds = %if.end, %for.cond
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  br label %ehcleanup35

if.end:                                           ; preds = %invoke.cont
  %m_queue = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 3
  %call10 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #17
  %call12 = invoke noundef ptr @_ZN13ResolvService9QueueItemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %query, ptr noundef nonnull align 8 dereferenceable(40) %call10)
          to label %invoke.cont11 unwind label %lpad

invoke.cont11:                                    ; preds = %if.end
  %m_queue13 = getelementptr inbounds %class.ResolvService, ptr %this, i64 0, i32 3
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %m_queue13)
  invoke void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %lock)
          to label %invoke.cont16 unwind label %lpad14

invoke.cont16:                                    ; preds = %invoke.cont11
  %7 = load i32, ptr %query, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i64 0, i32 3
  store i32 %7, ptr %sin_addr, align 4
  %call18 = invoke i32 @getnameinfo(ptr noundef nonnull %addr, i32 noundef 16, ptr noundef nonnull %buf, i32 noundef 128, ptr noundef null, i32 noundef 0, i32 noundef 1)
          to label %invoke.cont17 unwind label %lpad14

invoke.cont17:                                    ; preds = %invoke.cont16
  %cmp.not = icmp eq i32 %call18, 0
  br i1 %cmp.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %invoke.cont17
  %call23 = invoke ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %query, ptr noundef nonnull %buf, i32 noundef 17)
          to label %if.end24 unwind label %lpad14

lpad14:                                           ; preds = %if.end24, %if.then19, %invoke.cont16, %invoke.cont11
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %exn.slot, align 8
  %10 = extractvalue { ptr, i32 } %8, 1
  store i32 %10, ptr %ehselector.slot, align 4
  br label %ehcleanup

if.end24:                                         ; preds = %if.then19, %invoke.cont17
  %call27 = invoke noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull %buf)
          to label %invoke.cont26 unwind label %lpad14

invoke.cont26:                                    ; preds = %if.end24
  %callback = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %query, i64 0, i32 1
  invoke void @_ZNKSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEclES7_(ptr noundef nonnull align 8 dereferenceable(32) %callback, ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont29 unwind label %lpad28

invoke.cont29:                                    ; preds = %invoke.cont26
  %call30 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %call32 = call noundef ptr @_ZN13ResolvService9QueueItemD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %query) #17
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont, %invoke.cont29
  %call34 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #17
  switch i1 %call9, label %unreachable [
    i1 false, label %for.cond
    i1 true, label %return
  ], !llvm.loop !6

lpad28:                                           ; preds = %invoke.cont26
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  store ptr %12, ptr %exn.slot, align 8
  %13 = extractvalue { ptr, i32 } %11, 1
  store i32 %13, ptr %ehselector.slot, align 4
  %call31 = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad28, %lpad14
  %call33 = call noundef ptr @_ZN13ResolvService9QueueItemD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %query) #17
  br label %ehcleanup35

ehcleanup35:                                      ; preds = %ehcleanup, %lpad
  %call36 = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %lock) #17
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val37 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val37

return:                                           ; preds = %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #8

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef zeroext i16 @_ZL12_OSSwapInt16t(i16 noundef zeroext %_data) #3 {
entry:
  %or = call i16 @llvm.bswap.i16(i16 %_data)
  ret i16 %or
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC1B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull align 8 dereferenceable(9) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__118condition_variable4waitIZN13ResolvService6WorkerEvE3$_1EEvRNS_11unique_lockINS_5mutexEEET_"(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %__lk, i64 %__pred.coerce) #6 align 2 {
entry:
  %__pred = alloca %class.anon.1, align 8
  %__lk.addr = alloca ptr, align 8
  %coerce.val.ip = inttoptr i64 %__pred.coerce to ptr
  store ptr %coerce.val.ip, ptr %__pred, align 8
  store ptr %__lk, ptr %__lk.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call noundef zeroext i1 @"_ZZN13ResolvService6WorkerEvENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(8) %__pred)
  br i1 %call, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %__lk.addr, align 8
  call void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48) %this, ptr noundef nonnull align 8 dereferenceable(9) %0) #17
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %this, i32 noundef %__m) #3 align 2 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__117__cxx_atomic_loadB6v15007IbEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef nonnull %this, i32 noundef %__m) #17
  ret i1 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZN13ResolvService9QueueItemC1ERKS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZN13ResolvService9QueueItemC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %0, i64 -1
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE17__destruct_at_endB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %add.ptr) #17
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__111unique_lockINS_5mutexEE6unlockEv(ptr noundef nonnull align 8 dereferenceable(9) %this) #6 align 2 {
entry:
  %__owns_ = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  %0 = load i8, ptr %__owns_, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef 1, ptr noundef nonnull @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %this, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #17
  %__owns_2 = getelementptr inbounds %"class.std::__1::unique_lock", ptr %this, i64 0, i32 1
  store i8 0, ptr %__owns_2, align 8
  ret void
}

declare i32 @getnameinfo(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #4

declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNKSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEclES7_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %__arg) #6 align 2 {
entry:
  call void @_ZNKSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEclB6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %__arg)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__s)
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(9) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111unique_lockINS_5mutexEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(9) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16atomicIbEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__113__atomic_baseIbLb0EEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__atomic_baseIbLb0EEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC1B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__d) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC1B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B6v15007Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__cxx_atomic_implIbNS_22__cxx_atomic_base_implIbEEEC2B6v15007Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__cxx_atomic_base_implIbEC2Eb(ptr noundef nonnull align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__cxx_atomic_base_implIbEC2Eb(ptr noundef nonnull returned align 1 dereferenceable(1) %this, i1 noundef zeroext %__value) unnamed_addr #1 align 2 {
entry:
  %frombool2 = zext i1 %__value to i8
  store i8 %frombool2, ptr %this, align 1
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__15mutexC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(64) %this) unnamed_addr #1 align 2 {
entry:
  store i64 850045863, ptr %this, align 8
  %__opaque = getelementptr inbounds %struct._opaque_pthread_mutex_t, ptr %this, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %__opaque, i8 0, i64 56, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118condition_variableC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(48) %this) unnamed_addr #1 align 2 {
entry:
  store i64 1018212795, ptr %this, align 8
  %__opaque = getelementptr inbounds %struct._opaque_pthread_cond_t, ptr %this, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %__opaque, i8 0, i64 40, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(32) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(32) %this) unnamed_addr #1 align 2 {
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
  call void %2(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
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
  call void %5(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZN13ResolvService9QueueItemC2ERKS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
entry:
  %1 = load i32, ptr %0, align 8
  store i32 %1, ptr %this, align 8
  %callback = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %this, i64 0, i32 1
  %callback3 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %0, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1ERKS9_(ptr noundef nonnull align 8 dereferenceable(32) %callback, ptr noundef nonnull align 8 dereferenceable(32) %callback3)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEEC2B6v15007ERS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(64) %__m) unnamed_addr #0 align 2 {
entry:
  store ptr %__m, ptr %this, align 8
  call void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64) %__m)
  ret ptr %this
}

declare void @_ZNSt3__15mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(64)) #4

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110lock_guardINS_5mutexEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #17
  ret ptr %this
}

; Function Attrs: nounwind
declare void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64)) #2

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__16threadC2IZN13ResolvServiceC1EtE3$_0JEvEEOT_DpOT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__f) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__f.addr = alloca ptr, align 8
  %__tsp = alloca %"class.std::__1::unique_ptr", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %__p = alloca %"class.std::__1::unique_ptr.11", align 8
  %__ec = alloca i32, align 4
  store ptr %__f, ptr %__f.addr, align 8
  %call = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #19
  %call2 = invoke noundef ptr @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call3 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007ILb1EvEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %__tsp, ptr noundef nonnull %call) #17
  %call6 = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  %0 = load ptr, ptr %__f.addr, align 8
  %call7 = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEC1B6v15007IJS5_S7_ELi0EEEDpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %call6, ptr noundef nonnull align 8 dereferenceable(8) %__tsp, ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %call8 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEEC1B6v15007ILb1EvEEPS8_"(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef nonnull %call6) #17
  %call9 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  %call12 = invoke noundef i32 @_ZNSt3__122__libcpp_thread_createB6v15007EPP17_opaque_pthread_tPFPvS3_ES3_(ptr noundef nonnull %this, ptr noundef nonnull @"_ZNSt3__114__thread_proxyB6v15007INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEEEEPvSA_", ptr noundef %call9)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont5
  store i32 %call12, ptr %__ec, align 4
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont11
  %call13 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE7releaseB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  %call15 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  %call17 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__tsp) #17
  ret ptr %this

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  call void @_ZdlPv(ptr noundef %call) #20
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
  %call16 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont11
  %10 = load i32, ptr %__ec, align 4
  invoke void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef %10, ptr noundef nonnull @.str) #18
          to label %invoke.cont14 unwind label %lpad10

invoke.cont14:                                    ; preds = %if.else
  unreachable

ehcleanup:                                        ; preds = %lpad10, %lpad4
  %call18 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__tsp) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup, %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val19 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val19
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #9

declare noundef ptr @_ZNSt3__115__thread_structC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #10

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007ILb1EvEEPS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007ILb1EvEEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEC1B6v15007IJS5_S7_ELi0EEEDpOT_"(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(8) %__u1) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEC2B6v15007IJS5_S7_ELi0EEEDpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(8) %__u1) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEEC1B6v15007ILb1EvEEPS8_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEEC2B6v15007ILb1EvEEPS8_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #17
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__122__libcpp_thread_createB6v15007EPP17_opaque_pthread_tPFPvS3_ES3_(ptr noundef %__t, ptr noundef %__func, ptr noundef %__arg) #6 {
entry:
  %call = call i32 @pthread_create(ptr noundef %__t, ptr noundef null, ptr noundef %__func, ptr noundef %__arg)
  ret i32 %call
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @"_ZNSt3__114__thread_proxyB6v15007INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEEEEPvSA_"(ptr noundef %__vp) #6 personality ptr @__gxx_personality_v0 {
entry:
  %__p = alloca %"class.std::__1::unique_ptr.11", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEEC1B6v15007ILb1EvEEPS8_"(ptr noundef nonnull align 8 dereferenceable(8) %__p, ptr noundef %__vp) #17
  %call1 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__119__thread_local_dataEv()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call2 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  %call.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call2) #17
  %call4 = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %call.i) #17
  invoke void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef %call4)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call6 = call noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  invoke void @"_ZNSt3__116__thread_executeB6v15007INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE"(ptr noundef nonnull align 8 dereferenceable(16) %call6)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %call8 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  ret ptr null

lpad:                                             ; preds = %invoke.cont5, %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEED1B6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %__p) #17
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef ptr @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call.i = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  %0 = load ptr, ptr %call.i, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE7releaseB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEENS4_IS9_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  %0 = load ptr, ptr %call, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEENS4_IS9_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  store ptr null, ptr %call3, align 8
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZNSt3__120__throw_system_errorEiPKc(i32 noundef, ptr noundef) #11

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEED1B6v15007Ev"(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  call void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE5resetB6v15007EPS8_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef null) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
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
  call void @__clang_call_terminate(ptr %1) #5
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
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEC2B6v15007IJS5_S7_ELi0EEEDpOT_"(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(8) %__u1) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN13ResolvServiceC1EtE3$_0EEC1B6v15007IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_"(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(8) %__u1) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN13ResolvServiceC1EtE3$_0EEC1B6v15007IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_"(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(8) %__u4) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN13ResolvServiceC1EtE3$_0EEC2B6v15007IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_"(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(8) %__u4) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN13ResolvServiceC1EtE3$_0EEC2B6v15007IJLm0ELm1EEJS7_S9_EJEJEJS7_S9_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSD_IJDpT2_EEEDpOT3_"(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef nonnull align 8 dereferenceable(8) %__u4) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) #17
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  %1 = load i64, ptr %__u4, align 8
  store i64 %1, ptr %0, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007EOS4_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007EOS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007EOS4_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007EOS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca ptr, align 8
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__u) #17
  store ptr %call, ptr %ref.tmp, align 8
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__u) #17
  %call3 = invoke noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %call2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  %0 = load ptr, ptr %call, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  store ptr null, ptr %call3, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B6v15007IS2_S4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
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

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEEC2B6v15007ILb1EvEEPS8_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__p.addr = alloca ptr, align 8
  %ref.tmp = alloca %"struct.std::__1::__value_init_tag", align 1
  store ptr %__p, ptr %__p.addr, align 8
  %call = invoke noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEENS4_IS9_EEEC1B6v15007IRSA_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__p.addr, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEENS4_IS9_EEEC1B6v15007IRSA_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEENS4_IS9_EEEC2B6v15007IRSA_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define internal noundef ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEENS4_IS9_EEEC2B6v15007IRSA_NS_16__value_init_tagEEEOT_OT0_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEELi0ELb0EEC2B6v15007IRSA_vEEOT_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEELi0ELb0EEC2B6v15007IRSA_vEEOT_"(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %__u, align 8
  store ptr %0, ptr %this, align 8
  ret ptr %this
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__119__thread_local_dataEv() #4

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #6 align 2 {
entry:
  %0 = load i64, ptr %this, align 8
  %call = call noundef i32 @_ZNSt3__116__libcpp_tls_setB6v15007EmPv(i64 noundef %0, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZNSt3__116__thread_executeB6v15007INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE"(ptr noundef nonnull align 8 dereferenceable(16) %__t) #6 {
entry:
  %add.ptr.i = getelementptr inbounds i8, ptr %__t, i64 8
  %call.i = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__112__tuple_leafILm1EZN13ResolvServiceC1EtE3$_0Lb0EE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr.i) #17
  call void @"_ZZN13ResolvServiceC1EtENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(8) %call.i)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i32 @_ZNSt3__116__libcpp_tls_setB6v15007EmPv(i64 noundef %__key, ptr noundef %__p) #6 {
entry:
  %call = call i32 @pthread_setspecific(i64 noundef %__key, ptr noundef %__p)
  ret i32 %call
}

declare i32 @pthread_setspecific(i64 noundef, ptr noundef) #4

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define internal void @"_ZZN13ResolvServiceC1EtENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZN13ResolvService6WorkerEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__112__tuple_leafILm1EZN13ResolvServiceC1EtE3$_0Lb0EE3getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEENS4_IS9_EEE5firstB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EEENS3_IS8_EEE5resetB6v15007EPS8_"(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #3 align 2 {
entry:
  %__tmp = alloca ptr, align 8
  %call.i = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  %0 = load ptr, ptr %call.i, align 8
  store ptr %0, ptr %__tmp, align 8
  %call.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZN13ResolvServiceC1EtE3$_0EEELi0ELb0EE5__getB6v15007Ev"(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  store ptr %__p, ptr %call.i3, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i6 = call noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZN13ResolvServiceC1EtE3$_0EEEEELi1ELb1EE5__getB6v15007Ev"(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %1 = load ptr, ptr %__tmp, align 8
  call void @"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN13ResolvServiceC1EtE3$_0EEEEclB6v15007EPS8_"(ptr noundef nonnull align 1 dereferenceable(1) %call.i6, ptr noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZN13ResolvServiceC1EtE3$_0EEEEclB6v15007EPS8_"(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) #1 align 2 {
entry:
  %isnull = icmp eq ptr %__ptr, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %call.i = call noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EED2Ev"(ptr noundef nonnull align 8 dereferenceable(16) %__ptr) #17
  call void @_ZdlPv(ptr noundef %__ptr) #20
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal noundef nonnull align 1 dereferenceable(1) ptr @"_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZN13ResolvServiceC1EtE3$_0EEEEELi1ELb1EE5__getB6v15007Ev"(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZN13ResolvServiceC1EtE3$_0EED2Ev"(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #1 align 2 {
entry:
  %call.i = call noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN13ResolvServiceC1EtE3$_0EED2Ev"(ptr noundef nonnull align 8 dereferenceable(16) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define internal noundef ptr @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZN13ResolvServiceC1EtE3$_0EED2Ev"(ptr noundef nonnull returned align 8 dereferenceable(16) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  call void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef null) #17
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p) #3 align 2 {
entry:
  %__tmp = alloca ptr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  %0 = load ptr, ptr %call, align 8
  store ptr %0, ptr %__tmp, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  store ptr %__p, ptr %call3, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  %1 = load ptr, ptr %__tmp, align 8
  call void @_ZNKSt3__114default_deleteINS_15__thread_structEEclB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %call5, ptr noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__114default_deleteINS_15__thread_structEEclB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__ptr) #3 align 2 {
entry:
  %isnull = icmp eq ptr %__ptr, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %call = call noundef ptr @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %__ptr) #17
  call void @_ZdlPv(ptr noundef %__ptr) #20
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt3__115__thread_structD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr null, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorIN13ResolvService9QueueItemENS_9allocatorIS3_EEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorIN13ResolvService9QueueItemENS_9allocatorIS3_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIN13ResolvService9QueueItemEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr null, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIN13ResolvService9QueueItemEEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorIN13ResolvService9QueueItemEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIN13ResolvService9QueueItemEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN13ResolvService9QueueItemEEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIN13ResolvService9QueueItemEEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector<ResolvService::QueueItem>::__destroy_vector", align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %1 = load ptr, ptr %this, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorIN13ResolvService9QueueItemENS_9allocatorIS3_EEEEEEvPT_(ptr noundef %1)
  %2 = load ptr, ptr %this, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %5 = load ptr, ptr %this, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  %6 = load ptr, ptr %this, align 8
  %7 = load ptr, ptr %6, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE10deallocateB6v15007ERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  store ptr %__vec, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call3 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call5 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr6 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call8 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr9 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE31__annotate_contiguous_containerB6v15007EPKvS7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorIN13ResolvService9QueueItemENS_9allocatorIS3_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE22__base_destruct_at_endB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE10deallocateB6v15007ERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  call void @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE10deallocateB6v15007EPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE31__annotate_contiguous_containerB6v15007EPKvS7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef %0) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef %__p) #3 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE22__base_destruct_at_endB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %3, i64 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef nonnull %incdec.ptr) #17
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE7destroyB6v15007IS3_vEEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  store ptr %4, ptr %__end_3, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #5
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE7destroyB6v15007IS3_vEEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #6 align 2 {
entry:
  call void @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE7destroyB6v15007EPS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE7destroyB6v15007EPS2_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #3 align 2 {
entry:
  %call = call noundef ptr @_ZN13ResolvService9QueueItemD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__p) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE10deallocateB6v15007EPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %mul = mul i64 %__n, 40
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %mul, i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #6 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #17
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
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #3 {
entry:
  %cmp = icmp ugt i64 %__align, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJSt11align_val_tEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__args) #6 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__ptr, i64 noundef %__args)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB6v15007IJEEEvPvmDpT_(ptr noundef %__ptr, i64 noundef %__size) #6 {
entry:
  call void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__ptr)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #3 {
entry:
  call void @_ZdlPvSt11align_val_t(ptr noundef %__args, i64 noundef %__args1) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #10

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #3 {
entry:
  call void @_ZdlPv(ptr noundef %__args) #20
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIN13ResolvService9QueueItemEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIN13ResolvService9QueueItemEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__cxx_atomic_storeB6v15007IbEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE(ptr noundef %__a, i1 noundef zeroext %__val, i32 noundef %__order) #3 {
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

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2ERKS9_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007ERKSA_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007ERKSA_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007ERKSA_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007ERKSA_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEE9__as_baseEPv(ptr noundef nonnull %this)
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

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEE9__as_baseEPv(ptr noundef %__p) #3 align 2 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #17
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE22__construct_one_at_endB6v15007IJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__args) #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::vector<ResolvService::QueueItem>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionC1ERS5_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<ResolvService::QueueItem>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef %0) #17
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE9constructB6v15007IS3_JS3_EvEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 8 dereferenceable(40) %__args)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<ResolvService::QueueItem>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %1, i64 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #17
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #17
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__args) #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__args.addr = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__args, ptr %__args.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC1EmmS5_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef %0) #17
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE9constructB6v15007IS3_JS3_EvEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call6, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %2 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %2, i64 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #17
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #17
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionC1ERS5_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionC2ERS5_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE9constructB6v15007IS3_JS3_EvEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(40) %__args) #6 align 2 {
entry:
  call void @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE9constructB6v15007IS2_JS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(40) %__args)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionC2ERS5_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__v, ptr %this, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<ResolvService::QueueItem>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %__v, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<ResolvService::QueueItem>::_ConstructTransaction", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__end_2, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %2, i64 %3
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE9constructB6v15007IS2_JS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(40) %__args) #3 align 2 {
entry:
  %call = call noundef ptr @_ZN13ResolvService9QueueItemC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %__p, ptr noundef nonnull align 8 dereferenceable(40) %__args) #17
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN13ResolvService9QueueItemC1EOS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZN13ResolvService9QueueItemC2EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN13ResolvService9QueueItemC2EOS0_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 {
entry:
  %1 = load i32, ptr %0, align 8
  store i32 %1, ptr %this, align 8
  %callback = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %this, i64 0, i32 1
  %callback3 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %0, i64 0, i32 1
  %call = call noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1EOS9_(ptr noundef nonnull align 8 dereferenceable(32) %callback, ptr noundef nonnull align 8 dereferenceable(32) %callback3) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1EOS9_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2EOS9_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__18functionIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2EOS9_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007EOSA_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC1B6v15007EOSA_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007EOSA_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEC2B6v15007EOSA_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(32) %__f) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  br label %if.end15

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8
  %__f_3 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__f_3, align 8
  %cmp5 = icmp eq ptr %2, %1
  br i1 %cmp5, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.else
  %call = call noundef ptr @_ZNSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEE9__as_baseEPv(ptr noundef nonnull %this)
  %__f_8 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr %call, ptr %__f_8, align 8
  %3 = load ptr, ptr %__f.addr, align 8
  %__f_9 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %__f_9, align 8
  %vtable = load ptr, ptr %4, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %5 = load ptr, ptr %vfn, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %call)
          to label %if.end15 unwind label %terminate.lpad

if.else11:                                        ; preds = %if.else
  %6 = load ptr, ptr %__f.addr, align 8
  %__f_12 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %__f_12, align 8
  %__f_13 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  store ptr %7, ptr %__f_13, align 8
  %__f_14 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %6, i64 0, i32 1
  store ptr null, ptr %__f_14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then6, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8

terminate.lpad:                                   ; preds = %if.then6
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #5
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<ResolvService::QueueItem>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %1 = load ptr, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %1, i64 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #6 align 2 {
entry:
  %__new_size.addr = alloca i64, align 8
  %__ms = alloca i64, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__new_size, ptr %__new_size.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #18
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
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
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC1EmmS5_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC2EmmS5_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #6 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__v, ptr %__v.addr, align 8
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %1 = load ptr, ptr %this, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEC1B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
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
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %5, [2 x i64] %7, [2 x i64] %9)
  %call8.elt = extractvalue [2 x i64] %call8, 0
  store i64 %call8.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack9 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call8.elt10 = extractvalue [2 x i64] %call8, 1
  store i64 %call8.elt10, ptr %ref.tmp.repack9, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %10 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPN13ResolvService9QueueItemEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #17
  %__end_13 = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPN13ResolvService9QueueItemEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #17
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %11 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #17
  call void @_ZNSt3__14swapB6v15007IPN13ResolvService9QueueItemEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #17
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  store ptr %12, ptr %11, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call18) #17
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorIN13ResolvService9QueueItemENS_9allocatorIS3_EEEEEEvPT_(ptr noundef nonnull %this)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE8max_sizeB6v15007IS4_vEEmRKS4_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  store i64 %call2, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #17
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
  call void @__clang_call_terminate(ptr %2) #5
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #13 align 2 {
entry:
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef nonnull @.str.1) #18
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #6 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #6 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE8max_sizeB6v15007IS4_vEEmRKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__19allocatorIN13ResolvService9QueueItemEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #3 align 2 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #17
  ret i64 %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #6 {
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
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16__lessImmEclB6v15007ERKmS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 align 2 {
entry:
  %0 = load i64, ptr %__x, align 8
  %1 = load i64, ptr %__y, align 8
  %cmp = icmp ult i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIN13ResolvService9QueueItemEE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret i64 461168601842738790
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPN13ResolvService9QueueItemENS_9allocatorIS2_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIN13ResolvService9QueueItemEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIN13ResolvService9QueueItemEEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #3 align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef %__msg) #13 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %exception = call ptr @__cxa_allocate_exception(i64 16) #17
  %call = invoke noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef %__msg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #18
  unreachable

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #17
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
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #3 {
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

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC2EmmS5_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC1B6v15007IDnS6_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  %cmp = icmp eq i64 %__cap, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %this, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  %0 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIN13ResolvService9QueueItemEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %0)
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
  %add.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %2, i64 %3
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %4 = load ptr, ptr %this, align 8
  %5 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %4, i64 %5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  store ptr %add.ptr7, ptr %call8, align 8
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC1B6v15007IDnS6_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC2B6v15007IDnS6_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIN13ResolvService9QueueItemEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #6 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n)
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
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #17
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEEC2B6v15007IDnS6_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN13ResolvService9QueueItemEEELi1ELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN13ResolvService9QueueItemEEELi1ELb0EEC2B6v15007IS5_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr %__u, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIN13ResolvService9QueueItemEE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #6 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE8max_sizeB6v15007IS4_vEEmRKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %cmp = icmp ult i64 %call, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #18
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__n.addr, align 8
  %mul = mul i64 %0, 40
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 8)
  ret ptr %call2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #13 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #17
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #17
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #18
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %__size, i64 noundef %__align) #6 {
entry:
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #17
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
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #6 {
entry:
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %__args, i64 noundef %__args1) #19
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %__args1) ]
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %__args) #6 {
entry:
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %__args) #19
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN13ResolvService9QueueItemEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN13ResolvService9QueueItemEEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, [2 x i64] %__first1.coerce, [2 x i64] %__last1.coerce, [2 x i64] %__first2.coerce) #6 personality ptr @__gxx_personality_v0 {
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
  %call = invoke noundef zeroext i1 @_ZNSt3__1neB6v15007IPN13ResolvService9QueueItemES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__first1, ptr noundef nonnull align 8 dereferenceable(16) %__last1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %while.cond
  br i1 %call, label %while.body, label %try.cont

while.body:                                       ; preds = %invoke.cont
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPN13ResolvService9QueueItemEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(16) %__first2) #17
  %call3 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE9constructB6v15007IS3_JS3_EvEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1, ptr noundef nonnull align 8 dereferenceable(40) %call3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %while.body
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first1)
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first2)
  br label %while.cond, !llvm.loop !10

lpad:                                             ; preds = %while.body, %while.cond
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  %exn = load ptr, ptr %exn.slot, align 8
  %4 = call ptr @__cxa_begin_catch(ptr %exn) #17
  %5 = load ptr, ptr %__alloc.addr, align 8
  %call11 = invoke noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EEEC1B6v15007ERS4_RS7_SA_(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %__destruct_first, ptr noundef nonnull align 8 dereferenceable(16) %__first2)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %lpad
  invoke void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  invoke void @__cxa_rethrow() #18
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
  call void @__clang_call_terminate(ptr %12) #5
  unreachable

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEC1B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEC2B6v15007ES3_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__x)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPN13ResolvService9QueueItemEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %0 = load ptr, ptr %__x, align 8
  %1 = load ptr, ptr %__y, align 8
  store ptr %1, ptr %__x, align 8
  store ptr %0, ptr %__y, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #3 align 2 {
entry:
  %__current_size.addr = alloca i64, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call3 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call5 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr6 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE31__annotate_contiguous_containerB6v15007EPKvS7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorIN13ResolvService9QueueItemENS_9allocatorIS3_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPN13ResolvService9QueueItemES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %__x, ptr noundef nonnull align 8 dereferenceable(16) %__y) #6 {
entry:
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__x)
  %call1 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__y)
  %cmp = icmp ne ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorIPN13ResolvService9QueueItemEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS7_EEEEE4typeES9_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #3 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPN13ResolvService9QueueItemEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %0, i64 -1
  ret ptr %incdec.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %0, i64 -1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EEEC1B6v15007ERS4_RS7_SA_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EEEC2B6v15007ERS4_RS7_SA_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EEEclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 align 2 {
entry:
  %agg.tmp = alloca %"class.std::__1::reverse_iterator.21", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator.21", align 8
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
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp, [2 x i64] %3)
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %__first_, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp4, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.unpack3 = load i64, ptr %agg.tmp4, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack3, 0
  %.elt4 = getelementptr inbounds [2 x i64], ptr %agg.tmp4, i64 0, i64 1
  %.unpack5 = load i64, ptr %.elt4, align 8
  %6 = insertvalue [2 x i64] %5, i64 %.unpack5, 1
  %call5 = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEC1B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(40) %agg.tmp3, [2 x i64] %6)
  call void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %agg.tmp, ptr noundef nonnull %agg.tmp3)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPN13ResolvService9QueueItemEEEvE6__callB6v15007ERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef %call) #17
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorIPS3_EEEC2B6v15007ERS4_RS7_SA_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef nonnull align 8 dereferenceable(16) %__first, ptr noundef nonnull align 8 dereferenceable(16) %__last) unnamed_addr #1 align 2 {
entry:
  store ptr %__alloc, ptr %this, align 8
  %__first_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 1
  store ptr %__first, ptr %__first_, align 8
  %__last_ = getelementptr inbounds %"class.std::__1::_AllocatorDestroyRangeReverse", ptr %this, i64 0, i32 2
  store ptr %__last, ptr %__last_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__allocator_destroyB6v15007INS_9allocatorIN13ResolvService9QueueItemEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last) #6 {
entry:
  %__alloc.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPN13ResolvService9QueueItemEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__first, ptr noundef nonnull align 8 dereferenceable(40) %__last)
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %__alloc.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPN13ResolvService9QueueItemEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS8_EEEEE4typeESA_(ptr noundef nonnull align 8 dereferenceable(40) %__first) #17
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE7destroyB6v15007IS3_vEEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %call1)
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__first)
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEC1B6v15007ES4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEC2B6v15007ES4_(ptr noundef nonnull align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007INS_16reverse_iteratorIPN13ResolvService9QueueItemEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %__x, ptr noundef nonnull align 8 dereferenceable(40) %__y) #6 {
entry:
  %__y.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__y, ptr %__y.addr, align 8
  %call = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__x)
  %call.elt = extractvalue [2 x i64] %call, 0
  store i64 %call.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack1 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call.elt2 = extractvalue [2 x i64] %call, 1
  store i64 %call.elt2, ptr %ref.tmp.repack1, align 8
  %0 = load ptr, ptr %__y.addr, align 8
  %call2 = call [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %call2.elt = extractvalue [2 x i64] %call2, 0
  store i64 %call2.elt, ptr %ref.tmp1, align 8
  %ref.tmp1.repack3 = getelementptr inbounds [2 x i64], ptr %ref.tmp1, i64 0, i64 1
  %call2.elt4 = extractvalue [2 x i64] %call2, 1
  store i64 %call2.elt4, ptr %ref.tmp1.repack3, align 8
  %call3 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPN13ResolvService9QueueItemES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp1)
  ret i1 %call3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007INS_16reverse_iteratorINS1_IPN13ResolvService9QueueItemEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callcl7declvalIRKS8_EEEEE4typeESA_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #3 {
entry:
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPN13ResolvService9QueueItemEEEEEvE6__callB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEppB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.21", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %current)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNKSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.21", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPN13ResolvService9QueueItemEEEEEvE6__callB6v15007ERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %__p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = invoke noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef %call) #17
  ret ptr %call1

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEptB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 align 2 {
entry:
  %__tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.21", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__tmp, ptr noundef nonnull align 8 dereferenceable(16) %current, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__tmp)
  %call2 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEdeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEmmB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %0, i64 1
  store ptr %incdec.ptr, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorINS0_IPN13ResolvService9QueueItemEEEEC2B6v15007ES4_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, [2 x i64] %__x.coerce) unnamed_addr #1 align 2 {
entry:
  %__x = alloca %"class.std::__1::reverse_iterator", align 8
  %__x.coerce.elt = extractvalue [2 x i64] %__x.coerce, 0
  store i64 %__x.coerce.elt, ptr %__x, align 8
  %__x.repack1 = getelementptr inbounds [2 x i64], ptr %__x, i64 0, i64 1
  %__x.coerce.elt2 = extractvalue [2 x i64] %__x.coerce, 1
  store i64 %__x.coerce.elt2, ptr %__x.repack1, align 8
  %__t = getelementptr inbounds %"class.std::__1::reverse_iterator.21", ptr %this, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__t, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator.21", ptr %this, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %current, ptr noundef nonnull align 8 dereferenceable(16) %__x, i64 16, i1 false)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPN13ResolvService9QueueItemEEC2B6v15007ES3_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  store ptr %__x, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  %0 = load ptr, ptr %this, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  %1 = load ptr, ptr %this, align 8
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE10deallocateB6v15007ERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE17__destruct_at_endB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE17__destruct_at_endB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 {
entry:
  call void @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE17__destruct_at_endB6v15007EPS2_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE17__destruct_at_endB6v15007EPS2_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %2, i64 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IN13ResolvService9QueueItemEEEPT_S4_(ptr noundef nonnull %incdec.ptr) #17
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIN13ResolvService9QueueItemEEEE7destroyB6v15007IS3_vEEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #5
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIN13ResolvService9QueueItemERNS_9allocatorIS2_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPN13ResolvService9QueueItemERNS_9allocatorIS2_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPN13ResolvService9QueueItemELi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %call
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
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__117__cxx_atomic_loadB6v15007IbEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE(ptr noundef %__a, i32 noundef %__order) #3 {
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
define internal noundef zeroext i1 @"_ZZN13ResolvService6WorkerEvENK3$_1clEv"(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %m_queue = getelementptr inbounds %class.ResolvService, ptr %0, i64 0, i32 3
  %call = call noundef zeroext i1 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %m_queue) #17
  br i1 %call, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call2 = call noundef zeroext i1 @_ZNKSt3__113__atomic_baseIbLb0EE4loadB6v15007ENS_12memory_orderE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 0) #17
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %call2, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) #2

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE5emptyB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__end_, align 8
  %cmp = icmp eq ptr %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE17__destruct_at_endB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE27__invalidate_iterators_pastB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last)
  %call = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE22__base_destruct_at_endB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #17
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call) #17
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE27__invalidate_iterators_pastB6v15007EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__old_size) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call3 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr5 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call4, i64 %__old_size
  %call6 = call noundef ptr @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call7 = call noundef i64 @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %add.ptr8 = getelementptr inbounds %"struct.ResolvService::QueueItem", ptr %call6, i64 %call7
  call void @_ZNKSt3__16vectorIN13ResolvService9QueueItemENS_9allocatorIS2_EEE31__annotate_contiguous_containerB6v15007EPKvS7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr5, ptr noundef %add.ptr8) #17
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__110__function12__value_funcIFvONS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEclB6v15007ES8_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(24) %__args) #6 align 2 {
entry:
  %__args.addr = alloca ptr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %__f_ = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__f_, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__125__throw_bad_function_callB6v15007Ev() #18
  unreachable

if.end:                                           ; preds = %entry
  %__f_2 = getelementptr inbounds %"class.std::__1::__function::__value_func", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__f_2, align 8
  %2 = load ptr, ptr %__args.addr, align 8
  %vtable = load ptr, ptr %1, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %3 = load ptr, ptr %vfn, align 8
  call void %3(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__throw_bad_function_callB6v15007Ev() #13 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #17
  store i64 0, ptr %exception, align 16
  %call = call noundef ptr @_ZNSt3__117bad_function_callC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #17
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTINSt3__117bad_function_callE, ptr nonnull @_ZNSt3__117bad_function_callD1Ev) #18
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117bad_function_callC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117bad_function_callD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callC2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt9exceptionC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
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
  %call = call noundef ptr @_ZNSt3__117bad_function_callD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  call void @_ZdlPv(ptr noundef %this) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117bad_function_callD2Ev(ptr noundef nonnull returned align 8 dereferenceable(8) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind
declare noundef ptr @_ZNSt9exceptionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15007IDnEEPKc(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__s) unnamed_addr #0 align 2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::__default_init_tag", align 1
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
  %cmp = icmp ne ptr %__s, null
  call void @llvm.assume(i1 %cmp)
  %call3 = call noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef nonnull %__s) #17
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %__s, i64 noundef %call3)
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef) #4

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(ptr noundef %__s) #3 align 2 {
entry:
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %__s) #17
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15007INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #0 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 8 dereferenceable(24) %this)
  %call3 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIcEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

attributes #0 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn nounwind }
attributes #6 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #8 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #12 = { argmemonly nocallback nofree nounwind willreturn }
attributes #13 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #14 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }

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
