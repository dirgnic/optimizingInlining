; ModuleID = './out/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_mibench_consumer_lame_lame3.70_rtp.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/lame/lame3.70/rtp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.rtpheader = type { %struct.rtpbits, i32, i32, i32 }
%struct.rtpbits = type { i32 }
%struct.sockaddr_in = type { i8, i8, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"socket() failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"setsockopt SO_REUSEADDR failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"setsockopt IP_MULTICAST_TTL failed.  multicast in kernel?\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"setsockopt IP_MULTICAST_LOOP failed.  multicast in kernel?\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @initrtp(ptr noundef %foo) #0 {
entry:
  %foo.addr = alloca ptr, align 8
  store ptr %foo, ptr %foo.addr, align 8
  %bf.load = load i32, ptr %foo, align 4
  %bf.set = and i32 %bf.load, 65535
  %bf.set20 = or i32 %bf.set, -2146566144
  store i32 %bf.set20, ptr %foo, align 4
  %call = call i32 @rand() #8
  %and = and i32 %call, 65535
  %0 = load ptr, ptr %foo.addr, align 8
  %bf.load22 = load i32, ptr %0, align 4
  %bf.clear23 = and i32 %bf.load22, -65536
  %bf.set24 = or i32 %bf.clear23, %and
  store i32 %bf.set24, ptr %0, align 4
  %call25 = call i32 @rand() #8
  %timestamp = getelementptr inbounds %struct.rtpheader, ptr %0, i64 0, i32 1
  store i32 %call25, ptr %timestamp, align 4
  %call26 = call i32 @rand() #8
  %1 = load ptr, ptr %foo.addr, align 8
  %ssrc = getelementptr inbounds %struct.rtpheader, ptr %1, i64 0, i32 2
  store i32 %call26, ptr %ssrc, align 4
  %iAudioHeader = getelementptr inbounds %struct.rtpheader, ptr %1, i64 0, i32 3
  store i32 0, ptr %iAudioHeader, align 4
  ret void
}

declare i32 @rand() #1

; Function Attrs: nounwind ssp uwtable
define i32 @sendrtp(i32 noundef %fd, ptr noundef %sSockAddr, ptr noundef %foo, ptr noundef %data, i32 noundef %len) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %sSockAddr.addr = alloca ptr, align 8
  %foo.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %cast = alloca ptr, align 8
  %outcast = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %sSockAddr, ptr %sSockAddr.addr, align 8
  store ptr %foo, ptr %foo.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %conv = sext i32 %len to i64
  %add = add nsw i64 %conv, 16
  %0 = alloca i8, i64 %add, align 8
  store ptr %0, ptr %buf, align 8
  %1 = load ptr, ptr %foo.addr, align 8
  store ptr %1, ptr %cast, align 8
  store ptr %0, ptr %outcast, align 8
  %2 = load i32, ptr %1, align 4
  %3 = call i1 @llvm.is.constant.i32(i32 %2)
  br i1 %3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %cast, align 8
  %5 = load i32, ptr %4, align 4
  %shr = lshr i32 %5, 24
  %and3 = lshr i32 %5, 8
  %shr4 = and i32 %and3, 65280
  %or = or i32 %shr, %shr4
  %and6 = shl i32 %5, 8
  %shl = and i32 %and6, 16711680
  %or7 = or i32 %or, %shl
  %6 = load ptr, ptr %cast, align 8
  %7 = load i32, ptr %6, align 4
  %shl10 = shl i32 %7, 24
  %or11 = or i32 %or7, %shl10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %cast, align 8
  %9 = load i32, ptr %8, align 4
  %call = call i32 @_OSSwapInt32(i32 noundef %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or11, %cond.true ], [ %call, %cond.false ]
  %10 = load ptr, ptr %outcast, align 8
  store i32 %cond, ptr %10, align 4
  %11 = load ptr, ptr %cast, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %11, i64 1
  %12 = load i32, ptr %arrayidx14, align 4
  %13 = call i1 @llvm.is.constant.i32(i32 %12)
  br i1 %13, label %cond.true15, label %cond.false31

cond.true15:                                      ; preds = %cond.end
  %14 = load ptr, ptr %cast, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %arrayidx16, align 4
  %shr18 = lshr i32 %15, 24
  %and20 = lshr i32 %15, 8
  %shr21 = and i32 %and20, 65280
  %or22 = or i32 %shr18, %shr21
  %16 = load ptr, ptr %cast, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %16, i64 1
  %17 = load i32, ptr %arrayidx23, align 4
  %and24 = shl i32 %17, 8
  %shl25 = and i32 %and24, 16711680
  %or26 = or i32 %or22, %shl25
  %shl29 = shl i32 %17, 24
  %or30 = or i32 %or26, %shl29
  br label %cond.end34

cond.false31:                                     ; preds = %cond.end
  %18 = load ptr, ptr %cast, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %18, i64 1
  %19 = load i32, ptr %arrayidx32, align 4
  %call33 = call i32 @_OSSwapInt32(i32 noundef %19)
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false31, %cond.true15
  %cond35 = phi i32 [ %or30, %cond.true15 ], [ %call33, %cond.false31 ]
  %20 = load ptr, ptr %outcast, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %20, i64 1
  store i32 %cond35, ptr %arrayidx36, align 4
  %21 = load ptr, ptr %cast, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %21, i64 2
  %22 = load i32, ptr %arrayidx37, align 4
  %23 = call i1 @llvm.is.constant.i32(i32 %22)
  br i1 %23, label %cond.true38, label %cond.false54

cond.true38:                                      ; preds = %cond.end34
  %24 = load ptr, ptr %cast, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %24, i64 2
  %25 = load i32, ptr %arrayidx39, align 4
  %shr41 = lshr i32 %25, 24
  %and43 = lshr i32 %25, 8
  %shr44 = and i32 %and43, 65280
  %or45 = or i32 %shr41, %shr44
  %26 = load ptr, ptr %cast, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %26, i64 2
  %27 = load i32, ptr %arrayidx46, align 4
  %and47 = shl i32 %27, 8
  %shl48 = and i32 %and47, 16711680
  %or49 = or i32 %or45, %shl48
  %shl52 = shl i32 %27, 24
  %or53 = or i32 %or49, %shl52
  br label %cond.end57

cond.false54:                                     ; preds = %cond.end34
  %28 = load ptr, ptr %cast, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %28, i64 2
  %29 = load i32, ptr %arrayidx55, align 4
  %call56 = call i32 @_OSSwapInt32(i32 noundef %29)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false54, %cond.true38
  %cond58 = phi i32 [ %or53, %cond.true38 ], [ %call56, %cond.false54 ]
  %30 = load ptr, ptr %outcast, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %30, i64 2
  store i32 %cond58, ptr %arrayidx59, align 4
  %31 = load ptr, ptr %cast, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %31, i64 3
  %32 = load i32, ptr %arrayidx60, align 4
  %33 = call i1 @llvm.is.constant.i32(i32 %32)
  br i1 %33, label %cond.true61, label %cond.false77

cond.true61:                                      ; preds = %cond.end57
  %34 = load ptr, ptr %cast, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %34, i64 3
  %35 = load i32, ptr %arrayidx62, align 4
  %shr64 = lshr i32 %35, 24
  %and66 = lshr i32 %35, 8
  %shr67 = and i32 %and66, 65280
  %or68 = or i32 %shr64, %shr67
  %36 = load ptr, ptr %cast, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %36, i64 3
  %37 = load i32, ptr %arrayidx69, align 4
  %and70 = shl i32 %37, 8
  %shl71 = and i32 %and70, 16711680
  %or72 = or i32 %or68, %shl71
  %shl75 = shl i32 %37, 24
  %or76 = or i32 %or72, %shl75
  br label %cond.end80

cond.false77:                                     ; preds = %cond.end57
  %38 = load ptr, ptr %cast, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %38, i64 3
  %39 = load i32, ptr %arrayidx78, align 4
  %call79 = call i32 @_OSSwapInt32(i32 noundef %39)
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false77, %cond.true61
  %cond81 = phi i32 [ %or76, %cond.true61 ], [ %call79, %cond.false77 ]
  %40 = load ptr, ptr %outcast, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %40, i64 3
  store i32 %cond81, ptr %arrayidx82, align 4
  %41 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 16
  %42 = load ptr, ptr %data.addr, align 8
  %43 = load i32, ptr %len.addr, align 4
  %conv83 = sext i32 %43 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %41, i64 16
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr84, i1 false, i1 true, i1 false)
  %call85 = call ptr @__memmove_chk(ptr noundef nonnull %add.ptr, ptr noundef %42, i64 noundef %conv83, i64 noundef %44) #8
  %45 = load i32, ptr %fd.addr, align 4
  %46 = load ptr, ptr %buf, align 8
  %47 = load i32, ptr %len.addr, align 4
  %conv86 = sext i32 %47 to i64
  %add87 = add nsw i64 %conv86, 16
  %48 = load ptr, ptr %sSockAddr.addr, align 8
  %call88 = call i64 @"\01_sendto"(i32 noundef %45, ptr noundef %46, i64 noundef %add87, i32 noundef 0, ptr noundef %48, i32 noundef 16) #8
  %conv89 = trunc i64 %call88 to i32
  ret i32 %conv89
}

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @_OSSwapInt32(i32 noundef %_data) #0 {
entry:
  %0 = call i32 @llvm.bswap.i32(i32 %_data)
  ret i32 %0
}

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare i64 @"\01_sendto"(i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define i32 @makesocket(ptr noundef %szAddr, i16 noundef zeroext %port, i32 noundef %TTL, ptr noundef %sSockAddr) #0 {
entry:
  %szAddr.addr = alloca ptr, align 8
  %port.addr = alloca i16, align 2
  %sSockAddr.addr = alloca ptr, align 8
  %iLoop = alloca i32, align 4
  %cTtl = alloca i8, align 1
  %cLoop = alloca i8, align 1
  %tempaddr = alloca i32, align 4
  %iSocket = alloca i32, align 4
  store ptr %szAddr, ptr %szAddr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  store ptr %sSockAddr, ptr %sSockAddr.addr, align 8
  store i32 1, ptr %iLoop, align 4
  %conv = trunc i32 %TTL to i8
  store i8 %conv, ptr %cTtl, align 1
  store i8 0, ptr %cLoop, align 1
  %call = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0) #8
  store i32 %call, ptr %iSocket, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %1 = call i64 @fwrite(ptr nonnull @.str, i64 17, i64 1, ptr %0)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %szAddr.addr, align 8
  %call3 = call i32 @inet_addr(ptr noundef %2) #8
  store i32 %call3, ptr %tempaddr, align 4
  %3 = load ptr, ptr %sSockAddr.addr, align 8
  %sin_family4 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i64 0, i32 1
  store i8 2, ptr %sin_family4, align 1
  %4 = load i16, ptr %port.addr, align 2
  %5 = call i1 @llvm.is.constant.i16(i16 %4)
  %6 = load i16, ptr %port.addr, align 2
  %rev = call i16 @llvm.bswap.i16(i16 %6)
  %7 = load i16, ptr %port.addr, align 2
  %or.i = call i16 @llvm.bswap.i16(i16 %7)
  %cond.in = select i1 %5, i16 %rev, i16 %or.i
  %8 = load ptr, ptr %sSockAddr.addr, align 8
  %sin_port13 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i64 0, i32 2
  store i16 %cond.in, ptr %sin_port13, align 2
  %9 = load i32, ptr %tempaddr, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %8, i64 0, i32 3
  store i32 %9, ptr %sin_addr, align 4
  %10 = load i32, ptr %iSocket, align 4
  %call14 = call i32 @setsockopt(i32 noundef %10, i32 noundef 65535, i32 noundef 4, ptr noundef nonnull %iLoop, i32 noundef 4) #8
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  %11 = load ptr, ptr @__stderrp, align 8
  %12 = call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %11)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end19:                                         ; preds = %if.end
  %13 = load i32, ptr %tempaddr, align 4
  %14 = call i1 @llvm.is.constant.i32(i32 %13)
  br i1 %14, label %cond.true20, label %cond.false32

cond.true20:                                      ; preds = %if.end19
  %15 = load i32, ptr %tempaddr, align 4
  %shr22 = lshr i32 %15, 24
  %and23 = lshr i32 %15, 8
  %shr24 = and i32 %and23, 65280
  %or25 = or i32 %shr22, %shr24
  %and26 = shl i32 %15, 8
  %shl27 = and i32 %and26, 16711680
  %or28 = or i32 %or25, %shl27
  %16 = load i32, ptr %tempaddr, align 4
  %shl30 = shl i32 %16, 24
  %or31 = or i32 %or28, %shl30
  br label %cond.end34

cond.false32:                                     ; preds = %if.end19
  %17 = load i32, ptr %tempaddr, align 4
  %call33 = call i32 @_OSSwapInt32(i32 noundef %17)
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.true20
  %cond35 = phi i32 [ %or31, %cond.true20 ], [ %call33, %cond.false32 ]
  %shr36.mask = and i32 %cond35, -268435456
  %cmp37 = icmp eq i32 %shr36.mask, -536870912
  br i1 %cmp37, label %if.then39, label %if.end52

if.then39:                                        ; preds = %cond.end34
  %18 = load i32, ptr %iSocket, align 4
  %call40 = call i32 @setsockopt(i32 noundef %18, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %cTtl, i32 noundef 1) #8
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then39
  %19 = load ptr, ptr @__stderrp, align 8
  %20 = call i64 @fwrite(ptr nonnull @.str.2, i64 58, i64 1, ptr %19)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end45:                                         ; preds = %if.then39
  store i8 1, ptr %cLoop, align 1
  %21 = load i32, ptr %iSocket, align 4
  %call46 = call i32 @setsockopt(i32 noundef %21, i32 noundef 0, i32 noundef 11, ptr noundef nonnull %cLoop, i32 noundef 1) #8
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  %22 = load ptr, ptr @__stderrp, align 8
  %23 = call i64 @fwrite(ptr nonnull @.str.3, i64 59, i64 1, ptr %22)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end52:                                         ; preds = %if.end45, %cond.end34
  %24 = load i32, ptr %iSocket, align 4
  ret i32 %24
}

declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

declare i32 @inet_addr(ptr noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #2

declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) #7

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
