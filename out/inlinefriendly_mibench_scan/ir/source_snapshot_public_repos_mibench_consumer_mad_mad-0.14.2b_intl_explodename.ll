; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/explodename.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/intl/explodename.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_nl_explode_name(ptr noundef %name, ptr noundef %language, ptr noundef %modifier, ptr noundef %territory, ptr noundef %codeset, ptr noundef %normalized_codeset, ptr noundef %special, ptr noundef %sponsor, ptr noundef %revision) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %language.addr = alloca ptr, align 8
  %modifier.addr = alloca ptr, align 8
  %territory.addr = alloca ptr, align 8
  %codeset.addr = alloca ptr, align 8
  %normalized_codeset.addr = alloca ptr, align 8
  %special.addr = alloca ptr, align 8
  %sponsor.addr = alloca ptr, align 8
  %revision.addr = alloca ptr, align 8
  %syntax = alloca i32, align 4
  %cp = alloca ptr, align 8
  %mask = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %language, ptr %language.addr, align 8
  store ptr %modifier, ptr %modifier.addr, align 8
  store ptr %territory, ptr %territory.addr, align 8
  store ptr %codeset, ptr %codeset.addr, align 8
  store ptr %normalized_codeset, ptr %normalized_codeset.addr, align 8
  store ptr %special, ptr %special.addr, align 8
  store ptr %sponsor, ptr %sponsor.addr, align 8
  store ptr %revision, ptr %revision.addr, align 8
  %0 = load ptr, ptr %modifier.addr, align 8
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %territory.addr, align 8
  store ptr null, ptr %1, align 8
  %2 = load ptr, ptr %codeset.addr, align 8
  store ptr null, ptr %2, align 8
  %3 = load ptr, ptr %normalized_codeset.addr, align 8
  store ptr null, ptr %3, align 8
  %4 = load ptr, ptr %special.addr, align 8
  store ptr null, ptr %4, align 8
  %5 = load ptr, ptr %sponsor.addr, align 8
  store ptr null, ptr %5, align 8
  %6 = load ptr, ptr %revision.addr, align 8
  store ptr null, ptr %6, align 8
  store i32 0, ptr %mask, align 4
  store i32 0, ptr %syntax, align 4
  %7 = load ptr, ptr %name.addr, align 8
  store ptr %7, ptr %cp, align 8
  %8 = load ptr, ptr %language.addr, align 8
  store ptr %7, ptr %8, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %9 = load ptr, ptr %cp, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %11 = load ptr, ptr %cp, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %12 to i32
  %cmp4 = icmp ne i32 %conv3, 95
  br i1 %cmp4, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %cp, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %14 to i32
  %cmp9 = icmp ne i32 %conv8, 64
  br i1 %cmp9, label %land.lhs.true11, label %land.end

land.lhs.true11:                                  ; preds = %land.lhs.true6
  %15 = load ptr, ptr %cp, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp ne i32 %conv13, 43
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true11
  %17 = load ptr, ptr %cp, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp ne i32 %conv17, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11, %land.lhs.true6, %land.lhs.true, %while.cond
  %19 = phi i1 [ false, %land.lhs.true11 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load ptr, ptr %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %language.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %cp, align 8
  %cmp20 = icmp eq ptr %22, %23
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %24 = load ptr, ptr %language.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %call = call ptr @strchr(ptr noundef %25, i32 noundef 0)
  store ptr %call, ptr %cp, align 8
  br label %if.end103

if.else:                                          ; preds = %while.end
  %26 = load ptr, ptr %cp, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %27 to i32
  %cmp24 = icmp eq i32 %conv23, 95
  br i1 %cmp24, label %if.then26, label %if.end102

if.then26:                                        ; preds = %if.else
  %28 = load ptr, ptr %cp, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %28, i64 0
  store i8 0, ptr %arrayidx27, align 1
  %29 = load ptr, ptr %cp, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr28, ptr %cp, align 8
  %30 = load ptr, ptr %territory.addr, align 8
  store ptr %incdec.ptr28, ptr %30, align 8
  br label %while.cond29

while.cond29:                                     ; preds = %while.body60, %if.then26
  %31 = load ptr, ptr %cp, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %32 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %land.lhs.true34, label %land.end59

land.lhs.true34:                                  ; preds = %while.cond29
  %33 = load ptr, ptr %cp, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %34 to i32
  %cmp37 = icmp ne i32 %conv36, 46
  br i1 %cmp37, label %land.lhs.true39, label %land.end59

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %35 = load ptr, ptr %cp, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %36 to i32
  %cmp42 = icmp ne i32 %conv41, 64
  br i1 %cmp42, label %land.lhs.true44, label %land.end59

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %37 = load ptr, ptr %cp, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %38 to i32
  %cmp47 = icmp ne i32 %conv46, 43
  br i1 %cmp47, label %land.lhs.true49, label %land.end59

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %39 = load ptr, ptr %cp, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %40 to i32
  %cmp52 = icmp ne i32 %conv51, 44
  br i1 %cmp52, label %land.rhs54, label %land.end59

land.rhs54:                                       ; preds = %land.lhs.true49
  %41 = load ptr, ptr %cp, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %42 to i32
  %cmp57 = icmp ne i32 %conv56, 95
  br label %land.end59

land.end59:                                       ; preds = %land.rhs54, %land.lhs.true49, %land.lhs.true44, %land.lhs.true39, %land.lhs.true34, %while.cond29
  %43 = phi i1 [ false, %land.lhs.true49 ], [ false, %land.lhs.true44 ], [ false, %land.lhs.true39 ], [ false, %land.lhs.true34 ], [ false, %while.cond29 ], [ %cmp57, %land.rhs54 ]
  br i1 %43, label %while.body60, label %while.end62

while.body60:                                     ; preds = %land.end59
  %44 = load ptr, ptr %cp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr61, ptr %cp, align 8
  br label %while.cond29, !llvm.loop !8

while.end62:                                      ; preds = %land.end59
  %45 = load i32, ptr %mask, align 4
  %or = or i32 %45, 32
  store i32 %or, ptr %mask, align 4
  %46 = load ptr, ptr %cp, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx63, align 1
  %conv64 = sext i8 %47 to i32
  %cmp65 = icmp eq i32 %conv64, 46
  br i1 %cmp65, label %if.then67, label %if.end101

if.then67:                                        ; preds = %while.end62
  store i32 1, ptr %syntax, align 4
  %48 = load ptr, ptr %cp, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %48, i64 0
  store i8 0, ptr %arrayidx68, align 1
  %49 = load ptr, ptr %cp, align 8
  %incdec.ptr69 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr69, ptr %cp, align 8
  %50 = load ptr, ptr %codeset.addr, align 8
  store ptr %incdec.ptr69, ptr %50, align 8
  br label %while.cond70

while.cond70:                                     ; preds = %while.body81, %if.then67
  %51 = load ptr, ptr %cp, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx71, align 1
  %conv72 = sext i8 %52 to i32
  %cmp73 = icmp ne i32 %conv72, 0
  br i1 %cmp73, label %land.rhs75, label %land.end80

land.rhs75:                                       ; preds = %while.cond70
  %53 = load ptr, ptr %cp, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx76, align 1
  %conv77 = sext i8 %54 to i32
  %cmp78 = icmp ne i32 %conv77, 64
  br label %land.end80

land.end80:                                       ; preds = %land.rhs75, %while.cond70
  %55 = phi i1 [ false, %while.cond70 ], [ %cmp78, %land.rhs75 ]
  br i1 %55, label %while.body81, label %while.end83

while.body81:                                     ; preds = %land.end80
  %56 = load ptr, ptr %cp, align 8
  %incdec.ptr82 = getelementptr inbounds i8, ptr %56, i32 1
  store ptr %incdec.ptr82, ptr %cp, align 8
  br label %while.cond70, !llvm.loop !9

while.end83:                                      ; preds = %land.end80
  %57 = load i32, ptr %mask, align 4
  %or84 = or i32 %57, 16
  store i32 %or84, ptr %mask, align 4
  %58 = load ptr, ptr %codeset.addr, align 8
  %59 = load ptr, ptr %58, align 8
  %60 = load ptr, ptr %cp, align 8
  %cmp85 = icmp ne ptr %59, %60
  br i1 %cmp85, label %land.lhs.true87, label %if.end100

land.lhs.true87:                                  ; preds = %while.end83
  %61 = load ptr, ptr %codeset.addr, align 8
  %62 = load ptr, ptr %61, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %63 to i32
  %cmp90 = icmp ne i32 %conv89, 0
  br i1 %cmp90, label %if.then92, label %if.end100

if.then92:                                        ; preds = %land.lhs.true87
  %64 = load ptr, ptr %codeset.addr, align 8
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %cp, align 8
  %67 = load ptr, ptr %codeset.addr, align 8
  %68 = load ptr, ptr %67, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %66 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %68 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call93 = call ptr @_nl_normalize_codeset(ptr noundef %65, i64 noundef %sub.ptr.sub)
  %69 = load ptr, ptr %normalized_codeset.addr, align 8
  store ptr %call93, ptr %69, align 8
  %70 = load ptr, ptr %codeset.addr, align 8
  %71 = load ptr, ptr %70, align 8
  %72 = load ptr, ptr %normalized_codeset.addr, align 8
  %73 = load ptr, ptr %72, align 8
  %call94 = call i32 @strcmp(ptr noundef %71, ptr noundef %73)
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.then92
  %74 = load ptr, ptr %normalized_codeset.addr, align 8
  %75 = load ptr, ptr %74, align 8
  call void @free(ptr noundef %75)
  br label %if.end

if.else98:                                        ; preds = %if.then92
  %76 = load i32, ptr %mask, align 4
  %or99 = or i32 %76, 8
  store i32 %or99, ptr %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else98, %if.then97
  br label %if.end100

if.end100:                                        ; preds = %if.end, %land.lhs.true87, %while.end83
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %while.end62
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.else
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then
  %77 = load ptr, ptr %cp, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx104, align 1
  %conv105 = sext i8 %78 to i32
  %cmp106 = icmp eq i32 %conv105, 64
  br i1 %cmp106, label %if.then115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end103
  %79 = load i32, ptr %syntax, align 4
  %cmp108 = icmp ne i32 %79, 1
  br i1 %cmp108, label %land.lhs.true110, label %if.end150

land.lhs.true110:                                 ; preds = %lor.lhs.false
  %80 = load ptr, ptr %cp, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %80, i64 0
  %81 = load i8, ptr %arrayidx111, align 1
  %conv112 = sext i8 %81 to i32
  %cmp113 = icmp eq i32 %conv112, 43
  br i1 %cmp113, label %if.then115, label %if.end150

if.then115:                                       ; preds = %land.lhs.true110, %if.end103
  %82 = load ptr, ptr %cp, align 8
  %arrayidx116 = getelementptr inbounds i8, ptr %82, i64 0
  %83 = load i8, ptr %arrayidx116, align 1
  %conv117 = sext i8 %83 to i32
  %cmp118 = icmp eq i32 %conv117, 64
  %84 = zext i1 %cmp118 to i64
  %cond = select i1 %cmp118, i32 1, i32 2
  store i32 %cond, ptr %syntax, align 4
  %85 = load ptr, ptr %cp, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %85, i64 0
  store i8 0, ptr %arrayidx120, align 1
  %86 = load ptr, ptr %cp, align 8
  %incdec.ptr121 = getelementptr inbounds i8, ptr %86, i32 1
  store ptr %incdec.ptr121, ptr %cp, align 8
  %87 = load ptr, ptr %modifier.addr, align 8
  store ptr %incdec.ptr121, ptr %87, align 8
  br label %while.cond122

while.cond122:                                    ; preds = %while.body146, %if.then115
  %88 = load i32, ptr %syntax, align 4
  %cmp123 = icmp eq i32 %88, 2
  br i1 %cmp123, label %land.lhs.true125, label %land.end145

land.lhs.true125:                                 ; preds = %while.cond122
  %89 = load ptr, ptr %cp, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %89, i64 0
  %90 = load i8, ptr %arrayidx126, align 1
  %conv127 = sext i8 %90 to i32
  %cmp128 = icmp ne i32 %conv127, 0
  br i1 %cmp128, label %land.lhs.true130, label %land.end145

land.lhs.true130:                                 ; preds = %land.lhs.true125
  %91 = load ptr, ptr %cp, align 8
  %arrayidx131 = getelementptr inbounds i8, ptr %91, i64 0
  %92 = load i8, ptr %arrayidx131, align 1
  %conv132 = sext i8 %92 to i32
  %cmp133 = icmp ne i32 %conv132, 43
  br i1 %cmp133, label %land.lhs.true135, label %land.end145

land.lhs.true135:                                 ; preds = %land.lhs.true130
  %93 = load ptr, ptr %cp, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %93, i64 0
  %94 = load i8, ptr %arrayidx136, align 1
  %conv137 = sext i8 %94 to i32
  %cmp138 = icmp ne i32 %conv137, 44
  br i1 %cmp138, label %land.rhs140, label %land.end145

land.rhs140:                                      ; preds = %land.lhs.true135
  %95 = load ptr, ptr %cp, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %95, i64 0
  %96 = load i8, ptr %arrayidx141, align 1
  %conv142 = sext i8 %96 to i32
  %cmp143 = icmp ne i32 %conv142, 95
  br label %land.end145

land.end145:                                      ; preds = %land.rhs140, %land.lhs.true135, %land.lhs.true130, %land.lhs.true125, %while.cond122
  %97 = phi i1 [ false, %land.lhs.true135 ], [ false, %land.lhs.true130 ], [ false, %land.lhs.true125 ], [ false, %while.cond122 ], [ %cmp143, %land.rhs140 ]
  br i1 %97, label %while.body146, label %while.end148

while.body146:                                    ; preds = %land.end145
  %98 = load ptr, ptr %cp, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %98, i32 1
  store ptr %incdec.ptr147, ptr %cp, align 8
  br label %while.cond122, !llvm.loop !10

while.end148:                                     ; preds = %land.end145
  %99 = load i32, ptr %mask, align 4
  %or149 = or i32 %99, 192
  store i32 %or149, ptr %mask, align 4
  br label %if.end150

if.end150:                                        ; preds = %while.end148, %land.lhs.true110, %lor.lhs.false
  %100 = load i32, ptr %syntax, align 4
  %cmp151 = icmp ne i32 %100, 1
  br i1 %cmp151, label %land.lhs.true153, label %if.end229

land.lhs.true153:                                 ; preds = %if.end150
  %101 = load ptr, ptr %cp, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx154, align 1
  %conv155 = sext i8 %102 to i32
  %cmp156 = icmp eq i32 %conv155, 43
  br i1 %cmp156, label %if.then168, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %land.lhs.true153
  %103 = load ptr, ptr %cp, align 8
  %arrayidx159 = getelementptr inbounds i8, ptr %103, i64 0
  %104 = load i8, ptr %arrayidx159, align 1
  %conv160 = sext i8 %104 to i32
  %cmp161 = icmp eq i32 %conv160, 44
  br i1 %cmp161, label %if.then168, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false158
  %105 = load ptr, ptr %cp, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %105, i64 0
  %106 = load i8, ptr %arrayidx164, align 1
  %conv165 = sext i8 %106 to i32
  %cmp166 = icmp eq i32 %conv165, 95
  br i1 %cmp166, label %if.then168, label %if.end229

if.then168:                                       ; preds = %lor.lhs.false163, %lor.lhs.false158, %land.lhs.true153
  store i32 2, ptr %syntax, align 4
  %107 = load ptr, ptr %cp, align 8
  %arrayidx169 = getelementptr inbounds i8, ptr %107, i64 0
  %108 = load i8, ptr %arrayidx169, align 1
  %conv170 = sext i8 %108 to i32
  %cmp171 = icmp eq i32 %conv170, 43
  br i1 %cmp171, label %if.then173, label %if.end196

if.then173:                                       ; preds = %if.then168
  %109 = load ptr, ptr %cp, align 8
  %arrayidx174 = getelementptr inbounds i8, ptr %109, i64 0
  store i8 0, ptr %arrayidx174, align 1
  %110 = load ptr, ptr %cp, align 8
  %incdec.ptr175 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr175, ptr %cp, align 8
  %111 = load ptr, ptr %special.addr, align 8
  store ptr %incdec.ptr175, ptr %111, align 8
  br label %while.cond176

while.cond176:                                    ; preds = %while.body192, %if.then173
  %112 = load ptr, ptr %cp, align 8
  %arrayidx177 = getelementptr inbounds i8, ptr %112, i64 0
  %113 = load i8, ptr %arrayidx177, align 1
  %conv178 = sext i8 %113 to i32
  %cmp179 = icmp ne i32 %conv178, 0
  br i1 %cmp179, label %land.lhs.true181, label %land.end191

land.lhs.true181:                                 ; preds = %while.cond176
  %114 = load ptr, ptr %cp, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %114, i64 0
  %115 = load i8, ptr %arrayidx182, align 1
  %conv183 = sext i8 %115 to i32
  %cmp184 = icmp ne i32 %conv183, 44
  br i1 %cmp184, label %land.rhs186, label %land.end191

land.rhs186:                                      ; preds = %land.lhs.true181
  %116 = load ptr, ptr %cp, align 8
  %arrayidx187 = getelementptr inbounds i8, ptr %116, i64 0
  %117 = load i8, ptr %arrayidx187, align 1
  %conv188 = sext i8 %117 to i32
  %cmp189 = icmp ne i32 %conv188, 95
  br label %land.end191

land.end191:                                      ; preds = %land.rhs186, %land.lhs.true181, %while.cond176
  %118 = phi i1 [ false, %land.lhs.true181 ], [ false, %while.cond176 ], [ %cmp189, %land.rhs186 ]
  br i1 %118, label %while.body192, label %while.end194

while.body192:                                    ; preds = %land.end191
  %119 = load ptr, ptr %cp, align 8
  %incdec.ptr193 = getelementptr inbounds i8, ptr %119, i32 1
  store ptr %incdec.ptr193, ptr %cp, align 8
  br label %while.cond176, !llvm.loop !11

while.end194:                                     ; preds = %land.end191
  %120 = load i32, ptr %mask, align 4
  %or195 = or i32 %120, 4
  store i32 %or195, ptr %mask, align 4
  br label %if.end196

if.end196:                                        ; preds = %while.end194, %if.then168
  %121 = load ptr, ptr %cp, align 8
  %arrayidx197 = getelementptr inbounds i8, ptr %121, i64 0
  %122 = load i8, ptr %arrayidx197, align 1
  %conv198 = sext i8 %122 to i32
  %cmp199 = icmp eq i32 %conv198, 44
  br i1 %cmp199, label %if.then201, label %if.end219

if.then201:                                       ; preds = %if.end196
  %123 = load ptr, ptr %cp, align 8
  %arrayidx202 = getelementptr inbounds i8, ptr %123, i64 0
  store i8 0, ptr %arrayidx202, align 1
  %124 = load ptr, ptr %cp, align 8
  %incdec.ptr203 = getelementptr inbounds i8, ptr %124, i32 1
  store ptr %incdec.ptr203, ptr %cp, align 8
  %125 = load ptr, ptr %sponsor.addr, align 8
  store ptr %incdec.ptr203, ptr %125, align 8
  br label %while.cond204

while.cond204:                                    ; preds = %while.body215, %if.then201
  %126 = load ptr, ptr %cp, align 8
  %arrayidx205 = getelementptr inbounds i8, ptr %126, i64 0
  %127 = load i8, ptr %arrayidx205, align 1
  %conv206 = sext i8 %127 to i32
  %cmp207 = icmp ne i32 %conv206, 0
  br i1 %cmp207, label %land.rhs209, label %land.end214

land.rhs209:                                      ; preds = %while.cond204
  %128 = load ptr, ptr %cp, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %128, i64 0
  %129 = load i8, ptr %arrayidx210, align 1
  %conv211 = sext i8 %129 to i32
  %cmp212 = icmp ne i32 %conv211, 95
  br label %land.end214

land.end214:                                      ; preds = %land.rhs209, %while.cond204
  %130 = phi i1 [ false, %while.cond204 ], [ %cmp212, %land.rhs209 ]
  br i1 %130, label %while.body215, label %while.end217

while.body215:                                    ; preds = %land.end214
  %131 = load ptr, ptr %cp, align 8
  %incdec.ptr216 = getelementptr inbounds i8, ptr %131, i32 1
  store ptr %incdec.ptr216, ptr %cp, align 8
  br label %while.cond204, !llvm.loop !12

while.end217:                                     ; preds = %land.end214
  %132 = load i32, ptr %mask, align 4
  %or218 = or i32 %132, 2
  store i32 %or218, ptr %mask, align 4
  br label %if.end219

if.end219:                                        ; preds = %while.end217, %if.end196
  %133 = load ptr, ptr %cp, align 8
  %arrayidx220 = getelementptr inbounds i8, ptr %133, i64 0
  %134 = load i8, ptr %arrayidx220, align 1
  %conv221 = sext i8 %134 to i32
  %cmp222 = icmp eq i32 %conv221, 95
  br i1 %cmp222, label %if.then224, label %if.end228

if.then224:                                       ; preds = %if.end219
  %135 = load ptr, ptr %cp, align 8
  %arrayidx225 = getelementptr inbounds i8, ptr %135, i64 0
  store i8 0, ptr %arrayidx225, align 1
  %136 = load ptr, ptr %cp, align 8
  %incdec.ptr226 = getelementptr inbounds i8, ptr %136, i32 1
  store ptr %incdec.ptr226, ptr %cp, align 8
  %137 = load ptr, ptr %revision.addr, align 8
  store ptr %incdec.ptr226, ptr %137, align 8
  %138 = load i32, ptr %mask, align 4
  %or227 = or i32 %138, 1
  store i32 %or227, ptr %mask, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then224, %if.end219
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %lor.lhs.false163, %if.end150
  %139 = load i32, ptr %syntax, align 4
  %cmp230 = icmp eq i32 %139, 1
  br i1 %cmp230, label %if.then232, label %if.end262

if.then232:                                       ; preds = %if.end229
  %140 = load ptr, ptr %territory.addr, align 8
  %141 = load ptr, ptr %140, align 8
  %cmp233 = icmp ne ptr %141, null
  br i1 %cmp233, label %land.lhs.true235, label %if.end241

land.lhs.true235:                                 ; preds = %if.then232
  %142 = load ptr, ptr %territory.addr, align 8
  %143 = load ptr, ptr %142, align 8
  %arrayidx236 = getelementptr inbounds i8, ptr %143, i64 0
  %144 = load i8, ptr %arrayidx236, align 1
  %conv237 = sext i8 %144 to i32
  %cmp238 = icmp eq i32 %conv237, 0
  br i1 %cmp238, label %if.then240, label %if.end241

if.then240:                                       ; preds = %land.lhs.true235
  %145 = load i32, ptr %mask, align 4
  %and = and i32 %145, -33
  store i32 %and, ptr %mask, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then240, %land.lhs.true235, %if.then232
  %146 = load ptr, ptr %codeset.addr, align 8
  %147 = load ptr, ptr %146, align 8
  %cmp242 = icmp ne ptr %147, null
  br i1 %cmp242, label %land.lhs.true244, label %if.end251

land.lhs.true244:                                 ; preds = %if.end241
  %148 = load ptr, ptr %codeset.addr, align 8
  %149 = load ptr, ptr %148, align 8
  %arrayidx245 = getelementptr inbounds i8, ptr %149, i64 0
  %150 = load i8, ptr %arrayidx245, align 1
  %conv246 = sext i8 %150 to i32
  %cmp247 = icmp eq i32 %conv246, 0
  br i1 %cmp247, label %if.then249, label %if.end251

if.then249:                                       ; preds = %land.lhs.true244
  %151 = load i32, ptr %mask, align 4
  %and250 = and i32 %151, -17
  store i32 %and250, ptr %mask, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.then249, %land.lhs.true244, %if.end241
  %152 = load ptr, ptr %modifier.addr, align 8
  %153 = load ptr, ptr %152, align 8
  %cmp252 = icmp ne ptr %153, null
  br i1 %cmp252, label %land.lhs.true254, label %if.end261

land.lhs.true254:                                 ; preds = %if.end251
  %154 = load ptr, ptr %modifier.addr, align 8
  %155 = load ptr, ptr %154, align 8
  %arrayidx255 = getelementptr inbounds i8, ptr %155, i64 0
  %156 = load i8, ptr %arrayidx255, align 1
  %conv256 = sext i8 %156 to i32
  %cmp257 = icmp eq i32 %conv256, 0
  br i1 %cmp257, label %if.then259, label %if.end261

if.then259:                                       ; preds = %land.lhs.true254
  %157 = load i32, ptr %mask, align 4
  %and260 = and i32 %157, -129
  store i32 %and260, ptr %mask, align 4
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %land.lhs.true254, %if.end251
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.end229
  %158 = load i32, ptr %mask, align 4
  ret i32 %158
}

declare ptr @strchr(ptr noundef, i32 noundef) #1

declare ptr @_nl_normalize_codeset(ptr noundef, i64 noundef) #1

declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare void @free(ptr noundef) #1

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
