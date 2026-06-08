; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/preprocess.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-gsm/preprocess.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@__func__.Gsm_Preprocess = private unnamed_addr constant [15 x i8] c"Gsm_Preprocess\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"preprocess.c\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SO >= -0x4000\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SO <= 0x3FFC\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"s1 != MIN_WORD\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @Gsm_Preprocess(ptr noundef %S, ptr noundef %s, ptr noundef %so) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %so.addr = alloca ptr, align 8
  %z1 = alloca i16, align 2
  %L_z2 = alloca i64, align 8
  %mp = alloca i16, align 2
  %s1 = alloca i16, align 2
  %L_s2 = alloca i64, align 8
  %L_temp = alloca i64, align 8
  %msp = alloca i16, align 2
  %lsp = alloca i16, align 2
  %SO = alloca i16, align 2
  %ltmp = alloca i64, align 8
  %utmp = alloca i64, align 8
  %k = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %so, ptr %so.addr, align 8
  %0 = load ptr, ptr %S.addr, align 8
  %z11 = getelementptr inbounds %struct.gsm_state, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %z11, align 8
  store i16 %1, ptr %z1, align 2
  %2 = load ptr, ptr %S.addr, align 8
  %L_z22 = getelementptr inbounds %struct.gsm_state, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %L_z22, align 8
  store i64 %3, ptr %L_z2, align 8
  %4 = load ptr, ptr %S.addr, align 8
  %mp3 = getelementptr inbounds %struct.gsm_state, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %mp3, align 8
  %conv = trunc i32 %5 to i16
  store i16 %conv, ptr %mp, align 2
  store i32 160, ptr %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %cond.end119, %entry
  %6 = load i32, ptr %k, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %k, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i16, ptr %7, align 2
  %conv4 = sext i16 %8 to i32
  %call = call i32 @SASR(i32 noundef %conv4, i32 noundef 3)
  %shl = shl i32 %call, 2
  %conv5 = trunc i32 %shl to i16
  store i16 %conv5, ptr %SO, align 2
  %9 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %10 = load i16, ptr %SO, align 2
  %conv6 = sext i16 %10 to i32
  %cmp = icmp sge i32 %conv6, -16384
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv8 = sext i32 %lnot.ext to i64
  %tobool9 = icmp ne i64 %conv8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Preprocess, ptr noundef @.str, i32 noundef 64, ptr noundef @.str.1) #3
  unreachable

11:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %11
  %12 = load i16, ptr %SO, align 2
  %conv10 = sext i16 %12 to i32
  %cmp11 = icmp sle i32 %conv10, 16380
  %lnot13 = xor i1 %cmp11, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  %conv15 = sext i32 %lnot.ext14 to i64
  %tobool16 = icmp ne i64 %conv15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Preprocess, ptr noundef @.str, i32 noundef 65, ptr noundef @.str.2) #3
  unreachable

13:                                               ; No predecessors!
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %13
  %14 = load i16, ptr %SO, align 2
  %conv20 = sext i16 %14 to i32
  %15 = load i16, ptr %z1, align 2
  %conv21 = sext i16 %15 to i32
  %sub = sub nsw i32 %conv20, %conv21
  %conv22 = trunc i32 %sub to i16
  store i16 %conv22, ptr %s1, align 2
  %16 = load i16, ptr %SO, align 2
  store i16 %16, ptr %z1, align 2
  %17 = load i16, ptr %s1, align 2
  %conv23 = sext i16 %17 to i32
  %cmp24 = icmp ne i32 %conv23, -32768
  %lnot26 = xor i1 %cmp24, true
  %lnot.ext27 = zext i1 %lnot26 to i32
  %conv28 = sext i32 %lnot.ext27 to i64
  %tobool29 = icmp ne i64 %conv28, 0
  br i1 %tobool29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %cond.end19
  call void @__assert_rtn(ptr noundef @__func__.Gsm_Preprocess, ptr noundef @.str, i32 noundef 81, ptr noundef @.str.3) #3
  unreachable

18:                                               ; No predecessors!
  br label %cond.end32

cond.false31:                                     ; preds = %cond.end19
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %18
  %19 = load i16, ptr %s1, align 2
  %conv33 = sext i16 %19 to i64
  store i64 %conv33, ptr %L_s2, align 8
  %20 = load i64, ptr %L_s2, align 8
  %shl34 = shl i64 %20, 15
  store i64 %shl34, ptr %L_s2, align 8
  %21 = load i64, ptr %L_z2, align 8
  %call35 = call i32 @SASR(i64 noundef %21, i32 noundef 15)
  %conv36 = trunc i32 %call35 to i16
  store i16 %conv36, ptr %msp, align 2
  %22 = load i64, ptr %L_z2, align 8
  %23 = load i16, ptr %msp, align 2
  %conv37 = sext i16 %23 to i64
  %shl38 = shl i64 %conv37, 15
  %sub39 = sub nsw i64 %22, %shl38
  %conv40 = trunc i64 %sub39 to i16
  store i16 %conv40, ptr %lsp, align 2
  %24 = load i16, ptr %lsp, align 2
  %conv41 = sext i16 %24 to i64
  %mul = mul nsw i64 %conv41, 32735
  %add = add nsw i64 %mul, 16384
  %call42 = call i32 @SASR(i64 noundef %add, i32 noundef 15)
  %conv43 = sext i32 %call42 to i64
  %25 = load i64, ptr %L_s2, align 8
  %add44 = add nsw i64 %25, %conv43
  store i64 %add44, ptr %L_s2, align 8
  %26 = load i16, ptr %msp, align 2
  %conv45 = sext i16 %26 to i64
  %mul46 = mul nsw i64 %conv45, 32735
  store i64 %mul46, ptr %L_temp, align 8
  %27 = load i64, ptr %L_temp, align 8
  %cmp47 = icmp slt i64 %27, 0
  br i1 %cmp47, label %cond.true49, label %cond.false69

cond.true49:                                      ; preds = %cond.end32
  %28 = load i64, ptr %L_s2, align 8
  %cmp50 = icmp sge i64 %28, 0
  br i1 %cmp50, label %cond.true52, label %cond.false54

cond.true52:                                      ; preds = %cond.true49
  %29 = load i64, ptr %L_temp, align 8
  %30 = load i64, ptr %L_s2, align 8
  %add53 = add nsw i64 %29, %30
  br label %cond.end67

cond.false54:                                     ; preds = %cond.true49
  %31 = load i64, ptr %L_temp, align 8
  %add55 = add nsw i64 %31, 1
  %sub56 = sub nsw i64 0, %add55
  %32 = load i64, ptr %L_s2, align 8
  %add57 = add nsw i64 %32, 1
  %sub58 = sub nsw i64 0, %add57
  %add59 = add i64 %sub56, %sub58
  store i64 %add59, ptr %utmp, align 8
  %cmp60 = icmp uge i64 %add59, 2147483647
  br i1 %cmp60, label %cond.true62, label %cond.false63

cond.true62:                                      ; preds = %cond.false54
  br label %cond.end66

cond.false63:                                     ; preds = %cond.false54
  %33 = load i64, ptr %utmp, align 8
  %sub64 = sub nsw i64 0, %33
  %sub65 = sub nsw i64 %sub64, 2
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false63, %cond.true62
  %cond = phi i64 [ -2147483648, %cond.true62 ], [ %sub65, %cond.false63 ]
  br label %cond.end67

cond.end67:                                       ; preds = %cond.end66, %cond.true52
  %cond68 = phi i64 [ %add53, %cond.true52 ], [ %cond, %cond.end66 ]
  br label %cond.end84

cond.false69:                                     ; preds = %cond.end32
  %34 = load i64, ptr %L_s2, align 8
  %cmp70 = icmp sle i64 %34, 0
  br i1 %cmp70, label %cond.true72, label %cond.false74

cond.true72:                                      ; preds = %cond.false69
  %35 = load i64, ptr %L_temp, align 8
  %36 = load i64, ptr %L_s2, align 8
  %add73 = add nsw i64 %35, %36
  br label %cond.end82

cond.false74:                                     ; preds = %cond.false69
  %37 = load i64, ptr %L_temp, align 8
  %38 = load i64, ptr %L_s2, align 8
  %add75 = add i64 %37, %38
  store i64 %add75, ptr %utmp, align 8
  %cmp76 = icmp uge i64 %add75, 2147483647
  br i1 %cmp76, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %cond.false74
  br label %cond.end80

cond.false79:                                     ; preds = %cond.false74
  %39 = load i64, ptr %utmp, align 8
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %cond.true78
  %cond81 = phi i64 [ 2147483647, %cond.true78 ], [ %39, %cond.false79 ]
  br label %cond.end82

cond.end82:                                       ; preds = %cond.end80, %cond.true72
  %cond83 = phi i64 [ %add73, %cond.true72 ], [ %cond81, %cond.end80 ]
  br label %cond.end84

cond.end84:                                       ; preds = %cond.end82, %cond.end67
  %cond85 = phi i64 [ %cond68, %cond.end67 ], [ %cond83, %cond.end82 ]
  store i64 %cond85, ptr %L_z2, align 8
  %40 = load i64, ptr %L_z2, align 8
  %cmp86 = icmp slt i64 %40, 0
  br i1 %cmp86, label %cond.true88, label %cond.false90

cond.true88:                                      ; preds = %cond.end84
  %41 = load i64, ptr %L_z2, align 8
  %add89 = add nsw i64 %41, 16384
  br label %cond.end98

cond.false90:                                     ; preds = %cond.end84
  %42 = load i64, ptr %L_z2, align 8
  %add91 = add i64 %42, 16384
  store i64 %add91, ptr %utmp, align 8
  %cmp92 = icmp uge i64 %add91, 2147483647
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %cond.false90
  br label %cond.end96

cond.false95:                                     ; preds = %cond.false90
  %43 = load i64, ptr %utmp, align 8
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false95, %cond.true94
  %cond97 = phi i64 [ 2147483647, %cond.true94 ], [ %43, %cond.false95 ]
  br label %cond.end98

cond.end98:                                       ; preds = %cond.end96, %cond.true88
  %cond99 = phi i64 [ %add89, %cond.true88 ], [ %cond97, %cond.end96 ]
  store i64 %cond99, ptr %L_temp, align 8
  %44 = load i16, ptr %mp, align 2
  %conv100 = sext i16 %44 to i64
  %mul101 = mul nsw i64 %conv100, -28180
  %add102 = add nsw i64 %mul101, 16384
  %call103 = call i32 @SASR(i64 noundef %add102, i32 noundef 15)
  %conv104 = trunc i32 %call103 to i16
  store i16 %conv104, ptr %msp, align 2
  %45 = load i64, ptr %L_temp, align 8
  %call105 = call i32 @SASR(i64 noundef %45, i32 noundef 15)
  %conv106 = trunc i32 %call105 to i16
  store i16 %conv106, ptr %mp, align 2
  %46 = load i16, ptr %mp, align 2
  %conv107 = sext i16 %46 to i64
  %47 = load i16, ptr %msp, align 2
  %conv108 = sext i16 %47 to i64
  %add109 = add nsw i64 %conv107, %conv108
  store i64 %add109, ptr %ltmp, align 8
  %sub110 = sub nsw i64 %add109, -32768
  %cmp111 = icmp ugt i64 %sub110, 65535
  br i1 %cmp111, label %cond.true113, label %cond.false118

cond.true113:                                     ; preds = %cond.end98
  %48 = load i64, ptr %ltmp, align 8
  %cmp114 = icmp sgt i64 %48, 0
  %49 = zext i1 %cmp114 to i64
  %cond116 = select i1 %cmp114, i32 32767, i32 -32768
  %conv117 = sext i32 %cond116 to i64
  br label %cond.end119

cond.false118:                                    ; preds = %cond.end98
  %50 = load i64, ptr %ltmp, align 8
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.true113
  %cond120 = phi i64 [ %conv117, %cond.true113 ], [ %50, %cond.false118 ]
  %conv121 = trunc i64 %cond120 to i16
  %51 = load ptr, ptr %so.addr, align 8
  %incdec.ptr122 = getelementptr inbounds i16, ptr %51, i32 1
  store ptr %incdec.ptr122, ptr %so.addr, align 8
  store i16 %conv121, ptr %51, align 2
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %52 = load i16, ptr %z1, align 2
  %53 = load ptr, ptr %S.addr, align 8
  %z1123 = getelementptr inbounds %struct.gsm_state, ptr %53, i32 0, i32 1
  store i16 %52, ptr %z1123, align 8
  %54 = load i64, ptr %L_z2, align 8
  %55 = load ptr, ptr %S.addr, align 8
  %L_z2124 = getelementptr inbounds %struct.gsm_state, ptr %55, i32 0, i32 2
  store i64 %54, ptr %L_z2124, align 8
  %56 = load i16, ptr %mp, align 2
  %conv125 = sext i16 %56 to i32
  %57 = load ptr, ptr %S.addr, align 8
  %mp126 = getelementptr inbounds %struct.gsm_state, ptr %57, i32 0, i32 3
  store i32 %conv125, ptr %mp126, align 8
  ret void
}

declare i32 @SASR(...) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn }

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
