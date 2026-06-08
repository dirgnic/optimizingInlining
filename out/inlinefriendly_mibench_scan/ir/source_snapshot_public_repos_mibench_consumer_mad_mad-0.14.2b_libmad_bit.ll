; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libmad/bit.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libmad/bit.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.mad_bitptr = type { ptr, i16, i16 }

@crc_table = internal constant [256 x i16] [i16 0, i16 -32763, i16 -32753, i16 10, i16 -32741, i16 30, i16 20, i16 -32751, i16 -32717, i16 54, i16 60, i16 -32711, i16 40, i16 -32723, i16 -32729, i16 34, i16 -32669, i16 102, i16 108, i16 -32663, i16 120, i16 -32643, i16 -32649, i16 114, i16 80, i16 -32683, i16 -32673, i16 90, i16 -32693, i16 78, i16 68, i16 -32703, i16 -32573, i16 198, i16 204, i16 -32567, i16 216, i16 -32547, i16 -32553, i16 210, i16 240, i16 -32523, i16 -32513, i16 250, i16 -32533, i16 238, i16 228, i16 -32543, i16 160, i16 -32603, i16 -32593, i16 170, i16 -32581, i16 190, i16 180, i16 -32591, i16 -32621, i16 150, i16 156, i16 -32615, i16 136, i16 -32627, i16 -32633, i16 130, i16 -32381, i16 390, i16 396, i16 -32375, i16 408, i16 -32355, i16 -32361, i16 402, i16 432, i16 -32331, i16 -32321, i16 442, i16 -32341, i16 430, i16 420, i16 -32351, i16 480, i16 -32283, i16 -32273, i16 490, i16 -32261, i16 510, i16 500, i16 -32271, i16 -32301, i16 470, i16 476, i16 -32295, i16 456, i16 -32307, i16 -32313, i16 450, i16 320, i16 -32443, i16 -32433, i16 330, i16 -32421, i16 350, i16 340, i16 -32431, i16 -32397, i16 374, i16 380, i16 -32391, i16 360, i16 -32403, i16 -32409, i16 354, i16 -32477, i16 294, i16 300, i16 -32471, i16 312, i16 -32451, i16 -32457, i16 306, i16 272, i16 -32491, i16 -32481, i16 282, i16 -32501, i16 270, i16 260, i16 -32511, i16 -31997, i16 774, i16 780, i16 -31991, i16 792, i16 -31971, i16 -31977, i16 786, i16 816, i16 -31947, i16 -31937, i16 826, i16 -31957, i16 814, i16 804, i16 -31967, i16 864, i16 -31899, i16 -31889, i16 874, i16 -31877, i16 894, i16 884, i16 -31887, i16 -31917, i16 854, i16 860, i16 -31911, i16 840, i16 -31923, i16 -31929, i16 834, i16 960, i16 -31803, i16 -31793, i16 970, i16 -31781, i16 990, i16 980, i16 -31791, i16 -31757, i16 1014, i16 1020, i16 -31751, i16 1000, i16 -31763, i16 -31769, i16 994, i16 -31837, i16 934, i16 940, i16 -31831, i16 952, i16 -31811, i16 -31817, i16 946, i16 912, i16 -31851, i16 -31841, i16 922, i16 -31861, i16 910, i16 900, i16 -31871, i16 640, i16 -32123, i16 -32113, i16 650, i16 -32101, i16 670, i16 660, i16 -32111, i16 -32077, i16 694, i16 700, i16 -32071, i16 680, i16 -32083, i16 -32089, i16 674, i16 -32029, i16 742, i16 748, i16 -32023, i16 760, i16 -32003, i16 -32009, i16 754, i16 720, i16 -32043, i16 -32033, i16 730, i16 -32053, i16 718, i16 708, i16 -32063, i16 -32189, i16 582, i16 588, i16 -32183, i16 600, i16 -32163, i16 -32169, i16 594, i16 624, i16 -32139, i16 -32129, i16 634, i16 -32149, i16 622, i16 612, i16 -32159, i16 544, i16 -32219, i16 -32209, i16 554, i16 -32197, i16 574, i16 564, i16 -32207, i16 -32237, i16 534, i16 540, i16 -32231, i16 520, i16 -32243, i16 -32249, i16 514], align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mad_bit_init(ptr noundef %bitptr, ptr noundef %byte) #0 {
entry:
  %bitptr.addr = alloca ptr, align 8
  %byte.addr = alloca ptr, align 8
  store ptr %bitptr, ptr %bitptr.addr, align 8
  store ptr %byte, ptr %byte.addr, align 8
  %0 = load ptr, ptr %byte.addr, align 8
  %1 = load ptr, ptr %bitptr.addr, align 8
  %byte1 = getelementptr inbounds %struct.mad_bitptr, ptr %1, i32 0, i32 0
  store ptr %0, ptr %byte1, align 8
  %2 = load ptr, ptr %bitptr.addr, align 8
  %cache = getelementptr inbounds %struct.mad_bitptr, ptr %2, i32 0, i32 1
  store i16 0, ptr %cache, align 8
  %3 = load ptr, ptr %bitptr.addr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %3, i32 0, i32 2
  store i16 8, ptr %left, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @mad_bit_length(ptr noundef %begin, ptr noundef %end) #0 {
entry:
  %begin.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  store ptr %begin, ptr %begin.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  %0 = load ptr, ptr %begin.addr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %0, i32 0, i32 2
  %1 = load i16, ptr %left, align 2
  %conv = zext i16 %1 to i64
  %2 = load ptr, ptr %end.addr, align 8
  %byte = getelementptr inbounds %struct.mad_bitptr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %byte, align 8
  %4 = load ptr, ptr %begin.addr, align 8
  %byte1 = getelementptr inbounds %struct.mad_bitptr, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %byte1, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = mul nsw i64 8, %sub.ptr.sub
  %add = add nsw i64 %conv, %mul
  %6 = load ptr, ptr %end.addr, align 8
  %left2 = getelementptr inbounds %struct.mad_bitptr, ptr %6, i32 0, i32 2
  %7 = load i16, ptr %left2, align 2
  %conv3 = zext i16 %7 to i32
  %sub = sub nsw i32 8, %conv3
  %conv4 = sext i32 %sub to i64
  %add5 = add nsw i64 %add, %conv4
  %conv6 = trunc i64 %add5 to i32
  ret i32 %conv6
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @mad_bit_nextbyte(ptr noundef %bitptr) #0 {
entry:
  %bitptr.addr = alloca ptr, align 8
  store ptr %bitptr, ptr %bitptr.addr, align 8
  %0 = load ptr, ptr %bitptr.addr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %0, i32 0, i32 2
  %1 = load i16, ptr %left, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %bitptr.addr, align 8
  %byte = getelementptr inbounds %struct.mad_bitptr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %byte, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %bitptr.addr, align 8
  %byte2 = getelementptr inbounds %struct.mad_bitptr, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %byte2, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %add.ptr, %cond.false ]
  ret ptr %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @mad_bit_skip(ptr noundef %bitptr, i32 noundef %len) #0 {
entry:
  %bitptr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %bitptr, ptr %bitptr.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %div = udiv i32 %0, 8
  %1 = load ptr, ptr %bitptr.addr, align 8
  %byte = getelementptr inbounds %struct.mad_bitptr, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %byte, align 8
  %idx.ext = zext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %byte, align 8
  %3 = load i32, ptr %len.addr, align 4
  %rem = urem i32 %3, 8
  %4 = load ptr, ptr %bitptr.addr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %4, i32 0, i32 2
  %5 = load i16, ptr %left, align 2
  %conv = zext i16 %5 to i32
  %sub = sub i32 %conv, %rem
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, ptr %left, align 2
  %6 = load ptr, ptr %bitptr.addr, align 8
  %left2 = getelementptr inbounds %struct.mad_bitptr, ptr %6, i32 0, i32 2
  %7 = load i16, ptr %left2, align 2
  %conv3 = zext i16 %7 to i32
  %cmp = icmp sgt i32 %conv3, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %bitptr.addr, align 8
  %byte5 = getelementptr inbounds %struct.mad_bitptr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %byte5, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %byte5, align 8
  %10 = load ptr, ptr %bitptr.addr, align 8
  %left6 = getelementptr inbounds %struct.mad_bitptr, ptr %10, i32 0, i32 2
  %11 = load i16, ptr %left6, align 2
  %conv7 = zext i16 %11 to i32
  %add = add nsw i32 %conv7, 8
  %conv8 = trunc i32 %add to i16
  store i16 %conv8, ptr %left6, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %bitptr.addr, align 8
  %left9 = getelementptr inbounds %struct.mad_bitptr, ptr %12, i32 0, i32 2
  %13 = load i16, ptr %left9, align 2
  %conv10 = zext i16 %13 to i32
  %cmp11 = icmp slt i32 %conv10, 8
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  %14 = load ptr, ptr %bitptr.addr, align 8
  %byte14 = getelementptr inbounds %struct.mad_bitptr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %byte14, align 8
  %16 = load i8, ptr %15, align 1
  %conv15 = zext i8 %16 to i16
  %17 = load ptr, ptr %bitptr.addr, align 8
  %cache = getelementptr inbounds %struct.mad_bitptr, ptr %17, i32 0, i32 1
  store i16 %conv15, ptr %cache, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @mad_bit_read(ptr noundef %bitptr, i32 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %bitptr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %bitptr, ptr %bitptr.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %bitptr.addr, align 8
  %left = getelementptr inbounds %struct.mad_bitptr, ptr %0, i32 0, i32 2
  %1 = load i16, ptr %left, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bitptr.addr, align 8
  %byte = getelementptr inbounds %struct.mad_bitptr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %byte, align 8
  %4 = load i8, ptr %3, align 1
  %conv2 = zext i8 %4 to i16
  %5 = load ptr, ptr %bitptr.addr, align 8
  %cache = getelementptr inbounds %struct.mad_bitptr, ptr %5, i32 0, i32 1
  store i16 %conv2, ptr %cache, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %len.addr, align 4
  %7 = load ptr, ptr %bitptr.addr, align 8
  %left3 = getelementptr inbounds %struct.mad_bitptr, ptr %7, i32 0, i32 2
  %8 = load i16, ptr %left3, align 2
  %conv4 = zext i16 %8 to i32
  %cmp5 = icmp ult i32 %6, %conv4
  br i1 %cmp5, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %bitptr.addr, align 8
  %cache8 = getelementptr inbounds %struct.mad_bitptr, ptr %9, i32 0, i32 1
  %10 = load i16, ptr %cache8, align 8
  %conv9 = zext i16 %10 to i32
  %11 = load ptr, ptr %bitptr.addr, align 8
  %left10 = getelementptr inbounds %struct.mad_bitptr, ptr %11, i32 0, i32 2
  %12 = load i16, ptr %left10, align 2
  %conv11 = zext i16 %12 to i32
  %shl = shl i32 1, %conv11
  %sub = sub nsw i32 %shl, 1
  %and = and i32 %conv9, %sub
  %13 = load ptr, ptr %bitptr.addr, align 8
  %left12 = getelementptr inbounds %struct.mad_bitptr, ptr %13, i32 0, i32 2
  %14 = load i16, ptr %left12, align 2
  %conv13 = zext i16 %14 to i32
  %15 = load i32, ptr %len.addr, align 4
  %sub14 = sub i32 %conv13, %15
  %shr = ashr i32 %and, %sub14
  %conv15 = sext i32 %shr to i64
  store i64 %conv15, ptr %value, align 8
  %16 = load i32, ptr %len.addr, align 4
  %17 = load ptr, ptr %bitptr.addr, align 8
  %left16 = getelementptr inbounds %struct.mad_bitptr, ptr %17, i32 0, i32 2
  %18 = load i16, ptr %left16, align 2
  %conv17 = zext i16 %18 to i32
  %sub18 = sub i32 %conv17, %16
  %conv19 = trunc i32 %sub18 to i16
  store i16 %conv19, ptr %left16, align 2
  %19 = load i64, ptr %value, align 8
  store i64 %19, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end
  %20 = load ptr, ptr %bitptr.addr, align 8
  %cache21 = getelementptr inbounds %struct.mad_bitptr, ptr %20, i32 0, i32 1
  %21 = load i16, ptr %cache21, align 8
  %conv22 = zext i16 %21 to i32
  %22 = load ptr, ptr %bitptr.addr, align 8
  %left23 = getelementptr inbounds %struct.mad_bitptr, ptr %22, i32 0, i32 2
  %23 = load i16, ptr %left23, align 2
  %conv24 = zext i16 %23 to i32
  %shl25 = shl i32 1, %conv24
  %sub26 = sub nsw i32 %shl25, 1
  %and27 = and i32 %conv22, %sub26
  %conv28 = sext i32 %and27 to i64
  store i64 %conv28, ptr %value, align 8
  %24 = load ptr, ptr %bitptr.addr, align 8
  %left29 = getelementptr inbounds %struct.mad_bitptr, ptr %24, i32 0, i32 2
  %25 = load i16, ptr %left29, align 2
  %conv30 = zext i16 %25 to i32
  %26 = load i32, ptr %len.addr, align 4
  %sub31 = sub i32 %26, %conv30
  store i32 %sub31, ptr %len.addr, align 4
  %27 = load ptr, ptr %bitptr.addr, align 8
  %byte32 = getelementptr inbounds %struct.mad_bitptr, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %byte32, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %byte32, align 8
  %29 = load ptr, ptr %bitptr.addr, align 8
  %left33 = getelementptr inbounds %struct.mad_bitptr, ptr %29, i32 0, i32 2
  store i16 8, ptr %left33, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end20
  %30 = load i32, ptr %len.addr, align 4
  %cmp34 = icmp uge i32 %30, 8
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i64, ptr %value, align 8
  %shl36 = shl i64 %31, 8
  %32 = load ptr, ptr %bitptr.addr, align 8
  %byte37 = getelementptr inbounds %struct.mad_bitptr, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %byte37, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr38, ptr %byte37, align 8
  %34 = load i8, ptr %33, align 1
  %conv39 = zext i8 %34 to i64
  %or = or i64 %shl36, %conv39
  store i64 %or, ptr %value, align 8
  %35 = load i32, ptr %len.addr, align 4
  %sub40 = sub i32 %35, 8
  store i32 %sub40, ptr %len.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %36 = load i32, ptr %len.addr, align 4
  %cmp41 = icmp ugt i32 %36, 0
  br i1 %cmp41, label %if.then43, label %if.end58

if.then43:                                        ; preds = %while.end
  %37 = load ptr, ptr %bitptr.addr, align 8
  %byte44 = getelementptr inbounds %struct.mad_bitptr, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %byte44, align 8
  %39 = load i8, ptr %38, align 1
  %conv45 = zext i8 %39 to i16
  %40 = load ptr, ptr %bitptr.addr, align 8
  %cache46 = getelementptr inbounds %struct.mad_bitptr, ptr %40, i32 0, i32 1
  store i16 %conv45, ptr %cache46, align 8
  %41 = load i64, ptr %value, align 8
  %42 = load i32, ptr %len.addr, align 4
  %sh_prom = zext i32 %42 to i64
  %shl47 = shl i64 %41, %sh_prom
  %43 = load ptr, ptr %bitptr.addr, align 8
  %cache48 = getelementptr inbounds %struct.mad_bitptr, ptr %43, i32 0, i32 1
  %44 = load i16, ptr %cache48, align 8
  %conv49 = zext i16 %44 to i32
  %45 = load i32, ptr %len.addr, align 4
  %sub50 = sub i32 8, %45
  %shr51 = ashr i32 %conv49, %sub50
  %conv52 = sext i32 %shr51 to i64
  %or53 = or i64 %shl47, %conv52
  store i64 %or53, ptr %value, align 8
  %46 = load i32, ptr %len.addr, align 4
  %47 = load ptr, ptr %bitptr.addr, align 8
  %left54 = getelementptr inbounds %struct.mad_bitptr, ptr %47, i32 0, i32 2
  %48 = load i16, ptr %left54, align 2
  %conv55 = zext i16 %48 to i32
  %sub56 = sub i32 %conv55, %46
  %conv57 = trunc i32 %sub56 to i16
  store i16 %conv57, ptr %left54, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then43, %while.end
  %49 = load i64, ptr %value, align 8
  store i64 %49, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end58, %if.then7
  %50 = load i64, ptr %retval, align 8
  ret i64 %50
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i16 @mad_bit_crc([2 x i64] %bitptr.coerce, i32 noundef %len, i16 noundef zeroext %init) #0 {
entry:
  %bitptr = alloca %struct.mad_bitptr, align 8
  %len.addr = alloca i32, align 4
  %init.addr = alloca i16, align 2
  %crc = alloca i32, align 4
  %data = alloca i64, align 8
  %msb = alloca i32, align 4
  store [2 x i64] %bitptr.coerce, ptr %bitptr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i16 %init, ptr %init.addr, align 2
  %0 = load i16, ptr %init.addr, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %crc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp uge i32 %1, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @mad_bit_read(ptr noundef %bitptr, i32 noundef 32)
  store i64 %call, ptr %data, align 8
  %2 = load i32, ptr %crc, align 4
  %shl = shl i32 %2, 8
  %3 = load i32, ptr %crc, align 4
  %shr = lshr i32 %3, 8
  %conv2 = zext i32 %shr to i64
  %4 = load i64, ptr %data, align 8
  %shr3 = lshr i64 %4, 24
  %xor = xor i64 %conv2, %shr3
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and
  %5 = load i16, ptr %arrayidx, align 2
  %conv4 = zext i16 %5 to i32
  %xor5 = xor i32 %shl, %conv4
  store i32 %xor5, ptr %crc, align 4
  %6 = load i32, ptr %crc, align 4
  %shl6 = shl i32 %6, 8
  %7 = load i32, ptr %crc, align 4
  %shr7 = lshr i32 %7, 8
  %conv8 = zext i32 %shr7 to i64
  %8 = load i64, ptr %data, align 8
  %shr9 = lshr i64 %8, 16
  %xor10 = xor i64 %conv8, %shr9
  %and11 = and i64 %xor10, 255
  %arrayidx12 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and11
  %9 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %9 to i32
  %xor14 = xor i32 %shl6, %conv13
  store i32 %xor14, ptr %crc, align 4
  %10 = load i32, ptr %crc, align 4
  %shl15 = shl i32 %10, 8
  %11 = load i32, ptr %crc, align 4
  %shr16 = lshr i32 %11, 8
  %conv17 = zext i32 %shr16 to i64
  %12 = load i64, ptr %data, align 8
  %shr18 = lshr i64 %12, 8
  %xor19 = xor i64 %conv17, %shr18
  %and20 = and i64 %xor19, 255
  %arrayidx21 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and20
  %13 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %13 to i32
  %xor23 = xor i32 %shl15, %conv22
  store i32 %xor23, ptr %crc, align 4
  %14 = load i32, ptr %crc, align 4
  %shl24 = shl i32 %14, 8
  %15 = load i32, ptr %crc, align 4
  %shr25 = lshr i32 %15, 8
  %conv26 = zext i32 %shr25 to i64
  %16 = load i64, ptr %data, align 8
  %shr27 = lshr i64 %16, 0
  %xor28 = xor i64 %conv26, %shr27
  %and29 = and i64 %xor28, 255
  %arrayidx30 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and29
  %17 = load i16, ptr %arrayidx30, align 2
  %conv31 = zext i16 %17 to i32
  %xor32 = xor i32 %shl24, %conv31
  store i32 %xor32, ptr %crc, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %len.addr, align 4
  %sub = sub i32 %18, 32
  store i32 %sub, ptr %len.addr, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %len.addr, align 4
  %div = udiv i32 %19, 8
  switch i32 %div, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb42
    i32 1, label %sw.bb52
    i32 0, label %sw.bb62
  ]

sw.bb:                                            ; preds = %for.end
  %20 = load i32, ptr %crc, align 4
  %shl33 = shl i32 %20, 8
  %21 = load i32, ptr %crc, align 4
  %shr34 = lshr i32 %21, 8
  %conv35 = zext i32 %shr34 to i64
  %call36 = call i64 @mad_bit_read(ptr noundef %bitptr, i32 noundef 8)
  %xor37 = xor i64 %conv35, %call36
  %and38 = and i64 %xor37, 255
  %arrayidx39 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and38
  %22 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %22 to i32
  %xor41 = xor i32 %shl33, %conv40
  store i32 %xor41, ptr %crc, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %for.end, %sw.bb
  %23 = load i32, ptr %crc, align 4
  %shl43 = shl i32 %23, 8
  %24 = load i32, ptr %crc, align 4
  %shr44 = lshr i32 %24, 8
  %conv45 = zext i32 %shr44 to i64
  %call46 = call i64 @mad_bit_read(ptr noundef %bitptr, i32 noundef 8)
  %xor47 = xor i64 %conv45, %call46
  %and48 = and i64 %xor47, 255
  %arrayidx49 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and48
  %25 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %25 to i32
  %xor51 = xor i32 %shl43, %conv50
  store i32 %xor51, ptr %crc, align 4
  br label %sw.bb52

sw.bb52:                                          ; preds = %for.end, %sw.bb42
  %26 = load i32, ptr %crc, align 4
  %shl53 = shl i32 %26, 8
  %27 = load i32, ptr %crc, align 4
  %shr54 = lshr i32 %27, 8
  %conv55 = zext i32 %shr54 to i64
  %call56 = call i64 @mad_bit_read(ptr noundef %bitptr, i32 noundef 8)
  %xor57 = xor i64 %conv55, %call56
  %and58 = and i64 %xor57, 255
  %arrayidx59 = getelementptr inbounds [256 x i16], ptr @crc_table, i64 0, i64 %and58
  %28 = load i16, ptr %arrayidx59, align 2
  %conv60 = zext i16 %28 to i32
  %xor61 = xor i32 %shl53, %conv60
  store i32 %xor61, ptr %crc, align 4
  %29 = load i32, ptr %len.addr, align 4
  %rem = urem i32 %29, 8
  store i32 %rem, ptr %len.addr, align 4
  br label %sw.bb62

sw.bb62:                                          ; preds = %for.end, %sw.bb52
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sw.bb62
  br label %while.cond

while.cond:                                       ; preds = %if.end, %sw.epilog
  %30 = load i32, ptr %len.addr, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %len.addr, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call63 = call i64 @mad_bit_read(ptr noundef %bitptr, i32 noundef 1)
  %31 = load i32, ptr %crc, align 4
  %shr64 = lshr i32 %31, 15
  %conv65 = zext i32 %shr64 to i64
  %xor66 = xor i64 %call63, %conv65
  %conv67 = trunc i64 %xor66 to i32
  store i32 %conv67, ptr %msb, align 4
  %32 = load i32, ptr %crc, align 4
  %shl68 = shl i32 %32, 1
  store i32 %shl68, ptr %crc, align 4
  %33 = load i32, ptr %msb, align 4
  %and69 = and i32 %33, 1
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %34 = load i32, ptr %crc, align 4
  %xor71 = xor i32 %34, 32773
  store i32 %xor71, ptr %crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %35 = load i32, ptr %crc, align 4
  %and72 = and i32 %35, 65535
  %conv73 = trunc i32 %and72 to i16
  ret i16 %conv73
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
