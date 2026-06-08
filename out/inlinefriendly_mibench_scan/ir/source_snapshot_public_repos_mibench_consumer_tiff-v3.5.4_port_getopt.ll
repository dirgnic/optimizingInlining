; ModuleID = './source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/port/getopt.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/port/getopt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@opterr = global i32 1, align 4
@optind = global i32 1, align 4
@getopt.place = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optopt = global i32 0, align 4
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@optarg = global ptr null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getopt(i32 noundef %nargc, ptr noundef %nargv, ptr noundef %ostr) #0 {
entry:
  %retval = alloca i32, align 4
  %nargc.addr = alloca i32, align 4
  %nargv.addr = alloca ptr, align 8
  %ostr.addr = alloca ptr, align 8
  %oli = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %nargc, ptr %nargc.addr, align 4
  store ptr %nargv, ptr %nargv.addr, align 8
  store ptr %ostr, ptr %ostr.addr, align 8
  %0 = load ptr, ptr @getopt.place, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @optind, align 4
  %3 = load i32, ptr %nargc.addr, align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load ptr, ptr %nargv.addr, align 8
  %5 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr @getopt.place, align 8
  %7 = load i8, ptr %6, align 1
  %conv = sext i8 %7 to i32
  %cmp1 = icmp ne i32 %conv, 45
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  store ptr @.str, ptr @getopt.place, align 8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr @getopt.place, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %9 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr @getopt.place, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr @getopt.place, align 8
  %11 = load i8, ptr %incdec.ptr, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %12 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr @optind, align 4
  store ptr @.str, ptr @getopt.place, align 8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load ptr, ptr @getopt.place, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr13, ptr @getopt.place, align 8
  %14 = load i8, ptr %13, align 1
  %conv14 = sext i8 %14 to i32
  store i32 %conv14, ptr @optopt, align 4
  %cmp15 = icmp eq i32 %conv14, 58
  br i1 %cmp15, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end12
  %15 = load ptr, ptr %ostr.addr, align 8
  %16 = load i32, ptr @optopt, align 4
  %call = call ptr @strchr(ptr noundef %15, i32 noundef %16)
  store ptr %call, ptr %oli, align 8
  %tobool18 = icmp ne ptr %call, null
  br i1 %tobool18, label %if.end37, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17, %if.end12
  %17 = load i32, ptr @optopt, align 4
  %cmp20 = icmp eq i32 %17, 45
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  store i32 -1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then19
  %18 = load ptr, ptr @getopt.place, align 8
  %19 = load i8, ptr %18, align 1
  %tobool24 = icmp ne i8 %19, 0
  br i1 %tobool24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end23
  %20 = load i32, ptr @optind, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, ptr @optind, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23
  %21 = load i32, ptr @opterr, align 4
  %tobool28 = icmp ne i32 %21, 0
  br i1 %tobool28, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.end27
  %22 = load ptr, ptr %nargv.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %call30 = call ptr @strrchr(ptr noundef %23, i32 noundef 47)
  store ptr %call30, ptr %p, align 8
  %tobool31 = icmp ne ptr %call30, null
  br i1 %tobool31, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then29
  %24 = load ptr, ptr %nargv.addr, align 8
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %p, align 8
  br label %if.end34

if.else:                                          ; preds = %if.then29
  %26 = load ptr, ptr %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr33, ptr %p, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = load ptr, ptr %p, align 8
  %29 = load i32, ptr @optopt, align 4
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.1, ptr noundef %28, i32 noundef %29)
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end27
  store i32 63, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false17
  %30 = load ptr, ptr %oli, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr38, ptr %oli, align 8
  %31 = load i8, ptr %incdec.ptr38, align 1
  %conv39 = sext i8 %31 to i32
  %cmp40 = icmp ne i32 %conv39, 58
  br i1 %cmp40, label %if.then42, label %if.else47

if.then42:                                        ; preds = %if.end37
  store ptr null, ptr @optarg, align 8
  %32 = load ptr, ptr @getopt.place, align 8
  %33 = load i8, ptr %32, align 1
  %tobool43 = icmp ne i8 %33, 0
  br i1 %tobool43, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.then42
  %34 = load i32, ptr @optind, align 4
  %inc45 = add nsw i32 %34, 1
  store i32 %inc45, ptr @optind, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then42
  br label %if.end71

if.else47:                                        ; preds = %if.end37
  %35 = load ptr, ptr @getopt.place, align 8
  %36 = load i8, ptr %35, align 1
  %tobool48 = icmp ne i8 %36, 0
  br i1 %tobool48, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else47
  %37 = load ptr, ptr @getopt.place, align 8
  store ptr %37, ptr @optarg, align 8
  br label %if.end69

if.else50:                                        ; preds = %if.else47
  %38 = load i32, ptr %nargc.addr, align 4
  %39 = load i32, ptr @optind, align 4
  %inc51 = add nsw i32 %39, 1
  store i32 %inc51, ptr @optind, align 4
  %cmp52 = icmp sle i32 %38, %inc51
  br i1 %cmp52, label %if.then54, label %if.else65

if.then54:                                        ; preds = %if.else50
  store ptr @.str, ptr @getopt.place, align 8
  %40 = load ptr, ptr %nargv.addr, align 8
  %41 = load ptr, ptr %40, align 8
  %call55 = call ptr @strrchr(ptr noundef %41, i32 noundef 47)
  store ptr %call55, ptr %p, align 8
  %tobool56 = icmp ne ptr %call55, null
  br i1 %tobool56, label %if.else58, label %if.then57

if.then57:                                        ; preds = %if.then54
  %42 = load ptr, ptr %nargv.addr, align 8
  %43 = load ptr, ptr %42, align 8
  store ptr %43, ptr %p, align 8
  br label %if.end60

if.else58:                                        ; preds = %if.then54
  %44 = load ptr, ptr %p, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr59, ptr %p, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then57
  %45 = load i32, ptr @opterr, align 4
  %tobool61 = icmp ne i32 %45, 0
  br i1 %tobool61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end60
  %46 = load ptr, ptr @__stderrp, align 8
  %47 = load ptr, ptr %p, align 8
  %48 = load i32, ptr @optopt, align 4
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.2, ptr noundef %47, i32 noundef %48)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60
  store i32 63, ptr %retval, align 4
  br label %return

if.else65:                                        ; preds = %if.else50
  %49 = load ptr, ptr %nargv.addr, align 8
  %50 = load i32, ptr @optind, align 4
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %49, i64 %idxprom66
  %51 = load ptr, ptr %arrayidx67, align 8
  store ptr %51, ptr @optarg, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else65
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then49
  store ptr @.str, ptr @getopt.place, align 8
  %52 = load i32, ptr @optind, align 4
  %inc70 = add nsw i32 %52, 1
  store i32 %inc70, ptr @optind, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.end46
  %53 = load i32, ptr @optopt, align 4
  store i32 %53, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.end64, %if.end36, %if.then22, %if.then10, %if.then3
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

declare ptr @strrchr(ptr noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
