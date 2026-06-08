; ModuleID = '<stdin>'
source_filename = "xercesc/util/XMemory.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_ZN11xercesc_3_210XMLDeleterD0Ev = comdat any

$_ZN11xercesc_3_210XMLDeleterD2Ev = comdat any

$_ZN11xercesc_3_216XMLPlatformUtils33alignPointerForNewBlockAllocationEm = comdat any

$__clang_call_terminate = comdat any

$_ZTVN11xercesc_3_210XMLDeleterE = comdat any

$_ZTSN11xercesc_3_210XMLDeleterE = comdat any

$_ZTIN11xercesc_3_210XMLDeleterE = comdat any

@_ZN11xercesc_3_216XMLPlatformUtils15fgMemoryManagerE = external global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"manager != 0\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"xercesc/util/XMemory.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN11xercesc_3_27XMemorynwEmPNS_13MemoryManagerE = private unnamed_addr constant [73 x i8] c"static void *xercesc_3_2::XMemory::operator new(size_t, MemoryManager *)\00", align 1
@__PRETTY_FUNCTION__._ZN11xercesc_3_27XMemorydlEPv = private unnamed_addr constant [58 x i8] c"static void xercesc_3_2::XMemory::operator delete(void *)\00", align 1
@__PRETTY_FUNCTION__._ZN11xercesc_3_27XMemorydlEPvPNS_13MemoryManagerE = private unnamed_addr constant [75 x i8] c"static void xercesc_3_2::XMemory::operator delete(void *, MemoryManager *)\00", align 1
@_ZTVN11xercesc_3_210XMLDeleterE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_3_210XMLDeleterE, ptr @_ZN11xercesc_3_210XMLDeleterD2Ev, ptr @_ZN11xercesc_3_210XMLDeleterD0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN11xercesc_3_210XMLDeleterE = linkonce_odr constant [28 x i8] c"N11xercesc_3_210XMLDeleterE\00", comdat, align 1
@_ZTIN11xercesc_3_210XMLDeleterE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_3_210XMLDeleterE }, comdat, align 8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN11xercesc_3_210XMLDeleterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZN11xercesc_3_210XMLDeleterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #6
  call void @_ZdlPv(ptr noundef %this1) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN11xercesc_3_210XMLDeleterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #1

; Function Attrs: mustprogress noinline optnone uwtable
define noundef ptr @_ZN11xercesc_3_27XMemorynwEm(i64 noundef %size) #2 align 2 {
entry:
  %size.addr = alloca i64, align 8
  %headerSize = alloca i64, align 8
  %block = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  %call = call noundef i64 @_ZN11xercesc_3_216XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8)
  store i64 %call, ptr %headerSize, align 8
  %0 = load ptr, ptr @_ZN11xercesc_3_216XMLPlatformUtils15fgMemoryManagerE, align 8
  %1 = load i64, ptr %headerSize, align 8
  %2 = load i64, ptr %size.addr, align 8
  %add = add i64 %1, %2
  %vtable = load ptr, ptr %0, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %3 = load ptr, ptr %vfn, align 8
  %call1 = call noundef ptr %3(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %add)
  store ptr %call1, ptr %block, align 8
  %4 = load ptr, ptr @_ZN11xercesc_3_216XMLPlatformUtils15fgMemoryManagerE, align 8
  %5 = load ptr, ptr %block, align 8
  store ptr %4, ptr %5, align 8
  %6 = load ptr, ptr %block, align 8
  %7 = load i64, ptr %headerSize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7
  ret ptr %add.ptr
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr noundef i64 @_ZN11xercesc_3_216XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef %ptrSize) #3 comdat align 2 {
entry:
  %ptrSize.addr = alloca i64, align 8
  %alignment = alloca i64, align 8
  %current = alloca i64, align 8
  store i64 %ptrSize, ptr %ptrSize.addr, align 8
  store i64 8, ptr %alignment, align 8
  %0 = load i64, ptr %ptrSize.addr, align 8
  %rem = urem i64 %0, 8
  store i64 %rem, ptr %current, align 8
  %1 = load i64, ptr %current, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %ptrSize.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, ptr %ptrSize.addr, align 8
  %add = add i64 %3, 8
  %4 = load i64, ptr %current, align 8
  %sub = sub i64 %add, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %sub, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress noinline optnone uwtable
define noundef ptr @_ZN11xercesc_3_27XMemorynwEmPNS_13MemoryManagerE(i64 noundef %size, ptr noundef %manager) #2 align 2 {
entry:
  %size.addr = alloca i64, align 8
  %manager.addr = alloca ptr, align 8
  %headerSize = alloca i64, align 8
  %block = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %manager, ptr %manager.addr, align 8
  %0 = load ptr, ptr %manager.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 63, ptr noundef @__PRETTY_FUNCTION__._ZN11xercesc_3_27XMemorynwEmPNS_13MemoryManagerE) #8
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call = call noundef i64 @_ZN11xercesc_3_216XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8)
  store i64 %call, ptr %headerSize, align 8
  %2 = load ptr, ptr %manager.addr, align 8
  %3 = load i64, ptr %headerSize, align 8
  %4 = load i64, ptr %size.addr, align 8
  %add = add i64 %3, %4
  %vtable = load ptr, ptr %2, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 3
  %5 = load ptr, ptr %vfn, align 8
  %call1 = call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %add)
  store ptr %call1, ptr %block, align 8
  %6 = load ptr, ptr %manager.addr, align 8
  %7 = load ptr, ptr %block, align 8
  store ptr %6, ptr %7, align 8
  %8 = load ptr, ptr %block, align 8
  %9 = load i64, ptr %headerSize, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9
  ret ptr %add.ptr
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define noundef ptr @_ZN11xercesc_3_27XMemorynwEmPv(i64 noundef %0, ptr noundef %ptr) #3 align 2 {
entry:
  %.addr = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  store i64 %0, ptr %.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %ptr.addr, align 8
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define void @_ZN11xercesc_3_27XMemorydlEPv(ptr noundef %p) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %p.addr = alloca ptr, align 8
  %headerSize = alloca i64, align 8
  %block = alloca ptr, align 8
  %manager = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = invoke noundef i64 @_ZN11xercesc_3_216XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  store i64 %call, ptr %headerSize, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i64, ptr %headerSize, align 8
  %idx.neg = sub i64 0, %2
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.neg
  store ptr %add.ptr, ptr %block, align 8
  %3 = load ptr, ptr %block, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %manager, align 8
  %5 = load ptr, ptr %manager, align 8
  %cmp1 = icmp ne ptr %5, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %invoke.cont
  br label %cond.end

cond.false:                                       ; preds = %invoke.cont
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 88, ptr noundef @__PRETTY_FUNCTION__._ZN11xercesc_3_27XMemorydlEPv) #8
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %manager, align 8
  %8 = load ptr, ptr %block, align 8
  %vtable = load ptr, ptr %7, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 4
  %9 = load ptr, ptr %vfn, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %cond.end
  br label %if.end

if.end:                                           ; preds = %invoke.cont2, %entry
  ret void

terminate.lpad:                                   ; preds = %cond.end, %if.then
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #8
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #5 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #6
  call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define void @_ZN11xercesc_3_27XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %p, ptr noundef %manager) #3 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %p.addr = alloca ptr, align 8
  %manager.addr = alloca ptr, align 8
  %headerSize = alloca i64, align 8
  %block = alloca ptr, align 8
  %pM = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %manager, ptr %manager.addr, align 8
  %0 = load ptr, ptr %manager.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 98, ptr noundef @__PRETTY_FUNCTION__._ZN11xercesc_3_27XMemorydlEPvPNS_13MemoryManagerE) #8
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load ptr, ptr %p.addr, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call = invoke noundef i64 @_ZN11xercesc_3_216XMLPlatformUtils33alignPointerForNewBlockAllocationEm(i64 noundef 8)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  store i64 %call, ptr %headerSize, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %4 = load i64, ptr %headerSize, align 8
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.neg
  store ptr %add.ptr, ptr %block, align 8
  %5 = load ptr, ptr %block, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %pM, align 8
  %7 = load ptr, ptr %pM, align 8
  %8 = load ptr, ptr %block, align 8
  %vtable = load ptr, ptr %7, align 8
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 4
  %9 = load ptr, ptr %vfn, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %8)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  br label %if.end

if.end:                                           ; preds = %invoke.cont2, %cond.end
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %if.then
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define void @_ZN11xercesc_3_27XMemorydlEPvS1_(ptr noundef %0, ptr noundef %1) #3 align 2 {
entry:
  %.addr = alloca ptr, align 8
  %.addr1 = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8
  store ptr %1, ptr %.addr1, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
