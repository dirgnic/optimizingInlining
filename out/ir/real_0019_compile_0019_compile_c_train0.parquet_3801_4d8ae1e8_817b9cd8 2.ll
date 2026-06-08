; ModuleID = '<stdin>'
source_filename = "x86_64/Gglobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.__sigset_t = type { [16 x i64] }

@_Ux86_64_lock = hidden global %union.pthread_mutex_t { %struct.__pthread_mutex_s { i32 0, i32 0, i32 0, i32 0, i32 3, i16 0, i16 0, %struct.__pthread_internal_list zeroinitializer } }, align 8
@_Ux86_64_init_done = hidden global i8 0, align 1
@_Ux86_64_dwarf_to_unw_regnum_map = hidden constant [17 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@_UIx86_64_full_mask = external global %struct.__sigset_t, align 8

; Function Attrs: noinline optnone uwtable
define hidden void @_Ux86_64_init() #0 {
entry:
  %saved_mask = alloca %struct.__sigset_t, align 8
  %full_mask = alloca %struct.__sigset_t, align 8
  %atomic-temp = alloca i8, align 1
  %.atomictmp = alloca i8, align 1
  %call = call i32 @sigfillset(ptr noundef %full_mask) #4
  call void @mark_as_used(ptr noundef %saved_mask)
  br i1 icmp ne (ptr @pthread_mutex_lock, ptr null), label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @_Ux86_64_lock) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ 0, %cond.false ]
  %0 = load atomic i8, ptr @_Ux86_64_init_done seq_cst, align 1
  store i8 %0, ptr %atomic-temp, align 1
  %1 = load i8, ptr %atomic-temp, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %out

if.end:                                           ; preds = %cond.end
  %call2 = call i32 @sigfillset(ptr noundef @_UIx86_64_full_mask) #4
  call void @_UIx86_64_mi_init()
  %call3 = call i32 @_Ux86_64_dwarf_init()
  call void @_Ux86_64_init_mem_validate()
  call void @_Ux86_64_local_addr_space_init()
  store i8 1, ptr %.atomictmp, align 1
  %2 = load i8, ptr %.atomictmp, align 1
  store atomic i8 %2, ptr @_Ux86_64_init_done seq_cst, align 1
  br label %out

out:                                              ; preds = %if.end, %if.then
  br i1 icmp ne (ptr @pthread_mutex_unlock, ptr null), label %cond.true4, label %cond.false6

cond.true4:                                       ; preds = %out
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @_Ux86_64_lock) #4
  br label %cond.end7

cond.false6:                                      ; preds = %out
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi i32 [ %call5, %cond.true4 ], [ 0, %cond.false6 ]
  call void @mark_as_used(ptr noundef null)
  ret void
}

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_as_used(ptr noundef %v) #2 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  ret void
}

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutex_lock(ptr noundef) #1

declare void @_UIx86_64_mi_init() #3

declare i32 @_Ux86_64_dwarf_init() #3

declare void @_Ux86_64_init_mem_validate() #3

declare void @_Ux86_64_local_addr_space_init() #3

; Function Attrs: nounwind
declare extern_weak i32 @pthread_mutex_unlock(ptr noundef) #1

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
