; ModuleID = './source_snapshot/DCMTK/config/tests/iconv.cc'
source_filename = "./source_snapshot/DCMTK/config/tests/iconv.cc"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@__const.main.input = private unnamed_addr constant [2 x i8] c"\F6\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"AbortTranscodingOnIllegalSequence\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"DiscardIllegalSequences\00", align 1

; Function Attrs: mustprogress noinline norecurse optnone ssp uwtable(sync)
define noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %input = alloca [2 x i8], align 1
  %output = alloca [8 x i8], align 1
  %i = alloca ptr, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %ins = alloca i64, align 8
  %outs = alloca i64, align 8
  %result = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %input, ptr align 1 @__const.main.input, i64 2, i1 false)
  %call = call ptr @iconv_open(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %i, align 8
  %0 = load ptr, ptr %i, align 8
  %cmp = icmp ne ptr inttoptr (i64 -1 to ptr), %0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %i, align 8
  %call1 = call i64 @iconv(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %arraydecay = getelementptr inbounds [2 x i8], ptr %input, i64 0, i64 0
  store ptr %arraydecay, ptr %in, align 8
  %arraydecay2 = getelementptr inbounds [8 x i8], ptr %output, i64 0, i64 0
  store ptr %arraydecay2, ptr %out, align 8
  store i64 1, ptr %ins, align 8
  store i64 8, ptr %outs, align 8
  %2 = load ptr, ptr %i, align 8
  %call3 = call i64 @iconv(ptr noundef %2, ptr noundef %in, ptr noundef %ins, ptr noundef %out, ptr noundef %outs)
  store i64 %call3, ptr %result, align 8
  %3 = load ptr, ptr %i, align 8
  %call4 = call i32 @iconv_close(ptr noundef %3)
  %4 = load i64, ptr %result, align 8
  %cmp5 = icmp eq i64 -1, %4
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i64, ptr %outs, align 8
  %cmp8 = icmp eq i64 8, %5
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then9, %if.then6
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @iconv_open(ptr noundef, ptr noundef) #2

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @iconv_close(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress noinline norecurse optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
