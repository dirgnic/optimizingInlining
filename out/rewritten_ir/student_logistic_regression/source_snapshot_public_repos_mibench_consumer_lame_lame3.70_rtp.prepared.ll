; ModuleID = './source_snapshot/public_repos/mibench/consumer/lame/lame3.70/rtp.c'
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
  %0 = load ptr, ptr %foo.addr, align 8
  %b = getelementptr inbounds %struct.rtpheader, ptr %0, i32 0, i32 0
  %bf.load = load i32, ptr %b, align 4
  %bf.clear = and i32 %bf.load, 1073741823
  %bf.set = or i32 %bf.clear, -2147483648
  store i32 %bf.set, ptr %b, align 4
  %1 = load ptr, ptr %foo.addr, align 8
  %b1 = getelementptr inbounds %struct.rtpheader, ptr %1, i32 0, i32 0
  %bf.load2 = load i32, ptr %b1, align 4
  %bf.clear3 = and i32 %bf.load2, -536870913
  %bf.set4 = or i32 %bf.clear3, 0
  store i32 %bf.set4, ptr %b1, align 4
  %2 = load ptr, ptr %foo.addr, align 8
  %b5 = getelementptr inbounds %struct.rtpheader, ptr %2, i32 0, i32 0
  %bf.load6 = load i32, ptr %b5, align 4
  %bf.clear7 = and i32 %bf.load6, -268435457
  %bf.set8 = or i32 %bf.clear7, 0
  store i32 %bf.set8, ptr %b5, align 4
  %3 = load ptr, ptr %foo.addr, align 8
  %b9 = getelementptr inbounds %struct.rtpheader, ptr %3, i32 0, i32 0
  %bf.load10 = load i32, ptr %b9, align 4
  %bf.clear11 = and i32 %bf.load10, -251658241
  %bf.set12 = or i32 %bf.clear11, 0
  store i32 %bf.set12, ptr %b9, align 4
  %4 = load ptr, ptr %foo.addr, align 8
  %b13 = getelementptr inbounds %struct.rtpheader, ptr %4, i32 0, i32 0
  %bf.load14 = load i32, ptr %b13, align 4
  %bf.clear15 = and i32 %bf.load14, -8388609
  %bf.set16 = or i32 %bf.clear15, 0
  store i32 %bf.set16, ptr %b13, align 4
  %5 = load ptr, ptr %foo.addr, align 8
  %b17 = getelementptr inbounds %struct.rtpheader, ptr %5, i32 0, i32 0
  %bf.load18 = load i32, ptr %b17, align 4
  %bf.clear19 = and i32 %bf.load18, -8323073
  %bf.set20 = or i32 %bf.clear19, 917504
  store i32 %bf.set20, ptr %b17, align 4
  %call = call i32 @rand()
  %and = and i32 %call, 65535
  %6 = load ptr, ptr %foo.addr, align 8
  %b21 = getelementptr inbounds %struct.rtpheader, ptr %6, i32 0, i32 0
  %bf.load22 = load i32, ptr %b21, align 4
  %bf.value = and i32 %and, 65535
  %bf.clear23 = and i32 %bf.load22, -65536
  %bf.set24 = or i32 %bf.clear23, %bf.value
  store i32 %bf.set24, ptr %b21, align 4
  %bf.result.shl = shl i32 %bf.value, 16
  %bf.result.ashr = ashr i32 %bf.result.shl, 16
  %call25 = call i32 @rand()
  %7 = load ptr, ptr %foo.addr, align 8
  %timestamp = getelementptr inbounds %struct.rtpheader, ptr %7, i32 0, i32 1
  store i32 %call25, ptr %timestamp, align 4
  %call26 = call i32 @rand()
  %8 = load ptr, ptr %foo.addr, align 8
  %ssrc = getelementptr inbounds %struct.rtpheader, ptr %8, i32 0, i32 2
  store i32 %call26, ptr %ssrc, align 4
  %9 = load ptr, ptr %foo.addr, align 8
  %iAudioHeader = getelementptr inbounds %struct.rtpheader, ptr %9, i32 0, i32 3
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
  %0 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %0 to i64
  %add = add i64 %conv, 16
  %1 = alloca i8, i64 %add, align 8
  store ptr %1, ptr %buf, align 8
  %2 = load ptr, ptr %foo.addr, align 8
  store ptr %2, ptr %cast, align 8
  %3 = load ptr, ptr %buf, align 8
  store ptr %3, ptr %outcast, align 8
  %4 = load ptr, ptr %cast, align 8
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 0
  %5 = load i32, ptr %arrayidx, align 4
  %6 = call i1 @llvm.is.constant.i32(i32 %5)
  br i1 %6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %cast, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %7, i64 0
  %8 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %8, -16777216
  %shr = lshr i32 %and, 24
  %9 = load ptr, ptr %cast, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %9, i64 0
  %10 = load i32, ptr %arrayidx2, align 4
  %and3 = and i32 %10, 16711680
  %shr4 = lshr i32 %and3, 8
  %or = or i32 %shr, %shr4
  %11 = load ptr, ptr %cast, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %12, 65280
  %shl = shl i32 %and6, 8
  %or7 = or i32 %or, %shl
  %13 = load ptr, ptr %cast, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %13, i64 0
  %14 = load i32, ptr %arrayidx8, align 4
  %and9 = and i32 %14, 255
  %shl10 = shl i32 %and9, 24
  %or11 = or i32 %or7, %shl10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load ptr, ptr %cast, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %15, i64 0
  %16 = load i32, ptr %arrayidx12, align 4
  %call = call i32 @_OSSwapInt32(i32 noundef %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or11, %cond.true ], [ %call, %cond.false ]
  %17 = load ptr, ptr %outcast, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %17, i64 0
  store i32 %cond, ptr %arrayidx13, align 4
  %18 = load ptr, ptr %cast, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %18, i64 1
  %19 = load i32, ptr %arrayidx14, align 4
  %20 = call i1 @llvm.is.constant.i32(i32 %19)
  br i1 %20, label %cond.true15, label %cond.false31

cond.true15:                                      ; preds = %cond.end
  %21 = load ptr, ptr %cast, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %21, i64 1
  %22 = load i32, ptr %arrayidx16, align 4
  %and17 = and i32 %22, -16777216
  %shr18 = lshr i32 %and17, 24
  %23 = load ptr, ptr %cast, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %23, i64 1
  %24 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %24, 16711680
  %shr21 = lshr i32 %and20, 8
  %or22 = or i32 %shr18, %shr21
  %25 = load ptr, ptr %cast, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %25, i64 1
  %26 = load i32, ptr %arrayidx23, align 4
  %and24 = and i32 %26, 65280
  %shl25 = shl i32 %and24, 8
  %or26 = or i32 %or22, %shl25
  %27 = load ptr, ptr %cast, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %27, i64 1
  %28 = load i32, ptr %arrayidx27, align 4
  %and28 = and i32 %28, 255
  %shl29 = shl i32 %and28, 24
  %or30 = or i32 %or26, %shl29
  br label %cond.end34

cond.false31:                                     ; preds = %cond.end
  %29 = load ptr, ptr %cast, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %29, i64 1
  %30 = load i32, ptr %arrayidx32, align 4
  %call33 = call i32 @_OSSwapInt32(i32 noundef %30)
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false31, %cond.true15
  %cond35 = phi i32 [ %or30, %cond.true15 ], [ %call33, %cond.false31 ]
  %31 = load ptr, ptr %outcast, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %31, i64 1
  store i32 %cond35, ptr %arrayidx36, align 4
  %32 = load ptr, ptr %cast, align 8
  %arrayidx37 = getelementptr inbounds i32, ptr %32, i64 2
  %33 = load i32, ptr %arrayidx37, align 4
  %34 = call i1 @llvm.is.constant.i32(i32 %33)
  br i1 %34, label %cond.true38, label %cond.false54

cond.true38:                                      ; preds = %cond.end34
  %35 = load ptr, ptr %cast, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %35, i64 2
  %36 = load i32, ptr %arrayidx39, align 4
  %and40 = and i32 %36, -16777216
  %shr41 = lshr i32 %and40, 24
  %37 = load ptr, ptr %cast, align 8
  %arrayidx42 = getelementptr inbounds i32, ptr %37, i64 2
  %38 = load i32, ptr %arrayidx42, align 4
  %and43 = and i32 %38, 16711680
  %shr44 = lshr i32 %and43, 8
  %or45 = or i32 %shr41, %shr44
  %39 = load ptr, ptr %cast, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %39, i64 2
  %40 = load i32, ptr %arrayidx46, align 4
  %and47 = and i32 %40, 65280
  %shl48 = shl i32 %and47, 8
  %or49 = or i32 %or45, %shl48
  %41 = load ptr, ptr %cast, align 8
  %arrayidx50 = getelementptr inbounds i32, ptr %41, i64 2
  %42 = load i32, ptr %arrayidx50, align 4
  %and51 = and i32 %42, 255
  %shl52 = shl i32 %and51, 24
  %or53 = or i32 %or49, %shl52
  br label %cond.end57

cond.false54:                                     ; preds = %cond.end34
  %43 = load ptr, ptr %cast, align 8
  %arrayidx55 = getelementptr inbounds i32, ptr %43, i64 2
  %44 = load i32, ptr %arrayidx55, align 4
  %call56 = call i32 @_OSSwapInt32(i32 noundef %44)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false54, %cond.true38
  %cond58 = phi i32 [ %or53, %cond.true38 ], [ %call56, %cond.false54 ]
  %45 = load ptr, ptr %outcast, align 8
  %arrayidx59 = getelementptr inbounds i32, ptr %45, i64 2
  store i32 %cond58, ptr %arrayidx59, align 4
  %46 = load ptr, ptr %cast, align 8
  %arrayidx60 = getelementptr inbounds i32, ptr %46, i64 3
  %47 = load i32, ptr %arrayidx60, align 4
  %48 = call i1 @llvm.is.constant.i32(i32 %47)
  br i1 %48, label %cond.true61, label %cond.false77

cond.true61:                                      ; preds = %cond.end57
  %49 = load ptr, ptr %cast, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %49, i64 3
  %50 = load i32, ptr %arrayidx62, align 4
  %and63 = and i32 %50, -16777216
  %shr64 = lshr i32 %and63, 24
  %51 = load ptr, ptr %cast, align 8
  %arrayidx65 = getelementptr inbounds i32, ptr %51, i64 3
  %52 = load i32, ptr %arrayidx65, align 4
  %and66 = and i32 %52, 16711680
  %shr67 = lshr i32 %and66, 8
  %or68 = or i32 %shr64, %shr67
  %53 = load ptr, ptr %cast, align 8
  %arrayidx69 = getelementptr inbounds i32, ptr %53, i64 3
  %54 = load i32, ptr %arrayidx69, align 4
  %and70 = and i32 %54, 65280
  %shl71 = shl i32 %and70, 8
  %or72 = or i32 %or68, %shl71
  %55 = load ptr, ptr %cast, align 8
  %arrayidx73 = getelementptr inbounds i32, ptr %55, i64 3
  %56 = load i32, ptr %arrayidx73, align 4
  %and74 = and i32 %56, 255
  %shl75 = shl i32 %and74, 24
  %or76 = or i32 %or72, %shl75
  br label %cond.end80

cond.false77:                                     ; preds = %cond.end57
  %57 = load ptr, ptr %cast, align 8
  %arrayidx78 = getelementptr inbounds i32, ptr %57, i64 3
  %58 = load i32, ptr %arrayidx78, align 4
  %call79 = call i32 @_OSSwapInt32(i32 noundef %58)
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false77, %cond.true61
  %cond81 = phi i32 [ %or76, %cond.true61 ], [ %call79, %cond.false77 ]
  %59 = load ptr, ptr %outcast, align 8
  %arrayidx82 = getelementptr inbounds i32, ptr %59, i64 3
  store i32 %cond81, ptr %arrayidx82, align 4
  %60 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %60, i64 16
  %61 = load ptr, ptr %data.addr, align 8
  %62 = load i32, ptr %len.addr, align 4
  %conv83 = sext i32 %62 to i64
  %63 = load ptr, ptr %buf, align 8
  %add.ptr84 = getelementptr inbounds i8, ptr %63, i64 16
  %64 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr84, i1 false, i1 true, i1 false)
  %call85 = call ptr @__memmove_chk(ptr noundef %add.ptr, ptr noundef %61, i64 noundef %conv83, i64 noundef %64) #6
  %65 = load i32, ptr %fd.addr, align 4
  %66 = load ptr, ptr %buf, align 8
  %67 = load i32, ptr %len.addr, align 4
  %conv86 = sext i32 %67 to i64
  %add87 = add i64 %conv86, 16
  %68 = load ptr, ptr %sSockAddr.addr, align 8
  %call88 = call i64 @"\01_sendto"(i32 noundef %65, ptr noundef %66, i64 noundef %add87, i32 noundef 0, ptr noundef %68, i32 noundef 16)
  %conv89 = trunc i64 %call88 to i32
  ret i32 %conv89
}

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @_OSSwapInt32(i32 noundef %_data) #0 {
entry:
  %_data.addr = alloca i32, align 4
  store i32 %_data, ptr %_data.addr, align 4
  %0 = load i32, ptr %_data.addr, align 4
  %1 = call i32 @llvm.bswap.i32(i32 %0)
  store i32 %1, ptr %_data.addr, align 4
  %2 = load i32, ptr %_data.addr, align 4
  ret i32 %2
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
  %TTL.addr = alloca i32, align 4
  %sSockAddr.addr = alloca ptr, align 8
  %iRet = alloca i32, align 4
  %iLoop = alloca i32, align 4
  %sin = alloca %struct.sockaddr_in, align 4
  %cTtl = alloca i8, align 1
  %cLoop = alloca i8, align 1
  %tempaddr = alloca i32, align 4
  %iSocket = alloca i32, align 4
  store ptr %szAddr, ptr %szAddr.addr, align 8
  store i16 %port, ptr %port.addr, align 2
  store i32 %TTL, ptr %TTL.addr, align 4
  store ptr %sSockAddr, ptr %sSockAddr.addr, align 8
  store i32 1, ptr %iLoop, align 4
  %0 = load i32, ptr %TTL.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %cTtl, align 1
  store i8 0, ptr %cLoop, align 1
  %call = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 0)
  store i32 %call, ptr %iSocket, align 4
  %1 = load i32, ptr %iSocket, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %szAddr.addr, align 8
  %call3 = call i32 @inet_addr(ptr noundef %3)
  store i32 %call3, ptr %tempaddr, align 4
  %sin_family = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 1
  store i8 2, ptr %sin_family, align 1
  %4 = load ptr, ptr %sSockAddr.addr, align 8
  %sin_family4 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i8 2, ptr %sin_family4, align 1
  %5 = load i16, ptr %port.addr, align 2
  %6 = call i1 @llvm.is.constant.i16(i16 %5)
  br i1 %6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load i16, ptr %port.addr, align 2
  %conv5 = zext i16 %7 to i32
  %and = and i32 %conv5, 65280
  %shr = lshr i32 %and, 8
  %8 = load i16, ptr %port.addr, align 2
  %conv6 = zext i16 %8 to i32
  %and7 = and i32 %conv6, 255
  %shl = shl i32 %and7, 8
  %or = or i32 %shr, %shl
  %conv8 = trunc i32 %or to i16
  %conv9 = zext i16 %conv8 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i16, ptr %port.addr, align 2
  %call10 = call zeroext i16 @_OSSwapInt16(i16 noundef zeroext %9)
  %conv11 = zext i16 %call10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv11, %cond.false ]
  %conv12 = trunc i32 %cond to i16
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %sin, i32 0, i32 2
  store i16 %conv12, ptr %sin_port, align 2
  %10 = load ptr, ptr %sSockAddr.addr, align 8
  %sin_port13 = getelementptr inbounds %struct.sockaddr_in, ptr %10, i32 0, i32 2
  store i16 %conv12, ptr %sin_port13, align 2
  %11 = load i32, ptr %tempaddr, align 4
  %12 = load ptr, ptr %sSockAddr.addr, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %12, i32 0, i32 3
  %s_addr = getelementptr inbounds %struct.in_addr, ptr %sin_addr, i32 0, i32 0
  store i32 %11, ptr %s_addr, align 4
  %13 = load i32, ptr %iSocket, align 4
  %call14 = call i32 @setsockopt(i32 noundef %13, i32 noundef 65535, i32 noundef 4, ptr noundef %iLoop, i32 noundef 4)
  store i32 %call14, ptr %iRet, align 4
  %14 = load i32, ptr %iRet, align 4
  %cmp15 = icmp slt i32 %14, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %cond.end
  %15 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end19:                                         ; preds = %cond.end
  %16 = load i32, ptr %tempaddr, align 4
  %17 = call i1 @llvm.is.constant.i32(i32 %16)
  br i1 %17, label %cond.true20, label %cond.false32

cond.true20:                                      ; preds = %if.end19
  %18 = load i32, ptr %tempaddr, align 4
  %and21 = and i32 %18, -16777216
  %shr22 = lshr i32 %and21, 24
  %19 = load i32, ptr %tempaddr, align 4
  %and23 = and i32 %19, 16711680
  %shr24 = lshr i32 %and23, 8
  %or25 = or i32 %shr22, %shr24
  %20 = load i32, ptr %tempaddr, align 4
  %and26 = and i32 %20, 65280
  %shl27 = shl i32 %and26, 8
  %or28 = or i32 %or25, %shl27
  %21 = load i32, ptr %tempaddr, align 4
  %and29 = and i32 %21, 255
  %shl30 = shl i32 %and29, 24
  %or31 = or i32 %or28, %shl30
  br label %cond.end34

cond.false32:                                     ; preds = %if.end19
  %22 = load i32, ptr %tempaddr, align 4
  %call33 = call i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_rtp_0(i32 noundef %22)
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false32, %cond.true20
  %cond35 = phi i32 [ %or31, %cond.true20 ], [ %call33, %cond.false32 ]
  %shr36 = lshr i32 %cond35, 28
  %cmp37 = icmp eq i32 %shr36, 14
  br i1 %cmp37, label %if.then39, label %if.end52

if.then39:                                        ; preds = %cond.end34
  %23 = load i32, ptr %iSocket, align 4
  %call40 = call i32 @setsockopt(i32 noundef %23, i32 noundef 0, i32 noundef 10, ptr noundef %cTtl, i32 noundef 1)
  store i32 %call40, ptr %iRet, align 4
  %24 = load i32, ptr %iRet, align 4
  %cmp41 = icmp slt i32 %24, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then39
  %25 = load ptr, ptr @__stderrp, align 8
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.2)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end45:                                         ; preds = %if.then39
  store i8 1, ptr %cLoop, align 1
  %26 = load i32, ptr %iSocket, align 4
  %call46 = call i32 @setsockopt(i32 noundef %26, i32 noundef 0, i32 noundef 11, ptr noundef %cLoop, i32 noundef 1)
  store i32 %call46, ptr %iRet, align 4
  %27 = load i32, ptr %iRet, align 4
  %cmp47 = icmp slt i32 %27, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end45
  %28 = load ptr, ptr @__stderrp, align 8
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.3)
  call void @exit(i32 noundef 1) #7
  unreachable

if.end51:                                         ; preds = %if.end45
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %cond.end34
  %29 = load i32, ptr %iSocket, align 4
  ret i32 %29
}

declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #5

declare i32 @inet_addr(ptr noundef) #1

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #2

; Function Attrs: nounwind ssp uwtable
define internal zeroext i16 @_OSSwapInt16(i16 noundef zeroext %_data) #0 {
entry:
  %_data.addr = alloca i16, align 2
  store i16 %_data, ptr %_data.addr, align 2
  %0 = load i16, ptr %_data.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 8
  %1 = load i16, ptr %_data.addr, align 2
  %conv1 = zext i16 %1 to i32
  %shr = ashr i32 %conv1, 8
  %or = or i32 %shl, %shr
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal i32 @pc_inline_source_snapshot_public_repos_mibench_consumer_lame_lame3_70_rtp_0(i32 noundef %_data)  alwaysinline#0 {
entry:
  %_data.addr = alloca i32, align 4
  store i32 %_data, ptr %_data.addr, align 4
  %0 = load i32, ptr %_data.addr, align 4
  %1 = call i32 @llvm.bswap.i32(i32 %0)
  store i32 %1, ptr %_data.addr, align 4
  %2 = load i32, ptr %_data.addr, align 4
  ret i32 %2
}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 26, i32 2]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 15.0.7"}
