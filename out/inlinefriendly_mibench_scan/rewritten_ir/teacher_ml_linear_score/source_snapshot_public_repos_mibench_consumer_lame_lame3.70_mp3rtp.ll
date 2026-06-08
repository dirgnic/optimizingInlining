; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_ml_linear_score/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_mp3rtp.prepared.ll'
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
  %0 = load i32, ptr @rtpsocket, align 4
  %call = call i32 @sendrtp(i32 noundef %0, ptr noundef nonnull @rtpsi, ptr noundef nonnull @RTPheader, ptr noundef %mp3buffer, i32 noundef %mp3size) #5
  %1 = load i32, ptr getelementptr inbounds (%struct.rtpheader, ptr @RTPheader, i64 0, i32 1), align 4
  %add = add nsw i32 %1, 5
  store i32 %add, ptr getelementptr inbounds (%struct.rtpheader, ptr @RTPheader, i64 0, i32 1), align 4
  %bf.load = load i32, ptr @RTPheader, align 4
  %inc = add i32 %bf.load, 1
  %bf.value = and i32 %inc, 65535
  %bf.clear = and i32 %bf.load, -65536
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, ptr @RTPheader, align 4
  ret void
}

declare i32 @sendrtp(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define void @rtp_usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #6
  unreachable
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %port = alloca i32, align 4
  %ttl = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %Arg = alloca ptr, align 8
  %gf = alloca %struct.lame_global_flags, align 8
  %iread = alloca i32, align 4
  %outf = alloca ptr, align 8
  %Buffer = alloca [2 x [1152 x i16]], align 2
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %Arg, align 8
  %call = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 58) #5
  store ptr %call, ptr %tmp, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %4)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %tmp, align 8
  store i8 0, ptr %6, align 1
  %call3 = call i32 @atoi(ptr nocapture noundef nonnull %incdec.ptr) #5
  store i32 %call3, ptr %port, align 4
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %7)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end6:                                          ; preds = %if.end2
  %9 = load ptr, ptr %tmp, align 8
  %call7 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 58) #5
  store ptr %call7, ptr %tmp, align 8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %10)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end10:                                         ; preds = %if.end6
  %12 = load ptr, ptr %tmp, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr11, ptr %tmp, align 8
  store i8 0, ptr %12, align 1
  %call12 = call i32 @atoi(ptr nocapture noundef nonnull %incdec.ptr11) #5
  store i32 %call12, ptr %ttl, align 4
  %13 = load ptr, ptr %Arg, align 8
  %14 = load i32, ptr %port, align 4
  %conv = trunc i32 %14 to i16
  %15 = load i32, ptr %ttl, align 4
  %call16 = call i32 @makesocket(ptr noundef %13, i16 noundef zeroext %conv, i32 noundef %15, ptr noundef nonnull @rtpsi) #5
  store i32 %call16, ptr @rtpsocket, align 4
  %call17 = call i32 @getpid() #5
  %call19 = call i64 @time(ptr noundef null) #5
  %16 = trunc i64 %call19 to i32
  %conv20 = xor i32 %call17, %16
  call void @srand(i32 noundef %conv20) #5
  call void @initrtp(ptr noundef nonnull @RTPheader) #5
  call void @lame_init(ptr noundef nonnull %gf) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end10
  %storemerge = phi i32 [ 1, %if.end10 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %17 = load i32, ptr %argc.addr, align 4
  %sub = add nsw i32 %17, -1
  %cmp21 = icmp slt i32 %storemerge, %sub
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %i, align 4
  %add = add nsw i32 %19, 1
  %idxprom = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx23, align 8
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %18, i64 %idxprom24
  store ptr %20, ptr %arrayidx25, align 8
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load i32, ptr %argc.addr, align 4
  %sub26 = add nsw i32 %22, -1
  %23 = load ptr, ptr %argv.addr, align 8
  call void @lame_parse_args(ptr noundef nonnull %gf, i32 noundef %sub26, ptr noundef %23) #5
  %outPath = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i64 0, i32 32
  %24 = load ptr, ptr %outPath, align 8
  %call27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(2) @.str.1) #5
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.end
  %25 = load ptr, ptr @__stdoutp, align 8
  store ptr %25, ptr %outf, align 8
  br label %if.end38

if.else:                                          ; preds = %for.end
  %outPath30 = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i64 0, i32 32
  %26 = load ptr, ptr %outPath30, align 8
  %call31 = call ptr @"\01_fopen"(ptr noundef %26, ptr noundef nonnull @.str.2) #5
  store ptr %call31, ptr %outf, align 8
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.else
  %27 = load ptr, ptr @__stderrp, align 8
  %outPath35 = getelementptr inbounds %struct.lame_global_flags, ptr %gf, i64 0, i32 32
  %28 = load ptr, ptr %outPath35, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef %28) #5
  call void @exit(i32 noundef 1) #6
  unreachable

if.end38:                                         ; preds = %if.else, %if.then29
  call void @lame_init_infile(ptr noundef nonnull %gf) #5
  call void @lame_init_params(ptr noundef nonnull %gf) #5
  call void @lame_print_config(ptr noundef nonnull %gf) #5
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end38
  %call39 = call i32 @lame_readframe(ptr noundef nonnull %gf, ptr noundef nonnull %Buffer) #5
  store i32 %call39, ptr %iread, align 4
  %arrayidx42 = getelementptr inbounds [2 x [1152 x i16]], ptr %Buffer, i64 0, i64 1
  %call44 = call i32 @lame_encode_buffer(ptr noundef nonnull %gf, ptr noundef nonnull %Buffer, ptr noundef nonnull %arrayidx42, i32 noundef %call39, ptr noundef nonnull @mp3buffer, i32 noundef 16384) #5
  %conv45 = sext i32 %call44 to i64
  %29 = load ptr, ptr %outf, align 8
  %call46 = call i64 @"\01_fwrite"(ptr noundef nonnull @mp3buffer, i64 noundef 1, i64 noundef %conv45, ptr noundef %29) #5
  call void @rtp_output(ptr noundef nonnull @mp3buffer, i32 noundef %call44)
  %30 = load i32, ptr %iread, align 4
  %tobool47.not = icmp eq i32 %30, 0
  br i1 %tobool47.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %do.body
  %call48 = call i32 @lame_encode_finish(ptr noundef nonnull %gf, ptr noundef nonnull @mp3buffer, i32 noundef 16384) #5
  %conv49 = sext i32 %call48 to i64
  %31 = load ptr, ptr %outf, align 8
  %call50 = call i64 @"\01_fwrite"(ptr noundef nonnull @mp3buffer, i64 noundef 1, i64 noundef %conv49, ptr noundef %31) #5
  call void @rtp_output(ptr noundef nonnull @mp3buffer, i32 noundef %call48)
  %call51 = call i32 @fclose(ptr noundef %31) #5
  call void @lame_close_infile(ptr noundef nonnull %gf) #5
  call void @lame_mp3_tags(ptr noundef nonnull %gf) #5
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

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_0() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_1() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_2() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_3() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_mp3rtp_4() #3 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 64, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #6
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
