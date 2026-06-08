; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-adpcm-d/adpcm.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-telecom-adpcm-d/adpcm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 4
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @adpcm_coder(ptr noundef %indata, ptr noundef %outdata, i32 noundef %len, ptr noundef %state) #0 {
entry:
  %indata.addr = alloca ptr, align 8
  %outdata.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %inp = alloca ptr, align 8
  %outp = alloca ptr, align 8
  %val = alloca i32, align 4
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %diff = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %outputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store ptr %indata, ptr %indata.addr, align 8
  store ptr %outdata, ptr %outdata.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %state, ptr %state.addr, align 8
  store i32 0, ptr %outputbuffer, align 4
  %0 = load ptr, ptr %outdata.addr, align 8
  store ptr %0, ptr %outp, align 8
  %1 = load ptr, ptr %indata.addr, align 8
  store ptr %1, ptr %inp, align 8
  %2 = load ptr, ptr %state.addr, align 8
  %valprev = getelementptr inbounds %struct.adpcm_state, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %valprev, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %valpred, align 4
  %4 = load ptr, ptr %state.addr, align 8
  %index1 = getelementptr inbounds %struct.adpcm_state, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %index1, align 2
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, ptr %index, align 4
  %6 = load i32, ptr %index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %step, align 4
  store i32 1, ptr %bufferstep, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %inp, align 8
  %incdec.ptr = getelementptr inbounds i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %inp, align 8
  %10 = load i16, ptr %9, align 2
  %conv4 = sext i16 %10 to i32
  store i32 %conv4, ptr %val, align 4
  %11 = load i32, ptr %val, align 4
  %12 = load i32, ptr %valpred, align 4
  %sub = sub nsw i32 %11, %12
  store i32 %sub, ptr %diff, align 4
  %13 = load i32, ptr %diff, align 4
  %cmp5 = icmp slt i32 %13, 0
  %14 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 8, i32 0
  store i32 %cond, ptr %sign, align 4
  %15 = load i32, ptr %sign, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32, ptr %diff, align 4
  %sub7 = sub nsw i32 0, %16
  store i32 %sub7, ptr %diff, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, ptr %delta, align 4
  %17 = load i32, ptr %step, align 4
  %shr = ashr i32 %17, 3
  store i32 %shr, ptr %vpdiff, align 4
  %18 = load i32, ptr %diff, align 4
  %19 = load i32, ptr %step, align 4
  %cmp8 = icmp sge i32 %18, %19
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  store i32 4, ptr %delta, align 4
  %20 = load i32, ptr %step, align 4
  %21 = load i32, ptr %diff, align 4
  %sub11 = sub nsw i32 %21, %20
  store i32 %sub11, ptr %diff, align 4
  %22 = load i32, ptr %step, align 4
  %23 = load i32, ptr %vpdiff, align 4
  %add = add nsw i32 %23, %22
  store i32 %add, ptr %vpdiff, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %24 = load i32, ptr %step, align 4
  %shr13 = ashr i32 %24, 1
  store i32 %shr13, ptr %step, align 4
  %25 = load i32, ptr %diff, align 4
  %26 = load i32, ptr %step, align 4
  %cmp14 = icmp sge i32 %25, %26
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %27 = load i32, ptr %delta, align 4
  %or = or i32 %27, 2
  store i32 %or, ptr %delta, align 4
  %28 = load i32, ptr %step, align 4
  %29 = load i32, ptr %diff, align 4
  %sub17 = sub nsw i32 %29, %28
  store i32 %sub17, ptr %diff, align 4
  %30 = load i32, ptr %step, align 4
  %31 = load i32, ptr %vpdiff, align 4
  %add18 = add nsw i32 %31, %30
  store i32 %add18, ptr %vpdiff, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12
  %32 = load i32, ptr %step, align 4
  %shr20 = ashr i32 %32, 1
  store i32 %shr20, ptr %step, align 4
  %33 = load i32, ptr %diff, align 4
  %34 = load i32, ptr %step, align 4
  %cmp21 = icmp sge i32 %33, %34
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  %35 = load i32, ptr %delta, align 4
  %or24 = or i32 %35, 1
  store i32 %or24, ptr %delta, align 4
  %36 = load i32, ptr %step, align 4
  %37 = load i32, ptr %vpdiff, align 4
  %add25 = add nsw i32 %37, %36
  store i32 %add25, ptr %vpdiff, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19
  %38 = load i32, ptr %sign, align 4
  %tobool27 = icmp ne i32 %38, 0
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %39 = load i32, ptr %vpdiff, align 4
  %40 = load i32, ptr %valpred, align 4
  %sub29 = sub nsw i32 %40, %39
  store i32 %sub29, ptr %valpred, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end26
  %41 = load i32, ptr %vpdiff, align 4
  %42 = load i32, ptr %valpred, align 4
  %add30 = add nsw i32 %42, %41
  store i32 %add30, ptr %valpred, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %43 = load i32, ptr %valpred, align 4
  %cmp32 = icmp sgt i32 %43, 32767
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end31
  store i32 32767, ptr %valpred, align 4
  br label %if.end40

if.else35:                                        ; preds = %if.end31
  %44 = load i32, ptr %valpred, align 4
  %cmp36 = icmp slt i32 %44, -32768
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else35
  store i32 -32768, ptr %valpred, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.else35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then34
  %45 = load i32, ptr %sign, align 4
  %46 = load i32, ptr %delta, align 4
  %or41 = or i32 %46, %45
  store i32 %or41, ptr %delta, align 4
  %47 = load i32, ptr %delta, align 4
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %idxprom42
  %48 = load i32, ptr %arrayidx43, align 4
  %49 = load i32, ptr %index, align 4
  %add44 = add nsw i32 %49, %48
  store i32 %add44, ptr %index, align 4
  %50 = load i32, ptr %index, align 4
  %cmp45 = icmp slt i32 %50, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end40
  store i32 0, ptr %index, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end40
  %51 = load i32, ptr %index, align 4
  %cmp49 = icmp sgt i32 %51, 88
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end48
  store i32 88, ptr %index, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  %52 = load i32, ptr %index, align 4
  %idxprom53 = sext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom53
  %53 = load i32, ptr %arrayidx54, align 4
  store i32 %53, ptr %step, align 4
  %54 = load i32, ptr %bufferstep, align 4
  %tobool55 = icmp ne i32 %54, 0
  br i1 %tobool55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.end52
  %55 = load i32, ptr %delta, align 4
  %shl = shl i32 %55, 4
  %and = and i32 %shl, 240
  store i32 %and, ptr %outputbuffer, align 4
  br label %if.end62

if.else57:                                        ; preds = %if.end52
  %56 = load i32, ptr %delta, align 4
  %and58 = and i32 %56, 15
  %57 = load i32, ptr %outputbuffer, align 4
  %or59 = or i32 %and58, %57
  %conv60 = trunc i32 %or59 to i8
  %58 = load ptr, ptr %outp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr61, ptr %outp, align 8
  store i8 %conv60, ptr %58, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then56
  %59 = load i32, ptr %bufferstep, align 4
  %tobool63 = icmp ne i32 %59, 0
  %lnot = xor i1 %tobool63, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %bufferstep, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %60 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, ptr %len.addr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %61 = load i32, ptr %bufferstep, align 4
  %tobool64 = icmp ne i32 %61, 0
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %for.end
  %62 = load i32, ptr %outputbuffer, align 4
  %conv66 = trunc i32 %62 to i8
  %63 = load ptr, ptr %outp, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr67, ptr %outp, align 8
  store i8 %conv66, ptr %63, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end
  %64 = load i32, ptr %valpred, align 4
  %conv69 = trunc i32 %64 to i16
  %65 = load ptr, ptr %state.addr, align 8
  %valprev70 = getelementptr inbounds %struct.adpcm_state, ptr %65, i32 0, i32 0
  store i16 %conv69, ptr %valprev70, align 2
  %66 = load i32, ptr %index, align 4
  %conv71 = trunc i32 %66 to i8
  %67 = load ptr, ptr %state.addr, align 8
  %index72 = getelementptr inbounds %struct.adpcm_state, ptr %67, i32 0, i32 1
  store i8 %conv71, ptr %index72, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @adpcm_decoder(ptr noundef %indata, ptr noundef %outdata, i32 noundef %len, ptr noundef %state) #0 {
entry:
  %indata.addr = alloca ptr, align 8
  %outdata.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %inp = alloca ptr, align 8
  %outp = alloca ptr, align 8
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %inputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store ptr %indata, ptr %indata.addr, align 8
  store ptr %outdata, ptr %outdata.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %state, ptr %state.addr, align 8
  store i32 0, ptr %inputbuffer, align 4
  %0 = load ptr, ptr %outdata.addr, align 8
  store ptr %0, ptr %outp, align 8
  %1 = load ptr, ptr %indata.addr, align 8
  store ptr %1, ptr %inp, align 8
  %2 = load ptr, ptr %state.addr, align 8
  %valprev = getelementptr inbounds %struct.adpcm_state, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %valprev, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %valpred, align 4
  %4 = load ptr, ptr %state.addr, align 8
  %index1 = getelementptr inbounds %struct.adpcm_state, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %index1, align 2
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, ptr %index, align 4
  %6 = load i32, ptr %index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %step, align 4
  store i32 0, ptr %bufferstep, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %bufferstep, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %inputbuffer, align 4
  %and = and i32 %10, 15
  store i32 %and, ptr %delta, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %inp, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %inp, align 8
  %12 = load i8, ptr %11, align 1
  %conv4 = sext i8 %12 to i32
  store i32 %conv4, ptr %inputbuffer, align 4
  %13 = load i32, ptr %inputbuffer, align 4
  %shr = ashr i32 %13, 4
  %and5 = and i32 %shr, 15
  store i32 %and5, ptr %delta, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %bufferstep, align 4
  %tobool6 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %bufferstep, align 4
  %15 = load i32, ptr %delta, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], ptr @indexTable, i64 0, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4
  %17 = load i32, ptr %index, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, ptr %index, align 4
  %18 = load i32, ptr %index, align 4
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i32 0, ptr %index, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %19 = load i32, ptr %index, align 4
  %cmp13 = icmp sgt i32 %19, 88
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 88, ptr %index, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %20 = load i32, ptr %delta, align 4
  %and17 = and i32 %20, 8
  store i32 %and17, ptr %sign, align 4
  %21 = load i32, ptr %delta, align 4
  %and18 = and i32 %21, 7
  store i32 %and18, ptr %delta, align 4
  %22 = load i32, ptr %step, align 4
  %shr19 = ashr i32 %22, 3
  store i32 %shr19, ptr %vpdiff, align 4
  %23 = load i32, ptr %delta, align 4
  %and20 = and i32 %23, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  %24 = load i32, ptr %step, align 4
  %25 = load i32, ptr %vpdiff, align 4
  %add23 = add nsw i32 %25, %24
  store i32 %add23, ptr %vpdiff, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16
  %26 = load i32, ptr %delta, align 4
  %and25 = and i32 %26, 2
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  %27 = load i32, ptr %step, align 4
  %shr28 = ashr i32 %27, 1
  %28 = load i32, ptr %vpdiff, align 4
  %add29 = add nsw i32 %28, %shr28
  store i32 %add29, ptr %vpdiff, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24
  %29 = load i32, ptr %delta, align 4
  %and31 = and i32 %29, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %30 = load i32, ptr %step, align 4
  %shr34 = ashr i32 %30, 2
  %31 = load i32, ptr %vpdiff, align 4
  %add35 = add nsw i32 %31, %shr34
  store i32 %add35, ptr %vpdiff, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30
  %32 = load i32, ptr %sign, align 4
  %tobool37 = icmp ne i32 %32, 0
  br i1 %tobool37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end36
  %33 = load i32, ptr %vpdiff, align 4
  %34 = load i32, ptr %valpred, align 4
  %sub = sub nsw i32 %34, %33
  store i32 %sub, ptr %valpred, align 4
  br label %if.end41

if.else39:                                        ; preds = %if.end36
  %35 = load i32, ptr %vpdiff, align 4
  %36 = load i32, ptr %valpred, align 4
  %add40 = add nsw i32 %36, %35
  store i32 %add40, ptr %valpred, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38
  %37 = load i32, ptr %valpred, align 4
  %cmp42 = icmp sgt i32 %37, 32767
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.end41
  store i32 32767, ptr %valpred, align 4
  br label %if.end50

if.else45:                                        ; preds = %if.end41
  %38 = load i32, ptr %valpred, align 4
  %cmp46 = icmp slt i32 %38, -32768
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else45
  store i32 -32768, ptr %valpred, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then44
  %39 = load i32, ptr %index, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [89 x i32], ptr @stepsizeTable, i64 0, i64 %idxprom51
  %40 = load i32, ptr %arrayidx52, align 4
  store i32 %40, ptr %step, align 4
  %41 = load i32, ptr %valpred, align 4
  %conv53 = trunc i32 %41 to i16
  %42 = load ptr, ptr %outp, align 8
  %incdec.ptr54 = getelementptr inbounds i16, ptr %42, i32 1
  store ptr %incdec.ptr54, ptr %outp, align 8
  store i16 %conv53, ptr %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %43 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, ptr %len.addr, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %44 = load i32, ptr %valpred, align 4
  %conv55 = trunc i32 %44 to i16
  %45 = load ptr, ptr %state.addr, align 8
  %valprev56 = getelementptr inbounds %struct.adpcm_state, ptr %45, i32 0, i32 0
  store i16 %conv55, ptr %valprev56, align 2
  %46 = load i32, ptr %index, align 4
  %conv57 = trunc i32 %46 to i8
  %47 = load ptr, ptr %state.addr, align 8
  %index58 = getelementptr inbounds %struct.adpcm_state, ptr %47, i32 0, i32 1
  store i8 %conv57, ptr %index58, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

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
