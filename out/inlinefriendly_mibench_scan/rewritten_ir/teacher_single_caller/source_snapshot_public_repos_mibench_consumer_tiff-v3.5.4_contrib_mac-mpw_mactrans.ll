; ModuleID = './out/inlinefriendly_mibench_scan/rewritten_ir/teacher_single_caller/source_snapshot_public_repos_mibench_consumer_tiff-v3.5.4_contrib_mac-mpw_mactrans.prepared.ll'
source_filename = "./source_snapshot/public_repos/mibench/consumer/tiff-v3.5.4/contrib/mac-mpw/mactrans.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@__stdinp = external global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"%2x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%%%2x\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %c.i = alloca i8, align 1
  %argv.addr = alloca ptr, align 8
  store ptr %argv, ptr %argv.addr, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1
  %1 = load ptr, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx1, align 1
  %cmp2 = icmp eq i8 %2, 102
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @from_ascii()
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c.i)
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %if.else
  %call.i = call i32 @getchar() #5
  %conv.i = trunc i32 %call.i to i8
  store i8 %conv.i, ptr %c.i, align 1
  %sext.mask = and i32 %call.i, 255
  %cmp.i.not = icmp eq i32 %sext.mask, 255
  br i1 %cmp.i.not, label %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_contrib_mac_mpw_mactrans_0.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %3 = load i8, ptr %c.i, align 1
  %isascii = icmp sgt i8 %3, -1
  br i1 %isascii, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %4 = load i8, ptr %c.i, align 1
  %conv5.i = sext i8 %4 to i32
  %call6.i = call i32 @putchar(i32 noundef %conv5.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  %5 = load i8, ptr %c.i, align 1
  %conv7.i = zext i8 %5 to i32
  %call8.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %conv7.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  br label %while.cond.i, !llvm.loop !6

pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_contrib_mac_mpw_mactrans_0.exit: ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c.i)
  br label %if.end

if.end:                                           ; preds = %pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_contrib_mac_mpw_mactrans_0.exit, %if.then
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define void @from_ascii() #0 {
entry:
  %c = alloca i8, align 1
  %d = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @getchar() #5
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %c, align 1
  %sext.mask = and i32 %call, 255
  %cmp.not = icmp eq i32 %sext.mask, 255
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i8, ptr %c, align 1
  %cmp4.not = icmp eq i8 %0, 37
  br i1 %cmp4.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %call6 = call i32 @getchar() #5
  %conv7 = trunc i32 %call6 to i8
  store i8 %conv7, ptr %c, align 1
  %sext.mask1 = and i32 %call6, 255
  %cmp9 = icmp eq i32 %sext.mask1, 37
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %1 = load i8, ptr %c, align 1
  %conv11 = sext i8 %1 to i32
  %call12 = call i32 @putchar(i32 noundef %conv11) #5
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i8, ptr %c, align 1
  %conv13 = sext i8 %2 to i32
  %3 = load ptr, ptr @__stdinp, align 8
  %call14 = call i32 @ungetc(i32 noundef %conv13, ptr noundef %3) #5
  %call15 = call i32 (ptr, ...) @scanf(ptr noundef nonnull @.str, ptr noundef nonnull %d) #5
  %4 = load i32, ptr %d, align 4
  %conv16 = trunc i32 %4 to i8
  store i8 %conv16, ptr %c, align 1
  %sext = shl i32 %4, 24
  %conv17 = ashr exact i32 %sext, 24
  %call18 = call i32 @putchar(i32 noundef %conv17) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @to_ascii() #0 {
entry:
  %c = alloca i8, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @getchar() #5
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %c, align 1
  %sext.mask = and i32 %call, 255
  %cmp.not = icmp eq i32 %sext.mask, 255
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i8, ptr %c, align 1
  %isascii = icmp sgt i8 %0, -1
  br i1 %isascii, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load i8, ptr %c, align 1
  %conv5 = sext i8 %1 to i32
  %call6 = call i32 @putchar(i32 noundef %conv5) #5
  br label %if.end

if.else:                                          ; preds = %while.body
  %2 = load i8, ptr %c, align 1
  %conv7 = zext i8 %2 to i32
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %conv7) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

declare i32 @getchar() #2

declare i32 @putchar(i32 noundef) #2

declare i32 @ungetc(i32 noundef, ptr noundef) #2

declare i32 @scanf(ptr noundef, ...) #2

declare i32 @isascii(i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: alwaysinline nounwind ssp uwtable
define void @pc_inline_source_snapshot_public_repos_mibench_consumer_tiff_v3_5_4_contrib_mac_mpw_mactrans_0() #3 {
entry:
  %c = alloca i8, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = call i32 @getchar() #5
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %c, align 1
  %sext.mask = and i32 %call, 255
  %cmp.not = icmp eq i32 %sext.mask, 255
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i8, ptr %c, align 1
  %isascii = icmp sgt i8 %0, -1
  br i1 %isascii, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %1 = load i8, ptr %c, align 1
  %conv5 = sext i8 %1 to i32
  %call6 = call i32 @putchar(i32 noundef %conv5) #5
  br label %if.end

if.else:                                          ; preds = %while.body
  %2 = load i8, ptr %c, align 1
  %conv7 = zext i8 %2 to i32
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %conv7) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { alwaysinline nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
