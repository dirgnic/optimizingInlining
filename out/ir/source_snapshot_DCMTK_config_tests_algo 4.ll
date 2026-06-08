; ModuleID = './source_snapshot/DCMTK/config/tests/algo.cc'
source_filename = "./source_snapshot/DCMTK/config/tests/algo.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

%"class.std::__1::vector" = type { ptr, ptr, ptr }
%struct.X = type { ptr }
%"class.std::__1::__wrap_iter" = type { ptr }
%"struct.std::__1::__identity" = type { i8 }
%"struct.std::__1::__equal_to" = type { i8 }
%"class.std::__1::vector<int>::__destroy_vector" = type { ptr }
%"struct.std::__1::vector<int>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, ptr, ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"struct.std::__1::integral_constant" = type { i8 }

@.str = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define noundef i32 @main() #0 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca i32, align 4
  %vec = alloca %"class.std::__1::vector", align 8
  %ref.tmp = alloca i32, align 4
  %exn.slot = alloca ptr, align 8
  %ehselector.slot = alloca i32, align 4
  %ref.tmp1 = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca %struct.X, align 8
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp5 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp9 = alloca %struct.X, align 8
  %coerce = alloca %struct.X, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ref.tmp19 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp20 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp24 = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp28 = alloca i32, align 4
  %ref.tmp37 = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp44 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp45 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp49 = alloca %"class.std::__1::__wrap_iter", align 8
  %ref.tmp61 = alloca %"class.std::__1::__wrap_iter", align 8
  store i32 0, ptr %retval, align 4
  %call = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  store i32 1, ptr %ref.tmp, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %vec, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32 2, ptr %ref.tmp1, align 4
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ne200100EOi(ptr noundef nonnull align 8 dereferenceable(24) %vec, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp1)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  store i32 0, ptr %n, align 4
  %n3 = getelementptr inbounds nuw %struct.X, ptr %x, i32 0, i32 0
  store ptr %n, ptr %n3, align 8
  %call4 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %call4 to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call6 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive7 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp5, i32 0, i32 0
  %coerce.val.ip8 = inttoptr i64 %call6 to ptr
  store ptr %coerce.val.ip8, ptr %coerce.dive7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp9, ptr align 8 %x, i64 8, i1 false)
  %coerce.dive10 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive10, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive11 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp5, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive11, align 8
  %coerce.val.pi12 = ptrtoint ptr %1 to i64
  %coerce.dive13 = getelementptr inbounds nuw %struct.X, ptr %agg.tmp9, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive13, align 8
  %coerce.val.pi14 = ptrtoint ptr %2 to i64
  %call16 = invoke i64 @_ZNSt3__18for_eachB8ne200100INS_11__wrap_iterIPiEE1XEET0_T_S6_S5_(i64 %coerce.val.pi, i64 %coerce.val.pi12, i64 %coerce.val.pi14)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont2
  %coerce.dive17 = getelementptr inbounds nuw %struct.X, ptr %coerce, i32 0, i32 0
  %coerce.val.ip18 = inttoptr i64 %call16 to ptr
  store ptr %coerce.val.ip18, ptr %coerce.dive17, align 8
  %3 = load i32, ptr %n, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont15
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

lpad:                                             ; preds = %if.end43, %if.end, %invoke.cont2, %invoke.cont, %entry
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %exn.slot, align 8
  %6 = extractvalue { ptr, i32 } %4, 1
  store i32 %6, ptr %ehselector.slot, align 4
  %call69 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  br label %eh.resume

if.end:                                           ; preds = %invoke.cont15
  %call21 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive22 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp20, i32 0, i32 0
  %coerce.val.ip23 = inttoptr i64 %call21 to ptr
  store ptr %coerce.val.ip23, ptr %coerce.dive22, align 8
  %call25 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive26 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp24, i32 0, i32 0
  %coerce.val.ip27 = inttoptr i64 %call25 to ptr
  store ptr %coerce.val.ip27, ptr %coerce.dive26, align 8
  store i32 44, ptr %ref.tmp28, align 4
  %coerce.dive29 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp20, i32 0, i32 0
  %7 = load ptr, ptr %coerce.dive29, align 8
  %coerce.val.pi30 = ptrtoint ptr %7 to i64
  %coerce.dive31 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp24, i32 0, i32 0
  %8 = load ptr, ptr %coerce.dive31, align 8
  %coerce.val.pi32 = ptrtoint ptr %8 to i64
  %call34 = invoke i64 @_ZNSt3__14findB8ne200100INS_11__wrap_iterIPiEEiEET_S4_S4_RKT0_(i64 %coerce.val.pi30, i64 %coerce.val.pi32, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp28)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %if.end
  %coerce.dive35 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %ref.tmp19, i32 0, i32 0
  %coerce.val.ip36 = inttoptr i64 %call34 to ptr
  store ptr %coerce.val.ip36, ptr %coerce.dive35, align 8
  %call38 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive39 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %ref.tmp37, i32 0, i32 0
  %coerce.val.ip40 = inttoptr i64 %call38 to ptr
  store ptr %coerce.val.ip40, ptr %coerce.dive39, align 8
  %call41 = call noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp19, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp37) #11
  br i1 %call41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %invoke.cont33
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %invoke.cont33
  %call46 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive47 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp45, i32 0, i32 0
  %coerce.val.ip48 = inttoptr i64 %call46 to ptr
  store ptr %coerce.val.ip48, ptr %coerce.dive47, align 8
  %call50 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive51 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp49, i32 0, i32 0
  %coerce.val.ip52 = inttoptr i64 %call50 to ptr
  store ptr %coerce.val.ip52, ptr %coerce.dive51, align 8
  %coerce.dive53 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp45, i32 0, i32 0
  %9 = load ptr, ptr %coerce.dive53, align 8
  %coerce.val.pi54 = ptrtoint ptr %9 to i64
  %coerce.dive55 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp49, i32 0, i32 0
  %10 = load ptr, ptr %coerce.dive55, align 8
  %coerce.val.pi56 = ptrtoint ptr %10 to i64
  %call58 = invoke i64 @_ZNSt3__113adjacent_findB8ne200100INS_11__wrap_iterIPiEEEET_S4_S4_(i64 %coerce.val.pi54, i64 %coerce.val.pi56)
          to label %invoke.cont57 unwind label %lpad

invoke.cont57:                                    ; preds = %if.end43
  %coerce.dive59 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %ref.tmp44, i32 0, i32 0
  %coerce.val.ip60 = inttoptr i64 %call58 to ptr
  store ptr %coerce.val.ip60, ptr %coerce.dive59, align 8
  %call62 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %coerce.dive63 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %ref.tmp61, i32 0, i32 0
  %coerce.val.ip64 = inttoptr i64 %call62 to ptr
  store ptr %coerce.val.ip64, ptr %coerce.dive63, align 8
  %call65 = call noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp44, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp61) #11
  br i1 %call65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %invoke.cont57
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %invoke.cont57
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then66, %if.then42, %if.then
  %call68 = call noundef ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEED1B8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %vec) #11
  %11 = load i32, ptr %retval, align 4
  ret i32 %11

eh.resume:                                        ; preds = %lpad
  %exn = load ptr, ptr %exn.slot, align 8
  %sel = load i32, ptr %ehselector.slot, align 4
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn, 0
  %lpad.val70 = insertvalue { ptr, i32 } %lpad.val, i32 %sel, 1
  resume { ptr, i32 } %lpad.val70
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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__18for_eachB8ne200100INS_11__wrap_iterIPiEE1XEET0_T_S6_S5_(i64 %__first.coerce, i64 %__last.coerce, i64 %__f.coerce) #2 {
entry:
  %retval = alloca %struct.X, align 8
  %__first = alloca %"class.std::__1::__wrap_iter", align 8
  %__last = alloca %"class.std::__1::__wrap_iter", align 8
  %__f = alloca %struct.X, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  %coerce.dive3 = getelementptr inbounds nuw %struct.X, ptr %__f, i32 0, i32 0
  %coerce.val.ip4 = inttoptr i64 %__f.coerce to ptr
  store ptr %coerce.val.ip4, ptr %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__first, ptr noundef nonnull align 8 dereferenceable(8) %__last) #11
  br i1 %call, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first) #11
  %0 = load i32, ptr %call5, align 4
  call void @_ZN1XclEi(ptr noundef nonnull align 8 dereferenceable(8) %__f, i32 noundef %0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPiEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first) #11
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__f, i64 8, i1 false)
  %coerce.dive7 = getelementptr inbounds nuw %struct.X, ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive7, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
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
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__end_ = getelementptr inbounds nuw %"class.std::__1::vector", ptr %this1, i32 0, i32 1
  %0 = load ptr, ptr %__end_, align 8
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

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

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__14findB8ne200100INS_11__wrap_iterIPiEEiEET_S4_S4_RKT0_(i64 %__first.coerce, i64 %__last.coerce, ptr noundef nonnull align 4 dereferenceable(4) %__value) #2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__first = alloca %"class.std::__1::__wrap_iter", align 8
  %__last = alloca %"class.std::__1::__wrap_iter", align 8
  %__value.addr = alloca ptr, align 8
  %__proj = alloca %"struct.std::__1::__identity", align 1
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp3 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp5 = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %__value, ptr %__value.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp3, ptr align 8 %__first, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp3, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100INS_11__wrap_iterIPiEENS_18__unwrap_iter_implIS3_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS7_EEEES7_(i64 %coerce.val.pi) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp5, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive6 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp5, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call8 = call noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100INS_11__wrap_iterIPiEENS_18__unwrap_iter_implIS3_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS7_EEEES7_(i64 %coerce.val.pi7) #11
  %2 = load ptr, ptr %__value.addr, align 8
  %call9 = call noundef ptr @_ZNSt3__16__findB8ne200100IiiNS_10__identityETnNS_9enable_ifIXaaaaaasr13__is_identityIT1_EE5valuesr41__libcpp_is_trivially_equality_comparableIT_T0_EE5valueeqstS4_Lm4EgeatS4_Lm4EEiE4typeELi0EEEPS4_S8_S8_RKS5_RS3_(ptr noundef %call, ptr noundef %call8, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %__proj)
  %coerce.dive10 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive10, align 8
  %coerce.val.pi11 = ptrtoint ptr %3 to i64
  %call12 = call i64 @_ZNSt3__113__rewrap_iterB8ne200100INS_11__wrap_iterIPiEES2_NS_18__unwrap_iter_implIS3_Lb1EEEEET_S6_T0_(i64 %coerce.val.pi11, ptr noundef %call9) #11
  %coerce.dive13 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %coerce.val.ip14 = inttoptr i64 %call12 to ptr
  store ptr %coerce.val.ip14, ptr %coerce.dive13, align 8
  %coerce.dive15 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive15, align 8
  %coerce.val.pi16 = ptrtoint ptr %4 to i64
  ret i64 %coerce.val.pi16
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__113adjacent_findB8ne200100INS_11__wrap_iterIPiEEEET_S4_S4_(i64 %__first.coerce, i64 %__last.coerce) #2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__first = alloca %"class.std::__1::__wrap_iter", align 8
  %__last = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp3 = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp4 = alloca %"struct.std::__1::__equal_to", align 1
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp3, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive6 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp3, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive6, align 8
  %coerce.val.pi7 = ptrtoint ptr %1 to i64
  %call = call i64 @_ZNSt3__113adjacent_findB8ne200100INS_11__wrap_iterIPiEENS_10__equal_toEEET_S5_S5_T0_(i64 %coerce.val.pi, i64 %coerce.val.pi7)
  %coerce.dive8 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %coerce.val.ip9 = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip9, ptr %coerce.dive8, align 8
  %coerce.dive10 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive10, align 8
  %coerce.val.pi11 = ptrtoint ptr %2 to i64
  ret i64 %coerce.val.pi11
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
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #4 {
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
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  ret ptr %0
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
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) #5

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
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne200100Ev() #6 {
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
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne200100EPKc(ptr noundef %__msg) #6 personality ptr @__gxx_personality_v0 {
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
declare noundef ptr @_ZNSt12length_errorD1Ev(ptr noundef nonnull returned align 8 dereferenceable(16)) unnamed_addr #7

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

declare noundef ptr @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull returned align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

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
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne200100v() #6 {
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
declare noundef ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull returned align 8 dereferenceable(8)) unnamed_addr #7

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
declare noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #9

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
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void

terminate.lpad:                                   ; preds = %while.body
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  call void @__clang_call_terminate(ptr %6) #12
  unreachable
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
define linkonce_odr void @_ZN1XclEi(ptr noundef nonnull align 8 dereferenceable(8) %this, i32 noundef %x) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  %n = getelementptr inbounds nuw %struct.X, ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %n, align 8
  %1 = load i32, ptr %0, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i_, align 8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPiEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %0 = load ptr, ptr %__i_, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %__i_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__113__rewrap_iterB8ne200100INS_11__wrap_iterIPiEES2_NS_18__unwrap_iter_implIS3_Lb1EEEEET_S6_T0_(i64 %__orig_iter.coerce, ptr noundef %__iter) #1 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__orig_iter = alloca %"class.std::__1::__wrap_iter", align 8
  %__iter.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__orig_iter, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__orig_iter.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %__iter, ptr %__iter.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__orig_iter, i64 8, i1 false)
  %0 = load ptr, ptr %__iter.addr, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive1, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  %call = invoke i64 @_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPiEELb1EE8__rewrapB8ne200100ES3_S2_(i64 %coerce.val.pi, ptr noundef %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %coerce.val.ip3 = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip3, ptr %coerce.dive2, align 8
  %coerce.dive4 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi5 = ptrtoint ptr %2 to i64
  ret i64 %coerce.val.pi5

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #12
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__16__findB8ne200100IiiNS_10__identityETnNS_9enable_ifIXaaaaaasr13__is_identityIT1_EE5valuesr41__libcpp_is_trivially_equality_comparableIT_T0_EE5valueeqstS4_Lm4EgeatS4_Lm4EEiE4typeELi0EEEPS4_S8_S8_RKS5_RS3_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 4 dereferenceable(4) %__value, ptr noundef nonnull align 1 dereferenceable(1) %0) #2 {
entry:
  %retval = alloca ptr, align 8
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__value.addr = alloca ptr, align 8
  %.addr = alloca ptr, align 8
  %__ret = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  store ptr %__last, ptr %__last.addr, align 8
  store ptr %__value, ptr %__value.addr, align 8
  store ptr %0, ptr %.addr, align 8
  %1 = load ptr, ptr %__first.addr, align 8
  %2 = load ptr, ptr %__value.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %__last.addr, align 8
  %5 = load ptr, ptr %__first.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call = call noundef ptr @_ZNSt3__119__constexpr_wmemchrB8ne200100IiiEEPT_S2_T0_m(ptr noundef %1, i32 noundef %3, i64 noundef %sub.ptr.div)
  store ptr %call, ptr %__ret, align 8
  %6 = load ptr, ptr %__ret, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %__ret, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %__last.addr, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__113__unwrap_iterB8ne200100INS_11__wrap_iterIPiEENS_18__unwrap_iter_implIS3_Lb1EEETnNS_9enable_ifIXsr21is_copy_constructibleIT_EE5valueEiE4typeELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIS7_EEEES7_(i64 %__i.coerce) #1 {
entry:
  %__i = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__i, i64 8, i1 false)
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive1, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %call = call noundef ptr @_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPiEELb1EE8__unwrapB8ne200100ES3_(i64 %coerce.val.pi) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPiEELb1EE8__rewrapB8ne200100ES3_S2_(i64 %__orig_iter.coerce, ptr noundef %__unwrapped_iter) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__orig_iter = alloca %"class.std::__1::__wrap_iter", align 8
  %__unwrapped_iter.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__orig_iter, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__orig_iter.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  store ptr %__unwrapped_iter, ptr %__unwrapped_iter.addr, align 8
  %0 = load ptr, ptr %__unwrapped_iter.addr, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100INS_11__wrap_iterIPiEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerIS6_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperIS6_EE6__callclsr3stdE7declvalIRKS6_EEEEESD_(ptr noundef nonnull align 8 dereferenceable(8) %__orig_iter) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call1 = call i64 @_ZNKSt3__111__wrap_iterIPiEplB8ne200100El(ptr noundef nonnull align 8 dereferenceable(8) %__orig_iter, i64 noundef %sub.ptr.div) #11
  %coerce.dive2 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %coerce.val.ip3 = inttoptr i64 %call1 to ptr
  store ptr %coerce.val.ip3, ptr %coerce.dive2, align 8
  %coerce.dive4 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__111__wrap_iterIPiEplB8ne200100El(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %__n) #1 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %this1, i64 8, i1 false)
  %0 = load i64, ptr %__n.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPiEpLB8ne200100El(ptr noundef nonnull align 8 dereferenceable(8) %retval, i64 noundef %0) #11
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__112__to_addressB8ne200100INS_11__wrap_iterIPiEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerIS6_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperIS6_EE6__callclsr3stdE7declvalIRKS6_EEEEESD_(ptr noundef nonnull align 8 dereferenceable(8) %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  %call = call noundef ptr @_ZNSt3__119__to_address_helperINS_11__wrap_iterIPiEEvE6__callB8ne200100ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPiEpLB8ne200100El(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %__n) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load i64, ptr %__n.addr, align 8
  %__i_ = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %this1, i32 0, i32 0
  %1 = load ptr, ptr %__i_, align 8
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 %0
  store ptr %add.ptr, ptr %__i_, align 8
  ret ptr %this1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119__to_address_helperINS_11__wrap_iterIPiEEvE6__callB8ne200100ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %__p) #1 {
entry:
  %__p.addr = alloca ptr, align 8
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  store ptr %__p, ptr %__p.addr, align 8
  %0 = load ptr, ptr %__p.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  %coerce.val.pi = ptrtoint ptr %1 to i64
  %call = call noundef ptr @_ZNSt3__114pointer_traitsINS_11__wrap_iterIPiEEE10to_addressB8ne200100ES3_(i64 %coerce.val.pi) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__114pointer_traitsINS_11__wrap_iterIPiEEE10to_addressB8ne200100ES3_(i64 %__w.coerce) #1 {
entry:
  %__w = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__w, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__w.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call = call noundef ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__w) #11
  %call1 = call noundef ptr @_ZNSt3__112__to_addressB8ne200100IiEEPT_S2_(ptr noundef %call) #11
  ret ptr %call1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__119__constexpr_wmemchrB8ne200100IiiEEPT_S2_T0_m(ptr noundef %__str, i32 noundef %__value, i64 noundef %__count) #1 {
entry:
  %__str.addr = alloca ptr, align 8
  %__value.addr = alloca i32, align 4
  %__count.addr = alloca i64, align 8
  %__value_buffer = alloca i32, align 4
  store ptr %__str, ptr %__str.addr, align 8
  store i32 %__value, ptr %__value.addr, align 4
  store i64 %__count, ptr %__count.addr, align 8
  store i32 0, ptr %__value_buffer, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %__value_buffer, ptr align 4 %__value.addr, i64 4, i1 false)
  %0 = load ptr, ptr %__str.addr, align 8
  %1 = load i32, ptr %__value_buffer, align 4
  %2 = load i64, ptr %__count.addr, align 8
  %call = call ptr @wmemchr(ptr noundef %0, i32 noundef signext %1, i64 noundef %2) #11
  ret ptr %call
}

; Function Attrs: nounwind
declare ptr @wmemchr(ptr noundef, i32 noundef signext, i64 noundef) #7

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef ptr @_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPiEELb1EE8__unwrapB8ne200100ES3_(i64 %__i.coerce) #1 {
entry:
  %__i = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__i, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__i.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %call = call noundef ptr @_ZNSt3__112__to_addressB8ne200100INS_11__wrap_iterIPiEETnNS_9enable_ifIXsr4_AndINS_8is_classIT_EENS_15_IsFancyPointerIS6_EEEE5valueEiE4typeELi0EEEu7__decayIDTclsr19__to_address_helperIS6_EE6__callclsr3stdE7declvalIRKS6_EEEEESD_(ptr noundef nonnull align 8 dereferenceable(8) %__i) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__113adjacent_findB8ne200100INS_11__wrap_iterIPiEENS_10__equal_toEEET_S5_S5_T0_(i64 %__first.coerce, i64 %__last.coerce) #2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__first = alloca %"class.std::__1::__wrap_iter", align 8
  %__last = alloca %"class.std::__1::__wrap_iter", align 8
  %__pred = alloca %"struct.std::__1::__equal_to", align 1
  %__proj = alloca %"struct.std::__1::__identity", align 1
  %agg.tmp = alloca %"class.std::__1::__wrap_iter", align 8
  %agg.tmp3 = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %__first, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp3, ptr align 8 %__last, i64 8, i1 false)
  %coerce.dive4 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive4, align 8
  %coerce.val.pi = ptrtoint ptr %0 to i64
  %coerce.dive5 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %agg.tmp3, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive5, align 8
  %coerce.val.pi6 = ptrtoint ptr %1 to i64
  %call = call i64 @_ZNSt3__115__adjacent_findB8ne200100INS_11__wrap_iterIPiEES3_NS_10__equal_toENS_10__identityEEET_S6_T0_RT1_RT2_(i64 %coerce.val.pi, i64 %coerce.val.pi6, ptr noundef nonnull align 1 dereferenceable(1) %__pred, ptr noundef nonnull align 1 dereferenceable(1) %__proj)
  %coerce.dive7 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %coerce.val.ip8 = inttoptr i64 %call to ptr
  store ptr %coerce.val.ip8, ptr %coerce.dive7, align 8
  %coerce.dive9 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %2 = load ptr, ptr %coerce.dive9, align 8
  %coerce.val.pi10 = ptrtoint ptr %2 to i64
  ret i64 %coerce.val.pi10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__115__adjacent_findB8ne200100INS_11__wrap_iterIPiEES3_NS_10__equal_toENS_10__identityEEET_S6_T0_RT1_RT2_(i64 %__first.coerce, i64 %__last.coerce, ptr noundef nonnull align 1 dereferenceable(1) %__pred, ptr noundef nonnull align 1 dereferenceable(1) %__proj) #2 {
entry:
  %retval = alloca %"class.std::__1::__wrap_iter", align 8
  %__first = alloca %"class.std::__1::__wrap_iter", align 8
  %__last = alloca %"class.std::__1::__wrap_iter", align 8
  %__pred.addr = alloca ptr, align 8
  %__proj.addr = alloca ptr, align 8
  %__i = alloca %"class.std::__1::__wrap_iter", align 8
  %coerce.dive = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__first, i32 0, i32 0
  %coerce.val.ip = inttoptr i64 %__first.coerce to ptr
  store ptr %coerce.val.ip, ptr %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %__last, i32 0, i32 0
  %coerce.val.ip2 = inttoptr i64 %__last.coerce to ptr
  store ptr %coerce.val.ip2, ptr %coerce.dive1, align 8
  store ptr %__pred, ptr %__pred.addr, align 8
  store ptr %__proj, ptr %__proj.addr, align 8
  %call = call noundef zeroext i1 @_ZNSt3__1eqB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %__first, ptr noundef nonnull align 8 dereferenceable(8) %__last) #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__first, i64 8, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i, ptr align 8 %__first, i64 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPiEppB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__i) #11
  %call4 = call noundef zeroext i1 @_ZNSt3__1neB8ne200100IPiEEbRKNS_11__wrap_iterIT_EES6_(ptr noundef nonnull align 8 dereferenceable(8) %call3, ptr noundef nonnull align 8 dereferenceable(8) %__last) #11
  br i1 %call4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %__pred.addr, align 8
  %1 = load ptr, ptr %__proj.addr, align 8
  %call5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__first) #11
  %call6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__18__invokeB8ne200100IRNS_10__identityEJRiEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %call5) #11
  %2 = load ptr, ptr %__proj.addr, align 8
  %call7 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__111__wrap_iterIPiEdeB8ne200100Ev(ptr noundef nonnull align 8 dereferenceable(8) %__i) #11
  %call8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__18__invokeB8ne200100IRNS_10__identityEJRiEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(4) %call7) #11
  %call9 = call noundef zeroext i1 @_ZNSt3__18__invokeB8ne200100IRNS_10__equal_toEJRiS3_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %call6, ptr noundef nonnull align 4 dereferenceable(4) %call8)
  br i1 %call9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__first, i64 8, i1 false)
  br label %return

if.end11:                                         ; preds = %while.body
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__first, ptr align 8 %__i, i64 8, i1 false)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__i, i64 8, i1 false)
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then
  %coerce.dive12 = getelementptr inbounds nuw %"class.std::__1::__wrap_iter", ptr %retval, i32 0, i32 0
  %3 = load ptr, ptr %coerce.dive12, align 8
  %coerce.val.pi = ptrtoint ptr %3 to i64
  ret i64 %coerce.val.pi
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNSt3__18__invokeB8ne200100IRNS_10__equal_toEJRiS3_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_(ptr noundef nonnull align 1 dereferenceable(1) %__f, ptr noundef nonnull align 4 dereferenceable(4) %__args, ptr noundef nonnull align 4 dereferenceable(4) %__args1) #2 {
entry:
  %__f.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  %__args.addr2 = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  store ptr %__args1, ptr %__args.addr2, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %2 = load ptr, ptr %__args.addr2, align 8
  %call = call noundef zeroext i1 @_ZNKSt3__110__equal_toclB8ne200100IiiEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret i1 %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__18__invokeB8ne200100IRNS_10__identityEJRiEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_(ptr noundef nonnull align 1 dereferenceable(1) %__f, ptr noundef nonnull align 4 dereferenceable(4) %__args) #1 {
entry:
  %__f.addr = alloca ptr, align 8
  %__args.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8
  store ptr %__args, ptr %__args.addr, align 8
  %0 = load ptr, ptr %__f.addr, align 8
  %1 = load ptr, ptr %__args.addr, align 8
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110__identityclB8ne200100IRiEEOT_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  ret ptr %call
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef zeroext i1 @_ZNKSt3__110__equal_toclB8ne200100IiiEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__x, ptr noundef nonnull align 4 dereferenceable(4) %__y) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__x.addr = alloca ptr, align 8
  %__y.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__x, ptr %__x.addr, align 8
  store ptr %__y, ptr %__y.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__x.addr, align 8
  %1 = load i32, ptr %0, align 4
  %2 = load ptr, ptr %__y.addr, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp eq i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__110__identityclB8ne200100IRiEEOT_S4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__t) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__t.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  store ptr %__t, ptr %__t.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__t.addr, align 8
  ret ptr %0
}

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { mustprogress noinline noreturn optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
