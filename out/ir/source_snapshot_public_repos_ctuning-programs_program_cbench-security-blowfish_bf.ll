; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@.str = private unnamed_addr constant [15 x i8] c"CT_REPEAT_MAIN\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: blowfish {e|d} <intput> <output> key\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"key must be in hexadecimal notation\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Bad key value.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %key = alloca %struct.bf_key_st, align 8
  %ukey = alloca [32 x i8], align 1
  %indata = alloca [40 x i8], align 1
  %outdata = alloca [40 x i8], align 1
  %ivec = alloca [32 x i8], align 1
  %num = alloca i32, align 4
  %by = alloca i32, align 4
  %i = alloca i32, align 4
  %encordec = alloca i32, align 4
  %cp = alloca ptr, align 8
  %ch = alloca i8, align 1
  %fp = alloca ptr, align 8
  %fp2 = alloca ptr, align 8
  %ct_repeat = alloca i64, align 8
  %ct_repeat_max = alloca i64, align 8
  %ct_return = alloca i32, align 4
  %current_num = alloca i32, align 4
  %current_ivec = alloca [32 x i8], align 1
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %ivec, i8 0, i64 32, i1 false)
  store i32 0, ptr %num, align 4
  store i32 0, ptr %by, align 4
  store i32 0, ptr %i, align 4
  store i32 -1, ptr %encordec, align 4
  store i64 0, ptr %ct_repeat, align 8
  store i64 1, ptr %ct_repeat_max, align 8
  store i32 0, ptr %ct_return, align 4
  %call = call ptr @getenv(ptr noundef @.str)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @getenv(ptr noundef @.str)
  %call2 = call i64 @atol(ptr noundef %call1)
  store i64 %call2, ptr %ct_repeat_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %cmp3 = icmp slt i32 %0, 3
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %cmp7 = icmp eq i32 %conv, 101
  br i1 %cmp7, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx9, align 8
  %7 = load i8, ptr %6, align 1
  %conv10 = sext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 69
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %if.end6
  store i32 1, ptr %encordec, align 4
  br label %if.end27

if.else:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx14, align 8
  %10 = load i8, ptr %9, align 1
  %conv15 = sext i8 %10 to i32
  %cmp16 = icmp eq i32 %conv15, 100
  br i1 %cmp16, label %if.then23, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.else
  %11 = load ptr, ptr %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %11, i64 1
  %12 = load ptr, ptr %arrayidx19, align 8
  %13 = load i8, ptr %12, align 1
  %conv20 = sext i8 %13 to i32
  %cmp21 = icmp eq i32 %conv20, 68
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %lor.lhs.false18, %if.else
  store i32 0, ptr %encordec, align 4
  br label %if.end26

if.else24:                                        ; preds = %lor.lhs.false18
  %14 = load ptr, ptr @__stderrp, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end26:                                         ; preds = %if.then23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then13
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %15, i64 4
  %16 = load ptr, ptr %arrayidx28, align 8
  store ptr %16, ptr %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end67, %if.end27
  %17 = load i32, ptr %i, align 4
  %cmp29 = icmp slt i32 %17, 64
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %cp, align 8
  %19 = load i8, ptr %18, align 1
  %conv31 = sext i8 %19 to i32
  %tobool = icmp ne i32 %conv31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  %22 = load i8, ptr %21, align 1
  %conv32 = sext i8 %22 to i32
  %call33 = call i32 @toupper(i32 noundef %conv32) #7
  %conv34 = trunc i32 %call33 to i8
  store i8 %conv34, ptr %ch, align 1
  %23 = load i8, ptr %ch, align 1
  %conv35 = sext i8 %23 to i32
  %cmp36 = icmp sge i32 %conv35, 48
  br i1 %cmp36, label %land.lhs.true, label %if.else43

land.lhs.true:                                    ; preds = %while.body
  %24 = load i8, ptr %ch, align 1
  %conv38 = sext i8 %24 to i32
  %cmp39 = icmp sle i32 %conv38, 57
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %land.lhs.true
  %25 = load i32, ptr %by, align 4
  %shl = shl i32 %25, 4
  %26 = load i8, ptr %ch, align 1
  %conv42 = sext i8 %26 to i32
  %add = add nsw i32 %shl, %conv42
  %sub = sub nsw i32 %add, 48
  store i32 %sub, ptr %by, align 4
  br label %if.end60

if.else43:                                        ; preds = %land.lhs.true, %while.body
  %27 = load i8, ptr %ch, align 1
  %conv44 = sext i8 %27 to i32
  %cmp45 = icmp sge i32 %conv44, 65
  br i1 %cmp45, label %land.lhs.true47, label %if.else57

land.lhs.true47:                                  ; preds = %if.else43
  %28 = load i8, ptr %ch, align 1
  %conv48 = sext i8 %28 to i32
  %cmp49 = icmp sle i32 %conv48, 70
  br i1 %cmp49, label %if.then51, label %if.else57

if.then51:                                        ; preds = %land.lhs.true47
  %29 = load i32, ptr %by, align 4
  %shl52 = shl i32 %29, 4
  %30 = load i8, ptr %ch, align 1
  %conv53 = sext i8 %30 to i32
  %add54 = add nsw i32 %shl52, %conv53
  %sub55 = sub nsw i32 %add54, 65
  %add56 = add nsw i32 %sub55, 10
  store i32 %add56, ptr %by, align 4
  br label %if.end59

if.else57:                                        ; preds = %land.lhs.true47, %if.else43
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end59:                                         ; preds = %if.then51
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then41
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  %and = and i32 %31, 1
  %tobool61 = icmp ne i32 %and, 0
  br i1 %tobool61, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.end60
  %32 = load i32, ptr %by, align 4
  %and63 = and i32 %32, 255
  %conv64 = trunc i32 %and63 to i8
  %33 = load i32, ptr %i, align 4
  %div = sdiv i32 %33, 2
  %sub65 = sub nsw i32 %div, 1
  %idxprom = sext i32 %sub65 to i64
  %arrayidx66 = getelementptr inbounds [32 x i8], ptr %ukey, i64 0, i64 %idxprom
  store i8 %conv64, ptr %arrayidx66, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end60
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %arraydecay = getelementptr inbounds [32 x i8], ptr %ukey, i64 0, i64 0
  call void @BF_set_key(ptr noundef %key, i32 noundef 8, ptr noundef %arraydecay)
  %34 = load ptr, ptr %cp, align 8
  %35 = load i8, ptr %34, align 1
  %tobool68 = icmp ne i8 %35, 0
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %while.end
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end71:                                         ; preds = %while.end
  %36 = load ptr, ptr %argv.addr, align 8
  %arrayidx72 = getelementptr inbounds ptr, ptr %36, i64 2
  %37 = load ptr, ptr %arrayidx72, align 8
  %call73 = call ptr @"\01_fopen"(ptr noundef %37, ptr noundef @.str.4)
  store ptr %call73, ptr %fp, align 8
  %cmp74 = icmp eq ptr %call73, null
  br i1 %cmp74, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end71
  %38 = load ptr, ptr @__stderrp, align 8
  %call77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end78:                                         ; preds = %if.end71
  %39 = load ptr, ptr %argv.addr, align 8
  %arrayidx79 = getelementptr inbounds ptr, ptr %39, i64 3
  %40 = load ptr, ptr %arrayidx79, align 8
  %call80 = call ptr @"\01_fopen"(ptr noundef %40, ptr noundef @.str.5)
  store ptr %call80, ptr %fp2, align 8
  %cmp81 = icmp eq ptr %call80, null
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end78
  %41 = load ptr, ptr @__stderrp, align 8
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end85:                                         ; preds = %if.end78
  store i32 0, ptr %i, align 4
  br label %while.cond86

while.cond86:                                     ; preds = %for.end125, %if.end85
  %42 = load ptr, ptr %fp, align 8
  %call87 = call i32 @feof(ptr noundef %42)
  %tobool88 = icmp ne i32 %call87, 0
  %lnot = xor i1 %tobool88, true
  br i1 %lnot, label %while.body89, label %while.end126

while.body89:                                     ; preds = %while.cond86
  br label %while.cond90

while.cond90:                                     ; preds = %while.body97, %while.body89
  %43 = load ptr, ptr %fp, align 8
  %call91 = call i32 @feof(ptr noundef %43)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %land.end96, label %land.rhs93

land.rhs93:                                       ; preds = %while.cond90
  %44 = load i32, ptr %i, align 4
  %cmp94 = icmp slt i32 %44, 40
  br label %land.end96

land.end96:                                       ; preds = %land.rhs93, %while.cond90
  %45 = phi i1 [ false, %while.cond90 ], [ %cmp94, %land.rhs93 ]
  br i1 %45, label %while.body97, label %while.end103

while.body97:                                     ; preds = %land.end96
  %46 = load ptr, ptr %fp, align 8
  %call98 = call i32 @getc(ptr noundef %46)
  %conv99 = trunc i32 %call98 to i8
  %47 = load i32, ptr %i, align 4
  %inc100 = add nsw i32 %47, 1
  store i32 %inc100, ptr %i, align 4
  %idxprom101 = sext i32 %47 to i64
  %arrayidx102 = getelementptr inbounds [40 x i8], ptr %indata, i64 0, i64 %idxprom101
  store i8 %conv99, ptr %arrayidx102, align 1
  br label %while.cond90, !llvm.loop !8

while.end103:                                     ; preds = %land.end96
  %48 = load i32, ptr %num, align 4
  store i32 %48, ptr %current_num, align 4
  %arraydecay104 = getelementptr inbounds [32 x i8], ptr %current_ivec, i64 0, i64 0
  %arraydecay105 = getelementptr inbounds [32 x i8], ptr %ivec, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay104, ptr align 1 %arraydecay105, i64 32, i1 false)
  store i64 0, ptr %ct_repeat, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end103
  %49 = load i64, ptr %ct_repeat, align 8
  %50 = load i64, ptr %ct_repeat_max, align 8
  %cmp106 = icmp slt i64 %49, %50
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, ptr %current_num, align 4
  store i32 %51, ptr %num, align 4
  %arraydecay108 = getelementptr inbounds [32 x i8], ptr %ivec, i64 0, i64 0
  %arraydecay109 = getelementptr inbounds [32 x i8], ptr %current_ivec, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay108, ptr align 1 %arraydecay109, i64 32, i1 false)
  %arraydecay110 = getelementptr inbounds [40 x i8], ptr %indata, i64 0, i64 0
  %arraydecay111 = getelementptr inbounds [40 x i8], ptr %outdata, i64 0, i64 0
  %52 = load i32, ptr %i, align 4
  %conv112 = sext i32 %52 to i64
  %arraydecay113 = getelementptr inbounds [32 x i8], ptr %ivec, i64 0, i64 0
  %53 = load i32, ptr %encordec, align 4
  call void @BF_cfb64_encrypt(ptr noundef %arraydecay110, ptr noundef %arraydecay111, i64 noundef %conv112, ptr noundef %key, ptr noundef %arraydecay113, ptr noundef %num, i32 noundef %53)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i64, ptr %ct_repeat, align 8
  %inc114 = add nsw i64 %54, 1
  store i64 %inc114, ptr %ct_repeat, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc123, %for.end
  %55 = load i32, ptr %j, align 4
  %56 = load i32, ptr %i, align 4
  %cmp116 = icmp slt i32 %55, %56
  br i1 %cmp116, label %for.body118, label %for.end125

for.body118:                                      ; preds = %for.cond115
  %57 = load i32, ptr %j, align 4
  %idxprom119 = sext i32 %57 to i64
  %arrayidx120 = getelementptr inbounds [40 x i8], ptr %outdata, i64 0, i64 %idxprom119
  %58 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %58 to i32
  %59 = load ptr, ptr %fp2, align 8
  %call122 = call i32 @fputc(i32 noundef %conv121, ptr noundef %59)
  br label %for.inc123

for.inc123:                                       ; preds = %for.body118
  %60 = load i32, ptr %j, align 4
  %inc124 = add nsw i32 %60, 1
  store i32 %inc124, ptr %j, align 4
  br label %for.cond115, !llvm.loop !10

for.end125:                                       ; preds = %for.cond115
  store i32 0, ptr %i, align 4
  br label %while.cond86, !llvm.loop !11

while.end126:                                     ; preds = %while.cond86
  %61 = load ptr, ptr %fp, align 8
  %call127 = call i32 @fclose(ptr noundef %61)
  %62 = load ptr, ptr %fp2, align 8
  %call128 = call i32 @fclose(ptr noundef %62)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @getenv(ptr noundef) #2

declare i64 @atol(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i32 @toupper(i32 noundef) #4

declare i32 @printf(ptr noundef, ...) #2

declare void @BF_set_key(ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i32 @feof(ptr noundef) #2

declare i32 @getc(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @BF_cfb64_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @fputc(i32 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly willreturn }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
