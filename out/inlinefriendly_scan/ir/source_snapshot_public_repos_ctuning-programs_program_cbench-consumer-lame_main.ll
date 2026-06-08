; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/main.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-lame/main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Could not create \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"mp3 buffer is not big enough... \0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Error writing mp3 output\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main1(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %mp3buffer = alloca [16384 x i8], align 1
  %Buffer = alloca [2 x [1152 x i16]], align 2
  %iread = alloca i32, align 4
  %imp3 = alloca i32, align 4
  %gf = alloca %struct.lame_global_flags, align 8
  %outf = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %outf, align 8
  call void @lame_init(ptr noundef %gf)
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  call void @lame_usage(ptr noundef %gf, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %argc.addr, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  call void @lame_parse_args(ptr noundef %gf, i32 noundef %3, ptr noundef %4)
  %gtkflag = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i32 0, i32 4
  %5 = load i32, ptr %gtkflag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end12, label %if.then1

if.then1:                                         ; preds = %if.end
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i32 0, i32 32
  %6 = load ptr, ptr %outPath, align 8
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef @.str)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  %7 = load ptr, ptr @__stdoutp, align 8
  store ptr %7, ptr %outf, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then1
  %outPath4 = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i32 0, i32 32
  %8 = load ptr, ptr %outPath4, align 8
  %call5 = call ptr @"\01_fopen"(ptr noundef %8, ptr noundef @.str.1)
  store ptr %call5, ptr %outf, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.else
  %9 = load ptr, ptr @__stderrp, align 8
  %outPath8 = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i32 0, i32 32
  %10 = load ptr, ptr %outPath8, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, ptr noundef %10)
  call void @exit(i32 noundef 1) #3
  unreachable

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  call void @lame_init_infile(ptr noundef %gf)
  call void @lame_init_params(ptr noundef %gf)
  call void @lame_print_config(ptr noundef %gf)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end12
  %arraydecay = getelementptr inbounds [2 x [1152 x i16]], ptr %Buffer, i64 0, i64 0
  %call13 = call i32 @lame_readframe(ptr noundef %gf, ptr noundef %arraydecay)
  store i32 %call13, ptr %iread, align 4
  %arrayidx14 = getelementptr inbounds [2 x [1152 x i16]], ptr %Buffer, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [1152 x i16], ptr %arrayidx14, i64 0, i64 0
  %arrayidx16 = getelementptr inbounds [2 x [1152 x i16]], ptr %Buffer, i64 0, i64 1
  %arraydecay17 = getelementptr inbounds [1152 x i16], ptr %arrayidx16, i64 0, i64 0
  %11 = load i32, ptr %iread, align 4
  %arraydecay18 = getelementptr inbounds [16384 x i8], ptr %mp3buffer, i64 0, i64 0
  %call19 = call i32 @lame_encode_buffer(ptr noundef %gf, ptr noundef %arraydecay15, ptr noundef %arraydecay17, i32 noundef %11, ptr noundef %arraydecay18, i32 noundef 16384)
  store i32 %call19, ptr %imp3, align 4
  %12 = load i32, ptr %imp3, align 4
  %cmp20 = icmp eq i32 %12, -1
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.body
  %13 = load ptr, ptr @__stderrp, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.3)
  call void @exit(i32 noundef 1) #3
  unreachable

if.end23:                                         ; preds = %do.body
  %arraydecay24 = getelementptr inbounds [16384 x i8], ptr %mp3buffer, i64 0, i64 0
  %14 = load i32, ptr %imp3, align 4
  %conv = sext i32 %14 to i64
  %15 = load ptr, ptr %outf, align 8
  %call25 = call i64 @"\01_fwrite"(ptr noundef %arraydecay24, i64 noundef 1, i64 noundef %conv, ptr noundef %15)
  %16 = load i32, ptr %imp3, align 4
  %conv26 = sext i32 %16 to i64
  %cmp27 = icmp ne i64 %call25, %conv26
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end23
  %17 = load ptr, ptr @__stderrp, align 8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.4)
  call void @exit(i32 noundef 1) #3
  unreachable

if.end31:                                         ; preds = %if.end23
  br label %do.cond

do.cond:                                          ; preds = %if.end31
  %18 = load i32, ptr %iread, align 4
  %tobool32 = icmp ne i32 %18, 0
  br i1 %tobool32, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %arraydecay33 = getelementptr inbounds [16384 x i8], ptr %mp3buffer, i64 0, i64 0
  %call34 = call i32 @lame_encode_finish(ptr noundef %gf, ptr noundef %arraydecay33, i32 noundef 16384)
  store i32 %call34, ptr %imp3, align 4
  %arraydecay35 = getelementptr inbounds [16384 x i8], ptr %mp3buffer, i64 0, i64 0
  %19 = load i32, ptr %imp3, align 4
  %conv36 = sext i32 %19 to i64
  %20 = load ptr, ptr %outf, align 8
  %call37 = call i64 @"\01_fwrite"(ptr noundef %arraydecay35, i64 noundef 1, i64 noundef %conv36, ptr noundef %20)
  %21 = load ptr, ptr %outf, align 8
  %call38 = call i32 @fclose(ptr noundef %21)
  call void @lame_close_infile(ptr noundef %gf)
  call void @lame_mp3_tags(ptr noundef %gf)
  ret i32 0
}

declare void @lame_init(ptr noundef) #1

declare void @lame_usage(ptr noundef, ptr noundef) #1

declare void @lame_parse_args(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

declare void @lame_init_infile(ptr noundef) #1

declare void @lame_init_params(ptr noundef) #1

declare void @lame_print_config(ptr noundef) #1

declare i32 @lame_readframe(ptr noundef, ptr noundef) #1

declare i32 @lame_encode_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @lame_encode_finish(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @fclose(ptr noundef) #1

declare void @lame_close_infile(ptr noundef) #1

declare void @lame_mp3_tags(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
