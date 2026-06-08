; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/textdomain.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/textdomain.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@_nl_current_default_domain = external global ptr, align 8
@_nl_default_default_domain = external constant [0 x i8], align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @textdomain__(ptr noundef %domainname) #0 {
entry:
  %retval = alloca ptr, align 8
  %domainname.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %len = alloca i64, align 8
  %cp = alloca ptr, align 8
  store ptr %domainname, ptr %domainname.addr, align 8
  %0 = load ptr, ptr %domainname.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @_nl_current_default_domain, align 8
  store ptr %1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @_nl_current_default_domain, align 8
  store ptr %2, ptr %old, align 8
  %3 = load ptr, ptr %domainname.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %domainname.addr, align 8
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef @_nl_default_default_domain)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store ptr @_nl_default_default_domain, ptr @_nl_current_default_domain, align 8
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %domainname.addr, align 8
  %call6 = call i64 @strlen(ptr noundef %6)
  %add = add i64 %call6, 1
  store i64 %add, ptr %len, align 8
  %7 = load i64, ptr %len, align 8
  %call7 = call ptr @malloc(i64 noundef %7) #5
  store ptr %call7, ptr %cp, align 8
  %8 = load ptr, ptr %cp, align 8
  %cmp8 = icmp ne ptr %8, null
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %9 = load ptr, ptr %cp, align 8
  %10 = load ptr, ptr %domainname.addr, align 8
  %11 = load i64, ptr %len, align 8
  %12 = load ptr, ptr %cp, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %13) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  %14 = load ptr, ptr %cp, align 8
  store ptr %14, ptr @_nl_current_default_domain, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  %15 = load ptr, ptr %old, align 8
  %cmp14 = icmp ne ptr %15, @_nl_default_default_domain
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %16 = load ptr, ptr %old, align 8
  call void @free(ptr noundef %16)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %17 = load ptr, ptr @_nl_current_default_domain, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end17, %if.then
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i64 @strlen(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
