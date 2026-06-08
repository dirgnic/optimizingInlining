; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_cfb64.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_cfb64.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BF_cfb64_encrypt(ptr noundef %in, ptr noundef %out, i64 noundef %length, ptr noundef %schedule, ptr noundef %ivec, ptr noundef %num, i32 noundef %encrypt) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %schedule.addr = alloca ptr, align 8
  %ivec.addr = alloca ptr, align 8
  %num.addr = alloca ptr, align 8
  %encrypt.addr = alloca i32, align 4
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %t = alloca i64, align 8
  %n = alloca i32, align 4
  %l = alloca i64, align 8
  %ti = alloca [2 x i64], align 8
  %iv = alloca ptr, align 8
  %c = alloca i8, align 1
  %cc = alloca i8, align 1
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr %schedule, ptr %schedule.addr, align 8
  store ptr %ivec, ptr %ivec.addr, align 8
  store ptr %num, ptr %num.addr, align 8
  store i32 %encrypt, ptr %encrypt.addr, align 4
  %0 = load ptr, ptr %num.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %n, align 4
  %2 = load i64, ptr %length.addr, align 8
  store i64 %2, ptr %l, align 8
  %3 = load ptr, ptr %ivec.addr, align 8
  store ptr %3, ptr %iv, align 8
  %4 = load i32, ptr %encrypt.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %5 = load i64, ptr %l, align 8
  %dec = add nsw i64 %5, -1
  store i64 %dec, ptr %l, align 8
  %tobool1 = icmp ne i64 %5, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %n, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %7 = load ptr, ptr %iv, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %iv, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, ptr %v0, align 8
  %9 = load ptr, ptr %iv, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr3, ptr %iv, align 8
  %10 = load i8, ptr %9, align 1
  %conv4 = zext i8 %10 to i64
  %shl5 = shl i64 %conv4, 16
  %11 = load i64, ptr %v0, align 8
  %or = or i64 %11, %shl5
  store i64 %or, ptr %v0, align 8
  %12 = load ptr, ptr %iv, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr6, ptr %iv, align 8
  %13 = load i8, ptr %12, align 1
  %conv7 = zext i8 %13 to i64
  %shl8 = shl i64 %conv7, 8
  %14 = load i64, ptr %v0, align 8
  %or9 = or i64 %14, %shl8
  store i64 %or9, ptr %v0, align 8
  %15 = load ptr, ptr %iv, align 8
  %incdec.ptr10 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr10, ptr %iv, align 8
  %16 = load i8, ptr %15, align 1
  %conv11 = zext i8 %16 to i64
  %17 = load i64, ptr %v0, align 8
  %or12 = or i64 %17, %conv11
  store i64 %or12, ptr %v0, align 8
  %18 = load i64, ptr %v0, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  store i64 %18, ptr %arrayidx, align 8
  %19 = load ptr, ptr %iv, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr13, ptr %iv, align 8
  %20 = load i8, ptr %19, align 1
  %conv14 = zext i8 %20 to i64
  %shl15 = shl i64 %conv14, 24
  store i64 %shl15, ptr %v1, align 8
  %21 = load ptr, ptr %iv, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr16, ptr %iv, align 8
  %22 = load i8, ptr %21, align 1
  %conv17 = zext i8 %22 to i64
  %shl18 = shl i64 %conv17, 16
  %23 = load i64, ptr %v1, align 8
  %or19 = or i64 %23, %shl18
  store i64 %or19, ptr %v1, align 8
  %24 = load ptr, ptr %iv, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr20, ptr %iv, align 8
  %25 = load i8, ptr %24, align 1
  %conv21 = zext i8 %25 to i64
  %shl22 = shl i64 %conv21, 8
  %26 = load i64, ptr %v1, align 8
  %or23 = or i64 %26, %shl22
  store i64 %or23, ptr %v1, align 8
  %27 = load ptr, ptr %iv, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr24, ptr %iv, align 8
  %28 = load i8, ptr %27, align 1
  %conv25 = zext i8 %28 to i64
  %29 = load i64, ptr %v1, align 8
  %or26 = or i64 %29, %conv25
  store i64 %or26, ptr %v1, align 8
  %30 = load i64, ptr %v1, align 8
  %arrayidx27 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  store i64 %30, ptr %arrayidx27, align 8
  %arraydecay = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  %31 = load ptr, ptr %schedule.addr, align 8
  call void @BF_encrypt(ptr noundef %arraydecay, ptr noundef %31, i32 noundef 1)
  %32 = load ptr, ptr %ivec.addr, align 8
  store ptr %32, ptr %iv, align 8
  %arrayidx28 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  %33 = load i64, ptr %arrayidx28, align 8
  store i64 %33, ptr %t, align 8
  %34 = load i64, ptr %t, align 8
  %shr = lshr i64 %34, 24
  %and = and i64 %shr, 255
  %conv29 = trunc i64 %and to i8
  %35 = load ptr, ptr %iv, align 8
  %incdec.ptr30 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr30, ptr %iv, align 8
  store i8 %conv29, ptr %35, align 1
  %36 = load i64, ptr %t, align 8
  %shr31 = lshr i64 %36, 16
  %and32 = and i64 %shr31, 255
  %conv33 = trunc i64 %and32 to i8
  %37 = load ptr, ptr %iv, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr34, ptr %iv, align 8
  store i8 %conv33, ptr %37, align 1
  %38 = load i64, ptr %t, align 8
  %shr35 = lshr i64 %38, 8
  %and36 = and i64 %shr35, 255
  %conv37 = trunc i64 %and36 to i8
  %39 = load ptr, ptr %iv, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr38, ptr %iv, align 8
  store i8 %conv37, ptr %39, align 1
  %40 = load i64, ptr %t, align 8
  %and39 = and i64 %40, 255
  %conv40 = trunc i64 %and39 to i8
  %41 = load ptr, ptr %iv, align 8
  %incdec.ptr41 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr41, ptr %iv, align 8
  store i8 %conv40, ptr %41, align 1
  %arrayidx42 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  %42 = load i64, ptr %arrayidx42, align 8
  store i64 %42, ptr %t, align 8
  %43 = load i64, ptr %t, align 8
  %shr43 = lshr i64 %43, 24
  %and44 = and i64 %shr43, 255
  %conv45 = trunc i64 %and44 to i8
  %44 = load ptr, ptr %iv, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr46, ptr %iv, align 8
  store i8 %conv45, ptr %44, align 1
  %45 = load i64, ptr %t, align 8
  %shr47 = lshr i64 %45, 16
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %46 = load ptr, ptr %iv, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr50, ptr %iv, align 8
  store i8 %conv49, ptr %46, align 1
  %47 = load i64, ptr %t, align 8
  %shr51 = lshr i64 %47, 8
  %and52 = and i64 %shr51, 255
  %conv53 = trunc i64 %and52 to i8
  %48 = load ptr, ptr %iv, align 8
  %incdec.ptr54 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr54, ptr %iv, align 8
  store i8 %conv53, ptr %48, align 1
  %49 = load i64, ptr %t, align 8
  %and55 = and i64 %49, 255
  %conv56 = trunc i64 %and55 to i8
  %50 = load ptr, ptr %iv, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr57, ptr %iv, align 8
  store i8 %conv56, ptr %50, align 1
  %51 = load ptr, ptr %ivec.addr, align 8
  store ptr %51, ptr %iv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %while.body
  %52 = load ptr, ptr %in.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr58, ptr %in.addr, align 8
  %53 = load i8, ptr %52, align 1
  %conv59 = zext i8 %53 to i32
  %54 = load ptr, ptr %iv, align 8
  %55 = load i32, ptr %n, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %54, i64 %idxprom
  %56 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %56 to i32
  %xor = xor i32 %conv59, %conv61
  %conv62 = trunc i32 %xor to i8
  store i8 %conv62, ptr %c, align 1
  %57 = load i8, ptr %c, align 1
  %58 = load ptr, ptr %out.addr, align 8
  %incdec.ptr63 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr63, ptr %out.addr, align 8
  store i8 %57, ptr %58, align 1
  %59 = load i8, ptr %c, align 1
  %60 = load ptr, ptr %iv, align 8
  %61 = load i32, ptr %n, align 4
  %idxprom64 = sext i32 %61 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %60, i64 %idxprom64
  store i8 %59, ptr %arrayidx65, align 1
  %62 = load i32, ptr %n, align 4
  %add = add nsw i32 %62, 1
  %and66 = and i32 %add, 7
  store i32 %and66, ptr %n, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end151

if.else:                                          ; preds = %entry
  br label %while.cond67

while.cond67:                                     ; preds = %if.end137, %if.else
  %63 = load i64, ptr %l, align 8
  %dec68 = add nsw i64 %63, -1
  store i64 %dec68, ptr %l, align 8
  %tobool69 = icmp ne i64 %63, 0
  br i1 %tobool69, label %while.body70, label %while.end150

while.body70:                                     ; preds = %while.cond67
  %64 = load i32, ptr %n, align 4
  %cmp71 = icmp eq i32 %64, 0
  br i1 %cmp71, label %if.then73, label %if.end137

if.then73:                                        ; preds = %while.body70
  %65 = load ptr, ptr %iv, align 8
  %incdec.ptr74 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr74, ptr %iv, align 8
  %66 = load i8, ptr %65, align 1
  %conv75 = zext i8 %66 to i64
  %shl76 = shl i64 %conv75, 24
  store i64 %shl76, ptr %v0, align 8
  %67 = load ptr, ptr %iv, align 8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr77, ptr %iv, align 8
  %68 = load i8, ptr %67, align 1
  %conv78 = zext i8 %68 to i64
  %shl79 = shl i64 %conv78, 16
  %69 = load i64, ptr %v0, align 8
  %or80 = or i64 %69, %shl79
  store i64 %or80, ptr %v0, align 8
  %70 = load ptr, ptr %iv, align 8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr81, ptr %iv, align 8
  %71 = load i8, ptr %70, align 1
  %conv82 = zext i8 %71 to i64
  %shl83 = shl i64 %conv82, 8
  %72 = load i64, ptr %v0, align 8
  %or84 = or i64 %72, %shl83
  store i64 %or84, ptr %v0, align 8
  %73 = load ptr, ptr %iv, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr85, ptr %iv, align 8
  %74 = load i8, ptr %73, align 1
  %conv86 = zext i8 %74 to i64
  %75 = load i64, ptr %v0, align 8
  %or87 = or i64 %75, %conv86
  store i64 %or87, ptr %v0, align 8
  %76 = load i64, ptr %v0, align 8
  %arrayidx88 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  store i64 %76, ptr %arrayidx88, align 8
  %77 = load ptr, ptr %iv, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr89, ptr %iv, align 8
  %78 = load i8, ptr %77, align 1
  %conv90 = zext i8 %78 to i64
  %shl91 = shl i64 %conv90, 24
  store i64 %shl91, ptr %v1, align 8
  %79 = load ptr, ptr %iv, align 8
  %incdec.ptr92 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr92, ptr %iv, align 8
  %80 = load i8, ptr %79, align 1
  %conv93 = zext i8 %80 to i64
  %shl94 = shl i64 %conv93, 16
  %81 = load i64, ptr %v1, align 8
  %or95 = or i64 %81, %shl94
  store i64 %or95, ptr %v1, align 8
  %82 = load ptr, ptr %iv, align 8
  %incdec.ptr96 = getelementptr inbounds i8, ptr %82, i32 1
  store ptr %incdec.ptr96, ptr %iv, align 8
  %83 = load i8, ptr %82, align 1
  %conv97 = zext i8 %83 to i64
  %shl98 = shl i64 %conv97, 8
  %84 = load i64, ptr %v1, align 8
  %or99 = or i64 %84, %shl98
  store i64 %or99, ptr %v1, align 8
  %85 = load ptr, ptr %iv, align 8
  %incdec.ptr100 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr100, ptr %iv, align 8
  %86 = load i8, ptr %85, align 1
  %conv101 = zext i8 %86 to i64
  %87 = load i64, ptr %v1, align 8
  %or102 = or i64 %87, %conv101
  store i64 %or102, ptr %v1, align 8
  %88 = load i64, ptr %v1, align 8
  %arrayidx103 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  store i64 %88, ptr %arrayidx103, align 8
  %arraydecay104 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  %89 = load ptr, ptr %schedule.addr, align 8
  call void @BF_encrypt(ptr noundef %arraydecay104, ptr noundef %89, i32 noundef 1)
  %90 = load ptr, ptr %ivec.addr, align 8
  store ptr %90, ptr %iv, align 8
  %arrayidx105 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  %91 = load i64, ptr %arrayidx105, align 8
  store i64 %91, ptr %t, align 8
  %92 = load i64, ptr %t, align 8
  %shr106 = lshr i64 %92, 24
  %and107 = and i64 %shr106, 255
  %conv108 = trunc i64 %and107 to i8
  %93 = load ptr, ptr %iv, align 8
  %incdec.ptr109 = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr109, ptr %iv, align 8
  store i8 %conv108, ptr %93, align 1
  %94 = load i64, ptr %t, align 8
  %shr110 = lshr i64 %94, 16
  %and111 = and i64 %shr110, 255
  %conv112 = trunc i64 %and111 to i8
  %95 = load ptr, ptr %iv, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %95, i32 1
  store ptr %incdec.ptr113, ptr %iv, align 8
  store i8 %conv112, ptr %95, align 1
  %96 = load i64, ptr %t, align 8
  %shr114 = lshr i64 %96, 8
  %and115 = and i64 %shr114, 255
  %conv116 = trunc i64 %and115 to i8
  %97 = load ptr, ptr %iv, align 8
  %incdec.ptr117 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr117, ptr %iv, align 8
  store i8 %conv116, ptr %97, align 1
  %98 = load i64, ptr %t, align 8
  %and118 = and i64 %98, 255
  %conv119 = trunc i64 %and118 to i8
  %99 = load ptr, ptr %iv, align 8
  %incdec.ptr120 = getelementptr inbounds i8, ptr %99, i32 1
  store ptr %incdec.ptr120, ptr %iv, align 8
  store i8 %conv119, ptr %99, align 1
  %arrayidx121 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  %100 = load i64, ptr %arrayidx121, align 8
  store i64 %100, ptr %t, align 8
  %101 = load i64, ptr %t, align 8
  %shr122 = lshr i64 %101, 24
  %and123 = and i64 %shr122, 255
  %conv124 = trunc i64 %and123 to i8
  %102 = load ptr, ptr %iv, align 8
  %incdec.ptr125 = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr125, ptr %iv, align 8
  store i8 %conv124, ptr %102, align 1
  %103 = load i64, ptr %t, align 8
  %shr126 = lshr i64 %103, 16
  %and127 = and i64 %shr126, 255
  %conv128 = trunc i64 %and127 to i8
  %104 = load ptr, ptr %iv, align 8
  %incdec.ptr129 = getelementptr inbounds i8, ptr %104, i32 1
  store ptr %incdec.ptr129, ptr %iv, align 8
  store i8 %conv128, ptr %104, align 1
  %105 = load i64, ptr %t, align 8
  %shr130 = lshr i64 %105, 8
  %and131 = and i64 %shr130, 255
  %conv132 = trunc i64 %and131 to i8
  %106 = load ptr, ptr %iv, align 8
  %incdec.ptr133 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %incdec.ptr133, ptr %iv, align 8
  store i8 %conv132, ptr %106, align 1
  %107 = load i64, ptr %t, align 8
  %and134 = and i64 %107, 255
  %conv135 = trunc i64 %and134 to i8
  %108 = load ptr, ptr %iv, align 8
  %incdec.ptr136 = getelementptr inbounds i8, ptr %108, i32 1
  store ptr %incdec.ptr136, ptr %iv, align 8
  store i8 %conv135, ptr %108, align 1
  %109 = load ptr, ptr %ivec.addr, align 8
  store ptr %109, ptr %iv, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.then73, %while.body70
  %110 = load ptr, ptr %in.addr, align 8
  %incdec.ptr138 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr138, ptr %in.addr, align 8
  %111 = load i8, ptr %110, align 1
  store i8 %111, ptr %cc, align 1
  %112 = load ptr, ptr %iv, align 8
  %113 = load i32, ptr %n, align 4
  %idxprom139 = sext i32 %113 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %112, i64 %idxprom139
  %114 = load i8, ptr %arrayidx140, align 1
  store i8 %114, ptr %c, align 1
  %115 = load i8, ptr %cc, align 1
  %116 = load ptr, ptr %iv, align 8
  %117 = load i32, ptr %n, align 4
  %idxprom141 = sext i32 %117 to i64
  %arrayidx142 = getelementptr inbounds i8, ptr %116, i64 %idxprom141
  store i8 %115, ptr %arrayidx142, align 1
  %118 = load i8, ptr %c, align 1
  %conv143 = zext i8 %118 to i32
  %119 = load i8, ptr %cc, align 1
  %conv144 = zext i8 %119 to i32
  %xor145 = xor i32 %conv143, %conv144
  %conv146 = trunc i32 %xor145 to i8
  %120 = load ptr, ptr %out.addr, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %120, i32 1
  store ptr %incdec.ptr147, ptr %out.addr, align 8
  store i8 %conv146, ptr %120, align 1
  %121 = load i32, ptr %n, align 4
  %add148 = add nsw i32 %121, 1
  %and149 = and i32 %add148, 7
  store i32 %and149, ptr %n, align 4
  br label %while.cond67, !llvm.loop !8

while.end150:                                     ; preds = %while.cond67
  br label %if.end151

if.end151:                                        ; preds = %while.end150, %while.end
  store i8 0, ptr %cc, align 1
  store i8 0, ptr %c, align 1
  store i64 0, ptr %t, align 8
  %arrayidx152 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  store i64 0, ptr %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  store i64 0, ptr %arrayidx153, align 8
  store i64 0, ptr %v1, align 8
  store i64 0, ptr %v0, align 8
  %122 = load i32, ptr %n, align 4
  %123 = load ptr, ptr %num.addr, align 8
  store i32 %122, ptr %123, align 4
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
