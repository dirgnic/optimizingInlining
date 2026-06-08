; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/inftrees.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/inftrees.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.code = type { i8, i8, i16 }

@inflate_copyright = constant [47 x i8] c" inflate 1.2.3 Copyright 1995-2005 Mark Adler \00", align 1
@inflate_table.lbase = internal constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 2
@inflate_table.lext = internal constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 201, i16 196], align 2
@inflate_table.dbase = internal constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 2
@inflate_table.dext = internal constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflate_table(i32 noundef %type, ptr noundef %lens, i32 noundef %codes, ptr noundef %table, ptr noundef %bits, ptr noundef %work) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %lens.addr = alloca ptr, align 8
  %codes.addr = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %bits.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %sym = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %root = alloca i32, align 4
  %curr = alloca i32, align 4
  %drop = alloca i32, align 4
  %left = alloca i32, align 4
  %used = alloca i32, align 4
  %huff = alloca i32, align 4
  %incr = alloca i32, align 4
  %fill = alloca i32, align 4
  %low = alloca i32, align 4
  %mask = alloca i32, align 4
  %this = alloca %struct.code, align 2
  %next = alloca ptr, align 8
  %base = alloca ptr, align 8
  %extra = alloca ptr, align 8
  %end = alloca i32, align 4
  %count = alloca [16 x i16], align 2
  %offs = alloca [16 x i16], align 2
  store i32 %type, ptr %type.addr, align 4
  store ptr %lens, ptr %lens.addr, align 8
  store i32 %codes, ptr %codes.addr, align 4
  store ptr %table, ptr %table.addr, align 8
  store ptr %bits, ptr %bits.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store i32 0, ptr %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %len, align 4
  %cmp = icmp ule i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %len, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %len, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %len, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %sym, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.end
  %3 = load i32, ptr %sym, align 4
  %4 = load i32, ptr %codes.addr, align 4
  %cmp2 = icmp ult i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %lens.addr, align 8
  %6 = load i32, ptr %sym, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %5, i64 %idxprom4
  %7 = load i16, ptr %arrayidx5, align 2
  %idxprom6 = zext i16 %7 to i64
  %arrayidx7 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom6
  %8 = load i16, ptr %arrayidx7, align 2
  %inc8 = add i16 %8, 1
  store i16 %inc8, ptr %arrayidx7, align 2
  br label %for.inc9

for.inc9:                                         ; preds = %for.body3
  %9 = load i32, ptr %sym, align 4
  %inc10 = add i32 %9, 1
  store i32 %inc10, ptr %sym, align 4
  br label %for.cond1, !llvm.loop !8

for.end11:                                        ; preds = %for.cond1
  %10 = load ptr, ptr %bits.addr, align 8
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %root, align 4
  store i32 15, ptr %max, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc19, %for.end11
  %12 = load i32, ptr %max, align 4
  %cmp13 = icmp uge i32 %12, 1
  br i1 %cmp13, label %for.body14, label %for.end20

for.body14:                                       ; preds = %for.cond12
  %13 = load i32, ptr %max, align 4
  %idxprom15 = zext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom15
  %14 = load i16, ptr %arrayidx16, align 2
  %conv = zext i16 %14 to i32
  %cmp17 = icmp ne i32 %conv, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  br label %for.end20

if.end:                                           ; preds = %for.body14
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %15 = load i32, ptr %max, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %max, align 4
  br label %for.cond12, !llvm.loop !9

for.end20:                                        ; preds = %if.then, %for.cond12
  %16 = load i32, ptr %root, align 4
  %17 = load i32, ptr %max, align 4
  %cmp21 = icmp ugt i32 %16, %17
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end20
  %18 = load i32, ptr %max, align 4
  store i32 %18, ptr %root, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end20
  %19 = load i32, ptr %max, align 4
  %cmp25 = icmp eq i32 %19, 0
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  %op = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  store i8 64, ptr %op, align 2
  %bits28 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  store i8 1, ptr %bits28, align 1
  %val = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  store i16 0, ptr %val, align 2
  %20 = load ptr, ptr %table.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %incdec.ptr = getelementptr inbounds %struct.code, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %this, i64 4, i1 false)
  %22 = load ptr, ptr %table.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %incdec.ptr29 = getelementptr inbounds %struct.code, ptr %23, i32 1
  store ptr %incdec.ptr29, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %23, ptr align 2 %this, i64 4, i1 false)
  %24 = load ptr, ptr %bits.addr, align 8
  store i32 1, ptr %24, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end24
  store i32 1, ptr %min, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc42, %if.end30
  %25 = load i32, ptr %min, align 4
  %cmp32 = icmp ule i32 %25, 15
  br i1 %cmp32, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond31
  %26 = load i32, ptr %min, align 4
  %idxprom35 = zext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom35
  %27 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %27 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body34
  br label %for.end44

if.end41:                                         ; preds = %for.body34
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %28 = load i32, ptr %min, align 4
  %inc43 = add i32 %28, 1
  store i32 %inc43, ptr %min, align 4
  br label %for.cond31, !llvm.loop !10

for.end44:                                        ; preds = %if.then40, %for.cond31
  %29 = load i32, ptr %root, align 4
  %30 = load i32, ptr %min, align 4
  %cmp45 = icmp ult i32 %29, %30
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.end44
  %31 = load i32, ptr %min, align 4
  store i32 %31, ptr %root, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %for.end44
  store i32 1, ptr %left, align 4
  store i32 1, ptr %len, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %if.end48
  %32 = load i32, ptr %len, align 4
  %cmp50 = icmp ule i32 %32, 15
  br i1 %cmp50, label %for.body52, label %for.end62

for.body52:                                       ; preds = %for.cond49
  %33 = load i32, ptr %left, align 4
  %shl = shl i32 %33, 1
  store i32 %shl, ptr %left, align 4
  %34 = load i32, ptr %len, align 4
  %idxprom53 = zext i32 %34 to i64
  %arrayidx54 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom53
  %35 = load i16, ptr %arrayidx54, align 2
  %conv55 = zext i16 %35 to i32
  %36 = load i32, ptr %left, align 4
  %sub = sub nsw i32 %36, %conv55
  store i32 %sub, ptr %left, align 4
  %37 = load i32, ptr %left, align 4
  %cmp56 = icmp slt i32 %37, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.body52
  store i32 -1, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %for.body52
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59
  %38 = load i32, ptr %len, align 4
  %inc61 = add i32 %38, 1
  store i32 %inc61, ptr %len, align 4
  br label %for.cond49, !llvm.loop !11

for.end62:                                        ; preds = %for.cond49
  %39 = load i32, ptr %left, align 4
  %cmp63 = icmp sgt i32 %39, 0
  br i1 %cmp63, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %for.end62
  %40 = load i32, ptr %type.addr, align 4
  %cmp65 = icmp eq i32 %40, 0
  br i1 %cmp65, label %if.then69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %41 = load i32, ptr %max, align 4
  %cmp67 = icmp ne i32 %41, 1
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %lor.lhs.false, %for.end62
  %arrayidx71 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 1
  store i16 0, ptr %arrayidx71, align 2
  store i32 1, ptr %len, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc86, %if.end70
  %42 = load i32, ptr %len, align 4
  %cmp73 = icmp ult i32 %42, 15
  br i1 %cmp73, label %for.body75, label %for.end88

for.body75:                                       ; preds = %for.cond72
  %43 = load i32, ptr %len, align 4
  %idxprom76 = zext i32 %43 to i64
  %arrayidx77 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 %idxprom76
  %44 = load i16, ptr %arrayidx77, align 2
  %conv78 = zext i16 %44 to i32
  %45 = load i32, ptr %len, align 4
  %idxprom79 = zext i32 %45 to i64
  %arrayidx80 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom79
  %46 = load i16, ptr %arrayidx80, align 2
  %conv81 = zext i16 %46 to i32
  %add = add nsw i32 %conv78, %conv81
  %conv82 = trunc i32 %add to i16
  %47 = load i32, ptr %len, align 4
  %add83 = add i32 %47, 1
  %idxprom84 = zext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 %idxprom84
  store i16 %conv82, ptr %arrayidx85, align 2
  br label %for.inc86

for.inc86:                                        ; preds = %for.body75
  %48 = load i32, ptr %len, align 4
  %inc87 = add i32 %48, 1
  store i32 %inc87, ptr %len, align 4
  br label %for.cond72, !llvm.loop !12

for.end88:                                        ; preds = %for.cond72
  store i32 0, ptr %sym, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc108, %for.end88
  %49 = load i32, ptr %sym, align 4
  %50 = load i32, ptr %codes.addr, align 4
  %cmp90 = icmp ult i32 %49, %50
  br i1 %cmp90, label %for.body92, label %for.end110

for.body92:                                       ; preds = %for.cond89
  %51 = load ptr, ptr %lens.addr, align 8
  %52 = load i32, ptr %sym, align 4
  %idxprom93 = zext i32 %52 to i64
  %arrayidx94 = getelementptr inbounds i16, ptr %51, i64 %idxprom93
  %53 = load i16, ptr %arrayidx94, align 2
  %conv95 = zext i16 %53 to i32
  %cmp96 = icmp ne i32 %conv95, 0
  br i1 %cmp96, label %if.then98, label %if.end107

if.then98:                                        ; preds = %for.body92
  %54 = load i32, ptr %sym, align 4
  %conv99 = trunc i32 %54 to i16
  %55 = load ptr, ptr %work.addr, align 8
  %56 = load ptr, ptr %lens.addr, align 8
  %57 = load i32, ptr %sym, align 4
  %idxprom100 = zext i32 %57 to i64
  %arrayidx101 = getelementptr inbounds i16, ptr %56, i64 %idxprom100
  %58 = load i16, ptr %arrayidx101, align 2
  %idxprom102 = zext i16 %58 to i64
  %arrayidx103 = getelementptr inbounds [16 x i16], ptr %offs, i64 0, i64 %idxprom102
  %59 = load i16, ptr %arrayidx103, align 2
  %inc104 = add i16 %59, 1
  store i16 %inc104, ptr %arrayidx103, align 2
  %idxprom105 = zext i16 %59 to i64
  %arrayidx106 = getelementptr inbounds i16, ptr %55, i64 %idxprom105
  store i16 %conv99, ptr %arrayidx106, align 2
  br label %if.end107

if.end107:                                        ; preds = %if.then98, %for.body92
  br label %for.inc108

for.inc108:                                       ; preds = %if.end107
  %60 = load i32, ptr %sym, align 4
  %inc109 = add i32 %60, 1
  store i32 %inc109, ptr %sym, align 4
  br label %for.cond89, !llvm.loop !13

for.end110:                                       ; preds = %for.cond89
  %61 = load i32, ptr %type.addr, align 4
  switch i32 %61, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb111
  ]

sw.bb:                                            ; preds = %for.end110
  %62 = load ptr, ptr %work.addr, align 8
  store ptr %62, ptr %extra, align 8
  store ptr %62, ptr %base, align 8
  store i32 19, ptr %end, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %for.end110
  store ptr @inflate_table.lbase, ptr %base, align 8
  %63 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr inbounds i16, ptr %63, i64 -257
  store ptr %add.ptr, ptr %base, align 8
  store ptr @inflate_table.lext, ptr %extra, align 8
  %64 = load ptr, ptr %extra, align 8
  %add.ptr112 = getelementptr inbounds i16, ptr %64, i64 -257
  store ptr %add.ptr112, ptr %extra, align 8
  store i32 256, ptr %end, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end110
  store ptr @inflate_table.dbase, ptr %base, align 8
  store ptr @inflate_table.dext, ptr %extra, align 8
  store i32 -1, ptr %end, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb111, %sw.bb
  store i32 0, ptr %huff, align 4
  store i32 0, ptr %sym, align 4
  %65 = load i32, ptr %min, align 4
  store i32 %65, ptr %len, align 4
  %66 = load ptr, ptr %table.addr, align 8
  %67 = load ptr, ptr %66, align 8
  store ptr %67, ptr %next, align 8
  %68 = load i32, ptr %root, align 4
  store i32 %68, ptr %curr, align 4
  store i32 0, ptr %drop, align 4
  store i32 -1, ptr %low, align 4
  %69 = load i32, ptr %root, align 4
  %shl113 = shl i32 1, %69
  store i32 %shl113, ptr %used, align 4
  %70 = load i32, ptr %used, align 4
  %sub114 = sub i32 %70, 1
  store i32 %sub114, ptr %mask, align 4
  %71 = load i32, ptr %type.addr, align 4
  %cmp115 = icmp eq i32 %71, 1
  br i1 %cmp115, label %land.lhs.true117, label %if.end121

land.lhs.true117:                                 ; preds = %sw.epilog
  %72 = load i32, ptr %used, align 4
  %cmp118 = icmp uge i32 %72, 1456
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %land.lhs.true117
  store i32 1, ptr %retval, align 4
  br label %return

if.end121:                                        ; preds = %land.lhs.true117, %sw.epilog
  br label %for.cond122

for.cond122:                                      ; preds = %if.end249, %if.end121
  %73 = load i32, ptr %len, align 4
  %74 = load i32, ptr %drop, align 4
  %sub123 = sub i32 %73, %74
  %conv124 = trunc i32 %sub123 to i8
  %bits125 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  store i8 %conv124, ptr %bits125, align 1
  %75 = load ptr, ptr %work.addr, align 8
  %76 = load i32, ptr %sym, align 4
  %idxprom126 = zext i32 %76 to i64
  %arrayidx127 = getelementptr inbounds i16, ptr %75, i64 %idxprom126
  %77 = load i16, ptr %arrayidx127, align 2
  %conv128 = zext i16 %77 to i32
  %78 = load i32, ptr %end, align 4
  %cmp129 = icmp slt i32 %conv128, %78
  br i1 %cmp129, label %if.then131, label %if.else

if.then131:                                       ; preds = %for.cond122
  %op132 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  store i8 0, ptr %op132, align 2
  %79 = load ptr, ptr %work.addr, align 8
  %80 = load i32, ptr %sym, align 4
  %idxprom133 = zext i32 %80 to i64
  %arrayidx134 = getelementptr inbounds i16, ptr %79, i64 %idxprom133
  %81 = load i16, ptr %arrayidx134, align 2
  %val135 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  store i16 %81, ptr %val135, align 2
  br label %if.end157

if.else:                                          ; preds = %for.cond122
  %82 = load ptr, ptr %work.addr, align 8
  %83 = load i32, ptr %sym, align 4
  %idxprom136 = zext i32 %83 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %82, i64 %idxprom136
  %84 = load i16, ptr %arrayidx137, align 2
  %conv138 = zext i16 %84 to i32
  %85 = load i32, ptr %end, align 4
  %cmp139 = icmp sgt i32 %conv138, %85
  br i1 %cmp139, label %if.then141, label %if.else153

if.then141:                                       ; preds = %if.else
  %86 = load ptr, ptr %extra, align 8
  %87 = load ptr, ptr %work.addr, align 8
  %88 = load i32, ptr %sym, align 4
  %idxprom142 = zext i32 %88 to i64
  %arrayidx143 = getelementptr inbounds i16, ptr %87, i64 %idxprom142
  %89 = load i16, ptr %arrayidx143, align 2
  %idxprom144 = zext i16 %89 to i64
  %arrayidx145 = getelementptr inbounds i16, ptr %86, i64 %idxprom144
  %90 = load i16, ptr %arrayidx145, align 2
  %conv146 = trunc i16 %90 to i8
  %op147 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  store i8 %conv146, ptr %op147, align 2
  %91 = load ptr, ptr %base, align 8
  %92 = load ptr, ptr %work.addr, align 8
  %93 = load i32, ptr %sym, align 4
  %idxprom148 = zext i32 %93 to i64
  %arrayidx149 = getelementptr inbounds i16, ptr %92, i64 %idxprom148
  %94 = load i16, ptr %arrayidx149, align 2
  %idxprom150 = zext i16 %94 to i64
  %arrayidx151 = getelementptr inbounds i16, ptr %91, i64 %idxprom150
  %95 = load i16, ptr %arrayidx151, align 2
  %val152 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  store i16 %95, ptr %val152, align 2
  br label %if.end156

if.else153:                                       ; preds = %if.else
  %op154 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  store i8 96, ptr %op154, align 2
  %val155 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  store i16 0, ptr %val155, align 2
  br label %if.end156

if.end156:                                        ; preds = %if.else153, %if.then141
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then131
  %96 = load i32, ptr %len, align 4
  %97 = load i32, ptr %drop, align 4
  %sub158 = sub i32 %96, %97
  %shl159 = shl i32 1, %sub158
  store i32 %shl159, ptr %incr, align 4
  %98 = load i32, ptr %curr, align 4
  %shl160 = shl i32 1, %98
  store i32 %shl160, ptr %fill, align 4
  %99 = load i32, ptr %fill, align 4
  store i32 %99, ptr %min, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end157
  %100 = load i32, ptr %incr, align 4
  %101 = load i32, ptr %fill, align 4
  %sub161 = sub i32 %101, %100
  store i32 %sub161, ptr %fill, align 4
  %102 = load ptr, ptr %next, align 8
  %103 = load i32, ptr %huff, align 4
  %104 = load i32, ptr %drop, align 4
  %shr = lshr i32 %103, %104
  %105 = load i32, ptr %fill, align 4
  %add162 = add i32 %shr, %105
  %idxprom163 = zext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds %struct.code, ptr %102, i64 %idxprom163
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx164, ptr align 2 %this, i64 4, i1 false)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %106 = load i32, ptr %fill, align 4
  %cmp165 = icmp ne i32 %106, 0
  br i1 %cmp165, label %do.body, label %do.end, !llvm.loop !14

do.end:                                           ; preds = %do.cond
  %107 = load i32, ptr %len, align 4
  %sub167 = sub i32 %107, 1
  %shl168 = shl i32 1, %sub167
  store i32 %shl168, ptr %incr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %108 = load i32, ptr %huff, align 4
  %109 = load i32, ptr %incr, align 4
  %and = and i32 %108, %109
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %110 = load i32, ptr %incr, align 4
  %shr169 = lshr i32 %110, 1
  store i32 %shr169, ptr %incr, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %111 = load i32, ptr %incr, align 4
  %cmp170 = icmp ne i32 %111, 0
  br i1 %cmp170, label %if.then172, label %if.else176

if.then172:                                       ; preds = %while.end
  %112 = load i32, ptr %incr, align 4
  %sub173 = sub i32 %112, 1
  %113 = load i32, ptr %huff, align 4
  %and174 = and i32 %113, %sub173
  store i32 %and174, ptr %huff, align 4
  %114 = load i32, ptr %incr, align 4
  %115 = load i32, ptr %huff, align 4
  %add175 = add i32 %115, %114
  store i32 %add175, ptr %huff, align 4
  br label %if.end177

if.else176:                                       ; preds = %while.end
  store i32 0, ptr %huff, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.else176, %if.then172
  %116 = load i32, ptr %sym, align 4
  %inc178 = add i32 %116, 1
  store i32 %inc178, ptr %sym, align 4
  %117 = load i32, ptr %len, align 4
  %idxprom179 = zext i32 %117 to i64
  %arrayidx180 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom179
  %118 = load i16, ptr %arrayidx180, align 2
  %dec181 = add i16 %118, -1
  store i16 %dec181, ptr %arrayidx180, align 2
  %conv182 = zext i16 %dec181 to i32
  %cmp183 = icmp eq i32 %conv182, 0
  br i1 %cmp183, label %if.then185, label %if.end195

if.then185:                                       ; preds = %if.end177
  %119 = load i32, ptr %len, align 4
  %120 = load i32, ptr %max, align 4
  %cmp186 = icmp eq i32 %119, %120
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.then185
  br label %for.end250

if.end189:                                        ; preds = %if.then185
  %121 = load ptr, ptr %lens.addr, align 8
  %122 = load ptr, ptr %work.addr, align 8
  %123 = load i32, ptr %sym, align 4
  %idxprom190 = zext i32 %123 to i64
  %arrayidx191 = getelementptr inbounds i16, ptr %122, i64 %idxprom190
  %124 = load i16, ptr %arrayidx191, align 2
  %idxprom192 = zext i16 %124 to i64
  %arrayidx193 = getelementptr inbounds i16, ptr %121, i64 %idxprom192
  %125 = load i16, ptr %arrayidx193, align 2
  %conv194 = zext i16 %125 to i32
  store i32 %conv194, ptr %len, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.end189, %if.end177
  %126 = load i32, ptr %len, align 4
  %127 = load i32, ptr %root, align 4
  %cmp196 = icmp ugt i32 %126, %127
  br i1 %cmp196, label %land.lhs.true198, label %if.end249

land.lhs.true198:                                 ; preds = %if.end195
  %128 = load i32, ptr %huff, align 4
  %129 = load i32, ptr %mask, align 4
  %and199 = and i32 %128, %129
  %130 = load i32, ptr %low, align 4
  %cmp200 = icmp ne i32 %and199, %130
  br i1 %cmp200, label %if.then202, label %if.end249

if.then202:                                       ; preds = %land.lhs.true198
  %131 = load i32, ptr %drop, align 4
  %cmp203 = icmp eq i32 %131, 0
  br i1 %cmp203, label %if.then205, label %if.end206

if.then205:                                       ; preds = %if.then202
  %132 = load i32, ptr %root, align 4
  store i32 %132, ptr %drop, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then205, %if.then202
  %133 = load i32, ptr %min, align 4
  %134 = load ptr, ptr %next, align 8
  %idx.ext = zext i32 %133 to i64
  %add.ptr207 = getelementptr inbounds %struct.code, ptr %134, i64 %idx.ext
  store ptr %add.ptr207, ptr %next, align 8
  %135 = load i32, ptr %len, align 4
  %136 = load i32, ptr %drop, align 4
  %sub208 = sub i32 %135, %136
  store i32 %sub208, ptr %curr, align 4
  %137 = load i32, ptr %curr, align 4
  %shl209 = shl i32 1, %137
  store i32 %shl209, ptr %left, align 4
  br label %while.cond210

while.cond210:                                    ; preds = %if.end223, %if.end206
  %138 = load i32, ptr %curr, align 4
  %139 = load i32, ptr %drop, align 4
  %add211 = add i32 %138, %139
  %140 = load i32, ptr %max, align 4
  %cmp212 = icmp ult i32 %add211, %140
  br i1 %cmp212, label %while.body214, label %while.end226

while.body214:                                    ; preds = %while.cond210
  %141 = load i32, ptr %curr, align 4
  %142 = load i32, ptr %drop, align 4
  %add215 = add i32 %141, %142
  %idxprom216 = zext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds [16 x i16], ptr %count, i64 0, i64 %idxprom216
  %143 = load i16, ptr %arrayidx217, align 2
  %conv218 = zext i16 %143 to i32
  %144 = load i32, ptr %left, align 4
  %sub219 = sub nsw i32 %144, %conv218
  store i32 %sub219, ptr %left, align 4
  %145 = load i32, ptr %left, align 4
  %cmp220 = icmp sle i32 %145, 0
  br i1 %cmp220, label %if.then222, label %if.end223

if.then222:                                       ; preds = %while.body214
  br label %while.end226

if.end223:                                        ; preds = %while.body214
  %146 = load i32, ptr %curr, align 4
  %inc224 = add i32 %146, 1
  store i32 %inc224, ptr %curr, align 4
  %147 = load i32, ptr %left, align 4
  %shl225 = shl i32 %147, 1
  store i32 %shl225, ptr %left, align 4
  br label %while.cond210, !llvm.loop !16

while.end226:                                     ; preds = %if.then222, %while.cond210
  %148 = load i32, ptr %curr, align 4
  %shl227 = shl i32 1, %148
  %149 = load i32, ptr %used, align 4
  %add228 = add i32 %149, %shl227
  store i32 %add228, ptr %used, align 4
  %150 = load i32, ptr %type.addr, align 4
  %cmp229 = icmp eq i32 %150, 1
  br i1 %cmp229, label %land.lhs.true231, label %if.end235

land.lhs.true231:                                 ; preds = %while.end226
  %151 = load i32, ptr %used, align 4
  %cmp232 = icmp uge i32 %151, 1456
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %land.lhs.true231
  store i32 1, ptr %retval, align 4
  br label %return

if.end235:                                        ; preds = %land.lhs.true231, %while.end226
  %152 = load i32, ptr %huff, align 4
  %153 = load i32, ptr %mask, align 4
  %and236 = and i32 %152, %153
  store i32 %and236, ptr %low, align 4
  %154 = load i32, ptr %curr, align 4
  %conv237 = trunc i32 %154 to i8
  %155 = load ptr, ptr %table.addr, align 8
  %156 = load ptr, ptr %155, align 8
  %157 = load i32, ptr %low, align 4
  %idxprom238 = zext i32 %157 to i64
  %arrayidx239 = getelementptr inbounds %struct.code, ptr %156, i64 %idxprom238
  %op240 = getelementptr inbounds %struct.code, ptr %arrayidx239, i32 0, i32 0
  store i8 %conv237, ptr %op240, align 2
  %158 = load i32, ptr %root, align 4
  %conv241 = trunc i32 %158 to i8
  %159 = load ptr, ptr %table.addr, align 8
  %160 = load ptr, ptr %159, align 8
  %161 = load i32, ptr %low, align 4
  %idxprom242 = zext i32 %161 to i64
  %arrayidx243 = getelementptr inbounds %struct.code, ptr %160, i64 %idxprom242
  %bits244 = getelementptr inbounds %struct.code, ptr %arrayidx243, i32 0, i32 1
  store i8 %conv241, ptr %bits244, align 1
  %162 = load ptr, ptr %next, align 8
  %163 = load ptr, ptr %table.addr, align 8
  %164 = load ptr, ptr %163, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %162 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %164 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv245 = trunc i64 %sub.ptr.div to i16
  %165 = load ptr, ptr %table.addr, align 8
  %166 = load ptr, ptr %165, align 8
  %167 = load i32, ptr %low, align 4
  %idxprom246 = zext i32 %167 to i64
  %arrayidx247 = getelementptr inbounds %struct.code, ptr %166, i64 %idxprom246
  %val248 = getelementptr inbounds %struct.code, ptr %arrayidx247, i32 0, i32 2
  store i16 %conv245, ptr %val248, align 2
  br label %if.end249

if.end249:                                        ; preds = %if.end235, %land.lhs.true198, %if.end195
  br label %for.cond122

for.end250:                                       ; preds = %if.then188
  %op251 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  store i8 64, ptr %op251, align 2
  %168 = load i32, ptr %len, align 4
  %169 = load i32, ptr %drop, align 4
  %sub252 = sub i32 %168, %169
  %conv253 = trunc i32 %sub252 to i8
  %bits254 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  store i8 %conv253, ptr %bits254, align 1
  %val255 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  store i16 0, ptr %val255, align 2
  br label %while.cond256

while.cond256:                                    ; preds = %if.end288, %for.end250
  %170 = load i32, ptr %huff, align 4
  %cmp257 = icmp ne i32 %170, 0
  br i1 %cmp257, label %while.body259, label %while.end289

while.body259:                                    ; preds = %while.cond256
  %171 = load i32, ptr %drop, align 4
  %cmp260 = icmp ne i32 %171, 0
  br i1 %cmp260, label %land.lhs.true262, label %if.end269

land.lhs.true262:                                 ; preds = %while.body259
  %172 = load i32, ptr %huff, align 4
  %173 = load i32, ptr %mask, align 4
  %and263 = and i32 %172, %173
  %174 = load i32, ptr %low, align 4
  %cmp264 = icmp ne i32 %and263, %174
  br i1 %cmp264, label %if.then266, label %if.end269

if.then266:                                       ; preds = %land.lhs.true262
  store i32 0, ptr %drop, align 4
  %175 = load i32, ptr %root, align 4
  store i32 %175, ptr %len, align 4
  %176 = load ptr, ptr %table.addr, align 8
  %177 = load ptr, ptr %176, align 8
  store ptr %177, ptr %next, align 8
  %178 = load i32, ptr %len, align 4
  %conv267 = trunc i32 %178 to i8
  %bits268 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  store i8 %conv267, ptr %bits268, align 1
  br label %if.end269

if.end269:                                        ; preds = %if.then266, %land.lhs.true262, %while.body259
  %179 = load ptr, ptr %next, align 8
  %180 = load i32, ptr %huff, align 4
  %181 = load i32, ptr %drop, align 4
  %shr270 = lshr i32 %180, %181
  %idxprom271 = zext i32 %shr270 to i64
  %arrayidx272 = getelementptr inbounds %struct.code, ptr %179, i64 %idxprom271
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %arrayidx272, ptr align 2 %this, i64 4, i1 false)
  %182 = load i32, ptr %len, align 4
  %sub273 = sub i32 %182, 1
  %shl274 = shl i32 1, %sub273
  store i32 %shl274, ptr %incr, align 4
  br label %while.cond275

while.cond275:                                    ; preds = %while.body278, %if.end269
  %183 = load i32, ptr %huff, align 4
  %184 = load i32, ptr %incr, align 4
  %and276 = and i32 %183, %184
  %tobool277 = icmp ne i32 %and276, 0
  br i1 %tobool277, label %while.body278, label %while.end280

while.body278:                                    ; preds = %while.cond275
  %185 = load i32, ptr %incr, align 4
  %shr279 = lshr i32 %185, 1
  store i32 %shr279, ptr %incr, align 4
  br label %while.cond275, !llvm.loop !17

while.end280:                                     ; preds = %while.cond275
  %186 = load i32, ptr %incr, align 4
  %cmp281 = icmp ne i32 %186, 0
  br i1 %cmp281, label %if.then283, label %if.else287

if.then283:                                       ; preds = %while.end280
  %187 = load i32, ptr %incr, align 4
  %sub284 = sub i32 %187, 1
  %188 = load i32, ptr %huff, align 4
  %and285 = and i32 %188, %sub284
  store i32 %and285, ptr %huff, align 4
  %189 = load i32, ptr %incr, align 4
  %190 = load i32, ptr %huff, align 4
  %add286 = add i32 %190, %189
  store i32 %add286, ptr %huff, align 4
  br label %if.end288

if.else287:                                       ; preds = %while.end280
  store i32 0, ptr %huff, align 4
  br label %if.end288

if.end288:                                        ; preds = %if.else287, %if.then283
  br label %while.cond256, !llvm.loop !18

while.end289:                                     ; preds = %while.cond256
  %191 = load i32, ptr %used, align 4
  %192 = load ptr, ptr %table.addr, align 8
  %193 = load ptr, ptr %192, align 8
  %idx.ext290 = zext i32 %191 to i64
  %add.ptr291 = getelementptr inbounds %struct.code, ptr %193, i64 %idx.ext290
  store ptr %add.ptr291, ptr %192, align 8
  %194 = load i32, ptr %root, align 4
  %195 = load ptr, ptr %bits.addr, align 8
  store i32 %194, ptr %195, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end289, %if.then234, %if.then120, %if.then69, %if.then58, %if.then27
  %196 = load i32, ptr %retval, align 4
  ret i32 %196
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
