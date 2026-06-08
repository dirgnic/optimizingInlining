; ModuleID = './out/rewritten_ir/teacher_cost_budget/source_snapshot_DCMTK_config_tests_vector.prepared.ll'
source_filename = "./source_snapshot/DCMTK/config/tests/vector.cc"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.std::__1::__wrap_iter.1" = type { ptr }
%"class.std::__1::__wrap_iter" = type { ptr }
%"class.std::__1::vector.2" = type { ptr, ptr, %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { ptr }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"class.std::__1::vector<int>::__destroy_vector" = type { ptr }
%"struct.std::__1::vector<int>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.9" }
%"class.std::__1::__compressed_pair.9" = type { %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem.10" }
%"struct.std::__1::__compressed_pair_elem.10" = type { ptr }
%"class.std::__1::reverse_iterator" = type { ptr, ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"struct.std::__1::pair" = type { %"class.std::__1::reverse_iterator", %"class.std::__1::reverse_iterator" }
%"struct.std::__1::pair.11" = type { ptr, ptr }
%"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::vector<Recursive>::__destroy_vector" = type { ptr }
%struct.Recursive = type <{ %"class.std::__1::vector.2", i32, [4 x i8] }>

@.str = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress norecurse ssp uwtable
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %"class.std::__1::vector", align 8
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp1 = alloca i32, align 4
  %ref.tmp3 = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__1::__wrap_iter.1", align 8
  %ref.tmp10 = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp27 = alloca i32, align 4
  %ref.tmp29 = alloca i32, align 4
  %it = alloca %"class.std::__1::__wrap_iter", align 8
  %w = alloca %"class.std::__1::vector", align 8
  %ref.tmp53 = alloca i32, align 4
  %ref.tmp56 = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp63 = alloca %"class.std::__1::vector.2", align 8
  %cit = alloca %"class.std::__1::__wrap_iter.1", align 8
  %ref.tmp70 = alloca %"class.std::__1::__wrap_iter", align 8
  store i32 0, ptr %retval, align 4
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  store i32 1, ptr %ref.tmp, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32 2, ptr %ref.tmp1, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  store i32 3, ptr %ref.tmp3, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont2
  %call5 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %cmp.not = icmp eq i64 %call5, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont4
  store i32 -1, ptr %retval, align 4
  br label %cleanup80

lpad:                                             ; preds = %invoke.cont30, %invoke.cont28, %if.end26, %if.end9, %invoke.cont2, %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  br label %ehcleanup

if.end:                                           ; preds = %invoke.cont4
  %call6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 2) #14
  %3 = load i32, ptr %call6, align 4
  %cmp7.not = icmp eq i32 %3, 3
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %cleanup80

if.end9:                                          ; preds = %if.end
  %call11 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %coerce.val.ip = inttoptr i64 %call11 to ptr
  store ptr %coerce.val.ip, ptr %ref.tmp10, align 8
  %call12 = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B6v15007IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp10, ptr noundef null) #14
  %4 = load ptr, ptr %agg.tmp, align 8
  %coerce.val.pi = ptrtoint ptr %4 to i64
  %call15 = invoke i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB6v15007ENS_11__wrap_iterIPKiEE(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 %coerce.val.pi)
          to label %invoke.cont14 unwind label %lpad

invoke.cont14:                                    ; preds = %if.end9
  %call18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 0) #14
  %5 = load i32, ptr %call18, align 4
  %cmp19.not = icmp eq i32 %5, 2
  br i1 %cmp19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %invoke.cont14
  store i32 -1, ptr %retval, align 4
  br label %cleanup80

if.end21:                                         ; preds = %invoke.cont14
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %v)
  %call23 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %cmp24.not = icmp eq i64 %call23, 1
  br i1 %cmp24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  store i32 -1, ptr %retval, align 4
  br label %cleanup80

if.end26:                                         ; preds = %if.end21
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  store i32 42, ptr %ref.tmp27, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp27)
          to label %invoke.cont28 unwind label %lpad

invoke.cont28:                                    ; preds = %if.end26
  store i32 13, ptr %ref.tmp29, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp29)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont28
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 1)
          to label %invoke.cont31 unwind label %lpad

invoke.cont31:                                    ; preds = %invoke.cont30
  %call32 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %cmp33.not = icmp eq i64 %call32, 1
  br i1 %cmp33.not, label %lor.lhs.false, label %if.then36

lor.lhs.false:                                    ; preds = %invoke.cont31
  %call34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 0) #14
  %6 = load i32, ptr %call34, align 4
  %cmp35.not = icmp eq i32 %6, 42
  br i1 %cmp35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false, %invoke.cont31
  store i32 -1, ptr %retval, align 4
  br label %cleanup80

if.end37:                                         ; preds = %lor.lhs.false
  %call38 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE5frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %7 = load i32, ptr %call38, align 4
  %call39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef 0) #14
  %8 = load i32, ptr %call39, align 4
  %cmp40.not = icmp eq i32 %7, %8
  br i1 %cmp40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end37
  store i32 -1, ptr %retval, align 4
  br label %cleanup80

if.end42:                                         ; preds = %if.end37
  %call43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %9 = load i32, ptr %call43, align 4
  %call44 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %sub = add i64 %call44, -1
  %call45 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %v, i64 noundef %sub) #14
  %10 = load i32, ptr %call45, align 4
  %cmp46.not = icmp eq i32 %9, %10
  br i1 %cmp46.not, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.end42
  store i32 -1, ptr %retval, align 4
  br label %cleanup80

if.end48:                                         ; preds = %if.end42
  %call49 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %coerce.val.ip51 = inttoptr i64 %call49 to ptr
  store ptr %coerce.val.ip51, ptr %it, align 8
  %call52 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #14
  store i32 23, ptr %ref.tmp53, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(24) %w, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp53)
          to label %invoke.cont55 unwind label %lpad54

invoke.cont55:                                    ; preds = %if.end48
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(24) %v, ptr noundef nonnull align 8 dereferenceable(24) %w) #14
  %call57 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #14
  %coerce.val.ip59 = inttoptr i64 %call57 to ptr
  store ptr %coerce.val.ip59, ptr %ref.tmp56, align 8
  %call60 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp56) #14
  br i1 %call60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %invoke.cont55
  store i32 -1, ptr %retval, align 4
  br label %cleanup

lpad54:                                           ; preds = %if.end48
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  store ptr %12, ptr %exn.slot, align 8
  %13 = extractvalue { ptr, i32 } %11, 1
  store i32 %13, ptr %ehselector.slot, align 4
  %call79 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #14
  br label %ehcleanup

if.end62:                                         ; preds = %invoke.cont55
  %call64 = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp63) #14
  %call65 = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp63) #14
  %cmp66.not = icmp eq i64 %call65, 0
  %call67 = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp63) #14
  br i1 %cmp66.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end62
  store i32 -1, ptr %retval, align 4
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %call71 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #14
  %coerce.val.ip73 = inttoptr i64 %call71 to ptr
  store ptr %coerce.val.ip73, ptr %ref.tmp70, align 8
  %call74 = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B6v15007IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %cit, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp70, ptr noundef null) #14
  %call75 = call noundef zeroext i1 @_ZNSt3__1neB6v15007IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %it, ptr noundef nonnull align 8 dereferenceable(8) %cit) #14
  br i1 %call75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end69
  store i32 -1, ptr %retval, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end69
  store i32 0, ptr %retval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then76, %if.then68, %if.then61
  %call78 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %w) #14
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup, %if.then47, %if.then41, %if.then36, %if.then25, %if.then20, %if.then8, %if.then
  %call81 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %14 = load i32, ptr %retval, align 4
  ret i32 %14

ehcleanup:                                        ; preds = %lpad54, %lpad
  %call82 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %v) #14
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val83 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val83
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB6v15007EOi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x) #2 align 2 {
entry:
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %1 = load ptr, ptr %call, align 8
  %cmp = icmp ult ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB6v15007IJiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %__x.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEixB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %__n
  ret ptr %arrayidx
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB6v15007ENS_11__wrap_iterIPKiEE(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 %__position.coerce) #2 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__position = alloca %"class.std::__1::__wrap_iter.1", align 8
  %ref.tmp = alloca %"class.std::__1::__wrap_iter.1", align 8
  %__p = alloca ptr, align 8
  %coerce.val.ip = inttoptr i64 %__position.coerce to ptr
  store ptr %coerce.val.ip, ptr %__position, align 8
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE6cbeginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %coerce.val.ip3 = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip3, ptr %ref.tmp, align 8
  %call4 = call noundef i64 @_ZNSt3__1miB6v15007IPKiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__position, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #14
  %0 = load ptr, ptr %this, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 %call4
  store ptr %add.ptr, ptr %__p, align 8
  %add.ptr5 = getelementptr inbounds i32, ptr %add.ptr, i64 1
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__14moveB6v15007IPiS1_EET0_T_S3_S2_(ptr noundef nonnull %add.ptr5, ptr noundef %1, ptr noundef %add.ptr)
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call6) #14
  %add.ptr7 = getelementptr inbounds i32, ptr %add.ptr, i64 -1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE27__invalidate_iterators_pastB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %add.ptr7)
  %2 = load ptr, ptr %__p, align 8
  %call8 = call noundef ptr @_ZNSt3__111__wrap_iterIPiEC1B6v15007EPKvS1_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %2) #14
  %3 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %3 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPiEC1B6v15007EPKvS1_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %0) #14
  %1 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B6v15007IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef %0) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B6v15007IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef %0) #14
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull %add.ptr) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call) #14
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_(ptr noundef nonnull %this)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__sz) #2 align 2 {
entry:
  %__sz.addr = alloca i64, align 8
  %__cs = alloca i64, align 8
  store i64 %__sz, ptr %__sz.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  store i64 %call, ptr %__cs, align 8
  %cmp = icmp ult i64 %call, %__sz
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %__sz.addr, align 8
  %1 = load i64, ptr %__cs, align 8
  %sub = sub i64 %0, %1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %sub)
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %__cs, align 8
  %3 = load i64, ptr %__sz.addr, align 8
  %cmp2 = icmp ugt i64 %2, %3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.else
  %4 = load ptr, ptr %this, align 8
  %5 = load i64, ptr %__sz.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %5
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %add.ptr) #14
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE5frontB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE4backB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 -1
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__x) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__x.addr = alloca ptr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  call void @_ZNSt3__14swapB6v15007IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__x) #14
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %__end_3 = getelementptr inbounds %"class.std::__1::vector", ptr %__x, i64 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__end_, ptr noundef nonnull align 8 dereferenceable(8) %__end_3) #14
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %__x) #14
  call void @_ZNSt3__14swapB6v15007IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef nonnull align 8 dereferenceable(8) %call4) #14
  %call5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %0 = load ptr, ptr %__x.addr, align 8
  %call6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  call void @_ZNSt3__116__swap_allocatorB6v15007INS_9allocatorIiEEEEvRT_S4_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %call5, ptr noundef nonnull align 1 dereferenceable(1) %call6) #14
  call void @_ZNSt3__115__debug_db_swapB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_S6_(ptr noundef nonnull %this, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #14
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_ = getelementptr inbounds %"class.std::__1::vector.2", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 5
  ret i64 %sub.ptr.div
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1neB6v15007IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %call = call noundef zeroext i1 @_ZNSt3__1eqB6v15007IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #14
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B6v15007IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u, ptr noundef %0) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__u) #14
  store ptr %call, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__x) #14
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__y) #14
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__1eqB6v15007IPiPKiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__x) #14
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__y) #14
  %cmp = icmp eq ptr %call, %call1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr null, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #5 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #14
  call void @_ZSt9terminatev() #5
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr null, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorIiEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector<int>::__destroy_vector", align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1ERS3_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
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
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC1ERS3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2ERS3_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %1 = load ptr, ptr %this, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_(ptr noundef %1)
  %2 = load ptr, ptr %this, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %5 = load ptr, ptr %this, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  %6 = load ptr, ptr %this, align 8
  %7 = load ptr, ptr %6, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE16__destroy_vectorC2ERS3_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  store ptr %__vec, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr = getelementptr inbounds i32, ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call5 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr6 = getelementptr inbounds i32, ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call8 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr9 = getelementptr inbounds i32, ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB6v15007EPKvS5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  call void @_ZNSt3__19allocatorIiE10deallocateB6v15007EPim(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB6v15007EPKvS5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %__p) #3 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef nonnull %incdec.ptr) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB6v15007IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !6

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
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB6v15007IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorIiE7destroyB6v15007EPi(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE7destroyB6v15007EPi(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE10deallocateB6v15007EPim(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %mul = shl i64 %__n, 2
  invoke void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__p, i64 noundef %mul, i64 noundef 4)
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
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB6v15007EPvmm(ptr noundef %__ptr, i64 noundef %__size, i64 noundef %__align) #2 {
entry:
  %__ptr.addr = alloca ptr, align 8
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store ptr %__ptr, ptr %__ptr.addr, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #14
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
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvSt11align_val_tEEEvDpT_(ptr noundef %__args, i64 noundef %__args1) #3 {
entry:
  call void @_ZdlPvSt11align_val_t(ptr noundef %__args, i64 noundef %__args1) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #6

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB6v15007IJPvEEEvDpT_(ptr noundef %__args) #3 {
entry:
  call void @_ZdlPv(ptr noundef %__args) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #6

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB6v15007IJiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::vector<int>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1)
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %0) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3, ptr noundef nonnull align 4 dereferenceable(4) %__args)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__pos_4, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  %call5 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  store ptr %3, ptr %exn.slot, align 8
  %4 = extractvalue { ptr, i32 } %2, 1
  store i32 %4, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__x.addr = alloca ptr, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store ptr %__x, ptr %__x.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call2 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add = add i64 %call2, 1
  %call3 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %add)
  %call4 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call5 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call3, i64 noundef %call4, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %0 = load ptr, ptr %__end_, align 8
  %call6 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %0) #14
  %1 = load ptr, ptr %__x.addr, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call6, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %__end_7 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %__v, i64 0, i32 2
  %2 = load ptr, ptr %__end_7, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %__end_7, align 8
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  ret void

lpad:                                             ; preds = %invoke.cont, %entry
  %3 = landingpad { ptr, i32 }
          cleanup
  %4 = extractvalue { ptr, i32 } %3, 0
  store ptr %4, ptr %exn.slot, align 8
  %5 = extractvalue { ptr, i32 } %3, 1
  store i32 %5, ptr %ehselector.slot, align 4
  %call10 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val11 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val11
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorIiE9constructB6v15007IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(24) %__v, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %__v, ptr %__v.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  store ptr %__v, ptr %this, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %__v, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__pos_, align 8
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__v.addr, align 8
  %__end_2 = getelementptr inbounds %"class.std::__1::vector", ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %__end_2, align 8
  %3 = load i64, ptr %__n.addr, align 8
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %3
  store ptr %add.ptr, ptr %__new_end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorIiE9constructB6v15007IiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, ptr noundef nonnull align 4 dereferenceable(4) %__args) #3 align 2 {
entry:
  %0 = load i32, ptr %__args, align 4
  store i32 %0, ptr %__p, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__pos_, align 8
  %1 = load ptr, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %1, i64 0, i32 1
  store ptr %0, ptr %__end_, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__new_size) #2 align 2 {
entry:
  %__new_size.addr = alloca i64, align 8
  %__ms = alloca i64, align 8
  %__cap = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__new_size, ptr %__new_size.addr, align 8
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  store i64 %call, ptr %__ms, align 8
  %0 = load i64, ptr %__new_size.addr, align 8
  %cmp = icmp ugt i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #16
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
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
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v) #2 align 2 {
entry:
  %__v.addr = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %__v, ptr %__v.addr, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  %call2 = call noundef ptr @_ZNSt3__116reverse_iteratorIPiEC1B6v15007ES1_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef %0)
  %1 = load ptr, ptr %this, align 8
  %call4 = call noundef ptr @_ZNSt3__116reverse_iteratorIPiEC1B6v15007ES1_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef %1)
  %2 = load ptr, ptr %__v.addr, align 8
  %__begin_6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %__begin_6, align 8
  %call7 = call noundef ptr @_ZNSt3__116reverse_iteratorIPiEC1B6v15007ES1_(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp5, ptr noundef %3)
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
  %call8 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %call, [2 x i64] %5, [2 x i64] %7, [2 x i64] %9)
  %call8.elt = extractvalue [2 x i64] %call8, 0
  store i64 %call8.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack9 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call8.elt10 = extractvalue [2 x i64] %call8, 1
  store i64 %call8.elt10, ptr %ref.tmp.repack9, align 8
  %call9 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  %10 = load ptr, ptr %__v.addr, align 8
  %__begin_10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  store ptr %call9, ptr %__begin_10, align 8
  %__begin_12 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 1
  call void @_ZNSt3__14swapB6v15007IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__begin_12) #14
  %__end_13 = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %__end_14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %10, i64 0, i32 2
  call void @_ZNSt3__14swapB6v15007IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__end_13, ptr noundef nonnull align 8 dereferenceable(8) %__end_14) #14
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %11 = load ptr, ptr %__v.addr, align 8
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #14
  call void @_ZNSt3__14swapB6v15007IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull align 8 dereferenceable(8) %call16) #14
  %__begin_17 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %__begin_17, align 8
  store ptr %12, ptr %11, align 8
  %call18 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call18) #14
  call void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_(ptr noundef nonnull %this)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca i64, align 8
  %ref.tmp3 = alloca i64, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call2 = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call) #14
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
  call void @__clang_call_terminate(ptr %2) #5
  unreachable
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #7 align 2 {
entry:
  call void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef nonnull @.str) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB6v15007ImNS_6__lessImmEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #3 align 2 {
entry:
  %call = call noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %__a) #14
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__114numeric_limitsIlE3maxB6v15007Ev() #3 align 2 {
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
define linkonce_odr hidden noundef i64 @_ZNKSt3__19allocatorIiE8max_sizeB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret i64 4611686018427387903
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB6v15007Ev() #3 align 2 {
entry:
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB6v15007EPKc(ptr noundef %__msg) #7 personality ptr @__gxx_personality_v0 {
entry:
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %exception = call ptr @__cxa_allocate_exception(i64 16) #14
  %call = invoke noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef %__msg)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #16
  unreachable

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  store ptr %1, ptr %exn.slot, align 8
  %2 = extractvalue { ptr, i32 } %0, 1
  store i32 %2, ptr %ehselector.slot, align 4
  call void @__cxa_free_exception(ptr %exception) #14
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val1 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val1
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC1B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s)
  ret ptr %this
}

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt12length_errorC2B6v15007EPKc(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__s) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2), ptr %this, align 8
  ret ptr %this
}

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

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
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_(ptr noundef nonnull returned align 8 dereferenceable(40) %this, i64 noundef %__cap, i64 noundef %__start, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #4 align 2 {
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
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1B6v15007IDnS4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  %cmp = icmp eq i64 %__cap, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %this, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  %0 = load i64, ptr %__cap.addr, align 8
  %call3 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %call2, i64 noundef %0)
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
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %3
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  store ptr %add.ptr, ptr %__end_, align 8
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  store ptr %add.ptr, ptr %__begin_, align 8
  %4 = load ptr, ptr %this, align 8
  %5 = load i64, ptr %__cap.addr, align 8
  %add.ptr7 = getelementptr inbounds i32, ptr %4, i64 %5
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  store ptr %add.ptr7, ptr %call8, align 8
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1B6v15007IDnS4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2B6v15007IDnS4_EEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB6v15007INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n) #2 {
entry:
  %retval = alloca %"struct.std::__1::__allocation_result", align 8
  %call = call noundef ptr @_ZNSt3__19allocatorIiE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, i64 noundef %__n)
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
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2B6v15007IDnS4_EEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2B6v15007IS3_vEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2B6v15007IS3_vEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 1 dereferenceable(1) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr %__u, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorIiE8allocateB6v15007Em(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #2 align 2 {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB6v15007IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  %cmp = icmp ult i64 %call, %__n
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #16
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %__n.addr, align 8
  %mul = shl i64 %0, 2
  %call2 = call noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %mul, i64 noundef 4)
  ret ptr %call2
}

; Function Attrs: mustprogress noreturn ssp uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB6v15007v() #7 {
entry:
  %exception = call ptr @__cxa_allocate_exception(i64 8) #14
  %call = call noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %exception) #14
  call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #16
  unreachable
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__117__libcpp_allocateB6v15007Emm(i64 noundef %__size, i64 noundef %__align) #2 {
entry:
  %__size.addr = alloca i64, align 8
  %__align.addr = alloca i64, align 8
  store i64 %__size, ptr %__size.addr, align 8
  store i64 %__align, ptr %__align.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__124__is_overaligned_for_newB6v15007Em(i64 noundef %__align) #14
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
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmSt11align_val_tEEEPvDpT_(i64 noundef %__args, i64 noundef %__args1) #2 {
entry:
  %call = call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %__args, i64 noundef %__args1) #17
  call void @llvm.assume(i1 true) [ "align"(ptr %call, i64 %__args1) ]
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__121__libcpp_operator_newB6v15007IJmEEEPvDpT_(i64 noundef %__args) #2 {
entry:
  %call = call noalias noundef nonnull ptr @_Znwm(i64 noundef %__args) #17
  ret ptr %call
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #10

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #10

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %add.ptr) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB6v15007INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %0, [2 x i64] %__first1.coerce, [2 x i64] %__last1.coerce, [2 x i64] %__first2.coerce) #2 {
entry:
  %__first1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__last1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__first2 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(16) %__first1, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp1, ptr noundef nonnull align 8 dereferenceable(16) %__last1, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp2, ptr noundef nonnull align 8 dereferenceable(16) %__first2, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp, align 8
  %1 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %2 = insertvalue [2 x i64] %1, i64 %.unpack8, 1
  %.unpack9 = load i64, ptr %agg.tmp1, align 8
  %3 = insertvalue [2 x i64] undef, i64 %.unpack9, 0
  %.elt10 = getelementptr inbounds [2 x i64], ptr %agg.tmp1, i64 0, i64 1
  %.unpack11 = load i64, ptr %.elt10, align 8
  %4 = insertvalue [2 x i64] %3, i64 %.unpack11, 1
  %.unpack12 = load i64, ptr %agg.tmp2, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack12, 0
  %.elt13 = getelementptr inbounds [2 x i64], ptr %agg.tmp2, i64 0, i64 1
  %.unpack14 = load i64, ptr %.elt13, align 8
  %6 = insertvalue [2 x i64] %5, i64 %.unpack14, 1
  %call = call [2 x i64] @_ZNSt3__14moveB6v15007INS_16reverse_iteratorIPiEES3_EET0_T_S5_S4_([2 x i64] %2, [2 x i64] %4, [2 x i64] %6)
  ret [2 x i64] %call
}

; Function Attrs: ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPiEC1B6v15007ES1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116reverse_iteratorIPiEC2B6v15007ES1_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__x)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__14swapB6v15007IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %0 = load ptr, ptr %__x, align 8
  %1 = load ptr, ptr %__y, align 8
  store ptr %1, ptr %__x, align 8
  store ptr %0, ptr %__y, align 8
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__current_size) #3 align 2 {
entry:
  %__current_size.addr = alloca i64, align 8
  store i64 %__current_size, ptr %__current_size.addr, align 8
  %call = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr = getelementptr inbounds i32, ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call5 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr6 = getelementptr inbounds i32, ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %0 = load i64, ptr %__current_size.addr, align 8
  %add.ptr8 = getelementptr inbounds i32, ptr %call7, i64 %0
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB6v15007EPKvS5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr8) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__125__debug_db_invalidate_allB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__14moveB6v15007INS_16reverse_iteratorIPiEES3_EET0_T_S5_S4_([2 x i64] %__first.coerce, [2 x i64] %__last.coerce, [2 x i64] %__result.coerce) #2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %__first = alloca %"class.std::__1::reverse_iterator", align 8
  %__last = alloca %"class.std::__1::reverse_iterator", align 8
  %__result = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp = alloca %"struct.std::__1::pair", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  %__first.coerce.elt = extractvalue [2 x i64] %__first.coerce, 0
  store i64 %__first.coerce.elt, ptr %__first, align 8
  %__first.repack1 = getelementptr inbounds [2 x i64], ptr %__first, i64 0, i64 1
  %__first.coerce.elt2 = extractvalue [2 x i64] %__first.coerce, 1
  store i64 %__first.coerce.elt2, ptr %__first.repack1, align 8
  %__last.coerce.elt = extractvalue [2 x i64] %__last.coerce, 0
  store i64 %__last.coerce.elt, ptr %__last, align 8
  %__last.repack3 = getelementptr inbounds [2 x i64], ptr %__last, i64 0, i64 1
  %__last.coerce.elt4 = extractvalue [2 x i64] %__last.coerce, 1
  store i64 %__last.coerce.elt4, ptr %__last.repack3, align 8
  %__result.coerce.elt = extractvalue [2 x i64] %__result.coerce, 0
  store i64 %__result.coerce.elt, ptr %__result, align 8
  %__result.repack5 = getelementptr inbounds [2 x i64], ptr %__result, i64 0, i64 1
  %__result.coerce.elt6 = extractvalue [2 x i64] %__result.coerce, 1
  store i64 %__result.coerce.elt6, ptr %__result.repack5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(16) %__first, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp1, ptr noundef nonnull align 8 dereferenceable(16) %__last, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp2, ptr noundef nonnull align 8 dereferenceable(16) %__result, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack8, 1
  %.unpack9 = load i64, ptr %agg.tmp1, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack9, 0
  %.elt10 = getelementptr inbounds [2 x i64], ptr %agg.tmp1, i64 0, i64 1
  %.unpack11 = load i64, ptr %.elt10, align 8
  %3 = insertvalue [2 x i64] %2, i64 %.unpack11, 1
  %.unpack12 = load i64, ptr %agg.tmp2, align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack12, 0
  %.elt13 = getelementptr inbounds [2 x i64], ptr %agg.tmp2, i64 0, i64 1
  %.unpack14 = load i64, ptr %.elt13, align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack14, 1
  call void @_ZNSt3__16__moveB6v15007INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_9enable_ifIXaaaasr21is_copy_constructibleIT0_EE5valuesr21is_copy_constructibleIT1_EE5valuesr21is_copy_constructibleIT2_EE5valueENS_4pairIS6_S8_EEE4typeES6_S7_S8_(ptr nonnull sret(%"struct.std::__1::pair") align 8 %ref.tmp, [2 x i64] %1, [2 x i64] %3, [2 x i64] %5)
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %ref.tmp, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %second, i64 16, i1 false)
  %.unpack15 = load i64, ptr %retval, align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack15, 0
  %.elt16 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack17 = load i64, ptr %.elt16, align 8
  %7 = insertvalue [2 x i64] %6, i64 %.unpack17, 1
  ret [2 x i64] %7
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16__moveB6v15007INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_9enable_ifIXaaaasr21is_copy_constructibleIT0_EE5valuesr21is_copy_constructibleIT1_EE5valuesr21is_copy_constructibleIT2_EE5valueENS_4pairIS6_S8_EEE4typeES6_S7_S8_(ptr noalias sret(%"struct.std::__1::pair") align 8 %agg.result, [2 x i64] %__first.coerce, [2 x i64] %__last.coerce, [2 x i64] %__result.coerce) #2 {
entry:
  %__first = alloca %"class.std::__1::reverse_iterator", align 8
  %__last = alloca %"class.std::__1::reverse_iterator", align 8
  %__result = alloca %"class.std::__1::reverse_iterator", align 8
  %__ret = alloca %"struct.std::__1::pair", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp2 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp3 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp5 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp6 = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp8 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp9 = alloca %"class.std::__1::reverse_iterator", align 8
  %ref.tmp11 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp12 = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp13 = alloca %"class.std::__1::reverse_iterator", align 8
  %__first.coerce.elt = extractvalue [2 x i64] %__first.coerce, 0
  store i64 %__first.coerce.elt, ptr %__first, align 8
  %__first.repack1 = getelementptr inbounds [2 x i64], ptr %__first, i64 0, i64 1
  %__first.coerce.elt2 = extractvalue [2 x i64] %__first.coerce, 1
  store i64 %__first.coerce.elt2, ptr %__first.repack1, align 8
  %__last.coerce.elt = extractvalue [2 x i64] %__last.coerce, 0
  store i64 %__last.coerce.elt, ptr %__last, align 8
  %__last.repack3 = getelementptr inbounds [2 x i64], ptr %__last, i64 0, i64 1
  %__last.coerce.elt4 = extractvalue [2 x i64] %__last.coerce, 1
  store i64 %__last.coerce.elt4, ptr %__last.repack3, align 8
  %__result.coerce.elt = extractvalue [2 x i64] %__result.coerce, 0
  store i64 %__result.coerce.elt, ptr %__result, align 8
  %__result.repack5 = getelementptr inbounds [2 x i64], ptr %__result, i64 0, i64 1
  %__result.coerce.elt6 = extractvalue [2 x i64] %__result.coerce, 1
  store i64 %__result.coerce.elt6, ptr %__result.repack5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp1, ptr noundef nonnull align 8 dereferenceable(16) %__first, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp1, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt7 = getelementptr inbounds [2 x i64], ptr %agg.tmp1, i64 0, i64 1
  %.unpack8 = load i64, ptr %.elt7, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack8, 1
  %call = call [2 x i64] @_ZNSt3__113__unwrap_iterB6v15007INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %1) #14
  %call.elt = extractvalue [2 x i64] %call, 0
  store i64 %call.elt, ptr %agg.tmp, align 8
  %agg.tmp.repack9 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %call.elt10 = extractvalue [2 x i64] %call, 1
  store i64 %call.elt10, ptr %agg.tmp.repack9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp3, ptr noundef nonnull align 8 dereferenceable(16) %__last, i64 16, i1 false)
  %.unpack11 = load i64, ptr %agg.tmp3, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack11, 0
  %.elt12 = getelementptr inbounds [2 x i64], ptr %agg.tmp3, i64 0, i64 1
  %.unpack13 = load i64, ptr %.elt12, align 8
  %3 = insertvalue [2 x i64] %2, i64 %.unpack13, 1
  %call4 = call [2 x i64] @_ZNSt3__113__unwrap_iterB6v15007INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %3) #14
  %call4.elt = extractvalue [2 x i64] %call4, 0
  store i64 %call4.elt, ptr %agg.tmp2, align 8
  %agg.tmp2.repack14 = getelementptr inbounds [2 x i64], ptr %agg.tmp2, i64 0, i64 1
  %call4.elt15 = extractvalue [2 x i64] %call4, 1
  store i64 %call4.elt15, ptr %agg.tmp2.repack14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp6, ptr noundef nonnull align 8 dereferenceable(16) %__result, i64 16, i1 false)
  %.unpack16 = load i64, ptr %agg.tmp6, align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack16, 0
  %.elt17 = getelementptr inbounds [2 x i64], ptr %agg.tmp6, i64 0, i64 1
  %.unpack18 = load i64, ptr %.elt17, align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack18, 1
  %call7 = call [2 x i64] @_ZNSt3__113__unwrap_iterB6v15007INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %5) #14
  %call7.elt = extractvalue [2 x i64] %call7, 0
  store i64 %call7.elt, ptr %agg.tmp5, align 8
  %agg.tmp5.repack19 = getelementptr inbounds [2 x i64], ptr %agg.tmp5, i64 0, i64 1
  %call7.elt20 = extractvalue [2 x i64] %call7, 1
  store i64 %call7.elt20, ptr %agg.tmp5.repack19, align 8
  %.unpack21 = load i64, ptr %agg.tmp, align 8
  %6 = insertvalue [2 x i64] undef, i64 %.unpack21, 0
  %.elt22 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack23 = load i64, ptr %.elt22, align 8
  %7 = insertvalue [2 x i64] %6, i64 %.unpack23, 1
  %.unpack24 = load i64, ptr %agg.tmp2, align 8
  %8 = insertvalue [2 x i64] undef, i64 %.unpack24, 0
  %.elt25 = getelementptr inbounds [2 x i64], ptr %agg.tmp2, i64 0, i64 1
  %.unpack26 = load i64, ptr %.elt25, align 8
  %9 = insertvalue [2 x i64] %8, i64 %.unpack26, 1
  %.unpack27 = load i64, ptr %agg.tmp5, align 8
  %10 = insertvalue [2 x i64] undef, i64 %.unpack27, 0
  %.elt28 = getelementptr inbounds [2 x i64], ptr %agg.tmp5, i64 0, i64 1
  %.unpack29 = load i64, ptr %.elt28, align 8
  %11 = insertvalue [2 x i64] %10, i64 %.unpack29, 1
  call void @_ZNSt3__111__move_implB6v15007INS_17_ClassicAlgPolicyEPiS2_Li0EEENS_4pairINS_16reverse_iteratorIT0_EENS4_IT1_EEEES6_S6_S8_(ptr nonnull sret(%"struct.std::__1::pair") align 8 %__ret, [2 x i64] %7, [2 x i64] %9, [2 x i64] %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp8, ptr noundef nonnull align 8 dereferenceable(16) %__first, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp9, ptr noundef nonnull align 8 dereferenceable(16) %__ret, i64 16, i1 false)
  %.unpack30 = load i64, ptr %agg.tmp8, align 8
  %12 = insertvalue [2 x i64] undef, i64 %.unpack30, 0
  %.elt31 = getelementptr inbounds [2 x i64], ptr %agg.tmp8, i64 0, i64 1
  %.unpack32 = load i64, ptr %.elt31, align 8
  %13 = insertvalue [2 x i64] %12, i64 %.unpack32, 1
  %.unpack33 = load i64, ptr %agg.tmp9, align 8
  %14 = insertvalue [2 x i64] undef, i64 %.unpack33, 0
  %.elt34 = getelementptr inbounds [2 x i64], ptr %agg.tmp9, i64 0, i64 1
  %.unpack35 = load i64, ptr %.elt34, align 8
  %15 = insertvalue [2 x i64] %14, i64 %.unpack35, 1
  %call10 = call [2 x i64] @_ZNSt3__113__rewrap_iterB6v15007INS_16reverse_iteratorIPiEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %13, [2 x i64] %15) #14
  %call10.elt = extractvalue [2 x i64] %call10, 0
  store i64 %call10.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack36 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call10.elt37 = extractvalue [2 x i64] %call10, 1
  store i64 %call10.elt37, ptr %ref.tmp.repack36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp12, ptr noundef nonnull align 8 dereferenceable(16) %__result, i64 16, i1 false)
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %__ret, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp13, ptr noundef nonnull align 8 dereferenceable(16) %second, i64 16, i1 false)
  %.unpack38 = load i64, ptr %agg.tmp12, align 8
  %16 = insertvalue [2 x i64] undef, i64 %.unpack38, 0
  %.elt39 = getelementptr inbounds [2 x i64], ptr %agg.tmp12, i64 0, i64 1
  %.unpack40 = load i64, ptr %.elt39, align 8
  %17 = insertvalue [2 x i64] %16, i64 %.unpack40, 1
  %.unpack41 = load i64, ptr %agg.tmp13, align 8
  %18 = insertvalue [2 x i64] undef, i64 %.unpack41, 0
  %.elt42 = getelementptr inbounds [2 x i64], ptr %agg.tmp13, i64 0, i64 1
  %.unpack43 = load i64, ptr %.elt42, align 8
  %19 = insertvalue [2 x i64] %18, i64 %.unpack43, 1
  %call14 = call [2 x i64] @_ZNSt3__113__rewrap_iterB6v15007INS_16reverse_iteratorIPiEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %17, [2 x i64] %19) #14
  %call14.elt = extractvalue [2 x i64] %call14, 0
  store i64 %call14.elt, ptr %ref.tmp11, align 8
  %ref.tmp11.repack44 = getelementptr inbounds [2 x i64], ptr %ref.tmp11, i64 0, i64 1
  %call14.elt45 = extractvalue [2 x i64] %call14, 1
  store i64 %call14.elt45, ptr %ref.tmp11.repack44, align 8
  call void @_ZNSt3__19make_pairB6v15007INS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp11)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__111__move_implB6v15007INS_17_ClassicAlgPolicyEPiS2_Li0EEENS_4pairINS_16reverse_iteratorIT0_EENS4_IT1_EEEES6_S6_S8_(ptr noalias sret(%"struct.std::__1::pair") align 8 %agg.result, [2 x i64] %__first.coerce, [2 x i64] %__last.coerce, [2 x i64] %__result.coerce) #2 {
entry:
  %__first = alloca %"class.std::__1::reverse_iterator", align 8
  %__last = alloca %"class.std::__1::reverse_iterator", align 8
  %__result = alloca %"class.std::__1::reverse_iterator", align 8
  %__first_base = alloca ptr, align 8
  %__last_base = alloca ptr, align 8
  %ref.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %__first.coerce.elt = extractvalue [2 x i64] %__first.coerce, 0
  store i64 %__first.coerce.elt, ptr %__first, align 8
  %__first.repack1 = getelementptr inbounds [2 x i64], ptr %__first, i64 0, i64 1
  %__first.coerce.elt2 = extractvalue [2 x i64] %__first.coerce, 1
  store i64 %__first.coerce.elt2, ptr %__first.repack1, align 8
  %__last.coerce.elt = extractvalue [2 x i64] %__last.coerce, 0
  store i64 %__last.coerce.elt, ptr %__last, align 8
  %__last.repack3 = getelementptr inbounds [2 x i64], ptr %__last, i64 0, i64 1
  %__last.coerce.elt4 = extractvalue [2 x i64] %__last.coerce, 1
  store i64 %__last.coerce.elt4, ptr %__last.repack3, align 8
  %__result.coerce.elt = extractvalue [2 x i64] %__result.coerce, 0
  store i64 %__result.coerce.elt, ptr %__result, align 8
  %__result.repack5 = getelementptr inbounds [2 x i64], ptr %__result, i64 0, i64 1
  %__result.coerce.elt6 = extractvalue [2 x i64] %__result.coerce, 1
  store i64 %__result.coerce.elt6, ptr %__result.repack5, align 8
  %call = call noundef ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__first)
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %call) #14
  store ptr %call1, ptr %__first_base, align 8
  %call2 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__last)
  %call3 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %call2) #14
  store ptr %call3, ptr %__last_base, align 8
  %call4 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__result)
  %call5 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %call4) #14
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %idx.neg = sub nsw i64 0, %sub.ptr.div
  %add.ptr = getelementptr inbounds i32, ptr %call5, i64 %idx.neg
  %0 = load ptr, ptr %__last_base, align 8
  %1 = load ptr, ptr %__first_base, align 8
  %call6 = call [2 x i64] @_ZNSt3__111__move_implB6v15007INS_17_ClassicAlgPolicyEiivEENS_4pairIPT0_PT1_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %add.ptr)
  %call7 = call noundef ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__result)
  %call8 = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %call7, ptr noundef %add.ptr) #14
  %call9 = call noundef ptr @_ZNSt3__116reverse_iteratorIPiEC1B6v15007ES1_(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp, ptr noundef %call8)
  call void @_ZNSt3__19make_pairB6v15007IRNS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_(ptr sret(%"struct.std::__1::pair") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %__last, ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__unwrap_iterB6v15007INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %__i.coerce) #3 {
entry:
  %__i = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %__i.coerce.elt = extractvalue [2 x i64] %__i.coerce, 0
  store i64 %__i.coerce.elt, ptr %__i, align 8
  %__i.repack1 = getelementptr inbounds [2 x i64], ptr %__i, i64 0, i64 1
  %__i.coerce.elt2 = extractvalue [2 x i64] %__i.coerce, 1
  store i64 %__i.coerce.elt2, ptr %__i.repack1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(16) %__i, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt3 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack4 = load i64, ptr %.elt3, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack4, 1
  %call = call [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__unwrapB6v15007ES3_([2 x i64] %1) #14
  ret [2 x i64] %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19make_pairB6v15007INS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noalias sret(%"struct.std::__1::pair") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %__t1, ptr noundef nonnull align 8 dereferenceable(16) %__t2) #3 {
entry:
  %call = call noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC1B6v15007IS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(32) %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %__t1, ptr noundef nonnull align 8 dereferenceable(16) %__t2) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__rewrap_iterB6v15007INS_16reverse_iteratorIPiEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %__orig_iter.coerce, [2 x i64] %__iter.coerce) #3 personality ptr @__gxx_personality_v0 {
entry:
  %__orig_iter = alloca %"class.std::__1::reverse_iterator", align 8
  %__iter = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp = alloca %"class.std::__1::reverse_iterator", align 8
  %agg.tmp1 = alloca %"class.std::__1::reverse_iterator", align 8
  %__orig_iter.coerce.elt = extractvalue [2 x i64] %__orig_iter.coerce, 0
  store i64 %__orig_iter.coerce.elt, ptr %__orig_iter, align 8
  %__orig_iter.repack1 = getelementptr inbounds [2 x i64], ptr %__orig_iter, i64 0, i64 1
  %__orig_iter.coerce.elt2 = extractvalue [2 x i64] %__orig_iter.coerce, 1
  store i64 %__orig_iter.coerce.elt2, ptr %__orig_iter.repack1, align 8
  %__iter.coerce.elt = extractvalue [2 x i64] %__iter.coerce, 0
  store i64 %__iter.coerce.elt, ptr %__iter, align 8
  %__iter.repack3 = getelementptr inbounds [2 x i64], ptr %__iter, i64 0, i64 1
  %__iter.coerce.elt4 = extractvalue [2 x i64] %__iter.coerce, 1
  store i64 %__iter.coerce.elt4, ptr %__iter.repack3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp, ptr noundef nonnull align 8 dereferenceable(16) %__orig_iter, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.tmp1, ptr noundef nonnull align 8 dereferenceable(16) %__iter, i64 16, i1 false)
  %.unpack = load i64, ptr %agg.tmp, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt5 = getelementptr inbounds [2 x i64], ptr %agg.tmp, i64 0, i64 1
  %.unpack6 = load i64, ptr %.elt5, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack6, 1
  %.unpack7 = load i64, ptr %agg.tmp1, align 8
  %2 = insertvalue [2 x i64] undef, i64 %.unpack7, 0
  %.elt8 = getelementptr inbounds [2 x i64], ptr %agg.tmp1, i64 0, i64 1
  %.unpack9 = load i64, ptr %.elt8, align 8
  %3 = insertvalue [2 x i64] %2, i64 %.unpack9, 1
  %call = call [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__rewrapB6v15007ES3_S3_([2 x i64] %1, [2 x i64] %3)
  ret [2 x i64] %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %__i) #3 {
entry:
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB6v15007ES1_(ptr noundef %__i) #14
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__111__move_implB6v15007INS_17_ClassicAlgPolicyEiivEENS_4pairIPT0_PT1_EES4_S4_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %__result.addr = alloca ptr, align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp1 = alloca ptr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %__result, ptr align 4 %__first, i64 %sub.ptr.sub, i1 false)
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 %sub.ptr.div
  store ptr %add.ptr, ptr %ref.tmp, align 8
  %0 = load ptr, ptr %__result.addr, align 8
  %add.ptr2 = getelementptr inbounds i32, ptr %0, i64 %sub.ptr.div
  store ptr %add.ptr2, ptr %ref.tmp1, align 8
  %call = call [2 x i64] @_ZNSt3__19make_pairB6v15007IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp1)
  ret [2 x i64] %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19make_pairB6v15007IRNS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_(ptr noalias sret(%"struct.std::__1::pair") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %__t1, ptr noundef nonnull align 8 dereferenceable(16) %__t2) #3 {
entry:
  %call = call noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC1B6v15007IRS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(32) %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %__t1, ptr noundef nonnull align 8 dereferenceable(16) %__t2) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %__orig_iter, ptr noundef %__iter) #3 personality ptr @__gxx_personality_v0 {
entry:
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB6v15007ES1_S1_(ptr noundef %__orig_iter, ptr noundef %__iter)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB6v15007ES1_(ptr noundef %__i) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %__i) #14
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB6v15007IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #3 {
entry:
  %retval = alloca %"struct.std::__1::pair.11", align 8
  %call = call noundef ptr @_ZNSt3__14pairIPiS1_EC1B6v15007IS1_S1_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 8 dereferenceable(8) %__t2) #14
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt1 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack2 = load i64, ptr %.elt1, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack2, 1
  ret [2 x i64] %1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPiS1_EC1B6v15007IS1_S1_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__14pairIPiS1_EC2B6v15007IS1_S1_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairIPiS1_EC2B6v15007IS1_S1_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u1, ptr noundef nonnull align 8 dereferenceable(8) %__u2) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %__u1, align 8
  store ptr %0, ptr %this, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair.11", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__u2, align 8
  store ptr %1, ptr %second, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC1B6v15007IRS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, ptr noundef nonnull align 8 dereferenceable(16) %__u2) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC2B6v15007IRS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, ptr noundef nonnull align 8 dereferenceable(16) %__u2) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC2B6v15007IRS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, ptr noundef nonnull align 8 dereferenceable(16) %__u2) unnamed_addr #1 align 2 {
entry:
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, i64 16, i1 false)
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %this, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %second, ptr noundef nonnull align 8 dereferenceable(16) %__u2, i64 16, i1 false)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB6v15007ES1_S1_(ptr noundef %__orig_iter, ptr noundef %__unwrapped_iter) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %__orig_iter) #14
  %sub.ptr.lhs.cast = ptrtoint ptr %__unwrapped_iter to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %add.ptr = getelementptr inbounds i32, ptr %__orig_iter, i64 %sub.ptr.div
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__unwrapB6v15007ES3_([2 x i64] %__i.coerce) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %__i = alloca %"class.std::__1::reverse_iterator", align 8
  %__i.coerce.elt = extractvalue [2 x i64] %__i.coerce, 0
  store i64 %__i.coerce.elt, ptr %__i, align 8
  %__i.repack1 = getelementptr inbounds [2 x i64], ptr %__i, i64 0, i64 1
  %__i.coerce.elt2 = extractvalue [2 x i64] %__i.coerce, 1
  store i64 %__i.coerce.elt2, ptr %__i.repack1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %__i, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt3 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack4 = load i64, ptr %.elt3, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack4, 1
  ret [2 x i64] %1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC1B6v15007IS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, ptr noundef nonnull align 8 dereferenceable(16) %__u2) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC2B6v15007IS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, ptr noundef nonnull align 8 dereferenceable(16) %__u2) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC2B6v15007IS3_S3_LPv0EEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(32) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, ptr noundef nonnull align 8 dereferenceable(16) %__u2) unnamed_addr #1 align 2 {
entry:
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(16) %__u1, i64 16, i1 false)
  %second = getelementptr inbounds %"struct.std::__1::pair", ptr %this, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %second, ptr noundef nonnull align 8 dereferenceable(16) %__u2, i64 16, i1 false)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__rewrapB6v15007ES3_S3_([2 x i64] %.coerce, [2 x i64] %__iter.coerce) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::reverse_iterator", align 8
  %__iter = alloca %"class.std::__1::reverse_iterator", align 8
  %__iter.coerce.elt = extractvalue [2 x i64] %__iter.coerce, 0
  store i64 %__iter.coerce.elt, ptr %__iter, align 8
  %__iter.repack1 = getelementptr inbounds [2 x i64], ptr %__iter, i64 0, i64 1
  %__iter.coerce.elt2 = extractvalue [2 x i64] %__iter.coerce, 1
  store i64 %__iter.coerce.elt2, ptr %__iter.repack1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef nonnull align 8 dereferenceable(16) %__iter, i64 16, i1 false)
  %.unpack = load i64, ptr %retval, align 8
  %0 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt3 = getelementptr inbounds [2 x i64], ptr %retval, i64 0, i64 1
  %.unpack4 = load i64, ptr %.elt3, align 8
  %1 = insertvalue [2 x i64] %0, i64 %.unpack4, 1
  ret [2 x i64] %1
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116reverse_iteratorIPiEC2B6v15007ES1_(ptr noundef nonnull returned align 8 dereferenceable(16) %this, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  %current = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %this, i64 0, i32 1
  store ptr %__x, ptr %current, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev(ptr noundef nonnull returned align 8 dereferenceable(40) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca ptr, align 8
  store ptr %this, ptr %retval, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  %0 = load ptr, ptr %this, align 8
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  %1 = load ptr, ptr %this, align 8
  %call3 = call noundef i64 @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this)
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB6v15007ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %1, i64 noundef %call3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__begin_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__begin_, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 {
entry:
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB6v15007EPiNS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB6v15007EPiNS_17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
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
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__end_2, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i64 -1
  store ptr %incdec.ptr, ptr %__end_2, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef nonnull %incdec.ptr) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB6v15007IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call3)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !8

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
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(16) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #14
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPiEC1B6v15007EPKvS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPiEC2B6v15007EPKvS1_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPiEC2B6v15007EPKvS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNSt3__1miB6v15007IPKiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %__x, ptr noundef nonnull align 8 dereferenceable(8) %__y) #3 {
entry:
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__x) #14
  %call1 = call noundef ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__y) #14
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE6cbeginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret i64 %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE27__invalidate_iterators_pastB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last)
  %call = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %0 = load ptr, ptr %__new_last.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #14
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call) #14
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__14moveB6v15007IPiS1_EET0_T_S3_S2_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %ref.tmp = alloca %"struct.std::__1::pair.11", align 8
  %call = call [2 x i64] @_ZNSt3__16__moveB6v15007INS_17_ClassicAlgPolicyEPiS2_S2_EENS_9enable_ifIXaaaasr21is_copy_constructibleIT0_EE5valuesr21is_copy_constructibleIT1_EE5valuesr21is_copy_constructibleIT2_EE5valueENS_4pairIS4_S6_EEE4typeES4_S5_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result)
  %call.elt = extractvalue [2 x i64] %call, 0
  store i64 %call.elt, ptr %ref.tmp, align 8
  %ref.tmp.repack1 = getelementptr inbounds [2 x i64], ptr %ref.tmp, i64 0, i64 1
  %call.elt2 = extractvalue [2 x i64] %call, 1
  store i64 %call.elt2, ptr %ref.tmp.repack1, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair.11", ptr %ref.tmp, i64 0, i32 1
  %0 = load ptr, ptr %second, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE27__invalidate_iterators_pastB6v15007EPi(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE5beginB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter.1", align 8
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull %this, ptr noundef %0) #14
  %1 = load ptr, ptr %retval, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPKiEC1B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B6v15007EPKvS2_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__111__wrap_iterIPKiEC2B6v15007EPKvS2_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef %__p, ptr noundef %__x) unnamed_addr #1 align 2 {
entry:
  store ptr %__x, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__old_size) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr = getelementptr inbounds i32, ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr5 = getelementptr inbounds i32, ptr %call4, i64 %__old_size
  %call6 = call noundef ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call7 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr8 = getelementptr inbounds i32, ptr %call6, i64 %call7
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB6v15007EPKvS5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr5, ptr noundef %add.ptr8) #14
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__moveB6v15007INS_17_ClassicAlgPolicyEPiS2_S2_EENS_9enable_ifIXaaaasr21is_copy_constructibleIT0_EE5valuesr21is_copy_constructibleIT1_EE5valuesr21is_copy_constructibleIT2_EE5valueENS_4pairIS4_S6_EEE4typeES4_S5_S6_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #2 {
entry:
  %__first.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__ret = alloca %"struct.std::__1::pair.11", align 8
  %ref.tmp = alloca ptr, align 8
  %ref.tmp5 = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__result, ptr %__result.addr, align 8
  %call = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %__first) #14
  %call1 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %__last) #14
  %call2 = call noundef ptr @_ZNSt3__113__unwrap_iterB6v15007IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %__result) #14
  %call3 = call [2 x i64] @_ZNSt3__111__move_implB6v15007INS_17_ClassicAlgPolicyEiivEENS_4pairIPT0_PT1_EES4_S4_S6_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2)
  %call3.elt = extractvalue [2 x i64] %call3, 0
  store i64 %call3.elt, ptr %__ret, align 8
  %__ret.repack1 = getelementptr inbounds [2 x i64], ptr %__ret, i64 0, i64 1
  %call3.elt2 = extractvalue [2 x i64] %call3, 1
  store i64 %call3.elt2, ptr %__ret.repack1, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %.cast = inttoptr i64 %call3.elt to ptr
  %call4 = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %0, ptr noundef %.cast) #14
  store ptr %call4, ptr %ref.tmp, align 8
  %1 = load ptr, ptr %__result.addr, align 8
  %second = getelementptr inbounds %"struct.std::__1::pair.11", ptr %__ret, i64 0, i32 1
  %2 = load ptr, ptr %second, align 8
  %call6 = call noundef ptr @_ZNSt3__113__rewrap_iterB6v15007IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %1, ptr noundef %2) #14
  store ptr %call6, ptr %ref.tmp5, align 8
  %call7 = call [2 x i64] @_ZNSt3__19make_pairB6v15007IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp5)
  ret [2 x i64] %call7
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__n.addr = alloca i64, align 8
  %__v = alloca %"struct.std::__1::__split_buffer", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %0 = load ptr, ptr %call, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__end_, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %2 = load i64, ptr %__n.addr, align 8
  %cmp.not = icmp ult i64 %sub.ptr.div, %2
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %__n.addr, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %4 = load i64, ptr %__n.addr, align 8
  %add = add i64 %call3, %4
  %call4 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB6v15007Em(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %add)
  %call5 = call noundef i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call6 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %call4, i64 noundef %call5, ptr noundef nonnull align 1 dereferenceable(1) %call2)
  invoke void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(40) %__v, i64 noundef %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(40) %__v)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont
  %call8 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  br label %if.end

lpad:                                             ; preds = %invoke.cont, %if.else
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %exn.slot, align 8
  %7 = extractvalue { ptr, i32 } %5, 1
  store i32 %7, ptr %ehselector.slot, align 4
  %call9 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef nonnull align 8 dereferenceable(40) %__v) #14
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val10 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val10

if.end:                                           ; preds = %invoke.cont7, %if.then
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::vector<int>::_ConstructTransaction", align 8
  %__new_end = alloca ptr, align 8
  %__pos = alloca ptr, align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
  %__new_end_ = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i64 0, i32 2
  %0 = load ptr, ptr %__new_end_, align 8
  store ptr %0, ptr %__new_end, align 8
  %__pos_ = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__pos_, align 8
  store ptr %1, ptr %__pos, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %__pos, align 8
  %3 = load ptr, ptr %__new_end, align 8
  %cmp.not = icmp eq ptr %2, %3
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call2 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %4 = load ptr, ptr %__pos, align 8
  %call3 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %4) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call2, ptr noundef %call3)
          to label %for.inc unwind label %lpad

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %__pos, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %__pos, align 8
  %__pos_4 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  store ptr %incdec.ptr, ptr %__pos_4, align 8
  br label %for.cond, !llvm.loop !9

lpad:                                             ; preds = %for.body
  %6 = landingpad { ptr, i32 }
          cleanup
  %7 = extractvalue { ptr, i32 } %6, 0
  store ptr %7, ptr %exn.slot, align 8
  %8 = extractvalue { ptr, i32 } %6, 1
  store i32 %8, ptr %ehselector.slot, align 4
  %call6 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val7 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val7

for.end:                                          ; preds = %for.cond
  %call5 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #2 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__tx = alloca %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", align 8
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %this, i64 0, i32 2
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim(ptr noundef nonnull align 8 dereferenceable(24) %__tx, ptr noundef nonnull %__end_, i64 noundef %__n) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %__tx, align 8
  %__end_2 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %__tx, i64 0, i32 1
  %1 = load ptr, ptr %__end_2, align 8
  %cmp.not = icmp eq ptr %0, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call3 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #14
  %2 = load ptr, ptr %__tx, align 8
  %call5 = call noundef ptr @_ZNSt3__112__to_addressB6v15007IiEEPT_S2_(ptr noundef %2) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %call3, ptr noundef %call5)
          to label %for.inc unwind label %lpad

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %__tx, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %__tx, align 8
  br label %for.cond, !llvm.loop !10

lpad:                                             ; preds = %for.body
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call8 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } undef, ptr %exn, 0
  %lpad.val9 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val9

for.end:                                          ; preds = %for.cond
  %call7 = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %__tx) #14
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB6v15007IiJEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorIiE9constructB6v15007IiJEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__19allocatorIiE9constructB6v15007IiJEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #3 align 2 {
entry:
  store i32 0, ptr %__p, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim(ptr noundef nonnull returned align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) unnamed_addr #1 align 2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p, align 8
  store ptr %0, ptr %this, align 8
  %__end_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %__p, align 8
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 %__n
  store ptr %add.ptr, ptr %__end_, align 8
  %__dest_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %__p.addr, align 8
  store ptr %2, ptr %__dest_, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %__dest_ = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %__dest_, align 8
  store ptr %0, ptr %1, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116__swap_allocatorB6v15007INS_9allocatorIiEEEEvRT_S4_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__115__debug_db_swapB6v15007INS_6vectorIiNS_9allocatorIiEEEEEEvPT_S6_(ptr noundef %__lhs, ptr noundef %__rhs) #3 {
entry:
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEEC2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca ptr, align 8
  %ref.tmp2 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr null, ptr %this, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.2", ptr %this, i64 0, i32 1
  store ptr null, ptr %__end_, align 8
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.2", ptr %this, i64 0, i32 2
  store ptr null, ptr %ref.tmp, align 8
  %call = invoke noundef ptr @_ZNSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorI9RecursiveNS_9allocatorIS2_EEEEEEvPT_(ptr noundef nonnull %this)
  ret ptr %this

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEEC1B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2)
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__119__debug_db_insert_cB6v15007INS_6vectorI9RecursiveNS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEEC2B6v15007IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1, ptr noundef nonnull align 1 dereferenceable(1) %__t2) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__122__compressed_pair_elemIP9RecursiveLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__t1)
  %call2 = call noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorI9RecursiveEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull align 1 dereferenceable(1) %this)
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__122__compressed_pair_elemIP9RecursiveLi0ELb0EEC2B6v15007IDnvEEOT_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__u) unnamed_addr #1 align 2 {
entry:
  store ptr null, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorI9RecursiveEELi1ELb1EEC2B6v15007ENS_18__default_init_tagE(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__19allocatorI9RecursiveEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__19allocatorI9RecursiveEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI9RecursiveEEEC2B6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorI9RecursiveEEEC2B6v15007Ev(ptr noundef nonnull returned align 1 dereferenceable(1) %this) unnamed_addr #1 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED2B6v15007Ev(ptr noundef nonnull returned align 8 dereferenceable(24) %this) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::__1::vector<Recursive>::__destroy_vector", align 8
  %call = invoke noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC1ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(24) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp)
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
define linkonce_odr noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC1ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #4 align 2 {
entry:
  %call = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC2ERS4_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec)
  ret ptr %this
}

; Function Attrs: mustprogress ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorclB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #2 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %1 = load ptr, ptr %this, align 8
  call void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorI9RecursiveNS_9allocatorIS2_EEEEEEvPT_(ptr noundef %1)
  %2 = load ptr, ptr %this, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %5 = load ptr, ptr %this, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  %6 = load ptr, ptr %this, align 8
  %7 = load ptr, ptr %6, align 8
  %call9 = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #14
  call void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %7, i64 noundef %call9) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE16__destroy_vectorC2ERS4_(ptr noundef nonnull returned align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(24) %__vec) unnamed_addr #1 align 2 {
entry:
  store ptr %__vec, ptr %this, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE17__annotate_deleteB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call2 = call noundef ptr @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call3 = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr = getelementptr inbounds %struct.Recursive, ptr %call2, i64 %call3
  %call4 = call noundef ptr @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call5 = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4sizeB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr6 = getelementptr inbounds %struct.Recursive, ptr %call4, i64 %call5
  %call7 = call noundef ptr @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %call8 = call noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %add.ptr9 = getelementptr inbounds %struct.Recursive, ptr %call7, i64 %call8
  call void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %call, ptr noundef %add.ptr, ptr noundef %add.ptr6, ptr noundef %add.ptr9) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__118__debug_db_erase_cB6v15007INS_6vectorI9RecursiveNS_9allocatorIS2_EEEEEEvPT_(ptr noundef %__c) #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE7__clearB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  call void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE22__base_destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE10deallocateB6v15007ERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #3 align 2 {
entry:
  call void @_ZNSt3__19allocatorI9RecursiveE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #14
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.2", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef i64 @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE8capacityB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %0 = load ptr, ptr %call, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 5
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE31__annotate_contiguous_containerB6v15007EPKvS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE4dataB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB6v15007I9RecursiveEEPT_S3_(ptr noundef %0) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB6v15007I9RecursiveEEPT_S3_(ptr noundef %__p) #3 {
entry:
  ret ptr %__p
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE22__base_destruct_at_endB6v15007EPS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__new_last) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__new_last.addr = alloca ptr, align 8
  %__soon_to_be_end = alloca ptr, align 8
  store ptr %__new_last, ptr %__new_last.addr, align 8
  %__end_ = getelementptr inbounds %"class.std::__1::vector.2", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
  store ptr %0, ptr %__soon_to_be_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %__new_last.addr, align 8
  %2 = load ptr, ptr %__soon_to_be_end, align 8
  %cmp.not = icmp eq ptr %1, %2
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE7__allocB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  %3 = load ptr, ptr %__soon_to_be_end, align 8
  %incdec.ptr = getelementptr inbounds %struct.Recursive, ptr %3, i64 -1
  store ptr %incdec.ptr, ptr %__soon_to_be_end, align 8
  %call2 = call noundef ptr @_ZNSt3__112__to_addressB6v15007I9RecursiveEEPT_S3_(ptr noundef nonnull %incdec.ptr) #14
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %call, ptr noundef %call2)
          to label %while.cond unwind label %terminate.lpad, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %__new_last.addr, align 8
  %__end_3 = getelementptr inbounds %"class.std::__1::vector.2", ptr %this, i64 0, i32 1
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
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorI9RecursiveEEE7destroyB6v15007IS2_vEEvRS3_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #2 align 2 {
entry:
  call void @_ZNSt3__19allocatorI9RecursiveE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p)
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorI9RecursiveE7destroyB6v15007EPS1_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p) #3 align 2 {
entry:
  %call = call noundef ptr @_ZN9RecursiveD1Ev(ptr noundef nonnull align 8 dereferenceable(28) %__p) #14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr noundef ptr @_ZN9RecursiveD1Ev(ptr noundef nonnull returned align 8 dereferenceable(28) %this) unnamed_addr #1 align 2 {
entry:
  %call.i = call noundef ptr @_ZNSt3__16vectorI9RecursiveNS_9allocatorIS1_EEED2B6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #14
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden void @_ZNSt3__19allocatorI9RecursiveE10deallocateB6v15007EPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #3 align 2 personality ptr @__gxx_personality_v0 {
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
  call void @__clang_call_terminate(ptr %1) #5
  unreachable
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEE6secondB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorI9RecursiveEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorI9RecursiveEELi1ELb1EE5__getB6v15007Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorI9RecursiveNS_9allocatorIS1_EEE9__end_capB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #3 align 2 {
entry:
  %__end_cap_ = getelementptr inbounds %"class.std::__1::vector.2", ptr %this, i64 0, i32 2
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %__end_cap_) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIP9RecursiveNS_9allocatorIS1_EEE5firstB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIP9RecursiveLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #14
  ret ptr %call
}

; Function Attrs: mustprogress nounwind ssp uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIP9RecursiveLi0ELb0EE5__getB6v15007Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #3 align 2 {
entry:
  ret ptr %this
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

attributes #0 = { mustprogress norecurse ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { mustprogress noreturn ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly nocallback nofree nounwind willreturn }
attributes #13 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }

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
