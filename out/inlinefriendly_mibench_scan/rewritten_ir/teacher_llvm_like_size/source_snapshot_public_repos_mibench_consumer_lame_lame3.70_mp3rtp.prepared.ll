; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/mp3rtp.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/mp3rtp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rtpheader = type { %struct.rtpbits, i32, i32, i32 }
%struct.rtpbits = type { i32 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@rtpsocket = global i32 0, align 4
@rtpsi = global %struct.sockaddr_in zeroinitializer, align 4
@RTPheader = global %struct.rtpheader zeroinitializer, align 4
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [65 x i8] c"usage: mp3rtp ip:port:ttl  [encoder options] <infile> <outfile>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__stdoutp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not create \22%s\22.\0A\00", align 1
@mp3buffer = global [16384 x i8] zeroinitializer, align 1

; Function Attrs: nounwind ssp uwtable
define void @rtp_output(ptr noundef %mp3buffer, i32 noundef %mp3size) #0 {
entry:
  %mp3buffer.addr = alloca ptr, align 8
  %mp3size.addr = alloca i32, align 4
  store ptr %mp3buffer, ptr %mp3buffer.addr, align 8
  store i32 %mp3size, ptr %mp3size.addr, align 4
  %0 = load i32, ptr @rtpsocket, align 4
  %1 = load ptr, ptr %mp3buffer.addr, align 8
  %2 = load i32, ptr %mp3size.addr, align 4
  %call = call i32 @sendrtp(i32 noundef %0, ptr noundef @rtpsi, ptr noundef @RTPheader, ptr noundef %1, i32 noundef %2)
  %3 = load i32, ptr getelementptr inbounds (%struct.rtpheader, ptr @RTPheader, i32 0, i32 1), align 4
  %add = add nsw i32 %3, 5
  store i32 %add, ptr getelementptr inbounds (%struct.rtpheader, ptr @RTPheader, i32 0, i32 1), align 4
  %bf.load = load i32, ptr @RTPheader, align 4
  %bf.shl = shl i32 %bf.load, 16
  %bf.ashr = ashr i32 %bf.shl, 16
  %inc = add nsw i32 %bf.ashr, 1
  %bf.load1 = load i32, ptr @RTPheader, align 4
  %bf.value = and i32 %inc, 65535
  %bf.clear = and i32 %bf.load1, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, ptr @RTPheader, align 4
  %bf.result.shl = shl i32 %bf.value, 16
  %bf.result.ashr = ashr i32 %bf.result.shl, 16
  ret void
}

declare i32 @sendrtp(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @rtp_usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str)
  call void @exit(i32 noundef 1) #3
  unreachable
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %port = alloca i32, align 4
  %ttl = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %Arg = alloca ptr, align 8
  %gf = alloca %struct.lame_global_flags, align 8
  %iread = alloca i32, align 4
  %imp3 = alloca i32, align 4
  %outf = alloca ptr, align 8
  %Buffer = alloca [2 x [1152 x i16]], align 2
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_0()
  call void @exit(i32 noundef 1) #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %Arg, align 8
  %3 = load ptr, ptr %Arg, align 8
  %call = call ptr @strchr(ptr noundef %3, i32 noundef 58)
  store ptr %call, ptr %tmp, align 8
  %4 = load ptr, ptr %tmp, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_1()
  call void @exit(i32 noundef 1) #3
  unreachable

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %tmp, align 8
  store i8 0, ptr %5, align 1
  %6 = load ptr, ptr %tmp, align 8
  %call3 = call i32 @atoi(ptr noundef %6)
  store i32 %call3, ptr %port, align 4
  %7 = load i32, ptr %port, align 4
  %cmp4 = icmp sle i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_2()
  call void @exit(i32 noundef 1) #3
  unreachable

if.end6:                                          ; preds = %if.end2
  %8 = load ptr, ptr %tmp, align 8
  %call7 = call ptr @strchr(ptr noundef %8, i32 noundef 58)
  store ptr %call7, ptr %tmp, align 8
  %9 = load ptr, ptr %tmp, align 8
  %tobool8 = icmp ne ptr %9, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_3()
  call void @exit(i32 noundef 1) #3
  unreachable

if.end10:                                         ; preds = %if.end6
  %10 = load ptr, ptr %tmp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr11, ptr %tmp, align 8
  store i8 0, ptr %10, align 1
  %11 = load ptr, ptr %tmp, align 8
  %call12 = call i32 @atoi(ptr noundef %11)
  store i32 %call12, ptr %ttl, align 4
  %12 = load ptr, ptr %tmp, align 8
  %cmp13 = icmp ule ptr %12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_4()
  call void @exit(i32 noundef 1) #3
  unreachable

if.end15:                                         ; preds = %if.end10
  %13 = load ptr, ptr %Arg, align 8
  %14 = load i32, ptr %port, align 4
  %conv = trunc i32 %14 to i16
  %15 = load i32, ptr %ttl, align 4
  %call16 = call i32 @makesocket(ptr noundef %13, i16 noundef zeroext %conv, i32 noundef %15, ptr noundef @rtpsi)
  store i32 %call16, ptr @rtpsocket, align 4
  %call17 = call i32 @getpid()
  %conv18 = sext i32 %call17 to i64
  %call19 = call i64 @time(ptr noundef null)
  %xor = xor i64 %conv18, %call19
  %conv20 = trunc i64 %xor to i32
  call void @srand(i32 noundef %conv20)
  call void @initrtp(ptr noundef @RTPheader)
  call void @lame_init(ptr noundef %gf)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %17, 1
  %cmp21 = icmp slt i32 %16, %sub
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %i, align 4
  %add = add nsw i32 %19, 1
  %idxprom = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx23, align 8
  %21 = load ptr, ptr %argv.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %21, i64 %idxprom24
  store ptr %20, ptr %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %argc.addr, align 4
  %sub26 = sub nsw i32 %24, 1
  %25 = load ptr, ptr %argv.addr, align 8
  call void @lame_parse_args(ptr noundef %gf, i32 noundef %sub26, ptr noundef %25)
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i32 0, i32 32
  %26 = load ptr, ptr %outPath, align 8
  %call27 = call i32 @strcmp(ptr noundef %26, ptr noundef @.str.1)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else, label %if.then29

if.then29:                                        ; preds = %for.end
  %27 = load ptr, ptr @__stdoutp, align 8
  store ptr %27, ptr %outf, align 8
  br label %if.end38

if.else:                                          ; preds = %for.end
  %outPath30 = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i32 0, i32 32
  %28 = load ptr, ptr %outPath30, align 8
  %call31 = call ptr @"\01_fopen"(ptr noundef %28, ptr noundef @.str.2)
  store ptr %call31, ptr %outf, align 8
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.else
  %29 = load ptr, ptr @__stderrp, align 8
  %outPath35 = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i32 0, i32 32
  %30 = load ptr, ptr %outPath35, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.3, ptr noundef %30)
  call void @exit(i32 noundef 1) #3
  unreachable

if.end37:                                         ; preds = %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then29
  call void @lame_init_infile(ptr noundef %gf)
  call void @lame_init_params(ptr noundef %gf)
  call void @lame_print_config(ptr noundef %gf)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end38
  %arraydecay = getelementptr inbounds [2 x [1152 x i16]], ptr %Buffer, i64 0, i64 0
  %call39 = call i32 @lame_readframe(ptr noundef %gf, ptr noundef %arraydecay)
  store i32 %call39, ptr %iread, align 4
  %arrayidx40 = getelementptr inbounds [2 x [1152 x i16]], ptr %Buffer, i64 0, i64 0
  %arraydecay41 = getelementptr inbounds [1152 x i16], ptr %arrayidx40, i64 0, i64 0
  %arrayidx42 = getelementptr inbounds [2 x [1152 x i16]], ptr %Buffer, i64 0, i64 1
  %arraydecay43 = getelementptr inbounds [1152 x i16], ptr %arrayidx42, i64 0, i64 0
  %31 = load i32, ptr %iread, align 4
  %call44 = call i32 @lame_encode_buffer(ptr noundef %gf, ptr noundef %arraydecay41, ptr noundef %arraydecay43, i32 noundef %31, ptr noundef @mp3buffer, i32 noundef 16384)
  store i32 %call44, ptr %imp3, align 4
  %32 = load i32, ptr %imp3, align 4
  %conv45 = sext i32 %32 to i64
  %33 = load ptr, ptr %outf, align 8
  %call46 = call i64 @"\01_fwrite"(ptr noundef @mp3buffer, i64 noundef 1, i64 noundef %conv45, ptr noundef %33)
  %34 = load i32, ptr %imp3, align 4
  call void @rtp_output(ptr noundef @mp3buffer, i32 noundef %34)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %35 = load i32, ptr %iread, align 4
  %tobool47 = icmp ne i32 %35, 0
  br i1 %tobool47, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %call48 = call i32 @lame_encode_finish(ptr noundef %gf, ptr noundef @mp3buffer, i32 noundef 16384)
  store i32 %call48, ptr %imp3, align 4
  %36 = load i32, ptr %imp3, align 4
  %conv49 = sext i32 %36 to i64
  %37 = load ptr, ptr %outf, align 8
  %call50 = call i64 @"\01_fwrite"(ptr noundef @mp3buffer, i64 noundef 1, i64 noundef %conv49, ptr noundef %37)
  %38 = load i32, ptr %imp3, align 4
  call void @rtp_output(ptr noundef @mp3buffer, i32 noundef %38)
  %39 = load ptr, ptr %outf, align 8
  %call51 = call i32 @fclose(ptr noundef %39)
  call void @lame_close_infile(ptr noundef %gf)
  call void @lame_mp3_tags(ptr noundef %gf)
  ret i32 0
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

declare i32 @atoi(ptr noundef) #1

declare i32 @makesocket(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) #1

declare void @srand(i32 noundef) #1

declare i32 @getpid() #1

declare i64 @time(ptr noundef) #1

declare void @initrtp(ptr noundef) #1

declare void @lame_init(ptr noundef) #1

declare void @lame_parse_args(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

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

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_0()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_1()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_2()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_3()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str)
  call void @exit(i32 noundef 1) #3
  unreachable
}

define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_4()  alwaysinline#0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str)
  call void @exit(i32 noundef 1) #3
  unreachable
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
