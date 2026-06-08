; ModuleID = './source_snapshot/public_repos/mibench/automotive/bitcount/bitfiles.c'
source_filename = "./source_snapshot/public_repos/mibench/automotive/bitcount/bitfiles.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.bfile = type { ptr, i8, i8, i8, i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @bfopen(ptr noundef %name, ptr noundef %mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %bf = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %mode, ptr %mode.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %bf, align 8
  %0 = load ptr, ptr %bf, align 8
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8
  %2 = load ptr, ptr %mode.addr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %bf, align 8
  %file = getelementptr inbounds %struct.bfile, ptr %3, i32 0, i32 0
  store ptr %call1, ptr %file, align 8
  %4 = load ptr, ptr %bf, align 8
  %file2 = getelementptr inbounds %struct.bfile, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %file2, align 8
  %cmp3 = icmp eq ptr null, %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %bf, align 8
  call void @free(ptr noundef %6)
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %bf, align 8
  %rcnt = getelementptr inbounds %struct.bfile, ptr %7, i32 0, i32 2
  store i8 0, ptr %rcnt, align 1
  %8 = load ptr, ptr %bf, align 8
  %wcnt = getelementptr inbounds %struct.bfile, ptr %8, i32 0, i32 4
  store i8 0, ptr %wcnt, align 1
  %9 = load ptr, ptr %bf, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @bfread(ptr noundef %bf) #0 {
entry:
  %bf.addr = alloca ptr, align 8
  store ptr %bf, ptr %bf.addr, align 8
  %0 = load ptr, ptr %bf.addr, align 8
  %rcnt = getelementptr inbounds %struct.bfile, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %rcnt, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 0, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bf.addr, align 8
  %file = getelementptr inbounds %struct.bfile, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %file, align 8
  %call = call i32 @fgetc(ptr noundef %3)
  %conv2 = trunc i32 %call to i8
  %4 = load ptr, ptr %bf.addr, align 8
  %rbuf = getelementptr inbounds %struct.bfile, ptr %4, i32 0, i32 1
  store i8 %conv2, ptr %rbuf, align 8
  %5 = load ptr, ptr %bf.addr, align 8
  %rcnt3 = getelementptr inbounds %struct.bfile, ptr %5, i32 0, i32 2
  store i8 8, ptr %rcnt3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %bf.addr, align 8
  %rcnt4 = getelementptr inbounds %struct.bfile, ptr %6, i32 0, i32 2
  %7 = load i8, ptr %rcnt4, align 1
  %dec = add i8 %7, -1
  store i8 %dec, ptr %rcnt4, align 1
  %8 = load ptr, ptr %bf.addr, align 8
  %rbuf5 = getelementptr inbounds %struct.bfile, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %rbuf5, align 8
  %conv6 = sext i8 %9 to i32
  %10 = load ptr, ptr %bf.addr, align 8
  %rcnt7 = getelementptr inbounds %struct.bfile, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %rcnt7, align 1
  %conv8 = sext i8 %11 to i32
  %shl = shl i32 1, %conv8
  %and = and i32 %conv6, %shl
  %cmp9 = icmp ne i32 %and, 0
  %conv10 = zext i1 %cmp9 to i32
  ret i32 %conv10
}

declare i32 @fgetc(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bfwrite(i32 noundef %bit, ptr noundef %bf) #0 {
entry:
  %bit.addr = alloca i32, align 4
  %bf.addr = alloca ptr, align 8
  store i32 %bit, ptr %bit.addr, align 4
  store ptr %bf, ptr %bf.addr, align 8
  %0 = load ptr, ptr %bf.addr, align 8
  %wcnt = getelementptr inbounds %struct.bfile, ptr %0, i32 0, i32 4
  %1 = load i8, ptr %wcnt, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 8, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bf.addr, align 8
  %wbuf = getelementptr inbounds %struct.bfile, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %wbuf, align 2
  %conv2 = sext i8 %3 to i32
  %4 = load ptr, ptr %bf.addr, align 8
  %file = getelementptr inbounds %struct.bfile, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %file, align 8
  %call = call i32 @fputc(i32 noundef %conv2, ptr noundef %5)
  %6 = load ptr, ptr %bf.addr, align 8
  %wcnt3 = getelementptr inbounds %struct.bfile, ptr %6, i32 0, i32 4
  store i8 0, ptr %wcnt3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %bf.addr, align 8
  %wcnt4 = getelementptr inbounds %struct.bfile, ptr %7, i32 0, i32 4
  %8 = load i8, ptr %wcnt4, align 1
  %inc = add i8 %8, 1
  store i8 %inc, ptr %wcnt4, align 1
  %9 = load ptr, ptr %bf.addr, align 8
  %wbuf5 = getelementptr inbounds %struct.bfile, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %wbuf5, align 2
  %conv6 = sext i8 %10 to i32
  %shl = shl i32 %conv6, 1
  %conv7 = trunc i32 %shl to i8
  store i8 %conv7, ptr %wbuf5, align 2
  %11 = load i32, ptr %bit.addr, align 4
  %and = and i32 %11, 1
  %12 = load ptr, ptr %bf.addr, align 8
  %wbuf8 = getelementptr inbounds %struct.bfile, ptr %12, i32 0, i32 3
  %13 = load i8, ptr %wbuf8, align 2
  %conv9 = sext i8 %13 to i32
  %or = or i32 %conv9, %and
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, ptr %wbuf8, align 2
  ret void
}

declare i32 @fputc(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @bfclose(ptr noundef %bf) #0 {
entry:
  %bf.addr = alloca ptr, align 8
  store ptr %bf, ptr %bf.addr, align 8
  %0 = load ptr, ptr %bf.addr, align 8
  %file = getelementptr inbounds %struct.bfile, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %file, align 8
  %call = call i32 @fclose(ptr noundef %1)
  %2 = load ptr, ptr %bf.addr, align 8
  call void @free(ptr noundef %2)
  ret void
}

declare i32 @fclose(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
