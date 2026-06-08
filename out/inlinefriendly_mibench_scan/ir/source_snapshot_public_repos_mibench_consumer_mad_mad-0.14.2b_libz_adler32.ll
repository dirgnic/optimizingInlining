; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/adler32.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/adler32.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @adler32(i64 noundef %adler, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %adler.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s1 = alloca i64, align 8
  %s2 = alloca i64, align 8
  %k = alloca i32, align 4
  store i64 %adler, ptr %adler.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i64, ptr %adler.addr, align 8
  %and = and i64 %0, 65535
  store i64 %and, ptr %s1, align 8
  %1 = load i64, ptr %adler.addr, align 8
  %shr = lshr i64 %1, 16
  %and1 = and i64 %shr, 65535
  store i64 %and1, ptr %s2, align 8
  %2 = load ptr, ptr %buf.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end75, %if.end
  %3 = load i32, ptr %len.addr, align 4
  %cmp2 = icmp ugt i32 %3, 0
  br i1 %cmp2, label %while.body, label %while.end77

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %len.addr, align 4
  %cmp3 = icmp ult i32 %4, 5552
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %5 = load i32, ptr %len.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 5552, %cond.false ]
  store i32 %cond, ptr %k, align 4
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %len.addr, align 4
  %sub = sub i32 %7, %6
  store i32 %sub, ptr %len.addr, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %cond.end
  %8 = load i32, ptr %k, align 4
  %cmp5 = icmp sge i32 %8, 16
  br i1 %cmp5, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond4
  %9 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i64
  %11 = load i64, ptr %s1, align 8
  %add = add i64 %11, %conv
  store i64 %add, ptr %s1, align 8
  %12 = load i64, ptr %s1, align 8
  %13 = load i64, ptr %s2, align 8
  %add7 = add i64 %13, %12
  store i64 %add7, ptr %s2, align 8
  %14 = load ptr, ptr %buf.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %15 to i64
  %16 = load i64, ptr %s1, align 8
  %add10 = add i64 %16, %conv9
  store i64 %add10, ptr %s1, align 8
  %17 = load i64, ptr %s1, align 8
  %18 = load i64, ptr %s2, align 8
  %add11 = add i64 %18, %17
  store i64 %add11, ptr %s2, align 8
  %19 = load ptr, ptr %buf.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %20 to i64
  %21 = load i64, ptr %s1, align 8
  %add14 = add i64 %21, %conv13
  store i64 %add14, ptr %s1, align 8
  %22 = load i64, ptr %s1, align 8
  %23 = load i64, ptr %s2, align 8
  %add15 = add i64 %23, %22
  store i64 %add15, ptr %s2, align 8
  %24 = load ptr, ptr %buf.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %24, i64 3
  %25 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %25 to i64
  %26 = load i64, ptr %s1, align 8
  %add18 = add i64 %26, %conv17
  store i64 %add18, ptr %s1, align 8
  %27 = load i64, ptr %s1, align 8
  %28 = load i64, ptr %s2, align 8
  %add19 = add i64 %28, %27
  store i64 %add19, ptr %s2, align 8
  %29 = load ptr, ptr %buf.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %29, i64 4
  %30 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %30 to i64
  %31 = load i64, ptr %s1, align 8
  %add22 = add i64 %31, %conv21
  store i64 %add22, ptr %s1, align 8
  %32 = load i64, ptr %s1, align 8
  %33 = load i64, ptr %s2, align 8
  %add23 = add i64 %33, %32
  store i64 %add23, ptr %s2, align 8
  %34 = load ptr, ptr %buf.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %34, i64 5
  %35 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %35 to i64
  %36 = load i64, ptr %s1, align 8
  %add26 = add i64 %36, %conv25
  store i64 %add26, ptr %s1, align 8
  %37 = load i64, ptr %s1, align 8
  %38 = load i64, ptr %s2, align 8
  %add27 = add i64 %38, %37
  store i64 %add27, ptr %s2, align 8
  %39 = load ptr, ptr %buf.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %39, i64 6
  %40 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %40 to i64
  %41 = load i64, ptr %s1, align 8
  %add30 = add i64 %41, %conv29
  store i64 %add30, ptr %s1, align 8
  %42 = load i64, ptr %s1, align 8
  %43 = load i64, ptr %s2, align 8
  %add31 = add i64 %43, %42
  store i64 %add31, ptr %s2, align 8
  %44 = load ptr, ptr %buf.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %44, i64 7
  %45 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %45 to i64
  %46 = load i64, ptr %s1, align 8
  %add34 = add i64 %46, %conv33
  store i64 %add34, ptr %s1, align 8
  %47 = load i64, ptr %s1, align 8
  %48 = load i64, ptr %s2, align 8
  %add35 = add i64 %48, %47
  store i64 %add35, ptr %s2, align 8
  %49 = load ptr, ptr %buf.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %49, i64 8
  %50 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %50 to i64
  %51 = load i64, ptr %s1, align 8
  %add38 = add i64 %51, %conv37
  store i64 %add38, ptr %s1, align 8
  %52 = load i64, ptr %s1, align 8
  %53 = load i64, ptr %s2, align 8
  %add39 = add i64 %53, %52
  store i64 %add39, ptr %s2, align 8
  %54 = load ptr, ptr %buf.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %54, i64 9
  %55 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %55 to i64
  %56 = load i64, ptr %s1, align 8
  %add42 = add i64 %56, %conv41
  store i64 %add42, ptr %s1, align 8
  %57 = load i64, ptr %s1, align 8
  %58 = load i64, ptr %s2, align 8
  %add43 = add i64 %58, %57
  store i64 %add43, ptr %s2, align 8
  %59 = load ptr, ptr %buf.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %59, i64 10
  %60 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %60 to i64
  %61 = load i64, ptr %s1, align 8
  %add46 = add i64 %61, %conv45
  store i64 %add46, ptr %s1, align 8
  %62 = load i64, ptr %s1, align 8
  %63 = load i64, ptr %s2, align 8
  %add47 = add i64 %63, %62
  store i64 %add47, ptr %s2, align 8
  %64 = load ptr, ptr %buf.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %64, i64 11
  %65 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %65 to i64
  %66 = load i64, ptr %s1, align 8
  %add50 = add i64 %66, %conv49
  store i64 %add50, ptr %s1, align 8
  %67 = load i64, ptr %s1, align 8
  %68 = load i64, ptr %s2, align 8
  %add51 = add i64 %68, %67
  store i64 %add51, ptr %s2, align 8
  %69 = load ptr, ptr %buf.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %69, i64 12
  %70 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %70 to i64
  %71 = load i64, ptr %s1, align 8
  %add54 = add i64 %71, %conv53
  store i64 %add54, ptr %s1, align 8
  %72 = load i64, ptr %s1, align 8
  %73 = load i64, ptr %s2, align 8
  %add55 = add i64 %73, %72
  store i64 %add55, ptr %s2, align 8
  %74 = load ptr, ptr %buf.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %74, i64 13
  %75 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %75 to i64
  %76 = load i64, ptr %s1, align 8
  %add58 = add i64 %76, %conv57
  store i64 %add58, ptr %s1, align 8
  %77 = load i64, ptr %s1, align 8
  %78 = load i64, ptr %s2, align 8
  %add59 = add i64 %78, %77
  store i64 %add59, ptr %s2, align 8
  %79 = load ptr, ptr %buf.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %79, i64 14
  %80 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %80 to i64
  %81 = load i64, ptr %s1, align 8
  %add62 = add i64 %81, %conv61
  store i64 %add62, ptr %s1, align 8
  %82 = load i64, ptr %s1, align 8
  %83 = load i64, ptr %s2, align 8
  %add63 = add i64 %83, %82
  store i64 %add63, ptr %s2, align 8
  %84 = load ptr, ptr %buf.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, ptr %84, i64 15
  %85 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %85 to i64
  %86 = load i64, ptr %s1, align 8
  %add66 = add i64 %86, %conv65
  store i64 %add66, ptr %s1, align 8
  %87 = load i64, ptr %s1, align 8
  %88 = load i64, ptr %s2, align 8
  %add67 = add i64 %88, %87
  store i64 %add67, ptr %s2, align 8
  %89 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %89, i64 16
  store ptr %add.ptr, ptr %buf.addr, align 8
  %90 = load i32, ptr %k, align 4
  %sub68 = sub nsw i32 %90, 16
  store i32 %sub68, ptr %k, align 4
  br label %while.cond4, !llvm.loop !6

while.end:                                        ; preds = %while.cond4
  %91 = load i32, ptr %k, align 4
  %cmp69 = icmp ne i32 %91, 0
  br i1 %cmp69, label %if.then71, label %if.end75

if.then71:                                        ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then71
  %92 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %92, i32 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %93 = load i8, ptr %92, align 1
  %conv72 = zext i8 %93 to i64
  %94 = load i64, ptr %s1, align 8
  %add73 = add i64 %94, %conv72
  store i64 %add73, ptr %s1, align 8
  %95 = load i64, ptr %s1, align 8
  %96 = load i64, ptr %s2, align 8
  %add74 = add i64 %96, %95
  store i64 %add74, ptr %s2, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %97 = load i32, ptr %k, align 4
  %dec = add nsw i32 %97, -1
  store i32 %dec, ptr %k, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %if.end75

if.end75:                                         ; preds = %do.end, %while.end
  %98 = load i64, ptr %s1, align 8
  %rem = urem i64 %98, 65521
  store i64 %rem, ptr %s1, align 8
  %99 = load i64, ptr %s2, align 8
  %rem76 = urem i64 %99, 65521
  store i64 %rem76, ptr %s2, align 8
  br label %while.cond, !llvm.loop !9

while.end77:                                      ; preds = %while.cond
  %100 = load i64, ptr %s2, align 8
  %shl = shl i64 %100, 16
  %101 = load i64, ptr %s1, align 8
  %or = or i64 %shl, %101
  store i64 %or, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end77, %if.then
  %102 = load i64, ptr %retval, align 8
  ret i64 %102
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
!9 = distinct !{!9, !7}
