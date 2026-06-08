; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_hot_leaf/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libmad_bit.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libmad/bit.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.mad_bitptr = type { ptr, i16, i16 }

@crc_table = internal constant [256 x i16] [i16 0, i16 -32763, i16 -32753, i16 10, i16 -32741, i16 30, i16 20, i16 -32751, i16 -32717, i16 54, i16 60, i16 -32711, i16 40, i16 -32723, i16 -32729, i16 34, i16 -32669, i16 102, i16 108, i16 -32663, i16 120, i16 -32643, i16 -32649, i16 114, i16 80, i16 -32683, i16 -32673, i16 90, i16 -32693, i16 78, i16 68, i16 -32703, i16 -32573, i16 198, i16 204, i16 -32567, i16 216, i16 -32547, i16 -32553, i16 210, i16 240, i16 -32523, i16 -32513, i16 250, i16 -32533, i16 238, i16 228, i16 -32543, i16 160, i16 -32603, i16 -32593, i16 170, i16 -32581, i16 190, i16 180, i16 -32591, i16 -32621, i16 150, i16 156, i16 -32615, i16 136, i16 -32627, i16 -32633, i16 130, i16 -32381, i16 390, i16 396, i16 -32375, i16 408, i16 -32355, i16 -32361, i16 402, i16 432, i16 -32331, i16 -32321, i16 442, i16 -32341, i16 430, i16 420, i16 -32351, i16 480, i16 -32283, i16 -32273, i16 490, i16 -32261, i16 510, i16 500, i16 -32271, i16 -32301, i16 470, i16 476, i16 -32295, i16 456, i16 -32307, i16 -32313, i16 450, i16 320, i16 -32443, i16 -32433, i16 330, i16 -32421, i16 350, i16 340, i16 -32431, i16 -32397, i16 374, i16 380, i16 -32391, i16 360, i16 -32403, i16 -32409, i16 354, i16 -32477, i16 294, i16 300, i16 -32471, i16 312, i16 -32451, i16 -32457, i16 306, i16 272, i16 -32491, i16 -32481, i16 282, i16 -32501, i16 270, i16 260, i16 -32511, i16 -31997, i16 774, i16 780, i16 -31991, i16 792, i16 -31971, i16 -31977, i16 786, i16 816, i16 -31947, i16 -31937, i16 826, i16 -31957, i16 814, i16 804, i16 -31967, i16 864, i16 -31899, i16 -31889, i16 874, i16 -31877, i16 894, i16 884, i16 -31887, i16 -31917, i16 854, i16 860, i16 -31911, i16 840, i16 -31923, i16 -31929, i16 834, i16 960, i16 -31803, i16 -31793, i16 970, i16 -31781, i16 990, i16 980, i16 -31791, i16 -31757, i16 1014, i16 1020, i16 -31751, i16 1000, i16 -31763, i16 -31769, i16 994, i16 -31837, i16 934, i16 940, i16 -31831, i16 952, i16 -31811, i16 -31817, i16 946, i16 912, i16 -31851, i16 -31841, i16 922, i16 -31861, i16 910, i16 900, i16 -31871, i16 640, i16 -32123, i16 -32113, i16 650, i16 -32101, i16 670, i16 660, i16 -32111, i16 -32077, i16 694, i16 700, i16 -32071, i16 680, i16 -32083, i16 -32089, i16 674, i16 -32029, i16 742, i16 748, i16 -32023, i16 760, i16 -32003, i16 -32009, i16 754, i16 720, i16 -32043, i16 -32033, i16 730, i16 -32053, i16 718, i16 708, i16 -32063, i16 -32189, i16 582, i16 588, i16 -32183, i16 600, i16 -32163, i16 -32169, i16 594, i16 624, i16 -32139, i16 -32129, i16 634, i16 -32149, i16 622, i16 612, i16 -32159, i16 544, i16 -32219, i16 -32209, i16 554, i16 -32197, i16 574, i16 564, i16 -32207, i16 -32237, i16 534, i16 540, i16 -32231, i16 520, i16 -32243, i16 -32249, i16 514], align 2

; Function Attrs: nounwind ssp uwtable
define void @mad_bit_init(ptr noundef %bitptr, ptr noundef %byte) #0 {
entry:
  store ptr %byte, ptr %bitptr, align 8
  %cache = getelementptr inbounds %struct.mad_bitptr, ptr %bitptr, i64 0, i32 1
  store i16 0, ptr %cache, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %bitptr, i64 0, i32 2
  store i16 8, ptr %left, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @mad_bit_length(ptr noundef %begin, ptr noundef %end) #0 {
entry:
  %end.addr = alloca ptr, align 8
  store ptr %end, ptr %end.addr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %begin, i64 0, i32 2
  %0 = load i16, ptr %left, align 2
  %conv = zext i16 %0 to i64
  %1 = load ptr, ptr %end, align 8
  %2 = load ptr, ptr %begin, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = shl nsw i64 %sub.ptr.sub, 3
  %add = add nsw i64 %mul, %conv
  %3 = load ptr, ptr %end.addr, align 8
  %left2 = getelementptr inbounds %struct.mad_bitptr, ptr %3, i64 0, i32 2
  %4 = load i16, ptr %left2, align 2
  %conv3 = zext i16 %4 to i64
  %sub = sub nsw i64 8, %conv3
  %add5 = add nsw i64 %add, %sub
  %conv6 = trunc i64 %add5 to i32
  ret i32 %conv6
}

; Function Attrs: nounwind ssp uwtable
define ptr @mad_bit_nextbyte(ptr noundef %bitptr) #0 {
entry:
  %bitptr.addr = alloca ptr, align 8
  store ptr %bitptr, ptr %bitptr.addr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %bitptr, i64 0, i32 2
  %0 = load i16, ptr %left, align 2
  %cmp = icmp eq i16 %0, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %bitptr.addr, align 8
  %2 = load ptr, ptr %1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr %bitptr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %add.ptr, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nounwind ssp uwtable
define void @mad_bit_skip(ptr noundef %bitptr, i32 noundef %len) #0 {
entry:
  %bitptr.addr = alloca ptr, align 8
  store ptr %bitptr, ptr %bitptr.addr, align 8
  %div1 = lshr i32 %len, 3
  %0 = load ptr, ptr %bitptr, align 8
  %idx.ext = zext i32 %div1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %bitptr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %bitptr, i64 0, i32 2
  %1 = load i16, ptr %left, align 2
  %2 = trunc i32 %len to i16
  %3 = and i16 %2, 7
  %conv1 = sub i16 %1, %3
  store i16 %conv1, ptr %left, align 2
  %4 = load ptr, ptr %bitptr.addr, align 8
  %left2 = getelementptr inbounds %struct.mad_bitptr, ptr %4, i64 0, i32 2
  %5 = load i16, ptr %left2, align 2
  %cmp = icmp ugt i16 %5, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %bitptr.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %6, align 8
  %left6 = getelementptr inbounds %struct.mad_bitptr, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %left6, align 2
  %add = add i16 %8, 8
  store i16 %add, ptr %left6, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %bitptr.addr, align 8
  %left9 = getelementptr inbounds %struct.mad_bitptr, ptr %9, i64 0, i32 2
  %10 = load i16, ptr %left9, align 2
  %cmp11 = icmp ult i16 %10, 8
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %11 = load ptr, ptr %bitptr.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i8, ptr %12, align 1
  %conv15 = zext i8 %13 to i16
  %cache = getelementptr inbounds %struct.mad_bitptr, ptr %11, i64 0, i32 1
  store i16 %conv15, ptr %cache, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @mad_bit_read(ptr noundef %bitptr, i32 noundef %len) #0 {
entry:
  %bitptr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %bitptr, ptr %bitptr.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %bitptr, i64 0, i32 2
  %0 = load i16, ptr %left, align 2
  %cmp = icmp eq i16 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bitptr.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = zext i8 %3 to i16
  %cache = getelementptr inbounds %struct.mad_bitptr, ptr %1, i64 0, i32 1
  store i16 %conv2, ptr %cache, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %len.addr, align 4
  %5 = load ptr, ptr %bitptr.addr, align 8
  %left3 = getelementptr inbounds %struct.mad_bitptr, ptr %5, i64 0, i32 2
  %6 = load i16, ptr %left3, align 2
  %conv4 = zext i16 %6 to i32
  %cmp5 = icmp ult i32 %4, %conv4
  br i1 %cmp5, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end
  %7 = load ptr, ptr %bitptr.addr, align 8
  %cache8 = getelementptr inbounds %struct.mad_bitptr, ptr %7, i64 0, i32 1
  %8 = load i16, ptr %cache8, align 8
  %conv9 = zext i16 %8 to i32
  %left10 = getelementptr inbounds %struct.mad_bitptr, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %left10, align 2
  %conv11 = zext i16 %9 to i32
  %notmask1 = shl nsw i32 -1, %conv11
  %sub = xor i32 %notmask1, -1
  %and = and i32 %conv9, %sub
  %10 = load ptr, ptr %bitptr.addr, align 8
  %left12 = getelementptr inbounds %struct.mad_bitptr, ptr %10, i64 0, i32 2
  %11 = load i16, ptr %left12, align 2
  %conv13 = zext i16 %11 to i32
  %12 = load i32, ptr %len.addr, align 4
  %sub14 = sub i32 %conv13, %12
  %shr = lshr i32 %and, %sub14
  %conv15 = sext i32 %shr to i64
  store i64 %conv15, ptr %value, align 8
  %13 = load ptr, ptr %bitptr.addr, align 8
  %left16 = getelementptr inbounds %struct.mad_bitptr, ptr %13, i64 0, i32 2
  %14 = load i16, ptr %left16, align 2
  %15 = trunc i32 %12 to i16
  %conv19 = sub i16 %14, %15
  store i16 %conv19, ptr %left16, align 2
  %16 = load i64, ptr %value, align 8
  br label %return

if.end20:                                         ; preds = %if.end
  %17 = load ptr, ptr %bitptr.addr, align 8
  %cache21 = getelementptr inbounds %struct.mad_bitptr, ptr %17, i64 0, i32 1
  %18 = load i16, ptr %cache21, align 8
  %conv22 = zext i16 %18 to i32
  %left23 = getelementptr inbounds %struct.mad_bitptr, ptr %17, i64 0, i32 2
  %19 = load i16, ptr %left23, align 2
  %conv24 = zext i16 %19 to i32
  %notmask = shl nsw i32 -1, %conv24
  %sub26 = xor i32 %notmask, -1
  %and27 = and i32 %conv22, %sub26
  %conv28 = zext i32 %and27 to i64
  store i64 %conv28, ptr %value, align 8
  %20 = load ptr, ptr %bitptr.addr, align 8
  %left29 = getelementptr inbounds %struct.mad_bitptr, ptr %20, i64 0, i32 2
  %21 = load i16, ptr %left29, align 2
  %conv30 = zext i16 %21 to i32
  %22 = load i32, ptr %len.addr, align 4
  %sub31 = sub i32 %22, %conv30
  store i32 %sub31, ptr %len.addr, align 4
  %23 = load ptr, ptr %bitptr.addr, align 8
  %24 = load ptr, ptr %23, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr, ptr %23, align 8
  %left33 = getelementptr inbounds %struct.mad_bitptr, ptr %23, i64 0, i32 2
  store i16 8, ptr %left33, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end20
  %25 = load i32, ptr %len.addr, align 4
  %cmp34 = icmp ugt i32 %25, 7
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i64, ptr %value, align 8
  %shl36 = shl i64 %26, 8
  %27 = load ptr, ptr %bitptr.addr, align 8
  %28 = load ptr, ptr %27, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr38, ptr %27, align 8
  %29 = load i8, ptr %28, align 1
  %conv39 = zext i8 %29 to i64
  %or = or i64 %shl36, %conv39
  store i64 %or, ptr %value, align 8
  %30 = load i32, ptr %len.addr, align 4
  %sub40 = add i32 %30, -8
  store i32 %sub40, ptr %len.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %31 = load i32, ptr %len.addr, align 4
  %cmp41.not = icmp eq i32 %31, 0
  br i1 %cmp41.not, label %if.end58, label %if.then43

if.then43:                                        ; preds = %while.end
  %32 = load ptr, ptr %bitptr.addr, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = load i8, ptr %33, align 1
  %conv45 = zext i8 %34 to i16
  %cache46 = getelementptr inbounds %struct.mad_bitptr, ptr %32, i64 0, i32 1
  store i16 %conv45, ptr %cache46, align 8
  %35 = load i64, ptr %value, align 8
  %36 = load i32, ptr %len.addr, align 4
  %sh_prom = zext i32 %36 to i64
  %shl47 = shl i64 %35, %sh_prom
  %37 = load ptr, ptr %bitptr.addr, align 8
  %cache48 = getelementptr inbounds %struct.mad_bitptr, ptr %37, i64 0, i32 1
  %38 = load i16, ptr %cache48, align 8
  %conv49 = zext i16 %38 to i32
  %39 = load i32, ptr %len.addr, align 4
  %sub50 = sub i32 8, %39
  %shr51 = lshr i32 %conv49, %sub50
  %conv52 = sext i32 %shr51 to i64
  %or53 = or i64 %shl47, %conv52
  store i64 %or53, ptr %value, align 8
  %40 = load ptr, ptr %bitptr.addr, align 8
  %left54 = getelementptr inbounds %struct.mad_bitptr, ptr %40, i64 0, i32 2
  %41 = load i16, ptr %left54, align 2
  %42 = trunc i32 %39 to i16
  %conv57 = sub i16 %41, %42
  store i16 %conv57, ptr %left54, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then43, %while.end
  %43 = load i64, ptr %value, align 8
  br label %return

return:                                           ; preds = %if.end58, %if.then7
  %storemerge = phi i64 [ %43, %if.end58 ], [ %16, %if.then7 ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define zeroext i16 @mad_bit_crc([2 x i64] %bitptr.coerce, i32 noundef %len, i16 noundef zeroext %init) #0 {
entry:
  %bitptr = alloca %struct.mad_bitptr, align 8
  %len.addr = alloca i32, align 4
  %crc = alloca i32, align 4
  %data = alloca i64, align 8
  %bitptr.coerce.elt = extractvalue [2 x i64] %bitptr.coerce, 0
  store i64 %bitptr.coerce.elt, ptr %bitptr, align 8
  %bitptr.repack1 = getelementptr inbounds [2 x i64], ptr %bitptr, i64 0, i64 1
  %bitptr.coerce.elt2 = extractvalue [2 x i64] %bitptr.coerce, 1
  store i64 %bitptr.coerce.elt2, ptr %bitptr.repack1, align 8
  store i32 %len, ptr %len.addr, align 4
  %conv = zext i16 %init to i32
  store i32 %conv, ptr %crc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp ugt i32 %0, 31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @mad_bit_read(ptr noundef nonnull %bitptr, i32 noundef 32)
  store i64 %call, ptr %data, align 8
  %1 = load i32, ptr %crc, align 4
  %shl = shl i32 %1, 8
  %shr = lshr i32 %1, 8
  %conv2 = zext i32 %shr to i64
  %shr3 = lshr i64 %call, 24
  %xor = xor i64 %shr3, %conv2
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and
  %2 = load i16, ptr %arrayidx, align 2
  %conv4 = zext i16 %2 to i32
  %xor5 = xor i32 %shl, %conv4
  store i32 %xor5, ptr %crc, align 4
  %shl6 = shl i32 %xor5, 8
  %shr7 = lshr i32 %xor5, 8
  %conv8 = zext i32 %shr7 to i64
  %3 = load i64, ptr %data, align 8
  %shr9 = lshr i64 %3, 16
  %xor10 = xor i64 %shr9, %conv8
  %and11 = and i64 %xor10, 255
  %arrayidx12 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and11
  %4 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %4 to i32
  %xor14 = xor i32 %shl6, %conv13
  store i32 %xor14, ptr %crc, align 4
  %shl15 = shl i32 %xor14, 8
  %shr16 = lshr i32 %xor14, 8
  %conv17 = zext i32 %shr16 to i64
  %5 = load i64, ptr %data, align 8
  %shr18 = lshr i64 %5, 8
  %xor19 = xor i64 %shr18, %conv17
  %and20 = and i64 %xor19, 255
  %arrayidx21 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and20
  %6 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %6 to i32
  %xor23 = xor i32 %shl15, %conv22
  store i32 %xor23, ptr %crc, align 4
  %shl24 = shl i32 %xor23, 8
  %shr25 = lshr i32 %xor23, 8
  %conv26 = zext i32 %shr25 to i64
  %7 = load i64, ptr %data, align 8
  %xor28 = xor i64 %7, %conv26
  %and29 = and i64 %xor28, 255
  %arrayidx30 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and29
  %8 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %8 to i32
  %xor32 = xor i32 %shl24, %conv31
  store i32 %xor32, ptr %crc, align 4
  %9 = load i32, ptr %len.addr, align 4
  %sub = add i32 %9, -32
  store i32 %sub, ptr %len.addr, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %len.addr, align 4
  %div3 = lshr i32 %10, 3
  switch i32 %div3, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb42
    i32 1, label %sw.bb52
  ]

sw.bb:                                            ; preds = %for.end
  %11 = load i32, ptr %crc, align 4
  %shl33 = shl i32 %11, 8
  %shr34 = lshr i32 %11, 8
  %conv35 = zext i32 %shr34 to i64
  %call36 = call i64 @mad_bit_read(ptr noundef nonnull %bitptr, i32 noundef 8)
  %xor37 = xor i64 %call36, %conv35
  %and38 = and i64 %xor37, 255
  %arrayidx39 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and38
  %12 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %12 to i32
  %xor41 = xor i32 %shl33, %conv40
  store i32 %xor41, ptr %crc, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %sw.bb, %for.end
  %13 = load i32, ptr %crc, align 4
  %shl43 = shl i32 %13, 8
  %shr44 = lshr i32 %13, 8
  %conv45 = zext i32 %shr44 to i64
  %call46 = call i64 @mad_bit_read(ptr noundef nonnull %bitptr, i32 noundef 8)
  %xor47 = xor i64 %call46, %conv45
  %and48 = and i64 %xor47, 255
  %arrayidx49 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and48
  %14 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %14 to i32
  %xor51 = xor i32 %shl43, %conv50
  store i32 %xor51, ptr %crc, align 4
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb42, %for.end
  %15 = load i32, ptr %crc, align 4
  %shl53 = shl i32 %15, 8
  %shr54 = lshr i32 %15, 8
  %conv55 = zext i32 %shr54 to i64
  %call56 = call i64 @mad_bit_read(ptr noundef nonnull %bitptr, i32 noundef 8)
  %xor57 = xor i64 %call56, %conv55
  %and58 = and i64 %xor57, 255
  %arrayidx59 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and58
  %16 = load i16, ptr %arrayidx59, align 2
  %conv60 = zext i16 %16 to i32
  %xor61 = xor i32 %shl53, %conv60
  store i32 %xor61, ptr %crc, align 4
  %17 = load i32, ptr %len.addr, align 4
  %rem = and i32 %17, 7
  store i32 %rem, ptr %len.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %for.end
  br label %while.cond

while.cond:                                       ; preds = %if.end, %sw.epilog
  %18 = load i32, ptr %len.addr, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %len.addr, align 4
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call63 = call i64 @mad_bit_read(ptr noundef nonnull %bitptr, i32 noundef 1)
  %19 = load i32, ptr %crc, align 4
  %shr64 = lshr i32 %19, 15
  %20 = trunc i64 %call63 to i32
  %conv67 = xor i32 %shr64, %20
  %shl68 = shl i32 %19, 1
  store i32 %shl68, ptr %crc, align 4
  %and69 = and i32 %conv67, 1
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %21 = load i32, ptr %crc, align 4
  %xor71 = xor i32 %21, 32773
  store i32 %xor71, ptr %crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %22 = load i32, ptr %crc, align 4
  %conv73 = trunc i32 %22 to i16
  ret i16 %conv73
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
