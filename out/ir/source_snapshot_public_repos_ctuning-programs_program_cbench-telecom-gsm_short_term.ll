; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/short_term.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/short_term.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_Short_Term_Analysis_Filter(ptr noundef %S, ptr noundef %LARc, ptr noundef %s) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %LARc.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %LARpp_j = alloca ptr, align 8
  %LARpp_j_1 = alloca ptr, align 8
  %LARp = alloca [8 x i16], align 2
  store ptr %S, ptr %S.addr, align 8
  store ptr %LARc, ptr %LARc.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %LARpp = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %S.addr, align 8
  %j = getelementptr inbounds %struct.gsm_state, ptr %1, i32 0, i32 6
  %2 = load i16, ptr %j, align 4
  %idxprom = sext i16 %2 to i64
  %arrayidx = getelementptr inbounds [2 x [8 x i16]], ptr %LARpp, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i16], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %LARpp_j, align 8
  %3 = load ptr, ptr %S.addr, align 8
  %LARpp1 = getelementptr inbounds %struct.gsm_state, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %S.addr, align 8
  %j2 = getelementptr inbounds %struct.gsm_state, ptr %4, i32 0, i32 6
  %5 = load i16, ptr %j2, align 4
  %conv = sext i16 %5 to i32
  %xor = xor i32 %conv, 1
  %conv3 = trunc i32 %xor to i16
  store i16 %conv3, ptr %j2, align 4
  %idxprom4 = sext i16 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [2 x [8 x i16]], ptr %LARpp1, i64 0, i64 %idxprom4
  %arraydecay6 = getelementptr inbounds [8 x i16], ptr %arrayidx5, i64 0, i64 0
  store ptr %arraydecay6, ptr %LARpp_j_1, align 8
  %6 = load ptr, ptr %LARc.addr, align 8
  %7 = load ptr, ptr %LARpp_j, align 8
  call void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %LARpp_j_1, align 8
  %9 = load ptr, ptr %LARpp_j, align 8
  %arraydecay7 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_0_12(ptr noundef %8, ptr noundef %9, ptr noundef %arraydecay7)
  %arraydecay8 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay8)
  %10 = load ptr, ptr %S.addr, align 8
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %11 = load ptr, ptr %s.addr, align 8
  call void @Short_term_analysis_filtering(ptr noundef %10, ptr noundef %arraydecay9, i32 noundef 13, ptr noundef %11)
  %12 = load ptr, ptr %LARpp_j_1, align 8
  %13 = load ptr, ptr %LARpp_j, align 8
  %arraydecay10 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_13_26(ptr noundef %12, ptr noundef %13, ptr noundef %arraydecay10)
  %arraydecay11 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay11)
  %14 = load ptr, ptr %S.addr, align 8
  %arraydecay12 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %15 = load ptr, ptr %s.addr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %15, i64 13
  call void @Short_term_analysis_filtering(ptr noundef %14, ptr noundef %arraydecay12, i32 noundef 14, ptr noundef %add.ptr)
  %16 = load ptr, ptr %LARpp_j_1, align 8
  %17 = load ptr, ptr %LARpp_j, align 8
  %arraydecay13 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_27_39(ptr noundef %16, ptr noundef %17, ptr noundef %arraydecay13)
  %arraydecay14 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay14)
  %18 = load ptr, ptr %S.addr, align 8
  %arraydecay15 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %19 = load ptr, ptr %s.addr, align 8
  %add.ptr16 = getelementptr inbounds i16, ptr %19, i64 27
  call void @Short_term_analysis_filtering(ptr noundef %18, ptr noundef %arraydecay15, i32 noundef 13, ptr noundef %add.ptr16)
  %20 = load ptr, ptr %LARpp_j, align 8
  %arraydecay17 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_40_159(ptr noundef %20, ptr noundef %arraydecay17)
  %arraydecay18 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay18)
  %21 = load ptr, ptr %S.addr, align 8
  %arraydecay19 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %22 = load ptr, ptr %s.addr, align 8
  %add.ptr20 = getelementptr inbounds i16, ptr %22, i64 40
  call void @Short_term_analysis_filtering(ptr noundef %21, ptr noundef %arraydecay19, i32 noundef 120, ptr noundef %add.ptr20)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef %LARc, ptr noundef %LARpp) #0 {
entry:
  %LARc.addr = alloca ptr, align 8
  %LARpp.addr = alloca ptr, align 8
  %temp1 = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store ptr %LARc, ptr %LARc.addr, align 8
  store ptr %LARpp, ptr %LARpp.addr, align 8
  %0 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %LARc.addr, align 8
  %1 = load i16, ptr %0, align 2
  %conv = sext i16 %1 to i64
  %add = add nsw i64 %conv, -32
  store i64 %add, ptr %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp = icmp ugt i64 %sub, 65535
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %ltmp, align 8
  %cmp2 = icmp sgt i64 %2, 0
  %3 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 32767, i32 -32768
  %conv4 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i64 [ %conv4, %cond.true ], [ %4, %cond.false ]
  %shl = shl i64 %cond5, 10
  %conv6 = trunc i64 %shl to i16
  store i16 %conv6, ptr %temp1, align 2
  %5 = load i16, ptr %temp1, align 2
  %conv7 = sext i16 %5 to i64
  %sub8 = sub nsw i64 %conv7, 0
  store i64 %sub8, ptr %ltmp, align 8
  %cmp9 = icmp sge i64 %sub8, 32767
  br i1 %cmp9, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  br label %cond.end19

cond.false12:                                     ; preds = %cond.end
  %6 = load i64, ptr %ltmp, align 8
  %cmp13 = icmp sle i64 %6, -32768
  br i1 %cmp13, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.false12
  br label %cond.end17

cond.false16:                                     ; preds = %cond.false12
  %7 = load i64, ptr %ltmp, align 8
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ -32768, %cond.true15 ], [ %7, %cond.false16 ]
  br label %cond.end19

cond.end19:                                       ; preds = %cond.end17, %cond.true11
  %cond20 = phi i64 [ 32767, %cond.true11 ], [ %cond18, %cond.end17 ]
  %conv21 = trunc i64 %cond20 to i16
  store i16 %conv21, ptr %temp1, align 2
  %8 = load i16, ptr %temp1, align 2
  %conv22 = sext i16 %8 to i64
  %mul = mul nsw i64 13107, %conv22
  %add23 = add nsw i64 %mul, 16384
  %call = call i32 @SASR(i64 noundef %add23, i32 noundef 15)
  %conv24 = trunc i32 %call to i16
  store i16 %conv24, ptr %temp1, align 2
  %9 = load i16, ptr %temp1, align 2
  %conv25 = sext i16 %9 to i64
  %10 = load i16, ptr %temp1, align 2
  %conv26 = sext i16 %10 to i64
  %add27 = add nsw i64 %conv25, %conv26
  store i64 %add27, ptr %ltmp, align 8
  %sub28 = sub nsw i64 %add27, -32768
  %cmp29 = icmp ugt i64 %sub28, 65535
  br i1 %cmp29, label %cond.true31, label %cond.false36

cond.true31:                                      ; preds = %cond.end19
  %11 = load i64, ptr %ltmp, align 8
  %cmp32 = icmp sgt i64 %11, 0
  %12 = zext i1 %cmp32 to i64
  %cond34 = select i1 %cmp32, i32 32767, i32 -32768
  %conv35 = sext i32 %cond34 to i64
  br label %cond.end37

cond.false36:                                     ; preds = %cond.end19
  %13 = load i64, ptr %ltmp, align 8
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true31
  %cond38 = phi i64 [ %conv35, %cond.true31 ], [ %13, %cond.false36 ]
  %conv39 = trunc i64 %cond38 to i16
  %14 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr40 = getelementptr inbounds i16, ptr %14, i32 1
  store ptr %incdec.ptr40, ptr %LARpp.addr, align 8
  store i16 %conv39, ptr %14, align 2
  %15 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr41 = getelementptr inbounds i16, ptr %15, i32 1
  store ptr %incdec.ptr41, ptr %LARc.addr, align 8
  %16 = load i16, ptr %15, align 2
  %conv42 = sext i16 %16 to i64
  %add43 = add nsw i64 %conv42, -32
  store i64 %add43, ptr %ltmp, align 8
  %sub44 = sub nsw i64 %add43, -32768
  %cmp45 = icmp ugt i64 %sub44, 65535
  br i1 %cmp45, label %cond.true47, label %cond.false52

cond.true47:                                      ; preds = %cond.end37
  %17 = load i64, ptr %ltmp, align 8
  %cmp48 = icmp sgt i64 %17, 0
  %18 = zext i1 %cmp48 to i64
  %cond50 = select i1 %cmp48, i32 32767, i32 -32768
  %conv51 = sext i32 %cond50 to i64
  br label %cond.end53

cond.false52:                                     ; preds = %cond.end37
  %19 = load i64, ptr %ltmp, align 8
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true47
  %cond54 = phi i64 [ %conv51, %cond.true47 ], [ %19, %cond.false52 ]
  %shl55 = shl i64 %cond54, 10
  %conv56 = trunc i64 %shl55 to i16
  store i16 %conv56, ptr %temp1, align 2
  %20 = load i16, ptr %temp1, align 2
  %conv57 = sext i16 %20 to i64
  %sub58 = sub nsw i64 %conv57, 0
  store i64 %sub58, ptr %ltmp, align 8
  %cmp59 = icmp sge i64 %sub58, 32767
  br i1 %cmp59, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.end53
  br label %cond.end69

cond.false62:                                     ; preds = %cond.end53
  %21 = load i64, ptr %ltmp, align 8
  %cmp63 = icmp sle i64 %21, -32768
  br i1 %cmp63, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %cond.false62
  br label %cond.end67

cond.false66:                                     ; preds = %cond.false62
  %22 = load i64, ptr %ltmp, align 8
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true65
  %cond68 = phi i64 [ -32768, %cond.true65 ], [ %22, %cond.false66 ]
  br label %cond.end69

cond.end69:                                       ; preds = %cond.end67, %cond.true61
  %cond70 = phi i64 [ 32767, %cond.true61 ], [ %cond68, %cond.end67 ]
  %conv71 = trunc i64 %cond70 to i16
  store i16 %conv71, ptr %temp1, align 2
  %23 = load i16, ptr %temp1, align 2
  %conv72 = sext i16 %23 to i64
  %mul73 = mul nsw i64 13107, %conv72
  %add74 = add nsw i64 %mul73, 16384
  %call75 = call i32 @SASR(i64 noundef %add74, i32 noundef 15)
  %conv76 = trunc i32 %call75 to i16
  store i16 %conv76, ptr %temp1, align 2
  %24 = load i16, ptr %temp1, align 2
  %conv77 = sext i16 %24 to i64
  %25 = load i16, ptr %temp1, align 2
  %conv78 = sext i16 %25 to i64
  %add79 = add nsw i64 %conv77, %conv78
  store i64 %add79, ptr %ltmp, align 8
  %sub80 = sub nsw i64 %add79, -32768
  %cmp81 = icmp ugt i64 %sub80, 65535
  br i1 %cmp81, label %cond.true83, label %cond.false88

cond.true83:                                      ; preds = %cond.end69
  %26 = load i64, ptr %ltmp, align 8
  %cmp84 = icmp sgt i64 %26, 0
  %27 = zext i1 %cmp84 to i64
  %cond86 = select i1 %cmp84, i32 32767, i32 -32768
  %conv87 = sext i32 %cond86 to i64
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end69
  %28 = load i64, ptr %ltmp, align 8
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %cond.true83
  %cond90 = phi i64 [ %conv87, %cond.true83 ], [ %28, %cond.false88 ]
  %conv91 = trunc i64 %cond90 to i16
  %29 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr92 = getelementptr inbounds i16, ptr %29, i32 1
  store ptr %incdec.ptr92, ptr %LARpp.addr, align 8
  store i16 %conv91, ptr %29, align 2
  %30 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i16, ptr %30, i32 1
  store ptr %incdec.ptr93, ptr %LARc.addr, align 8
  %31 = load i16, ptr %30, align 2
  %conv94 = sext i16 %31 to i64
  %add95 = add nsw i64 %conv94, -16
  store i64 %add95, ptr %ltmp, align 8
  %sub96 = sub nsw i64 %add95, -32768
  %cmp97 = icmp ugt i64 %sub96, 65535
  br i1 %cmp97, label %cond.true99, label %cond.false104

cond.true99:                                      ; preds = %cond.end89
  %32 = load i64, ptr %ltmp, align 8
  %cmp100 = icmp sgt i64 %32, 0
  %33 = zext i1 %cmp100 to i64
  %cond102 = select i1 %cmp100, i32 32767, i32 -32768
  %conv103 = sext i32 %cond102 to i64
  br label %cond.end105

cond.false104:                                    ; preds = %cond.end89
  %34 = load i64, ptr %ltmp, align 8
  br label %cond.end105

cond.end105:                                      ; preds = %cond.false104, %cond.true99
  %cond106 = phi i64 [ %conv103, %cond.true99 ], [ %34, %cond.false104 ]
  %shl107 = shl i64 %cond106, 10
  %conv108 = trunc i64 %shl107 to i16
  store i16 %conv108, ptr %temp1, align 2
  %35 = load i16, ptr %temp1, align 2
  %conv109 = sext i16 %35 to i64
  %sub110 = sub nsw i64 %conv109, 4096
  store i64 %sub110, ptr %ltmp, align 8
  %cmp111 = icmp sge i64 %sub110, 32767
  br i1 %cmp111, label %cond.true113, label %cond.false114

cond.true113:                                     ; preds = %cond.end105
  br label %cond.end121

cond.false114:                                    ; preds = %cond.end105
  %36 = load i64, ptr %ltmp, align 8
  %cmp115 = icmp sle i64 %36, -32768
  br i1 %cmp115, label %cond.true117, label %cond.false118

cond.true117:                                     ; preds = %cond.false114
  br label %cond.end119

cond.false118:                                    ; preds = %cond.false114
  %37 = load i64, ptr %ltmp, align 8
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.true117
  %cond120 = phi i64 [ -32768, %cond.true117 ], [ %37, %cond.false118 ]
  br label %cond.end121

cond.end121:                                      ; preds = %cond.end119, %cond.true113
  %cond122 = phi i64 [ 32767, %cond.true113 ], [ %cond120, %cond.end119 ]
  %conv123 = trunc i64 %cond122 to i16
  store i16 %conv123, ptr %temp1, align 2
  %38 = load i16, ptr %temp1, align 2
  %conv124 = sext i16 %38 to i64
  %mul125 = mul nsw i64 13107, %conv124
  %add126 = add nsw i64 %mul125, 16384
  %call127 = call i32 @SASR(i64 noundef %add126, i32 noundef 15)
  %conv128 = trunc i32 %call127 to i16
  store i16 %conv128, ptr %temp1, align 2
  %39 = load i16, ptr %temp1, align 2
  %conv129 = sext i16 %39 to i64
  %40 = load i16, ptr %temp1, align 2
  %conv130 = sext i16 %40 to i64
  %add131 = add nsw i64 %conv129, %conv130
  store i64 %add131, ptr %ltmp, align 8
  %sub132 = sub nsw i64 %add131, -32768
  %cmp133 = icmp ugt i64 %sub132, 65535
  br i1 %cmp133, label %cond.true135, label %cond.false140

cond.true135:                                     ; preds = %cond.end121
  %41 = load i64, ptr %ltmp, align 8
  %cmp136 = icmp sgt i64 %41, 0
  %42 = zext i1 %cmp136 to i64
  %cond138 = select i1 %cmp136, i32 32767, i32 -32768
  %conv139 = sext i32 %cond138 to i64
  br label %cond.end141

cond.false140:                                    ; preds = %cond.end121
  %43 = load i64, ptr %ltmp, align 8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true135
  %cond142 = phi i64 [ %conv139, %cond.true135 ], [ %43, %cond.false140 ]
  %conv143 = trunc i64 %cond142 to i16
  %44 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr144 = getelementptr inbounds i16, ptr %44, i32 1
  store ptr %incdec.ptr144, ptr %LARpp.addr, align 8
  store i16 %conv143, ptr %44, align 2
  %45 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr145 = getelementptr inbounds i16, ptr %45, i32 1
  store ptr %incdec.ptr145, ptr %LARc.addr, align 8
  %46 = load i16, ptr %45, align 2
  %conv146 = sext i16 %46 to i64
  %add147 = add nsw i64 %conv146, -16
  store i64 %add147, ptr %ltmp, align 8
  %sub148 = sub nsw i64 %add147, -32768
  %cmp149 = icmp ugt i64 %sub148, 65535
  br i1 %cmp149, label %cond.true151, label %cond.false156

cond.true151:                                     ; preds = %cond.end141
  %47 = load i64, ptr %ltmp, align 8
  %cmp152 = icmp sgt i64 %47, 0
  %48 = zext i1 %cmp152 to i64
  %cond154 = select i1 %cmp152, i32 32767, i32 -32768
  %conv155 = sext i32 %cond154 to i64
  br label %cond.end157

cond.false156:                                    ; preds = %cond.end141
  %49 = load i64, ptr %ltmp, align 8
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false156, %cond.true151
  %cond158 = phi i64 [ %conv155, %cond.true151 ], [ %49, %cond.false156 ]
  %shl159 = shl i64 %cond158, 10
  %conv160 = trunc i64 %shl159 to i16
  store i16 %conv160, ptr %temp1, align 2
  %50 = load i16, ptr %temp1, align 2
  %conv161 = sext i16 %50 to i64
  %sub162 = sub nsw i64 %conv161, -5120
  store i64 %sub162, ptr %ltmp, align 8
  %cmp163 = icmp sge i64 %sub162, 32767
  br i1 %cmp163, label %cond.true165, label %cond.false166

cond.true165:                                     ; preds = %cond.end157
  br label %cond.end173

cond.false166:                                    ; preds = %cond.end157
  %51 = load i64, ptr %ltmp, align 8
  %cmp167 = icmp sle i64 %51, -32768
  br i1 %cmp167, label %cond.true169, label %cond.false170

cond.true169:                                     ; preds = %cond.false166
  br label %cond.end171

cond.false170:                                    ; preds = %cond.false166
  %52 = load i64, ptr %ltmp, align 8
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false170, %cond.true169
  %cond172 = phi i64 [ -32768, %cond.true169 ], [ %52, %cond.false170 ]
  br label %cond.end173

cond.end173:                                      ; preds = %cond.end171, %cond.true165
  %cond174 = phi i64 [ 32767, %cond.true165 ], [ %cond172, %cond.end171 ]
  %conv175 = trunc i64 %cond174 to i16
  store i16 %conv175, ptr %temp1, align 2
  %53 = load i16, ptr %temp1, align 2
  %conv176 = sext i16 %53 to i64
  %mul177 = mul nsw i64 13107, %conv176
  %add178 = add nsw i64 %mul177, 16384
  %call179 = call i32 @SASR(i64 noundef %add178, i32 noundef 15)
  %conv180 = trunc i32 %call179 to i16
  store i16 %conv180, ptr %temp1, align 2
  %54 = load i16, ptr %temp1, align 2
  %conv181 = sext i16 %54 to i64
  %55 = load i16, ptr %temp1, align 2
  %conv182 = sext i16 %55 to i64
  %add183 = add nsw i64 %conv181, %conv182
  store i64 %add183, ptr %ltmp, align 8
  %sub184 = sub nsw i64 %add183, -32768
  %cmp185 = icmp ugt i64 %sub184, 65535
  br i1 %cmp185, label %cond.true187, label %cond.false192

cond.true187:                                     ; preds = %cond.end173
  %56 = load i64, ptr %ltmp, align 8
  %cmp188 = icmp sgt i64 %56, 0
  %57 = zext i1 %cmp188 to i64
  %cond190 = select i1 %cmp188, i32 32767, i32 -32768
  %conv191 = sext i32 %cond190 to i64
  br label %cond.end193

cond.false192:                                    ; preds = %cond.end173
  %58 = load i64, ptr %ltmp, align 8
  br label %cond.end193

cond.end193:                                      ; preds = %cond.false192, %cond.true187
  %cond194 = phi i64 [ %conv191, %cond.true187 ], [ %58, %cond.false192 ]
  %conv195 = trunc i64 %cond194 to i16
  %59 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr196 = getelementptr inbounds i16, ptr %59, i32 1
  store ptr %incdec.ptr196, ptr %LARpp.addr, align 8
  store i16 %conv195, ptr %59, align 2
  %60 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr197 = getelementptr inbounds i16, ptr %60, i32 1
  store ptr %incdec.ptr197, ptr %LARc.addr, align 8
  %61 = load i16, ptr %60, align 2
  %conv198 = sext i16 %61 to i64
  %add199 = add nsw i64 %conv198, -8
  store i64 %add199, ptr %ltmp, align 8
  %sub200 = sub nsw i64 %add199, -32768
  %cmp201 = icmp ugt i64 %sub200, 65535
  br i1 %cmp201, label %cond.true203, label %cond.false208

cond.true203:                                     ; preds = %cond.end193
  %62 = load i64, ptr %ltmp, align 8
  %cmp204 = icmp sgt i64 %62, 0
  %63 = zext i1 %cmp204 to i64
  %cond206 = select i1 %cmp204, i32 32767, i32 -32768
  %conv207 = sext i32 %cond206 to i64
  br label %cond.end209

cond.false208:                                    ; preds = %cond.end193
  %64 = load i64, ptr %ltmp, align 8
  br label %cond.end209

cond.end209:                                      ; preds = %cond.false208, %cond.true203
  %cond210 = phi i64 [ %conv207, %cond.true203 ], [ %64, %cond.false208 ]
  %shl211 = shl i64 %cond210, 10
  %conv212 = trunc i64 %shl211 to i16
  store i16 %conv212, ptr %temp1, align 2
  %65 = load i16, ptr %temp1, align 2
  %conv213 = sext i16 %65 to i64
  %sub214 = sub nsw i64 %conv213, 188
  store i64 %sub214, ptr %ltmp, align 8
  %cmp215 = icmp sge i64 %sub214, 32767
  br i1 %cmp215, label %cond.true217, label %cond.false218

cond.true217:                                     ; preds = %cond.end209
  br label %cond.end225

cond.false218:                                    ; preds = %cond.end209
  %66 = load i64, ptr %ltmp, align 8
  %cmp219 = icmp sle i64 %66, -32768
  br i1 %cmp219, label %cond.true221, label %cond.false222

cond.true221:                                     ; preds = %cond.false218
  br label %cond.end223

cond.false222:                                    ; preds = %cond.false218
  %67 = load i64, ptr %ltmp, align 8
  br label %cond.end223

cond.end223:                                      ; preds = %cond.false222, %cond.true221
  %cond224 = phi i64 [ -32768, %cond.true221 ], [ %67, %cond.false222 ]
  br label %cond.end225

cond.end225:                                      ; preds = %cond.end223, %cond.true217
  %cond226 = phi i64 [ 32767, %cond.true217 ], [ %cond224, %cond.end223 ]
  %conv227 = trunc i64 %cond226 to i16
  store i16 %conv227, ptr %temp1, align 2
  %68 = load i16, ptr %temp1, align 2
  %conv228 = sext i16 %68 to i64
  %mul229 = mul nsw i64 19223, %conv228
  %add230 = add nsw i64 %mul229, 16384
  %call231 = call i32 @SASR(i64 noundef %add230, i32 noundef 15)
  %conv232 = trunc i32 %call231 to i16
  store i16 %conv232, ptr %temp1, align 2
  %69 = load i16, ptr %temp1, align 2
  %conv233 = sext i16 %69 to i64
  %70 = load i16, ptr %temp1, align 2
  %conv234 = sext i16 %70 to i64
  %add235 = add nsw i64 %conv233, %conv234
  store i64 %add235, ptr %ltmp, align 8
  %sub236 = sub nsw i64 %add235, -32768
  %cmp237 = icmp ugt i64 %sub236, 65535
  br i1 %cmp237, label %cond.true239, label %cond.false244

cond.true239:                                     ; preds = %cond.end225
  %71 = load i64, ptr %ltmp, align 8
  %cmp240 = icmp sgt i64 %71, 0
  %72 = zext i1 %cmp240 to i64
  %cond242 = select i1 %cmp240, i32 32767, i32 -32768
  %conv243 = sext i32 %cond242 to i64
  br label %cond.end245

cond.false244:                                    ; preds = %cond.end225
  %73 = load i64, ptr %ltmp, align 8
  br label %cond.end245

cond.end245:                                      ; preds = %cond.false244, %cond.true239
  %cond246 = phi i64 [ %conv243, %cond.true239 ], [ %73, %cond.false244 ]
  %conv247 = trunc i64 %cond246 to i16
  %74 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr248 = getelementptr inbounds i16, ptr %74, i32 1
  store ptr %incdec.ptr248, ptr %LARpp.addr, align 8
  store i16 %conv247, ptr %74, align 2
  %75 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr249 = getelementptr inbounds i16, ptr %75, i32 1
  store ptr %incdec.ptr249, ptr %LARc.addr, align 8
  %76 = load i16, ptr %75, align 2
  %conv250 = sext i16 %76 to i64
  %add251 = add nsw i64 %conv250, -8
  store i64 %add251, ptr %ltmp, align 8
  %sub252 = sub nsw i64 %add251, -32768
  %cmp253 = icmp ugt i64 %sub252, 65535
  br i1 %cmp253, label %cond.true255, label %cond.false260

cond.true255:                                     ; preds = %cond.end245
  %77 = load i64, ptr %ltmp, align 8
  %cmp256 = icmp sgt i64 %77, 0
  %78 = zext i1 %cmp256 to i64
  %cond258 = select i1 %cmp256, i32 32767, i32 -32768
  %conv259 = sext i32 %cond258 to i64
  br label %cond.end261

cond.false260:                                    ; preds = %cond.end245
  %79 = load i64, ptr %ltmp, align 8
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false260, %cond.true255
  %cond262 = phi i64 [ %conv259, %cond.true255 ], [ %79, %cond.false260 ]
  %shl263 = shl i64 %cond262, 10
  %conv264 = trunc i64 %shl263 to i16
  store i16 %conv264, ptr %temp1, align 2
  %80 = load i16, ptr %temp1, align 2
  %conv265 = sext i16 %80 to i64
  %sub266 = sub nsw i64 %conv265, -3584
  store i64 %sub266, ptr %ltmp, align 8
  %cmp267 = icmp sge i64 %sub266, 32767
  br i1 %cmp267, label %cond.true269, label %cond.false270

cond.true269:                                     ; preds = %cond.end261
  br label %cond.end277

cond.false270:                                    ; preds = %cond.end261
  %81 = load i64, ptr %ltmp, align 8
  %cmp271 = icmp sle i64 %81, -32768
  br i1 %cmp271, label %cond.true273, label %cond.false274

cond.true273:                                     ; preds = %cond.false270
  br label %cond.end275

cond.false274:                                    ; preds = %cond.false270
  %82 = load i64, ptr %ltmp, align 8
  br label %cond.end275

cond.end275:                                      ; preds = %cond.false274, %cond.true273
  %cond276 = phi i64 [ -32768, %cond.true273 ], [ %82, %cond.false274 ]
  br label %cond.end277

cond.end277:                                      ; preds = %cond.end275, %cond.true269
  %cond278 = phi i64 [ 32767, %cond.true269 ], [ %cond276, %cond.end275 ]
  %conv279 = trunc i64 %cond278 to i16
  store i16 %conv279, ptr %temp1, align 2
  %83 = load i16, ptr %temp1, align 2
  %conv280 = sext i16 %83 to i64
  %mul281 = mul nsw i64 17476, %conv280
  %add282 = add nsw i64 %mul281, 16384
  %call283 = call i32 @SASR(i64 noundef %add282, i32 noundef 15)
  %conv284 = trunc i32 %call283 to i16
  store i16 %conv284, ptr %temp1, align 2
  %84 = load i16, ptr %temp1, align 2
  %conv285 = sext i16 %84 to i64
  %85 = load i16, ptr %temp1, align 2
  %conv286 = sext i16 %85 to i64
  %add287 = add nsw i64 %conv285, %conv286
  store i64 %add287, ptr %ltmp, align 8
  %sub288 = sub nsw i64 %add287, -32768
  %cmp289 = icmp ugt i64 %sub288, 65535
  br i1 %cmp289, label %cond.true291, label %cond.false296

cond.true291:                                     ; preds = %cond.end277
  %86 = load i64, ptr %ltmp, align 8
  %cmp292 = icmp sgt i64 %86, 0
  %87 = zext i1 %cmp292 to i64
  %cond294 = select i1 %cmp292, i32 32767, i32 -32768
  %conv295 = sext i32 %cond294 to i64
  br label %cond.end297

cond.false296:                                    ; preds = %cond.end277
  %88 = load i64, ptr %ltmp, align 8
  br label %cond.end297

cond.end297:                                      ; preds = %cond.false296, %cond.true291
  %cond298 = phi i64 [ %conv295, %cond.true291 ], [ %88, %cond.false296 ]
  %conv299 = trunc i64 %cond298 to i16
  %89 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr300 = getelementptr inbounds i16, ptr %89, i32 1
  store ptr %incdec.ptr300, ptr %LARpp.addr, align 8
  store i16 %conv299, ptr %89, align 2
  %90 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr301 = getelementptr inbounds i16, ptr %90, i32 1
  store ptr %incdec.ptr301, ptr %LARc.addr, align 8
  %91 = load i16, ptr %90, align 2
  %conv302 = sext i16 %91 to i64
  %add303 = add nsw i64 %conv302, -4
  store i64 %add303, ptr %ltmp, align 8
  %sub304 = sub nsw i64 %add303, -32768
  %cmp305 = icmp ugt i64 %sub304, 65535
  br i1 %cmp305, label %cond.true307, label %cond.false312

cond.true307:                                     ; preds = %cond.end297
  %92 = load i64, ptr %ltmp, align 8
  %cmp308 = icmp sgt i64 %92, 0
  %93 = zext i1 %cmp308 to i64
  %cond310 = select i1 %cmp308, i32 32767, i32 -32768
  %conv311 = sext i32 %cond310 to i64
  br label %cond.end313

cond.false312:                                    ; preds = %cond.end297
  %94 = load i64, ptr %ltmp, align 8
  br label %cond.end313

cond.end313:                                      ; preds = %cond.false312, %cond.true307
  %cond314 = phi i64 [ %conv311, %cond.true307 ], [ %94, %cond.false312 ]
  %shl315 = shl i64 %cond314, 10
  %conv316 = trunc i64 %shl315 to i16
  store i16 %conv316, ptr %temp1, align 2
  %95 = load i16, ptr %temp1, align 2
  %conv317 = sext i16 %95 to i64
  %sub318 = sub nsw i64 %conv317, -682
  store i64 %sub318, ptr %ltmp, align 8
  %cmp319 = icmp sge i64 %sub318, 32767
  br i1 %cmp319, label %cond.true321, label %cond.false322

cond.true321:                                     ; preds = %cond.end313
  br label %cond.end329

cond.false322:                                    ; preds = %cond.end313
  %96 = load i64, ptr %ltmp, align 8
  %cmp323 = icmp sle i64 %96, -32768
  br i1 %cmp323, label %cond.true325, label %cond.false326

cond.true325:                                     ; preds = %cond.false322
  br label %cond.end327

cond.false326:                                    ; preds = %cond.false322
  %97 = load i64, ptr %ltmp, align 8
  br label %cond.end327

cond.end327:                                      ; preds = %cond.false326, %cond.true325
  %cond328 = phi i64 [ -32768, %cond.true325 ], [ %97, %cond.false326 ]
  br label %cond.end329

cond.end329:                                      ; preds = %cond.end327, %cond.true321
  %cond330 = phi i64 [ 32767, %cond.true321 ], [ %cond328, %cond.end327 ]
  %conv331 = trunc i64 %cond330 to i16
  store i16 %conv331, ptr %temp1, align 2
  %98 = load i16, ptr %temp1, align 2
  %conv332 = sext i16 %98 to i64
  %mul333 = mul nsw i64 31454, %conv332
  %add334 = add nsw i64 %mul333, 16384
  %call335 = call i32 @SASR(i64 noundef %add334, i32 noundef 15)
  %conv336 = trunc i32 %call335 to i16
  store i16 %conv336, ptr %temp1, align 2
  %99 = load i16, ptr %temp1, align 2
  %conv337 = sext i16 %99 to i64
  %100 = load i16, ptr %temp1, align 2
  %conv338 = sext i16 %100 to i64
  %add339 = add nsw i64 %conv337, %conv338
  store i64 %add339, ptr %ltmp, align 8
  %sub340 = sub nsw i64 %add339, -32768
  %cmp341 = icmp ugt i64 %sub340, 65535
  br i1 %cmp341, label %cond.true343, label %cond.false348

cond.true343:                                     ; preds = %cond.end329
  %101 = load i64, ptr %ltmp, align 8
  %cmp344 = icmp sgt i64 %101, 0
  %102 = zext i1 %cmp344 to i64
  %cond346 = select i1 %cmp344, i32 32767, i32 -32768
  %conv347 = sext i32 %cond346 to i64
  br label %cond.end349

cond.false348:                                    ; preds = %cond.end329
  %103 = load i64, ptr %ltmp, align 8
  br label %cond.end349

cond.end349:                                      ; preds = %cond.false348, %cond.true343
  %cond350 = phi i64 [ %conv347, %cond.true343 ], [ %103, %cond.false348 ]
  %conv351 = trunc i64 %cond350 to i16
  %104 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr352 = getelementptr inbounds i16, ptr %104, i32 1
  store ptr %incdec.ptr352, ptr %LARpp.addr, align 8
  store i16 %conv351, ptr %104, align 2
  %105 = load ptr, ptr %LARc.addr, align 8
  %incdec.ptr353 = getelementptr inbounds i16, ptr %105, i32 1
  store ptr %incdec.ptr353, ptr %LARc.addr, align 8
  %106 = load i16, ptr %105, align 2
  %conv354 = sext i16 %106 to i64
  %add355 = add nsw i64 %conv354, -4
  store i64 %add355, ptr %ltmp, align 8
  %sub356 = sub nsw i64 %add355, -32768
  %cmp357 = icmp ugt i64 %sub356, 65535
  br i1 %cmp357, label %cond.true359, label %cond.false364

cond.true359:                                     ; preds = %cond.end349
  %107 = load i64, ptr %ltmp, align 8
  %cmp360 = icmp sgt i64 %107, 0
  %108 = zext i1 %cmp360 to i64
  %cond362 = select i1 %cmp360, i32 32767, i32 -32768
  %conv363 = sext i32 %cond362 to i64
  br label %cond.end365

cond.false364:                                    ; preds = %cond.end349
  %109 = load i64, ptr %ltmp, align 8
  br label %cond.end365

cond.end365:                                      ; preds = %cond.false364, %cond.true359
  %cond366 = phi i64 [ %conv363, %cond.true359 ], [ %109, %cond.false364 ]
  %shl367 = shl i64 %cond366, 10
  %conv368 = trunc i64 %shl367 to i16
  store i16 %conv368, ptr %temp1, align 2
  %110 = load i16, ptr %temp1, align 2
  %conv369 = sext i16 %110 to i64
  %sub370 = sub nsw i64 %conv369, -2288
  store i64 %sub370, ptr %ltmp, align 8
  %cmp371 = icmp sge i64 %sub370, 32767
  br i1 %cmp371, label %cond.true373, label %cond.false374

cond.true373:                                     ; preds = %cond.end365
  br label %cond.end381

cond.false374:                                    ; preds = %cond.end365
  %111 = load i64, ptr %ltmp, align 8
  %cmp375 = icmp sle i64 %111, -32768
  br i1 %cmp375, label %cond.true377, label %cond.false378

cond.true377:                                     ; preds = %cond.false374
  br label %cond.end379

cond.false378:                                    ; preds = %cond.false374
  %112 = load i64, ptr %ltmp, align 8
  br label %cond.end379

cond.end379:                                      ; preds = %cond.false378, %cond.true377
  %cond380 = phi i64 [ -32768, %cond.true377 ], [ %112, %cond.false378 ]
  br label %cond.end381

cond.end381:                                      ; preds = %cond.end379, %cond.true373
  %cond382 = phi i64 [ 32767, %cond.true373 ], [ %cond380, %cond.end379 ]
  %conv383 = trunc i64 %cond382 to i16
  store i16 %conv383, ptr %temp1, align 2
  %113 = load i16, ptr %temp1, align 2
  %conv384 = sext i16 %113 to i64
  %mul385 = mul nsw i64 29708, %conv384
  %add386 = add nsw i64 %mul385, 16384
  %call387 = call i32 @SASR(i64 noundef %add386, i32 noundef 15)
  %conv388 = trunc i32 %call387 to i16
  store i16 %conv388, ptr %temp1, align 2
  %114 = load i16, ptr %temp1, align 2
  %conv389 = sext i16 %114 to i64
  %115 = load i16, ptr %temp1, align 2
  %conv390 = sext i16 %115 to i64
  %add391 = add nsw i64 %conv389, %conv390
  store i64 %add391, ptr %ltmp, align 8
  %sub392 = sub nsw i64 %add391, -32768
  %cmp393 = icmp ugt i64 %sub392, 65535
  br i1 %cmp393, label %cond.true395, label %cond.false400

cond.true395:                                     ; preds = %cond.end381
  %116 = load i64, ptr %ltmp, align 8
  %cmp396 = icmp sgt i64 %116, 0
  %117 = zext i1 %cmp396 to i64
  %cond398 = select i1 %cmp396, i32 32767, i32 -32768
  %conv399 = sext i32 %cond398 to i64
  br label %cond.end401

cond.false400:                                    ; preds = %cond.end381
  %118 = load i64, ptr %ltmp, align 8
  br label %cond.end401

cond.end401:                                      ; preds = %cond.false400, %cond.true395
  %cond402 = phi i64 [ %conv399, %cond.true395 ], [ %118, %cond.false400 ]
  %conv403 = trunc i64 %cond402 to i16
  %119 = load ptr, ptr %LARpp.addr, align 8
  %incdec.ptr404 = getelementptr inbounds i16, ptr %119, i32 1
  store ptr %incdec.ptr404, ptr %LARpp.addr, align 8
  store i16 %conv403, ptr %119, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Coefficients_0_12(ptr noundef %LARpp_j_1, ptr noundef %LARpp_j, ptr noundef %LARp) #0 {
entry:
  %LARpp_j_1.addr = alloca ptr, align 8
  %LARpp_j.addr = alloca ptr, align 8
  %LARp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store ptr %LARpp_j_1, ptr %LARpp_j_1.addr, align 8
  store ptr %LARpp_j, ptr %LARpp_j.addr, align 8
  store ptr %LARp, ptr %LARp.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %LARpp_j_1.addr, align 8
  %2 = load i16, ptr %1, align 2
  %conv = sext i16 %2 to i32
  %call = call i32 @SASR(i32 noundef %conv, i32 noundef 2)
  %conv1 = sext i32 %call to i64
  %3 = load ptr, ptr %LARpp_j.addr, align 8
  %4 = load i16, ptr %3, align 2
  %conv2 = sext i16 %4 to i32
  %call3 = call i32 @SASR(i32 noundef %conv2, i32 noundef 2)
  %conv4 = sext i32 %call3 to i64
  %add = add nsw i64 %conv1, %conv4
  store i64 %add, ptr %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp5 = icmp ugt i64 %sub, 65535
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, ptr %ltmp, align 8
  %cmp7 = icmp sgt i64 %5, 0
  %6 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %7, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  %8 = load ptr, ptr %LARp.addr, align 8
  store i16 %conv11, ptr %8, align 2
  %9 = load ptr, ptr %LARp.addr, align 8
  %10 = load i16, ptr %9, align 2
  %conv12 = sext i16 %10 to i64
  %11 = load ptr, ptr %LARpp_j_1.addr, align 8
  %12 = load i16, ptr %11, align 2
  %conv13 = sext i16 %12 to i32
  %call14 = call i32 @SASR(i32 noundef %conv13, i32 noundef 1)
  %conv15 = sext i32 %call14 to i64
  %add16 = add nsw i64 %conv12, %conv15
  store i64 %add16, ptr %ltmp, align 8
  %sub17 = sub nsw i64 %add16, -32768
  %cmp18 = icmp ugt i64 %sub17, 65535
  br i1 %cmp18, label %cond.true20, label %cond.false25

cond.true20:                                      ; preds = %cond.end
  %13 = load i64, ptr %ltmp, align 8
  %cmp21 = icmp sgt i64 %13, 0
  %14 = zext i1 %cmp21 to i64
  %cond23 = select i1 %cmp21, i32 32767, i32 -32768
  %conv24 = sext i32 %cond23 to i64
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end
  %15 = load i64, ptr %ltmp, align 8
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true20
  %cond27 = phi i64 [ %conv24, %cond.true20 ], [ %15, %cond.false25 ]
  %conv28 = trunc i64 %cond27 to i16
  %16 = load ptr, ptr %LARp.addr, align 8
  store i16 %conv28, ptr %16, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end26
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  %18 = load ptr, ptr %LARp.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %LARp.addr, align 8
  %19 = load ptr, ptr %LARpp_j_1.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i16, ptr %19, i32 1
  store ptr %incdec.ptr29, ptr %LARpp_j_1.addr, align 8
  %20 = load ptr, ptr %LARpp_j.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i16, ptr %20, i32 1
  store ptr %incdec.ptr30, ptr %LARpp_j.addr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @LARp_to_rp(ptr noundef %LARp) #0 {
entry:
  %LARp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store ptr %LARp, ptr %LARp.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %LARp.addr, align 8
  %2 = load i16, ptr %1, align 2
  %conv = sext i16 %2 to i32
  %cmp1 = icmp slt i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %LARp.addr, align 8
  %4 = load i16, ptr %3, align 2
  %conv3 = sext i16 %4 to i32
  %cmp4 = icmp eq i32 %conv3, -32768
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load ptr, ptr %LARp.addr, align 8
  %6 = load i16, ptr %5, align 2
  %conv6 = sext i16 %6 to i32
  %sub = sub nsw i32 0, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32767, %cond.true ], [ %sub, %cond.false ]
  %conv7 = trunc i32 %cond to i16
  store i16 %conv7, ptr %temp, align 2
  %7 = load i16, ptr %temp, align 2
  %conv8 = sext i16 %7 to i32
  %cmp9 = icmp slt i32 %conv8, 11059
  br i1 %cmp9, label %cond.true11, label %cond.false14

cond.true11:                                      ; preds = %cond.end
  %8 = load i16, ptr %temp, align 2
  %conv12 = sext i16 %8 to i32
  %shl = shl i32 %conv12, 1
  %conv13 = sext i32 %shl to i64
  br label %cond.end38

cond.false14:                                     ; preds = %cond.end
  %9 = load i16, ptr %temp, align 2
  %conv15 = sext i16 %9 to i32
  %cmp16 = icmp slt i32 %conv15, 20070
  br i1 %cmp16, label %cond.true18, label %cond.false21

cond.true18:                                      ; preds = %cond.false14
  %10 = load i16, ptr %temp, align 2
  %conv19 = sext i16 %10 to i32
  %add = add nsw i32 %conv19, 11059
  %conv20 = sext i32 %add to i64
  br label %cond.end36

cond.false21:                                     ; preds = %cond.false14
  %11 = load i16, ptr %temp, align 2
  %conv22 = sext i16 %11 to i32
  %shr = ashr i32 %conv22, 2
  %conv23 = sext i32 %shr to i64
  %add24 = add nsw i64 %conv23, 26112
  store i64 %add24, ptr %ltmp, align 8
  %sub25 = sub nsw i64 %add24, -32768
  %cmp26 = icmp ugt i64 %sub25, 65535
  br i1 %cmp26, label %cond.true28, label %cond.false33

cond.true28:                                      ; preds = %cond.false21
  %12 = load i64, ptr %ltmp, align 8
  %cmp29 = icmp sgt i64 %12, 0
  %13 = zext i1 %cmp29 to i64
  %cond31 = select i1 %cmp29, i32 32767, i32 -32768
  %conv32 = sext i32 %cond31 to i64
  br label %cond.end34

cond.false33:                                     ; preds = %cond.false21
  %14 = load i64, ptr %ltmp, align 8
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.true28
  %cond35 = phi i64 [ %conv32, %cond.true28 ], [ %14, %cond.false33 ]
  br label %cond.end36

cond.end36:                                       ; preds = %cond.end34, %cond.true18
  %cond37 = phi i64 [ %conv20, %cond.true18 ], [ %cond35, %cond.end34 ]
  br label %cond.end38

cond.end38:                                       ; preds = %cond.end36, %cond.true11
  %cond39 = phi i64 [ %conv13, %cond.true11 ], [ %cond37, %cond.end36 ]
  %sub40 = sub nsw i64 0, %cond39
  %conv41 = trunc i64 %sub40 to i16
  %15 = load ptr, ptr %LARp.addr, align 8
  store i16 %conv41, ptr %15, align 2
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %LARp.addr, align 8
  %17 = load i16, ptr %16, align 2
  store i16 %17, ptr %temp, align 2
  %18 = load i16, ptr %temp, align 2
  %conv42 = sext i16 %18 to i32
  %cmp43 = icmp slt i32 %conv42, 11059
  br i1 %cmp43, label %cond.true45, label %cond.false49

cond.true45:                                      ; preds = %if.else
  %19 = load i16, ptr %temp, align 2
  %conv46 = sext i16 %19 to i32
  %shl47 = shl i32 %conv46, 1
  %conv48 = sext i32 %shl47 to i64
  br label %cond.end75

cond.false49:                                     ; preds = %if.else
  %20 = load i16, ptr %temp, align 2
  %conv50 = sext i16 %20 to i32
  %cmp51 = icmp slt i32 %conv50, 20070
  br i1 %cmp51, label %cond.true53, label %cond.false57

cond.true53:                                      ; preds = %cond.false49
  %21 = load i16, ptr %temp, align 2
  %conv54 = sext i16 %21 to i32
  %add55 = add nsw i32 %conv54, 11059
  %conv56 = sext i32 %add55 to i64
  br label %cond.end73

cond.false57:                                     ; preds = %cond.false49
  %22 = load i16, ptr %temp, align 2
  %conv58 = sext i16 %22 to i32
  %shr59 = ashr i32 %conv58, 2
  %conv60 = sext i32 %shr59 to i64
  %add61 = add nsw i64 %conv60, 26112
  store i64 %add61, ptr %ltmp, align 8
  %sub62 = sub nsw i64 %add61, -32768
  %cmp63 = icmp ugt i64 %sub62, 65535
  br i1 %cmp63, label %cond.true65, label %cond.false70

cond.true65:                                      ; preds = %cond.false57
  %23 = load i64, ptr %ltmp, align 8
  %cmp66 = icmp sgt i64 %23, 0
  %24 = zext i1 %cmp66 to i64
  %cond68 = select i1 %cmp66, i32 32767, i32 -32768
  %conv69 = sext i32 %cond68 to i64
  br label %cond.end71

cond.false70:                                     ; preds = %cond.false57
  %25 = load i64, ptr %ltmp, align 8
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false70, %cond.true65
  %cond72 = phi i64 [ %conv69, %cond.true65 ], [ %25, %cond.false70 ]
  br label %cond.end73

cond.end73:                                       ; preds = %cond.end71, %cond.true53
  %cond74 = phi i64 [ %conv56, %cond.true53 ], [ %cond72, %cond.end71 ]
  br label %cond.end75

cond.end75:                                       ; preds = %cond.end73, %cond.true45
  %cond76 = phi i64 [ %conv48, %cond.true45 ], [ %cond74, %cond.end73 ]
  %conv77 = trunc i64 %cond76 to i16
  %26 = load ptr, ptr %LARp.addr, align 8
  store i16 %conv77, ptr %26, align 2
  br label %if.end

if.end:                                           ; preds = %cond.end75, %cond.end38
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  %28 = load ptr, ptr %LARp.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %LARp.addr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Short_term_analysis_filtering(ptr noundef %S, ptr noundef %rp, i32 noundef %k_n, ptr noundef %s) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %rp.addr = alloca ptr, align 8
  %k_n.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %u = alloca ptr, align 8
  %i = alloca i32, align 4
  %di = alloca i16, align 2
  %zzz = alloca i16, align 2
  %ui = alloca i16, align 2
  %sav = alloca i16, align 2
  %rpi = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store ptr %S, ptr %S.addr, align 8
  store ptr %rp, ptr %rp.addr, align 8
  store i32 %k_n, ptr %k_n.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %u1 = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i16], ptr %u1, i64 0, i64 0
  store ptr %arraydecay, ptr %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %1 = load i32, ptr %k_n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %k_n.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i16, ptr %2, align 2
  store i16 %3, ptr %sav, align 2
  store i16 %3, ptr %di, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 8
  br i1 %cmp, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %u, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %idxprom
  %7 = load i16, ptr %arrayidx, align 2
  store i16 %7, ptr %ui, align 2
  %8 = load ptr, ptr %rp.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %8, i64 %idxprom4
  %10 = load i16, ptr %arrayidx5, align 2
  store i16 %10, ptr %rpi, align 2
  %11 = load i16, ptr %sav, align 2
  %12 = load ptr, ptr %u, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %12, i64 %idxprom6
  store i16 %11, ptr %arrayidx7, align 2
  %14 = load i16, ptr %rpi, align 2
  %conv = sext i16 %14 to i64
  %15 = load i16, ptr %di, align 2
  %conv8 = sext i16 %15 to i64
  %mul = mul nsw i64 %conv, %conv8
  %add = add nsw i64 %mul, 16384
  %call = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv9 = trunc i32 %call to i16
  store i16 %conv9, ptr %zzz, align 2
  %16 = load i16, ptr %ui, align 2
  %conv10 = sext i16 %16 to i64
  %17 = load i16, ptr %zzz, align 2
  %conv11 = sext i16 %17 to i64
  %add12 = add nsw i64 %conv10, %conv11
  store i64 %add12, ptr %ltmp, align 8
  %sub = sub nsw i64 %add12, -32768
  %cmp13 = icmp ugt i64 %sub, 65535
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %18 = load i64, ptr %ltmp, align 8
  %cmp15 = icmp sgt i64 %18, 0
  %19 = zext i1 %cmp15 to i64
  %cond = select i1 %cmp15, i32 32767, i32 -32768
  %conv17 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %20 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i64 [ %conv17, %cond.true ], [ %20, %cond.false ]
  %conv19 = trunc i64 %cond18 to i16
  store i16 %conv19, ptr %sav, align 2
  %21 = load i16, ptr %rpi, align 2
  %conv20 = sext i16 %21 to i64
  %22 = load i16, ptr %ui, align 2
  %conv21 = sext i16 %22 to i64
  %mul22 = mul nsw i64 %conv20, %conv21
  %add23 = add nsw i64 %mul22, 16384
  %call24 = call i32 @SASR(i64 noundef %add23, i32 noundef 15)
  %conv25 = trunc i32 %call24 to i16
  store i16 %conv25, ptr %zzz, align 2
  %23 = load i16, ptr %di, align 2
  %conv26 = sext i16 %23 to i64
  %24 = load i16, ptr %zzz, align 2
  %conv27 = sext i16 %24 to i64
  %add28 = add nsw i64 %conv26, %conv27
  store i64 %add28, ptr %ltmp, align 8
  %sub29 = sub nsw i64 %add28, -32768
  %cmp30 = icmp ugt i64 %sub29, 65535
  br i1 %cmp30, label %cond.true32, label %cond.false37

cond.true32:                                      ; preds = %cond.end
  %25 = load i64, ptr %ltmp, align 8
  %cmp33 = icmp sgt i64 %25, 0
  %26 = zext i1 %cmp33 to i64
  %cond35 = select i1 %cmp33, i32 32767, i32 -32768
  %conv36 = sext i32 %cond35 to i64
  br label %cond.end38

cond.false37:                                     ; preds = %cond.end
  %27 = load i64, ptr %ltmp, align 8
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true32
  %cond39 = phi i64 [ %conv36, %cond.true32 ], [ %27, %cond.false37 ]
  %conv40 = trunc i64 %cond39 to i16
  store i16 %conv40, ptr %di, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end38
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %29 = load i16, ptr %di, align 2
  %30 = load ptr, ptr %s.addr, align 8
  store i16 %29, ptr %30, align 2
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %31 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %31, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %for.cond, !llvm.loop !10

for.end42:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Coefficients_13_26(ptr noundef %LARpp_j_1, ptr noundef %LARpp_j, ptr noundef %LARp) #0 {
entry:
  %LARpp_j_1.addr = alloca ptr, align 8
  %LARpp_j.addr = alloca ptr, align 8
  %LARp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store ptr %LARpp_j_1, ptr %LARpp_j_1.addr, align 8
  store ptr %LARpp_j, ptr %LARpp_j.addr, align 8
  store ptr %LARp, ptr %LARp.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %LARpp_j_1.addr, align 8
  %2 = load i16, ptr %1, align 2
  %conv = sext i16 %2 to i32
  %call = call i32 @SASR(i32 noundef %conv, i32 noundef 1)
  %conv1 = sext i32 %call to i64
  %3 = load ptr, ptr %LARpp_j.addr, align 8
  %4 = load i16, ptr %3, align 2
  %conv2 = sext i16 %4 to i32
  %call3 = call i32 @SASR(i32 noundef %conv2, i32 noundef 1)
  %conv4 = sext i32 %call3 to i64
  %add = add nsw i64 %conv1, %conv4
  store i64 %add, ptr %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp5 = icmp ugt i64 %sub, 65535
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, ptr %ltmp, align 8
  %cmp7 = icmp sgt i64 %5, 0
  %6 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %7, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  %8 = load ptr, ptr %LARp.addr, align 8
  store i16 %conv11, ptr %8, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  %10 = load ptr, ptr %LARpp_j_1.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %LARpp_j_1.addr, align 8
  %11 = load ptr, ptr %LARpp_j.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i16, ptr %11, i32 1
  store ptr %incdec.ptr12, ptr %LARpp_j.addr, align 8
  %12 = load ptr, ptr %LARp.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i16, ptr %12, i32 1
  store ptr %incdec.ptr13, ptr %LARp.addr, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Coefficients_27_39(ptr noundef %LARpp_j_1, ptr noundef %LARpp_j, ptr noundef %LARp) #0 {
entry:
  %LARpp_j_1.addr = alloca ptr, align 8
  %LARpp_j.addr = alloca ptr, align 8
  %LARp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ltmp = alloca i64, align 8
  store ptr %LARpp_j_1, ptr %LARpp_j_1.addr, align 8
  store ptr %LARpp_j, ptr %LARpp_j.addr, align 8
  store ptr %LARp, ptr %LARp.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %LARpp_j_1.addr, align 8
  %2 = load i16, ptr %1, align 2
  %conv = sext i16 %2 to i32
  %call = call i32 @SASR(i32 noundef %conv, i32 noundef 2)
  %conv1 = sext i32 %call to i64
  %3 = load ptr, ptr %LARpp_j.addr, align 8
  %4 = load i16, ptr %3, align 2
  %conv2 = sext i16 %4 to i32
  %call3 = call i32 @SASR(i32 noundef %conv2, i32 noundef 2)
  %conv4 = sext i32 %call3 to i64
  %add = add nsw i64 %conv1, %conv4
  store i64 %add, ptr %ltmp, align 8
  %sub = sub nsw i64 %add, -32768
  %cmp5 = icmp ugt i64 %sub, 65535
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, ptr %ltmp, align 8
  %cmp7 = icmp sgt i64 %5, 0
  %6 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 32767, i32 -32768
  %conv9 = sext i32 %cond to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load i64, ptr %ltmp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i64 [ %conv9, %cond.true ], [ %7, %cond.false ]
  %conv11 = trunc i64 %cond10 to i16
  %8 = load ptr, ptr %LARp.addr, align 8
  store i16 %conv11, ptr %8, align 2
  %9 = load ptr, ptr %LARp.addr, align 8
  %10 = load i16, ptr %9, align 2
  %conv12 = sext i16 %10 to i64
  %11 = load ptr, ptr %LARpp_j.addr, align 8
  %12 = load i16, ptr %11, align 2
  %conv13 = sext i16 %12 to i32
  %call14 = call i32 @SASR(i32 noundef %conv13, i32 noundef 1)
  %conv15 = sext i32 %call14 to i64
  %add16 = add nsw i64 %conv12, %conv15
  store i64 %add16, ptr %ltmp, align 8
  %sub17 = sub nsw i64 %add16, -32768
  %cmp18 = icmp ugt i64 %sub17, 65535
  br i1 %cmp18, label %cond.true20, label %cond.false25

cond.true20:                                      ; preds = %cond.end
  %13 = load i64, ptr %ltmp, align 8
  %cmp21 = icmp sgt i64 %13, 0
  %14 = zext i1 %cmp21 to i64
  %cond23 = select i1 %cmp21, i32 32767, i32 -32768
  %conv24 = sext i32 %cond23 to i64
  br label %cond.end26

cond.false25:                                     ; preds = %cond.end
  %15 = load i64, ptr %ltmp, align 8
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true20
  %cond27 = phi i64 [ %conv24, %cond.true20 ], [ %15, %cond.false25 ]
  %conv28 = trunc i64 %cond27 to i16
  %16 = load ptr, ptr %LARp.addr, align 8
  store i16 %conv28, ptr %16, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end26
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  %18 = load ptr, ptr %LARpp_j_1.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %LARpp_j_1.addr, align 8
  %19 = load ptr, ptr %LARpp_j.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i16, ptr %19, i32 1
  store ptr %incdec.ptr29, ptr %LARpp_j.addr, align 8
  %20 = load ptr, ptr %LARp.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i16, ptr %20, i32 1
  store ptr %incdec.ptr30, ptr %LARp.addr, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Coefficients_40_159(ptr noundef %LARpp_j, ptr noundef %LARp) #0 {
entry:
  %LARpp_j.addr = alloca ptr, align 8
  %LARp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %LARpp_j, ptr %LARpp_j.addr, align 8
  store ptr %LARp, ptr %LARp.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %LARpp_j.addr, align 8
  %2 = load i16, ptr %1, align 2
  %3 = load ptr, ptr %LARp.addr, align 8
  store i16 %2, ptr %3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  %5 = load ptr, ptr %LARp.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %LARp.addr, align 8
  %6 = load ptr, ptr %LARpp_j.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i16, ptr %6, i32 1
  store ptr %incdec.ptr1, ptr %LARpp_j.addr, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_Short_Term_Synthesis_Filter(ptr noundef %S, ptr noundef %LARcr, ptr noundef %wt, ptr noundef %s) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %LARcr.addr = alloca ptr, align 8
  %wt.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %LARpp_j = alloca ptr, align 8
  %LARpp_j_1 = alloca ptr, align 8
  %LARp = alloca [8 x i16], align 2
  store ptr %S, ptr %S.addr, align 8
  store ptr %LARcr, ptr %LARcr.addr, align 8
  store ptr %wt, ptr %wt.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %LARpp = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %S.addr, align 8
  %j = getelementptr inbounds %struct.gsm_state, ptr %1, i32 0, i32 6
  %2 = load i16, ptr %j, align 4
  %idxprom = sext i16 %2 to i64
  %arrayidx = getelementptr inbounds [2 x [8 x i16]], ptr %LARpp, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i16], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %LARpp_j, align 8
  %3 = load ptr, ptr %S.addr, align 8
  %LARpp1 = getelementptr inbounds %struct.gsm_state, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %S.addr, align 8
  %j2 = getelementptr inbounds %struct.gsm_state, ptr %4, i32 0, i32 6
  %5 = load i16, ptr %j2, align 4
  %conv = sext i16 %5 to i32
  %xor = xor i32 %conv, 1
  %conv3 = trunc i32 %xor to i16
  store i16 %conv3, ptr %j2, align 4
  %idxprom4 = sext i16 %conv3 to i64
  %arrayidx5 = getelementptr inbounds [2 x [8 x i16]], ptr %LARpp1, i64 0, i64 %idxprom4
  %arraydecay6 = getelementptr inbounds [8 x i16], ptr %arrayidx5, i64 0, i64 0
  store ptr %arraydecay6, ptr %LARpp_j_1, align 8
  %6 = load ptr, ptr %LARcr.addr, align 8
  %7 = load ptr, ptr %LARpp_j, align 8
  call void @Decoding_of_the_coded_Log_Area_Ratios(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %LARpp_j_1, align 8
  %9 = load ptr, ptr %LARpp_j, align 8
  %arraydecay7 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_0_12(ptr noundef %8, ptr noundef %9, ptr noundef %arraydecay7)
  %arraydecay8 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay8)
  %10 = load ptr, ptr %S.addr, align 8
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %11 = load ptr, ptr %wt.addr, align 8
  %12 = load ptr, ptr %s.addr, align 8
  call void @Short_term_synthesis_filtering(ptr noundef %10, ptr noundef %arraydecay9, i32 noundef 13, ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %LARpp_j_1, align 8
  %14 = load ptr, ptr %LARpp_j, align 8
  %arraydecay10 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_13_26(ptr noundef %13, ptr noundef %14, ptr noundef %arraydecay10)
  %arraydecay11 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay11)
  %15 = load ptr, ptr %S.addr, align 8
  %arraydecay12 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %16 = load ptr, ptr %wt.addr, align 8
  %add.ptr = getelementptr inbounds i16, ptr %16, i64 13
  %17 = load ptr, ptr %s.addr, align 8
  %add.ptr13 = getelementptr inbounds i16, ptr %17, i64 13
  call void @Short_term_synthesis_filtering(ptr noundef %15, ptr noundef %arraydecay12, i32 noundef 14, ptr noundef %add.ptr, ptr noundef %add.ptr13)
  %18 = load ptr, ptr %LARpp_j_1, align 8
  %19 = load ptr, ptr %LARpp_j, align 8
  %arraydecay14 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_27_39(ptr noundef %18, ptr noundef %19, ptr noundef %arraydecay14)
  %arraydecay15 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay15)
  %20 = load ptr, ptr %S.addr, align 8
  %arraydecay16 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %21 = load ptr, ptr %wt.addr, align 8
  %add.ptr17 = getelementptr inbounds i16, ptr %21, i64 27
  %22 = load ptr, ptr %s.addr, align 8
  %add.ptr18 = getelementptr inbounds i16, ptr %22, i64 27
  call void @Short_term_synthesis_filtering(ptr noundef %20, ptr noundef %arraydecay16, i32 noundef 13, ptr noundef %add.ptr17, ptr noundef %add.ptr18)
  %23 = load ptr, ptr %LARpp_j, align 8
  %arraydecay19 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @Coefficients_40_159(ptr noundef %23, ptr noundef %arraydecay19)
  %arraydecay20 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  call void @LARp_to_rp(ptr noundef %arraydecay20)
  %24 = load ptr, ptr %S.addr, align 8
  %arraydecay21 = getelementptr inbounds [8 x i16], ptr %LARp, i64 0, i64 0
  %25 = load ptr, ptr %wt.addr, align 8
  %add.ptr22 = getelementptr inbounds i16, ptr %25, i64 40
  %26 = load ptr, ptr %s.addr, align 8
  %add.ptr23 = getelementptr inbounds i16, ptr %26, i64 40
  call void @Short_term_synthesis_filtering(ptr noundef %24, ptr noundef %arraydecay21, i32 noundef 120, ptr noundef %add.ptr22, ptr noundef %add.ptr23)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @Short_term_synthesis_filtering(ptr noundef %S, ptr noundef %rrp, i32 noundef %k, ptr noundef %wt, ptr noundef %sr) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %rrp.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  %wt.addr = alloca ptr, align 8
  %sr.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %sri = alloca i16, align 2
  %tmp1 = alloca i16, align 2
  %tmp2 = alloca i16, align 2
  %ltmp = alloca i64, align 8
  store ptr %S, ptr %S.addr, align 8
  store ptr %rrp, ptr %rrp.addr, align 8
  store i32 %k, ptr %k.addr, align 4
  store ptr %wt, ptr %wt.addr, align 8
  store ptr %sr, ptr %sr.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %v1 = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 8
  %arraydecay = getelementptr inbounds [9 x i16], ptr %v1, i64 0, i64 0
  store ptr %arraydecay, ptr %v, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %1 = load i32, ptr %k.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %k.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %wt.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %wt.addr, align 8
  %3 = load i16, ptr %2, align 2
  store i16 %3, ptr %sri, align 2
  store i32 8, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %cond.end60, %while.body
  %4 = load i32, ptr %i, align 4
  %dec2 = add nsw i32 %4, -1
  store i32 %dec2, ptr %i, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %rrp.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %idxprom
  %7 = load i16, ptr %arrayidx, align 2
  store i16 %7, ptr %tmp1, align 2
  %8 = load ptr, ptr %v, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %8, i64 %idxprom4
  %10 = load i16, ptr %arrayidx5, align 2
  store i16 %10, ptr %tmp2, align 2
  %11 = load i16, ptr %tmp1, align 2
  %conv = sext i16 %11 to i32
  %cmp = icmp eq i32 %conv, -32768
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %12 = load i16, ptr %tmp2, align 2
  %conv7 = sext i16 %12 to i32
  %cmp8 = icmp eq i32 %conv7, -32768
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %13 = load i16, ptr %tmp1, align 2
  %conv10 = sext i16 %13 to i64
  %14 = load i16, ptr %tmp2, align 2
  %conv11 = sext i16 %14 to i64
  %mul = mul nsw i64 %conv10, %conv11
  %add = add nsw i64 %mul, 16384
  %shr = ashr i64 %add, 15
  %and = and i64 65535, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 32767, %cond.true ], [ %and, %cond.false ]
  %conv12 = trunc i64 %cond to i16
  store i16 %conv12, ptr %tmp2, align 2
  %15 = load i16, ptr %sri, align 2
  %conv13 = sext i16 %15 to i64
  %16 = load i16, ptr %tmp2, align 2
  %conv14 = sext i16 %16 to i64
  %sub = sub nsw i64 %conv13, %conv14
  store i64 %sub, ptr %ltmp, align 8
  %cmp15 = icmp sge i64 %sub, 32767
  br i1 %cmp15, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end
  br label %cond.end25

cond.false18:                                     ; preds = %cond.end
  %17 = load i64, ptr %ltmp, align 8
  %cmp19 = icmp sle i64 %17, -32768
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false18
  br label %cond.end23

cond.false22:                                     ; preds = %cond.false18
  %18 = load i64, ptr %ltmp, align 8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i64 [ -32768, %cond.true21 ], [ %18, %cond.false22 ]
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end23, %cond.true17
  %cond26 = phi i64 [ 32767, %cond.true17 ], [ %cond24, %cond.end23 ]
  %conv27 = trunc i64 %cond26 to i16
  store i16 %conv27, ptr %sri, align 2
  %19 = load i16, ptr %tmp1, align 2
  %conv28 = sext i16 %19 to i32
  %cmp29 = icmp eq i32 %conv28, -32768
  br i1 %cmp29, label %land.lhs.true31, label %cond.false36

land.lhs.true31:                                  ; preds = %cond.end25
  %20 = load i16, ptr %sri, align 2
  %conv32 = sext i16 %20 to i32
  %cmp33 = icmp eq i32 %conv32, -32768
  br i1 %cmp33, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %land.lhs.true31
  br label %cond.end43

cond.false36:                                     ; preds = %land.lhs.true31, %cond.end25
  %21 = load i16, ptr %tmp1, align 2
  %conv37 = sext i16 %21 to i64
  %22 = load i16, ptr %sri, align 2
  %conv38 = sext i16 %22 to i64
  %mul39 = mul nsw i64 %conv37, %conv38
  %add40 = add nsw i64 %mul39, 16384
  %shr41 = ashr i64 %add40, 15
  %and42 = and i64 65535, %shr41
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false36, %cond.true35
  %cond44 = phi i64 [ 32767, %cond.true35 ], [ %and42, %cond.false36 ]
  %conv45 = trunc i64 %cond44 to i16
  store i16 %conv45, ptr %tmp1, align 2
  %23 = load ptr, ptr %v, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %24 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %23, i64 %idxprom46
  %25 = load i16, ptr %arrayidx47, align 2
  %conv48 = sext i16 %25 to i64
  %26 = load i16, ptr %tmp1, align 2
  %conv49 = sext i16 %26 to i64
  %add50 = add nsw i64 %conv48, %conv49
  store i64 %add50, ptr %ltmp, align 8
  %sub51 = sub nsw i64 %add50, -32768
  %cmp52 = icmp ugt i64 %sub51, 65535
  br i1 %cmp52, label %cond.true54, label %cond.false59

cond.true54:                                      ; preds = %cond.end43
  %27 = load i64, ptr %ltmp, align 8
  %cmp55 = icmp sgt i64 %27, 0
  %28 = zext i1 %cmp55 to i64
  %cond57 = select i1 %cmp55, i32 32767, i32 -32768
  %conv58 = sext i32 %cond57 to i64
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end43
  %29 = load i64, ptr %ltmp, align 8
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.true54
  %cond61 = phi i64 [ %conv58, %cond.true54 ], [ %29, %cond.false59 ]
  %conv62 = trunc i64 %cond61 to i16
  %30 = load ptr, ptr %v, align 8
  %31 = load i32, ptr %i, align 4
  %add63 = add nsw i32 %31, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i16, ptr %30, i64 %idxprom64
  store i16 %conv62, ptr %arrayidx65, align 2
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %32 = load i16, ptr %sri, align 2
  %33 = load ptr, ptr %v, align 8
  %arrayidx66 = getelementptr inbounds i16, ptr %33, i64 0
  store i16 %32, ptr %arrayidx66, align 2
  %34 = load ptr, ptr %sr.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i16, ptr %34, i32 1
  store ptr %incdec.ptr67, ptr %sr.addr, align 8
  store i16 %32, ptr %34, align 2
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @SASR(...) #1

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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
