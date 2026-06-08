; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/toast_audio.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/toast_audio.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@in = external global ptr, align 8
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [100 x i8] c"%s: bad (missing?) header in Sun audio file \22%s\22;\0A\09Try one of -u, -a, -l instead (%s -h for help).\0A\00", align 1
@progname = external global ptr, align 8
@inname = external global ptr, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@input = external global ptr, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"%s: warning: file format #%lu for %s not implemented, defaulting to u-law.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".snd\00", align 1
@out = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @audio_init_input() #0 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i64, align 8
  %enc = alloca i64, align 8
  %0 = load ptr, ptr @in, align 8
  %call = call i32 @fgetc(ptr noundef %0)
  %cmp = icmp ne i32 %call, 46
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @in, align 8
  %call1 = call i32 @fgetc(ptr noundef %1)
  %cmp2 = icmp ne i32 %call1, 115
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr @in, align 8
  %call4 = call i32 @fgetc(ptr noundef %2)
  %cmp5 = icmp ne i32 %call4, 110
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load ptr, ptr @in, align 8
  %call7 = call i32 @fgetc(ptr noundef %3)
  %cmp8 = icmp ne i32 %call7, 100
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %4 = load ptr, ptr @in, align 8
  %call10 = call i32 @get_u32(ptr noundef %4, ptr noundef %len)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %5 = load ptr, ptr @in, align 8
  %call12 = call i32 @get_u32(ptr noundef %5, ptr noundef %enc)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %6 = load ptr, ptr @in, align 8
  %call15 = call i32 @get_u32(ptr noundef %6, ptr noundef %enc)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %7 = load ptr, ptr @in, align 8
  %8 = load i64, ptr %len, align 8
  %sub = sub i64 %8, 16
  %call18 = call i32 @fseek(ptr noundef %7, i64 noundef %sub, i32 noundef 1)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %9 = load ptr, ptr @__stderrp, align 8
  %10 = load ptr, ptr @progname, align 8
  %11 = load ptr, ptr @inname, align 8
  %tobool20 = icmp ne ptr %11, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load ptr, ptr @inname, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ @.str.1, %cond.false ]
  %13 = load ptr, ptr @progname, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str, ptr noundef %10, ptr noundef %cond, ptr noundef %13)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false17
  %14 = load i64, ptr %enc, align 8
  switch i64 %14, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb22
    i64 3, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @ulaw_input, ptr @input, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  store ptr @alaw_input, ptr @input, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  store ptr @linear_input, ptr @input, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %15 = load ptr, ptr @__stderrp, align 8
  %16 = load ptr, ptr @progname, align 8
  %17 = load i64, ptr %enc, align 8
  %18 = load ptr, ptr @inname, align 8
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.2, ptr noundef %16, i64 noundef %17, ptr noundef %18)
  store ptr @ulaw_input, ptr @input, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %sw.bb22, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %cond.end
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i32 @fgetc(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @get_u32(ptr noundef %f, ptr noundef %up) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %u = alloca i64, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %up, ptr %up.addr, align 8
  %0 = load ptr, ptr %f.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %i, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %i, align 4
  %conv = trunc i32 %1 to i8
  %conv1 = zext i8 %conv to i64
  store i64 %conv1, ptr %u, align 8
  %2 = load ptr, ptr %f.addr, align 8
  %call2 = call i32 @getc(ptr noundef %2)
  store i32 %call2, ptr %i, align 4
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %u, align 8
  %shl = shl i64 %3, 8
  %4 = load i32, ptr %i, align 4
  %conv6 = trunc i32 %4 to i8
  %conv7 = zext i8 %conv6 to i64
  %or = or i64 %shl, %conv7
  store i64 %or, ptr %u, align 8
  %5 = load ptr, ptr %f.addr, align 8
  %call8 = call i32 @getc(ptr noundef %5)
  store i32 %call8, ptr %i, align 4
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %6 = load i64, ptr %u, align 8
  %shl12 = shl i64 %6, 8
  %7 = load i32, ptr %i, align 4
  %conv13 = trunc i32 %7 to i8
  %conv14 = zext i8 %conv13 to i64
  %or15 = or i64 %shl12, %conv14
  store i64 %or15, ptr %u, align 8
  %8 = load ptr, ptr %f.addr, align 8
  %call16 = call i32 @getc(ptr noundef %8)
  store i32 %call16, ptr %i, align 4
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false11
  %9 = load i64, ptr %u, align 8
  %shl19 = shl i64 %9, 8
  %10 = load i32, ptr %i, align 4
  %conv20 = trunc i32 %10 to i8
  %conv21 = zext i8 %conv20 to i64
  %or22 = or i64 %shl19, %conv21
  %11 = load ptr, ptr %up.addr, align 8
  store i64 %or22, ptr %11, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @ulaw_input(ptr noundef) #1

declare i32 @alaw_input(ptr noundef) #1

declare i32 @linear_input(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @audio_init_output() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @out, align 8
  %call = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %0)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @out, align 8
  %call1 = call i32 @put_u32(ptr noundef %1, i64 noundef 32)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr @out, align 8
  %call3 = call i32 @put_u32(ptr noundef %2, i64 noundef -1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %3 = load ptr, ptr @out, align 8
  %call6 = call i32 @put_u32(ptr noundef %3, i64 noundef 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %4 = load ptr, ptr @out, align 8
  %call9 = call i32 @put_u32(ptr noundef %4, i64 noundef 8000)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %5 = load ptr, ptr @out, align 8
  %call12 = call i32 @put_u32(ptr noundef %5, i64 noundef 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %6 = load ptr, ptr @out, align 8
  %call15 = call i32 @put_u32(ptr noundef %6, i64 noundef 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %7 = load ptr, ptr @out, align 8
  %call18 = call i32 @put_u32(ptr noundef %7, i64 noundef 0)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @put_u32(ptr noundef %f, i64 noundef %u) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %u.addr = alloca i64, align 8
  store ptr %f, ptr %f.addr, align 8
  store i64 %u, ptr %u.addr, align 8
  %0 = load i64, ptr %u.addr, align 8
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %conv1 = sext i8 %conv to i32
  %1 = load ptr, ptr %f.addr, align 8
  %call = call i32 @putc(i32 noundef %conv1, ptr noundef %1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %u.addr, align 8
  %shr3 = lshr i64 %2, 16
  %and4 = and i64 %shr3, 255
  %conv5 = trunc i64 %and4 to i8
  %conv6 = sext i8 %conv5 to i32
  %3 = load ptr, ptr %f.addr, align 8
  %call7 = call i32 @putc(i32 noundef %conv6, ptr noundef %3)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %4 = load i64, ptr %u.addr, align 8
  %shr11 = lshr i64 %4, 8
  %and12 = and i64 %shr11, 255
  %conv13 = trunc i64 %and12 to i8
  %conv14 = sext i8 %conv13 to i32
  %5 = load ptr, ptr %f.addr, align 8
  %call15 = call i32 @putc(i32 noundef %conv14, ptr noundef %5)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false10
  %6 = load i64, ptr %u.addr, align 8
  %and19 = and i64 %6, 255
  %conv20 = trunc i64 %and19 to i8
  %conv21 = sext i8 %conv20 to i32
  %7 = load ptr, ptr %f.addr, align 8
  %call22 = call i32 @putc(i32 noundef %conv21, ptr noundef %7)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false10, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false18
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @getc(ptr noundef) #1

declare i32 @putc(i32 noundef, ptr noundef) #1

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
