; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_ofb64.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-security-blowfish/bf_ofb64.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @BF_ofb64_encrypt(ptr noundef %in, ptr noundef %out, i64 noundef %length, ptr noundef %schedule, ptr noundef %ivec, ptr noundef %num) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %schedule.addr = alloca ptr, align 8
  %ivec.addr = alloca ptr, align 8
  %num.addr = alloca ptr, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %t = alloca i64, align 8
  %n = alloca i32, align 4
  %l = alloca i64, align 8
  %d = alloca [8 x i8], align 1
  %dp = alloca ptr, align 8
  %ti = alloca [2 x i64], align 8
  %iv = alloca ptr, align 8
  %save = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i64 %length, ptr %length.addr, align 8
  store ptr %schedule, ptr %schedule.addr, align 8
  store ptr %ivec, ptr %ivec.addr, align 8
  store ptr %num, ptr %num.addr, align 8
  %0 = load ptr, ptr %num.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %n, align 4
  %2 = load i64, ptr %length.addr, align 8
  store i64 %2, ptr %l, align 8
  store i32 0, ptr %save, align 4
  %3 = load ptr, ptr %ivec.addr, align 8
  store ptr %3, ptr %iv, align 8
  %4 = load ptr, ptr %iv, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %iv, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i64
  %shl = shl i64 %conv, 24
  store i64 %shl, ptr %v0, align 8
  %6 = load ptr, ptr %iv, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr1, ptr %iv, align 8
  %7 = load i8, ptr %6, align 1
  %conv2 = zext i8 %7 to i64
  %shl3 = shl i64 %conv2, 16
  %8 = load i64, ptr %v0, align 8
  %or = or i64 %8, %shl3
  store i64 %or, ptr %v0, align 8
  %9 = load ptr, ptr %iv, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr4, ptr %iv, align 8
  %10 = load i8, ptr %9, align 1
  %conv5 = zext i8 %10 to i64
  %shl6 = shl i64 %conv5, 8
  %11 = load i64, ptr %v0, align 8
  %or7 = or i64 %11, %shl6
  store i64 %or7, ptr %v0, align 8
  %12 = load ptr, ptr %iv, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %iv, align 8
  %13 = load i8, ptr %12, align 1
  %conv9 = zext i8 %13 to i64
  %14 = load i64, ptr %v0, align 8
  %or10 = or i64 %14, %conv9
  store i64 %or10, ptr %v0, align 8
  %15 = load ptr, ptr %iv, align 8
  %incdec.ptr11 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr11, ptr %iv, align 8
  %16 = load i8, ptr %15, align 1
  %conv12 = zext i8 %16 to i64
  %shl13 = shl i64 %conv12, 24
  store i64 %shl13, ptr %v1, align 8
  %17 = load ptr, ptr %iv, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr14, ptr %iv, align 8
  %18 = load i8, ptr %17, align 1
  %conv15 = zext i8 %18 to i64
  %shl16 = shl i64 %conv15, 16
  %19 = load i64, ptr %v1, align 8
  %or17 = or i64 %19, %shl16
  store i64 %or17, ptr %v1, align 8
  %20 = load ptr, ptr %iv, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr18, ptr %iv, align 8
  %21 = load i8, ptr %20, align 1
  %conv19 = zext i8 %21 to i64
  %shl20 = shl i64 %conv19, 8
  %22 = load i64, ptr %v1, align 8
  %or21 = or i64 %22, %shl20
  store i64 %or21, ptr %v1, align 8
  %23 = load ptr, ptr %iv, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %iv, align 8
  %24 = load i8, ptr %23, align 1
  %conv23 = zext i8 %24 to i64
  %25 = load i64, ptr %v1, align 8
  %or24 = or i64 %25, %conv23
  store i64 %or24, ptr %v1, align 8
  %26 = load i64, ptr %v0, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  store i64 %26, ptr %arrayidx, align 8
  %27 = load i64, ptr %v1, align 8
  %arrayidx25 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  store i64 %27, ptr %arrayidx25, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 0
  store ptr %arraydecay, ptr %dp, align 8
  %28 = load i64, ptr %v0, align 8
  %shr = lshr i64 %28, 24
  %and = and i64 %shr, 255
  %conv26 = trunc i64 %and to i8
  %29 = load ptr, ptr %dp, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr27, ptr %dp, align 8
  store i8 %conv26, ptr %29, align 1
  %30 = load i64, ptr %v0, align 8
  %shr28 = lshr i64 %30, 16
  %and29 = and i64 %shr28, 255
  %conv30 = trunc i64 %and29 to i8
  %31 = load ptr, ptr %dp, align 8
  %incdec.ptr31 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr31, ptr %dp, align 8
  store i8 %conv30, ptr %31, align 1
  %32 = load i64, ptr %v0, align 8
  %shr32 = lshr i64 %32, 8
  %and33 = and i64 %shr32, 255
  %conv34 = trunc i64 %and33 to i8
  %33 = load ptr, ptr %dp, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr35, ptr %dp, align 8
  store i8 %conv34, ptr %33, align 1
  %34 = load i64, ptr %v0, align 8
  %and36 = and i64 %34, 255
  %conv37 = trunc i64 %and36 to i8
  %35 = load ptr, ptr %dp, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr38, ptr %dp, align 8
  store i8 %conv37, ptr %35, align 1
  %36 = load i64, ptr %v1, align 8
  %shr39 = lshr i64 %36, 24
  %and40 = and i64 %shr39, 255
  %conv41 = trunc i64 %and40 to i8
  %37 = load ptr, ptr %dp, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr42, ptr %dp, align 8
  store i8 %conv41, ptr %37, align 1
  %38 = load i64, ptr %v1, align 8
  %shr43 = lshr i64 %38, 16
  %and44 = and i64 %shr43, 255
  %conv45 = trunc i64 %and44 to i8
  %39 = load ptr, ptr %dp, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr46, ptr %dp, align 8
  store i8 %conv45, ptr %39, align 1
  %40 = load i64, ptr %v1, align 8
  %shr47 = lshr i64 %40, 8
  %and48 = and i64 %shr47, 255
  %conv49 = trunc i64 %and48 to i8
  %41 = load ptr, ptr %dp, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr50, ptr %dp, align 8
  store i8 %conv49, ptr %41, align 1
  %42 = load i64, ptr %v1, align 8
  %and51 = and i64 %42, 255
  %conv52 = trunc i64 %and51 to i8
  %43 = load ptr, ptr %dp, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr53, ptr %dp, align 8
  store i8 %conv52, ptr %43, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %44 = load i64, ptr %l, align 8
  %dec = add nsw i64 %44, -1
  store i64 %dec, ptr %l, align 8
  %tobool = icmp ne i64 %44, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load i32, ptr %n, align 4
  %cmp = icmp eq i32 %45, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %arraydecay55 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  %46 = load ptr, ptr %schedule.addr, align 8
  call void @BF_encrypt(ptr noundef %arraydecay55, ptr noundef %46, i32 noundef 1)
  %arraydecay56 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 0
  store ptr %arraydecay56, ptr %dp, align 8
  %arrayidx57 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  %47 = load i64, ptr %arrayidx57, align 8
  store i64 %47, ptr %t, align 8
  %48 = load i64, ptr %t, align 8
  %shr58 = lshr i64 %48, 24
  %and59 = and i64 %shr58, 255
  %conv60 = trunc i64 %and59 to i8
  %49 = load ptr, ptr %dp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr61, ptr %dp, align 8
  store i8 %conv60, ptr %49, align 1
  %50 = load i64, ptr %t, align 8
  %shr62 = lshr i64 %50, 16
  %and63 = and i64 %shr62, 255
  %conv64 = trunc i64 %and63 to i8
  %51 = load ptr, ptr %dp, align 8
  %incdec.ptr65 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr65, ptr %dp, align 8
  store i8 %conv64, ptr %51, align 1
  %52 = load i64, ptr %t, align 8
  %shr66 = lshr i64 %52, 8
  %and67 = and i64 %shr66, 255
  %conv68 = trunc i64 %and67 to i8
  %53 = load ptr, ptr %dp, align 8
  %incdec.ptr69 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr69, ptr %dp, align 8
  store i8 %conv68, ptr %53, align 1
  %54 = load i64, ptr %t, align 8
  %and70 = and i64 %54, 255
  %conv71 = trunc i64 %and70 to i8
  %55 = load ptr, ptr %dp, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr72, ptr %dp, align 8
  store i8 %conv71, ptr %55, align 1
  %arrayidx73 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  %56 = load i64, ptr %arrayidx73, align 8
  store i64 %56, ptr %t, align 8
  %57 = load i64, ptr %t, align 8
  %shr74 = lshr i64 %57, 24
  %and75 = and i64 %shr74, 255
  %conv76 = trunc i64 %and75 to i8
  %58 = load ptr, ptr %dp, align 8
  %incdec.ptr77 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr77, ptr %dp, align 8
  store i8 %conv76, ptr %58, align 1
  %59 = load i64, ptr %t, align 8
  %shr78 = lshr i64 %59, 16
  %and79 = and i64 %shr78, 255
  %conv80 = trunc i64 %and79 to i8
  %60 = load ptr, ptr %dp, align 8
  %incdec.ptr81 = getelementptr inbounds i8, ptr %60, i32 1
  store ptr %incdec.ptr81, ptr %dp, align 8
  store i8 %conv80, ptr %60, align 1
  %61 = load i64, ptr %t, align 8
  %shr82 = lshr i64 %61, 8
  %and83 = and i64 %shr82, 255
  %conv84 = trunc i64 %and83 to i8
  %62 = load ptr, ptr %dp, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %62, i32 1
  store ptr %incdec.ptr85, ptr %dp, align 8
  store i8 %conv84, ptr %62, align 1
  %63 = load i64, ptr %t, align 8
  %and86 = and i64 %63, 255
  %conv87 = trunc i64 %and86 to i8
  %64 = load ptr, ptr %dp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr88, ptr %dp, align 8
  store i8 %conv87, ptr %64, align 1
  %65 = load i32, ptr %save, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, ptr %save, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %66 = load ptr, ptr %in.addr, align 8
  %incdec.ptr89 = getelementptr inbounds i8, ptr %66, i32 1
  store ptr %incdec.ptr89, ptr %in.addr, align 8
  %67 = load i8, ptr %66, align 1
  %conv90 = zext i8 %67 to i32
  %68 = load i32, ptr %n, align 4
  %idxprom = sext i32 %68 to i64
  %arrayidx91 = getelementptr inbounds [8 x i8], ptr %d, i64 0, i64 %idxprom
  %69 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %69 to i32
  %xor = xor i32 %conv90, %conv92
  %conv93 = trunc i32 %xor to i8
  %70 = load ptr, ptr %out.addr, align 8
  %incdec.ptr94 = getelementptr inbounds i8, ptr %70, i32 1
  store ptr %incdec.ptr94, ptr %out.addr, align 8
  store i8 %conv93, ptr %70, align 1
  %71 = load i32, ptr %n, align 4
  %add = add nsw i32 %71, 1
  %and95 = and i32 %add, 7
  store i32 %and95, ptr %n, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %72 = load i32, ptr %save, align 4
  %tobool96 = icmp ne i32 %72, 0
  br i1 %tobool96, label %if.then97, label %if.end130

if.then97:                                        ; preds = %while.end
  %arrayidx98 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  %73 = load i64, ptr %arrayidx98, align 8
  store i64 %73, ptr %v0, align 8
  %arrayidx99 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  %74 = load i64, ptr %arrayidx99, align 8
  store i64 %74, ptr %v1, align 8
  %75 = load ptr, ptr %ivec.addr, align 8
  store ptr %75, ptr %iv, align 8
  %76 = load i64, ptr %v0, align 8
  %shr100 = lshr i64 %76, 24
  %and101 = and i64 %shr100, 255
  %conv102 = trunc i64 %and101 to i8
  %77 = load ptr, ptr %iv, align 8
  %incdec.ptr103 = getelementptr inbounds i8, ptr %77, i32 1
  store ptr %incdec.ptr103, ptr %iv, align 8
  store i8 %conv102, ptr %77, align 1
  %78 = load i64, ptr %v0, align 8
  %shr104 = lshr i64 %78, 16
  %and105 = and i64 %shr104, 255
  %conv106 = trunc i64 %and105 to i8
  %79 = load ptr, ptr %iv, align 8
  %incdec.ptr107 = getelementptr inbounds i8, ptr %79, i32 1
  store ptr %incdec.ptr107, ptr %iv, align 8
  store i8 %conv106, ptr %79, align 1
  %80 = load i64, ptr %v0, align 8
  %shr108 = lshr i64 %80, 8
  %and109 = and i64 %shr108, 255
  %conv110 = trunc i64 %and109 to i8
  %81 = load ptr, ptr %iv, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr111, ptr %iv, align 8
  store i8 %conv110, ptr %81, align 1
  %82 = load i64, ptr %v0, align 8
  %and112 = and i64 %82, 255
  %conv113 = trunc i64 %and112 to i8
  %83 = load ptr, ptr %iv, align 8
  %incdec.ptr114 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr114, ptr %iv, align 8
  store i8 %conv113, ptr %83, align 1
  %84 = load i64, ptr %v1, align 8
  %shr115 = lshr i64 %84, 24
  %and116 = and i64 %shr115, 255
  %conv117 = trunc i64 %and116 to i8
  %85 = load ptr, ptr %iv, align 8
  %incdec.ptr118 = getelementptr inbounds i8, ptr %85, i32 1
  store ptr %incdec.ptr118, ptr %iv, align 8
  store i8 %conv117, ptr %85, align 1
  %86 = load i64, ptr %v1, align 8
  %shr119 = lshr i64 %86, 16
  %and120 = and i64 %shr119, 255
  %conv121 = trunc i64 %and120 to i8
  %87 = load ptr, ptr %iv, align 8
  %incdec.ptr122 = getelementptr inbounds i8, ptr %87, i32 1
  store ptr %incdec.ptr122, ptr %iv, align 8
  store i8 %conv121, ptr %87, align 1
  %88 = load i64, ptr %v1, align 8
  %shr123 = lshr i64 %88, 8
  %and124 = and i64 %shr123, 255
  %conv125 = trunc i64 %and124 to i8
  %89 = load ptr, ptr %iv, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr126, ptr %iv, align 8
  store i8 %conv125, ptr %89, align 1
  %90 = load i64, ptr %v1, align 8
  %and127 = and i64 %90, 255
  %conv128 = trunc i64 %and127 to i8
  %91 = load ptr, ptr %iv, align 8
  %incdec.ptr129 = getelementptr inbounds i8, ptr %91, i32 1
  store ptr %incdec.ptr129, ptr %iv, align 8
  store i8 %conv128, ptr %91, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.then97, %while.end
  %arrayidx131 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 1
  store i64 0, ptr %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds [2 x i64], ptr %ti, i64 0, i64 0
  store i64 0, ptr %arrayidx132, align 8
  store i64 0, ptr %v1, align 8
  store i64 0, ptr %v0, align 8
  store i64 0, ptr %t, align 8
  %92 = load i32, ptr %n, align 4
  %93 = load ptr, ptr %num.addr, align 8
  store i32 %92, ptr %93, align 4
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
