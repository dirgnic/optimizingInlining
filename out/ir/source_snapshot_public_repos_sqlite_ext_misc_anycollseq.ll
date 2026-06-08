; ModuleID = './source_snapshot/public_repos/sqlite/ext/misc/anycollseq.c'
source_filename = "./source_snapshot/public_repos/sqlite/ext/misc/anycollseq.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @sqlite3_anycollseq_init(ptr noundef %db, ptr noundef %pzErrMsg, ptr noundef %pApi) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pApi.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %pApi, ptr %pApi.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pApi.addr, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3_collation_needed(ptr noundef %1, ptr noundef null, ptr noundef @anyCollNeeded)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  ret i32 %2
}

declare i32 @sqlite3_collation_needed(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @anyCollNeeded(ptr noundef %NotUsed, ptr noundef %db, i32 noundef %eTextRep, ptr noundef %zCollName) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %eTextRep.addr = alloca i32, align 4
  %zCollName.addr = alloca ptr, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %eTextRep, ptr %eTextRep.addr, align 4
  store ptr %zCollName, ptr %zCollName.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zCollName.addr, align 8
  %2 = load i32, ptr %eTextRep.addr, align 4
  %call = call i32 @sqlite3_create_collation(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef @anyCollFunc)
  ret void
}

declare i32 @sqlite3_create_collation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal i32 @anyCollFunc(ptr noundef %NotUsed, i32 noundef %nKey1, ptr noundef %pKey1, i32 noundef %nKey2, ptr noundef %pKey2) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %nKey1.addr = alloca i32, align 4
  %pKey1.addr = alloca ptr, align 8
  %nKey2.addr = alloca i32, align 4
  %pKey2.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store i32 %nKey2, ptr %nKey2.addr, align 4
  store ptr %pKey2, ptr %pKey2.addr, align 8
  %0 = load i32, ptr %nKey1.addr, align 4
  %1 = load i32, ptr %nKey2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %nKey1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %nKey2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %n, align 4
  %4 = load ptr, ptr %pKey1.addr, align 8
  %5 = load ptr, ptr %pKey2.addr, align 8
  %6 = load i32, ptr %n, align 4
  %conv = sext i32 %6 to i64
  %call = call i32 @memcmp(ptr noundef %4, ptr noundef %5, i64 noundef %conv)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i32, ptr %nKey1.addr, align 4
  %9 = load i32, ptr %nKey2.addr, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %10 = load i32, ptr %rc, align 4
  ret i32 %10
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

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
