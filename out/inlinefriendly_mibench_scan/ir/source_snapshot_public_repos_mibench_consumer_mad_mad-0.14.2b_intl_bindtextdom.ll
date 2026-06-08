; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/bindtextdom.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/bindtextdom.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.binding = type { ptr, ptr, ptr }

@_nl_domain_bindings = external global ptr, align 8
@_nl_default_dirname = external constant [0 x i8], align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @bindtextdomain__(ptr noundef %domainname, ptr noundef %dirname) #0 {
entry:
  %retval = alloca ptr, align 8
  %domainname.addr = alloca ptr, align 8
  %dirname.addr = alloca ptr, align 8
  %binding = alloca ptr, align 8
  %compare = alloca i32, align 4
  %new_dirname = alloca ptr, align 8
  %len = alloca i64, align 8
  %len50 = alloca i64, align 8
  %new_binding = alloca ptr, align 8
  store ptr %domainname, ptr %domainname.addr, align 8
  store ptr %dirname, ptr %dirname.addr, align 8
  %0 = load ptr, ptr %domainname.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %domainname.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr @_nl_domain_bindings, align 8
  store ptr %3, ptr %binding, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %binding, align 8
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %domainname.addr, align 8
  %6 = load ptr, ptr %binding, align 8
  %domainname5 = getelementptr inbounds %struct.binding, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %domainname5, align 8
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef %7)
  store i32 %call, ptr %compare, align 4
  %8 = load i32, ptr %compare, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %for.end

if.end9:                                          ; preds = %for.body
  %9 = load i32, ptr %compare, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store ptr null, ptr %binding, align 8
  br label %for.end

if.end13:                                         ; preds = %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %10 = load ptr, ptr %binding, align 8
  %next = getelementptr inbounds %struct.binding, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %next, align 8
  store ptr %11, ptr %binding, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then12, %if.then8, %for.cond
  %12 = load ptr, ptr %dirname.addr, align 8
  %cmp14 = icmp eq ptr %12, null
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %for.end
  %13 = load ptr, ptr %binding, align 8
  %cmp17 = icmp eq ptr %13, null
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  %14 = load ptr, ptr %binding, align 8
  %dirname19 = getelementptr inbounds %struct.binding, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %dirname19, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @_nl_default_dirname, %cond.true ], [ %15, %cond.false ]
  store ptr %cond, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %for.end
  %16 = load ptr, ptr %binding, align 8
  %cmp21 = icmp ne ptr %16, null
  br i1 %cmp21, label %if.then23, label %if.else49

if.then23:                                        ; preds = %if.end20
  %17 = load ptr, ptr %dirname.addr, align 8
  %18 = load ptr, ptr %binding, align 8
  %dirname24 = getelementptr inbounds %struct.binding, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %dirname24, align 8
  %call25 = call i32 @strcmp(ptr noundef %17, ptr noundef %19)
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end48

if.then28:                                        ; preds = %if.then23
  %20 = load ptr, ptr %dirname.addr, align 8
  %call29 = call i32 @strcmp(ptr noundef %20, ptr noundef @_nl_default_dirname)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then28
  store ptr @_nl_default_dirname, ptr %new_dirname, align 8
  br label %if.end40

if.else:                                          ; preds = %if.then28
  %21 = load ptr, ptr %dirname.addr, align 8
  %call33 = call i64 @strlen(ptr noundef %21)
  %add = add i64 %call33, 1
  store i64 %add, ptr %len, align 8
  %22 = load i64, ptr %len, align 8
  %call34 = call ptr @malloc(i64 noundef %22) #5
  store ptr %call34, ptr %new_dirname, align 8
  %23 = load ptr, ptr %new_dirname, align 8
  %cmp35 = icmp eq ptr %23, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.else
  store ptr null, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %if.else
  %24 = load ptr, ptr %new_dirname, align 8
  %25 = load ptr, ptr %dirname.addr, align 8
  %26 = load i64, ptr %len, align 8
  %27 = load ptr, ptr %new_dirname, align 8
  %28 = call i64 @llvm.objectsize.i64.p0(ptr %27, i1 false, i1 true, i1 false)
  %call39 = call ptr @__memcpy_chk(ptr noundef %24, ptr noundef %25, i64 noundef %26, i64 noundef %28) #6
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %if.then32
  %29 = load ptr, ptr %binding, align 8
  %dirname41 = getelementptr inbounds %struct.binding, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %dirname41, align 8
  %cmp42 = icmp ne ptr %30, @_nl_default_dirname
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end40
  %31 = load ptr, ptr %binding, align 8
  %dirname45 = getelementptr inbounds %struct.binding, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %dirname45, align 8
  call void @free(ptr noundef %32)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end40
  %33 = load ptr, ptr %new_dirname, align 8
  %34 = load ptr, ptr %binding, align 8
  %dirname47 = getelementptr inbounds %struct.binding, ptr %34, i32 0, i32 2
  store ptr %33, ptr %dirname47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.then23
  br label %if.end110

if.else49:                                        ; preds = %if.end20
  %call51 = call ptr @malloc(i64 noundef 24) #5
  store ptr %call51, ptr %new_binding, align 8
  %35 = load ptr, ptr %new_binding, align 8
  %cmp52 = icmp eq ptr %35, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.else49
  store ptr null, ptr %retval, align 8
  br label %return

if.end55:                                         ; preds = %if.else49
  %36 = load ptr, ptr %domainname.addr, align 8
  %call56 = call i64 @strlen(ptr noundef %36)
  %add57 = add i64 %call56, 1
  store i64 %add57, ptr %len50, align 8
  %37 = load i64, ptr %len50, align 8
  %call58 = call ptr @malloc(i64 noundef %37) #5
  %38 = load ptr, ptr %new_binding, align 8
  %domainname59 = getelementptr inbounds %struct.binding, ptr %38, i32 0, i32 1
  store ptr %call58, ptr %domainname59, align 8
  %39 = load ptr, ptr %new_binding, align 8
  %domainname60 = getelementptr inbounds %struct.binding, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %domainname60, align 8
  %cmp61 = icmp eq ptr %40, null
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end55
  store ptr null, ptr %retval, align 8
  br label %return

if.end64:                                         ; preds = %if.end55
  %41 = load ptr, ptr %new_binding, align 8
  %domainname65 = getelementptr inbounds %struct.binding, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %domainname65, align 8
  %43 = load ptr, ptr %domainname.addr, align 8
  %44 = load i64, ptr %len50, align 8
  %45 = load ptr, ptr %new_binding, align 8
  %domainname66 = getelementptr inbounds %struct.binding, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %domainname66, align 8
  %47 = call i64 @llvm.objectsize.i64.p0(ptr %46, i1 false, i1 true, i1 false)
  %call67 = call ptr @__memcpy_chk(ptr noundef %42, ptr noundef %43, i64 noundef %44, i64 noundef %47) #6
  %48 = load ptr, ptr %dirname.addr, align 8
  %call68 = call i32 @strcmp(ptr noundef %48, ptr noundef @_nl_default_dirname)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.end64
  %49 = load ptr, ptr %new_binding, align 8
  %dirname72 = getelementptr inbounds %struct.binding, ptr %49, i32 0, i32 2
  store ptr @_nl_default_dirname, ptr %dirname72, align 8
  br label %if.end86

if.else73:                                        ; preds = %if.end64
  %50 = load ptr, ptr %dirname.addr, align 8
  %call74 = call i64 @strlen(ptr noundef %50)
  %add75 = add i64 %call74, 1
  store i64 %add75, ptr %len50, align 8
  %51 = load i64, ptr %len50, align 8
  %call76 = call ptr @malloc(i64 noundef %51) #5
  %52 = load ptr, ptr %new_binding, align 8
  %dirname77 = getelementptr inbounds %struct.binding, ptr %52, i32 0, i32 2
  store ptr %call76, ptr %dirname77, align 8
  %53 = load ptr, ptr %new_binding, align 8
  %dirname78 = getelementptr inbounds %struct.binding, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %dirname78, align 8
  %cmp79 = icmp eq ptr %54, null
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.else73
  store ptr null, ptr %retval, align 8
  br label %return

if.end82:                                         ; preds = %if.else73
  %55 = load ptr, ptr %new_binding, align 8
  %dirname83 = getelementptr inbounds %struct.binding, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %dirname83, align 8
  %57 = load ptr, ptr %dirname.addr, align 8
  %58 = load i64, ptr %len50, align 8
  %59 = load ptr, ptr %new_binding, align 8
  %dirname84 = getelementptr inbounds %struct.binding, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %dirname84, align 8
  %61 = call i64 @llvm.objectsize.i64.p0(ptr %60, i1 false, i1 true, i1 false)
  %call85 = call ptr @__memcpy_chk(ptr noundef %56, ptr noundef %57, i64 noundef %58, i64 noundef %61) #6
  br label %if.end86

if.end86:                                         ; preds = %if.end82, %if.then71
  %62 = load ptr, ptr @_nl_domain_bindings, align 8
  %cmp87 = icmp eq ptr %62, null
  br i1 %cmp87, label %if.then94, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.end86
  %63 = load ptr, ptr %domainname.addr, align 8
  %64 = load ptr, ptr @_nl_domain_bindings, align 8
  %domainname90 = getelementptr inbounds %struct.binding, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %domainname90, align 8
  %call91 = call i32 @strcmp(ptr noundef %63, ptr noundef %65)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.else96

if.then94:                                        ; preds = %lor.lhs.false89, %if.end86
  %66 = load ptr, ptr @_nl_domain_bindings, align 8
  %67 = load ptr, ptr %new_binding, align 8
  %next95 = getelementptr inbounds %struct.binding, ptr %67, i32 0, i32 0
  store ptr %66, ptr %next95, align 8
  %68 = load ptr, ptr %new_binding, align 8
  store ptr %68, ptr @_nl_domain_bindings, align 8
  br label %if.end109

if.else96:                                        ; preds = %lor.lhs.false89
  %69 = load ptr, ptr @_nl_domain_bindings, align 8
  store ptr %69, ptr %binding, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else96
  %70 = load ptr, ptr %binding, align 8
  %next97 = getelementptr inbounds %struct.binding, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %next97, align 8
  %cmp98 = icmp ne ptr %71, null
  br i1 %cmp98, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %72 = load ptr, ptr %domainname.addr, align 8
  %73 = load ptr, ptr %binding, align 8
  %next100 = getelementptr inbounds %struct.binding, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %next100, align 8
  %domainname101 = getelementptr inbounds %struct.binding, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %domainname101, align 8
  %call102 = call i32 @strcmp(ptr noundef %72, ptr noundef %75)
  %cmp103 = icmp sgt i32 %call102, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %76 = phi i1 [ false, %while.cond ], [ %cmp103, %land.rhs ]
  br i1 %76, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %77 = load ptr, ptr %binding, align 8
  %next105 = getelementptr inbounds %struct.binding, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %next105, align 8
  store ptr %78, ptr %binding, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %79 = load ptr, ptr %binding, align 8
  %next106 = getelementptr inbounds %struct.binding, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %next106, align 8
  %81 = load ptr, ptr %new_binding, align 8
  %next107 = getelementptr inbounds %struct.binding, ptr %81, i32 0, i32 0
  store ptr %80, ptr %next107, align 8
  %82 = load ptr, ptr %new_binding, align 8
  %83 = load ptr, ptr %binding, align 8
  %next108 = getelementptr inbounds %struct.binding, ptr %83, i32 0, i32 0
  store ptr %82, ptr %next108, align 8
  br label %if.end109

if.end109:                                        ; preds = %while.end, %if.then94
  %84 = load ptr, ptr %new_binding, align 8
  store ptr %84, ptr %binding, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end48
  %85 = load ptr, ptr %binding, align 8
  %dirname111 = getelementptr inbounds %struct.binding, ptr %85, i32 0, i32 2
  %86 = load ptr, ptr %dirname111, align 8
  store ptr %86, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end110, %if.then81, %if.then63, %if.then54, %if.then37, %cond.end, %if.then
  %87 = load ptr, ptr %retval, align 8
  ret ptr %87
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
