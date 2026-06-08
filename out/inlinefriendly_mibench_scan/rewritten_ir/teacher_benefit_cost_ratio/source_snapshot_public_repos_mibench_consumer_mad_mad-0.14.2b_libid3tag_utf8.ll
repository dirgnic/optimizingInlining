; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_benefit_cost_ratio/source_snapshot_public_repos_mibench_consumer_mad_mad-0.14.2b_libid3tag_utf8.prepared.ll'
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
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %utf8.addr, align 8
  %3 = load i8, ptr %2, align 1
  %cmp = icmp sgt i8 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i64, ptr %length, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %length, align 8
  br label %if.end196

if.else:                                          ; preds = %while.body
  %5 = load ptr, ptr %utf8.addr, align 8
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, -32
  %cmp5 = icmp eq i8 %7, -64
  br i1 %cmp5, label %land.lhs.true, label %if.else20

land.lhs.true:                                    ; preds = %if.else
  %8 = load ptr, ptr %utf8.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx7, align 1
  %10 = and i8 %9, -64
  %cmp10 = icmp eq i8 %10, -128
  br i1 %cmp10, label %if.then12, label %if.else20

if.then12:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %utf8.addr, align 8
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 30
  %cmp16.not = icmp eq i8 %13, 0
  br i1 %cmp16.not, label %if.end196, label %if.then18

if.then18:                                        ; preds = %if.then12
  %14 = load i64, ptr %length, align 8
  %inc19 = add i64 %14, 1
  store i64 %inc19, ptr %length, align 8
  %15 = load ptr, ptr %utf8.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %add.ptr, ptr %utf8.addr, align 8
  br label %if.end196

if.else20:                                        ; preds = %land.lhs.true, %if.else
  %16 = load ptr, ptr %utf8.addr, align 8
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -16
  %cmp24 = icmp eq i8 %18, -32
  br i1 %cmp24, label %land.lhs.true26, label %if.else53

land.lhs.true26:                                  ; preds = %if.else20
  %19 = load ptr, ptr %utf8.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i8, ptr %arrayidx27, align 1
  %21 = and i8 %20, -64
  %cmp30 = icmp eq i8 %21, -128
  br i1 %cmp30, label %land.lhs.true32, label %if.else53

land.lhs.true32:                                  ; preds = %land.lhs.true26
  %22 = load ptr, ptr %utf8.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx33, align 1
  %24 = and i8 %23, -64
  %cmp36 = icmp eq i8 %24, -128
  br i1 %cmp36, label %if.then38, label %if.else53

if.then38:                                        ; preds = %land.lhs.true32
  %25 = load ptr, ptr %utf8.addr, align 8
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 15
  %and41 = zext i8 %27 to i64
  %shl42 = shl nuw nsw i64 %and41, 12
  %arrayidx43 = getelementptr inbounds i8, ptr %25, i64 1
  %28 = load i8, ptr %arrayidx43, align 1
  %29 = and i8 %28, 32
  %and45 = zext i8 %29 to i64
  %shl46 = shl nuw nsw i64 %and45, 6
  %or = or i64 %shl42, %shl46
  %cmp47.not = icmp eq i64 %or, 0
  br i1 %cmp47.not, label %if.end196, label %if.then49

if.then49:                                        ; preds = %if.then38
  %30 = load i64, ptr %length, align 8
  %inc50 = add i64 %30, 1
  store i64 %inc50, ptr %length, align 8
  %31 = load ptr, ptr %utf8.addr, align 8
  %add.ptr51 = getelementptr inbounds i8, ptr %31, i64 2
  store ptr %add.ptr51, ptr %utf8.addr, align 8
  br label %if.end196

if.else53:                                        ; preds = %land.lhs.true32, %land.lhs.true26, %if.else20
  %32 = load ptr, ptr %utf8.addr, align 8
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, -8
  %cmp57 = icmp eq i8 %34, -16
  br i1 %cmp57, label %land.lhs.true59, label %if.else93

land.lhs.true59:                                  ; preds = %if.else53
  %35 = load ptr, ptr %utf8.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %35, i64 1
  %36 = load i8, ptr %arrayidx60, align 1
  %37 = and i8 %36, -64
  %cmp63 = icmp eq i8 %37, -128
  br i1 %cmp63, label %land.lhs.true65, label %if.else93

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %38 = load ptr, ptr %utf8.addr, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %38, i64 2
  %39 = load i8, ptr %arrayidx66, align 1
  %40 = and i8 %39, -64
  %cmp69 = icmp eq i8 %40, -128
  br i1 %cmp69, label %land.lhs.true71, label %if.else93

land.lhs.true71:                                  ; preds = %land.lhs.true65
  %41 = load ptr, ptr %utf8.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %41, i64 3
  %42 = load i8, ptr %arrayidx72, align 1
  %43 = and i8 %42, -64
  %cmp75 = icmp eq i8 %43, -128
  br i1 %cmp75, label %if.then77, label %if.else93

if.then77:                                        ; preds = %land.lhs.true71
  %44 = load ptr, ptr %utf8.addr, align 8
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 7
  %and80 = zext i8 %46 to i64
  %shl81 = shl nuw nsw i64 %and80, 18
  %arrayidx82 = getelementptr inbounds i8, ptr %44, i64 1
  %47 = load i8, ptr %arrayidx82, align 1
  %48 = and i8 %47, 48
  %and84 = zext i8 %48 to i64
  %shl85 = shl nuw nsw i64 %and84, 12
  %or86 = or i64 %shl81, %shl85
  %cmp87.not = icmp eq i64 %or86, 0
  br i1 %cmp87.not, label %if.end196, label %if.then89

if.then89:                                        ; preds = %if.then77
  %49 = load i64, ptr %length, align 8
  %inc90 = add i64 %49, 1
  store i64 %inc90, ptr %length, align 8
  %50 = load ptr, ptr %utf8.addr, align 8
  %add.ptr91 = getelementptr inbounds i8, ptr %50, i64 3
  store ptr %add.ptr91, ptr %utf8.addr, align 8
  br label %if.end196

if.else93:                                        ; preds = %land.lhs.true71, %land.lhs.true65, %land.lhs.true59, %if.else53
  %51 = load ptr, ptr %utf8.addr, align 8
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, -4
  %cmp97 = icmp eq i8 %53, -8
  br i1 %cmp97, label %land.lhs.true99, label %if.else139

land.lhs.true99:                                  ; preds = %if.else93
  %54 = load ptr, ptr %utf8.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, ptr %54, i64 1
  %55 = load i8, ptr %arrayidx100, align 1
  %56 = and i8 %55, -64
  %cmp103 = icmp eq i8 %56, -128
  br i1 %cmp103, label %land.lhs.true105, label %if.else139

land.lhs.true105:                                 ; preds = %land.lhs.true99
  %57 = load ptr, ptr %utf8.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %57, i64 2
  %58 = load i8, ptr %arrayidx106, align 1
  %59 = and i8 %58, -64
  %cmp109 = icmp eq i8 %59, -128
  br i1 %cmp109, label %land.lhs.true111, label %if.else139

land.lhs.true111:                                 ; preds = %land.lhs.true105
  %60 = load ptr, ptr %utf8.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %60, i64 3
  %61 = load i8, ptr %arrayidx112, align 1
  %62 = and i8 %61, -64
  %cmp115 = icmp eq i8 %62, -128
  br i1 %cmp115, label %land.lhs.true117, label %if.else139

land.lhs.true117:                                 ; preds = %land.lhs.true111
  %63 = load ptr, ptr %utf8.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %63, i64 4
  %64 = load i8, ptr %arrayidx118, align 1
  %65 = and i8 %64, -64
  %cmp121 = icmp eq i8 %65, -128
  br i1 %cmp121, label %if.then123, label %if.else139

if.then123:                                       ; preds = %land.lhs.true117
  %66 = load ptr, ptr %utf8.addr, align 8
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, 3
  %and126 = zext i8 %68 to i64
  %shl127 = shl nuw nsw i64 %and126, 24
  %69 = and i8 %67, 56
  %and130 = zext i8 %69 to i64
  %shl131 = shl nuw nsw i64 %and130, 18
  %or132 = or i64 %shl127, %shl131
  %cmp133.not = icmp eq i64 %or132, 0
  br i1 %cmp133.not, label %if.end196, label %if.then135

if.then135:                                       ; preds = %if.then123
  %70 = load i64, ptr %length, align 8
  %inc136 = add i64 %70, 1
  store i64 %inc136, ptr %length, align 8
  %71 = load ptr, ptr %utf8.addr, align 8
  %add.ptr137 = getelementptr inbounds i8, ptr %71, i64 4
  store ptr %add.ptr137, ptr %utf8.addr, align 8
  br label %if.end196

if.else139:                                       ; preds = %land.lhs.true117, %land.lhs.true111, %land.lhs.true105, %land.lhs.true99, %if.else93
  %72 = load ptr, ptr %utf8.addr, align 8
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, -2
  %cmp143 = icmp eq i8 %74, -4
  br i1 %cmp143, label %land.lhs.true145, label %if.end196

land.lhs.true145:                                 ; preds = %if.else139
  %75 = load ptr, ptr %utf8.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, ptr %75, i64 1
  %76 = load i8, ptr %arrayidx146, align 1
  %77 = and i8 %76, -64
  %cmp149 = icmp eq i8 %77, -128
  br i1 %cmp149, label %land.lhs.true151, label %if.end196

land.lhs.true151:                                 ; preds = %land.lhs.true145
  %78 = load ptr, ptr %utf8.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %78, i64 2
  %79 = load i8, ptr %arrayidx152, align 1
  %80 = and i8 %79, -64
  %cmp155 = icmp eq i8 %80, -128
  br i1 %cmp155, label %land.lhs.true157, label %if.end196

land.lhs.true157:                                 ; preds = %land.lhs.true151
  %81 = load ptr, ptr %utf8.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %81, i64 3
  %82 = load i8, ptr %arrayidx158, align 1
  %83 = and i8 %82, -64
  %cmp161 = icmp eq i8 %83, -128
  br i1 %cmp161, label %land.lhs.true163, label %if.end196

land.lhs.true163:                                 ; preds = %land.lhs.true157
  %84 = load ptr, ptr %utf8.addr, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %84, i64 4
  %85 = load i8, ptr %arrayidx164, align 1
  %86 = and i8 %85, -64
  %cmp167 = icmp eq i8 %86, -128
  br i1 %cmp167, label %land.lhs.true169, label %if.end196

land.lhs.true169:                                 ; preds = %land.lhs.true163
  %87 = load ptr, ptr %utf8.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, ptr %87, i64 5
  %88 = load i8, ptr %arrayidx170, align 1
  %89 = and i8 %88, -64
  %cmp173 = icmp eq i8 %89, -128
  br i1 %cmp173, label %if.then175, label %if.end196

if.then175:                                       ; preds = %land.lhs.true169
  %90 = load ptr, ptr %utf8.addr, align 8
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 1
  %and178 = zext i8 %92 to i64
  %shl179 = shl nuw nsw i64 %and178, 30
  %93 = and i8 %91, 60
  %and182 = zext i8 %93 to i64
  %shl183 = shl nuw nsw i64 %and182, 24
  %or184 = or i64 %shl179, %shl183
  %cmp185.not = icmp eq i64 %or184, 0
  br i1 %cmp185.not, label %if.end196, label %if.then187

if.then187:                                       ; preds = %if.then175
  %94 = load i64, ptr %length, align 8
  %inc188 = add i64 %94, 1
  store i64 %inc188, ptr %length, align 8
  %95 = load ptr, ptr %utf8.addr, align 8
  %add.ptr189 = getelementptr inbounds i8, ptr %95, i64 5
  store ptr %add.ptr189, ptr %utf8.addr, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.then18, %if.then12, %if.then89, %if.then77, %if.else139, %land.lhs.true145, %land.lhs.true151, %land.lhs.true157, %land.lhs.true163, %land.lhs.true169, %if.then187, %if.then175, %if.then123, %if.then135, %if.then38, %if.then49, %if.then
  %96 = load ptr, ptr %utf8.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %incdec.ptr, ptr %utf8.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %97 = load i64, ptr %length, align 8
  ret i64 %97
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_size(ptr noundef %utf8) #0 {
entry:
  %utf8.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %utf8, %entry ], [ %incdec.ptr, %while.body ]
  store ptr %storemerge, ptr %ptr, align 8
  %0 = load i8, ptr %storemerge, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i64 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %ptr, align 8
  %3 = load ptr, ptr %utf8.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
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
  store ptr %utf8, ptr %start, align 8
  br label %while.body

while.body:                                       ; preds = %if.end264, %entry
  %0 = load ptr, ptr %utf8.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp = icmp sgt i8 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load ptr, ptr %utf8.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv3 = sext i8 %3 to i64
  %4 = load ptr, ptr %ucs4.addr, align 8
  store i64 %conv3, ptr %4, align 8
  %5 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  store i64 %add, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %utf8.addr, align 8
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, -32
  %cmp7 = icmp eq i8 %8, -64
  br i1 %cmp7, label %land.lhs.true, label %if.else29

land.lhs.true:                                    ; preds = %if.else
  %9 = load ptr, ptr %utf8.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx9, align 1
  %11 = and i8 %10, -64
  %cmp12 = icmp eq i8 %11, -128
  br i1 %cmp12, label %if.then14, label %if.else29

if.then14:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %utf8.addr, align 8
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 31
  %and17 = zext i8 %14 to i64
  %shl = shl nuw nsw i64 %and17, 6
  %arrayidx18 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %arrayidx18, align 1
  %16 = and i8 %15, 63
  %and20 = zext i8 %16 to i64
  %or = or i64 %shl, %and20
  %17 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or, ptr %17, align 8
  %cmp22 = icmp ugt i64 %or, 127
  br i1 %cmp22, label %if.then24, label %if.end264

if.then24:                                        ; preds = %if.then14
  %18 = load ptr, ptr %utf8.addr, align 8
  %19 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast25 = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast26 = ptrtoint ptr %19 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %add28 = add nsw i64 %sub.ptr.sub27, 2
  store i64 %add28, ptr %retval, align 8
  br label %return

if.else29:                                        ; preds = %land.lhs.true, %if.else
  %20 = load ptr, ptr %utf8.addr, align 8
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, -16
  %cmp33 = icmp eq i8 %22, -32
  br i1 %cmp33, label %land.lhs.true35, label %if.else70

land.lhs.true35:                                  ; preds = %if.else29
  %23 = load ptr, ptr %utf8.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %23, i64 1
  %24 = load i8, ptr %arrayidx36, align 1
  %25 = and i8 %24, -64
  %cmp39 = icmp eq i8 %25, -128
  br i1 %cmp39, label %land.lhs.true41, label %if.else70

land.lhs.true41:                                  ; preds = %land.lhs.true35
  %26 = load ptr, ptr %utf8.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %26, i64 2
  %27 = load i8, ptr %arrayidx42, align 1
  %28 = and i8 %27, -64
  %cmp45 = icmp eq i8 %28, -128
  br i1 %cmp45, label %if.then47, label %if.else70

if.then47:                                        ; preds = %land.lhs.true41
  %29 = load ptr, ptr %utf8.addr, align 8
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 15
  %and50 = zext i8 %31 to i64
  %shl51 = shl nuw nsw i64 %and50, 12
  %arrayidx52 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %arrayidx52, align 1
  %33 = and i8 %32, 63
  %and54 = zext i8 %33 to i64
  %shl55 = shl nuw nsw i64 %and54, 6
  %or56 = or i64 %shl51, %shl55
  %34 = load ptr, ptr %utf8.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %34, i64 2
  %35 = load i8, ptr %arrayidx57, align 1
  %36 = and i8 %35, 63
  %and59 = zext i8 %36 to i64
  %or61 = or i64 %or56, %and59
  %37 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or61, ptr %37, align 8
  %cmp62 = icmp ugt i64 %or61, 2047
  br i1 %cmp62, label %if.then64, label %if.end264

if.then64:                                        ; preds = %if.then47
  %38 = load ptr, ptr %utf8.addr, align 8
  %39 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast65 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast66 = ptrtoint ptr %39 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %add68 = add nsw i64 %sub.ptr.sub67, 3
  store i64 %add68, ptr %retval, align 8
  br label %return

if.else70:                                        ; preds = %land.lhs.true41, %land.lhs.true35, %if.else29
  %40 = load ptr, ptr %utf8.addr, align 8
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, -8
  %cmp74 = icmp eq i8 %42, -16
  br i1 %cmp74, label %land.lhs.true76, label %if.else122

land.lhs.true76:                                  ; preds = %if.else70
  %43 = load ptr, ptr %utf8.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %43, i64 1
  %44 = load i8, ptr %arrayidx77, align 1
  %45 = and i8 %44, -64
  %cmp80 = icmp eq i8 %45, -128
  br i1 %cmp80, label %land.lhs.true82, label %if.else122

land.lhs.true82:                                  ; preds = %land.lhs.true76
  %46 = load ptr, ptr %utf8.addr, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %46, i64 2
  %47 = load i8, ptr %arrayidx83, align 1
  %48 = and i8 %47, -64
  %cmp86 = icmp eq i8 %48, -128
  br i1 %cmp86, label %land.lhs.true88, label %if.else122

land.lhs.true88:                                  ; preds = %land.lhs.true82
  %49 = load ptr, ptr %utf8.addr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %49, i64 3
  %50 = load i8, ptr %arrayidx89, align 1
  %51 = and i8 %50, -64
  %cmp92 = icmp eq i8 %51, -128
  br i1 %cmp92, label %if.then94, label %if.else122

if.then94:                                        ; preds = %land.lhs.true88
  %52 = load ptr, ptr %utf8.addr, align 8
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 7
  %and97 = zext i8 %54 to i64
  %shl98 = shl nuw nsw i64 %and97, 18
  %arrayidx99 = getelementptr inbounds i8, ptr %52, i64 1
  %55 = load i8, ptr %arrayidx99, align 1
  %56 = and i8 %55, 63
  %and101 = zext i8 %56 to i64
  %shl102 = shl nuw nsw i64 %and101, 12
  %or103 = or i64 %shl98, %shl102
  %57 = load ptr, ptr %utf8.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %57, i64 2
  %58 = load i8, ptr %arrayidx104, align 1
  %59 = and i8 %58, 63
  %and106 = zext i8 %59 to i64
  %shl107 = shl nuw nsw i64 %and106, 6
  %or108 = or i64 %or103, %shl107
  %60 = load ptr, ptr %utf8.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, ptr %60, i64 3
  %61 = load i8, ptr %arrayidx109, align 1
  %62 = and i8 %61, 63
  %and111 = zext i8 %62 to i64
  %or113 = or i64 %or108, %and111
  %63 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or113, ptr %63, align 8
  %cmp114 = icmp ugt i64 %or113, 65535
  br i1 %cmp114, label %if.then116, label %if.end264

if.then116:                                       ; preds = %if.then94
  %64 = load ptr, ptr %utf8.addr, align 8
  %65 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast117 = ptrtoint ptr %64 to i64
  %sub.ptr.rhs.cast118 = ptrtoint ptr %65 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %add120 = add nsw i64 %sub.ptr.sub119, 4
  store i64 %add120, ptr %retval, align 8
  br label %return

if.else122:                                       ; preds = %land.lhs.true88, %land.lhs.true82, %land.lhs.true76, %if.else70
  %66 = load ptr, ptr %utf8.addr, align 8
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, -4
  %cmp126 = icmp eq i8 %68, -8
  br i1 %cmp126, label %land.lhs.true128, label %if.else185

land.lhs.true128:                                 ; preds = %if.else122
  %69 = load ptr, ptr %utf8.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %69, i64 1
  %70 = load i8, ptr %arrayidx129, align 1
  %71 = and i8 %70, -64
  %cmp132 = icmp eq i8 %71, -128
  br i1 %cmp132, label %land.lhs.true134, label %if.else185

land.lhs.true134:                                 ; preds = %land.lhs.true128
  %72 = load ptr, ptr %utf8.addr, align 8
  %arrayidx135 = getelementptr inbounds i8, ptr %72, i64 2
  %73 = load i8, ptr %arrayidx135, align 1
  %74 = and i8 %73, -64
  %cmp138 = icmp eq i8 %74, -128
  br i1 %cmp138, label %land.lhs.true140, label %if.else185

land.lhs.true140:                                 ; preds = %land.lhs.true134
  %75 = load ptr, ptr %utf8.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %75, i64 3
  %76 = load i8, ptr %arrayidx141, align 1
  %77 = and i8 %76, -64
  %cmp144 = icmp eq i8 %77, -128
  br i1 %cmp144, label %land.lhs.true146, label %if.else185

land.lhs.true146:                                 ; preds = %land.lhs.true140
  %78 = load ptr, ptr %utf8.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %78, i64 4
  %79 = load i8, ptr %arrayidx147, align 1
  %80 = and i8 %79, -64
  %cmp150 = icmp eq i8 %80, -128
  br i1 %cmp150, label %if.then152, label %if.else185

if.then152:                                       ; preds = %land.lhs.true146
  %81 = load ptr, ptr %utf8.addr, align 8
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, 3
  %and155 = zext i8 %83 to i64
  %shl156 = shl nuw nsw i64 %and155, 24
  %arrayidx157 = getelementptr inbounds i8, ptr %81, i64 1
  %84 = load i8, ptr %arrayidx157, align 1
  %85 = and i8 %84, 63
  %and159 = zext i8 %85 to i64
  %shl160 = shl nuw nsw i64 %and159, 18
  %or161 = or i64 %shl156, %shl160
  %86 = load ptr, ptr %utf8.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, ptr %86, i64 2
  %87 = load i8, ptr %arrayidx162, align 1
  %88 = and i8 %87, 63
  %and164 = zext i8 %88 to i64
  %shl165 = shl nuw nsw i64 %and164, 12
  %or166 = or i64 %or161, %shl165
  %89 = load ptr, ptr %utf8.addr, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %89, i64 3
  %90 = load i8, ptr %arrayidx167, align 1
  %91 = and i8 %90, 63
  %and169 = zext i8 %91 to i64
  %shl170 = shl nuw nsw i64 %and169, 6
  %or171 = or i64 %or166, %shl170
  %92 = load ptr, ptr %utf8.addr, align 8
  %arrayidx172 = getelementptr inbounds i8, ptr %92, i64 4
  %93 = load i8, ptr %arrayidx172, align 1
  %94 = and i8 %93, 63
  %and174 = zext i8 %94 to i64
  %or176 = or i64 %or171, %and174
  %95 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or176, ptr %95, align 8
  %cmp177 = icmp ugt i64 %or176, 2097151
  br i1 %cmp177, label %if.then179, label %if.end264

if.then179:                                       ; preds = %if.then152
  %96 = load ptr, ptr %utf8.addr, align 8
  %97 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast180 = ptrtoint ptr %96 to i64
  %sub.ptr.rhs.cast181 = ptrtoint ptr %97 to i64
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %add183 = add nsw i64 %sub.ptr.sub182, 5
  store i64 %add183, ptr %retval, align 8
  br label %return

if.else185:                                       ; preds = %land.lhs.true146, %land.lhs.true140, %land.lhs.true134, %land.lhs.true128, %if.else122
  %98 = load ptr, ptr %utf8.addr, align 8
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, -2
  %cmp189 = icmp eq i8 %100, -4
  br i1 %cmp189, label %land.lhs.true191, label %if.end264

land.lhs.true191:                                 ; preds = %if.else185
  %101 = load ptr, ptr %utf8.addr, align 8
  %arrayidx192 = getelementptr inbounds i8, ptr %101, i64 1
  %102 = load i8, ptr %arrayidx192, align 1
  %103 = and i8 %102, -64
  %cmp195 = icmp eq i8 %103, -128
  br i1 %cmp195, label %land.lhs.true197, label %if.end264

land.lhs.true197:                                 ; preds = %land.lhs.true191
  %104 = load ptr, ptr %utf8.addr, align 8
  %arrayidx198 = getelementptr inbounds i8, ptr %104, i64 2
  %105 = load i8, ptr %arrayidx198, align 1
  %106 = and i8 %105, -64
  %cmp201 = icmp eq i8 %106, -128
  br i1 %cmp201, label %land.lhs.true203, label %if.end264

land.lhs.true203:                                 ; preds = %land.lhs.true197
  %107 = load ptr, ptr %utf8.addr, align 8
  %arrayidx204 = getelementptr inbounds i8, ptr %107, i64 3
  %108 = load i8, ptr %arrayidx204, align 1
  %109 = and i8 %108, -64
  %cmp207 = icmp eq i8 %109, -128
  br i1 %cmp207, label %land.lhs.true209, label %if.end264

land.lhs.true209:                                 ; preds = %land.lhs.true203
  %110 = load ptr, ptr %utf8.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %110, i64 4
  %111 = load i8, ptr %arrayidx210, align 1
  %112 = and i8 %111, -64
  %cmp213 = icmp eq i8 %112, -128
  br i1 %cmp213, label %land.lhs.true215, label %if.end264

land.lhs.true215:                                 ; preds = %land.lhs.true209
  %113 = load ptr, ptr %utf8.addr, align 8
  %arrayidx216 = getelementptr inbounds i8, ptr %113, i64 5
  %114 = load i8, ptr %arrayidx216, align 1
  %115 = and i8 %114, -64
  %cmp219 = icmp eq i8 %115, -128
  br i1 %cmp219, label %if.then221, label %if.end264

if.then221:                                       ; preds = %land.lhs.true215
  %116 = load ptr, ptr %utf8.addr, align 8
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 1
  %and224 = zext i8 %118 to i64
  %shl225 = shl nuw nsw i64 %and224, 30
  %arrayidx226 = getelementptr inbounds i8, ptr %116, i64 1
  %119 = load i8, ptr %arrayidx226, align 1
  %120 = and i8 %119, 63
  %and228 = zext i8 %120 to i64
  %shl229 = shl nuw nsw i64 %and228, 24
  %or230 = or i64 %shl225, %shl229
  %121 = load ptr, ptr %utf8.addr, align 8
  %arrayidx231 = getelementptr inbounds i8, ptr %121, i64 2
  %122 = load i8, ptr %arrayidx231, align 1
  %123 = and i8 %122, 63
  %and233 = zext i8 %123 to i64
  %shl234 = shl nuw nsw i64 %and233, 18
  %or235 = or i64 %or230, %shl234
  %124 = load ptr, ptr %utf8.addr, align 8
  %arrayidx236 = getelementptr inbounds i8, ptr %124, i64 3
  %125 = load i8, ptr %arrayidx236, align 1
  %126 = and i8 %125, 63
  %and238 = zext i8 %126 to i64
  %shl239 = shl nuw nsw i64 %and238, 12
  %or240 = or i64 %or235, %shl239
  %127 = load ptr, ptr %utf8.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, ptr %127, i64 4
  %128 = load i8, ptr %arrayidx241, align 1
  %129 = and i8 %128, 63
  %and243 = zext i8 %129 to i64
  %shl244 = shl nuw nsw i64 %and243, 6
  %or245 = or i64 %or240, %shl244
  %130 = load ptr, ptr %utf8.addr, align 8
  %arrayidx246 = getelementptr inbounds i8, ptr %130, i64 5
  %131 = load i8, ptr %arrayidx246, align 1
  %132 = and i8 %131, 63
  %and248 = zext i8 %132 to i64
  %or250 = or i64 %or245, %and248
  %133 = load ptr, ptr %ucs4.addr, align 8
  store i64 %or250, ptr %133, align 8
  %cmp251 = icmp ugt i64 %or250, 67108863
  br i1 %cmp251, label %if.then253, label %if.end264

if.then253:                                       ; preds = %if.then221
  %134 = load ptr, ptr %utf8.addr, align 8
  %135 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast254 = ptrtoint ptr %134 to i64
  %sub.ptr.rhs.cast255 = ptrtoint ptr %135 to i64
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %add257 = add nsw i64 %sub.ptr.sub256, 6
  store i64 %add257, ptr %retval, align 8
  br label %return

if.end264:                                        ; preds = %if.then14, %if.then94, %if.else185, %land.lhs.true191, %land.lhs.true197, %land.lhs.true203, %land.lhs.true209, %land.lhs.true215, %if.then221, %if.then152, %if.then47
  %136 = load ptr, ptr %utf8.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %136, i64 1
  store ptr %incdec.ptr, ptr %utf8.addr, align 8
  br label %while.body

return:                                           ; preds = %if.then253, %if.then179, %if.then116, %if.then64, %if.then24, %if.then
  %137 = load i64, ptr %retval, align 8
  ret i64 %137
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_encodechar(ptr noundef %utf8, i64 noundef %ucs4) #0 {
entry:
  %retval = alloca i64, align 8
  %utf8.addr = alloca ptr, align 8
  %ucs4.addr = alloca i64, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  store i64 %ucs4, ptr %ucs4.addr, align 8
  %cmp = icmp ult i64 %ucs4, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %ucs4.addr, align 8
  %conv = trunc i64 %0 to i8
  %1 = load ptr, ptr %utf8.addr, align 8
  store i8 %conv, ptr %1, align 1
  store i64 1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %ucs4.addr, align 8
  %cmp1 = icmp ult i64 %2, 2048
  br i1 %cmp1, label %if.then3, label %if.else11

if.then3:                                         ; preds = %if.else
  %3 = load i64, ptr %ucs4.addr, align 8
  %shr = lshr i64 %3, 6
  %4 = trunc i64 %shr to i8
  %5 = and i8 %4, 31
  %conv4 = or i8 %5, -64
  %6 = load ptr, ptr %utf8.addr, align 8
  store i8 %conv4, ptr %6, align 1
  %7 = load i64, ptr %ucs4.addr, align 8
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 63
  %conv9 = or i8 %9, -128
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %conv9, ptr %arrayidx10, align 1
  store i64 2, ptr %retval, align 8
  br label %return

if.else11:                                        ; preds = %if.else
  %10 = load i64, ptr %ucs4.addr, align 8
  %cmp12 = icmp ult i64 %10, 65536
  br i1 %cmp12, label %if.then14, label %if.else30

if.then14:                                        ; preds = %if.else11
  %11 = load i64, ptr %ucs4.addr, align 8
  %shr15 = lshr i64 %11, 12
  %12 = trunc i64 %shr15 to i8
  %13 = and i8 %12, 15
  %conv18 = or i8 %13, -32
  %14 = load ptr, ptr %utf8.addr, align 8
  store i8 %conv18, ptr %14, align 1
  %15 = load i64, ptr %ucs4.addr, align 8
  %shr20 = lshr i64 %15, 6
  %16 = trunc i64 %shr20 to i8
  %17 = and i8 %16, 63
  %conv23 = or i8 %17, -128
  %18 = load ptr, ptr %utf8.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %conv23, ptr %arrayidx24, align 1
  %19 = load i64, ptr %ucs4.addr, align 8
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 63
  %conv28 = or i8 %21, -128
  %22 = load ptr, ptr %utf8.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %22, i64 2
  store i8 %conv28, ptr %arrayidx29, align 1
  store i64 3, ptr %retval, align 8
  br label %return

if.else30:                                        ; preds = %if.else11
  %23 = load i64, ptr %ucs4.addr, align 8
  %cmp31 = icmp ult i64 %23, 2097152
  br i1 %cmp31, label %if.then33, label %if.else54

if.then33:                                        ; preds = %if.else30
  %24 = load i64, ptr %ucs4.addr, align 8
  %shr34 = lshr i64 %24, 18
  %25 = trunc i64 %shr34 to i8
  %26 = and i8 %25, 7
  %conv37 = or i8 %26, -16
  %27 = load ptr, ptr %utf8.addr, align 8
  store i8 %conv37, ptr %27, align 1
  %28 = load i64, ptr %ucs4.addr, align 8
  %shr39 = lshr i64 %28, 12
  %29 = trunc i64 %shr39 to i8
  %30 = and i8 %29, 63
  %conv42 = or i8 %30, -128
  %31 = load ptr, ptr %utf8.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %conv42, ptr %arrayidx43, align 1
  %32 = load i64, ptr %ucs4.addr, align 8
  %shr44 = lshr i64 %32, 6
  %33 = trunc i64 %shr44 to i8
  %34 = and i8 %33, 63
  %conv47 = or i8 %34, -128
  %35 = load ptr, ptr %utf8.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %35, i64 2
  store i8 %conv47, ptr %arrayidx48, align 1
  %36 = load i64, ptr %ucs4.addr, align 8
  %37 = trunc i64 %36 to i8
  %38 = and i8 %37, 63
  %conv52 = or i8 %38, -128
  %39 = load ptr, ptr %utf8.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %39, i64 3
  store i8 %conv52, ptr %arrayidx53, align 1
  store i64 4, ptr %retval, align 8
  br label %return

if.else54:                                        ; preds = %if.else30
  %40 = load i64, ptr %ucs4.addr, align 8
  %cmp55 = icmp ult i64 %40, 67108864
  br i1 %cmp55, label %if.then57, label %if.else83

if.then57:                                        ; preds = %if.else54
  %41 = load i64, ptr %ucs4.addr, align 8
  %shr58 = lshr i64 %41, 24
  %42 = trunc i64 %shr58 to i8
  %43 = and i8 %42, 3
  %conv61 = or i8 %43, -8
  %44 = load ptr, ptr %utf8.addr, align 8
  store i8 %conv61, ptr %44, align 1
  %45 = load i64, ptr %ucs4.addr, align 8
  %shr63 = lshr i64 %45, 18
  %46 = trunc i64 %shr63 to i8
  %47 = and i8 %46, 63
  %conv66 = or i8 %47, -128
  %48 = load ptr, ptr %utf8.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %conv66, ptr %arrayidx67, align 1
  %49 = load i64, ptr %ucs4.addr, align 8
  %shr68 = lshr i64 %49, 12
  %50 = trunc i64 %shr68 to i8
  %51 = and i8 %50, 63
  %conv71 = or i8 %51, -128
  %52 = load ptr, ptr %utf8.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %52, i64 2
  store i8 %conv71, ptr %arrayidx72, align 1
  %53 = load i64, ptr %ucs4.addr, align 8
  %shr73 = lshr i64 %53, 6
  %54 = trunc i64 %shr73 to i8
  %55 = and i8 %54, 63
  %conv76 = or i8 %55, -128
  %56 = load ptr, ptr %utf8.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %56, i64 3
  store i8 %conv76, ptr %arrayidx77, align 1
  %57 = load i64, ptr %ucs4.addr, align 8
  %58 = trunc i64 %57 to i8
  %59 = and i8 %58, 63
  %conv81 = or i8 %59, -128
  %60 = load ptr, ptr %utf8.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %60, i64 4
  store i8 %conv81, ptr %arrayidx82, align 1
  store i64 5, ptr %retval, align 8
  br label %return

if.else83:                                        ; preds = %if.else54
  %61 = load i64, ptr %ucs4.addr, align 8
  %cmp84 = icmp ult i64 %61, 2147483648
  br i1 %cmp84, label %if.then86, label %if.end121

if.then86:                                        ; preds = %if.else83
  %62 = load i64, ptr %ucs4.addr, align 8
  %shr87 = lshr i64 %62, 30
  %63 = trunc i64 %shr87 to i8
  %64 = and i8 %63, 1
  %conv90 = or i8 %64, -4
  %65 = load ptr, ptr %utf8.addr, align 8
  store i8 %conv90, ptr %65, align 1
  %66 = load i64, ptr %ucs4.addr, align 8
  %shr92 = lshr i64 %66, 24
  %67 = trunc i64 %shr92 to i8
  %68 = and i8 %67, 63
  %conv95 = or i8 %68, -128
  %69 = load ptr, ptr %utf8.addr, align 8
  %arrayidx96 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %conv95, ptr %arrayidx96, align 1
  %70 = load i64, ptr %ucs4.addr, align 8
  %shr97 = lshr i64 %70, 18
  %71 = trunc i64 %shr97 to i8
  %72 = and i8 %71, 63
  %conv100 = or i8 %72, -128
  %73 = load ptr, ptr %utf8.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %73, i64 2
  store i8 %conv100, ptr %arrayidx101, align 1
  %74 = load i64, ptr %ucs4.addr, align 8
  %shr102 = lshr i64 %74, 12
  %75 = trunc i64 %shr102 to i8
  %76 = and i8 %75, 63
  %conv105 = or i8 %76, -128
  %77 = load ptr, ptr %utf8.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, ptr %77, i64 3
  store i8 %conv105, ptr %arrayidx106, align 1
  %78 = load i64, ptr %ucs4.addr, align 8
  %shr107 = lshr i64 %78, 6
  %79 = trunc i64 %shr107 to i8
  %80 = and i8 %79, 63
  %conv110 = or i8 %80, -128
  %81 = load ptr, ptr %utf8.addr, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %81, i64 4
  store i8 %conv110, ptr %arrayidx111, align 1
  %82 = load i64, ptr %ucs4.addr, align 8
  %83 = trunc i64 %82 to i8
  %84 = and i8 %83, 63
  %conv115 = or i8 %84, -128
  %85 = load ptr, ptr %utf8.addr, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %85, i64 5
  store i8 %conv115, ptr %arrayidx116, align 1
  store i64 6, ptr %retval, align 8
  br label %return

if.end121:                                        ; preds = %if.else83
  %86 = load ptr, ptr %utf8.addr, align 8
  %call = call i64 @id3_utf8_encodechar(ptr noundef %86, i64 noundef 183)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end121, %if.then86, %if.then57, %if.then33, %if.then14, %if.then3, %if.then
  %87 = load i64, ptr %retval, align 8
  ret i64 %87
}

; Function Attrs: nounwind ssp uwtable
define void @id3_utf8_decode(ptr noundef %utf8, ptr noundef %ucs4) #0 {
entry:
  %utf8.addr = alloca ptr, align 8
  %ucs4.addr = alloca ptr, align 8
  store ptr %utf8, ptr %utf8.addr, align 8
  store ptr %ucs4, ptr %ucs4.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = load ptr, ptr %utf8.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %call = call i64 @id3_utf8_decodechar(ptr noundef %0, ptr noundef %1)
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %call
  store ptr %add.ptr, ptr %utf8.addr, align 8
  %2 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !9

do.end:                                           ; preds = %do.body
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

do.body:                                          ; preds = %do.body, %entry
  %0 = load ptr, ptr %utf8.addr, align 8
  %1 = load ptr, ptr %ucs4.addr, align 8
  %2 = load i64, ptr %1, align 8
  %call = call i64 @id3_utf8_encodechar(ptr noundef %0, i64 noundef %2)
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %call
  store ptr %add.ptr, ptr %utf8.addr, align 8
  %3 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %4 = load i64, ptr %3, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !10

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_put(ptr noundef %ptr, i8 noundef signext %utf8) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %utf8.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  store i8 %utf8, ptr %utf8.addr, align 1
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %utf8.addr, align 1
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 %0, ptr %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1
}

; Function Attrs: nounwind ssp uwtable
define signext i8 @id3_utf8_get(ptr noundef %ptr) #0 {
entry:
  %0 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %1 = load i8, ptr %0, align 1
  ret i8 %1
}

; Function Attrs: nounwind ssp uwtable
define i64 @id3_utf8_serialize(ptr noundef %ptr, ptr noundef %ucs4, i32 noundef %terminate) #0 {
entry:
  %ptr.addr.i = alloca ptr, align 8
  %utf8.addr.i = alloca i8, align 1
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
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  store ptr %utf8, ptr %out, align 8
  %2 = load ptr, ptr %ucs4.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %ucs4.addr, align 8
  %3 = load i64, ptr %2, align 8
  %call = call i64 @id3_utf8_encodechar(ptr noundef nonnull %utf8, i64 noundef %3)
  switch i64 %call, label %sw.epilog [
    i64 6, label %sw.bb
    i64 5, label %sw.bb3
    i64 4, label %sw.bb7
    i64 3, label %sw.bb11
    i64 2, label %sw.bb15
    i64 1, label %sw.bb19
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load ptr, ptr %ptr.addr, align 8
  %5 = load ptr, ptr %out, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr1, ptr %out, align 8
  %6 = load i8, ptr %5, align 1
  %call2 = call i64 @id3_utf8_put(ptr noundef %4, i8 noundef signext %6)
  %7 = load i64, ptr %size, align 8
  %add = add i64 %7, %call2
  store i64 %add, ptr %size, align 8
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %while.body
  %8 = load ptr, ptr %ptr.addr, align 8
  %9 = load ptr, ptr %out, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %incdec.ptr4, ptr %out, align 8
  %10 = load i8, ptr %9, align 1
  %call5 = call i64 @id3_utf8_put(ptr noundef %8, i8 noundef signext %10)
  %11 = load i64, ptr %size, align 8
  %add6 = add i64 %11, %call5
  store i64 %add6, ptr %size, align 8
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb3, %while.body
  %12 = load ptr, ptr %ptr.addr, align 8
  %13 = load ptr, ptr %out, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %incdec.ptr8, ptr %out, align 8
  %14 = load i8, ptr %13, align 1
  %call9 = call i64 @id3_utf8_put(ptr noundef %12, i8 noundef signext %14)
  %15 = load i64, ptr %size, align 8
  %add10 = add i64 %15, %call9
  store i64 %add10, ptr %size, align 8
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb7, %while.body
  %16 = load ptr, ptr %ptr.addr, align 8
  %17 = load ptr, ptr %out, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %incdec.ptr12, ptr %out, align 8
  %18 = load i8, ptr %17, align 1
  %call13 = call i64 @id3_utf8_put(ptr noundef %16, i8 noundef signext %18)
  %19 = load i64, ptr %size, align 8
  %add14 = add i64 %19, %call13
  store i64 %add14, ptr %size, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb11, %while.body
  %20 = load ptr, ptr %ptr.addr, align 8
  %21 = load ptr, ptr %out, align 8
  %incdec.ptr16 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr16, ptr %out, align 8
  %22 = load i8, ptr %21, align 1
  %call17 = call i64 @id3_utf8_put(ptr noundef %20, i8 noundef signext %22)
  %23 = load i64, ptr %size, align 8
  %add18 = add i64 %23, %call17
  store i64 %add18, ptr %size, align 8
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb15, %while.body
  %24 = load ptr, ptr %ptr.addr, align 8
  %25 = load ptr, ptr %out, align 8
  %incdec.ptr20 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr20, ptr %out, align 8
  %26 = load i8, ptr %25, align 1
  %call21 = call i64 @id3_utf8_put(ptr noundef %24, i8 noundef signext %26)
  %27 = load i64, ptr %size, align 8
  %add22 = add i64 %27, %call21
  store i64 %add22, ptr %size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %while.body
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %28 = load i32, ptr %terminate.addr, align 4
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %29 = load ptr, ptr %ptr.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ptr.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %utf8.addr.i)
  store ptr %29, ptr %ptr.addr.i, align 8
  store i8 0, ptr %utf8.addr.i, align 1
  %tobool.i.not = icmp eq ptr %29, null
  br i1 %tobool.i.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_0.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %30 = load i8, ptr %utf8.addr.i, align 1
  %31 = load ptr, ptr %ptr.addr.i, align 8
  %32 = load ptr, ptr %31, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %incdec.ptr.i, ptr %31, align 8
  store i8 %30, ptr %32, align 1
  br label %pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_0.exit

pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_0.exit: ; preds = %if.then, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ptr.addr.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %utf8.addr.i)
  %33 = load i64, ptr %size, align 8
  %add26 = add i64 %33, 1
  store i64 %add26, ptr %size, align 8
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_0.exit, %while.end
  %34 = load i64, ptr %size, align 8
  ret i64 %34
}

; Function Attrs: nounwind ssp uwtable
define ptr @id3_utf8_deserialize(ptr noundef %ptr, i64 noundef %length) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %utf8ptr = alloca ptr, align 8
  %utf8 = alloca ptr, align 8
  %ucs4 = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %length
  store ptr %add.ptr, ptr %end, align 8
  %add = add i64 %length, 1
  %call = call ptr @malloc(i64 noundef %add) #5
  store ptr %call, ptr %utf8, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %utf8, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %storemerge = phi ptr [ %1, %if.end ], [ %incdec.ptr, %while.body ]
  store ptr %storemerge, ptr %utf8ptr, align 8
  %2 = load ptr, ptr %end, align 8
  %3 = load ptr, ptr %ptr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp1 = icmp sgt i64 %sub.ptr.sub, 0
  br i1 %cmp1, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %ptr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr.i, ptr %5, align 8
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr %utf8ptr, align 8
  store i8 %7, ptr %8, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %9 = load ptr, ptr %utf8ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i64 1
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond, %land.rhs
  %10 = load ptr, ptr %utf8ptr, align 8
  store i8 0, ptr %10, align 1
  %11 = load ptr, ptr %utf8, align 8
  %call3 = call i64 @id3_utf8_length(ptr noundef %11)
  %add4 = shl i64 %call3, 3
  %mul5 = add i64 %add4, 8
  %call6 = call ptr @malloc(i64 noundef %mul5) #5
  store ptr %call6, ptr %ucs4, align 8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.end
  %12 = load ptr, ptr %utf8, align 8
  %13 = load ptr, ptr %ucs4, align 8
  call void @id3_utf8_decode(ptr noundef %12, ptr noundef %13)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.end
  %14 = load ptr, ptr %utf8, align 8
  call void @free(ptr noundef %14) #6
  %15 = load ptr, ptr %ucs4, align 8
  br label %return

return:                                           ; preds = %entry, %if.end9
  %storemerge1 = phi ptr [ %15, %if.end9 ], [ null, %entry ]
  ret ptr %storemerge1
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

; Function Attrs: alwaysinline nounwind ssp uwtable
define i64 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_0(ptr noundef %ptr, i8 noundef signext %utf8) #3 {
entry:
  %ptr.addr = alloca ptr, align 8
  %utf8.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  store i8 %utf8, ptr %utf8.addr, align 1
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %utf8.addr, align 1
  %1 = load ptr, ptr %ptr.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %incdec.ptr, ptr %1, align 8
  store i8 %0, ptr %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 1
}

; Function Attrs: alwaysinline nounwind ssp uwtable
define signext i8 @pc_inline_source_snapshot_public_repos_mibench_consumer_mad_mad_0_14_2b_libid3tag_utf8_1(ptr noundef %ptr) #3 {
entry:
  %0 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %1 = load i8, ptr %0, align 1
  ret i8 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
