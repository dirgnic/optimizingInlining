; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/utf8.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libid3tag/utf8.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_length(ptr noundef %utf8) #0 {
entry:
  %utf8.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  store i64 0, ptr %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end196, %entry
  %0 = load ptr, ptr %utf8.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %utf8.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i64, ptr %length, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %length, align 8
  br label %if.end196

if.else:                                          ; preds = %while.body
  %5 = load ptr, ptr %utf8.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %and4 = and i32 %conv3, 224
  %cmp5 = icmp eq i32 %and4, 192
  br i1 %cmp5, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %if.else
  %7 = load ptr, ptr %utf8.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %and9 = and i32 %conv8, 192
  %cmp10 = icmp eq i32 %and9, 128
  br i1 %cmp10, label %if.then12, label %if.else20

if.then12:                                        ; preds = %land.lhs.true
  %9 = load ptr, ptr %utf8.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %10 to i64
  %and15 = and i64 %conv14, 31
  %shl = shl i64 %and15, 6
  %cmp16 = icmp sge i64 %shl, 128
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then12
  %11 = load i64, ptr %length, align 8
  %inc19 = add i64 %11, 1
  store i64 %inc19, ptr %length, align 8
  %12 = load ptr, ptr %utf8.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %add.ptr, ptr %utf8.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then12
  br label %if.end195

if.else20:                                        ; preds = %land.lhs.true, %if.else
  %13 = load ptr, ptr %utf8.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %14 to i32
  %and23 = and i32 %conv22, 240
  %cmp24 = icmp eq i32 %and23, 224
  br i1 %cmp24, label %land.lhs.true26, label %if.else53

land.lhs.true26:                                  ; preds = %if.else20
  %15 = load ptr, ptr %utf8.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %16 to i32
  %and29 = and i32 %conv28, 192
  %cmp30 = icmp eq i32 %and29, 128
  br i1 %cmp30, label %land.lhs.true32, label %if.else53

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %17 = load ptr, ptr %utf8.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %17, i64 2
  %18 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %18 to i32
  %and35 = and i32 %conv34, 192
  %cmp36 = icmp eq i32 %and35, 128
  br i1 %cmp36, label %if.then38, label %if.else53

if.then38:                                        ; preds = %land.lhs.true32
  %19 = load ptr, ptr %utf8.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %20 to i64
  %and41 = and i64 %conv40, 15
  %shl42 = shl i64 %and41, 12
  %21 = load ptr, ptr %utf8.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx43, align 1
  %conv44 = sext i8 %22 to i64
  %and45 = and i64 %conv44, 63
  %shl46 = shl i64 %and45, 6
  %or = or i64 %shl42, %shl46
  %cmp47 = icmp sge i64 %or, 2048
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.then38
  %23 = load i64, ptr %length, align 8
  %inc50 = add i64 %23, 1
  store i64 %inc50, ptr %length, align 8
  %24 = load ptr, ptr %utf8.addr, align 8
  %add.ptr51 = getelementptr inbounds i8, ptr %24, i64 2
  store ptr %add.ptr51, ptr %utf8.addr, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then38
  br label %if.end194

if.else53:                                        ; preds = %land.lhs.true32, %land.lhs.true26, %if.else20
  %25 = load ptr, ptr %utf8.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %26 to i32
  %and56 = and i32 %conv55, 248
  %cmp57 = icmp eq i32 %and56, 240
  br i1 %cmp57, label %land.lhs.true59, label %if.else93

land.lhs.true59:                                  ; preds = %if.else53
  %27 = load ptr, ptr %utf8.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %27, i64 1
  %28 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %28 to i32
  %and62 = and i32 %conv61, 192
  %cmp63 = icmp eq i32 %and62, 128
  br i1 %cmp63, label %land.lhs.true65, label %if.else93

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %29 = load ptr, ptr %utf8.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %29, i64 2
  %30 = load i8, ptr %arrayidx66, align 1
  %conv67 = sext i8 %30 to i32
  %and68 = and i32 %conv67, 192
  %cmp69 = icmp eq i32 %and68, 128
  br i1 %cmp69, label %land.lhs.true71, label %if.else93

land.lhs.true71:                                  ; preds = %land.lhs.true65
  %31 = load ptr, ptr %utf8.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %31, i64 3
  %32 = load i8, ptr %arrayidx72, align 1
  %conv73 = sext i8 %32 to i32
  %and74 = and i32 %conv73, 192
  %cmp75 = icmp eq i32 %and74, 128
  br i1 %cmp75, label %if.then77, label %if.else93

if.then77:                                        ; preds = %land.lhs.true71
  %33 = load ptr, ptr %utf8.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx78, align 1
  %conv79 = sext i8 %34 to i64
  %and80 = and i64 %conv79, 7
  %shl81 = shl i64 %and80, 18
  %35 = load ptr, ptr %utf8.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %35, i64 1
  %36 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %36 to i64
  %and84 = and i64 %conv83, 63
  %shl85 = shl i64 %and84, 12
  %or86 = or i64 %shl81, %shl85
  %cmp87 = icmp sge i64 %or86, 65536
  br i1 %cmp87, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.then77
  %37 = load i64, ptr %length, align 8
  %inc90 = add i64 %37, 1
  store i64 %inc90, ptr %length, align 8
  %38 = load ptr, ptr %utf8.addr, align 8
  %add.ptr91 = getelementptr inbounds i8, ptr %38, i64 3
  store ptr %add.ptr91, ptr %utf8.addr, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then77
  br label %if.end193

if.else93:                                        ; preds = %land.lhs.true71, %land.lhs.true65, %land.lhs.true59, %if.else53
  %39 = load ptr, ptr %utf8.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx94, align 1
  %conv95 = sext i8 %40 to i32
  %and96 = and i32 %conv95, 252
  %cmp97 = icmp eq i32 %and96, 248
  br i1 %cmp97, label %land.lhs.true99, label %if.else139

land.lhs.true99:                                  ; preds = %if.else93
  %41 = load ptr, ptr %utf8.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %41, i64 1
  %42 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %42 to i32
  %and102 = and i32 %conv101, 192
  %cmp103 = icmp eq i32 %and102, 128
  br i1 %cmp103, label %land.lhs.true105, label %if.else139

land.lhs.true105:                                 ; preds = %land.lhs.true99
  %43 = load ptr, ptr %utf8.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %43, i64 2
  %44 = load i8, ptr %arrayidx106, align 1
  %conv107 = sext i8 %44 to i32
  %and108 = and i32 %conv107, 192
  %cmp109 = icmp eq i32 %and108, 128
  br i1 %cmp109, label %land.lhs.true111, label %if.else139

land.lhs.true111:                                 ; preds = %land.lhs.true105
  %45 = load ptr, ptr %utf8.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %45, i64 3
  %46 = load i8, ptr %arrayidx112, align 1
  %conv113 = sext i8 %46 to i32
  %and114 = and i32 %conv113, 192
  %cmp115 = icmp eq i32 %and114, 128
  br i1 %cmp115, label %land.lhs.true117, label %if.else139

land.lhs.true117:                                 ; preds = %land.lhs.true111
  %47 = load ptr, ptr %utf8.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %47, i64 4
  %48 = load i8, ptr %arrayidx118, align 1
  %conv119 = sext i8 %48 to i32
  %and120 = and i32 %conv119, 192
  %cmp121 = icmp eq i32 %and120, 128
  br i1 %cmp121, label %if.then123, label %if.else139

if.then123:                                       ; preds = %land.lhs.true117
  %49 = load ptr, ptr %utf8.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %49, i64 0
  %50 = load i8, ptr %arrayidx124, align 1
  %conv125 = sext i8 %50 to i64
  %and126 = and i64 %conv125, 3
  %shl127 = shl i64 %and126, 24
  %51 = load ptr, ptr %utf8.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx128, align 1
  %conv129 = sext i8 %52 to i64
  %and130 = and i64 %conv129, 63
  %shl131 = shl i64 %and130, 18
  %or132 = or i64 %shl127, %shl131
  %cmp133 = icmp sge i64 %or132, 2097152
  br i1 %cmp133, label %if.then135, label %if.end138

if.then135:                                       ; preds = %if.then123
  %53 = load i64, ptr %length, align 8
  %inc136 = add i64 %53, 1
  store i64 %inc136, ptr %length, align 8
  %54 = load ptr, ptr %utf8.addr, align 8
  %add.ptr137 = getelementptr inbounds i8, ptr %54, i64 4
  store ptr %add.ptr137, ptr %utf8.addr, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.then123
  br label %if.end192

if.else139:                                       ; preds = %land.lhs.true117, %land.lhs.true111, %land.lhs.true105, %land.lhs.true99, %if.else93
  %55 = load ptr, ptr %utf8.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %55, i64 0
  %56 = load i8, ptr %arrayidx140, align 1
  %conv141 = sext i8 %56 to i32
  %and142 = and i32 %conv141, 254
  %cmp143 = icmp eq i32 %and142, 252
  br i1 %cmp143, label %land.lhs.true145, label %if.end191

land.lhs.true145:                                 ; preds = %if.else139
  %57 = load ptr, ptr %utf8.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %57, i64 1
  %58 = load i8, ptr %arrayidx146, align 1
  %conv147 = sext i8 %58 to i32
  %and148 = and i32 %conv147, 192
  %cmp149 = icmp eq i32 %and148, 128
  br i1 %cmp149, label %land.lhs.true151, label %if.end191

land.lhs.true151:                                 ; preds = %land.lhs.true145
  %59 = load ptr, ptr %utf8.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %59, i64 2
  %60 = load i8, ptr %arrayidx152, align 1
  %conv153 = sext i8 %60 to i32
  %and154 = and i32 %conv153, 192
  %cmp155 = icmp eq i32 %and154, 128
  br i1 %cmp155, label %land.lhs.true157, label %if.end191

land.lhs.true157:                                 ; preds = %land.lhs.true151
  %61 = load ptr, ptr %utf8.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %61, i64 3
  %62 = load i8, ptr %arrayidx158, align 1
  %conv159 = sext i8 %62 to i32
  %and160 = and i32 %conv159, 192
  %cmp161 = icmp eq i32 %and160, 128
  br i1 %cmp161, label %land.lhs.true163, label %if.end191

land.lhs.true163:                                 ; preds = %land.lhs.true157
  %63 = load ptr, ptr %utf8.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %63, i64 4
  %64 = load i8, ptr %arrayidx164, align 1
  %conv165 = sext i8 %64 to i32
  %and166 = and i32 %conv165, 192
  %cmp167 = icmp eq i32 %and166, 128
  br i1 %cmp167, label %land.lhs.true169, label %if.end191

land.lhs.true169:                                 ; preds = %land.lhs.true163
  %65 = load ptr, ptr %utf8.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %65, i64 5
  %66 = load i8, ptr %arrayidx170, align 1
  %conv171 = sext i8 %66 to i32
  %and172 = and i32 %conv171, 192
  %cmp173 = icmp eq i32 %and172, 128
  br i1 %cmp173, label %if.then175, label %if.end191

if.then175:                                       ; preds = %land.lhs.true169
  %67 = load ptr, ptr %utf8.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %67, i64 0
  %68 = load i8, ptr %arrayidx176, align 1
  %conv177 = sext i8 %68 to i64
  %and178 = and i64 %conv177, 1
  %shl179 = shl i64 %and178, 30
  %69 = load ptr, ptr %utf8.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, ptr %69, i64 0
  %70 = load i8, ptr %arrayidx180, align 1
  %conv181 = sext i8 %70 to i64
  %and182 = and i64 %conv181, 63
  %shl183 = shl i64 %and182, 24
  %or184 = or i64 %shl179, %shl183
  %cmp185 = icmp sge i64 %or184, 67108864
  br i1 %cmp185, label %if.then187, label %if.end190

if.then187:                                       ; preds = %if.then175
  %71 = load i64, ptr %length, align 8
  %inc188 = add i64 %71, 1
  store i64 %inc188, ptr %length, align 8
  %72 = load ptr, ptr %utf8.addr, align 8
  %add.ptr189 = getelementptr inbounds i8, ptr %72, i64 5
  store ptr %add.ptr189, ptr %utf8.addr, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then187, %if.then175
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %land.lhs.true169, %land.lhs.true163, %land.lhs.true157, %land.lhs.true151, %land.lhs.true145, %if.else139
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.end138
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end92
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end52
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.end
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.then
  %73 = load ptr, ptr %utf8.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr, ptr %utf8.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %74 = load i64, ptr %length, align 8
  ret i64 %74
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_size(ptr noundef %utf8) #0 {
entry:
  %utf8.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  %0 = load ptr, ptr %utf8.addr, align 8
  store ptr %0, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %ptr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %ptr, align 8
  %5 = load ptr, ptr %utf8.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  ret i64 %add
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_decodechar(ptr noundef %utf8, ptr noundef %ucs4) #0 {
entry:
  %retval = alloca i64, align 8
  %utf8.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  %0 = load ptr, ptr %utf8.addr, align 8
  store ptr %0, ptr %start, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end264
  %1 = load ptr, ptr %utf8.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, 128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %utf8.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i64
  %5 = load ptr, ptr %ucs4.addr, align 8
  store i64 %conv3, ptr %5, align 8
  %6 = load ptr, ptr %utf8.addr, align 8
  %7 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  store i64 %add, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %while.body
  %8 = load ptr, ptr %utf8.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %9 to i32
  %and6 = and i32 %conv5, 224
  %cmp7 = icmp eq i32 %and6, 192
  br i1 %cmp7, label %land.lhs.true, label %if.else29

land.lhs.true:                                    ; preds = %if.else
  %10 = load ptr, ptr %utf8.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %11 to i32
  %and11 = and i32 %conv10, 192
  %cmp12 = icmp eq i32 %and11, 128
  br i1 %cmp12, label %if.then14, label %if.else29

if.then14:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %utf8.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %13 to i64
  %and17 = and i64 %conv16, 31
  %shl = shl i64 %and17, 6
  %14 = load ptr, ptr %utf8.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %15 to i64
  %and20 = and i64 %conv19, 63
  %shl21 = shl i64 %and20, 0
  %or = or i64 %shl, %shl21
  %16 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or, ptr %16, align 8
  %17 = load ptr, ptr %ucs4.addr, align 8
  %18 = load i64, ptr %17, align 8
  %cmp22 = icmp uge i64 %18, 128
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %if.then14
  %19 = load ptr, ptr %utf8.addr, align 8
  %20 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast25 = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast26 = ptrtoint ptr %20 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %add28 = add nsw i64 %sub.ptr.sub27, 2
  store i64 %add28, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then14
  br label %if.end263

if.else29:                                        ; preds = %land.lhs.true, %if.else
  %21 = load ptr, ptr %utf8.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %22 to i32
  %and32 = and i32 %conv31, 240
  %cmp33 = icmp eq i32 %and32, 224
  br i1 %cmp33, label %land.lhs.true35, label %if.else70

land.lhs.true35:                                  ; preds = %if.else29
  %23 = load ptr, ptr %utf8.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %23, i64 1
  %24 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %24 to i32
  %and38 = and i32 %conv37, 192
  %cmp39 = icmp eq i32 %and38, 128
  br i1 %cmp39, label %land.lhs.true41, label %if.else70

land.lhs.true41:                                  ; preds = %land.lhs.true35
  %25 = load ptr, ptr %utf8.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %25, i64 2
  %26 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %26 to i32
  %and44 = and i32 %conv43, 192
  %cmp45 = icmp eq i32 %and44, 128
  br i1 %cmp45, label %if.then47, label %if.else70

if.then47:                                        ; preds = %land.lhs.true41
  %27 = load ptr, ptr %utf8.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %27, i64 0
  %28 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %28 to i64
  %and50 = and i64 %conv49, 15
  %shl51 = shl i64 %and50, 12
  %29 = load ptr, ptr %utf8.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %29, i64 1
  %30 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %30 to i64
  %and54 = and i64 %conv53, 63
  %shl55 = shl i64 %and54, 6
  %or56 = or i64 %shl51, %shl55
  %31 = load ptr, ptr %utf8.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %32 to i64
  %and59 = and i64 %conv58, 63
  %shl60 = shl i64 %and59, 0
  %or61 = or i64 %or56, %shl60
  %33 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or61, ptr %33, align 8
  %34 = load ptr, ptr %ucs4.addr, align 8
  %35 = load i64, ptr %34, align 8
  %cmp62 = icmp uge i64 %35, 2048
  br i1 %cmp62, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.then47
  %36 = load ptr, ptr %utf8.addr, align 8
  %37 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast65 = ptrtoint ptr %36 to i64
  %sub.ptr.rhs.cast66 = ptrtoint ptr %37 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %add68 = add nsw i64 %sub.ptr.sub67, 3
  store i64 %add68, ptr %retval, align 8
  br label %return

if.end69:                                         ; preds = %if.then47
  br label %if.end262

if.else70:                                        ; preds = %land.lhs.true41, %land.lhs.true35, %if.else29
  %38 = load ptr, ptr %utf8.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx71, align 1
  %conv72 = sext i8 %39 to i32
  %and73 = and i32 %conv72, 248
  %cmp74 = icmp eq i32 %and73, 240
  br i1 %cmp74, label %land.lhs.true76, label %if.else122

land.lhs.true76:                                  ; preds = %if.else70
  %40 = load ptr, ptr %utf8.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %arrayidx77, align 1
  %conv78 = sext i8 %41 to i32
  %and79 = and i32 %conv78, 192
  %cmp80 = icmp eq i32 %and79, 128
  br i1 %cmp80, label %land.lhs.true82, label %if.else122

land.lhs.true82:                                  ; preds = %land.lhs.true76
  %42 = load ptr, ptr %utf8.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %42, i64 2
  %43 = load i8, ptr %arrayidx83, align 1
  %conv84 = sext i8 %43 to i32
  %and85 = and i32 %conv84, 192
  %cmp86 = icmp eq i32 %and85, 128
  br i1 %cmp86, label %land.lhs.true88, label %if.else122

land.lhs.true88:                                  ; preds = %land.lhs.true82
  %44 = load ptr, ptr %utf8.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %44, i64 3
  %45 = load i8, ptr %arrayidx89, align 1
  %conv90 = sext i8 %45 to i32
  %and91 = and i32 %conv90, 192
  %cmp92 = icmp eq i32 %and91, 128
  br i1 %cmp92, label %if.then94, label %if.else122

if.then94:                                        ; preds = %land.lhs.true88
  %46 = load ptr, ptr %utf8.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx95, align 1
  %conv96 = sext i8 %47 to i64
  %and97 = and i64 %conv96, 7
  %shl98 = shl i64 %and97, 18
  %48 = load ptr, ptr %utf8.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx99, align 1
  %conv100 = sext i8 %49 to i64
  %and101 = and i64 %conv100, 63
  %shl102 = shl i64 %and101, 12
  %or103 = or i64 %shl98, %shl102
  %50 = load ptr, ptr %utf8.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %50, i64 2
  %51 = load i8, ptr %arrayidx104, align 1
  %conv105 = sext i8 %51 to i64
  %and106 = and i64 %conv105, 63
  %shl107 = shl i64 %and106, 6
  %or108 = or i64 %or103, %shl107
  %52 = load ptr, ptr %utf8.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %52, i64 3
  %53 = load i8, ptr %arrayidx109, align 1
  %conv110 = sext i8 %53 to i64
  %and111 = and i64 %conv110, 63
  %shl112 = shl i64 %and111, 0
  %or113 = or i64 %or108, %shl112
  %54 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or113, ptr %54, align 8
  %55 = load ptr, ptr %ucs4.addr, align 8
  %56 = load i64, ptr %55, align 8
  %cmp114 = icmp uge i64 %56, 65536
  br i1 %cmp114, label %if.then116, label %if.end121

if.then116:                                       ; preds = %if.then94
  %57 = load ptr, ptr %utf8.addr, align 8
  %58 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast117 = ptrtoint ptr %57 to i64
  %sub.ptr.rhs.cast118 = ptrtoint ptr %58 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %add120 = add nsw i64 %sub.ptr.sub119, 4
  store i64 %add120, ptr %retval, align 8
  br label %return

if.end121:                                        ; preds = %if.then94
  br label %if.end261

if.else122:                                       ; preds = %land.lhs.true88, %land.lhs.true82, %land.lhs.true76, %if.else70
  %59 = load ptr, ptr %utf8.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %59, i64 0
  %60 = load i8, ptr %arrayidx123, align 1
  %conv124 = sext i8 %60 to i32
  %and125 = and i32 %conv124, 252
  %cmp126 = icmp eq i32 %and125, 248
  br i1 %cmp126, label %land.lhs.true128, label %if.else185

land.lhs.true128:                                 ; preds = %if.else122
  %61 = load ptr, ptr %utf8.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %61, i64 1
  %62 = load i8, ptr %arrayidx129, align 1
  %conv130 = sext i8 %62 to i32
  %and131 = and i32 %conv130, 192
  %cmp132 = icmp eq i32 %and131, 128
  br i1 %cmp132, label %land.lhs.true134, label %if.else185

land.lhs.true134:                                 ; preds = %land.lhs.true128
  %63 = load ptr, ptr %utf8.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %63, i64 2
  %64 = load i8, ptr %arrayidx135, align 1
  %conv136 = sext i8 %64 to i32
  %and137 = and i32 %conv136, 192
  %cmp138 = icmp eq i32 %and137, 128
  br i1 %cmp138, label %land.lhs.true140, label %if.else185

land.lhs.true140:                                 ; preds = %land.lhs.true134
  %65 = load ptr, ptr %utf8.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %65, i64 3
  %66 = load i8, ptr %arrayidx141, align 1
  %conv142 = sext i8 %66 to i32
  %and143 = and i32 %conv142, 192
  %cmp144 = icmp eq i32 %and143, 128
  br i1 %cmp144, label %land.lhs.true146, label %if.else185

land.lhs.true146:                                 ; preds = %land.lhs.true140
  %67 = load ptr, ptr %utf8.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %67, i64 4
  %68 = load i8, ptr %arrayidx147, align 1
  %conv148 = sext i8 %68 to i32
  %and149 = and i32 %conv148, 192
  %cmp150 = icmp eq i32 %and149, 128
  br i1 %cmp150, label %if.then152, label %if.else185

if.then152:                                       ; preds = %land.lhs.true146
  %69 = load ptr, ptr %utf8.addr, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %69, i64 0
  %70 = load i8, ptr %arrayidx153, align 1
  %conv154 = sext i8 %70 to i64
  %and155 = and i64 %conv154, 3
  %shl156 = shl i64 %and155, 24
  %71 = load ptr, ptr %utf8.addr, align 8
  %arrayidx157 = getelementptr inbounds i8, ptr %71, i64 1
  %72 = load i8, ptr %arrayidx157, align 1
  %conv158 = sext i8 %72 to i64
  %and159 = and i64 %conv158, 63
  %shl160 = shl i64 %and159, 18
  %or161 = or i64 %shl156, %shl160
  %73 = load ptr, ptr %utf8.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %73, i64 2
  %74 = load i8, ptr %arrayidx162, align 1
  %conv163 = sext i8 %74 to i64
  %and164 = and i64 %conv163, 63
  %shl165 = shl i64 %and164, 12
  %or166 = or i64 %or161, %shl165
  %75 = load ptr, ptr %utf8.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %75, i64 3
  %76 = load i8, ptr %arrayidx167, align 1
  %conv168 = sext i8 %76 to i64
  %and169 = and i64 %conv168, 63
  %shl170 = shl i64 %and169, 6
  %or171 = or i64 %or166, %shl170
  %77 = load ptr, ptr %utf8.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %77, i64 4
  %78 = load i8, ptr %arrayidx172, align 1
  %conv173 = sext i8 %78 to i64
  %and174 = and i64 %conv173, 63
  %shl175 = shl i64 %and174, 0
  %or176 = or i64 %or171, %shl175
  %79 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or176, ptr %79, align 8
  %80 = load ptr, ptr %ucs4.addr, align 8
  %81 = load i64, ptr %80, align 8
  %cmp177 = icmp uge i64 %81, 2097152
  br i1 %cmp177, label %if.then179, label %if.end184

if.then179:                                       ; preds = %if.then152
  %82 = load ptr, ptr %utf8.addr, align 8
  %83 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast180 = ptrtoint ptr %82 to i64
  %sub.ptr.rhs.cast181 = ptrtoint ptr %83 to i64
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %add183 = add nsw i64 %sub.ptr.sub182, 5
  store i64 %add183, ptr %retval, align 8
  br label %return

if.end184:                                        ; preds = %if.then152
  br label %if.end260

if.else185:                                       ; preds = %land.lhs.true146, %land.lhs.true140, %land.lhs.true134, %land.lhs.true128, %if.else122
  %84 = load ptr, ptr %utf8.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx186, align 1
  %conv187 = sext i8 %85 to i32
  %and188 = and i32 %conv187, 254
  %cmp189 = icmp eq i32 %and188, 252
  br i1 %cmp189, label %land.lhs.true191, label %if.end259

land.lhs.true191:                                 ; preds = %if.else185
  %86 = load ptr, ptr %utf8.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, ptr %86, i64 1
  %87 = load i8, ptr %arrayidx192, align 1
  %conv193 = sext i8 %87 to i32
  %and194 = and i32 %conv193, 192
  %cmp195 = icmp eq i32 %and194, 128
  br i1 %cmp195, label %land.lhs.true197, label %if.end259

land.lhs.true197:                                 ; preds = %land.lhs.true191
  %88 = load ptr, ptr %utf8.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %88, i64 2
  %89 = load i8, ptr %arrayidx198, align 1
  %conv199 = sext i8 %89 to i32
  %and200 = and i32 %conv199, 192
  %cmp201 = icmp eq i32 %and200, 128
  br i1 %cmp201, label %land.lhs.true203, label %if.end259

land.lhs.true203:                                 ; preds = %land.lhs.true197
  %90 = load ptr, ptr %utf8.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, ptr %90, i64 3
  %91 = load i8, ptr %arrayidx204, align 1
  %conv205 = sext i8 %91 to i32
  %and206 = and i32 %conv205, 192
  %cmp207 = icmp eq i32 %and206, 128
  br i1 %cmp207, label %land.lhs.true209, label %if.end259

land.lhs.true209:                                 ; preds = %land.lhs.true203
  %92 = load ptr, ptr %utf8.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %92, i64 4
  %93 = load i8, ptr %arrayidx210, align 1
  %conv211 = sext i8 %93 to i32
  %and212 = and i32 %conv211, 192
  %cmp213 = icmp eq i32 %and212, 128
  br i1 %cmp213, label %land.lhs.true215, label %if.end259

land.lhs.true215:                                 ; preds = %land.lhs.true209
  %94 = load ptr, ptr %utf8.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, ptr %94, i64 5
  %95 = load i8, ptr %arrayidx216, align 1
  %conv217 = sext i8 %95 to i32
  %and218 = and i32 %conv217, 192
  %cmp219 = icmp eq i32 %and218, 128
  br i1 %cmp219, label %if.then221, label %if.end259

if.then221:                                       ; preds = %land.lhs.true215
  %96 = load ptr, ptr %utf8.addr, align 8
  %arrayidx222 = getelementptr inbounds i8, ptr %96, i64 0
  %97 = load i8, ptr %arrayidx222, align 1
  %conv223 = sext i8 %97 to i64
  %and224 = and i64 %conv223, 1
  %shl225 = shl i64 %and224, 30
  %98 = load ptr, ptr %utf8.addr, align 8
  %arrayidx226 = getelementptr inbounds i8, ptr %98, i64 1
  %99 = load i8, ptr %arrayidx226, align 1
  %conv227 = sext i8 %99 to i64
  %and228 = and i64 %conv227, 63
  %shl229 = shl i64 %and228, 24
  %or230 = or i64 %shl225, %shl229
  %100 = load ptr, ptr %utf8.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, ptr %100, i64 2
  %101 = load i8, ptr %arrayidx231, align 1
  %conv232 = sext i8 %101 to i64
  %and233 = and i64 %conv232, 63
  %shl234 = shl i64 %and233, 18
  %or235 = or i64 %or230, %shl234
  %102 = load ptr, ptr %utf8.addr, align 8
  %arrayidx236 = getelementptr inbounds i8, ptr %102, i64 3
  %103 = load i8, ptr %arrayidx236, align 1
  %conv237 = sext i8 %103 to i64
  %and238 = and i64 %conv237, 63
  %shl239 = shl i64 %and238, 12
  %or240 = or i64 %or235, %shl239
  %104 = load ptr, ptr %utf8.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, ptr %104, i64 4
  %105 = load i8, ptr %arrayidx241, align 1
  %conv242 = sext i8 %105 to i64
  %and243 = and i64 %conv242, 63
  %shl244 = shl i64 %and243, 6
  %or245 = or i64 %or240, %shl244
  %106 = load ptr, ptr %utf8.addr, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %106, i64 5
  %107 = load i8, ptr %arrayidx246, align 1
  %conv247 = sext i8 %107 to i64
  %and248 = and i64 %conv247, 63
  %shl249 = shl i64 %and248, 0
  %or250 = or i64 %or245, %shl249
  %108 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or250, ptr %108, align 8
  %109 = load ptr, ptr %ucs4.addr, align 8
  %110 = load i64, ptr %109, align 8
  %cmp251 = icmp uge i64 %110, 67108864
  br i1 %cmp251, label %if.then253, label %if.end258

if.then253:                                       ; preds = %if.then221
  %111 = load ptr, ptr %utf8.addr, align 8
  %112 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast254 = ptrtoint ptr %111 to i64
  %sub.ptr.rhs.cast255 = ptrtoint ptr %112 to i64
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %add257 = add nsw i64 %sub.ptr.sub256, 6
  store i64 %add257, ptr %retval, align 8
  br label %return

if.end258:                                        ; preds = %if.then221
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %land.lhs.true215, %land.lhs.true209, %land.lhs.true203, %land.lhs.true197, %land.lhs.true191, %if.else185
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %if.end184
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.end121
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.end69
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.end
  br label %if.end264

if.end264:                                        ; preds = %if.end263
  %113 = load ptr, ptr %utf8.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %113, i32 1
  store ptr %incdec.ptr, ptr %utf8.addr, align 8
  br label %while.body

return:                                           ; preds = %if.then253, %if.then179, %if.then116, %if.then64, %if.then24, %if.then
  %114 = load i64, ptr %retval, align 8
  ret i64 %114
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_encodechar(ptr noundef %utf8, i64 noundef %ucs4) #0 {
entry:
  %retval = alloca i64, align 8
  %utf8.addr = alloca ptr, align 8
  %ucs4.addr = alloca i64, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  store i64 %ucs4, ptr %ucs4.addr, align 8
  %0 = load i64, ptr %ucs4.addr, align 8
  %cmp = icmp ule i64 %0, 127
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %ucs4.addr, align 8
  %conv = trunc i64 %1 to i8
  %2 = load ptr, ptr %utf8.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  store i64 1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %ucs4.addr, align 8
  %cmp1 = icmp ule i64 %3, 2047
  br i1 %cmp1, label %if.then3, label %if.else11

if.then3:                                         ; preds = %if.else
  %4 = load i64, ptr %ucs4.addr, align 8
  %shr = lshr i64 %4, 6
  %and = and i64 %shr, 31
  %or = or i64 192, %and
  %conv4 = trunc i64 %or to i8
  %5 = load ptr, ptr %utf8.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 0
  store i8 %conv4, ptr %arrayidx5, align 1
  %6 = load i64, ptr %ucs4.addr, align 8
  %shr6 = lshr i64 %6, 0
  %and7 = and i64 %shr6, 63
  %or8 = or i64 128, %and7
  %conv9 = trunc i64 %or8 to i8
  %7 = load ptr, ptr %utf8.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %conv9, ptr %arrayidx10, align 1
  store i64 2, ptr %retval, align 8
  br label %return

if.else11:                                        ; preds = %if.else
  %8 = load i64, ptr %ucs4.addr, align 8
  %cmp12 = icmp ule i64 %8, 65535
  br i1 %cmp12, label %if.then14, label %if.else30

if.then14:                                        ; preds = %if.else11
  %9 = load i64, ptr %ucs4.addr, align 8
  %shr15 = lshr i64 %9, 12
  %and16 = and i64 %shr15, 15
  %or17 = or i64 224, %and16
  %conv18 = trunc i64 %or17 to i8
  %10 = load ptr, ptr %utf8.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %10, i64 0
  store i8 %conv18, ptr %arrayidx19, align 1
  %11 = load i64, ptr %ucs4.addr, align 8
  %shr20 = lshr i64 %11, 6
  %and21 = and i64 %shr20, 63
  %or22 = or i64 128, %and21
  %conv23 = trunc i64 %or22 to i8
  %12 = load ptr, ptr %utf8.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %conv23, ptr %arrayidx24, align 1
  %13 = load i64, ptr %ucs4.addr, align 8
  %shr25 = lshr i64 %13, 0
  %and26 = and i64 %shr25, 63
  %or27 = or i64 128, %and26
  %conv28 = trunc i64 %or27 to i8
  %14 = load ptr, ptr %utf8.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %conv28, ptr %arrayidx29, align 1
  store i64 3, ptr %retval, align 8
  br label %return

if.else30:                                        ; preds = %if.else11
  %15 = load i64, ptr %ucs4.addr, align 8
  %cmp31 = icmp ule i64 %15, 2097151
  br i1 %cmp31, label %if.then33, label %if.else54

if.then33:                                        ; preds = %if.else30
  %16 = load i64, ptr %ucs4.addr, align 8
  %shr34 = lshr i64 %16, 18
  %and35 = and i64 %shr34, 7
  %or36 = or i64 240, %and35
  %conv37 = trunc i64 %or36 to i8
  %17 = load ptr, ptr %utf8.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %17, i64 0
  store i8 %conv37, ptr %arrayidx38, align 1
  %18 = load i64, ptr %ucs4.addr, align 8
  %shr39 = lshr i64 %18, 12
  %and40 = and i64 %shr39, 63
  %or41 = or i64 128, %and40
  %conv42 = trunc i64 %or41 to i8
  %19 = load ptr, ptr %utf8.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %conv42, ptr %arrayidx43, align 1
  %20 = load i64, ptr %ucs4.addr, align 8
  %shr44 = lshr i64 %20, 6
  %and45 = and i64 %shr44, 63
  %or46 = or i64 128, %and45
  %conv47 = trunc i64 %or46 to i8
  %21 = load ptr, ptr %utf8.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %21, i64 2
  store i8 %conv47, ptr %arrayidx48, align 1
  %22 = load i64, ptr %ucs4.addr, align 8
  %shr49 = lshr i64 %22, 0
  %and50 = and i64 %shr49, 63
  %or51 = or i64 128, %and50
  %conv52 = trunc i64 %or51 to i8
  %23 = load ptr, ptr %utf8.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %23, i64 3
  store i8 %conv52, ptr %arrayidx53, align 1
  store i64 4, ptr %retval, align 8
  br label %return

if.else54:                                        ; preds = %if.else30
  %24 = load i64, ptr %ucs4.addr, align 8
  %cmp55 = icmp ule i64 %24, 67108863
  br i1 %cmp55, label %if.then57, label %if.else83

if.then57:                                        ; preds = %if.else54
  %25 = load i64, ptr %ucs4.addr, align 8
  %shr58 = lshr i64 %25, 24
  %and59 = and i64 %shr58, 3
  %or60 = or i64 248, %and59
  %conv61 = trunc i64 %or60 to i8
  %26 = load ptr, ptr %utf8.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %26, i64 0
  store i8 %conv61, ptr %arrayidx62, align 1
  %27 = load i64, ptr %ucs4.addr, align 8
  %shr63 = lshr i64 %27, 18
  %and64 = and i64 %shr63, 63
  %or65 = or i64 128, %and64
  %conv66 = trunc i64 %or65 to i8
  %28 = load ptr, ptr %utf8.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %conv66, ptr %arrayidx67, align 1
  %29 = load i64, ptr %ucs4.addr, align 8
  %shr68 = lshr i64 %29, 12
  %and69 = and i64 %shr68, 63
  %or70 = or i64 128, %and69
  %conv71 = trunc i64 %or70 to i8
  %30 = load ptr, ptr %utf8.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 %conv71, ptr %arrayidx72, align 1
  %31 = load i64, ptr %ucs4.addr, align 8
  %shr73 = lshr i64 %31, 6
  %and74 = and i64 %shr73, 63
  %or75 = or i64 128, %and74
  %conv76 = trunc i64 %or75 to i8
  %32 = load ptr, ptr %utf8.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %32, i64 3
  store i8 %conv76, ptr %arrayidx77, align 1
  %33 = load i64, ptr %ucs4.addr, align 8
  %shr78 = lshr i64 %33, 0
  %and79 = and i64 %shr78, 63
  %or80 = or i64 128, %and79
  %conv81 = trunc i64 %or80 to i8
  %34 = load ptr, ptr %utf8.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %34, i64 4
  store i8 %conv81, ptr %arrayidx82, align 1
  store i64 5, ptr %retval, align 8
  br label %return

if.else83:                                        ; preds = %if.else54
  %35 = load i64, ptr %ucs4.addr, align 8
  %cmp84 = icmp ule i64 %35, 2147483647
  br i1 %cmp84, label %if.then86, label %if.end

if.then86:                                        ; preds = %if.else83
  %36 = load i64, ptr %ucs4.addr, align 8
  %shr87 = lshr i64 %36, 30
  %and88 = and i64 %shr87, 1
  %or89 = or i64 252, %and88
  %conv90 = trunc i64 %or89 to i8
  %37 = load ptr, ptr %utf8.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %37, i64 0
  store i8 %conv90, ptr %arrayidx91, align 1
  %38 = load i64, ptr %ucs4.addr, align 8
  %shr92 = lshr i64 %38, 24
  %and93 = and i64 %shr92, 63
  %or94 = or i64 128, %and93
  %conv95 = trunc i64 %or94 to i8
  %39 = load ptr, ptr %utf8.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %conv95, ptr %arrayidx96, align 1
  %40 = load i64, ptr %ucs4.addr, align 8
  %shr97 = lshr i64 %40, 18
  %and98 = and i64 %shr97, 63
  %or99 = or i64 128, %and98
  %conv100 = trunc i64 %or99 to i8
  %41 = load ptr, ptr %utf8.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %41, i64 2
  store i8 %conv100, ptr %arrayidx101, align 1
  %42 = load i64, ptr %ucs4.addr, align 8
  %shr102 = lshr i64 %42, 12
  %and103 = and i64 %shr102, 63
  %or104 = or i64 128, %and103
  %conv105 = trunc i64 %or104 to i8
  %43 = load ptr, ptr %utf8.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %43, i64 3
  store i8 %conv105, ptr %arrayidx106, align 1
  %44 = load i64, ptr %ucs4.addr, align 8
  %shr107 = lshr i64 %44, 6
  %and108 = and i64 %shr107, 63
  %or109 = or i64 128, %and108
  %conv110 = trunc i64 %or109 to i8
  %45 = load ptr, ptr %utf8.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %45, i64 4
  store i8 %conv110, ptr %arrayidx111, align 1
  %46 = load i64, ptr %ucs4.addr, align 8
  %shr112 = lshr i64 %46, 0
  %and113 = and i64 %shr112, 63
  %or114 = or i64 128, %and113
  %conv115 = trunc i64 %or114 to i8
  %47 = load ptr, ptr %utf8.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %47, i64 5
  store i8 %conv115, ptr %arrayidx116, align 1
  store i64 6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else83
  br label %if.end117

if.end117:                                        ; preds = %if.end
  br label %if.end118

if.end118:                                        ; preds = %if.end117
  br label %if.end119

if.end119:                                        ; preds = %if.end118
  br label %if.end120

if.end120:                                        ; preds = %if.end119
  br label %if.end121

if.end121:                                        ; preds = %if.end120
  %48 = load ptr, ptr %utf8.addr, align 8
  %call = call i64 @id3_utf8_encodechar(ptr noundef %48, i64 noundef 183)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end121, %if.then86, %if.then57, %if.then33, %if.then14, %if.then3, %if.then
  %49 = load i64, ptr %retval, align 8
  ret i64 %49
}

; Function Attrs: nounwind ssp uwtable
define void @id3_utf8_decode(ptr noundef %utf8, ptr noundef %ucs4) #0 {
entry:
  %utf8.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %utf8.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_utf8_decodechar(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %utf8.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %call
  store ptr %add.ptr, ptr %utf8.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %4 = load i64, ptr %3, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @id3_utf8_encode(ptr noundef %utf8, ptr noundef %ucs4) #0 {
entry:
  %utf8.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %utf8.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %2 = load i64, ptr %1, align 8
  %call = call i64 @id3_utf8_encodechar(ptr noundef %0, i64 noundef %2)
  %3 = load ptr, ptr %utf8.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %call
  store ptr %add.ptr, ptr %utf8.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %5 = load i64, ptr %4, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_put(ptr noundef %ptr, i8 noundef signext %utf8) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %utf8.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  store i8 %utf8, ptr %utf8.addr, align 1
  %0 = load ptr, ptr %ptr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %utf8.addr, align 1
  %2 = load ptr, ptr %ptr.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %2, align 8
  store i8 %1, ptr %3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1
}

; Function Attrs: nounwind ssp uwtable
define signext i8 @id3_utf8_get(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  ret i8 %2
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_serialize(ptr noundef %ptr, ptr noundef %ucs4, i32 noundef %terminate) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  %terminate.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %utf8 = alloca [6 x i8], align 1
  %out = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  store i32 %terminate, ptr %terminate.addr, align 4
  store i64 0, ptr %size, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %ucs4.addr, align 8
  %1 = load i64, ptr %0, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [6 x i8], ptr %utf8, i64 0, i64 0
  store ptr %arraydecay, ptr %out, align 8
  %2 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %call = call i64 @id3_utf8_encodechar(ptr noundef %arraydecay, i64 noundef %3)
  switch i64 %call, label %sw.epilog [
    i64 6, label %sw.bb
    i64 5, label %sw.bb3
    i64 4, label %sw.bb7
    i64 3, label %sw.bb11
    i64 2, label %sw.bb15
    i64 1, label %sw.bb19
    i64 0, label %sw.bb23
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %out, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr1, ptr %out, align 8
  %6 = load i8, ptr %5, align 1
  %call2 = call i64 @id3_utf8_put(ptr noundef %4, i8 noundef signext %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %call2
  store i64 %add, ptr %size, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %while.body, %sw.bb
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %out, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr4, ptr %out, align 8
  %10 = load i8, ptr %9, align 1
  %call5 = call i64 @id3_utf8_put(ptr noundef %8, i8 noundef signext %10)
  %11 = load i64, ptr %size, align 8
  %add6 = add i64 %11, %call5
  store i64 %add6, ptr %size, align 8
  br label %sw.bb7

sw.bb7:                                           ; preds = %while.body, %sw.bb3
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %out, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr8, ptr %out, align 8
  %14 = load i8, ptr %13, align 1
  %call9 = call i64 @id3_utf8_put(ptr noundef %12, i8 noundef signext %14)
  %15 = load i64, ptr %size, align 8
  %add10 = add i64 %15, %call9
  store i64 %add10, ptr %size, align 8
  br label %sw.bb11

sw.bb11:                                          ; preds = %while.body, %sw.bb7
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %out, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr12, ptr %out, align 8
  %18 = load i8, ptr %17, align 1
  %call13 = call i64 @id3_utf8_put(ptr noundef %16, i8 noundef signext %18)
  %19 = load i64, ptr %size, align 8
  %add14 = add i64 %19, %call13
  store i64 %add14, ptr %size, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %while.body, %sw.bb11
  %20 = load ptr, ptr %ptr.addr, align 8
  %21 = load ptr, ptr %out, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr16, ptr %out, align 8
  %22 = load i8, ptr %21, align 1
  %call17 = call i64 @id3_utf8_put(ptr noundef %20, i8 noundef signext %22)
  %23 = load i64, ptr %size, align 8
  %add18 = add i64 %23, %call17
  store i64 %add18, ptr %size, align 8
  br label %sw.bb19

sw.bb19:                                          ; preds = %while.body, %sw.bb15
  %24 = load ptr, ptr %ptr.addr, align 8
  %25 = load ptr, ptr %out, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr20, ptr %out, align 8
  %26 = load i8, ptr %25, align 1
  %call21 = call i64 @id3_utf8_put(ptr noundef %24, i8 noundef signext %26)
  %27 = load i64, ptr %size, align 8
  %add22 = add i64 %27, %call21
  store i64 %add22, ptr %size, align 8
  br label %sw.bb23

sw.bb23:                                          ; preds = %while.body, %sw.bb19
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb23
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %28 = load i32, ptr %terminate.addr, align 4
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %29 = load ptr, ptr %ptr.addr, align 8
  %call25 = call i64 @id3_utf8_put(ptr noundef %29, i8 noundef signext 0)
  %30 = load i64, ptr %size, align 8
  %add26 = add i64 %30, %call25
  store i64 %add26, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %31 = load i64, ptr %size, align 8
  ret i64 %31
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_utf8_deserialize(ptr noundef %ptr, i64 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %end = alloca ptr, align 8
  %utf8ptr = alloca ptr, align 8
  %utf8 = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i64, ptr %length.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %2
  store ptr %add.ptr, ptr %end, align 8
  %3 = load i64, ptr %length.addr, align 8
  %add = add i64 %3, 1
  %mul = mul i64 %add, 1
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %utf8, align 8
  %4 = load ptr, ptr %utf8, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %utf8, align 8
  store ptr %5, ptr %utf8ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load ptr, ptr %end, align 8
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %ptr.addr, align 8
  %call2 = call signext i8 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_0(ptr noundef %9)
  %10 = load ptr, ptr %utf8ptr, align 8
  store i8 %call2, ptr %10, align 1
  %conv = sext i8 %call2 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %utf8ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %utf8ptr, align 8
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %land.end
  %13 = load ptr, ptr %utf8ptr, align 8
  store i8 0, ptr %13, align 1
  %14 = load ptr, ptr %utf8, align 8
  %call3 = call i64 @id3_utf8_length(ptr noundef %14)
  %add4 = add i64 %call3, 1
  %mul5 = mul i64 %add4, 8
  %call6 = call ptr @malloc(i64 noundef %mul5) #3
  store ptr %call6, ptr %ucs4, align 8
  %15 = load ptr, ptr %ucs4, align 8
  %tobool7 = icmp ne ptr %15, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  %16 = load ptr, ptr %utf8, align 8
  %17 = load ptr, ptr %ucs4, align 8
  call void @id3_utf8_decode(ptr noundef %16, ptr noundef %17)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end
  %18 = load ptr, ptr %utf8, align 8
  call void @free(ptr noundef %18)
  %19 = load ptr, ptr %ucs4, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define signext i8 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_0(ptr noundef %ptr)  alwaysinline#0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %0, align 8
  %2 = load i8, ptr %1, align 1
  ret i8 %2
}

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
