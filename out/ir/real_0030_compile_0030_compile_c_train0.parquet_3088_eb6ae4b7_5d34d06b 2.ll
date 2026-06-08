; ModuleID = '<stdin>'
source_filename = "error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre__global_error = global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"[No error] \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"[Generic error] \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"[Memory error] \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[Error in argument %d] \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[Method did not converge] \00", align 1

; Function Attrs: nounwind uwtable
define void @hypre_error_handler(ptr noundef %filename, i64 noundef %line, i64 noundef %ierr, ptr noundef %msg) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i64, align 8
  %ierr.addr = alloca i64, align 8
  %msg.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store i64 %line, ptr %line.addr, align 8, !tbaa !8
  store i64 %ierr, ptr %ierr.addr, align 8, !tbaa !8
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  %0 = load i64, ptr %ierr.addr, align 8, !tbaa !8
  %1 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  %or = or i64 %1, %0
  store i64 %or, ptr @hypre__global_error, align 8, !tbaa !8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @HYPRE_GetError() #0 {
entry:
  %0 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i64 @HYPRE_CheckError(i64 noundef %ierr, i64 noundef %hypre_error_code) #0 {
entry:
  %ierr.addr = alloca i64, align 8
  %hypre_error_code.addr = alloca i64, align 8
  store i64 %ierr, ptr %ierr.addr, align 8, !tbaa !8
  store i64 %hypre_error_code, ptr %hypre_error_code.addr, align 8, !tbaa !8
  %0 = load i64, ptr %ierr.addr, align 8, !tbaa !8
  %1 = load i64, ptr %hypre_error_code.addr, align 8, !tbaa !8
  %and = and i64 %0, %1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define void @HYPRE_DescribeError(i64 noundef %ierr, ptr noundef %msg) #0 {
entry:
  %ierr.addr = alloca i64, align 8
  %msg.addr = alloca ptr, align 8
  store i64 %ierr, ptr %ierr.addr, align 8, !tbaa !8
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  %0 = load i64, ptr %ierr.addr, align 8, !tbaa !8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %call = call i64 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %1, ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %ierr.addr, align 8, !tbaa !8
  %and = and i64 %2, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %call2 = call i64 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %3, ptr noundef @.str.1)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %4 = load i64, ptr %ierr.addr, align 8, !tbaa !8
  %and4 = and i64 %4, 2
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %5 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %call7 = call i64 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %5, ptr noundef @.str.2)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %6 = load i64, ptr %ierr.addr, align 8, !tbaa !8
  %and9 = and i64 %6, 4
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  %7 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %call12 = call i64 @HYPRE_GetErrorArg()
  %call13 = call i64 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %7, ptr noundef @.str.3, i64 noundef %call12)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8
  %8 = load i64, ptr %ierr.addr, align 8, !tbaa !8
  %and15 = and i64 %8, 256
  %tobool16 = icmp ne i64 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %9 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %call18 = call i64 (ptr, ptr, ...) @hypre_sprintf(ptr noundef %9, ptr noundef @.str.4)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void
}

declare i64 @hypre_sprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define i64 @HYPRE_GetErrorArg() #0 {
entry:
  %0 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  %shr = ashr i64 %0, 3
  %and = and i64 %shr, 31
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define i64 @HYPRE_ClearAllErrors() #0 {
entry:
  store i64 0, ptr @hypre__global_error, align 8, !tbaa !8
  %0 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  %cmp = icmp ne i64 %0, 0
  %conv = zext i1 %cmp to i32
  %conv1 = sext i32 %conv to i64
  ret i64 %conv1
}

; Function Attrs: nounwind uwtable
define i64 @HYPRE_ClearError(i64 noundef %hypre_error_code) #0 {
entry:
  %hypre_error_code.addr = alloca i64, align 8
  store i64 %hypre_error_code, ptr %hypre_error_code.addr, align 8, !tbaa !8
  %0 = load i64, ptr %hypre_error_code.addr, align 8, !tbaa !8
  %not = xor i64 %0, -1
  %1 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  %and = and i64 %1, %not
  store i64 %and, ptr @hypre__global_error, align 8, !tbaa !8
  %2 = load i64, ptr @hypre__global_error, align 8, !tbaa !8
  %3 = load i64, ptr %hypre_error_code.addr, align 8, !tbaa !8
  %and1 = and i64 %2, %3
  ret i64 %and1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long long", !6, i64 0}
