; ModuleID = './out/real_signal_run_all/rewritten_ir/student_logistic_regression/source_snapshot_public_repos_tracy_public_libbacktrace_alloc.prepared.ll'
source_filename = "./source_snapshot/public_repos/tracy/public/libbacktrace/alloc.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"struct.tracy::backtrace_vector" = type { ptr, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1

; Function Attrs: mustprogress ssp uwtable
define noalias noundef ptr @_ZN5tracy15backtrace_allocEPNS_15backtrace_stateEmPFvPvPKciES2_(ptr noundef %state, i64 noundef %size, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %call.i = call ptr @malloc(i64 noundef %size) #5
  store ptr %call.i, ptr %ret, align 8
  %cmp = icmp ne ptr %call.i, null
  %0 = load ptr, ptr %error_callback.addr, align 8
  %tobool.not = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end3, label %if.then1

if.then1:                                         ; preds = %entry
  %1 = load ptr, ptr %error_callback.addr, align 8
  %2 = load ptr, ptr %data.addr, align 8
  %call2 = call ptr @__error()
  %3 = load i32, ptr %call2, align 4
  call void %1(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %3)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %entry
  %4 = load ptr, ptr %ret, align 8
  ret ptr %4
}

declare ptr @__error() #1

; Function Attrs: mustprogress ssp uwtable
define void @_ZN5tracy14backtrace_freeEPNS_15backtrace_stateEPvmPFvS2_PKciES2_(ptr noundef %state, ptr noundef %p, i64 noundef %size, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  call void @free(ptr noundef %p)
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy21backtrace_vector_growEPNS_15backtrace_stateEmPFvPvPKciES2_PNS_16backtrace_vectorE(ptr noundef %state, i64 noundef %size, ptr noundef %error_callback, ptr noundef %data, ptr noundef %vec) #0 {
entry:
  %size.addr = alloca i64, align 8
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %vec.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %alc1 = alloca i64, align 8
  %base = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %vec, ptr %vec.addr, align 8
  %alc = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %vec, i64 0, i32 2
  %0 = load i64, ptr %alc, align 8
  %cmp = icmp ult i64 %0, %size
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vec.addr, align 8
  %size2 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %1, i64 0, i32 1
  %2 = load i64, ptr %size2, align 8
  %cmp3 = icmp eq i64 %2, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %3 = load i64, ptr %size.addr, align 8
  %mul = shl i64 %3, 5
  br label %if.end12

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %vec.addr, align 8
  %size5 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %4, i64 0, i32 1
  %5 = load i64, ptr %size5, align 8
  %cmp6 = icmp ugt i64 %5, 4095
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  %6 = load ptr, ptr %vec.addr, align 8
  %size8 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %6, i64 0, i32 1
  %7 = load i64, ptr %size8, align 8
  %add = add i64 %7, 4096
  br label %if.end12

if.else9:                                         ; preds = %if.else
  %8 = load ptr, ptr %vec.addr, align 8
  %size10 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %8, i64 0, i32 1
  %9 = load i64, ptr %size10, align 8
  %mul11 = shl i64 %9, 1
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.else9, %if.then4
  %storemerge2 = phi i64 [ %mul, %if.then4 ], [ %mul11, %if.else9 ], [ %add, %if.then7 ]
  store i64 %storemerge2, ptr %alc1, align 8
  %10 = load ptr, ptr %vec.addr, align 8
  %size13 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %10, i64 0, i32 1
  %11 = load i64, ptr %size13, align 8
  %12 = load i64, ptr %size.addr, align 8
  %add14 = add i64 %11, %12
  %cmp15 = icmp ult i64 %storemerge2, %add14
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %13 = load ptr, ptr %vec.addr, align 8
  %size17 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %13, i64 0, i32 1
  %14 = load i64, ptr %size17, align 8
  %15 = load i64, ptr %size.addr, align 8
  %add18 = add i64 %14, %15
  store i64 %add18, ptr %alc1, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12
  %16 = load ptr, ptr %vec.addr, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %alc1, align 8
  %call.i = call ptr @realloc(ptr noundef %17, i64 noundef %18) #6
  store ptr %call.i, ptr %base, align 8
  %cmp21 = icmp eq ptr %call.i, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %19 = load ptr, ptr %error_callback.addr, align 8
  %20 = load ptr, ptr %data.addr, align 8
  %call23 = call ptr @__error()
  %21 = load i32, ptr %call23, align 4
  call void %19(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef %21)
  br label %return

if.end24:                                         ; preds = %if.end19
  %22 = load ptr, ptr %base, align 8
  %23 = load ptr, ptr %vec.addr, align 8
  store ptr %22, ptr %23, align 8
  %24 = load i64, ptr %alc1, align 8
  %size26 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %size26, align 8
  %sub = sub i64 %24, %25
  %alc27 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %23, i64 0, i32 2
  store i64 %sub, ptr %alc27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %entry
  %26 = load ptr, ptr %vec.addr, align 8
  %27 = load ptr, ptr %26, align 8
  %size30 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %26, i64 0, i32 1
  %28 = load i64, ptr %size30, align 8
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %28
  store ptr %add.ptr, ptr %ret, align 8
  %29 = load i64, ptr %size.addr, align 8
  %30 = load ptr, ptr %vec.addr, align 8
  %size31 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %30, i64 0, i32 1
  %31 = load i64, ptr %size31, align 8
  %add32 = add i64 %31, %29
  store i64 %add32, ptr %size31, align 8
  %alc33 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %30, i64 0, i32 2
  %32 = load i64, ptr %alc33, align 8
  %sub34 = sub i64 %32, %29
  store i64 %sub34, ptr %alc33, align 8
  %33 = load ptr, ptr %ret, align 8
  br label %return

return:                                           ; preds = %if.end28, %if.then22
  %storemerge = phi ptr [ %33, %if.end28 ], [ null, %if.then22 ]
  ret ptr %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @_ZN5tracyL13tracy_reallocEPvm(ptr noundef %ptr, i64 noundef %size) #0 {
entry:
  %call = call ptr @realloc(ptr noundef %ptr, i64 noundef %size) #6
  ret ptr %call
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy23backtrace_vector_finishEPNS_15backtrace_stateEPNS_16backtrace_vectorEPFvPvPKciES4_(ptr noundef %state, ptr noundef %vec, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %vec.addr = alloca ptr, align 8
  store ptr %vec, ptr %vec.addr, align 8
  %call = call noundef i32 @_ZN5tracy24backtrace_vector_releaseEPNS_15backtrace_stateEPNS_16backtrace_vectorEPFvPvPKciES4_(ptr noundef %state, ptr noundef %vec, ptr noundef %error_callback, ptr noundef %data)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %vec.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %size = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %0, i64 0, i32 1
  store i64 0, ptr %size, align 8
  %alc = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %0, i64 0, i32 2
  store i64 0, ptr %alc, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %storemerge = phi ptr [ %1, %if.end ], [ null, %entry ]
  ret ptr %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define noundef i32 @_ZN5tracy24backtrace_vector_releaseEPNS_15backtrace_stateEPNS_16backtrace_vectorEPFvPvPKciES4_(ptr noundef %state, ptr noundef %vec, ptr noundef %error_callback, ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %vec.addr = alloca ptr, align 8
  %error_callback.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %vec, ptr %vec.addr, align 8
  store ptr %error_callback, ptr %error_callback.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %alc = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %vec, i64 0, i32 2
  store i64 0, ptr %alc, align 8
  %size = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %vec, i64 0, i32 1
  %0 = load i64, ptr %size, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vec.addr, align 8
  %2 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %2)
  store ptr null, ptr %1, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %vec.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %size3 = getelementptr inbounds %"struct.tracy::backtrace_vector", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %size3, align 8
  %call = call noundef ptr @_ZN5tracyL13tracy_reallocEPvm(ptr noundef %4, i64 noundef %5)
  store ptr %call, ptr %3, align 8
  %cmp6 = icmp eq ptr %call, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %6 = load ptr, ptr %error_callback.addr, align 8
  %7 = load ptr, ptr %data.addr, align 8
  %call8 = call ptr @__error()
  %8 = load i32, ptr %call8, align 4
  call void %6(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { allocsize(0) }
attributes #6 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
