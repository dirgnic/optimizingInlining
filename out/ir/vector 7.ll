; ModuleID = './thesis_attempt/source_snapshot/DCMTK/config/tests/vector.cc'
source_filename = "./thesis_attempt/source_snapshot/DCMTK/config/tests/vector.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::vector" = type { ptr, ptr, ptr }
%"class.std::__1::__wrap_iter.0" = type { ptr }
%"class.std::__1::__wrap_iter" = type { ptr }
%"class.std::__1::vector.1" = type { ptr, ptr, ptr }
%"class.std::__1::vector<int>::__destroy_vector" = type { ptr }
%"struct.std::__1::vector<int>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, ptr, ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"struct.std::__1::integral_constant" = type { i8 }
%"struct.std::__1::pair" = type { ptr, ptr }
%"struct.std::__1::__move_impl" = type { i8 }
%"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::vector<Recursive>::__destroy_vector" = type { ptr }
%struct.Recursive = type <{ %"class.std::__1::vector.1", i32, [4 x i8] }>

@.str = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %"class.std::__1::vector", align 8
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp1 = alloca i32, align 4
  %ref.tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__1::__wrap_iter.0", align 8
  %ref.tmp10 = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp27 = alloca i32, align 4
  %ref.tmp29 = alloca i32, align 4
  %it = alloca %"class.std::__1::__wrap_iter", align 8
  %w = alloca %"class.std::__1::vector", align 8
  %ref.tmp53 = alloca i32, align 4
  %ref.tmp56 = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp63 = alloca %"class.std::__1::vector.1", align 8
  %cit = alloca %"class.std::__1::__wrap_iter.0", align 8
  %ref.tmp70 = alloca %"class.std::__1::__wrap_iter", align 8
  store i32 0, ptr %retval, align 4
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  store i32 1, ptr %ref.tmp, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32 2, ptr %ref.tmp1, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  store i32 3, ptr %ref.tmp3, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call5 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %cmp = icmp ne i64 %call5, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont4
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

lpad:                                             ; preds = %invoke.cont30, %invoke.cont28, %if.end26, %if.end21, %if.end9, %invoke.cont2, %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont4
  %call6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 2) #11
  %3 = load i32, ptr %call6, align 4
  %cmp7 = icmp ne i32 %3, 3
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end9:                                          ; preds = %if.end
  %call11 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %ref.tmp10, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call11 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call12 = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ne200100IPiTnNS_9enable_ifIXsr4_AndINS_14is_convertibleIRKT_S2_EENS_7_OrImplIXaantcvbsr7is_sameIRS1_NS_15iterator_traitsIS8_E9referenceEEE5valuenesZT1_Li0EEE7_ResultINS_7is_sameISD_SG_EENSJ_ISD_RKu20__remove_reference_tISG_EEEEEEE5valueEiE4typeELi0EEERKNS0_IS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp10) #11
  %coerce.dive13 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %agg.tmp, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive13, align 8
  %coerce.val.pi = ptrtoint ptr %4 to i64
  %call15 = invoke i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ne200100ENS_11__wrap_iterIPKiEE(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 %coerce.val.pi)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %if.end9
  %coerce.dive16 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %coerce, i32 0, i32 0
  %coerce.val.ip17 = inttoptr i64 %call15 to ptr
  store ptr %coerce.val.ip17, ptr %coerce.dive16, align 8
  %call18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 0) #11
  %5 = load i32, ptr %call18, align 4
  %cmp19 = icmp ne i32 %5, 2
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %invoke.cont14
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end21:                                         ; preds = %invoke.cont14
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8pop_backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v)
          to label %invoke.cont22 unwind label %lpad

invoke.cont22:                                    ; preds = %if.end21
  %call23 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %cmp24 = icmp ne i64 %call23, 1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %invoke.cont22
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end26:                                         ; preds = %invoke.cont22
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  store i32 42, ptr %ref.tmp27, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp27)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %if.end26
  store i32 13, ptr %ref.tmp29, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp29)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont28
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 1)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont30
  %call32 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %cmp33 = icmp ne i64 %call32, 1
  br i1 %cmp33, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %invoke.cont31
  %call34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 0) #11
  %6 = load i32, ptr %call34, align 4
  %cmp35 = icmp ne i32 %6, 42
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %invoke.cont31
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end37:                                         ; preds = %lor.lhs.false
  %call38 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE5frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %7 = load i32, ptr %call38, align 4
  %call39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 0) #11
  %8 = load i32, ptr %call39, align 4
  %cmp40 = icmp ne i32 %7, %8
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end42:                                         ; preds = %if.end37
  %call43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE4backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %9 = load i32, ptr %call43, align 4
  %call44 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %sub = sub i64 %call44, 1
  %call45 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef %sub) #11
  %10 = load i32, ptr %call45, align 4
  %cmp46 = icmp ne i32 %9, %10
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end42
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end48:                                         ; preds = %if.end42
  %call49 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %coerce.dive50 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %it, i32 0, i32 0
  %coerce.val.ip51 = inttoptr i64 %call49 to ptr
  store ptr %coerce.val.ip51, ptr %coerce.dive50, align 8
  %call52 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #11
  store i32 23, ptr %ref.tmp53, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %w, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp53)
          to label %invoke.cont55 unwind label %lpad54

invoke.cont55:                                    ; preds = %if.end48
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %w) #11
  %call57 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #11
  %coerce.dive58 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %ref.tmp56, i32 0, i32 0
  %coerce.val.ip59 = inttoptr i64 %call57 to ptr
  store ptr %coerce.val.ip59, ptr %coerce.dive58, align 8
  %call60 = call noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp56) #11
  br i1 %call60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %invoke.cont55
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad54:                                           ; preds = %if.end48
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  store ptr %12, ptr %exn.slot, align 8
  %13 = extractvalue { ptr, i32 } %11, 1
  store i32 %13, ptr %ehselector.slot, align 4
  %call79 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #11
  br label %ehcleanup

if.end62:                                         ; preds = %invoke.cont55
  %call64 = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp63) #11
  %call65 = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp63) #11
  %cmp66 = icmp ne i64 %call65, 0
  %call67 = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp63) #11
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end62
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %call71 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #11
  %coerce.dive72 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %ref.tmp70, i32 0, i32 0
  %coerce.val.ip73 = inttoptr i64 %call71 to ptr
  store ptr %coerce.val.ip73, ptr %coerce.dive72, align 8
  %call74 = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ne200100IPiTnNS_9enable_ifIXsr4_AndINS_14is_convertibleIRKT_S2_EENS_7_OrImplIXaantcvbsr7is_sameIRS1_NS_15iterator_traitsIS8_E9referenceEEE5valuenesZT1_Li0EEE7_ResultINS_7is_sameISD_SG_EENSJ_ISD_RKu20__remove_reference_tISG_EEEEEEE5valueEiE4typeELi0EEERKNS0_IS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %cit, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp70) #11
  %call75 = call noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %cit) #11
  br i1 %call75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end69
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end69
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then76, %if.then68, %if.then61
  %call78 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #11
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup, %if.then47, %if.then41, %if.then36, %if.then25, %if.then20, %if.then8, %if.then
  %call81 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  %14 = load i32, ptr %retval, align 4
  ret i32 %14

ehcleanup:                                        ; preds = %lpad54, %lpad
  %call82 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #11
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val83 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val83
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 4 dereferenceable(4) %0)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %arrayidx = getelementptr inbounds nuw i32, ptr %0, i64 %1
  ret ptr %arrayidx
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ne200100ENS_11__wrap_iterIPKiEE(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 %__position.coerce) #2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__position = alloca %"class.std::__1::__wrap_iter.0", align 8
  %this.addr = alloca ptr, align 8
  %__ps = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__1::__wrap_iter.0", align 8
  %__p = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %__position, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__position.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE6cbeginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %ref.tmp, i32 0, i32 0
  %coerce.val.ip3 = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip3, ptr %coerce.dive2, align 8
  %call4 = call noundef i64 @_ZNSt3__1miB8ne200100IPKiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__position, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #11
  store i64 %call4, ptr %__ps, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %1 = load i64, ptr %__ps, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 %1
  store ptr %add.ptr, ptr %__p, align 8
  %2 = load ptr, ptr %__p, align 8
  %add.ptr5 = getelementptr inbounds i32, ptr %2, i64 1
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__end_, align 8
  %4 = load ptr, ptr %__p, align 8
  %call6 = call noundef ptr @_ZNSt3__14moveB8ne200100IPiS1_EET0_T_S3_S2_(ptr noundef %add.ptr5, ptr noundef %3, ptr noundef %4)
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call6) #11
  %5 = load ptr, ptr %__p, align 8
  %call7 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %5) #11
  %coerce.dive8 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %coerce.val.ip9 = inttoptr i64 %call7 to ptr
  store ptr %coerce.val.ip9, ptr %coerce.dive8, align 8
  %coerce.dive10 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %6 = load ptr, ptr %coerce.dive10, align 8
  %coerce.val.pi = ptrtoint ptr %6 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_(ptr noundef %0) #11
  %call2 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive3 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive3, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ne200100IPiTnNS_9enable_ifIXsr4_AndINS_14is_convertibleIRKT_S2_EENS_7_OrImplIXaantcvbsr7is_sameIRS1_NS_15iterator_traitsIS8_E9referenceEEE5valuenesZT1_Li0EEE7_ResultINS_7is_sameISD_SG_EENSJ_ISD_RKu20__remove_reference_tISG_EEEEEEE5valueEiE4typeELi0EEERKNS0_IS8_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__u.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ne200100IPiTnNS_9enable_ifIXsr4_AndINS_14is_convertibleIRKT_S2_EENS_7_OrImplIXaantcvbsr7is_sameIRS1_NS_15iterator_traitsIS8_E9referenceEEE5valuenesZT1_Li0EEE7_ResultINS_7is_sameISD_SG_EENSJ_ISD_RKu20__remove_reference_tISG_EEEEEEE5valueEiE4typeELi0EEERKNS0_IS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8pop_backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__old_size = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  store i64 %call, ptr %__old_size, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #11
  %1 = load i64, ptr %__old_size, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__sz) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__sz.addr = alloca i64, align 8
  %__cs = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__sz, ptr %__sz.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  store i64 %call, ptr %__cs, align 8
  %0 = load i64, ptr %__cs, align 8
  %1 = load i64, ptr %__sz.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__sz.addr, align 8
  %3 = load i64, ptr %__cs, align 8
  %sub = sub i64 %2, %3
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %sub)
  br label %if.end4

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %__cs, align 8
  %5 = load i64, ptr %__sz.addr, align 8
  %cmp2 = icmp ugt i64 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %6 = load ptr, ptr %__begin_, align 8
  %7 = load i64, ptr %__sz.addr, align 8
  %add.ptr = getelementptr inbounds nuw i32, ptr %6, i64 %7
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %add.ptr) #11
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE5frontB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE4backB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__x) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  %__begin_2 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %0, i32 0, i32 0
  call void @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_, ptr noundef nonnull align 8 dereferenceable(8) %__begin_2) #11
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__x.addr, align 8
  %__end_3 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %1, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__end_, ptr noundef nonnull align 8 dereferenceable(8) %__end_3) #11
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__x.addr, align 8
  %__cap_4 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %2, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_, ptr noundef nonnull align 8 dereferenceable(8) %__cap_4) #11
  %3 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorIiEEEEvRT_S4_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load ptr, ptr %__y.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB8ne200100IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ne200100IPiTnNS_9enable_ifIXsr4_AndINS_14is_convertibleIRKT_S2_EENS_7_OrImplIXaantcvbsr7is_sameIRS1_NS_15iterator_traitsIS8_E9referenceEEE5valuenesZT1_Li0EEE7_ResultINS_7is_sameISD_SG_EENSJ_ISD_RKu20__remove_reference_tISG_EEEEEEE5valueEiE4typeELi0EEERKNS0_IS8_EE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__u.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__u, ptr %__u.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__u.addr, align 8
  %__i_2 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__i_2, align 8
  store ptr %1, ptr %__i_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB8ne200100IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  store ptr null, ptr %__cap_, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiEC1B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC1B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
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
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::vector<int>::__destroy_vector", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #12
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1B8ne200100ERS3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__vec.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

; Function Attrs: noinline noreturn nounwind ssp uwtable(sync)
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #3 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #11
  call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds nuw %"class.std::__1::vector<int>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec_, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__vec_2 = getelementptr inbounds nuw %"class.std::__1::vector<int>::__destroy_vector", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__vec_2, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %__vec_3 = getelementptr inbounds nuw %"class.std::__1::vector<int>::__destroy_vector", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__vec_3, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  %__vec_4 = getelementptr inbounds nuw %"class.std::__1::vector<int>::__destroy_vector", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__vec_4, align 8
  %__vec_5 = getelementptr inbounds nuw %"class.std::__1::vector<int>::__destroy_vector", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__vec_5, align 8
  %__begin_6 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %__begin_6, align 8
  %__vec_7 = getelementptr inbounds nuw %"class.std::__1::vector<int>::__destroy_vector", ptr %this1, i32 0, i32 0
  %7 = load ptr, ptr %__vec_7, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %6, i64 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2B8ne200100ERS3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds nuw %"class.std::__1::vector<int>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec.addr, align 8
  store ptr %0, ptr %__vec_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
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
  call void @_ZNSt3__19allocatorIiE10deallocateB8ne200100EPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__cap_, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
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
  call void @_ZNSt3__119__libcpp_deallocateB8ne200100IiEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %0, i64 noundef %1, i64 noundef 4) #11
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
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %1) #11
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__align.addr, align 8
  store i64 %2, ptr %__align_val, align 8
  %3 = load ptr, ptr %__ptr.addr, align 8
  %4 = load i64, ptr %__size, align 8
  %5 = load i64, ptr %__align_val, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPimSt11align_val_tEEEvDpT_(ptr noundef %3, i64 noundef %4, i64 noundef %5) #11
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__ptr.addr, align 8
  %7 = load i64, ptr %__size, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJPimEEEvDpT_(ptr noundef %6, i64 noundef %7) #11
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
  call void @_ZdlPvmSt11align_val_t(ptr noundef %0, i64 noundef %1, i64 noundef %2) #13
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
  call void @_ZdlPvm(ptr noundef %0, i64 noundef %1) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__end = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__end, align 8
  %1 = load ptr, ptr %__end, align 8
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__cap_, align 8
  %cmp = icmp ult ptr %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %__args.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %4 = load ptr, ptr %__end, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__end, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %__args.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 4 dereferenceable(4) %5)
  store ptr %call, ptr %__end, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %__end, align 8
  %__end_2 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr %6, ptr %__end_2, align 8
  %7 = load ptr, ptr %__end, align 8
  %add.ptr = getelementptr inbounds i32, ptr %7, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ne200100IJiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__tx = alloca %"struct.std::__1::vector<int>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef 1)
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %0) #11
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiETnNS_9enable_ifIXsr15__has_constructIS2_PT_DpT0_EE5valueEiE4typeELi0EEEvRS2_S7_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call2, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_3 = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__pos_3, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %__pos_3, align 8
  %call4 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #11
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call5 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val6 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE24__emplace_back_slow_pathIJiEEEPiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  %add = add i64 %call, 1
  %call2 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %add)
  %call3 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  %call4 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call2, i64 noundef %call3, ptr noundef nonnull align 1 dereferenceable(1) %this1)
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %__v, i32 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call5 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %0) #11
  %1 = load ptr, ptr %__args.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJiETnNS_9enable_ifIXsr15__has_constructIS2_PT_DpT0_EE5valueEiE4typeELi0EEEvRS2_S7_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call5, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_6 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %__v, i32 0, i32 2
  %2 = load ptr, ptr %__end_6, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %__end_6, align 8
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont
  %__end_8 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %3 = load ptr, ptr %__end_8, align 8
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #11
  ret ptr %3

lpad:                                             ; preds = %invoke.cont, %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #2 {
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
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  ret ptr %this1
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
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100ERS3_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__v_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__v.addr, align 8
  store ptr %0, ptr %__v_, align 8
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %__end_, align 8
  store ptr %2, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %3 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %__end_2, align 8
  %5 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds nuw i32, ptr %4, i64 %5
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this1
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %__v_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__v_, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %1, i32 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #2 {
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
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %1 = load i64, ptr %__ms, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev() #14
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
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
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__new_size.addr)
  %6 = load i64, ptr %call6, align 8
  store i64 %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %7 = load i64, ptr %retval, align 8
  ret i64 %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #2 {
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
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_(ptr noundef nonnull align 8 dereferenceable(40) %this1, i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__v.addr = alloca ptr, align 8
  %__new_begin = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__v, ptr %__v.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  %0 = load ptr, ptr %__v.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__end_, align 8
  %__begin_2 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__begin_2, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %idx.neg = sub i64 0, %sub.ptr.div
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 %idx.neg
  store ptr %add.ptr, ptr %__new_begin, align 8
  %__begin_3 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__begin_3, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %4) #11
  %__end_4 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %5 = load ptr, ptr %__end_4, align 8
  %call5 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %5) #11
  %6 = load ptr, ptr %__new_begin, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %6) #11
  call void @_ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call, ptr noundef %call5, ptr noundef %call6)
  %7 = load ptr, ptr %__new_begin, align 8
  %8 = load ptr, ptr %__v.addr, align 8
  %__begin_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %8, i32 0, i32 1
  store ptr %7, ptr %__begin_7, align 8
  %__begin_8 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %9 = load ptr, ptr %__begin_8, align 8
  %__end_9 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr %9, ptr %__end_9, align 8
  %__begin_10 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %10 = load ptr, ptr %__v.addr, align 8
  %__begin_11 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %10, i32 0, i32 1
  call void @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__begin_10, ptr noundef nonnull align 8 dereferenceable(8) %__begin_11) #11
  %__end_12 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %11 = load ptr, ptr %__v.addr, align 8
  %__end_13 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %11, i32 0, i32 2
  call void @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__end_12, ptr noundef nonnull align 8 dereferenceable(8) %__end_13) #11
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %12 = load ptr, ptr %__v.addr, align 8
  %__cap_14 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 3
  call void @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__cap_, ptr noundef nonnull align 8 dereferenceable(8) %__cap_14) #11
  %13 = load ptr, ptr %__v.addr, align 8
  %__begin_15 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %__begin_15, align 8
  %15 = load ptr, ptr %__v.addr, align 8
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %15, i32 0, i32 0
  store ptr %14, ptr %__first_, align 8
  %call16 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %call16) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca i64, align 8
  %ref.tmp2 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  store i64 %call, ptr %ref.tmp, align 8
  %call3 = call noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev() #11
  store i64 %call3, ptr %ref.tmp2, align 8
  %call4 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i64, ptr %call4, align 8
  ret i64 %0

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #12
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev() #5 {
entry:
  call void @_ZNSt3__120__throw_length_errorB8ne200100EPKc(ptr noundef @.str) #14
  unreachable
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
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ne200100ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::__less", align 1
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__b.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #1 {
entry:
  %__a.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %call = call noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  ret i64 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB8ne200100Ev() #1 {
entry:
  %call = call noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev() #11
  ret i64 %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %__comp = alloca %"struct.std::__1::__less", align 1
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__b, ptr %__b.addr, align 8
  %0 = load ptr, ptr %__b.addr, align 8
  %1 = load ptr, ptr %__a.addr, align 8
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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret i64 4611686018427387903
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne200100Ev() #1 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne200100EPKc(ptr noundef %__msg) #5 personality ptr @__gxx_personality_v0 {
entry:
  %__msg.addr = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__msg, ptr %__msg.addr, align 8
  %exception = call ptr @__cxa_allocate_exception(i64 16) #11
  %0 = load ptr, ptr %__msg.addr, align 8
  %call = invoke noundef ptr @_ZNSt12length_errorC1B8ne200100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt12length_error, ptr @_ZNSt12length_errorD1Ev) #14
  unreachable

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  store ptr %2, ptr %exn.slot, align 8
  %3 = extractvalue { ptr, i32 } %1, 1
  store i32 %3, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #11
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val1 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val1
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC1B8ne200100EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef ptr @_ZNSt12length_errorC2B8ne200100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  ret ptr %this1
}

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC2B8ne200100EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__s, ptr %__s.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8
  %call = call noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0)
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i32 0, i32 0, i32 2), ptr %this1, align 8
  ret ptr %this1
}

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ne200100ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #1 {
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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #2 {
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
  %__cap_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  store ptr null, ptr %__cap_, align 8
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 4
  %0 = load ptr, ptr %__a.addr, align 8
  store ptr %0, ptr %__alloc_, align 8
  %1 = load i64, ptr %__cap.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__first_, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %__alloc_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 4
  %2 = load ptr, ptr %__alloc_2, align 8
  %3 = load i64, ptr %__cap.addr, align 8
  %call = call [2 x i64] @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef %3)
  store [2 x i64] %call, ptr %__allocation, align 8
  %ptr = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 0
  %4 = load ptr, ptr %ptr, align 8
  %__first_3 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  store ptr %4, ptr %__first_3, align 8
  %count = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %__allocation, i32 0, i32 1
  %5 = load i64, ptr %count, align 8
  store i64 %5, ptr %__cap.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__first_4 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %6 = load ptr, ptr %__first_4, align 8
  %7 = load i64, ptr %__start.addr, align 8
  %add.ptr = getelementptr inbounds nuw i32, ptr %6, i64 %7
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %__first_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %8 = load ptr, ptr %__first_5, align 8
  %9 = load i64, ptr %__cap.addr, align 8
  %add.ptr6 = getelementptr inbounds nuw i32, ptr %8, i64 %9
  %__cap_7 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 3
  store ptr %add.ptr6, ptr %__cap_7, align 8
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #2 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %__alloc.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %ptr = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %__alloc.addr, align 8
  %1 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiE8allocateB8ne200100Em(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1)
  store ptr %call, ptr %ptr, align 8
  %count = getelementptr inbounds nuw %"struct.std::__1::__allocation_result", ptr %retval, i32 0, i32 1
  %2 = load i64, ptr %__n.addr, align 8
  store i64 %2, ptr %count, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
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
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ne200100IS2_TnNS_9enable_ifIXsr14__has_max_sizeIKT_EE5valueEiE4typeELi0EEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #14
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %__n.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB8ne200100IiEEPT_NS_15__element_countEm(i64 noundef %1, i64 noundef 4)
  ret ptr %call2
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #5 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #11
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #11
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt20bad_array_new_length, ptr @_ZNSt20bad_array_new_lengthD1Ev) #14
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
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %1) #11
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

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB8ne200100IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #2 {
entry:
  %__args.addr = alloca i64, align 8
  %__args.addr2 = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %0, i64 noundef %1) #15
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %1) ]
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB8ne200100IJmEEEPvDpT_(i64 noundef %__args) #2 {
entry:
  %__args.addr = alloca i64, align 8
  store i64 %__args, ptr %__args.addr, align 8
  %0 = load i64, ptr %__args.addr, align 8
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %0) #15
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__134__uninitialized_allocator_relocateB8ne200100INS_9allocatorIiEEPiEEvRT_T0_S6_S6_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #1 {
entry:
  %__alloc.addr = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__alloc, ptr %__alloc.addr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %0 = load ptr, ptr %__result.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %0) #11
  %1 = load ptr, ptr %__first.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %1) #11
  %2 = load ptr, ptr %__last.addr, align 8
  %3 = load ptr, ptr %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %mul = mul i64 4, %sub.ptr.div
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call, ptr align 4 %call1, i64 %mul, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ne200100IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
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
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__current_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  store ptr %this1, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1) #11
  %__first_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__first_, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 4
  %1 = load ptr, ptr %__alloc_, align 8
  %__first_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__first_2, align 8
  %call = invoke noundef i64 @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ne200100ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3

terminate.lpad:                                   ; preds = %if.then
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #1 {
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
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this1, ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPiNS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #1 personality ptr @__gxx_personality_v0 {
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
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %2 = load ptr, ptr %__end_, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 4
  %3 = load ptr, ptr %__alloc_, align 8
  %__end_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %4 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %incdec.ptr) #11
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiTnNS_9enable_ifIXsr13__has_destroyIS2_PT_EE5valueEiE4typeELi0EEEvRS2_S7_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #12
  unreachable
}

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

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %0) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 4) ]
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPiEC1B8ne200100ES1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__x) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPiEC2B8ne200100ES1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__x) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  store ptr %0, ptr %__i_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNSt3__1miB8ne200100IPKiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #1 {
entry:
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %1 = load ptr, ptr %__y.addr, align 8
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE6cbeginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter.0", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %retval, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive2, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %__old_size = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  store i64 %call, ptr %__old_size, align 8
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #11
  %1 = load i64, ptr %__old_size, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__14moveB8ne200100IPiS1_EET0_T_S3_S2_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
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
  %call = call [2 x i64] @_ZNSt3__16__moveB8ne200100INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %ref.tmp, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter.0", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__add_alignment_assumptionB8ne200100IPiTnNS_9enable_ifIXsr10is_pointerIT_EE5valueEiE4typeELi0EEES5_S7_(ptr noundef %0) #11
  %call2 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPKi(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %call) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %retval, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call2 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive3 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive3, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ne200100EPKi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter.0", align 8
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef %0) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ne200100ES2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__x) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ne200100ES2_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef %0) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ne200100ES2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__x) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter.0", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__x.addr, align 8
  store ptr %0, ptr %__i_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ne200100EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %incdec.ptr) #11
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ne200100IiTnNS_9enable_ifIXsr13__has_destroyIS2_PT_EE5valueEiE4typeELi0EEEvRS2_S7_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_2 = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  store ptr %4, ptr %__end_2, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__old_size) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__old_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__old_size, ptr %__old_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__moveB8ne200100INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
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
  %call = call [2 x i64] @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %retval, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__124__copy_move_unwrap_itersB8ne200100INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__out_first) #2 {
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
  %call = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %0, ptr noundef %1)
  store [2 x i64] %call, ptr %__range, align 8
  %first = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__range, i32 0, i32 0
  %2 = load ptr, ptr %first, align 8
  %second = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__range, i32 0, i32 1
  %3 = load ptr, ptr %second, align 8
  %4 = load ptr, ptr %__out_first.addr, align 8
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS5_EEEES5_(ptr noundef %4) #11
  %call2 = call [2 x i64] @_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne200100IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef %2, ptr noundef %3, ptr noundef %call1)
  store [2 x i64] %call2, ptr %__result, align 8
  %5 = load ptr, ptr %__first.addr, align 8
  %first4 = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__result, i32 0, i32 0
  %6 = load ptr, ptr %first4, align 8
  %call5 = call noundef ptr @_ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_(ptr noundef %5, ptr noundef %6)
  store ptr %call5, ptr %ref.tmp3, align 8
  %7 = load ptr, ptr %__out_first.addr, align 8
  %second7 = getelementptr inbounds nuw %"struct.std::__1::pair", ptr %__result, i32 0, i32 1
  %8 = load ptr, ptr %second7, align 8
  %call8 = call noundef ptr @_ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %7, ptr noundef %8) #11
  store ptr %call8, ptr %ref.tmp6, align 8
  %call9 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp3, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp6)
  store [2 x i64] %call9, ptr %retval, align 8
  %9 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__unwrap_rangeB8ne200100IPiS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %__first, ptr noundef %__last) #2 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp1 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS5_EEEES5_(ptr noundef %0) #11
  store ptr %call, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__last.addr, align 8
  %call2 = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS5_EEEES5_(ptr noundef %1) #11
  store ptr %call2, ptr %ref.tmp1, align 8
  %call3 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  store [2 x i64] %call3, ptr %retval, align 8
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr [2 x i64] @_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne200100IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
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
  %call = call [2 x i64] @_ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store [2 x i64] %call, ptr %retval, align 8
  %3 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100IPiNS_18__unwrap_iter_implIS1_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS5_EEEES5_(ptr noundef %__i) #1 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_(ptr noundef %0) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ne200100IPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS3_Iu7__decayIT0_EE4typeEEEOS4_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #1 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS5_OS6_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__rewrap_rangeB8ne200100IPiS1_EET_S2_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #1 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %0, ptr noundef %1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113__rewrap_iterB8ne200100IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #1 personality ptr @__gxx_personality_v0 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__iter.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_(ptr noundef %0, ptr noundef %1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret ptr %call

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #12
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__copy_trivial_implB8ne200100IiiEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
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
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, ptr %__n, align 8
  %2 = load ptr, ptr %__result.addr, align 8
  %3 = load ptr, ptr %__first.addr, align 8
  %4 = load i64, ptr %__n, align 8
  %call = call noundef ptr @_ZNSt3__119__constexpr_memmoveB8ne200100IiiTnNS_9enable_ifIXsr23__is_always_bitcastableIT0_T_EE5valueEiE4typeELi0EEEPS3_S6_PS2_NS_15__element_countE(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  %5 = load ptr, ptr %__result.addr, align 8
  %6 = load i64, ptr %__n, align 8
  %add.ptr = getelementptr inbounds nuw i32, ptr %5, i64 %6
  store ptr %add.ptr, ptr %ref.tmp, align 8
  %call1 = call [2 x i64] @_ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %__last.addr, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
  store [2 x i64] %call1, ptr %retval, align 8
  %7 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119__constexpr_memmoveB8ne200100IiiTnNS_9enable_ifIXsr23__is_always_bitcastableIT0_T_EE5valueEiE4typeELi0EEEPS3_S6_PS2_NS_15__element_countE(ptr noundef %__dest, ptr noundef %__src, i64 noundef %__n) #1 {
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
  %mul = mul i64 %sub, 4
  %add = add i64 %mul, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %3, i64 %add, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %__dest.addr, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ne200100IRPiS1_EENS_4pairINS_18__unwrap_referenceIu7__decayIT_EE4typeENS4_Iu7__decayIT0_EE4typeEEEOS5_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #1 {
entry:
  %retval = alloca %"struct.std::__1::pair", align 8
  %__t1.addr = alloca ptr, align 8
  %__t2.addr = alloca ptr, align 8
  store ptr %__t1, ptr %__t1.addr, align 8
  store ptr %__t2, ptr %__t2.addr, align 8
  %0 = load ptr, ptr %__t1.addr, align 8
  %1 = load ptr, ptr %__t2.addr, align 8
  %call = call noundef ptr @_ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %2 = load [2 x i64], ptr %retval, align 8
  ret [2 x i64] %2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPiS1_EC1B8ne200100IRS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPiS1_EC2B8ne200100IRS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS6_OS7_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
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
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ne200100ES1_(ptr noundef %__i) #1 {
entry:
  %__i.addr = alloca ptr, align 8
  store ptr %__i, ptr %__i.addr, align 8
  %0 = load ptr, ptr %__i.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %0) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPiS1_EC1B8ne200100IS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS5_OS6_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS5_OS6_(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZNSt3__14pairIPiS1_EC2B8ne200100IS1_S1_TnNS_9enable_ifIXclsr10_CheckArgsE23__is_pair_constructibleIT_T0_EEEiE4typeELi0EEEOS5_OS6_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 {
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
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ne200100ES1_S1_(ptr noundef %__orig_iter, ptr noundef %__unwrapped_iter) #1 {
entry:
  %__orig_iter.addr = alloca ptr, align 8
  %__unwrapped_iter.addr = alloca ptr, align 8
  store ptr %__orig_iter, ptr %__orig_iter.addr, align 8
  store ptr %__unwrapped_iter, ptr %__unwrapped_iter.addr, align 8
  %0 = load ptr, ptr %__orig_iter.addr, align 8
  %1 = load ptr, ptr %__unwrapped_iter.addr, align 8
  %2 = load ptr, ptr %__orig_iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %2) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 %sub.ptr.div
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__cap_, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %1 = load ptr, ptr %__end_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %2 = load i64, ptr %__n.addr, align 8
  %cmp = icmp uge i64 %sub.ptr.div, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  %4 = load i64, ptr %__n.addr, align 8
  %add = add i64 %call, %4
  %call2 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %add)
  %call3 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  %call4 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call2, i64 noundef %call3, ptr noundef nonnull align 1 dereferenceable(1) %this1)
  %5 = load i64, ptr %__n.addr, align 8
  invoke void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %call6 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #11
  br label %if.end

lpad:                                             ; preds = %invoke.cont, %if.else
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call7 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont5, %if.then
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val8 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__tx = alloca %"struct.std::__1::vector<int>::_ConstructTransaction", align 8
  %__new_end = alloca ptr, align 8
  %__pos = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100ERS3_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %0)
  %__new_end_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i32 0, i32 2
  %1 = load ptr, ptr %__new_end_, align 8
  store ptr %1, ptr %__new_end, align 8
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__pos_, align 8
  store ptr %2, ptr %__pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %__pos, align 8
  %4 = load ptr, ptr %__new_end, align 8
  %cmp = icmp ne ptr %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %__pos, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %5) #11
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJETnNS_9enable_ifIXsr15__has_constructIS2_PT_DpT0_EE5valueEiE4typeELi0EEEvRS2_S7_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %6 = load ptr, ptr %__pos, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %__pos, align 8
  %__pos_3 = getelementptr inbounds nuw %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  store ptr %incdec.ptr, ptr %__pos_3, align 8
  br label %for.cond, !llvm.loop !9

lpad:                                             ; preds = %for.body
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  store ptr %8, ptr %exn.slot, align 8
  %9 = extractvalue { ptr, i32 } %7, 1
  store i32 %9, ptr %ehselector.slot, align 4
  %call5 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #11
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %call4 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #11
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val6 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #2 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  %__tx = alloca %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100EPPim(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef %__end_, i64 noundef %0) #11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %1 = load ptr, ptr %__pos_, align 8
  %__end_2 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 1
  %2 = load ptr, ptr %__end_2, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %__alloc_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer", ptr %this1, i32 0, i32 4
  %3 = load ptr, ptr %__alloc_, align 8
  %__pos_3 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %4 = load ptr, ptr %__pos_3, align 8
  %call4 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %4) #11
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJETnNS_9enable_ifIXsr15__has_constructIS2_PT_DpT0_EE5valueEiE4typeELi0EEEvRS2_S7_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %call4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %__pos_5 = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %__tx, i32 0, i32 0
  %5 = load ptr, ptr %__pos_5, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %__pos_5, align 8
  br label %for.cond, !llvm.loop !10

lpad:                                             ; preds = %for.body
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call7 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #11
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %call6 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #11
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val8 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ne200100IiJETnNS_9enable_ifIXsr15__has_constructIS2_PT_DpT0_EE5valueEiE4typeELi0EEEvRS2_S7_DpOS8_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIiE9constructB8ne200100IiJEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  store i32 0, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1B8ne200100EPPim(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 {
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
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100EPPim(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0, i64 noundef %1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2B8ne200100EPPim(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__p.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__pos_, align 8
  %__end_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this1, i32 0, i32 1
  %2 = load ptr, ptr %__p.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds nuw i32, ptr %3, i64 %4
  store ptr %add.ptr, ptr %__end_, align 8
  %__dest_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %5 = load ptr, ptr %__p.addr, align 8
  store ptr %5, ptr %__dest_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__pos_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__pos_, align 8
  %__dest_ = getelementptr inbounds nuw %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this1, i32 0, i32 2
  %1 = load ptr, ptr %__dest_, align 8
  store ptr %0, ptr %1, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorIiEEEEvRT_S4_(ptr noundef nonnull align 1 dereferenceable(1) %__a1, ptr noundef nonnull align 1 dereferenceable(1) %__a2) #1 {
entry:
  %__a1.addr = alloca ptr, align 8
  %__a2.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %__a1, ptr %__a1.addr, align 8
  store ptr %__a2, ptr %__a2.addr, align 8
  %0 = load ptr, ptr %__a1.addr, align 8
  %1 = load ptr, ptr %__a2.addr, align 8
  call void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorIiEEEEvRT_S4_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116__swap_allocatorB8ne200100INS_9allocatorIiEEEEvRT_S4_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 {
entry:
  %2 = alloca %"struct.std::__1::integral_constant", align 1
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  store ptr null, ptr %__begin_, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 2
  store ptr null, ptr %__cap_, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorI9RecursiveEC1B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorI9RecursiveEC1B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__19allocatorI9RecursiveEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorI9RecursiveEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI9RecursiveEEEC2B8ne200100Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI9RecursiveEEEC2B8ne200100Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED2B8ne200100Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::vector<Recursive>::__destroy_vector", align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this1)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  ret ptr %this1

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #12
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne200100ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__vec.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %this1, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorclB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds nuw %"class.std::__1::vector<Recursive>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec_, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %__vec_2 = getelementptr inbounds nuw %"class.std::__1::vector<Recursive>::__destroy_vector", ptr %this1, i32 0, i32 0
  %2 = load ptr, ptr %__vec_2, align 8
  call void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %__vec_3 = getelementptr inbounds nuw %"class.std::__1::vector<Recursive>::__destroy_vector", ptr %this1, i32 0, i32 0
  %3 = load ptr, ptr %__vec_3, align 8
  call void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  %__vec_4 = getelementptr inbounds nuw %"class.std::__1::vector<Recursive>::__destroy_vector", ptr %this1, i32 0, i32 0
  %4 = load ptr, ptr %__vec_4, align 8
  %__vec_5 = getelementptr inbounds nuw %"class.std::__1::vector<Recursive>::__destroy_vector", ptr %this1, i32 0, i32 0
  %5 = load ptr, ptr %__vec_5, align 8
  %__begin_6 = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %__begin_6, align 8
  %__vec_7 = getelementptr inbounds nuw %"class.std::__1::vector<Recursive>::__destroy_vector", ptr %this1, i32 0, i32 0
  %7 = load ptr, ptr %__vec_7, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  call void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE10deallocateB8ne200100ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %6, i64 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne200100ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__vec.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__vec, ptr %__vec.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__vec_ = getelementptr inbounds nuw %"class.std::__1::vector<Recursive>::__destroy_vector", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__vec.addr, align 8
  store ptr %0, ptr %__vec_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE5clearB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__old_size = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4sizeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  store i64 %call, ptr %__old_size, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this1, ptr noundef %0) #11
  %1 = load i64, ptr %__old_size, align 8
  call void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this1, i64 noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE17__annotate_deleteB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE10deallocateB8ne200100ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__19allocatorI9RecursiveE10deallocateB8ne200100EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE8capacityB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__cap_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 2
  %0 = load ptr, ptr %__cap_, align 8
  %__begin_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__begin_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne200100EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #1 personality ptr @__gxx_personality_v0 {
entry:
  %this.addr = alloca ptr, align 8
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %invoke.cont, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %struct.Recursive, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100I9RecursiveEEPT_S3_(ptr noundef %incdec.ptr) #11
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE7destroyB8ne200100IS2_TnNS_9enable_ifIXsr13__has_destroyIS3_PT_EE5valueEiE4typeELi0EEEvRS3_S8_(ptr noundef nonnull align 1 dereferenceable(1) %this1, ptr noundef %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_2 = getelementptr inbounds nuw %"class.std::__1::vector.1", ptr %this1, i32 0, i32 1
  store ptr %4, ptr %__end_2, align 8
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE17__annotate_shrinkB8ne200100Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__old_size) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__old_size.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__old_size, ptr %__old_size.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE7destroyB8ne200100IS2_TnNS_9enable_ifIXsr13__has_destroyIS3_PT_EE5valueEiE4typeELi0EEEvRS3_S8_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 {
entry:
  %__a.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__a.addr, align 8
  %1 = load ptr, ptr %__p.addr, align 8
  call void @_ZNSt3__19allocatorI9RecursiveE7destroyB8ne200100EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB8ne200100I9RecursiveEEPT_S3_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorI9RecursiveE7destroyB8ne200100EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__p.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZN9RecursiveD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZN9RecursiveD1Ev(ptr noundef nonnull returned align 8 dereferenceable(28) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZN9RecursiveD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr noundef ptr @_ZN9RecursiveD2Ev(ptr noundef nonnull returned align 8 dereferenceable(28) %this) unnamed_addr #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED2B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this1) #11
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorI9RecursiveE10deallocateB8ne200100EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #1 {
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
  call void @_ZNSt3__119__libcpp_deallocateB8ne200100I9RecursiveEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %0, i64 noundef %1, i64 noundef 8) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB8ne200100I9RecursiveEEvPNS_15__type_identityIT_E4typeENS_15__element_countEm(ptr noundef %__ptr, i64 noundef %__n, i64 noundef %__align) #1 {
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
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ne200100Em(i64 noundef %1) #11
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %__align.addr, align 8
  store i64 %2, ptr %__align_val, align 8
  %3 = load ptr, ptr %__ptr.addr, align 8
  %4 = load i64, ptr %__size, align 8
  %5 = load i64, ptr %__align_val, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJP9RecursivemSt11align_val_tEEEvDpT_(ptr noundef %3, i64 noundef %4, i64 noundef %5) #11
  br label %return

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__ptr.addr, align 8
  %7 = load i64, ptr %__size, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJP9RecursivemEEEvDpT_(ptr noundef %6, i64 noundef %7) #11
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJP9RecursivemSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1, i64 noundef %__args3) #1 {
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
  call void @_ZdlPvmSt11align_val_t(ptr noundef %0, i64 noundef %1, i64 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ne200100IJP9RecursivemEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #1 {
entry:
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca i64, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store i64 %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__args.addr, align 8
  %1 = load i64, ptr %__args.addr2, align 8
  call void @_ZdlPvm(ptr noundef %0, i64 noundef %1) #13
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { mustprogress noinline noreturn optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }

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
