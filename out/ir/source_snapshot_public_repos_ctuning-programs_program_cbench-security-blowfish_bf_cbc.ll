; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_cbc.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_cbc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BF_cbc_encrypt(ptr noundef %in, ptr noundef %out, i64 noundef %length, ptr noundef %ks, ptr noundef %iv, i32 noundef %encrypt) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %ks.addr = alloca ptr, align 8
  %iv.addr = alloca ptr, align 8
  %encrypt.addr = alloca i32, align 4
  %tin0 = alloca i64, align 8
  %tin1 = alloca i64, align 8
  %tout0 = alloca i64, align 8
  %tout1 = alloca i64, align 8
  %xor0 = alloca i64, align 8
  %xor1 = alloca i64, align 8
  %l = alloca i64, align 8
  %tin = alloca [2 x i64], align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr %ks, ptr %ks.addr, align 8
  store ptr %iv, ptr %iv.addr, align 8
  store i32 %encrypt, ptr %encrypt.addr, align 4
  %0 = load i64, ptr %length.addr, align 8
  store i64 %0, ptr %l, align 8
  %1 = load i32, ptr %encrypt.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %iv.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, ptr %tout0, align 8
  %4 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr1, ptr %iv.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv2 = zext i8 %5 to i64
  %shl3 = shl i64 %conv2, 16
  %6 = load i64, ptr %tout0, align 8
  %or = or i64 %6, %shl3
  store i64 %or, ptr %tout0, align 8
  %7 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr4, ptr %iv.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv5 = zext i8 %8 to i64
  %shl6 = shl i64 %conv5, 8
  %9 = load i64, ptr %tout0, align 8
  %or7 = or i64 %9, %shl6
  store i64 %or7, ptr %tout0, align 8
  %10 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr8, ptr %iv.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv9 = zext i8 %11 to i64
  %12 = load i64, ptr %tout0, align 8
  %or10 = or i64 %12, %conv9
  store i64 %or10, ptr %tout0, align 8
  %13 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr11, ptr %iv.addr, align 8
  %14 = load i8, ptr %13, align 1
  %conv12 = zext i8 %14 to i64
  %shl13 = shl i64 %conv12, 24
  store i64 %shl13, ptr %tout1, align 8
  %15 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr14, ptr %iv.addr, align 8
  %16 = load i8, ptr %15, align 1
  %conv15 = zext i8 %16 to i64
  %shl16 = shl i64 %conv15, 16
  %17 = load i64, ptr %tout1, align 8
  %or17 = or i64 %17, %shl16
  store i64 %or17, ptr %tout1, align 8
  %18 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr18, ptr %iv.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv19 = zext i8 %19 to i64
  %shl20 = shl i64 %conv19, 8
  %20 = load i64, ptr %tout1, align 8
  %or21 = or i64 %20, %shl20
  store i64 %or21, ptr %tout1, align 8
  %21 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr22, ptr %iv.addr, align 8
  %22 = load i8, ptr %21, align 1
  %conv23 = zext i8 %22 to i64
  %23 = load i64, ptr %tout1, align 8
  %or24 = or i64 %23, %conv23
  store i64 %or24, ptr %tout1, align 8
  %24 = load ptr, ptr %iv.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 -8
  store ptr %add.ptr, ptr %iv.addr, align 8
  %25 = load i64, ptr %l, align 8
  %sub = sub nsw i64 %25, 8
  store i64 %sub, ptr %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %26 = load i64, ptr %l, align 8
  %cmp = icmp sge i64 %26, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %in.addr, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr26, ptr %in.addr, align 8
  %28 = load i8, ptr %27, align 1
  %conv27 = zext i8 %28 to i64
  %shl28 = shl i64 %conv27, 24
  store i64 %shl28, ptr %tin0, align 8
  %29 = load ptr, ptr %in.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr29, ptr %in.addr, align 8
  %30 = load i8, ptr %29, align 1
  %conv30 = zext i8 %30 to i64
  %shl31 = shl i64 %conv30, 16
  %31 = load i64, ptr %tin0, align 8
  %or32 = or i64 %31, %shl31
  store i64 %or32, ptr %tin0, align 8
  %32 = load ptr, ptr %in.addr, align 8
  %incdec.ptr33 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr33, ptr %in.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv34 = zext i8 %33 to i64
  %shl35 = shl i64 %conv34, 8
  %34 = load i64, ptr %tin0, align 8
  %or36 = or i64 %34, %shl35
  store i64 %or36, ptr %tin0, align 8
  %35 = load ptr, ptr %in.addr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr37, ptr %in.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv38 = zext i8 %36 to i64
  %37 = load i64, ptr %tin0, align 8
  %or39 = or i64 %37, %conv38
  store i64 %or39, ptr %tin0, align 8
  %38 = load ptr, ptr %in.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr40, ptr %in.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv41 = zext i8 %39 to i64
  %shl42 = shl i64 %conv41, 24
  store i64 %shl42, ptr %tin1, align 8
  %40 = load ptr, ptr %in.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr43, ptr %in.addr, align 8
  %41 = load i8, ptr %40, align 1
  %conv44 = zext i8 %41 to i64
  %shl45 = shl i64 %conv44, 16
  %42 = load i64, ptr %tin1, align 8
  %or46 = or i64 %42, %shl45
  store i64 %or46, ptr %tin1, align 8
  %43 = load ptr, ptr %in.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr47, ptr %in.addr, align 8
  %44 = load i8, ptr %43, align 1
  %conv48 = zext i8 %44 to i64
  %shl49 = shl i64 %conv48, 8
  %45 = load i64, ptr %tin1, align 8
  %or50 = or i64 %45, %shl49
  store i64 %or50, ptr %tin1, align 8
  %46 = load ptr, ptr %in.addr, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr51, ptr %in.addr, align 8
  %47 = load i8, ptr %46, align 1
  %conv52 = zext i8 %47 to i64
  %48 = load i64, ptr %tin1, align 8
  %or53 = or i64 %48, %conv52
  store i64 %or53, ptr %tin1, align 8
  %49 = load i64, ptr %tout0, align 8
  %50 = load i64, ptr %tin0, align 8
  %xor = xor i64 %50, %49
  store i64 %xor, ptr %tin0, align 8
  %51 = load i64, ptr %tout1, align 8
  %52 = load i64, ptr %tin1, align 8
  %xor54 = xor i64 %52, %51
  store i64 %xor54, ptr %tin1, align 8
  %53 = load i64, ptr %tin0, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  store i64 %53, ptr %arrayidx, align 8
  %54 = load i64, ptr %tin1, align 8
  %arrayidx55 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  store i64 %54, ptr %arrayidx55, align 8
  %arraydecay = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %55 = load ptr, ptr %ks.addr, align 8
  call void @BF_encrypt(ptr noundef %arraydecay, ptr noundef %55, i32 noundef 1)
  %arrayidx56 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %56 = load i64, ptr %arrayidx56, align 8
  store i64 %56, ptr %tout0, align 8
  %arrayidx57 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  %57 = load i64, ptr %arrayidx57, align 8
  store i64 %57, ptr %tout1, align 8
  %58 = load i64, ptr %tout0, align 8
  %shr = lshr i64 %58, 24
  %and = and i64 %shr, 255
  %conv58 = trunc i64 %and to i8
  %59 = load ptr, ptr %out.addr, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %59, i32 1
  store ptr %incdec.ptr59, ptr %out.addr, align 8
  store i8 %conv58, ptr %59, align 1
  %60 = load i64, ptr %tout0, align 8
  %shr60 = lshr i64 %60, 16
  %and61 = and i64 %shr60, 255
  %conv62 = trunc i64 %and61 to i8
  %61 = load ptr, ptr %out.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr63, ptr %out.addr, align 8
  store i8 %conv62, ptr %61, align 1
  %62 = load i64, ptr %tout0, align 8
  %shr64 = lshr i64 %62, 8
  %and65 = and i64 %shr64, 255
  %conv66 = trunc i64 %and65 to i8
  %63 = load ptr, ptr %out.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr67, ptr %out.addr, align 8
  store i8 %conv66, ptr %63, align 1
  %64 = load i64, ptr %tout0, align 8
  %and68 = and i64 %64, 255
  %conv69 = trunc i64 %and68 to i8
  %65 = load ptr, ptr %out.addr, align 8
  %incdec.ptr70 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr70, ptr %out.addr, align 8
  store i8 %conv69, ptr %65, align 1
  %66 = load i64, ptr %tout1, align 8
  %shr71 = lshr i64 %66, 24
  %and72 = and i64 %shr71, 255
  %conv73 = trunc i64 %and72 to i8
  %67 = load ptr, ptr %out.addr, align 8
  %incdec.ptr74 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr74, ptr %out.addr, align 8
  store i8 %conv73, ptr %67, align 1
  %68 = load i64, ptr %tout1, align 8
  %shr75 = lshr i64 %68, 16
  %and76 = and i64 %shr75, 255
  %conv77 = trunc i64 %and76 to i8
  %69 = load ptr, ptr %out.addr, align 8
  %incdec.ptr78 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr78, ptr %out.addr, align 8
  store i8 %conv77, ptr %69, align 1
  %70 = load i64, ptr %tout1, align 8
  %shr79 = lshr i64 %70, 8
  %and80 = and i64 %shr79, 255
  %conv81 = trunc i64 %and80 to i8
  %71 = load ptr, ptr %out.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr82, ptr %out.addr, align 8
  store i8 %conv81, ptr %71, align 1
  %72 = load i64, ptr %tout1, align 8
  %and83 = and i64 %72, 255
  %conv84 = trunc i64 %and83 to i8
  %73 = load ptr, ptr %out.addr, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr85, ptr %out.addr, align 8
  store i8 %conv84, ptr %73, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %74 = load i64, ptr %l, align 8
  %sub86 = sub nsw i64 %74, 8
  store i64 %sub86, ptr %l, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %75 = load i64, ptr %l, align 8
  %cmp87 = icmp ne i64 %75, -8
  br i1 %cmp87, label %if.then89, label %if.end

if.then89:                                        ; preds = %for.end
  %76 = load i64, ptr %l, align 8
  %add = add nsw i64 %76, 8
  %77 = load ptr, ptr %in.addr, align 8
  %add.ptr90 = getelementptr inbounds i8, ptr %77, i64 %add
  store ptr %add.ptr90, ptr %in.addr, align 8
  store i64 0, ptr %tin1, align 8
  store i64 0, ptr %tin0, align 8
  %78 = load i64, ptr %l, align 8
  %add91 = add nsw i64 %78, 8
  switch i64 %add91, label %sw.epilog [
    i64 8, label %sw.bb
    i64 7, label %sw.bb94
    i64 6, label %sw.bb99
    i64 5, label %sw.bb104
    i64 4, label %sw.bb109
    i64 3, label %sw.bb112
    i64 2, label %sw.bb117
    i64 1, label %sw.bb122
  ]

sw.bb:                                            ; preds = %if.then89
  %79 = load ptr, ptr %in.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %79, i32 -1
  store ptr %incdec.ptr92, ptr %in.addr, align 8
  %80 = load i8, ptr %incdec.ptr92, align 1
  %conv93 = zext i8 %80 to i64
  store i64 %conv93, ptr %tin1, align 8
  br label %sw.bb94

sw.bb94:                                          ; preds = %if.then89, %sw.bb
  %81 = load ptr, ptr %in.addr, align 8
  %incdec.ptr95 = getelementptr inbounds i8, ptr %81, i32 -1
  store ptr %incdec.ptr95, ptr %in.addr, align 8
  %82 = load i8, ptr %incdec.ptr95, align 1
  %conv96 = zext i8 %82 to i64
  %shl97 = shl i64 %conv96, 8
  %83 = load i64, ptr %tin1, align 8
  %or98 = or i64 %83, %shl97
  store i64 %or98, ptr %tin1, align 8
  br label %sw.bb99

sw.bb99:                                          ; preds = %if.then89, %sw.bb94
  %84 = load ptr, ptr %in.addr, align 8
  %incdec.ptr100 = getelementptr inbounds i8, ptr %84, i32 -1
  store ptr %incdec.ptr100, ptr %in.addr, align 8
  %85 = load i8, ptr %incdec.ptr100, align 1
  %conv101 = zext i8 %85 to i64
  %shl102 = shl i64 %conv101, 16
  %86 = load i64, ptr %tin1, align 8
  %or103 = or i64 %86, %shl102
  store i64 %or103, ptr %tin1, align 8
  br label %sw.bb104

sw.bb104:                                         ; preds = %if.then89, %sw.bb99
  %87 = load ptr, ptr %in.addr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %87, i32 -1
  store ptr %incdec.ptr105, ptr %in.addr, align 8
  %88 = load i8, ptr %incdec.ptr105, align 1
  %conv106 = zext i8 %88 to i64
  %shl107 = shl i64 %conv106, 24
  %89 = load i64, ptr %tin1, align 8
  %or108 = or i64 %89, %shl107
  store i64 %or108, ptr %tin1, align 8
  br label %sw.bb109

sw.bb109:                                         ; preds = %if.then89, %sw.bb104
  %90 = load ptr, ptr %in.addr, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %90, i32 -1
  store ptr %incdec.ptr110, ptr %in.addr, align 8
  %91 = load i8, ptr %incdec.ptr110, align 1
  %conv111 = zext i8 %91 to i64
  store i64 %conv111, ptr %tin0, align 8
  br label %sw.bb112

sw.bb112:                                         ; preds = %if.then89, %sw.bb109
  %92 = load ptr, ptr %in.addr, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %92, i32 -1
  store ptr %incdec.ptr113, ptr %in.addr, align 8
  %93 = load i8, ptr %incdec.ptr113, align 1
  %conv114 = zext i8 %93 to i64
  %shl115 = shl i64 %conv114, 8
  %94 = load i64, ptr %tin0, align 8
  %or116 = or i64 %94, %shl115
  store i64 %or116, ptr %tin0, align 8
  br label %sw.bb117

sw.bb117:                                         ; preds = %if.then89, %sw.bb112
  %95 = load ptr, ptr %in.addr, align 8
  %incdec.ptr118 = getelementptr inbounds i8, ptr %95, i32 -1
  store ptr %incdec.ptr118, ptr %in.addr, align 8
  %96 = load i8, ptr %incdec.ptr118, align 1
  %conv119 = zext i8 %96 to i64
  %shl120 = shl i64 %conv119, 16
  %97 = load i64, ptr %tin0, align 8
  %or121 = or i64 %97, %shl120
  store i64 %or121, ptr %tin0, align 8
  br label %sw.bb122

sw.bb122:                                         ; preds = %if.then89, %sw.bb117
  %98 = load ptr, ptr %in.addr, align 8
  %incdec.ptr123 = getelementptr inbounds i8, ptr %98, i32 -1
  store ptr %incdec.ptr123, ptr %in.addr, align 8
  %99 = load i8, ptr %incdec.ptr123, align 1
  %conv124 = zext i8 %99 to i64
  %shl125 = shl i64 %conv124, 24
  %100 = load i64, ptr %tin0, align 8
  %or126 = or i64 %100, %shl125
  store i64 %or126, ptr %tin0, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb122, %if.then89
  %101 = load i64, ptr %tout0, align 8
  %102 = load i64, ptr %tin0, align 8
  %xor127 = xor i64 %102, %101
  store i64 %xor127, ptr %tin0, align 8
  %103 = load i64, ptr %tout1, align 8
  %104 = load i64, ptr %tin1, align 8
  %xor128 = xor i64 %104, %103
  store i64 %xor128, ptr %tin1, align 8
  %105 = load i64, ptr %tin0, align 8
  %arrayidx129 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  store i64 %105, ptr %arrayidx129, align 8
  %106 = load i64, ptr %tin1, align 8
  %arrayidx130 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  store i64 %106, ptr %arrayidx130, align 8
  %arraydecay131 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %107 = load ptr, ptr %ks.addr, align 8
  call void @BF_encrypt(ptr noundef %arraydecay131, ptr noundef %107, i32 noundef 1)
  %arrayidx132 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %108 = load i64, ptr %arrayidx132, align 8
  store i64 %108, ptr %tout0, align 8
  %arrayidx133 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  %109 = load i64, ptr %arrayidx133, align 8
  store i64 %109, ptr %tout1, align 8
  %110 = load i64, ptr %tout0, align 8
  %shr134 = lshr i64 %110, 24
  %and135 = and i64 %shr134, 255
  %conv136 = trunc i64 %and135 to i8
  %111 = load ptr, ptr %out.addr, align 8
  %incdec.ptr137 = getelementptr inbounds i8, ptr %111, i32 1
  store ptr %incdec.ptr137, ptr %out.addr, align 8
  store i8 %conv136, ptr %111, align 1
  %112 = load i64, ptr %tout0, align 8
  %shr138 = lshr i64 %112, 16
  %and139 = and i64 %shr138, 255
  %conv140 = trunc i64 %and139 to i8
  %113 = load ptr, ptr %out.addr, align 8
  %incdec.ptr141 = getelementptr inbounds i8, ptr %113, i32 1
  store ptr %incdec.ptr141, ptr %out.addr, align 8
  store i8 %conv140, ptr %113, align 1
  %114 = load i64, ptr %tout0, align 8
  %shr142 = lshr i64 %114, 8
  %and143 = and i64 %shr142, 255
  %conv144 = trunc i64 %and143 to i8
  %115 = load ptr, ptr %out.addr, align 8
  %incdec.ptr145 = getelementptr inbounds i8, ptr %115, i32 1
  store ptr %incdec.ptr145, ptr %out.addr, align 8
  store i8 %conv144, ptr %115, align 1
  %116 = load i64, ptr %tout0, align 8
  %and146 = and i64 %116, 255
  %conv147 = trunc i64 %and146 to i8
  %117 = load ptr, ptr %out.addr, align 8
  %incdec.ptr148 = getelementptr inbounds i8, ptr %117, i32 1
  store ptr %incdec.ptr148, ptr %out.addr, align 8
  store i8 %conv147, ptr %117, align 1
  %118 = load i64, ptr %tout1, align 8
  %shr149 = lshr i64 %118, 24
  %and150 = and i64 %shr149, 255
  %conv151 = trunc i64 %and150 to i8
  %119 = load ptr, ptr %out.addr, align 8
  %incdec.ptr152 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr152, ptr %out.addr, align 8
  store i8 %conv151, ptr %119, align 1
  %120 = load i64, ptr %tout1, align 8
  %shr153 = lshr i64 %120, 16
  %and154 = and i64 %shr153, 255
  %conv155 = trunc i64 %and154 to i8
  %121 = load ptr, ptr %out.addr, align 8
  %incdec.ptr156 = getelementptr inbounds i8, ptr %121, i32 1
  store ptr %incdec.ptr156, ptr %out.addr, align 8
  store i8 %conv155, ptr %121, align 1
  %122 = load i64, ptr %tout1, align 8
  %shr157 = lshr i64 %122, 8
  %and158 = and i64 %shr157, 255
  %conv159 = trunc i64 %and158 to i8
  %123 = load ptr, ptr %out.addr, align 8
  %incdec.ptr160 = getelementptr inbounds i8, ptr %123, i32 1
  store ptr %incdec.ptr160, ptr %out.addr, align 8
  store i8 %conv159, ptr %123, align 1
  %124 = load i64, ptr %tout1, align 8
  %and161 = and i64 %124, 255
  %conv162 = trunc i64 %and161 to i8
  %125 = load ptr, ptr %out.addr, align 8
  %incdec.ptr163 = getelementptr inbounds i8, ptr %125, i32 1
  store ptr %incdec.ptr163, ptr %out.addr, align 8
  store i8 %conv162, ptr %125, align 1
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %for.end
  %126 = load i64, ptr %tout0, align 8
  %shr164 = lshr i64 %126, 24
  %and165 = and i64 %shr164, 255
  %conv166 = trunc i64 %and165 to i8
  %127 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr167 = getelementptr inbounds i8, ptr %127, i32 1
  store ptr %incdec.ptr167, ptr %iv.addr, align 8
  store i8 %conv166, ptr %127, align 1
  %128 = load i64, ptr %tout0, align 8
  %shr168 = lshr i64 %128, 16
  %and169 = and i64 %shr168, 255
  %conv170 = trunc i64 %and169 to i8
  %129 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr171 = getelementptr inbounds i8, ptr %129, i32 1
  store ptr %incdec.ptr171, ptr %iv.addr, align 8
  store i8 %conv170, ptr %129, align 1
  %130 = load i64, ptr %tout0, align 8
  %shr172 = lshr i64 %130, 8
  %and173 = and i64 %shr172, 255
  %conv174 = trunc i64 %and173 to i8
  %131 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr175 = getelementptr inbounds i8, ptr %131, i32 1
  store ptr %incdec.ptr175, ptr %iv.addr, align 8
  store i8 %conv174, ptr %131, align 1
  %132 = load i64, ptr %tout0, align 8
  %and176 = and i64 %132, 255
  %conv177 = trunc i64 %and176 to i8
  %133 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8, ptr %133, i32 1
  store ptr %incdec.ptr178, ptr %iv.addr, align 8
  store i8 %conv177, ptr %133, align 1
  %134 = load i64, ptr %tout1, align 8
  %shr179 = lshr i64 %134, 24
  %and180 = and i64 %shr179, 255
  %conv181 = trunc i64 %and180 to i8
  %135 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr182 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr182, ptr %iv.addr, align 8
  store i8 %conv181, ptr %135, align 1
  %136 = load i64, ptr %tout1, align 8
  %shr183 = lshr i64 %136, 16
  %and184 = and i64 %shr183, 255
  %conv185 = trunc i64 %and184 to i8
  %137 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr186 = getelementptr inbounds i8, ptr %137, i32 1
  store ptr %incdec.ptr186, ptr %iv.addr, align 8
  store i8 %conv185, ptr %137, align 1
  %138 = load i64, ptr %tout1, align 8
  %shr187 = lshr i64 %138, 8
  %and188 = and i64 %shr187, 255
  %conv189 = trunc i64 %and188 to i8
  %139 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr190 = getelementptr inbounds i8, ptr %139, i32 1
  store ptr %incdec.ptr190, ptr %iv.addr, align 8
  store i8 %conv189, ptr %139, align 1
  %140 = load i64, ptr %tout1, align 8
  %and191 = and i64 %140, 255
  %conv192 = trunc i64 %and191 to i8
  %141 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, ptr %141, i32 1
  store ptr %incdec.ptr193, ptr %iv.addr, align 8
  store i8 %conv192, ptr %141, align 1
  br label %if.end407

if.else:                                          ; preds = %entry
  %142 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr194 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %incdec.ptr194, ptr %iv.addr, align 8
  %143 = load i8, ptr %142, align 1
  %conv195 = zext i8 %143 to i64
  %shl196 = shl i64 %conv195, 24
  store i64 %shl196, ptr %xor0, align 8
  %144 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr197 = getelementptr inbounds i8, ptr %144, i32 1
  store ptr %incdec.ptr197, ptr %iv.addr, align 8
  %145 = load i8, ptr %144, align 1
  %conv198 = zext i8 %145 to i64
  %shl199 = shl i64 %conv198, 16
  %146 = load i64, ptr %xor0, align 8
  %or200 = or i64 %146, %shl199
  store i64 %or200, ptr %xor0, align 8
  %147 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr201 = getelementptr inbounds i8, ptr %147, i32 1
  store ptr %incdec.ptr201, ptr %iv.addr, align 8
  %148 = load i8, ptr %147, align 1
  %conv202 = zext i8 %148 to i64
  %shl203 = shl i64 %conv202, 8
  %149 = load i64, ptr %xor0, align 8
  %or204 = or i64 %149, %shl203
  store i64 %or204, ptr %xor0, align 8
  %150 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr205 = getelementptr inbounds i8, ptr %150, i32 1
  store ptr %incdec.ptr205, ptr %iv.addr, align 8
  %151 = load i8, ptr %150, align 1
  %conv206 = zext i8 %151 to i64
  %152 = load i64, ptr %xor0, align 8
  %or207 = or i64 %152, %conv206
  store i64 %or207, ptr %xor0, align 8
  %153 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr208 = getelementptr inbounds i8, ptr %153, i32 1
  store ptr %incdec.ptr208, ptr %iv.addr, align 8
  %154 = load i8, ptr %153, align 1
  %conv209 = zext i8 %154 to i64
  %shl210 = shl i64 %conv209, 24
  store i64 %shl210, ptr %xor1, align 8
  %155 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr211 = getelementptr inbounds i8, ptr %155, i32 1
  store ptr %incdec.ptr211, ptr %iv.addr, align 8
  %156 = load i8, ptr %155, align 1
  %conv212 = zext i8 %156 to i64
  %shl213 = shl i64 %conv212, 16
  %157 = load i64, ptr %xor1, align 8
  %or214 = or i64 %157, %shl213
  store i64 %or214, ptr %xor1, align 8
  %158 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr215 = getelementptr inbounds i8, ptr %158, i32 1
  store ptr %incdec.ptr215, ptr %iv.addr, align 8
  %159 = load i8, ptr %158, align 1
  %conv216 = zext i8 %159 to i64
  %shl217 = shl i64 %conv216, 8
  %160 = load i64, ptr %xor1, align 8
  %or218 = or i64 %160, %shl217
  store i64 %or218, ptr %xor1, align 8
  %161 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr219 = getelementptr inbounds i8, ptr %161, i32 1
  store ptr %incdec.ptr219, ptr %iv.addr, align 8
  %162 = load i8, ptr %161, align 1
  %conv220 = zext i8 %162 to i64
  %163 = load i64, ptr %xor1, align 8
  %or221 = or i64 %163, %conv220
  store i64 %or221, ptr %xor1, align 8
  %164 = load ptr, ptr %iv.addr, align 8
  %add.ptr222 = getelementptr inbounds i8, ptr %164, i64 -8
  store ptr %add.ptr222, ptr %iv.addr, align 8
  %165 = load i64, ptr %l, align 8
  %sub223 = sub nsw i64 %165, 8
  store i64 %sub223, ptr %l, align 8
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc293, %if.else
  %166 = load i64, ptr %l, align 8
  %cmp225 = icmp sge i64 %166, 0
  br i1 %cmp225, label %for.body227, label %for.end295

for.body227:                                      ; preds = %for.cond224
  %167 = load ptr, ptr %in.addr, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %167, i32 1
  store ptr %incdec.ptr228, ptr %in.addr, align 8
  %168 = load i8, ptr %167, align 1
  %conv229 = zext i8 %168 to i64
  %shl230 = shl i64 %conv229, 24
  store i64 %shl230, ptr %tin0, align 8
  %169 = load ptr, ptr %in.addr, align 8
  %incdec.ptr231 = getelementptr inbounds i8, ptr %169, i32 1
  store ptr %incdec.ptr231, ptr %in.addr, align 8
  %170 = load i8, ptr %169, align 1
  %conv232 = zext i8 %170 to i64
  %shl233 = shl i64 %conv232, 16
  %171 = load i64, ptr %tin0, align 8
  %or234 = or i64 %171, %shl233
  store i64 %or234, ptr %tin0, align 8
  %172 = load ptr, ptr %in.addr, align 8
  %incdec.ptr235 = getelementptr inbounds i8, ptr %172, i32 1
  store ptr %incdec.ptr235, ptr %in.addr, align 8
  %173 = load i8, ptr %172, align 1
  %conv236 = zext i8 %173 to i64
  %shl237 = shl i64 %conv236, 8
  %174 = load i64, ptr %tin0, align 8
  %or238 = or i64 %174, %shl237
  store i64 %or238, ptr %tin0, align 8
  %175 = load ptr, ptr %in.addr, align 8
  %incdec.ptr239 = getelementptr inbounds i8, ptr %175, i32 1
  store ptr %incdec.ptr239, ptr %in.addr, align 8
  %176 = load i8, ptr %175, align 1
  %conv240 = zext i8 %176 to i64
  %177 = load i64, ptr %tin0, align 8
  %or241 = or i64 %177, %conv240
  store i64 %or241, ptr %tin0, align 8
  %178 = load ptr, ptr %in.addr, align 8
  %incdec.ptr242 = getelementptr inbounds i8, ptr %178, i32 1
  store ptr %incdec.ptr242, ptr %in.addr, align 8
  %179 = load i8, ptr %178, align 1
  %conv243 = zext i8 %179 to i64
  %shl244 = shl i64 %conv243, 24
  store i64 %shl244, ptr %tin1, align 8
  %180 = load ptr, ptr %in.addr, align 8
  %incdec.ptr245 = getelementptr inbounds i8, ptr %180, i32 1
  store ptr %incdec.ptr245, ptr %in.addr, align 8
  %181 = load i8, ptr %180, align 1
  %conv246 = zext i8 %181 to i64
  %shl247 = shl i64 %conv246, 16
  %182 = load i64, ptr %tin1, align 8
  %or248 = or i64 %182, %shl247
  store i64 %or248, ptr %tin1, align 8
  %183 = load ptr, ptr %in.addr, align 8
  %incdec.ptr249 = getelementptr inbounds i8, ptr %183, i32 1
  store ptr %incdec.ptr249, ptr %in.addr, align 8
  %184 = load i8, ptr %183, align 1
  %conv250 = zext i8 %184 to i64
  %shl251 = shl i64 %conv250, 8
  %185 = load i64, ptr %tin1, align 8
  %or252 = or i64 %185, %shl251
  store i64 %or252, ptr %tin1, align 8
  %186 = load ptr, ptr %in.addr, align 8
  %incdec.ptr253 = getelementptr inbounds i8, ptr %186, i32 1
  store ptr %incdec.ptr253, ptr %in.addr, align 8
  %187 = load i8, ptr %186, align 1
  %conv254 = zext i8 %187 to i64
  %188 = load i64, ptr %tin1, align 8
  %or255 = or i64 %188, %conv254
  store i64 %or255, ptr %tin1, align 8
  %189 = load i64, ptr %tin0, align 8
  %arrayidx256 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  store i64 %189, ptr %arrayidx256, align 8
  %190 = load i64, ptr %tin1, align 8
  %arrayidx257 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  store i64 %190, ptr %arrayidx257, align 8
  %arraydecay258 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %191 = load ptr, ptr %ks.addr, align 8
  call void @BF_encrypt(ptr noundef %arraydecay258, ptr noundef %191, i32 noundef 0)
  %arrayidx259 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %192 = load i64, ptr %arrayidx259, align 8
  %193 = load i64, ptr %xor0, align 8
  %xor260 = xor i64 %192, %193
  store i64 %xor260, ptr %tout0, align 8
  %arrayidx261 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  %194 = load i64, ptr %arrayidx261, align 8
  %195 = load i64, ptr %xor1, align 8
  %xor262 = xor i64 %194, %195
  store i64 %xor262, ptr %tout1, align 8
  %196 = load i64, ptr %tout0, align 8
  %shr263 = lshr i64 %196, 24
  %and264 = and i64 %shr263, 255
  %conv265 = trunc i64 %and264 to i8
  %197 = load ptr, ptr %out.addr, align 8
  %incdec.ptr266 = getelementptr inbounds i8, ptr %197, i32 1
  store ptr %incdec.ptr266, ptr %out.addr, align 8
  store i8 %conv265, ptr %197, align 1
  %198 = load i64, ptr %tout0, align 8
  %shr267 = lshr i64 %198, 16
  %and268 = and i64 %shr267, 255
  %conv269 = trunc i64 %and268 to i8
  %199 = load ptr, ptr %out.addr, align 8
  %incdec.ptr270 = getelementptr inbounds i8, ptr %199, i32 1
  store ptr %incdec.ptr270, ptr %out.addr, align 8
  store i8 %conv269, ptr %199, align 1
  %200 = load i64, ptr %tout0, align 8
  %shr271 = lshr i64 %200, 8
  %and272 = and i64 %shr271, 255
  %conv273 = trunc i64 %and272 to i8
  %201 = load ptr, ptr %out.addr, align 8
  %incdec.ptr274 = getelementptr inbounds i8, ptr %201, i32 1
  store ptr %incdec.ptr274, ptr %out.addr, align 8
  store i8 %conv273, ptr %201, align 1
  %202 = load i64, ptr %tout0, align 8
  %and275 = and i64 %202, 255
  %conv276 = trunc i64 %and275 to i8
  %203 = load ptr, ptr %out.addr, align 8
  %incdec.ptr277 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr277, ptr %out.addr, align 8
  store i8 %conv276, ptr %203, align 1
  %204 = load i64, ptr %tout1, align 8
  %shr278 = lshr i64 %204, 24
  %and279 = and i64 %shr278, 255
  %conv280 = trunc i64 %and279 to i8
  %205 = load ptr, ptr %out.addr, align 8
  %incdec.ptr281 = getelementptr inbounds i8, ptr %205, i32 1
  store ptr %incdec.ptr281, ptr %out.addr, align 8
  store i8 %conv280, ptr %205, align 1
  %206 = load i64, ptr %tout1, align 8
  %shr282 = lshr i64 %206, 16
  %and283 = and i64 %shr282, 255
  %conv284 = trunc i64 %and283 to i8
  %207 = load ptr, ptr %out.addr, align 8
  %incdec.ptr285 = getelementptr inbounds i8, ptr %207, i32 1
  store ptr %incdec.ptr285, ptr %out.addr, align 8
  store i8 %conv284, ptr %207, align 1
  %208 = load i64, ptr %tout1, align 8
  %shr286 = lshr i64 %208, 8
  %and287 = and i64 %shr286, 255
  %conv288 = trunc i64 %and287 to i8
  %209 = load ptr, ptr %out.addr, align 8
  %incdec.ptr289 = getelementptr inbounds i8, ptr %209, i32 1
  store ptr %incdec.ptr289, ptr %out.addr, align 8
  store i8 %conv288, ptr %209, align 1
  %210 = load i64, ptr %tout1, align 8
  %and290 = and i64 %210, 255
  %conv291 = trunc i64 %and290 to i8
  %211 = load ptr, ptr %out.addr, align 8
  %incdec.ptr292 = getelementptr inbounds i8, ptr %211, i32 1
  store ptr %incdec.ptr292, ptr %out.addr, align 8
  store i8 %conv291, ptr %211, align 1
  %212 = load i64, ptr %tin0, align 8
  store i64 %212, ptr %xor0, align 8
  %213 = load i64, ptr %tin1, align 8
  store i64 %213, ptr %xor1, align 8
  br label %for.inc293

for.inc293:                                       ; preds = %for.body227
  %214 = load i64, ptr %l, align 8
  %sub294 = sub nsw i64 %214, 8
  store i64 %sub294, ptr %l, align 8
  br label %for.cond224, !llvm.loop !8

for.end295:                                       ; preds = %for.cond224
  %215 = load i64, ptr %l, align 8
  %cmp296 = icmp ne i64 %215, -8
  br i1 %cmp296, label %if.then298, label %if.end376

if.then298:                                       ; preds = %for.end295
  %216 = load ptr, ptr %in.addr, align 8
  %incdec.ptr299 = getelementptr inbounds i8, ptr %216, i32 1
  store ptr %incdec.ptr299, ptr %in.addr, align 8
  %217 = load i8, ptr %216, align 1
  %conv300 = zext i8 %217 to i64
  %shl301 = shl i64 %conv300, 24
  store i64 %shl301, ptr %tin0, align 8
  %218 = load ptr, ptr %in.addr, align 8
  %incdec.ptr302 = getelementptr inbounds i8, ptr %218, i32 1
  store ptr %incdec.ptr302, ptr %in.addr, align 8
  %219 = load i8, ptr %218, align 1
  %conv303 = zext i8 %219 to i64
  %shl304 = shl i64 %conv303, 16
  %220 = load i64, ptr %tin0, align 8
  %or305 = or i64 %220, %shl304
  store i64 %or305, ptr %tin0, align 8
  %221 = load ptr, ptr %in.addr, align 8
  %incdec.ptr306 = getelementptr inbounds i8, ptr %221, i32 1
  store ptr %incdec.ptr306, ptr %in.addr, align 8
  %222 = load i8, ptr %221, align 1
  %conv307 = zext i8 %222 to i64
  %shl308 = shl i64 %conv307, 8
  %223 = load i64, ptr %tin0, align 8
  %or309 = or i64 %223, %shl308
  store i64 %or309, ptr %tin0, align 8
  %224 = load ptr, ptr %in.addr, align 8
  %incdec.ptr310 = getelementptr inbounds i8, ptr %224, i32 1
  store ptr %incdec.ptr310, ptr %in.addr, align 8
  %225 = load i8, ptr %224, align 1
  %conv311 = zext i8 %225 to i64
  %226 = load i64, ptr %tin0, align 8
  %or312 = or i64 %226, %conv311
  store i64 %or312, ptr %tin0, align 8
  %227 = load ptr, ptr %in.addr, align 8
  %incdec.ptr313 = getelementptr inbounds i8, ptr %227, i32 1
  store ptr %incdec.ptr313, ptr %in.addr, align 8
  %228 = load i8, ptr %227, align 1
  %conv314 = zext i8 %228 to i64
  %shl315 = shl i64 %conv314, 24
  store i64 %shl315, ptr %tin1, align 8
  %229 = load ptr, ptr %in.addr, align 8
  %incdec.ptr316 = getelementptr inbounds i8, ptr %229, i32 1
  store ptr %incdec.ptr316, ptr %in.addr, align 8
  %230 = load i8, ptr %229, align 1
  %conv317 = zext i8 %230 to i64
  %shl318 = shl i64 %conv317, 16
  %231 = load i64, ptr %tin1, align 8
  %or319 = or i64 %231, %shl318
  store i64 %or319, ptr %tin1, align 8
  %232 = load ptr, ptr %in.addr, align 8
  %incdec.ptr320 = getelementptr inbounds i8, ptr %232, i32 1
  store ptr %incdec.ptr320, ptr %in.addr, align 8
  %233 = load i8, ptr %232, align 1
  %conv321 = zext i8 %233 to i64
  %shl322 = shl i64 %conv321, 8
  %234 = load i64, ptr %tin1, align 8
  %or323 = or i64 %234, %shl322
  store i64 %or323, ptr %tin1, align 8
  %235 = load ptr, ptr %in.addr, align 8
  %incdec.ptr324 = getelementptr inbounds i8, ptr %235, i32 1
  store ptr %incdec.ptr324, ptr %in.addr, align 8
  %236 = load i8, ptr %235, align 1
  %conv325 = zext i8 %236 to i64
  %237 = load i64, ptr %tin1, align 8
  %or326 = or i64 %237, %conv325
  store i64 %or326, ptr %tin1, align 8
  %238 = load i64, ptr %tin0, align 8
  %arrayidx327 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  store i64 %238, ptr %arrayidx327, align 8
  %239 = load i64, ptr %tin1, align 8
  %arrayidx328 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  store i64 %239, ptr %arrayidx328, align 8
  %arraydecay329 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %240 = load ptr, ptr %ks.addr, align 8
  call void @BF_encrypt(ptr noundef %arraydecay329, ptr noundef %240, i32 noundef 0)
  %arrayidx330 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  %241 = load i64, ptr %arrayidx330, align 8
  %242 = load i64, ptr %xor0, align 8
  %xor331 = xor i64 %241, %242
  store i64 %xor331, ptr %tout0, align 8
  %arrayidx332 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  %243 = load i64, ptr %arrayidx332, align 8
  %244 = load i64, ptr %xor1, align 8
  %xor333 = xor i64 %243, %244
  store i64 %xor333, ptr %tout1, align 8
  %245 = load i64, ptr %l, align 8
  %add334 = add nsw i64 %245, 8
  %246 = load ptr, ptr %out.addr, align 8
  %add.ptr335 = getelementptr inbounds i8, ptr %246, i64 %add334
  store ptr %add.ptr335, ptr %out.addr, align 8
  %247 = load i64, ptr %l, align 8
  %add336 = add nsw i64 %247, 8
  switch i64 %add336, label %sw.epilog375 [
    i64 8, label %sw.bb337
    i64 7, label %sw.bb341
    i64 6, label %sw.bb346
    i64 5, label %sw.bb351
    i64 4, label %sw.bb356
    i64 3, label %sw.bb360
    i64 2, label %sw.bb365
    i64 1, label %sw.bb370
  ]

sw.bb337:                                         ; preds = %if.then298
  %248 = load i64, ptr %tout1, align 8
  %and338 = and i64 %248, 255
  %conv339 = trunc i64 %and338 to i8
  %249 = load ptr, ptr %out.addr, align 8
  %incdec.ptr340 = getelementptr inbounds i8, ptr %249, i32 -1
  store ptr %incdec.ptr340, ptr %out.addr, align 8
  store i8 %conv339, ptr %incdec.ptr340, align 1
  br label %sw.bb341

sw.bb341:                                         ; preds = %if.then298, %sw.bb337
  %250 = load i64, ptr %tout1, align 8
  %shr342 = lshr i64 %250, 8
  %and343 = and i64 %shr342, 255
  %conv344 = trunc i64 %and343 to i8
  %251 = load ptr, ptr %out.addr, align 8
  %incdec.ptr345 = getelementptr inbounds i8, ptr %251, i32 -1
  store ptr %incdec.ptr345, ptr %out.addr, align 8
  store i8 %conv344, ptr %incdec.ptr345, align 1
  br label %sw.bb346

sw.bb346:                                         ; preds = %if.then298, %sw.bb341
  %252 = load i64, ptr %tout1, align 8
  %shr347 = lshr i64 %252, 16
  %and348 = and i64 %shr347, 255
  %conv349 = trunc i64 %and348 to i8
  %253 = load ptr, ptr %out.addr, align 8
  %incdec.ptr350 = getelementptr inbounds i8, ptr %253, i32 -1
  store ptr %incdec.ptr350, ptr %out.addr, align 8
  store i8 %conv349, ptr %incdec.ptr350, align 1
  br label %sw.bb351

sw.bb351:                                         ; preds = %if.then298, %sw.bb346
  %254 = load i64, ptr %tout1, align 8
  %shr352 = lshr i64 %254, 24
  %and353 = and i64 %shr352, 255
  %conv354 = trunc i64 %and353 to i8
  %255 = load ptr, ptr %out.addr, align 8
  %incdec.ptr355 = getelementptr inbounds i8, ptr %255, i32 -1
  store ptr %incdec.ptr355, ptr %out.addr, align 8
  store i8 %conv354, ptr %incdec.ptr355, align 1
  br label %sw.bb356

sw.bb356:                                         ; preds = %if.then298, %sw.bb351
  %256 = load i64, ptr %tout0, align 8
  %and357 = and i64 %256, 255
  %conv358 = trunc i64 %and357 to i8
  %257 = load ptr, ptr %out.addr, align 8
  %incdec.ptr359 = getelementptr inbounds i8, ptr %257, i32 -1
  store ptr %incdec.ptr359, ptr %out.addr, align 8
  store i8 %conv358, ptr %incdec.ptr359, align 1
  br label %sw.bb360

sw.bb360:                                         ; preds = %if.then298, %sw.bb356
  %258 = load i64, ptr %tout0, align 8
  %shr361 = lshr i64 %258, 8
  %and362 = and i64 %shr361, 255
  %conv363 = trunc i64 %and362 to i8
  %259 = load ptr, ptr %out.addr, align 8
  %incdec.ptr364 = getelementptr inbounds i8, ptr %259, i32 -1
  store ptr %incdec.ptr364, ptr %out.addr, align 8
  store i8 %conv363, ptr %incdec.ptr364, align 1
  br label %sw.bb365

sw.bb365:                                         ; preds = %if.then298, %sw.bb360
  %260 = load i64, ptr %tout0, align 8
  %shr366 = lshr i64 %260, 16
  %and367 = and i64 %shr366, 255
  %conv368 = trunc i64 %and367 to i8
  %261 = load ptr, ptr %out.addr, align 8
  %incdec.ptr369 = getelementptr inbounds i8, ptr %261, i32 -1
  store ptr %incdec.ptr369, ptr %out.addr, align 8
  store i8 %conv368, ptr %incdec.ptr369, align 1
  br label %sw.bb370

sw.bb370:                                         ; preds = %if.then298, %sw.bb365
  %262 = load i64, ptr %tout0, align 8
  %shr371 = lshr i64 %262, 24
  %and372 = and i64 %shr371, 255
  %conv373 = trunc i64 %and372 to i8
  %263 = load ptr, ptr %out.addr, align 8
  %incdec.ptr374 = getelementptr inbounds i8, ptr %263, i32 -1
  store ptr %incdec.ptr374, ptr %out.addr, align 8
  store i8 %conv373, ptr %incdec.ptr374, align 1
  br label %sw.epilog375

sw.epilog375:                                     ; preds = %sw.bb370, %if.then298
  %264 = load i64, ptr %tin0, align 8
  store i64 %264, ptr %xor0, align 8
  %265 = load i64, ptr %tin1, align 8
  store i64 %265, ptr %xor1, align 8
  br label %if.end376

if.end376:                                        ; preds = %sw.epilog375, %for.end295
  %266 = load i64, ptr %xor0, align 8
  %shr377 = lshr i64 %266, 24
  %and378 = and i64 %shr377, 255
  %conv379 = trunc i64 %and378 to i8
  %267 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr380 = getelementptr inbounds i8, ptr %267, i32 1
  store ptr %incdec.ptr380, ptr %iv.addr, align 8
  store i8 %conv379, ptr %267, align 1
  %268 = load i64, ptr %xor0, align 8
  %shr381 = lshr i64 %268, 16
  %and382 = and i64 %shr381, 255
  %conv383 = trunc i64 %and382 to i8
  %269 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr384 = getelementptr inbounds i8, ptr %269, i32 1
  store ptr %incdec.ptr384, ptr %iv.addr, align 8
  store i8 %conv383, ptr %269, align 1
  %270 = load i64, ptr %xor0, align 8
  %shr385 = lshr i64 %270, 8
  %and386 = and i64 %shr385, 255
  %conv387 = trunc i64 %and386 to i8
  %271 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr388 = getelementptr inbounds i8, ptr %271, i32 1
  store ptr %incdec.ptr388, ptr %iv.addr, align 8
  store i8 %conv387, ptr %271, align 1
  %272 = load i64, ptr %xor0, align 8
  %and389 = and i64 %272, 255
  %conv390 = trunc i64 %and389 to i8
  %273 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr391 = getelementptr inbounds i8, ptr %273, i32 1
  store ptr %incdec.ptr391, ptr %iv.addr, align 8
  store i8 %conv390, ptr %273, align 1
  %274 = load i64, ptr %xor1, align 8
  %shr392 = lshr i64 %274, 24
  %and393 = and i64 %shr392, 255
  %conv394 = trunc i64 %and393 to i8
  %275 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr395 = getelementptr inbounds i8, ptr %275, i32 1
  store ptr %incdec.ptr395, ptr %iv.addr, align 8
  store i8 %conv394, ptr %275, align 1
  %276 = load i64, ptr %xor1, align 8
  %shr396 = lshr i64 %276, 16
  %and397 = and i64 %shr396, 255
  %conv398 = trunc i64 %and397 to i8
  %277 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr399 = getelementptr inbounds i8, ptr %277, i32 1
  store ptr %incdec.ptr399, ptr %iv.addr, align 8
  store i8 %conv398, ptr %277, align 1
  %278 = load i64, ptr %xor1, align 8
  %shr400 = lshr i64 %278, 8
  %and401 = and i64 %shr400, 255
  %conv402 = trunc i64 %and401 to i8
  %279 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr403 = getelementptr inbounds i8, ptr %279, i32 1
  store ptr %incdec.ptr403, ptr %iv.addr, align 8
  store i8 %conv402, ptr %279, align 1
  %280 = load i64, ptr %xor1, align 8
  %and404 = and i64 %280, 255
  %conv405 = trunc i64 %and404 to i8
  %281 = load ptr, ptr %iv.addr, align 8
  %incdec.ptr406 = getelementptr inbounds i8, ptr %281, i32 1
  store ptr %incdec.ptr406, ptr %iv.addr, align 8
  store i8 %conv405, ptr %281, align 1
  br label %if.end407

if.end407:                                        ; preds = %if.end376, %if.end
  store i64 0, ptr %xor1, align 8
  store i64 0, ptr %xor0, align 8
  store i64 0, ptr %tout1, align 8
  store i64 0, ptr %tout0, align 8
  store i64 0, ptr %tin1, align 8
  store i64 0, ptr %tin0, align 8
  %arrayidx408 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 1
  store i64 0, ptr %arrayidx408, align 8
  %arrayidx409 = getelementptr inbounds [2 x i64], ptr %tin, i64 0, i64 0
  store i64 0, ptr %arrayidx409, align 8
  ret void
}

declare void @BF_encrypt(ptr noundef, ptr noundef, i32 noundef) #1

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
!8 = distinct !{!8, !7}
