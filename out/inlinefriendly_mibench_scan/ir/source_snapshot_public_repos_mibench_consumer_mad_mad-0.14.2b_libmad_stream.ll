; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libmad/stream.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libmad/stream.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.mad_stream = type { ptr, ptr, i64, i32, i64, ptr, ptr, %struct.mad_bitptr, %struct.mad_bitptr, i32, ptr, i32, i32, i32 }
%struct.mad_bitptr = type { ptr, i16, i16 }

@.str = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"input buffer too small (or EOF)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid (null) buffer pointer\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"lost synchronization\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"reserved header layer value\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"forbidden bitrate value\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"reserved sample frequency value\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"reserved emphasis value\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CRC check failed\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"forbidden bit allocation value\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"bad scalefactor index\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"bad frame length\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"bad big_values count\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"reserved block_type\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"bad scalefactor selection info\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"bad main_data_begin pointer\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"bad audio data length\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"bad Huffman table select\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Huffman data overrun\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"incompatible block_type for JS\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mad_stream_init(ptr noundef %stream) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  %0 = load ptr, ptr %stream.addr, align 8
  %buffer = getelementptr inbounds %struct.mad_stream, ptr %0, i32 0, i32 0
  store ptr null, ptr %buffer, align 8
  %1 = load ptr, ptr %stream.addr, align 8
  %bufend = getelementptr inbounds %struct.mad_stream, ptr %1, i32 0, i32 1
  store ptr null, ptr %bufend, align 8
  %2 = load ptr, ptr %stream.addr, align 8
  %skiplen = getelementptr inbounds %struct.mad_stream, ptr %2, i32 0, i32 2
  store i64 0, ptr %skiplen, align 8
  %3 = load ptr, ptr %stream.addr, align 8
  %sync = getelementptr inbounds %struct.mad_stream, ptr %3, i32 0, i32 3
  store i32 0, ptr %sync, align 8
  %4 = load ptr, ptr %stream.addr, align 8
  %freerate = getelementptr inbounds %struct.mad_stream, ptr %4, i32 0, i32 4
  store i64 0, ptr %freerate, align 8
  %5 = load ptr, ptr %stream.addr, align 8
  %this_frame = getelementptr inbounds %struct.mad_stream, ptr %5, i32 0, i32 5
  store ptr null, ptr %this_frame, align 8
  %6 = load ptr, ptr %stream.addr, align 8
  %next_frame = getelementptr inbounds %struct.mad_stream, ptr %6, i32 0, i32 6
  store ptr null, ptr %next_frame, align 8
  %7 = load ptr, ptr %stream.addr, align 8
  %ptr = getelementptr inbounds %struct.mad_stream, ptr %7, i32 0, i32 7
  call void @mad_bit_init(ptr noundef %ptr, ptr noundef null)
  %8 = load ptr, ptr %stream.addr, align 8
  %anc_ptr = getelementptr inbounds %struct.mad_stream, ptr %8, i32 0, i32 8
  call void @mad_bit_init(ptr noundef %anc_ptr, ptr noundef null)
  %9 = load ptr, ptr %stream.addr, align 8
  %anc_bitlen = getelementptr inbounds %struct.mad_stream, ptr %9, i32 0, i32 9
  store i32 0, ptr %anc_bitlen, align 8
  %10 = load ptr, ptr %stream.addr, align 8
  %main_data = getelementptr inbounds %struct.mad_stream, ptr %10, i32 0, i32 10
  store ptr null, ptr %main_data, align 8
  %11 = load ptr, ptr %stream.addr, align 8
  %md_len = getelementptr inbounds %struct.mad_stream, ptr %11, i32 0, i32 11
  store i32 0, ptr %md_len, align 8
  %12 = load ptr, ptr %stream.addr, align 8
  %options = getelementptr inbounds %struct.mad_stream, ptr %12, i32 0, i32 12
  store i32 0, ptr %options, align 4
  %13 = load ptr, ptr %stream.addr, align 8
  %error = getelementptr inbounds %struct.mad_stream, ptr %13, i32 0, i32 13
  store i32 0, ptr %error, align 8
  ret void
}

declare void @mad_bit_init(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mad_stream_finish(ptr noundef %stream) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  %0 = load ptr, ptr %stream.addr, align 8
  %main_data = getelementptr inbounds %struct.mad_stream, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %main_data, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %stream.addr, align 8
  %main_data1 = getelementptr inbounds %struct.mad_stream, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %main_data1, align 8
  call void @free(ptr noundef %3)
  %4 = load ptr, ptr %stream.addr, align 8
  %main_data2 = getelementptr inbounds %struct.mad_stream, ptr %4, i32 0, i32 10
  store ptr null, ptr %main_data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mad_stream_buffer(ptr noundef %stream, ptr noundef %buffer, i64 noundef %length) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %1 = load ptr, ptr %stream.addr, align 8
  %buffer1 = getelementptr inbounds %struct.mad_stream, ptr %1, i32 0, i32 0
  store ptr %0, ptr %buffer1, align 8
  %2 = load ptr, ptr %buffer.addr, align 8
  %3 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load ptr, ptr %stream.addr, align 8
  %bufend = getelementptr inbounds %struct.mad_stream, ptr %4, i32 0, i32 1
  store ptr %add.ptr, ptr %bufend, align 8
  %5 = load ptr, ptr %buffer.addr, align 8
  %6 = load ptr, ptr %stream.addr, align 8
  %this_frame = getelementptr inbounds %struct.mad_stream, ptr %6, i32 0, i32 5
  store ptr %5, ptr %this_frame, align 8
  %7 = load ptr, ptr %buffer.addr, align 8
  %8 = load ptr, ptr %stream.addr, align 8
  %next_frame = getelementptr inbounds %struct.mad_stream, ptr %8, i32 0, i32 6
  store ptr %7, ptr %next_frame, align 8
  %9 = load ptr, ptr %stream.addr, align 8
  %sync = getelementptr inbounds %struct.mad_stream, ptr %9, i32 0, i32 3
  store i32 1, ptr %sync, align 8
  %10 = load ptr, ptr %stream.addr, align 8
  %ptr = getelementptr inbounds %struct.mad_stream, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %buffer.addr, align 8
  call void @mad_bit_init(ptr noundef %ptr, ptr noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mad_stream_skip(ptr noundef %stream, i64 noundef %length) #0 {
entry:
  %stream.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %stream, ptr %stream.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load i64, ptr %length.addr, align 8
  %1 = load ptr, ptr %stream.addr, align 8
  %skiplen = getelementptr inbounds %struct.mad_stream, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %skiplen, align 8
  %add = add i64 %2, %0
  store i64 %add, ptr %skiplen, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mad_stream_sync(ptr noundef %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  %0 = load ptr, ptr %stream.addr, align 8
  %ptr1 = getelementptr inbounds %struct.mad_stream, ptr %0, i32 0, i32 7
  %call = call ptr @mad_bit_nextbyte(ptr noundef %ptr1)
  store ptr %call, ptr %ptr, align 8
  %1 = load ptr, ptr %stream.addr, align 8
  %bufend = getelementptr inbounds %struct.mad_stream, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %bufend, align 8
  store ptr %2, ptr %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %ptr, align 8
  %4 = load ptr, ptr %end, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 -1
  %cmp = icmp ult ptr %3, %add.ptr
  br i1 %cmp, label %land.rhs, label %land.end9

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 255
  br i1 %cmp2, label %land.rhs4, label %land.end

land.rhs4:                                        ; preds = %land.rhs
  %7 = load ptr, ptr %ptr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %and = and i32 %conv6, 224
  %cmp7 = icmp eq i32 %and, 224
  br label %land.end

land.end:                                         ; preds = %land.rhs4, %land.rhs
  %9 = phi i1 [ false, %land.rhs ], [ %cmp7, %land.rhs4 ]
  %lnot = xor i1 %9, true
  br label %land.end9

land.end9:                                        ; preds = %land.end, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.end ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end9
  %11 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end9
  %12 = load ptr, ptr %end, align 8
  %13 = load ptr, ptr %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp10 = icmp slt i64 %sub.ptr.sub, 8
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %14 = load ptr, ptr %stream.addr, align 8
  %ptr12 = getelementptr inbounds %struct.mad_stream, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %ptr, align 8
  call void @mad_bit_init(ptr noundef %ptr12, ptr noundef %15)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare ptr @mad_bit_nextbyte(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @mad_stream_errorstr(ptr noundef %stream) #0 {
entry:
  %retval = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  store ptr %stream, ptr %stream.addr, align 8
  %0 = load ptr, ptr %stream.addr, align 8
  %error = getelementptr inbounds %struct.mad_stream, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %error, align 8
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 49, label %sw.bb3
    i32 257, label %sw.bb4
    i32 258, label %sw.bb5
    i32 259, label %sw.bb6
    i32 260, label %sw.bb7
    i32 261, label %sw.bb8
    i32 513, label %sw.bb9
    i32 529, label %sw.bb10
    i32 545, label %sw.bb11
    i32 561, label %sw.bb12
    i32 562, label %sw.bb13
    i32 563, label %sw.bb14
    i32 564, label %sw.bb15
    i32 565, label %sw.bb16
    i32 566, label %sw.bb17
    i32 567, label %sw.bb18
    i32 568, label %sw.bb19
    i32 569, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str, ptr %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store ptr @.str.1, ptr %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store ptr @.str.2, ptr %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store ptr @.str.3, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store ptr @.str.4, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store ptr @.str.5, ptr %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store ptr @.str.6, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store ptr @.str.7, ptr %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %entry
  store ptr @.str.9, ptr %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %entry
  store ptr @.str.10, ptr %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %entry
  store ptr @.str.12, ptr %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %entry
  store ptr @.str.16, ptr %retval, align 8
  br label %return

sw.bb17:                                          ; preds = %entry
  store ptr @.str.17, ptr %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %entry
  store ptr @.str.18, ptr %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %entry
  store ptr @.str.19, ptr %retval, align 8
  br label %return

sw.bb20:                                          ; preds = %entry
  store ptr @.str.20, ptr %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
