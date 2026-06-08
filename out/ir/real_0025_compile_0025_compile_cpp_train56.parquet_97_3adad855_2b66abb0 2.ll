; ModuleID = '<stdin>'
source_filename = "xercesc/validators/datatype/XMLCanRepGroup.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.xercesc_3_2::XMLCanRepGroup" = type { i32 }

$_ZN11xercesc_3_210XMLDeleterD0Ev = comdat any

$_ZN11xercesc_3_210XMLDeleterD2Ev = comdat any

$_ZN11xercesc_3_27XMemoryC2Ev = comdat any

$_ZTVN11xercesc_3_210XMLDeleterE = comdat any

$_ZTSN11xercesc_3_210XMLDeleterE = comdat any

$_ZTIN11xercesc_3_210XMLDeleterE = comdat any

@_ZTVN11xercesc_3_210XMLDeleterE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_3_210XMLDeleterE, ptr @_ZN11xercesc_3_210XMLDeleterD2Ev, ptr @_ZN11xercesc_3_210XMLDeleterD0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTSN11xercesc_3_210XMLDeleterE = linkonce_odr constant [28 x i8] c"N11xercesc_3_210XMLDeleterE\00", comdat, align 1
@_ZTIN11xercesc_3_210XMLDeleterE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_3_210XMLDeleterE }, comdat, align 8

@_ZN11xercesc_3_214XMLCanRepGroupD1Ev = unnamed_addr alias void (ptr), ptr @_ZN11xercesc_3_214XMLCanRepGroupD2Ev
@_ZN11xercesc_3_214XMLCanRepGroupC1ENS0_11CanRepGroupE = unnamed_addr alias void (ptr, i32), ptr @_ZN11xercesc_3_214XMLCanRepGroupC2ENS0_11CanRepGroupE

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN11xercesc_3_210XMLDeleterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZN11xercesc_3_210XMLDeleterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %this1) #3
  call void @_ZdlPv(ptr noundef %this1) #4
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

; Function Attrs: noinline nounwind optnone uwtable
define void @_ZN11xercesc_3_214XMLCanRepGroupD2Ev(ptr noundef nonnull align 4 dereferenceable(4) %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define void @_ZN11xercesc_3_214XMLCanRepGroupC2ENS0_11CanRepGroupE(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %val) unnamed_addr #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %this1 = load ptr, ptr %this.addr, align 8
  call void @_ZN11xercesc_3_27XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this1)
  %fData = getelementptr inbounds %"class.xercesc_3_2::XMLCanRepGroup", ptr %this1, i32 0, i32 0
  %0 = load i32, ptr %val.addr, align 4
  store i32 %0, ptr %fData, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr void @_ZN11xercesc_3_27XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
