; ModuleID = './out/real_reduction_probe/rewritten_ir/teacher_hot_leaf/source_snapshot_public_repos_zlib_adler32.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/adler32.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define i64 @adler32_z(i64 noundef %adler, ptr noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %adler.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %sum2 = alloca i64, align 8
  %n = alloca i32, align 4
  store i64 %adler, ptr %adler.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %shr = lshr i64 %adler, 16
  %and = and i64 %shr, 65535
  store i64 %and, ptr %sum2, align 8
  %and1 = and i64 %adler, 65535
  store i64 %and1, ptr %adler.addr, align 8
  %cmp = icmp eq i64 %len, 1
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = zext i8 %1 to i64
  %2 = load i64, ptr %adler.addr, align 8
  %add = add i64 %2, %conv
  store i64 %add, ptr %adler.addr, align 8
  %cmp2 = icmp ugt i64 %add, 65520
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %3 = load i64, ptr %adler.addr, align 8
  %sub = add i64 %3, -65521
  store i64 %sub, ptr %adler.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %4 = load i64, ptr %adler.addr, align 8
  %5 = load i64, ptr %sum2, align 8
  %add5 = add i64 %5, %4
  store i64 %add5, ptr %sum2, align 8
  %cmp6 = icmp ugt i64 %add5, 65520
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %6 = load i64, ptr %sum2, align 8
  %sub9 = add i64 %6, -65521
  store i64 %sub9, ptr %sum2, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %7 = load i64, ptr %adler.addr, align 8
  %8 = load i64, ptr %sum2, align 8
  %shl = shl i64 %8, 16
  %or = or i64 %7, %shl
  store i64 %or, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %entry
  %9 = load ptr, ptr %buf.addr, align 8
  %cmp12 = icmp eq ptr %9, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i64 1, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.end11
  %10 = load i64, ptr %len.addr, align 8
  %cmp16 = icmp ult i64 %10, 16
  br i1 %cmp16, label %while.cond, label %while.cond30

while.cond:                                       ; preds = %if.end15, %while.body
  %11 = load i64, ptr %len.addr, align 8
  %dec = add i64 %11, -1
  store i64 %dec, ptr %len.addr, align 8
  %tobool.not = icmp eq i64 %11, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv19 = zext i8 %13 to i64
  %14 = load i64, ptr %adler.addr, align 8
  %add20 = add i64 %14, %conv19
  store i64 %add20, ptr %adler.addr, align 8
  %15 = load i64, ptr %sum2, align 8
  %add21 = add i64 %15, %add20
  store i64 %add21, ptr %sum2, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %16 = load i64, ptr %adler.addr, align 8
  %cmp22 = icmp ugt i64 %16, 65520
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %while.end
  %17 = load i64, ptr %adler.addr, align 8
  %sub25 = add i64 %17, -65521
  store i64 %sub25, ptr %adler.addr, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %while.end
  %18 = load i64, ptr %sum2, align 8
  %rem = urem i64 %18, 65521
  store i64 %rem, ptr %sum2, align 8
  %19 = load i64, ptr %adler.addr, align 8
  %shl27 = shl nuw nsw i64 %rem, 16
  %or28 = or i64 %19, %shl27
  store i64 %or28, ptr %retval, align 8
  br label %return

while.cond30:                                     ; preds = %if.end15, %do.end
  %20 = load i64, ptr %len.addr, align 8
  %cmp31 = icmp ugt i64 %20, 5551
  br i1 %cmp31, label %while.body33, label %while.end103

while.body33:                                     ; preds = %while.cond30
  %21 = load i64, ptr %len.addr, align 8
  %sub34 = add i64 %21, -5552
  store i64 %sub34, ptr %len.addr, align 8
  store i32 347, ptr %n, align 4
  br label %do.body

do.body:                                          ; preds = %do.body, %while.body33
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i8, ptr %22, align 1
  %conv36 = zext i8 %23 to i64
  %24 = load i64, ptr %adler.addr, align 8
  %add37 = add i64 %24, %conv36
  store i64 %add37, ptr %adler.addr, align 8
  %25 = load i64, ptr %sum2, align 8
  %add38 = add i64 %25, %add37
  store i64 %add38, ptr %sum2, align 8
  %26 = load ptr, ptr %buf.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %27 to i64
  %28 = load i64, ptr %adler.addr, align 8
  %add41 = add i64 %28, %conv40
  store i64 %add41, ptr %adler.addr, align 8
  %29 = load i64, ptr %sum2, align 8
  %add42 = add i64 %29, %add41
  store i64 %add42, ptr %sum2, align 8
  %30 = load ptr, ptr %buf.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %30, i64 2
  %31 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %31 to i64
  %32 = load i64, ptr %adler.addr, align 8
  %add45 = add i64 %32, %conv44
  store i64 %add45, ptr %adler.addr, align 8
  %33 = load i64, ptr %sum2, align 8
  %add46 = add i64 %33, %add45
  store i64 %add46, ptr %sum2, align 8
  %34 = load ptr, ptr %buf.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 3
  %35 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %35 to i64
  %36 = load i64, ptr %adler.addr, align 8
  %add49 = add i64 %36, %conv48
  store i64 %add49, ptr %adler.addr, align 8
  %37 = load i64, ptr %sum2, align 8
  %add50 = add i64 %37, %add49
  store i64 %add50, ptr %sum2, align 8
  %38 = load ptr, ptr %buf.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %38, i64 4
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i64
  %40 = load i64, ptr %adler.addr, align 8
  %add53 = add i64 %40, %conv52
  store i64 %add53, ptr %adler.addr, align 8
  %41 = load i64, ptr %sum2, align 8
  %add54 = add i64 %41, %add53
  store i64 %add54, ptr %sum2, align 8
  %42 = load ptr, ptr %buf.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %42, i64 5
  %43 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %43 to i64
  %44 = load i64, ptr %adler.addr, align 8
  %add57 = add i64 %44, %conv56
  store i64 %add57, ptr %adler.addr, align 8
  %45 = load i64, ptr %sum2, align 8
  %add58 = add i64 %45, %add57
  store i64 %add58, ptr %sum2, align 8
  %46 = load ptr, ptr %buf.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %46, i64 6
  %47 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %47 to i64
  %48 = load i64, ptr %adler.addr, align 8
  %add61 = add i64 %48, %conv60
  store i64 %add61, ptr %adler.addr, align 8
  %49 = load i64, ptr %sum2, align 8
  %add62 = add i64 %49, %add61
  store i64 %add62, ptr %sum2, align 8
  %50 = load ptr, ptr %buf.addr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %50, i64 7
  %51 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %51 to i64
  %52 = load i64, ptr %adler.addr, align 8
  %add65 = add i64 %52, %conv64
  store i64 %add65, ptr %adler.addr, align 8
  %53 = load i64, ptr %sum2, align 8
  %add66 = add i64 %53, %add65
  store i64 %add66, ptr %sum2, align 8
  %54 = load ptr, ptr %buf.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %54, i64 8
  %55 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %55 to i64
  %56 = load i64, ptr %adler.addr, align 8
  %add69 = add i64 %56, %conv68
  store i64 %add69, ptr %adler.addr, align 8
  %57 = load i64, ptr %sum2, align 8
  %add70 = add i64 %57, %add69
  store i64 %add70, ptr %sum2, align 8
  %58 = load ptr, ptr %buf.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %58, i64 9
  %59 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %59 to i64
  %60 = load i64, ptr %adler.addr, align 8
  %add73 = add i64 %60, %conv72
  store i64 %add73, ptr %adler.addr, align 8
  %61 = load i64, ptr %sum2, align 8
  %add74 = add i64 %61, %add73
  store i64 %add74, ptr %sum2, align 8
  %62 = load ptr, ptr %buf.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %62, i64 10
  %63 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %63 to i64
  %64 = load i64, ptr %adler.addr, align 8
  %add77 = add i64 %64, %conv76
  store i64 %add77, ptr %adler.addr, align 8
  %65 = load i64, ptr %sum2, align 8
  %add78 = add i64 %65, %add77
  store i64 %add78, ptr %sum2, align 8
  %66 = load ptr, ptr %buf.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %66, i64 11
  %67 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %67 to i64
  %68 = load i64, ptr %adler.addr, align 8
  %add81 = add i64 %68, %conv80
  store i64 %add81, ptr %adler.addr, align 8
  %69 = load i64, ptr %sum2, align 8
  %add82 = add i64 %69, %add81
  store i64 %add82, ptr %sum2, align 8
  %70 = load ptr, ptr %buf.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %70, i64 12
  %71 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %71 to i64
  %72 = load i64, ptr %adler.addr, align 8
  %add85 = add i64 %72, %conv84
  store i64 %add85, ptr %adler.addr, align 8
  %73 = load i64, ptr %sum2, align 8
  %add86 = add i64 %73, %add85
  store i64 %add86, ptr %sum2, align 8
  %74 = load ptr, ptr %buf.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %74, i64 13
  %75 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %75 to i64
  %76 = load i64, ptr %adler.addr, align 8
  %add89 = add i64 %76, %conv88
  store i64 %add89, ptr %adler.addr, align 8
  %77 = load i64, ptr %sum2, align 8
  %add90 = add i64 %77, %add89
  store i64 %add90, ptr %sum2, align 8
  %78 = load ptr, ptr %buf.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %78, i64 14
  %79 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %79 to i64
  %80 = load i64, ptr %adler.addr, align 8
  %add93 = add i64 %80, %conv92
  store i64 %add93, ptr %adler.addr, align 8
  %81 = load i64, ptr %sum2, align 8
  %add94 = add i64 %81, %add93
  store i64 %add94, ptr %sum2, align 8
  %82 = load ptr, ptr %buf.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %82, i64 15
  %83 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %83 to i64
  %84 = load i64, ptr %adler.addr, align 8
  %add97 = add i64 %84, %conv96
  store i64 %add97, ptr %adler.addr, align 8
  %85 = load i64, ptr %sum2, align 8
  %add98 = add i64 %85, %add97
  store i64 %add98, ptr %sum2, align 8
  %86 = load ptr, ptr %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %86, i64 16
  store ptr %add.ptr, ptr %buf.addr, align 8
  %87 = load i32, ptr %n, align 4
  %dec99 = add i32 %87, -1
  store i32 %dec99, ptr %n, align 4
  %tobool100.not = icmp eq i32 %dec99, 0
  br i1 %tobool100.not, label %do.end, label %do.body, !llvm.loop !8

do.end:                                           ; preds = %do.body
  %88 = load i64, ptr %adler.addr, align 8
  %rem101 = urem i64 %88, 65521
  store i64 %rem101, ptr %adler.addr, align 8
  %89 = load i64, ptr %sum2, align 8
  %rem102 = urem i64 %89, 65521
  store i64 %rem102, ptr %sum2, align 8
  br label %while.cond30, !llvm.loop !9

while.end103:                                     ; preds = %while.cond30
  %90 = load i64, ptr %len.addr, align 8
  %tobool104.not = icmp eq i64 %90, 0
  br i1 %tobool104.not, label %if.end188, label %while.cond106

while.cond106:                                    ; preds = %while.end103, %while.body109
  %91 = load i64, ptr %len.addr, align 8
  %cmp107 = icmp ugt i64 %91, 15
  br i1 %cmp107, label %while.body109, label %while.cond177

while.body109:                                    ; preds = %while.cond106
  %92 = load i64, ptr %len.addr, align 8
  %sub110 = add i64 %92, -16
  store i64 %sub110, ptr %len.addr, align 8
  %93 = load ptr, ptr %buf.addr, align 8
  %94 = load i8, ptr %93, align 1
  %conv112 = zext i8 %94 to i64
  %95 = load i64, ptr %adler.addr, align 8
  %add113 = add i64 %95, %conv112
  store i64 %add113, ptr %adler.addr, align 8
  %96 = load i64, ptr %sum2, align 8
  %add114 = add i64 %96, %add113
  store i64 %add114, ptr %sum2, align 8
  %97 = load ptr, ptr %buf.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %97, i64 1
  %98 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %98 to i64
  %99 = load i64, ptr %adler.addr, align 8
  %add117 = add i64 %99, %conv116
  store i64 %add117, ptr %adler.addr, align 8
  %100 = load i64, ptr %sum2, align 8
  %add118 = add i64 %100, %add117
  store i64 %add118, ptr %sum2, align 8
  %101 = load ptr, ptr %buf.addr, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %101, i64 2
  %102 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %102 to i64
  %103 = load i64, ptr %adler.addr, align 8
  %add121 = add i64 %103, %conv120
  store i64 %add121, ptr %adler.addr, align 8
  %104 = load i64, ptr %sum2, align 8
  %add122 = add i64 %104, %add121
  store i64 %add122, ptr %sum2, align 8
  %105 = load ptr, ptr %buf.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %105, i64 3
  %106 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %106 to i64
  %107 = load i64, ptr %adler.addr, align 8
  %add125 = add i64 %107, %conv124
  store i64 %add125, ptr %adler.addr, align 8
  %108 = load i64, ptr %sum2, align 8
  %add126 = add i64 %108, %add125
  store i64 %add126, ptr %sum2, align 8
  %109 = load ptr, ptr %buf.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, ptr %109, i64 4
  %110 = load i8, ptr %arrayidx127, align 1
  %conv128 = zext i8 %110 to i64
  %111 = load i64, ptr %adler.addr, align 8
  %add129 = add i64 %111, %conv128
  store i64 %add129, ptr %adler.addr, align 8
  %112 = load i64, ptr %sum2, align 8
  %add130 = add i64 %112, %add129
  store i64 %add130, ptr %sum2, align 8
  %113 = load ptr, ptr %buf.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %113, i64 5
  %114 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %114 to i64
  %115 = load i64, ptr %adler.addr, align 8
  %add133 = add i64 %115, %conv132
  store i64 %add133, ptr %adler.addr, align 8
  %116 = load i64, ptr %sum2, align 8
  %add134 = add i64 %116, %add133
  store i64 %add134, ptr %sum2, align 8
  %117 = load ptr, ptr %buf.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %117, i64 6
  %118 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %118 to i64
  %119 = load i64, ptr %adler.addr, align 8
  %add137 = add i64 %119, %conv136
  store i64 %add137, ptr %adler.addr, align 8
  %120 = load i64, ptr %sum2, align 8
  %add138 = add i64 %120, %add137
  store i64 %add138, ptr %sum2, align 8
  %121 = load ptr, ptr %buf.addr, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %121, i64 7
  %122 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %122 to i64
  %123 = load i64, ptr %adler.addr, align 8
  %add141 = add i64 %123, %conv140
  store i64 %add141, ptr %adler.addr, align 8
  %124 = load i64, ptr %sum2, align 8
  %add142 = add i64 %124, %add141
  store i64 %add142, ptr %sum2, align 8
  %125 = load ptr, ptr %buf.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %125, i64 8
  %126 = load i8, ptr %arrayidx143, align 1
  %conv144 = zext i8 %126 to i64
  %127 = load i64, ptr %adler.addr, align 8
  %add145 = add i64 %127, %conv144
  store i64 %add145, ptr %adler.addr, align 8
  %128 = load i64, ptr %sum2, align 8
  %add146 = add i64 %128, %add145
  store i64 %add146, ptr %sum2, align 8
  %129 = load ptr, ptr %buf.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %129, i64 9
  %130 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %130 to i64
  %131 = load i64, ptr %adler.addr, align 8
  %add149 = add i64 %131, %conv148
  store i64 %add149, ptr %adler.addr, align 8
  %132 = load i64, ptr %sum2, align 8
  %add150 = add i64 %132, %add149
  store i64 %add150, ptr %sum2, align 8
  %133 = load ptr, ptr %buf.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %133, i64 10
  %134 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %134 to i64
  %135 = load i64, ptr %adler.addr, align 8
  %add153 = add i64 %135, %conv152
  store i64 %add153, ptr %adler.addr, align 8
  %136 = load i64, ptr %sum2, align 8
  %add154 = add i64 %136, %add153
  store i64 %add154, ptr %sum2, align 8
  %137 = load ptr, ptr %buf.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %137, i64 11
  %138 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %138 to i64
  %139 = load i64, ptr %adler.addr, align 8
  %add157 = add i64 %139, %conv156
  store i64 %add157, ptr %adler.addr, align 8
  %140 = load i64, ptr %sum2, align 8
  %add158 = add i64 %140, %add157
  store i64 %add158, ptr %sum2, align 8
  %141 = load ptr, ptr %buf.addr, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %141, i64 12
  %142 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %142 to i64
  %143 = load i64, ptr %adler.addr, align 8
  %add161 = add i64 %143, %conv160
  store i64 %add161, ptr %adler.addr, align 8
  %144 = load i64, ptr %sum2, align 8
  %add162 = add i64 %144, %add161
  store i64 %add162, ptr %sum2, align 8
  %145 = load ptr, ptr %buf.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %145, i64 13
  %146 = load i8, ptr %arrayidx163, align 1
  %conv164 = zext i8 %146 to i64
  %147 = load i64, ptr %adler.addr, align 8
  %add165 = add i64 %147, %conv164
  store i64 %add165, ptr %adler.addr, align 8
  %148 = load i64, ptr %sum2, align 8
  %add166 = add i64 %148, %add165
  store i64 %add166, ptr %sum2, align 8
  %149 = load ptr, ptr %buf.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %149, i64 14
  %150 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %150 to i64
  %151 = load i64, ptr %adler.addr, align 8
  %add169 = add i64 %151, %conv168
  store i64 %add169, ptr %adler.addr, align 8
  %152 = load i64, ptr %sum2, align 8
  %add170 = add i64 %152, %add169
  store i64 %add170, ptr %sum2, align 8
  %153 = load ptr, ptr %buf.addr, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %153, i64 15
  %154 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %154 to i64
  %155 = load i64, ptr %adler.addr, align 8
  %add173 = add i64 %155, %conv172
  store i64 %add173, ptr %adler.addr, align 8
  %156 = load i64, ptr %sum2, align 8
  %add174 = add i64 %156, %add173
  store i64 %add174, ptr %sum2, align 8
  %157 = load ptr, ptr %buf.addr, align 8
  %add.ptr175 = getelementptr inbounds i8, ptr %157, i64 16
  store ptr %add.ptr175, ptr %buf.addr, align 8
  br label %while.cond106, !llvm.loop !10

while.cond177:                                    ; preds = %while.cond106, %while.body180
  %158 = load i64, ptr %len.addr, align 8
  %dec178 = add i64 %158, -1
  store i64 %dec178, ptr %len.addr, align 8
  %tobool179.not = icmp eq i64 %158, 0
  br i1 %tobool179.not, label %while.end185, label %while.body180

while.body180:                                    ; preds = %while.cond177
  %159 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr181 = getelementptr inbounds i8, ptr %159, i64 1
  store ptr %incdec.ptr181, ptr %buf.addr, align 8
  %160 = load i8, ptr %159, align 1
  %conv182 = zext i8 %160 to i64
  %161 = load i64, ptr %adler.addr, align 8
  %add183 = add i64 %161, %conv182
  store i64 %add183, ptr %adler.addr, align 8
  %162 = load i64, ptr %sum2, align 8
  %add184 = add i64 %162, %add183
  store i64 %add184, ptr %sum2, align 8
  br label %while.cond177, !llvm.loop !11

while.end185:                                     ; preds = %while.cond177
  %163 = load i64, ptr %adler.addr, align 8
  %rem186 = urem i64 %163, 65521
  store i64 %rem186, ptr %adler.addr, align 8
  %164 = load i64, ptr %sum2, align 8
  %rem187 = urem i64 %164, 65521
  store i64 %rem187, ptr %sum2, align 8
  br label %if.end188

if.end188:                                        ; preds = %while.end185, %while.end103
  %165 = load i64, ptr %adler.addr, align 8
  %166 = load i64, ptr %sum2, align 8
  %shl189 = shl i64 %166, 16
  %or190 = or i64 %165, %shl189
  store i64 %or190, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end188, %if.end26, %if.then14, %if.end10
  %167 = load i64, ptr %retval, align 8
  ret i64 %167
}

; Function Attrs: nounwind ssp uwtable
define i64 @adler32(i64 noundef %adler, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %conv = zext i32 %len to i64
  %call = call i64 @adler32_z(i64 noundef %adler, ptr noundef %buf, i64 noundef %conv)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define i64 @adler32_combine(i64 noundef %adler1, i64 noundef %adler2, i64 noundef %len2) #0 {
entry:
  %call = call i64 @adler32_combine_(i64 noundef %adler1, i64 noundef %adler2, i64 noundef %len2)
  ret i64 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @adler32_combine_(i64 noundef %adler1, i64 noundef %adler2, i64 noundef %len2) #0 {
entry:
  %adler1.addr = alloca i64, align 8
  %adler2.addr = alloca i64, align 8
  %len2.addr = alloca i64, align 8
  %sum1 = alloca i64, align 8
  %sum2 = alloca i64, align 8
  %rem = alloca i32, align 4
  store i64 %adler1, ptr %adler1.addr, align 8
  store i64 %adler2, ptr %adler2.addr, align 8
  store i64 %len2, ptr %len2.addr, align 8
  %cmp = icmp slt i64 %len2, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %len2.addr, align 8
  %rem1 = srem i64 %0, 65521
  store i64 %rem1, ptr %len2.addr, align 8
  %conv = trunc i64 %rem1 to i32
  store i32 %conv, ptr %rem, align 4
  %1 = load i64, ptr %adler1.addr, align 8
  %and = and i64 %1, 65535
  store i64 %and, ptr %sum1, align 8
  %conv2 = and i64 %rem1, 4294967295
  %mul = mul nuw nsw i64 %conv2, %and
  %rem3 = urem i64 %mul, 65521
  store i64 %rem3, ptr %sum2, align 8
  %2 = load i64, ptr %adler2.addr, align 8
  %and4 = and i64 %2, 65535
  %sub = add nuw nsw i64 %and4, 65520
  %3 = load i64, ptr %sum1, align 8
  %add5 = add i64 %3, %sub
  store i64 %add5, ptr %sum1, align 8
  %4 = load i64, ptr %adler1.addr, align 8
  %shr = lshr i64 %4, 16
  %and6 = and i64 %shr, 65535
  %5 = load i64, ptr %adler2.addr, align 8
  %shr7 = lshr i64 %5, 16
  %and8 = and i64 %shr7, 65535
  %add9 = add nuw nsw i64 %and6, %and8
  %add10 = add nuw nsw i64 %add9, 65521
  %6 = load i32, ptr %rem, align 4
  %conv11 = zext i32 %6 to i64
  %sub12 = sub nsw i64 %add10, %conv11
  %7 = load i64, ptr %sum2, align 8
  %add13 = add i64 %7, %sub12
  store i64 %add13, ptr %sum2, align 8
  %8 = load i64, ptr %sum1, align 8
  %cmp14 = icmp ugt i64 %8, 65520
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %9 = load i64, ptr %sum1, align 8
  %sub17 = add i64 %9, -65521
  store i64 %sub17, ptr %sum1, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %10 = load i64, ptr %sum1, align 8
  %cmp19 = icmp ugt i64 %10, 65520
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %11 = load i64, ptr %sum1, align 8
  %sub22 = add i64 %11, -65521
  store i64 %sub22, ptr %sum1, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18
  %12 = load i64, ptr %sum2, align 8
  %cmp24 = icmp ugt i64 %12, 131041
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %13 = load i64, ptr %sum2, align 8
  %sub27 = add i64 %13, -131042
  store i64 %sub27, ptr %sum2, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23
  %14 = load i64, ptr %sum2, align 8
  %cmp29 = icmp ugt i64 %14, 65520
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %15 = load i64, ptr %sum2, align 8
  %sub32 = add i64 %15, -65521
  store i64 %sub32, ptr %sum2, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28
  %16 = load i64, ptr %sum1, align 8
  %17 = load i64, ptr %sum2, align 8
  %shl = shl i64 %17, 16
  %or = or i64 %16, %shl
  br label %return

return:                                           ; preds = %entry, %if.end33
  %storemerge = phi i64 [ %or, %if.end33 ], [ 4294967295, %entry ]
  ret i64 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define i64 @adler32_combine64(i64 noundef %adler1, i64 noundef %adler2, i64 noundef %len2) #0 {
entry:
  %call = call i64 @adler32_combine_(i64 noundef %adler1, i64 noundef %adler2, i64 noundef %len2)
  ret i64 %call
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
