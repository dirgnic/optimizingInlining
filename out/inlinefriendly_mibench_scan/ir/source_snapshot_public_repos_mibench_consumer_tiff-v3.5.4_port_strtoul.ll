; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/port/strtoul.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/port/strtoul.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @strtoul(ptr noundef %nptr, ptr noundef %endptr, i32 noundef %base) #0 {
entry:
  %nptr.addr = alloca ptr, align 8
  %endptr.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %acc = alloca i64, align 8
  %c = alloca i32, align 4
  %cutoff = alloca i64, align 8
  %neg = alloca i32, align 4
  %any = alloca i32, align 4
  %cutlim = alloca i32, align 4
  store ptr %nptr, ptr %nptr.addr, align 8
  store ptr %endptr, ptr %endptr.addr, align 8
  store i32 %base, ptr %base.addr, align 4
  %0 = load ptr, ptr %nptr.addr, align 8
  store ptr %0, ptr %s, align 8
  store i32 0, ptr %neg, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %s, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %s, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, ptr %c, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %c, align 4
  %call = call i32 @isspace(i32 noundef %3) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %4, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store i32 1, ptr %neg, align 4
  %5 = load ptr, ptr %s, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr2, ptr %s, align 8
  %6 = load i8, ptr %5, align 1
  %conv3 = sext i8 %6 to i32
  store i32 %conv3, ptr %c, align 4
  br label %if.end9

if.else:                                          ; preds = %do.end
  %7 = load i32, ptr %c, align 4
  %cmp4 = icmp eq i32 %7, 43
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %8 = load ptr, ptr %s, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr7, ptr %s, align 8
  %9 = load i8, ptr %8, align 1
  %conv8 = sext i8 %9 to i32
  store i32 %conv8, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %10 = load i32, ptr %base.addr, align 4
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, ptr %base.addr, align 4
  %cmp12 = icmp eq i32 %11, 16
  br i1 %cmp12, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end9
  %12 = load i32, ptr %c, align 4
  %cmp14 = icmp eq i32 %12, 48
  br i1 %cmp14, label %land.lhs.true16, label %if.end26

land.lhs.true16:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %s, align 8
  %14 = load i8, ptr %13, align 1
  %conv17 = sext i8 %14 to i32
  %cmp18 = icmp eq i32 %conv17, 120
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true16
  %15 = load ptr, ptr %s, align 8
  %16 = load i8, ptr %15, align 1
  %conv21 = sext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 88
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false20, %land.lhs.true16
  %17 = load ptr, ptr %s, align 8
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 1
  %18 = load i8, ptr %arrayidx, align 1
  %conv25 = sext i8 %18 to i32
  store i32 %conv25, ptr %c, align 4
  %19 = load ptr, ptr %s, align 8
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 2
  store ptr %add.ptr, ptr %s, align 8
  store i32 16, ptr %base.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %lor.lhs.false20, %land.lhs.true, %lor.lhs.false
  %20 = load i32, ptr %base.addr, align 4
  %cmp27 = icmp eq i32 %20, 0
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  %21 = load i32, ptr %c, align 4
  %cmp30 = icmp eq i32 %21, 48
  %22 = zext i1 %cmp30 to i64
  %cond = select i1 %cmp30, i32 8, i32 10
  store i32 %cond, ptr %base.addr, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26
  %23 = load i32, ptr %base.addr, align 4
  %conv33 = sext i32 %23 to i64
  %div = udiv i64 -1, %conv33
  store i64 %div, ptr %cutoff, align 8
  %24 = load i32, ptr %base.addr, align 4
  %conv34 = sext i32 %24 to i64
  %rem = urem i64 -1, %conv34
  %conv35 = trunc i64 %rem to i32
  store i32 %conv35, ptr %cutlim, align 4
  store i64 0, ptr %acc, align 8
  store i32 0, ptr %any, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end32
  %25 = load i32, ptr %c, align 4
  %call36 = call i32 @isdigit(i32 noundef %25) #3
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %for.cond
  %26 = load i32, ptr %c, align 4
  %sub = sub nsw i32 %26, 48
  store i32 %sub, ptr %c, align 4
  br label %if.end49

if.else39:                                        ; preds = %for.cond
  %27 = load i32, ptr %c, align 4
  %call40 = call i32 @isalpha(i32 noundef %27) #3
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.else47

if.then42:                                        ; preds = %if.else39
  %28 = load i32, ptr %c, align 4
  %call43 = call i32 @isupper(i32 noundef %28) #3
  %tobool44 = icmp ne i32 %call43, 0
  %29 = zext i1 %tobool44 to i64
  %cond45 = select i1 %tobool44, i32 55, i32 87
  %30 = load i32, ptr %c, align 4
  %sub46 = sub nsw i32 %30, %cond45
  store i32 %sub46, ptr %c, align 4
  br label %if.end48

if.else47:                                        ; preds = %if.else39
  br label %for.end

if.end48:                                         ; preds = %if.then42
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then38
  %31 = load i32, ptr %c, align 4
  %32 = load i32, ptr %base.addr, align 4
  %cmp50 = icmp sge i32 %31, %32
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  br label %for.end

if.end53:                                         ; preds = %if.end49
  %33 = load i32, ptr %any, align 4
  %cmp54 = icmp slt i32 %33, 0
  br i1 %cmp54, label %if.then65, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end53
  %34 = load i64, ptr %acc, align 8
  %35 = load i64, ptr %cutoff, align 8
  %cmp57 = icmp ugt i64 %34, %35
  br i1 %cmp57, label %if.then65, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %36 = load i64, ptr %acc, align 8
  %37 = load i64, ptr %cutoff, align 8
  %cmp60 = icmp eq i64 %36, %37
  br i1 %cmp60, label %land.lhs.true62, label %if.else66

land.lhs.true62:                                  ; preds = %lor.lhs.false59
  %38 = load i32, ptr %c, align 4
  %39 = load i32, ptr %cutlim, align 4
  %cmp63 = icmp sgt i32 %38, %39
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %land.lhs.true62, %lor.lhs.false56, %if.end53
  store i32 -1, ptr %any, align 4
  br label %if.end69

if.else66:                                        ; preds = %land.lhs.true62, %lor.lhs.false59
  store i32 1, ptr %any, align 4
  %40 = load i32, ptr %base.addr, align 4
  %conv67 = sext i32 %40 to i64
  %41 = load i64, ptr %acc, align 8
  %mul = mul i64 %41, %conv67
  store i64 %mul, ptr %acc, align 8
  %42 = load i32, ptr %c, align 4
  %conv68 = sext i32 %42 to i64
  %43 = load i64, ptr %acc, align 8
  %add = add i64 %43, %conv68
  store i64 %add, ptr %acc, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.else66, %if.then65
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %44 = load ptr, ptr %s, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr70, ptr %s, align 8
  %45 = load i8, ptr %44, align 1
  %conv71 = sext i8 %45 to i32
  store i32 %conv71, ptr %c, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then52, %if.else47
  %46 = load i32, ptr %any, align 4
  %cmp72 = icmp slt i32 %46, 0
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %for.end
  store i64 -1, ptr %acc, align 8
  %call75 = call ptr @__error()
  store i32 34, ptr %call75, align 4
  br label %if.end81

if.else76:                                        ; preds = %for.end
  %47 = load i32, ptr %neg, align 4
  %tobool77 = icmp ne i32 %47, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.else76
  %48 = load i64, ptr %acc, align 8
  %sub79 = sub i64 0, %48
  store i64 %sub79, ptr %acc, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else76
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then74
  %49 = load ptr, ptr %endptr.addr, align 8
  %cmp82 = icmp ne ptr %49, null
  br i1 %cmp82, label %if.then84, label %if.end88

if.then84:                                        ; preds = %if.end81
  %50 = load i32, ptr %any, align 4
  %tobool85 = icmp ne i32 %50, 0
  br i1 %tobool85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then84
  %51 = load ptr, ptr %s, align 8
  %add.ptr86 = getelementptr inbounds i8, ptr %51, i64 -1
  br label %cond.end

cond.false:                                       ; preds = %if.then84
  %52 = load ptr, ptr %nptr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond87 = phi ptr [ %add.ptr86, %cond.true ], [ %52, %cond.false ]
  %53 = load ptr, ptr %endptr.addr, align 8
  store ptr %cond87, ptr %53, align 8
  br label %if.end88

if.end88:                                         ; preds = %cond.end, %if.end81
  %54 = load i64, ptr %acc, align 8
  ret i64 %54
}

; Function Attrs: nounwind readonly willreturn
declare i32 @isspace(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isdigit(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isalpha(i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare i32 @isupper(i32 noundef) #1

declare ptr @__error() #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind readonly willreturn }

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
