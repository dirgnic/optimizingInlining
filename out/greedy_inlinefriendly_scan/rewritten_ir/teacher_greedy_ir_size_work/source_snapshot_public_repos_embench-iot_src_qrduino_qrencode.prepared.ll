; ModuleID = './source_snapshot/public_repos/embench-iot/src/qrduino/qrencode.c'
source_filename = "./source_snapshot/public_repos/embench-iot/src/qrduino/qrencode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@strinbuf = external global ptr, align 8
@qrframe = external global ptr, align 8
@WD = external global i8, align 1
@WDB = external global i8, align 1
@datablkw = external global i8, align 1
@neccblk1 = external global i8, align 1
@neccblk2 = external global i8, align 1
@VERSION = external global i8, align 1
@eccblkwid = external global i8, align 1
@g0exp = internal constant [256 x i8] c"\01\02\04\08\10 @\80\1D:t\E8\CD\87\13&L\98-Z\B4u\EA\C9\8F\03\06\0C\180`\C0\9D'N\9C%J\945j\D4\B5w\EE\C1\9F#F\8C\05\0A\14(P\A0]\BAi\D2\B9o\DE\A1_\BEa\C2\99/^\BCe\CA\89\0F\1E<x\F0\FD\E7\D3\BBk\D6\B1\7F\FE\E1\DF\A3[\B6q\E2\D9\AFC\86\11\22D\88\0D\1A4h\D0\BDg\CE\81\1F>|\F8\ED\C7\93;v\EC\C5\973f\CC\85\17.\\\B8m\DA\A9O\9E!B\84\15*T\A8M\9A)R\A4U\AAI\929r\E4\D5\B7s\E6\D1\BFc\C6\91?~\FC\E5\D7\B3{\F6\F1\FF\E3\DB\ABK\961b\C4\957n\DC\A5W\AEA\82\192d\C8\8D\07\0E\1C8p\E0\DD\A7S\A6Q\A2Y\B2y\F2\F9\EF\C3\9B+V\ACE\8A\09\12$H\90=z\F4\F5\F7\F3\FB\EB\CB\8B\0B\16,X\B0}\FA\E9\CF\83\1B6l\D8\ADG\8E\00", align 1
@g0log = internal constant [256 x i8] c"\FF\00\01\19\022\1A\C6\03\DF3\EE\1Bh\C7K\04d\E0\0E4\8D\EF\81\1C\C1i\F8\C8\08Lq\05\8Ae/\E1$\0F!5\93\8E\DA\F0\12\82E\1D\B5\C2}j'\F9\B9\C9\9A\09xM\E4r\A6\06\BF\8Bbf\DD0\FD\E2\98%\B3\10\91\22\886\D0\94\CE\8F\96\DB\BD\F1\D2\13\\\838F@\1EB\B6\A3\C3H~nk:(T\FA\85\BA=\CA^\9B\9F\0A\15y+N\D4\E5\ACs\F3\A7W\07p\C0\F7\8C\80c\0DgJ\DE\ED1\C5\FE\18\E3\A5\99w&\B8\B4|\11D\92\D9# \89.7?\D1[\95\BC\CF\CD\90\87\97\B2\DC\FC\BEa\F2V\D3\AB\14*]\9E\84<9SGmA\A2\1F-C\D8\B7{\A4v\C4\17I\EC\7F\0Co\F6l\A1;R)\9DU\AA\FB`\86\B1\BB\CC>Z\CBY_\B0\9C\A9\A0Q\0B\F5\16\EBzu,\D7O\AE\D5\E9\E6\E7\AD\E8t\D6\F4\EA\A8PX\AF", align 1
@framebase = external global ptr, align 8
@framask = external global ptr, align 8
@rlens = external global ptr, align 8
@ECCLEVEL = external global i8, align 1
@fmtword = internal constant [32 x i32] [i32 30660, i32 29427, i32 32170, i32 30877, i32 26159, i32 25368, i32 27713, i32 26998, i32 21522, i32 20773, i32 24188, i32 23371, i32 17913, i32 16590, i32 20375, i32 19104, i32 13663, i32 12392, i32 16177, i32 14854, i32 9396, i32 8579, i32 11994, i32 11245, i32 5769, i32 5054, i32 7399, i32 6608, i32 1890, i32 597, i32 3340, i32 2107], align 4

; Function Attrs: nounwind ssp uwtable
define void @qrencode() #0 {
entry:
  %mindem = alloca i32, align 4
  %best = alloca i8, align 1
  %i = alloca i8, align 1
  %badness = alloca i32, align 4
  store i32 30000, ptr %mindem, align 4
  store i8 0, ptr %best, align 1
  call void @stringtoqr()
  call void @fillframe()
  %0 = load ptr, ptr @strinbuf, align 8
  %1 = load ptr, ptr @qrframe, align 8
  %2 = load i8, ptr @WD, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8, ptr @WDB, align 1
  %conv1 = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, %conv1
  %conv2 = sext i32 %mul to i64
  %4 = load ptr, ptr @strinbuf, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %conv2, i64 noundef %5) #4
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i8, ptr %i, align 1
  %conv3 = zext i8 %6 to i32
  %cmp = icmp slt i32 %conv3, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8, ptr %i, align 1
  call void @applymask(i8 noundef zeroext %7)
  %call5 = call i32 @badcheck()
  store i32 %call5, ptr %badness, align 4
  %8 = load i32, ptr %badness, align 4
  %9 = load i32, ptr %mindem, align 4
  %cmp6 = icmp ult i32 %8, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %badness, align 4
  store i32 %10, ptr %mindem, align 4
  %11 = load i8, ptr %i, align 1
  store i8 %11, ptr %best, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load i8, ptr %best, align 1
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 7
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %for.end

if.end12:                                         ; preds = %if.end
  %13 = load ptr, ptr @qrframe, align 8
  %14 = load ptr, ptr @strinbuf, align 8
  %15 = load i8, ptr @WD, align 1
  %conv13 = zext i8 %15 to i32
  %16 = load i8, ptr @WDB, align 1
  %conv14 = zext i8 %16 to i32
  %mul15 = mul nsw i32 %conv13, %conv14
  %conv16 = sext i32 %mul15 to i64
  %17 = load ptr, ptr @qrframe, align 8
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %17, i1 false, i1 true, i1 false)
  %call17 = call ptr @__memcpy_chk(ptr noundef %13, ptr noundef %14, i64 noundef %conv16, i64 noundef %18) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %19 = load i8, ptr %i, align 1
  %inc = add i8 %19, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then11, %for.cond
  %20 = load i8, ptr %best, align 1
  %conv18 = zext i8 %20 to i32
  %21 = load i8, ptr %i, align 1
  %conv19 = zext i8 %21 to i32
  %cmp20 = icmp ne i32 %conv18, %conv19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.end
  %22 = load i8, ptr %best, align 1
  call void @applymask(i8 noundef zeroext %22)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %23 = load i8, ptr %best, align 1
  call void @addfmt(i8 noundef zeroext %23)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @stringtoqr() #0 {
entry:
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %max = alloca i32, align 4
  %ecc = alloca ptr, align 8
  %dat = alloca ptr, align 8
  %j = alloca i32, align 4
  %0 = load ptr, ptr @strinbuf, align 8
  %call = call i64 @strlen(ptr noundef %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size, align 4
  %1 = load i8, ptr @datablkw, align 1
  %conv1 = zext i8 %1 to i32
  %2 = load i8, ptr @neccblk1, align 1
  %conv2 = zext i8 %2 to i32
  %3 = load i8, ptr @neccblk2, align 1
  %conv3 = zext i8 %3 to i32
  %add = add nsw i32 %conv2, %conv3
  %mul = mul nsw i32 %conv1, %add
  %4 = load i8, ptr @neccblk2, align 1
  %conv4 = zext i8 %4 to i32
  %add5 = add nsw i32 %mul, %conv4
  store i32 %add5, ptr %max, align 4
  %5 = load i32, ptr %size, align 4
  %6 = load i32, ptr %max, align 4
  %sub = sub i32 %6, 2
  %cmp = icmp uge i32 %5, %sub
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %max, align 4
  %sub7 = sub i32 %7, 2
  store i32 %sub7, ptr %size, align 4
  %8 = load i8, ptr @VERSION, align 1
  %conv8 = zext i8 %8 to i32
  %cmp9 = icmp sgt i32 %conv8, 9
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %9 = load i32, ptr %size, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  %10 = load i32, ptr %size, align 4
  store i32 %10, ptr %i, align 4
  %11 = load i8, ptr @VERSION, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp sgt i32 %conv13, 9
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %12 = load ptr, ptr @strinbuf, align 8
  %13 = load i32, ptr %i, align 4
  %add17 = add i32 %13, 2
  %idxprom = zext i32 %add17 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %14 = load i32, ptr %i, align 4
  %dec18 = add i32 %14, -1
  store i32 %dec18, ptr %i, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr @strinbuf, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom19 = zext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 %idxprom19
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  %shl = shl i32 %conv21, 4
  %18 = load ptr, ptr @strinbuf, align 8
  %19 = load i32, ptr %i, align 4
  %add22 = add i32 %19, 3
  %idxprom23 = zext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 %idxprom23
  %20 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %20 to i32
  %or = or i32 %conv25, %shl
  %conv26 = trunc i32 %or to i8
  store i8 %conv26, ptr %arrayidx24, align 1
  %21 = load ptr, ptr @strinbuf, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom27 = zext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %21, i64 %idxprom27
  %23 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %23 to i32
  %shr = ashr i32 %conv29, 4
  %conv30 = trunc i32 %shr to i8
  %24 = load ptr, ptr @strinbuf, align 8
  %25 = load i32, ptr %i, align 4
  %add31 = add i32 %25, 2
  %idxprom32 = zext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %24, i64 %idxprom32
  store i8 %conv30, ptr %arrayidx33, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %26 = load i32, ptr %size, align 4
  %shl34 = shl i32 %26, 4
  %27 = load ptr, ptr @strinbuf, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 2
  %28 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %28 to i32
  %or37 = or i32 %conv36, %shl34
  %conv38 = trunc i32 %or37 to i8
  store i8 %conv38, ptr %arrayidx35, align 1
  %29 = load i32, ptr %size, align 4
  %shr39 = lshr i32 %29, 4
  %conv40 = trunc i32 %shr39 to i8
  %30 = load ptr, ptr @strinbuf, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %conv40, ptr %arrayidx41, align 1
  %31 = load i32, ptr %size, align 4
  %shr42 = lshr i32 %31, 12
  %or43 = or i32 64, %shr42
  %conv44 = trunc i32 %or43 to i8
  %32 = load ptr, ptr @strinbuf, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %32, i64 0
  store i8 %conv44, ptr %arrayidx45, align 1
  br label %if.end81

if.else:                                          ; preds = %if.end12
  %33 = load ptr, ptr @strinbuf, align 8
  %34 = load i32, ptr %i, align 4
  %add46 = add i32 %34, 1
  %idxprom47 = zext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %33, i64 %idxprom47
  store i8 0, ptr %arrayidx48, align 1
  br label %while.cond49

while.cond49:                                     ; preds = %while.body52, %if.else
  %35 = load i32, ptr %i, align 4
  %dec50 = add i32 %35, -1
  store i32 %dec50, ptr %i, align 4
  %tobool51 = icmp ne i32 %35, 0
  br i1 %tobool51, label %while.body52, label %while.end71

while.body52:                                     ; preds = %while.cond49
  %36 = load ptr, ptr @strinbuf, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom53 = zext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %36, i64 %idxprom53
  %38 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %38 to i32
  %shl56 = shl i32 %conv55, 4
  %39 = load ptr, ptr @strinbuf, align 8
  %40 = load i32, ptr %i, align 4
  %add57 = add i32 %40, 2
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %39, i64 %idxprom58
  %41 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %41 to i32
  %or61 = or i32 %conv60, %shl56
  %conv62 = trunc i32 %or61 to i8
  store i8 %conv62, ptr %arrayidx59, align 1
  %42 = load ptr, ptr @strinbuf, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom63 = zext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %42, i64 %idxprom63
  %44 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %44 to i32
  %shr66 = ashr i32 %conv65, 4
  %conv67 = trunc i32 %shr66 to i8
  %45 = load ptr, ptr @strinbuf, align 8
  %46 = load i32, ptr %i, align 4
  %add68 = add i32 %46, 1
  %idxprom69 = zext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %45, i64 %idxprom69
  store i8 %conv67, ptr %arrayidx70, align 1
  br label %while.cond49, !llvm.loop !9

while.end71:                                      ; preds = %while.cond49
  %47 = load i32, ptr %size, align 4
  %shl72 = shl i32 %47, 4
  %48 = load ptr, ptr @strinbuf, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %49 to i32
  %or75 = or i32 %conv74, %shl72
  %conv76 = trunc i32 %or75 to i8
  store i8 %conv76, ptr %arrayidx73, align 1
  %50 = load i32, ptr %size, align 4
  %shr77 = lshr i32 %50, 4
  %or78 = or i32 64, %shr77
  %conv79 = trunc i32 %or78 to i8
  %51 = load ptr, ptr @strinbuf, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %51, i64 0
  store i8 %conv79, ptr %arrayidx80, align 1
  br label %if.end81

if.end81:                                         ; preds = %while.end71, %while.end
  %52 = load i32, ptr %size, align 4
  %add82 = add i32 %52, 3
  %53 = load i8, ptr @VERSION, align 1
  %conv83 = zext i8 %53 to i32
  %cmp84 = icmp slt i32 %conv83, 10
  %conv85 = zext i1 %cmp84 to i32
  %sub86 = sub i32 %add82, %conv85
  store i32 %sub86, ptr %i, align 4
  br label %while.cond87

while.cond87:                                     ; preds = %while.body90, %if.end81
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %max, align 4
  %cmp88 = icmp ult i32 %54, %55
  br i1 %cmp88, label %while.body90, label %while.end96

while.body90:                                     ; preds = %while.cond87
  %56 = load ptr, ptr @strinbuf, align 8
  %57 = load i32, ptr %i, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %i, align 4
  %idxprom91 = zext i32 %57 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %56, i64 %idxprom91
  store i8 -20, ptr %arrayidx92, align 1
  %58 = load ptr, ptr @strinbuf, align 8
  %59 = load i32, ptr %i, align 4
  %inc93 = add i32 %59, 1
  store i32 %inc93, ptr %i, align 4
  %idxprom94 = zext i32 %59 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %58, i64 %idxprom94
  store i8 17, ptr %arrayidx95, align 1
  br label %while.cond87, !llvm.loop !10

while.end96:                                      ; preds = %while.cond87
  %60 = load ptr, ptr @strinbuf, align 8
  %61 = load i32, ptr %max, align 4
  %idxprom97 = zext i32 %61 to i64
  %arrayidx98 = getelementptr inbounds i8, ptr %60, i64 %idxprom97
  store ptr %arrayidx98, ptr %ecc, align 8
  %62 = load ptr, ptr @strinbuf, align 8
  store ptr %62, ptr %dat, align 8
  %63 = load i8, ptr @eccblkwid, align 1
  %64 = load ptr, ptr @qrframe, align 8
  call void @initrspoly(i8 noundef zeroext %63, ptr noundef %64)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end96
  %65 = load i32, ptr %i, align 4
  %66 = load i8, ptr @neccblk1, align 1
  %conv99 = zext i8 %66 to i32
  %cmp100 = icmp ult i32 %65, %conv99
  br i1 %cmp100, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load ptr, ptr %dat, align 8
  %68 = load i8, ptr @datablkw, align 1
  %69 = load ptr, ptr %ecc, align 8
  %70 = load i8, ptr @eccblkwid, align 1
  %71 = load ptr, ptr @qrframe, align 8
  call void @appendrs(ptr noundef %67, i8 noundef zeroext %68, ptr noundef %69, i8 noundef zeroext %70, ptr noundef %71)
  %72 = load i8, ptr @datablkw, align 1
  %conv102 = zext i8 %72 to i32
  %73 = load ptr, ptr %dat, align 8
  %idx.ext = sext i32 %conv102 to i64
  %add.ptr = getelementptr inbounds i8, ptr %73, i64 %idx.ext
  store ptr %add.ptr, ptr %dat, align 8
  %74 = load i8, ptr @eccblkwid, align 1
  %conv103 = zext i8 %74 to i32
  %75 = load ptr, ptr %ecc, align 8
  %idx.ext104 = sext i32 %conv103 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %75, i64 %idx.ext104
  store ptr %add.ptr105, ptr %ecc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, ptr %i, align 4
  %inc106 = add i32 %76, 1
  store i32 %inc106, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc122, %for.end
  %77 = load i32, ptr %i, align 4
  %78 = load i8, ptr @neccblk2, align 1
  %conv108 = zext i8 %78 to i32
  %cmp109 = icmp ult i32 %77, %conv108
  br i1 %cmp109, label %for.body111, label %for.end124

for.body111:                                      ; preds = %for.cond107
  %79 = load ptr, ptr %dat, align 8
  %80 = load i8, ptr @datablkw, align 1
  %conv112 = zext i8 %80 to i32
  %add113 = add nsw i32 %conv112, 1
  %conv114 = trunc i32 %add113 to i8
  %81 = load ptr, ptr %ecc, align 8
  %82 = load i8, ptr @eccblkwid, align 1
  %83 = load ptr, ptr @qrframe, align 8
  call void @appendrs(ptr noundef %79, i8 noundef zeroext %conv114, ptr noundef %81, i8 noundef zeroext %82, ptr noundef %83)
  %84 = load i8, ptr @datablkw, align 1
  %conv115 = zext i8 %84 to i32
  %add116 = add nsw i32 %conv115, 1
  %85 = load ptr, ptr %dat, align 8
  %idx.ext117 = sext i32 %add116 to i64
  %add.ptr118 = getelementptr inbounds i8, ptr %85, i64 %idx.ext117
  store ptr %add.ptr118, ptr %dat, align 8
  %86 = load i8, ptr @eccblkwid, align 1
  %conv119 = zext i8 %86 to i32
  %87 = load ptr, ptr %ecc, align 8
  %idx.ext120 = sext i32 %conv119 to i64
  %add.ptr121 = getelementptr inbounds i8, ptr %87, i64 %idx.ext120
  store ptr %add.ptr121, ptr %ecc, align 8
  br label %for.inc122

for.inc122:                                       ; preds = %for.body111
  %88 = load i32, ptr %i, align 4
  %inc123 = add i32 %88, 1
  store i32 %inc123, ptr %i, align 4
  br label %for.cond107, !llvm.loop !12

for.end124:                                       ; preds = %for.cond107
  %89 = load ptr, ptr @qrframe, align 8
  store ptr %89, ptr %dat, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc162, %for.end124
  %90 = load i32, ptr %i, align 4
  %91 = load i8, ptr @datablkw, align 1
  %conv126 = zext i8 %91 to i32
  %cmp127 = icmp ult i32 %90, %conv126
  br i1 %cmp127, label %for.body129, label %for.end164

for.body129:                                      ; preds = %for.cond125
  store i32 0, ptr %j, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc140, %for.body129
  %92 = load i32, ptr %j, align 4
  %93 = load i8, ptr @neccblk1, align 1
  %conv131 = zext i8 %93 to i32
  %cmp132 = icmp ult i32 %92, %conv131
  br i1 %cmp132, label %for.body134, label %for.end142

for.body134:                                      ; preds = %for.cond130
  %94 = load ptr, ptr @strinbuf, align 8
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %j, align 4
  %97 = load i8, ptr @datablkw, align 1
  %conv135 = zext i8 %97 to i32
  %mul136 = mul i32 %96, %conv135
  %add137 = add i32 %95, %mul136
  %idxprom138 = zext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %94, i64 %idxprom138
  %98 = load i8, ptr %arrayidx139, align 1
  %99 = load ptr, ptr %dat, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %99, i32 1
  store ptr %incdec.ptr, ptr %dat, align 8
  store i8 %98, ptr %99, align 1
  br label %for.inc140

for.inc140:                                       ; preds = %for.body134
  %100 = load i32, ptr %j, align 4
  %inc141 = add i32 %100, 1
  store i32 %inc141, ptr %j, align 4
  br label %for.cond130, !llvm.loop !13

for.end142:                                       ; preds = %for.cond130
  store i32 0, ptr %j, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc159, %for.end142
  %101 = load i32, ptr %j, align 4
  %102 = load i8, ptr @neccblk2, align 1
  %conv144 = zext i8 %102 to i32
  %cmp145 = icmp ult i32 %101, %conv144
  br i1 %cmp145, label %for.body147, label %for.end161

for.body147:                                      ; preds = %for.cond143
  %103 = load ptr, ptr @strinbuf, align 8
  %104 = load i8, ptr @neccblk1, align 1
  %conv148 = zext i8 %104 to i32
  %105 = load i8, ptr @datablkw, align 1
  %conv149 = zext i8 %105 to i32
  %mul150 = mul nsw i32 %conv148, %conv149
  %106 = load i32, ptr %i, align 4
  %add151 = add i32 %mul150, %106
  %107 = load i32, ptr %j, align 4
  %108 = load i8, ptr @datablkw, align 1
  %conv152 = zext i8 %108 to i32
  %add153 = add nsw i32 %conv152, 1
  %mul154 = mul i32 %107, %add153
  %add155 = add i32 %add151, %mul154
  %idxprom156 = zext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds i8, ptr %103, i64 %idxprom156
  %109 = load i8, ptr %arrayidx157, align 1
  %110 = load ptr, ptr %dat, align 8
  %incdec.ptr158 = getelementptr inbounds i8, ptr %110, i32 1
  store ptr %incdec.ptr158, ptr %dat, align 8
  store i8 %109, ptr %110, align 1
  br label %for.inc159

for.inc159:                                       ; preds = %for.body147
  %111 = load i32, ptr %j, align 4
  %inc160 = add i32 %111, 1
  store i32 %inc160, ptr %j, align 4
  br label %for.cond143, !llvm.loop !14

for.end161:                                       ; preds = %for.cond143
  br label %for.inc162

for.inc162:                                       ; preds = %for.end161
  %112 = load i32, ptr %i, align 4
  %inc163 = add i32 %112, 1
  store i32 %inc163, ptr %i, align 4
  br label %for.cond125, !llvm.loop !15

for.end164:                                       ; preds = %for.cond125
  store i32 0, ptr %j, align 4
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc181, %for.end164
  %113 = load i32, ptr %j, align 4
  %114 = load i8, ptr @neccblk2, align 1
  %conv166 = zext i8 %114 to i32
  %cmp167 = icmp ult i32 %113, %conv166
  br i1 %cmp167, label %for.body169, label %for.end183

for.body169:                                      ; preds = %for.cond165
  %115 = load ptr, ptr @strinbuf, align 8
  %116 = load i8, ptr @neccblk1, align 1
  %conv170 = zext i8 %116 to i32
  %117 = load i8, ptr @datablkw, align 1
  %conv171 = zext i8 %117 to i32
  %mul172 = mul nsw i32 %conv170, %conv171
  %118 = load i32, ptr %i, align 4
  %add173 = add i32 %mul172, %118
  %119 = load i32, ptr %j, align 4
  %120 = load i8, ptr @datablkw, align 1
  %conv174 = zext i8 %120 to i32
  %add175 = add nsw i32 %conv174, 1
  %mul176 = mul i32 %119, %add175
  %add177 = add i32 %add173, %mul176
  %idxprom178 = zext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds i8, ptr %115, i64 %idxprom178
  %121 = load i8, ptr %arrayidx179, align 1
  %122 = load ptr, ptr %dat, align 8
  %incdec.ptr180 = getelementptr inbounds i8, ptr %122, i32 1
  store ptr %incdec.ptr180, ptr %dat, align 8
  store i8 %121, ptr %122, align 1
  br label %for.inc181

for.inc181:                                       ; preds = %for.body169
  %123 = load i32, ptr %j, align 4
  %inc182 = add i32 %123, 1
  store i32 %inc182, ptr %j, align 4
  br label %for.cond165, !llvm.loop !16

for.end183:                                       ; preds = %for.cond165
  store i32 0, ptr %i, align 4
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc206, %for.end183
  %124 = load i32, ptr %i, align 4
  %125 = load i8, ptr @eccblkwid, align 1
  %conv185 = zext i8 %125 to i32
  %cmp186 = icmp ult i32 %124, %conv185
  br i1 %cmp186, label %for.body188, label %for.end208

for.body188:                                      ; preds = %for.cond184
  store i32 0, ptr %j, align 4
  br label %for.cond189

for.cond189:                                      ; preds = %for.inc203, %for.body188
  %126 = load i32, ptr %j, align 4
  %127 = load i8, ptr @neccblk1, align 1
  %conv190 = zext i8 %127 to i32
  %128 = load i8, ptr @neccblk2, align 1
  %conv191 = zext i8 %128 to i32
  %add192 = add nsw i32 %conv190, %conv191
  %cmp193 = icmp ult i32 %126, %add192
  br i1 %cmp193, label %for.body195, label %for.end205

for.body195:                                      ; preds = %for.cond189
  %129 = load ptr, ptr @strinbuf, align 8
  %130 = load i32, ptr %max, align 4
  %131 = load i32, ptr %i, align 4
  %add196 = add i32 %130, %131
  %132 = load i32, ptr %j, align 4
  %133 = load i8, ptr @eccblkwid, align 1
  %conv197 = zext i8 %133 to i32
  %mul198 = mul i32 %132, %conv197
  %add199 = add i32 %add196, %mul198
  %idxprom200 = zext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds i8, ptr %129, i64 %idxprom200
  %134 = load i8, ptr %arrayidx201, align 1
  %135 = load ptr, ptr %dat, align 8
  %incdec.ptr202 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr202, ptr %dat, align 8
  store i8 %134, ptr %135, align 1
  br label %for.inc203

for.inc203:                                       ; preds = %for.body195
  %136 = load i32, ptr %j, align 4
  %inc204 = add i32 %136, 1
  store i32 %inc204, ptr %j, align 4
  br label %for.cond189, !llvm.loop !17

for.end205:                                       ; preds = %for.cond189
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %137 = load i32, ptr %i, align 4
  %inc207 = add i32 %137, 1
  store i32 %inc207, ptr %i, align 4
  br label %for.cond184, !llvm.loop !18

for.end208:                                       ; preds = %for.cond184
  %138 = load ptr, ptr @strinbuf, align 8
  %139 = load ptr, ptr @qrframe, align 8
  %140 = load i32, ptr %max, align 4
  %141 = load i8, ptr @eccblkwid, align 1
  %conv209 = zext i8 %141 to i32
  %142 = load i8, ptr @neccblk1, align 1
  %conv210 = zext i8 %142 to i32
  %143 = load i8, ptr @neccblk2, align 1
  %conv211 = zext i8 %143 to i32
  %add212 = add nsw i32 %conv210, %conv211
  %mul213 = mul nsw i32 %conv209, %add212
  %add214 = add i32 %140, %mul213
  %conv215 = zext i32 %add214 to i64
  %144 = load ptr, ptr @strinbuf, align 8
  %145 = call i64 @llvm.objectsize.i64.p0(ptr %144, i1 false, i1 true, i1 false)
  %call216 = call ptr @__memcpy_chk(ptr noundef %138, ptr noundef %139, i64 noundef %conv215, i64 noundef %145) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @fillframe() #0 {
entry:
  %i = alloca i32, align 4
  %d = alloca i8, align 1
  %j = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %ffdecy = alloca i8, align 1
  %ffgohv = alloca i8, align 1
  %0 = load ptr, ptr @qrframe, align 8
  %1 = load ptr, ptr @framebase, align 8
  %2 = load i8, ptr @WDB, align 1
  %conv = zext i8 %2 to i32
  %3 = load i8, ptr @WD, align 1
  %conv1 = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, %conv1
  %conv2 = sext i32 %mul to i64
  %4 = load ptr, ptr @qrframe, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %conv2, i64 noundef %5) #4
  %6 = load i8, ptr @WD, align 1
  %conv3 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv3, 1
  %conv4 = trunc i32 %sub to i8
  store i8 %conv4, ptr %y, align 1
  store i8 %conv4, ptr %x, align 1
  store i8 1, ptr %ffdecy, align 1
  store i8 1, ptr %ffgohv, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc91, %entry
  %7 = load i32, ptr %i, align 4
  %8 = load i8, ptr @datablkw, align 1
  %conv5 = zext i8 %8 to i32
  %9 = load i8, ptr @eccblkwid, align 1
  %conv6 = zext i8 %9 to i32
  %add = add nsw i32 %conv5, %conv6
  %10 = load i8, ptr @neccblk1, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load i8, ptr @neccblk2, align 1
  %conv8 = zext i8 %11 to i32
  %add9 = add nsw i32 %conv7, %conv8
  %mul10 = mul nsw i32 %add, %add9
  %12 = load i8, ptr @neccblk2, align 1
  %conv11 = zext i8 %12 to i32
  %add12 = add nsw i32 %mul10, %conv11
  %cmp = icmp slt i32 %7, %add12
  br i1 %cmp, label %for.body, label %for.end93

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr @strinbuf, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  store i8 %15, ptr %d, align 1
  store i8 0, ptr %j, align 1
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %16 = load i8, ptr %j, align 1
  %conv15 = zext i8 %16 to i32
  %cmp16 = icmp slt i32 %conv15, 8
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond14
  %17 = load i8, ptr %d, align 1
  %conv19 = zext i8 %17 to i32
  %and = and i32 128, %conv19
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %18 = load i8, ptr %x, align 1
  %conv20 = zext i8 %18 to i32
  %and21 = and i32 %conv20, 7
  %shr = ashr i32 128, %and21
  %19 = load ptr, ptr @qrframe, align 8
  %20 = load i8, ptr %x, align 1
  %conv22 = zext i8 %20 to i32
  %shr23 = ashr i32 %conv22, 3
  %21 = load i8, ptr %y, align 1
  %conv24 = zext i8 %21 to i32
  %22 = load i8, ptr @WDB, align 1
  %conv25 = zext i8 %22 to i32
  %mul26 = mul nsw i32 %conv24, %conv25
  %add27 = add nsw i32 %shr23, %mul26
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %19, i64 %idxprom28
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %or = or i32 %conv30, %shr
  %conv31 = trunc i32 %or to i8
  store i8 %conv31, ptr %arrayidx29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %24 = load i8, ptr %ffgohv, align 1
  %tobool32 = icmp ne i8 %24, 0
  br i1 %tobool32, label %if.then33, label %if.else

if.then33:                                        ; preds = %do.body
  %25 = load i8, ptr %x, align 1
  %dec = add i8 %25, -1
  store i8 %dec, ptr %x, align 1
  br label %if.end81

if.else:                                          ; preds = %do.body
  %26 = load i8, ptr %x, align 1
  %inc = add i8 %26, 1
  store i8 %inc, ptr %x, align 1
  %27 = load i8, ptr %ffdecy, align 1
  %tobool34 = icmp ne i8 %27, 0
  br i1 %tobool34, label %if.then35, label %if.else54

if.then35:                                        ; preds = %if.else
  %28 = load i8, ptr %y, align 1
  %conv36 = zext i8 %28 to i32
  %cmp37 = icmp ne i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.then35
  %29 = load i8, ptr %y, align 1
  %dec40 = add i8 %29, -1
  store i8 %dec40, ptr %y, align 1
  br label %if.end53

if.else41:                                        ; preds = %if.then35
  %30 = load i8, ptr %x, align 1
  %conv42 = zext i8 %30 to i32
  %sub43 = sub nsw i32 %conv42, 2
  %conv44 = trunc i32 %sub43 to i8
  store i8 %conv44, ptr %x, align 1
  %31 = load i8, ptr %ffdecy, align 1
  %tobool45 = icmp ne i8 %31, 0
  %lnot = xor i1 %tobool45, true
  %lnot.ext = zext i1 %lnot to i32
  %conv46 = trunc i32 %lnot.ext to i8
  store i8 %conv46, ptr %ffdecy, align 1
  %32 = load i8, ptr %x, align 1
  %conv47 = zext i8 %32 to i32
  %cmp48 = icmp eq i32 %conv47, 6
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else41
  %33 = load i8, ptr %x, align 1
  %dec51 = add i8 %33, -1
  store i8 %dec51, ptr %x, align 1
  store i8 9, ptr %y, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.else41
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then39
  br label %if.end80

if.else54:                                        ; preds = %if.else
  %34 = load i8, ptr %y, align 1
  %conv55 = zext i8 %34 to i32
  %35 = load i8, ptr @WD, align 1
  %conv56 = zext i8 %35 to i32
  %sub57 = sub nsw i32 %conv56, 1
  %cmp58 = icmp ne i32 %conv55, %sub57
  br i1 %cmp58, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.else54
  %36 = load i8, ptr %y, align 1
  %inc61 = add i8 %36, 1
  store i8 %inc61, ptr %y, align 1
  br label %if.end79

if.else62:                                        ; preds = %if.else54
  %37 = load i8, ptr %x, align 1
  %conv63 = zext i8 %37 to i32
  %sub64 = sub nsw i32 %conv63, 2
  %conv65 = trunc i32 %sub64 to i8
  store i8 %conv65, ptr %x, align 1
  %38 = load i8, ptr %ffdecy, align 1
  %tobool66 = icmp ne i8 %38, 0
  %lnot67 = xor i1 %tobool66, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = trunc i32 %lnot.ext68 to i8
  store i8 %conv69, ptr %ffdecy, align 1
  %39 = load i8, ptr %x, align 1
  %conv70 = zext i8 %39 to i32
  %cmp71 = icmp eq i32 %conv70, 6
  br i1 %cmp71, label %if.then73, label %if.end78

if.then73:                                        ; preds = %if.else62
  %40 = load i8, ptr %x, align 1
  %dec74 = add i8 %40, -1
  store i8 %dec74, ptr %x, align 1
  %41 = load i8, ptr %y, align 1
  %conv75 = zext i8 %41 to i32
  %sub76 = sub nsw i32 %conv75, 8
  %conv77 = trunc i32 %sub76 to i8
  store i8 %conv77, ptr %y, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.else62
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then60
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end53
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then33
  %42 = load i8, ptr %ffgohv, align 1
  %tobool82 = icmp ne i8 %42, 0
  %lnot83 = xor i1 %tobool82, true
  %lnot.ext84 = zext i1 %lnot83 to i32
  %conv85 = trunc i32 %lnot.ext84 to i8
  store i8 %conv85, ptr %ffgohv, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end81
  %43 = load i8, ptr %x, align 1
  %44 = load i8, ptr %y, align 1
  %call86 = call zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_qrduino_qrencode_0(i8 noundef zeroext %43, i8 noundef zeroext %44)
  %tobool87 = icmp ne i8 %call86, 0
  br i1 %tobool87, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %45 = load i8, ptr %j, align 1
  %inc88 = add i8 %45, 1
  store i8 %inc88, ptr %j, align 1
  %46 = load i8, ptr %d, align 1
  %conv89 = zext i8 %46 to i32
  %shl = shl i32 %conv89, 1
  %conv90 = trunc i32 %shl to i8
  store i8 %conv90, ptr %d, align 1
  br label %for.cond14, !llvm.loop !20

for.end:                                          ; preds = %for.cond14
  br label %for.inc91

for.inc91:                                        ; preds = %for.end
  %47 = load i32, ptr %i, align 4
  %inc92 = add nsw i32 %47, 1
  store i32 %inc92, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end93:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nounwind ssp uwtable
define internal void @applymask(i8 noundef zeroext %m) #0 {
entry:
  %m.addr = alloca i8, align 1
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %r3x = alloca i8, align 1
  %r3y = alloca i8, align 1
  store i8 %m, ptr %m.addr, align 1
  %0 = load i8, ptr %m.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb66
    i32 3, label %sw.bb111
    i32 4, label %sw.bb162
    i32 5, label %sw.bb213
    i32 6, label %sw.bb278
    i32 7, label %sw.bb341
  ]

sw.bb:                                            ; preds = %entry
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %sw.bb
  %1 = load i8, ptr %y, align 1
  %conv1 = zext i8 %1 to i32
  %2 = load i8, ptr @WD, align 1
  %conv2 = zext i8 %2 to i32
  %cmp = icmp slt i32 %conv1, %conv2
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %3 = load i8, ptr %x, align 1
  %conv5 = zext i8 %3 to i32
  %4 = load i8, ptr @WD, align 1
  %conv6 = zext i8 %4 to i32
  %cmp7 = icmp slt i32 %conv5, %conv6
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond4
  %5 = load i8, ptr %x, align 1
  %conv10 = zext i8 %5 to i32
  %6 = load i8, ptr %y, align 1
  %conv11 = zext i8 %6 to i32
  %add = add nsw i32 %conv10, %conv11
  %and = and i32 %add, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body9
  %7 = load i8, ptr %x, align 1
  %8 = load i8, ptr %y, align 1
  %call = call zeroext i8 @ismasked(i8 noundef zeroext %7, i8 noundef zeroext %8)
  %tobool12 = icmp ne i8 %call, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i8, ptr %x, align 1
  %conv13 = zext i8 %9 to i32
  %and14 = and i32 %conv13, 7
  %shr = ashr i32 128, %and14
  %10 = load ptr, ptr @qrframe, align 8
  %11 = load i8, ptr %x, align 1
  %conv15 = zext i8 %11 to i32
  %shr16 = ashr i32 %conv15, 3
  %12 = load i8, ptr %y, align 1
  %conv17 = zext i8 %12 to i32
  %13 = load i8, ptr @WDB, align 1
  %conv18 = zext i8 %13 to i32
  %mul = mul nsw i32 %conv17, %conv18
  %add19 = add nsw i32 %shr16, %mul
  %idxprom = sext i32 %add19 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %14 to i32
  %xor = xor i32 %conv20, %shr
  %conv21 = trunc i32 %xor to i8
  store i8 %conv21, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i8, ptr %x, align 1
  %inc = add i8 %15, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond4, !llvm.loop !22

for.end:                                          ; preds = %for.cond4
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %16 = load i8, ptr %y, align 1
  %inc23 = add i8 %16, 1
  store i8 %inc23, ptr %y, align 1
  br label %for.cond, !llvm.loop !23

for.end24:                                        ; preds = %for.cond
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  store i8 0, ptr %y, align 1
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc63, %sw.bb25
  %17 = load i8, ptr %y, align 1
  %conv27 = zext i8 %17 to i32
  %18 = load i8, ptr @WD, align 1
  %conv28 = zext i8 %18 to i32
  %cmp29 = icmp slt i32 %conv27, %conv28
  br i1 %cmp29, label %for.body31, label %for.end65

for.body31:                                       ; preds = %for.cond26
  store i8 0, ptr %x, align 1
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc60, %for.body31
  %19 = load i8, ptr %x, align 1
  %conv33 = zext i8 %19 to i32
  %20 = load i8, ptr @WD, align 1
  %conv34 = zext i8 %20 to i32
  %cmp35 = icmp slt i32 %conv33, %conv34
  br i1 %cmp35, label %for.body37, label %for.end62

for.body37:                                       ; preds = %for.cond32
  %21 = load i8, ptr %y, align 1
  %conv38 = zext i8 %21 to i32
  %and39 = and i32 %conv38, 1
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.end59, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %for.body37
  %22 = load i8, ptr %x, align 1
  %23 = load i8, ptr %y, align 1
  %call42 = call zeroext i8 @ismasked(i8 noundef zeroext %22, i8 noundef zeroext %23)
  %tobool43 = icmp ne i8 %call42, 0
  br i1 %tobool43, label %if.end59, label %if.then44

if.then44:                                        ; preds = %land.lhs.true41
  %24 = load i8, ptr %x, align 1
  %conv45 = zext i8 %24 to i32
  %and46 = and i32 %conv45, 7
  %shr47 = ashr i32 128, %and46
  %25 = load ptr, ptr @qrframe, align 8
  %26 = load i8, ptr %x, align 1
  %conv48 = zext i8 %26 to i32
  %shr49 = ashr i32 %conv48, 3
  %27 = load i8, ptr %y, align 1
  %conv50 = zext i8 %27 to i32
  %28 = load i8, ptr @WDB, align 1
  %conv51 = zext i8 %28 to i32
  %mul52 = mul nsw i32 %conv50, %conv51
  %add53 = add nsw i32 %shr49, %mul52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %25, i64 %idxprom54
  %29 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %29 to i32
  %xor57 = xor i32 %conv56, %shr47
  %conv58 = trunc i32 %xor57 to i8
  store i8 %conv58, ptr %arrayidx55, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then44, %land.lhs.true41, %for.body37
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59
  %30 = load i8, ptr %x, align 1
  %inc61 = add i8 %30, 1
  store i8 %inc61, ptr %x, align 1
  br label %for.cond32, !llvm.loop !24

for.end62:                                        ; preds = %for.cond32
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %31 = load i8, ptr %y, align 1
  %inc64 = add i8 %31, 1
  store i8 %inc64, ptr %y, align 1
  br label %for.cond26, !llvm.loop !25

for.end65:                                        ; preds = %for.cond26
  br label %sw.epilog

sw.bb66:                                          ; preds = %entry
  store i8 0, ptr %y, align 1
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc108, %sw.bb66
  %32 = load i8, ptr %y, align 1
  %conv68 = zext i8 %32 to i32
  %33 = load i8, ptr @WD, align 1
  %conv69 = zext i8 %33 to i32
  %cmp70 = icmp slt i32 %conv68, %conv69
  br i1 %cmp70, label %for.body72, label %for.end110

for.body72:                                       ; preds = %for.cond67
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc104, %for.body72
  %34 = load i8, ptr %x, align 1
  %conv74 = zext i8 %34 to i32
  %35 = load i8, ptr @WD, align 1
  %conv75 = zext i8 %35 to i32
  %cmp76 = icmp slt i32 %conv74, %conv75
  br i1 %cmp76, label %for.body78, label %for.end107

for.body78:                                       ; preds = %for.cond73
  %36 = load i8, ptr %r3x, align 1
  %conv79 = zext i8 %36 to i32
  %cmp80 = icmp eq i32 %conv79, 3
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %for.body78
  store i8 0, ptr %r3x, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %for.body78
  %37 = load i8, ptr %r3x, align 1
  %tobool84 = icmp ne i8 %37, 0
  br i1 %tobool84, label %if.end103, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.end83
  %38 = load i8, ptr %x, align 1
  %39 = load i8, ptr %y, align 1
  %call86 = call zeroext i8 @ismasked(i8 noundef zeroext %38, i8 noundef zeroext %39)
  %tobool87 = icmp ne i8 %call86, 0
  br i1 %tobool87, label %if.end103, label %if.then88

if.then88:                                        ; preds = %land.lhs.true85
  %40 = load i8, ptr %x, align 1
  %conv89 = zext i8 %40 to i32
  %and90 = and i32 %conv89, 7
  %shr91 = ashr i32 128, %and90
  %41 = load ptr, ptr @qrframe, align 8
  %42 = load i8, ptr %x, align 1
  %conv92 = zext i8 %42 to i32
  %shr93 = ashr i32 %conv92, 3
  %43 = load i8, ptr %y, align 1
  %conv94 = zext i8 %43 to i32
  %44 = load i8, ptr @WDB, align 1
  %conv95 = zext i8 %44 to i32
  %mul96 = mul nsw i32 %conv94, %conv95
  %add97 = add nsw i32 %shr93, %mul96
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds i8, ptr %41, i64 %idxprom98
  %45 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %45 to i32
  %xor101 = xor i32 %conv100, %shr91
  %conv102 = trunc i32 %xor101 to i8
  store i8 %conv102, ptr %arrayidx99, align 1
  br label %if.end103

if.end103:                                        ; preds = %if.then88, %land.lhs.true85, %if.end83
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %46 = load i8, ptr %x, align 1
  %inc105 = add i8 %46, 1
  store i8 %inc105, ptr %x, align 1
  %47 = load i8, ptr %r3x, align 1
  %inc106 = add i8 %47, 1
  store i8 %inc106, ptr %r3x, align 1
  br label %for.cond73, !llvm.loop !26

for.end107:                                       ; preds = %for.cond73
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %48 = load i8, ptr %y, align 1
  %inc109 = add i8 %48, 1
  store i8 %inc109, ptr %y, align 1
  br label %for.cond67, !llvm.loop !27

for.end110:                                       ; preds = %for.cond67
  br label %sw.epilog

sw.bb111:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc158, %sw.bb111
  %49 = load i8, ptr %y, align 1
  %conv113 = zext i8 %49 to i32
  %50 = load i8, ptr @WD, align 1
  %conv114 = zext i8 %50 to i32
  %cmp115 = icmp slt i32 %conv113, %conv114
  br i1 %cmp115, label %for.body117, label %for.end161

for.body117:                                      ; preds = %for.cond112
  %51 = load i8, ptr %r3y, align 1
  %conv118 = zext i8 %51 to i32
  %cmp119 = icmp eq i32 %conv118, 3
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %for.body117
  store i8 0, ptr %r3y, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %for.body117
  %52 = load i8, ptr %r3y, align 1
  store i8 %52, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc154, %if.end122
  %53 = load i8, ptr %x, align 1
  %conv124 = zext i8 %53 to i32
  %54 = load i8, ptr @WD, align 1
  %conv125 = zext i8 %54 to i32
  %cmp126 = icmp slt i32 %conv124, %conv125
  br i1 %cmp126, label %for.body128, label %for.end157

for.body128:                                      ; preds = %for.cond123
  %55 = load i8, ptr %r3x, align 1
  %conv129 = zext i8 %55 to i32
  %cmp130 = icmp eq i32 %conv129, 3
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %for.body128
  store i8 0, ptr %r3x, align 1
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %for.body128
  %56 = load i8, ptr %r3x, align 1
  %tobool134 = icmp ne i8 %56, 0
  br i1 %tobool134, label %if.end153, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %if.end133
  %57 = load i8, ptr %x, align 1
  %58 = load i8, ptr %y, align 1
  %call136 = call zeroext i8 @ismasked(i8 noundef zeroext %57, i8 noundef zeroext %58)
  %tobool137 = icmp ne i8 %call136, 0
  br i1 %tobool137, label %if.end153, label %if.then138

if.then138:                                       ; preds = %land.lhs.true135
  %59 = load i8, ptr %x, align 1
  %conv139 = zext i8 %59 to i32
  %and140 = and i32 %conv139, 7
  %shr141 = ashr i32 128, %and140
  %60 = load ptr, ptr @qrframe, align 8
  %61 = load i8, ptr %x, align 1
  %conv142 = zext i8 %61 to i32
  %shr143 = ashr i32 %conv142, 3
  %62 = load i8, ptr %y, align 1
  %conv144 = zext i8 %62 to i32
  %63 = load i8, ptr @WDB, align 1
  %conv145 = zext i8 %63 to i32
  %mul146 = mul nsw i32 %conv144, %conv145
  %add147 = add nsw i32 %shr143, %mul146
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds i8, ptr %60, i64 %idxprom148
  %64 = load i8, ptr %arrayidx149, align 1
  %conv150 = zext i8 %64 to i32
  %xor151 = xor i32 %conv150, %shr141
  %conv152 = trunc i32 %xor151 to i8
  store i8 %conv152, ptr %arrayidx149, align 1
  br label %if.end153

if.end153:                                        ; preds = %if.then138, %land.lhs.true135, %if.end133
  br label %for.inc154

for.inc154:                                       ; preds = %if.end153
  %65 = load i8, ptr %x, align 1
  %inc155 = add i8 %65, 1
  store i8 %inc155, ptr %x, align 1
  %66 = load i8, ptr %r3x, align 1
  %inc156 = add i8 %66, 1
  store i8 %inc156, ptr %r3x, align 1
  br label %for.cond123, !llvm.loop !28

for.end157:                                       ; preds = %for.cond123
  br label %for.inc158

for.inc158:                                       ; preds = %for.end157
  %67 = load i8, ptr %y, align 1
  %inc159 = add i8 %67, 1
  store i8 %inc159, ptr %y, align 1
  %68 = load i8, ptr %r3y, align 1
  %inc160 = add i8 %68, 1
  store i8 %inc160, ptr %r3y, align 1
  br label %for.cond112, !llvm.loop !29

for.end161:                                       ; preds = %for.cond112
  br label %sw.epilog

sw.bb162:                                         ; preds = %entry
  store i8 0, ptr %y, align 1
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc210, %sw.bb162
  %69 = load i8, ptr %y, align 1
  %conv164 = zext i8 %69 to i32
  %70 = load i8, ptr @WD, align 1
  %conv165 = zext i8 %70 to i32
  %cmp166 = icmp slt i32 %conv164, %conv165
  br i1 %cmp166, label %for.body168, label %for.end212

for.body168:                                      ; preds = %for.cond163
  store i8 0, ptr %r3x, align 1
  %71 = load i8, ptr %y, align 1
  %conv169 = zext i8 %71 to i32
  %shr170 = ashr i32 %conv169, 1
  %and171 = and i32 %shr170, 1
  %conv172 = trunc i32 %and171 to i8
  store i8 %conv172, ptr %r3y, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc206, %for.body168
  %72 = load i8, ptr %x, align 1
  %conv174 = zext i8 %72 to i32
  %73 = load i8, ptr @WD, align 1
  %conv175 = zext i8 %73 to i32
  %cmp176 = icmp slt i32 %conv174, %conv175
  br i1 %cmp176, label %for.body178, label %for.end209

for.body178:                                      ; preds = %for.cond173
  %74 = load i8, ptr %r3x, align 1
  %conv179 = zext i8 %74 to i32
  %cmp180 = icmp eq i32 %conv179, 3
  br i1 %cmp180, label %if.then182, label %if.end185

if.then182:                                       ; preds = %for.body178
  store i8 0, ptr %r3x, align 1
  %75 = load i8, ptr %r3y, align 1
  %tobool183 = icmp ne i8 %75, 0
  %lnot = xor i1 %tobool183, true
  %lnot.ext = zext i1 %lnot to i32
  %conv184 = trunc i32 %lnot.ext to i8
  store i8 %conv184, ptr %r3y, align 1
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %for.body178
  %76 = load i8, ptr %r3y, align 1
  %tobool186 = icmp ne i8 %76, 0
  br i1 %tobool186, label %if.end205, label %land.lhs.true187

land.lhs.true187:                                 ; preds = %if.end185
  %77 = load i8, ptr %x, align 1
  %78 = load i8, ptr %y, align 1
  %call188 = call zeroext i8 @ismasked(i8 noundef zeroext %77, i8 noundef zeroext %78)
  %tobool189 = icmp ne i8 %call188, 0
  br i1 %tobool189, label %if.end205, label %if.then190

if.then190:                                       ; preds = %land.lhs.true187
  %79 = load i8, ptr %x, align 1
  %conv191 = zext i8 %79 to i32
  %and192 = and i32 %conv191, 7
  %shr193 = ashr i32 128, %and192
  %80 = load ptr, ptr @qrframe, align 8
  %81 = load i8, ptr %x, align 1
  %conv194 = zext i8 %81 to i32
  %shr195 = ashr i32 %conv194, 3
  %82 = load i8, ptr %y, align 1
  %conv196 = zext i8 %82 to i32
  %83 = load i8, ptr @WDB, align 1
  %conv197 = zext i8 %83 to i32
  %mul198 = mul nsw i32 %conv196, %conv197
  %add199 = add nsw i32 %shr195, %mul198
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds i8, ptr %80, i64 %idxprom200
  %84 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %84 to i32
  %xor203 = xor i32 %conv202, %shr193
  %conv204 = trunc i32 %xor203 to i8
  store i8 %conv204, ptr %arrayidx201, align 1
  br label %if.end205

if.end205:                                        ; preds = %if.then190, %land.lhs.true187, %if.end185
  br label %for.inc206

for.inc206:                                       ; preds = %if.end205
  %85 = load i8, ptr %x, align 1
  %inc207 = add i8 %85, 1
  store i8 %inc207, ptr %x, align 1
  %86 = load i8, ptr %r3x, align 1
  %inc208 = add i8 %86, 1
  store i8 %inc208, ptr %r3x, align 1
  br label %for.cond173, !llvm.loop !30

for.end209:                                       ; preds = %for.cond173
  br label %for.inc210

for.inc210:                                       ; preds = %for.end209
  %87 = load i8, ptr %y, align 1
  %inc211 = add i8 %87, 1
  store i8 %inc211, ptr %y, align 1
  br label %for.cond163, !llvm.loop !31

for.end212:                                       ; preds = %for.cond163
  br label %sw.epilog

sw.bb213:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc274, %sw.bb213
  %88 = load i8, ptr %y, align 1
  %conv215 = zext i8 %88 to i32
  %89 = load i8, ptr @WD, align 1
  %conv216 = zext i8 %89 to i32
  %cmp217 = icmp slt i32 %conv215, %conv216
  br i1 %cmp217, label %for.body219, label %for.end277

for.body219:                                      ; preds = %for.cond214
  %90 = load i8, ptr %r3y, align 1
  %conv220 = zext i8 %90 to i32
  %cmp221 = icmp eq i32 %conv220, 3
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %for.body219
  store i8 0, ptr %r3y, align 1
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %for.body219
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc270, %if.end224
  %91 = load i8, ptr %x, align 1
  %conv226 = zext i8 %91 to i32
  %92 = load i8, ptr @WD, align 1
  %conv227 = zext i8 %92 to i32
  %cmp228 = icmp slt i32 %conv226, %conv227
  br i1 %cmp228, label %for.body230, label %for.end273

for.body230:                                      ; preds = %for.cond225
  %93 = load i8, ptr %r3x, align 1
  %conv231 = zext i8 %93 to i32
  %cmp232 = icmp eq i32 %conv231, 3
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %for.body230
  store i8 0, ptr %r3x, align 1
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %for.body230
  %94 = load i8, ptr %x, align 1
  %conv236 = zext i8 %94 to i32
  %95 = load i8, ptr %y, align 1
  %conv237 = zext i8 %95 to i32
  %and238 = and i32 %conv236, %conv237
  %and239 = and i32 %and238, 1
  %96 = load i8, ptr %r3x, align 1
  %tobool240 = icmp ne i8 %96, 0
  %lnot241 = xor i1 %tobool240, true
  %lnot.ext242 = zext i1 %lnot241 to i32
  %97 = load i8, ptr %r3y, align 1
  %tobool243 = icmp ne i8 %97, 0
  %lnot244 = xor i1 %tobool243, true
  %lnot.ext245 = zext i1 %lnot244 to i32
  %or = or i32 %lnot.ext242, %lnot.ext245
  %tobool246 = icmp ne i32 %or, 0
  %lnot247 = xor i1 %tobool246, true
  %lnot.ext248 = zext i1 %lnot247 to i32
  %add249 = add nsw i32 %and239, %lnot.ext248
  %tobool250 = icmp ne i32 %add249, 0
  br i1 %tobool250, label %if.end269, label %land.lhs.true251

land.lhs.true251:                                 ; preds = %if.end235
  %98 = load i8, ptr %x, align 1
  %99 = load i8, ptr %y, align 1
  %call252 = call zeroext i8 @ismasked(i8 noundef zeroext %98, i8 noundef zeroext %99)
  %tobool253 = icmp ne i8 %call252, 0
  br i1 %tobool253, label %if.end269, label %if.then254

if.then254:                                       ; preds = %land.lhs.true251
  %100 = load i8, ptr %x, align 1
  %conv255 = zext i8 %100 to i32
  %and256 = and i32 %conv255, 7
  %shr257 = ashr i32 128, %and256
  %101 = load ptr, ptr @qrframe, align 8
  %102 = load i8, ptr %x, align 1
  %conv258 = zext i8 %102 to i32
  %shr259 = ashr i32 %conv258, 3
  %103 = load i8, ptr %y, align 1
  %conv260 = zext i8 %103 to i32
  %104 = load i8, ptr @WDB, align 1
  %conv261 = zext i8 %104 to i32
  %mul262 = mul nsw i32 %conv260, %conv261
  %add263 = add nsw i32 %shr259, %mul262
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds i8, ptr %101, i64 %idxprom264
  %105 = load i8, ptr %arrayidx265, align 1
  %conv266 = zext i8 %105 to i32
  %xor267 = xor i32 %conv266, %shr257
  %conv268 = trunc i32 %xor267 to i8
  store i8 %conv268, ptr %arrayidx265, align 1
  br label %if.end269

if.end269:                                        ; preds = %if.then254, %land.lhs.true251, %if.end235
  br label %for.inc270

for.inc270:                                       ; preds = %if.end269
  %106 = load i8, ptr %x, align 1
  %inc271 = add i8 %106, 1
  store i8 %inc271, ptr %x, align 1
  %107 = load i8, ptr %r3x, align 1
  %inc272 = add i8 %107, 1
  store i8 %inc272, ptr %r3x, align 1
  br label %for.cond225, !llvm.loop !32

for.end273:                                       ; preds = %for.cond225
  br label %for.inc274

for.inc274:                                       ; preds = %for.end273
  %108 = load i8, ptr %y, align 1
  %inc275 = add i8 %108, 1
  store i8 %inc275, ptr %y, align 1
  %109 = load i8, ptr %r3y, align 1
  %inc276 = add i8 %109, 1
  store i8 %inc276, ptr %r3y, align 1
  br label %for.cond214, !llvm.loop !33

for.end277:                                       ; preds = %for.cond214
  br label %sw.epilog

sw.bb278:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc337, %sw.bb278
  %110 = load i8, ptr %y, align 1
  %conv280 = zext i8 %110 to i32
  %111 = load i8, ptr @WD, align 1
  %conv281 = zext i8 %111 to i32
  %cmp282 = icmp slt i32 %conv280, %conv281
  br i1 %cmp282, label %for.body284, label %for.end340

for.body284:                                      ; preds = %for.cond279
  %112 = load i8, ptr %r3y, align 1
  %conv285 = zext i8 %112 to i32
  %cmp286 = icmp eq i32 %conv285, 3
  br i1 %cmp286, label %if.then288, label %if.end289

if.then288:                                       ; preds = %for.body284
  store i8 0, ptr %r3y, align 1
  br label %if.end289

if.end289:                                        ; preds = %if.then288, %for.body284
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond290

for.cond290:                                      ; preds = %for.inc333, %if.end289
  %113 = load i8, ptr %x, align 1
  %conv291 = zext i8 %113 to i32
  %114 = load i8, ptr @WD, align 1
  %conv292 = zext i8 %114 to i32
  %cmp293 = icmp slt i32 %conv291, %conv292
  br i1 %cmp293, label %for.body295, label %for.end336

for.body295:                                      ; preds = %for.cond290
  %115 = load i8, ptr %r3x, align 1
  %conv296 = zext i8 %115 to i32
  %cmp297 = icmp eq i32 %conv296, 3
  br i1 %cmp297, label %if.then299, label %if.end300

if.then299:                                       ; preds = %for.body295
  store i8 0, ptr %r3x, align 1
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %for.body295
  %116 = load i8, ptr %x, align 1
  %conv301 = zext i8 %116 to i32
  %117 = load i8, ptr %y, align 1
  %conv302 = zext i8 %117 to i32
  %and303 = and i32 %conv301, %conv302
  %and304 = and i32 %and303, 1
  %118 = load i8, ptr %r3x, align 1
  %conv305 = zext i8 %118 to i32
  %tobool306 = icmp ne i32 %conv305, 0
  br i1 %tobool306, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end300
  %119 = load i8, ptr %r3x, align 1
  %conv307 = zext i8 %119 to i32
  %120 = load i8, ptr %r3y, align 1
  %conv308 = zext i8 %120 to i32
  %cmp309 = icmp eq i32 %conv307, %conv308
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end300
  %121 = phi i1 [ false, %if.end300 ], [ %cmp309, %land.rhs ]
  %land.ext = zext i1 %121 to i32
  %add311 = add nsw i32 %and304, %land.ext
  %and312 = and i32 %add311, 1
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %if.end332, label %land.lhs.true314

land.lhs.true314:                                 ; preds = %land.end
  %122 = load i8, ptr %x, align 1
  %123 = load i8, ptr %y, align 1
  %call315 = call zeroext i8 @ismasked(i8 noundef zeroext %122, i8 noundef zeroext %123)
  %tobool316 = icmp ne i8 %call315, 0
  br i1 %tobool316, label %if.end332, label %if.then317

if.then317:                                       ; preds = %land.lhs.true314
  %124 = load i8, ptr %x, align 1
  %conv318 = zext i8 %124 to i32
  %and319 = and i32 %conv318, 7
  %shr320 = ashr i32 128, %and319
  %125 = load ptr, ptr @qrframe, align 8
  %126 = load i8, ptr %x, align 1
  %conv321 = zext i8 %126 to i32
  %shr322 = ashr i32 %conv321, 3
  %127 = load i8, ptr %y, align 1
  %conv323 = zext i8 %127 to i32
  %128 = load i8, ptr @WDB, align 1
  %conv324 = zext i8 %128 to i32
  %mul325 = mul nsw i32 %conv323, %conv324
  %add326 = add nsw i32 %shr322, %mul325
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds i8, ptr %125, i64 %idxprom327
  %129 = load i8, ptr %arrayidx328, align 1
  %conv329 = zext i8 %129 to i32
  %xor330 = xor i32 %conv329, %shr320
  %conv331 = trunc i32 %xor330 to i8
  store i8 %conv331, ptr %arrayidx328, align 1
  br label %if.end332

if.end332:                                        ; preds = %if.then317, %land.lhs.true314, %land.end
  br label %for.inc333

for.inc333:                                       ; preds = %if.end332
  %130 = load i8, ptr %x, align 1
  %inc334 = add i8 %130, 1
  store i8 %inc334, ptr %x, align 1
  %131 = load i8, ptr %r3x, align 1
  %inc335 = add i8 %131, 1
  store i8 %inc335, ptr %r3x, align 1
  br label %for.cond290, !llvm.loop !34

for.end336:                                       ; preds = %for.cond290
  br label %for.inc337

for.inc337:                                       ; preds = %for.end336
  %132 = load i8, ptr %y, align 1
  %inc338 = add i8 %132, 1
  store i8 %inc338, ptr %y, align 1
  %133 = load i8, ptr %r3y, align 1
  %inc339 = add i8 %133, 1
  store i8 %inc339, ptr %r3y, align 1
  br label %for.cond279, !llvm.loop !35

for.end340:                                       ; preds = %for.cond279
  br label %sw.epilog

sw.bb341:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond342

for.cond342:                                      ; preds = %for.inc403, %sw.bb341
  %134 = load i8, ptr %y, align 1
  %conv343 = zext i8 %134 to i32
  %135 = load i8, ptr @WD, align 1
  %conv344 = zext i8 %135 to i32
  %cmp345 = icmp slt i32 %conv343, %conv344
  br i1 %cmp345, label %for.body347, label %for.end406

for.body347:                                      ; preds = %for.cond342
  %136 = load i8, ptr %r3y, align 1
  %conv348 = zext i8 %136 to i32
  %cmp349 = icmp eq i32 %conv348, 3
  br i1 %cmp349, label %if.then351, label %if.end352

if.then351:                                       ; preds = %for.body347
  store i8 0, ptr %r3y, align 1
  br label %if.end352

if.end352:                                        ; preds = %if.then351, %for.body347
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond353

for.cond353:                                      ; preds = %for.inc399, %if.end352
  %137 = load i8, ptr %x, align 1
  %conv354 = zext i8 %137 to i32
  %138 = load i8, ptr @WD, align 1
  %conv355 = zext i8 %138 to i32
  %cmp356 = icmp slt i32 %conv354, %conv355
  br i1 %cmp356, label %for.body358, label %for.end402

for.body358:                                      ; preds = %for.cond353
  %139 = load i8, ptr %r3x, align 1
  %conv359 = zext i8 %139 to i32
  %cmp360 = icmp eq i32 %conv359, 3
  br i1 %cmp360, label %if.then362, label %if.end363

if.then362:                                       ; preds = %for.body358
  store i8 0, ptr %r3x, align 1
  br label %if.end363

if.end363:                                        ; preds = %if.then362, %for.body358
  %140 = load i8, ptr %r3x, align 1
  %conv364 = zext i8 %140 to i32
  %tobool365 = icmp ne i32 %conv364, 0
  br i1 %tobool365, label %land.rhs366, label %land.end371

land.rhs366:                                      ; preds = %if.end363
  %141 = load i8, ptr %r3x, align 1
  %conv367 = zext i8 %141 to i32
  %142 = load i8, ptr %r3y, align 1
  %conv368 = zext i8 %142 to i32
  %cmp369 = icmp eq i32 %conv367, %conv368
  br label %land.end371

land.end371:                                      ; preds = %land.rhs366, %if.end363
  %143 = phi i1 [ false, %if.end363 ], [ %cmp369, %land.rhs366 ]
  %land.ext372 = zext i1 %143 to i32
  %144 = load i8, ptr %x, align 1
  %conv373 = zext i8 %144 to i32
  %145 = load i8, ptr %y, align 1
  %conv374 = zext i8 %145 to i32
  %add375 = add nsw i32 %conv373, %conv374
  %and376 = and i32 %add375, 1
  %add377 = add nsw i32 %land.ext372, %and376
  %and378 = and i32 %add377, 1
  %tobool379 = icmp ne i32 %and378, 0
  br i1 %tobool379, label %if.end398, label %land.lhs.true380

land.lhs.true380:                                 ; preds = %land.end371
  %146 = load i8, ptr %x, align 1
  %147 = load i8, ptr %y, align 1
  %call381 = call zeroext i8 @ismasked(i8 noundef zeroext %146, i8 noundef zeroext %147)
  %tobool382 = icmp ne i8 %call381, 0
  br i1 %tobool382, label %if.end398, label %if.then383

if.then383:                                       ; preds = %land.lhs.true380
  %148 = load i8, ptr %x, align 1
  %conv384 = zext i8 %148 to i32
  %and385 = and i32 %conv384, 7
  %shr386 = ashr i32 128, %and385
  %149 = load ptr, ptr @qrframe, align 8
  %150 = load i8, ptr %x, align 1
  %conv387 = zext i8 %150 to i32
  %shr388 = ashr i32 %conv387, 3
  %151 = load i8, ptr %y, align 1
  %conv389 = zext i8 %151 to i32
  %152 = load i8, ptr @WDB, align 1
  %conv390 = zext i8 %152 to i32
  %mul391 = mul nsw i32 %conv389, %conv390
  %add392 = add nsw i32 %shr388, %mul391
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds i8, ptr %149, i64 %idxprom393
  %153 = load i8, ptr %arrayidx394, align 1
  %conv395 = zext i8 %153 to i32
  %xor396 = xor i32 %conv395, %shr386
  %conv397 = trunc i32 %xor396 to i8
  store i8 %conv397, ptr %arrayidx394, align 1
  br label %if.end398

if.end398:                                        ; preds = %if.then383, %land.lhs.true380, %land.end371
  br label %for.inc399

for.inc399:                                       ; preds = %if.end398
  %154 = load i8, ptr %x, align 1
  %inc400 = add i8 %154, 1
  store i8 %inc400, ptr %x, align 1
  %155 = load i8, ptr %r3x, align 1
  %inc401 = add i8 %155, 1
  store i8 %inc401, ptr %r3x, align 1
  br label %for.cond353, !llvm.loop !36

for.end402:                                       ; preds = %for.cond353
  br label %for.inc403

for.inc403:                                       ; preds = %for.end402
  %156 = load i8, ptr %y, align 1
  %inc404 = add i8 %156, 1
  store i8 %inc404, ptr %y, align 1
  %157 = load i8, ptr %r3y, align 1
  %inc405 = add i8 %157, 1
  store i8 %inc405, ptr %r3y, align 1
  br label %for.cond342, !llvm.loop !37

for.end406:                                       ; preds = %for.cond342
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end406, %for.end340, %for.end277, %for.end212, %for.end161, %for.end110, %for.end65, %for.end24
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @addfmt(i8 noundef zeroext %masknum) #0 {
entry:
  %masknum.addr = alloca i8, align 1
  %fmtbits = alloca i32, align 4
  %i = alloca i8, align 1
  %lvl = alloca i8, align 1
  store i8 %masknum, ptr %masknum.addr, align 1
  %0 = load i8, ptr @ECCLEVEL, align 1
  %conv = zext i8 %0 to i32
  %sub = sub nsw i32 %conv, 1
  %conv1 = trunc i32 %sub to i8
  store i8 %conv1, ptr %lvl, align 1
  %1 = load i8, ptr %masknum.addr, align 1
  %conv2 = zext i8 %1 to i32
  %2 = load i8, ptr %lvl, align 1
  %conv3 = zext i8 %2 to i32
  %shl = shl i32 %conv3, 3
  %add = add nsw i32 %conv2, %shl
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr @fmtword, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr %fmtbits, align 4
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8, ptr %i, align 1
  %conv4 = zext i8 %4 to i32
  %cmp = icmp slt i32 %conv4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %fmtbits, align 4
  %and = and i32 %5, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end45

if.then:                                          ; preds = %for.body
  %6 = load i8, ptr @WD, align 1
  %conv6 = zext i8 %6 to i32
  %sub7 = sub nsw i32 %conv6, 1
  %7 = load i8, ptr %i, align 1
  %conv8 = zext i8 %7 to i32
  %sub9 = sub nsw i32 %sub7, %conv8
  %and10 = and i32 %sub9, 7
  %shr = ashr i32 128, %and10
  %8 = load ptr, ptr @qrframe, align 8
  %9 = load i8, ptr @WD, align 1
  %conv11 = zext i8 %9 to i32
  %sub12 = sub nsw i32 %conv11, 1
  %10 = load i8, ptr %i, align 1
  %conv13 = zext i8 %10 to i32
  %sub14 = sub nsw i32 %sub12, %conv13
  %shr15 = ashr i32 %sub14, 3
  %11 = load i8, ptr @WDB, align 1
  %conv16 = zext i8 %11 to i32
  %mul = mul nsw i32 8, %conv16
  %add17 = add nsw i32 %shr15, %mul
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %8, i64 %idxprom18
  %12 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %12 to i32
  %or = or i32 %conv20, %shr
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, ptr %arrayidx19, align 1
  %13 = load i8, ptr %i, align 1
  %conv22 = zext i8 %13 to i32
  %cmp23 = icmp slt i32 %conv22, 6
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then
  %14 = load ptr, ptr @qrframe, align 8
  %15 = load i8, ptr %i, align 1
  %conv26 = zext i8 %15 to i32
  %16 = load i8, ptr @WDB, align 1
  %conv27 = zext i8 %16 to i32
  %mul28 = mul nsw i32 %conv26, %conv27
  %add29 = add nsw i32 1, %mul28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %14, i64 %idxprom30
  %17 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %17 to i32
  %or33 = or i32 %conv32, 128
  %conv34 = trunc i32 %or33 to i8
  store i8 %conv34, ptr %arrayidx31, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load ptr, ptr @qrframe, align 8
  %19 = load i8, ptr %i, align 1
  %conv35 = zext i8 %19 to i32
  %add36 = add nsw i32 %conv35, 1
  %20 = load i8, ptr @WDB, align 1
  %conv37 = zext i8 %20 to i32
  %mul38 = mul nsw i32 %add36, %conv37
  %add39 = add nsw i32 1, %mul38
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %18, i64 %idxprom40
  %21 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %21 to i32
  %or43 = or i32 %conv42, 128
  %conv44 = trunc i32 %or43 to i8
  store i8 %conv44, ptr %arrayidx41, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then25
  br label %if.end45

if.end45:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %22 = load i8, ptr %i, align 1
  %inc = add i8 %22, 1
  store i8 %inc, ptr %i, align 1
  %23 = load i32, ptr %fmtbits, align 4
  %shr46 = lshr i32 %23, 1
  store i32 %shr46, ptr %fmtbits, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %i, align 1
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc95, %for.end
  %24 = load i8, ptr %i, align 1
  %conv48 = zext i8 %24 to i32
  %cmp49 = icmp slt i32 %conv48, 7
  br i1 %cmp49, label %for.body51, label %for.end98

for.body51:                                       ; preds = %for.cond47
  %25 = load i32, ptr %fmtbits, align 4
  %and52 = and i32 %25, 1
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end94

if.then54:                                        ; preds = %for.body51
  %26 = load ptr, ptr @qrframe, align 8
  %27 = load i8, ptr @WD, align 1
  %conv55 = zext i8 %27 to i32
  %sub56 = sub nsw i32 %conv55, 7
  %28 = load i8, ptr %i, align 1
  %conv57 = zext i8 %28 to i32
  %add58 = add nsw i32 %sub56, %conv57
  %29 = load i8, ptr @WDB, align 1
  %conv59 = zext i8 %29 to i32
  %mul60 = mul nsw i32 %add58, %conv59
  %add61 = add nsw i32 1, %mul60
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %26, i64 %idxprom62
  %30 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %30 to i32
  %or65 = or i32 %conv64, 128
  %conv66 = trunc i32 %or65 to i8
  store i8 %conv66, ptr %arrayidx63, align 1
  %31 = load i8, ptr %i, align 1
  %tobool67 = icmp ne i8 %31, 0
  br i1 %tobool67, label %if.then68, label %if.else84

if.then68:                                        ; preds = %if.then54
  %32 = load i8, ptr %i, align 1
  %conv69 = zext i8 %32 to i32
  %sub70 = sub nsw i32 6, %conv69
  %and71 = and i32 %sub70, 7
  %shr72 = ashr i32 128, %and71
  %33 = load ptr, ptr @qrframe, align 8
  %34 = load i8, ptr %i, align 1
  %conv73 = zext i8 %34 to i32
  %sub74 = sub nsw i32 6, %conv73
  %shr75 = ashr i32 %sub74, 3
  %35 = load i8, ptr @WDB, align 1
  %conv76 = zext i8 %35 to i32
  %mul77 = mul nsw i32 8, %conv76
  %add78 = add nsw i32 %shr75, %mul77
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %33, i64 %idxprom79
  %36 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %36 to i32
  %or82 = or i32 %conv81, %shr72
  %conv83 = trunc i32 %or82 to i8
  store i8 %conv83, ptr %arrayidx80, align 1
  br label %if.end93

if.else84:                                        ; preds = %if.then54
  %37 = load ptr, ptr @qrframe, align 8
  %38 = load i8, ptr @WDB, align 1
  %conv85 = zext i8 %38 to i32
  %mul86 = mul nsw i32 8, %conv85
  %add87 = add nsw i32 0, %mul86
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds i8, ptr %37, i64 %idxprom88
  %39 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %39 to i32
  %or91 = or i32 %conv90, 1
  %conv92 = trunc i32 %or91 to i8
  store i8 %conv92, ptr %arrayidx89, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.else84, %if.then68
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %for.body51
  br label %for.inc95

for.inc95:                                        ; preds = %if.end94
  %40 = load i8, ptr %i, align 1
  %inc96 = add i8 %40, 1
  store i8 %inc96, ptr %i, align 1
  %41 = load i32, ptr %fmtbits, align 4
  %shr97 = lshr i32 %41, 1
  store i32 %shr97, ptr %fmtbits, align 4
  br label %for.cond47, !llvm.loop !39

for.end98:                                        ; preds = %for.cond47
  ret void
}

declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @initrspoly(i8 noundef zeroext %eclen, ptr noundef %genpoly) #0 {
entry:
  %eclen.addr = alloca i8, align 1
  %genpoly.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  store i8 %eclen, ptr %eclen.addr, align 1
  store ptr %genpoly, ptr %genpoly.addr, align 8
  %0 = load ptr, ptr %genpoly.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store i8 1, ptr %arrayidx, align 1
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %1 = load i8, ptr %i, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8, ptr %eclen.addr, align 1
  %conv1 = zext i8 %2 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %genpoly.addr, align 8
  %4 = load i8, ptr %i, align 1
  %conv3 = zext i8 %4 to i32
  %add = add nsw i32 %conv3, 1
  %idxprom = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 1, ptr %arrayidx4, align 1
  %5 = load i8, ptr %i, align 1
  store i8 %5, ptr %j, align 1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %6 = load i8, ptr %j, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp sgt i32 %conv6, 0
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond5
  %7 = load ptr, ptr %genpoly.addr, align 8
  %8 = load i8, ptr %j, align 1
  %idxprom10 = zext i8 %8 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %7, i64 %idxprom10
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %tobool = icmp ne i32 %conv12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body9
  %10 = load ptr, ptr %genpoly.addr, align 8
  %11 = load i8, ptr %j, align 1
  %conv13 = zext i8 %11 to i32
  %sub = sub nsw i32 %conv13, 1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %10, i64 %idxprom14
  %12 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %12 to i32
  %13 = load ptr, ptr %genpoly.addr, align 8
  %14 = load i8, ptr %j, align 1
  %idxprom17 = zext i8 %14 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 %idxprom17
  %15 = load i8, ptr %arrayidx18, align 1
  %idxprom19 = zext i8 %15 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom19
  %16 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %16 to i32
  %17 = load i8, ptr %i, align 1
  %conv22 = zext i8 %17 to i32
  %add23 = add nsw i32 %conv21, %conv22
  %call = call i32 @modnn(i32 noundef %add23)
  %idxprom24 = zext i32 %call to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom24
  %18 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %xor = xor i32 %conv16, %conv26
  br label %cond.end

cond.false:                                       ; preds = %for.body9
  %19 = load ptr, ptr %genpoly.addr, align 8
  %20 = load i8, ptr %j, align 1
  %conv27 = zext i8 %20 to i32
  %sub28 = sub nsw i32 %conv27, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %19, i64 %idxprom29
  %21 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %21 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %conv31, %cond.false ]
  %conv32 = trunc i32 %cond to i8
  %22 = load ptr, ptr %genpoly.addr, align 8
  %23 = load i8, ptr %j, align 1
  %idxprom33 = zext i8 %23 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %22, i64 %idxprom33
  store i8 %conv32, ptr %arrayidx34, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %24 = load i8, ptr %j, align 1
  %dec = add i8 %24, -1
  store i8 %dec, ptr %j, align 1
  br label %for.cond5, !llvm.loop !40

for.end:                                          ; preds = %for.cond5
  %25 = load ptr, ptr %genpoly.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx35, align 1
  %idxprom36 = zext i8 %26 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom36
  %27 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %27 to i32
  %28 = load i8, ptr %i, align 1
  %conv39 = zext i8 %28 to i32
  %add40 = add nsw i32 %conv38, %conv39
  %call41 = call i32 @modnn(i32 noundef %add40)
  %idxprom42 = zext i32 %call41 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom42
  %29 = load i8, ptr %arrayidx43, align 1
  %30 = load ptr, ptr %genpoly.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %30, i64 0
  store i8 %29, ptr %arrayidx44, align 1
  br label %for.inc45

for.inc45:                                        ; preds = %for.end
  %31 = load i8, ptr %i, align 1
  %inc = add i8 %31, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !41

for.end46:                                        ; preds = %for.cond
  store i8 0, ptr %i, align 1
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc59, %for.end46
  %32 = load i8, ptr %i, align 1
  %conv48 = zext i8 %32 to i32
  %33 = load i8, ptr %eclen.addr, align 1
  %conv49 = zext i8 %33 to i32
  %cmp50 = icmp sle i32 %conv48, %conv49
  br i1 %cmp50, label %for.body52, label %for.end61

for.body52:                                       ; preds = %for.cond47
  %34 = load ptr, ptr %genpoly.addr, align 8
  %35 = load i8, ptr %i, align 1
  %idxprom53 = zext i8 %35 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %34, i64 %idxprom53
  %36 = load i8, ptr %arrayidx54, align 1
  %idxprom55 = zext i8 %36 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom55
  %37 = load i8, ptr %arrayidx56, align 1
  %38 = load ptr, ptr %genpoly.addr, align 8
  %39 = load i8, ptr %i, align 1
  %idxprom57 = zext i8 %39 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %38, i64 %idxprom57
  store i8 %37, ptr %arrayidx58, align 1
  br label %for.inc59

for.inc59:                                        ; preds = %for.body52
  %40 = load i8, ptr %i, align 1
  %inc60 = add i8 %40, 1
  store i8 %inc60, ptr %i, align 1
  br label %for.cond47, !llvm.loop !42

for.end61:                                        ; preds = %for.cond47
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @appendrs(ptr noundef %data, i8 noundef zeroext %dlen, ptr noundef %ecbuf, i8 noundef zeroext %eclen, ptr noundef %genpoly) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %dlen.addr = alloca i8, align 1
  %ecbuf.addr = alloca ptr, align 8
  %eclen.addr = alloca i8, align 1
  %genpoly.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  %fb = alloca i8, align 1
  store ptr %data, ptr %data.addr, align 8
  store i8 %dlen, ptr %dlen.addr, align 1
  store ptr %ecbuf, ptr %ecbuf.addr, align 8
  store i8 %eclen, ptr %eclen.addr, align 1
  store ptr %genpoly, ptr %genpoly.addr, align 8
  %0 = load ptr, ptr %ecbuf.addr, align 8
  %1 = load i8, ptr %eclen.addr, align 1
  %conv = zext i8 %1 to i64
  %2 = load ptr, ptr %ecbuf.addr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %conv, i64 noundef %3) #4
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %entry
  %4 = load i8, ptr %i, align 1
  %conv1 = zext i8 %4 to i32
  %5 = load i8, ptr %dlen.addr, align 1
  %conv2 = zext i8 %5 to i32
  %cmp = icmp slt i32 %conv1, %conv2
  br i1 %cmp, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %data.addr, align 8
  %7 = load i8, ptr %i, align 1
  %idxprom = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %8 to i32
  %9 = load ptr, ptr %ecbuf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %xor = xor i32 %conv4, %conv6
  %idxprom7 = sext i32 %xor to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom7
  %11 = load i8, ptr %arrayidx8, align 1
  store i8 %11, ptr %fb, align 1
  %12 = load i8, ptr %fb, align 1
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp ne i32 %conv9, 255
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 1, ptr %j, align 1
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %if.then
  %13 = load i8, ptr %j, align 1
  %conv13 = zext i8 %13 to i32
  %14 = load i8, ptr %eclen.addr, align 1
  %conv14 = zext i8 %14 to i32
  %cmp15 = icmp slt i32 %conv13, %conv14
  br i1 %cmp15, label %for.body17, label %for.end

for.body17:                                       ; preds = %for.cond12
  %15 = load ptr, ptr %ecbuf.addr, align 8
  %16 = load i8, ptr %j, align 1
  %idxprom18 = zext i8 %16 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %15, i64 %idxprom18
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %18 = load i8, ptr %fb, align 1
  %conv21 = zext i8 %18 to i32
  %19 = load ptr, ptr %genpoly.addr, align 8
  %20 = load i8, ptr %eclen.addr, align 1
  %conv22 = zext i8 %20 to i32
  %21 = load i8, ptr %j, align 1
  %conv23 = zext i8 %21 to i32
  %sub = sub nsw i32 %conv22, %conv23
  %idxprom24 = sext i32 %sub to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %19, i64 %idxprom24
  %22 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %22 to i32
  %add = add nsw i32 %conv21, %conv26
  %call27 = call i32 @modnn(i32 noundef %add)
  %idxprom28 = zext i32 %call27 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom28
  %23 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %23 to i32
  %xor31 = xor i32 %conv20, %conv30
  %conv32 = trunc i32 %xor31 to i8
  %24 = load ptr, ptr %ecbuf.addr, align 8
  %25 = load i8, ptr %j, align 1
  %conv33 = zext i8 %25 to i32
  %sub34 = sub nsw i32 %conv33, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %24, i64 %idxprom35
  store i8 %conv32, ptr %arrayidx36, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body17
  %26 = load i8, ptr %j, align 1
  %inc = add i8 %26, 1
  store i8 %inc, ptr %j, align 1
  br label %for.cond12, !llvm.loop !43

for.end:                                          ; preds = %for.cond12
  br label %if.end

if.else:                                          ; preds = %for.body
  %27 = load ptr, ptr %ecbuf.addr, align 8
  %28 = load ptr, ptr %ecbuf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %eclen.addr, align 1
  %conv37 = zext i8 %29 to i32
  %sub38 = sub nsw i32 %conv37, 1
  %conv39 = sext i32 %sub38 to i64
  %30 = load ptr, ptr %ecbuf.addr, align 8
  %31 = call i64 @llvm.objectsize.i64.p0(ptr %30, i1 false, i1 true, i1 false)
  %call40 = call ptr @__memmove_chk(ptr noundef %27, ptr noundef %add.ptr, i64 noundef %conv39, i64 noundef %31) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %32 = load i8, ptr %fb, align 1
  %conv41 = zext i8 %32 to i32
  %cmp42 = icmp eq i32 %conv41, 255
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %33 = load i8, ptr %fb, align 1
  %conv44 = zext i8 %33 to i32
  %34 = load ptr, ptr %genpoly.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %35 to i32
  %add47 = add nsw i32 %conv44, %conv46
  %call48 = call i32 @modnn(i32 noundef %add47)
  %idxprom49 = zext i32 %call48 to i64
  %arrayidx50 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom49
  %36 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %36 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv51, %cond.false ]
  %conv52 = trunc i32 %cond to i8
  %37 = load ptr, ptr %ecbuf.addr, align 8
  %38 = load i8, ptr %eclen.addr, align 1
  %conv53 = zext i8 %38 to i32
  %sub54 = sub nsw i32 %conv53, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds i8, ptr %37, i64 %idxprom55
  store i8 %conv52, ptr %arrayidx56, align 1
  br label %for.inc57

for.inc57:                                        ; preds = %cond.end
  %39 = load i8, ptr %i, align 1
  %inc58 = add i8 %39, 1
  store i8 %inc58, ptr %i, align 1
  br label %for.cond, !llvm.loop !44

for.end59:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @modnn(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp uge i32 %0, 255
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %x.addr, align 4
  %sub = sub i32 %1, 255
  store i32 %sub, ptr %x.addr, align 4
  %2 = load i32, ptr %x.addr, align 4
  %shr = lshr i32 %2, 8
  %3 = load i32, ptr %x.addr, align 4
  %and = and i32 %3, 255
  %add = add i32 %shr, %and
  store i32 %add, ptr %x.addr, align 4
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %x.addr, align 4
  ret i32 %4
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal zeroext i8 @ismasked(i8 noundef zeroext %x, i8 noundef zeroext %y) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y.addr = alloca i8, align 1
  %bt = alloca i32, align 4
  store i8 %x, ptr %x.addr, align 1
  store i8 %y, ptr %y.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %y.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %x.addr, align 1
  %conv3 = zext i8 %2 to i32
  store i32 %conv3, ptr %bt, align 4
  %3 = load i8, ptr %y.addr, align 1
  store i8 %3, ptr %x.addr, align 1
  %4 = load i32, ptr %bt, align 4
  %conv4 = trunc i32 %4 to i8
  store i8 %conv4, ptr %y.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, ptr %y.addr, align 1
  %conv5 = zext i8 %5 to i32
  store i32 %conv5, ptr %bt, align 4
  %6 = load i8, ptr %y.addr, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i8, ptr %y.addr, align 1
  %conv7 = zext i8 %7 to i32
  %mul = mul nsw i32 %conv6, %conv7
  %8 = load i32, ptr %bt, align 4
  %add = add i32 %8, %mul
  store i32 %add, ptr %bt, align 4
  %9 = load i32, ptr %bt, align 4
  %shr = lshr i32 %9, 1
  store i32 %shr, ptr %bt, align 4
  %10 = load i8, ptr %x.addr, align 1
  %conv8 = zext i8 %10 to i32
  %11 = load i32, ptr %bt, align 4
  %add9 = add i32 %11, %conv8
  store i32 %add9, ptr %bt, align 4
  %12 = load ptr, ptr @framask, align 8
  %13 = load i32, ptr %bt, align 4
  %shr10 = lshr i32 %13, 3
  %idxprom = zext i32 %shr10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load i32, ptr %bt, align 4
  %and = and i32 %15, 7
  %sub = sub i32 7, %and
  %shr12 = ashr i32 %conv11, %sub
  %and13 = and i32 %shr12, 1
  %conv14 = trunc i32 %and13 to i8
  ret i8 %conv14
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @badcheck() #0 {
entry:
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %h = alloca i8, align 1
  %b = alloca i8, align 1
  %b1 = alloca i8, align 1
  %thisbad = alloca i32, align 4
  %bw = alloca i32, align 4
  %big = alloca i64, align 8
  %count = alloca i32, align 4
  store i32 0, ptr %thisbad, align 4
  store i32 0, ptr %bw, align 4
  store i8 0, ptr %y, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc141, %entry
  %0 = load i8, ptr %y, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr @WD, align 1
  %conv1 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv1, 1
  %cmp = icmp slt i32 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end143

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %x, align 1
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i8, ptr %x, align 1
  %conv4 = zext i8 %2 to i32
  %3 = load i8, ptr @WD, align 1
  %conv5 = zext i8 %3 to i32
  %sub6 = sub nsw i32 %conv5, 1
  %cmp7 = icmp slt i32 %conv4, %sub6
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond3
  %4 = load ptr, ptr @qrframe, align 8
  %5 = load i8, ptr %x, align 1
  %conv10 = zext i8 %5 to i32
  %shr = ashr i32 %conv10, 3
  %6 = load i8, ptr %y, align 1
  %conv11 = zext i8 %6 to i32
  %7 = load i8, ptr @WDB, align 1
  %conv12 = zext i8 %7 to i32
  %mul = mul nsw i32 %conv11, %conv12
  %add = add nsw i32 %shr, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %8 to i32
  %9 = load i8, ptr %x, align 1
  %conv14 = zext i8 %9 to i32
  %and = and i32 %conv14, 7
  %sub15 = sub nsw i32 7, %and
  %shr16 = ashr i32 %conv13, %sub15
  %and17 = and i32 %shr16, 1
  %tobool = icmp ne i32 %and17, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body9
  %10 = load ptr, ptr @qrframe, align 8
  %11 = load i8, ptr %x, align 1
  %conv18 = zext i8 %11 to i32
  %add19 = add nsw i32 %conv18, 1
  %shr20 = ashr i32 %add19, 3
  %12 = load i8, ptr %y, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load i8, ptr @WDB, align 1
  %conv22 = zext i8 %13 to i32
  %mul23 = mul nsw i32 %conv21, %conv22
  %add24 = add nsw i32 %shr20, %mul23
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %10, i64 %idxprom25
  %14 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %14 to i32
  %15 = load i8, ptr %x, align 1
  %conv28 = zext i8 %15 to i32
  %add29 = add nsw i32 %conv28, 1
  %and30 = and i32 %add29, 7
  %sub31 = sub nsw i32 7, %and30
  %shr32 = ashr i32 %conv27, %sub31
  %and33 = and i32 %shr32, 1
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %land.lhs.true35, label %lor.lhs.false

land.lhs.true35:                                  ; preds = %land.lhs.true
  %16 = load ptr, ptr @qrframe, align 8
  %17 = load i8, ptr %x, align 1
  %conv36 = zext i8 %17 to i32
  %shr37 = ashr i32 %conv36, 3
  %18 = load i8, ptr %y, align 1
  %conv38 = zext i8 %18 to i32
  %add39 = add nsw i32 %conv38, 1
  %19 = load i8, ptr @WDB, align 1
  %conv40 = zext i8 %19 to i32
  %mul41 = mul nsw i32 %add39, %conv40
  %add42 = add nsw i32 %shr37, %mul41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %16, i64 %idxprom43
  %20 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %20 to i32
  %21 = load i8, ptr %x, align 1
  %conv46 = zext i8 %21 to i32
  %and47 = and i32 %conv46, 7
  %sub48 = sub nsw i32 7, %and47
  %shr49 = ashr i32 %conv45, %sub48
  %and50 = and i32 %shr49, 1
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true52, label %lor.lhs.false

land.lhs.true52:                                  ; preds = %land.lhs.true35
  %22 = load ptr, ptr @qrframe, align 8
  %23 = load i8, ptr %x, align 1
  %conv53 = zext i8 %23 to i32
  %add54 = add nsw i32 %conv53, 1
  %shr55 = ashr i32 %add54, 3
  %24 = load i8, ptr %y, align 1
  %conv56 = zext i8 %24 to i32
  %add57 = add nsw i32 %conv56, 1
  %25 = load i8, ptr @WDB, align 1
  %conv58 = zext i8 %25 to i32
  %mul59 = mul nsw i32 %add57, %conv58
  %add60 = add nsw i32 %shr55, %mul59
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %22, i64 %idxprom61
  %26 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %26 to i32
  %27 = load i8, ptr %x, align 1
  %conv64 = zext i8 %27 to i32
  %add65 = add nsw i32 %conv64, 1
  %and66 = and i32 %add65, 7
  %sub67 = sub nsw i32 7, %and66
  %shr68 = ashr i32 %conv63, %sub67
  %and69 = and i32 %shr68, 1
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true52, %land.lhs.true35, %land.lhs.true, %for.body9
  %28 = load ptr, ptr @qrframe, align 8
  %29 = load i8, ptr %x, align 1
  %conv71 = zext i8 %29 to i32
  %shr72 = ashr i32 %conv71, 3
  %30 = load i8, ptr %y, align 1
  %conv73 = zext i8 %30 to i32
  %31 = load i8, ptr @WDB, align 1
  %conv74 = zext i8 %31 to i32
  %mul75 = mul nsw i32 %conv73, %conv74
  %add76 = add nsw i32 %shr72, %mul75
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds i8, ptr %28, i64 %idxprom77
  %32 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %32 to i32
  %33 = load i8, ptr %x, align 1
  %conv80 = zext i8 %33 to i32
  %and81 = and i32 %conv80, 7
  %sub82 = sub nsw i32 7, %and81
  %shr83 = ashr i32 %conv79, %sub82
  %and84 = and i32 %shr83, 1
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.end, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false
  %34 = load ptr, ptr @qrframe, align 8
  %35 = load i8, ptr %x, align 1
  %conv87 = zext i8 %35 to i32
  %add88 = add nsw i32 %conv87, 1
  %shr89 = ashr i32 %add88, 3
  %36 = load i8, ptr %y, align 1
  %conv90 = zext i8 %36 to i32
  %37 = load i8, ptr @WDB, align 1
  %conv91 = zext i8 %37 to i32
  %mul92 = mul nsw i32 %conv90, %conv91
  %add93 = add nsw i32 %shr89, %mul92
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %34, i64 %idxprom94
  %38 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %38 to i32
  %39 = load i8, ptr %x, align 1
  %conv97 = zext i8 %39 to i32
  %add98 = add nsw i32 %conv97, 1
  %and99 = and i32 %add98, 7
  %sub100 = sub nsw i32 7, %and99
  %shr101 = ashr i32 %conv96, %sub100
  %and102 = and i32 %shr101, 1
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %if.end, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false86
  %40 = load ptr, ptr @qrframe, align 8
  %41 = load i8, ptr %x, align 1
  %conv105 = zext i8 %41 to i32
  %shr106 = ashr i32 %conv105, 3
  %42 = load i8, ptr %y, align 1
  %conv107 = zext i8 %42 to i32
  %add108 = add nsw i32 %conv107, 1
  %43 = load i8, ptr @WDB, align 1
  %conv109 = zext i8 %43 to i32
  %mul110 = mul nsw i32 %add108, %conv109
  %add111 = add nsw i32 %shr106, %mul110
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %40, i64 %idxprom112
  %44 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %44 to i32
  %45 = load i8, ptr %x, align 1
  %conv115 = zext i8 %45 to i32
  %and116 = and i32 %conv115, 7
  %sub117 = sub nsw i32 7, %and116
  %shr118 = ashr i32 %conv114, %sub117
  %and119 = and i32 %shr118, 1
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.end, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false104
  %46 = load ptr, ptr @qrframe, align 8
  %47 = load i8, ptr %x, align 1
  %conv122 = zext i8 %47 to i32
  %add123 = add nsw i32 %conv122, 1
  %shr124 = ashr i32 %add123, 3
  %48 = load i8, ptr %y, align 1
  %conv125 = zext i8 %48 to i32
  %add126 = add nsw i32 %conv125, 1
  %49 = load i8, ptr @WDB, align 1
  %conv127 = zext i8 %49 to i32
  %mul128 = mul nsw i32 %add126, %conv127
  %add129 = add nsw i32 %shr124, %mul128
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %46, i64 %idxprom130
  %50 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %50 to i32
  %51 = load i8, ptr %x, align 1
  %conv133 = zext i8 %51 to i32
  %add134 = add nsw i32 %conv133, 1
  %and135 = and i32 %add134, 7
  %sub136 = sub nsw i32 7, %and135
  %shr137 = ashr i32 %conv132, %sub136
  %and138 = and i32 %shr137, 1
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false121, %land.lhs.true52
  %52 = load i32, ptr %thisbad, align 4
  %add140 = add i32 %52, 3
  store i32 %add140, ptr %thisbad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false121, %lor.lhs.false104, %lor.lhs.false86, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %53 = load i8, ptr %x, align 1
  %inc = add i8 %53, 1
  store i8 %inc, ptr %x, align 1
  br label %for.cond3, !llvm.loop !46

for.end:                                          ; preds = %for.cond3
  br label %for.inc141

for.inc141:                                       ; preds = %for.end
  %54 = load i8, ptr %y, align 1
  %inc142 = add i8 %54, 1
  store i8 %inc142, ptr %y, align 1
  br label %for.cond, !llvm.loop !47

for.end143:                                       ; preds = %for.cond
  store i8 0, ptr %y, align 1
  br label %for.cond144

for.cond144:                                      ; preds = %for.inc191, %for.end143
  %55 = load i8, ptr %y, align 1
  %conv145 = zext i8 %55 to i32
  %56 = load i8, ptr @WD, align 1
  %conv146 = zext i8 %56 to i32
  %cmp147 = icmp slt i32 %conv145, %conv146
  br i1 %cmp147, label %for.body149, label %for.end193

for.body149:                                      ; preds = %for.cond144
  %57 = load ptr, ptr @rlens, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %57, i64 0
  store i8 0, ptr %arrayidx150, align 1
  store i8 0, ptr %x, align 1
  store i8 0, ptr %b, align 1
  store i8 0, ptr %h, align 1
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc187, %for.body149
  %58 = load i8, ptr %x, align 1
  %conv152 = zext i8 %58 to i32
  %59 = load i8, ptr @WD, align 1
  %conv153 = zext i8 %59 to i32
  %cmp154 = icmp slt i32 %conv152, %conv153
  br i1 %cmp154, label %for.body156, label %for.end189

for.body156:                                      ; preds = %for.cond151
  %60 = load ptr, ptr @qrframe, align 8
  %61 = load i8, ptr %x, align 1
  %conv157 = zext i8 %61 to i32
  %shr158 = ashr i32 %conv157, 3
  %62 = load i8, ptr %y, align 1
  %conv159 = zext i8 %62 to i32
  %63 = load i8, ptr @WDB, align 1
  %conv160 = zext i8 %63 to i32
  %mul161 = mul nsw i32 %conv159, %conv160
  %add162 = add nsw i32 %shr158, %mul161
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds i8, ptr %60, i64 %idxprom163
  %64 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %64 to i32
  %65 = load i8, ptr %x, align 1
  %conv166 = zext i8 %65 to i32
  %and167 = and i32 %conv166, 7
  %sub168 = sub nsw i32 7, %and167
  %shr169 = ashr i32 %conv165, %sub168
  %and170 = and i32 %shr169, 1
  %conv171 = trunc i32 %and170 to i8
  store i8 %conv171, ptr %b1, align 1
  %conv172 = zext i8 %conv171 to i32
  %66 = load i8, ptr %b, align 1
  %conv173 = zext i8 %66 to i32
  %cmp174 = icmp eq i32 %conv172, %conv173
  br i1 %cmp174, label %if.then176, label %if.else

if.then176:                                       ; preds = %for.body156
  %67 = load ptr, ptr @rlens, align 8
  %68 = load i8, ptr %h, align 1
  %idxprom177 = zext i8 %68 to i64
  %arrayidx178 = getelementptr inbounds i8, ptr %67, i64 %idxprom177
  %69 = load i8, ptr %arrayidx178, align 1
  %inc179 = add i8 %69, 1
  store i8 %inc179, ptr %arrayidx178, align 1
  br label %if.end183

if.else:                                          ; preds = %for.body156
  %70 = load ptr, ptr @rlens, align 8
  %71 = load i8, ptr %h, align 1
  %inc180 = add i8 %71, 1
  store i8 %inc180, ptr %h, align 1
  %idxprom181 = zext i8 %inc180 to i64
  %arrayidx182 = getelementptr inbounds i8, ptr %70, i64 %idxprom181
  store i8 1, ptr %arrayidx182, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.else, %if.then176
  %72 = load i8, ptr %b1, align 1
  store i8 %72, ptr %b, align 1
  %73 = load i8, ptr %b, align 1
  %conv184 = zext i8 %73 to i32
  %tobool185 = icmp ne i32 %conv184, 0
  %74 = zext i1 %tobool185 to i64
  %cond = select i1 %tobool185, i32 1, i32 -1
  %75 = load i32, ptr %bw, align 4
  %add186 = add nsw i32 %75, %cond
  store i32 %add186, ptr %bw, align 4
  br label %for.inc187

for.inc187:                                       ; preds = %if.end183
  %76 = load i8, ptr %x, align 1
  %inc188 = add i8 %76, 1
  store i8 %inc188, ptr %x, align 1
  br label %for.cond151, !llvm.loop !48

for.end189:                                       ; preds = %for.cond151
  %77 = load i8, ptr %h, align 1
  %call = call i32 @badruns(i8 noundef zeroext %77)
  %78 = load i32, ptr %thisbad, align 4
  %add190 = add i32 %78, %call
  store i32 %add190, ptr %thisbad, align 4
  br label %for.inc191

for.inc191:                                       ; preds = %for.end189
  %79 = load i8, ptr %y, align 1
  %inc192 = add i8 %79, 1
  store i8 %inc192, ptr %y, align 1
  br label %for.cond144, !llvm.loop !49

for.end193:                                       ; preds = %for.cond144
  %80 = load i32, ptr %bw, align 4
  %cmp194 = icmp slt i32 %80, 0
  br i1 %cmp194, label %if.then196, label %if.end198

if.then196:                                       ; preds = %for.end193
  %81 = load i32, ptr %bw, align 4
  %sub197 = sub nsw i32 0, %81
  store i32 %sub197, ptr %bw, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %for.end193
  %82 = load i32, ptr %bw, align 4
  %conv199 = sext i32 %82 to i64
  store i64 %conv199, ptr %big, align 8
  store i32 0, ptr %count, align 4
  %83 = load i64, ptr %big, align 8
  %shl = shl i64 %83, 2
  %84 = load i64, ptr %big, align 8
  %add200 = add i64 %84, %shl
  store i64 %add200, ptr %big, align 8
  %85 = load i64, ptr %big, align 8
  %shl201 = shl i64 %85, 1
  store i64 %shl201, ptr %big, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end198
  %86 = load i64, ptr %big, align 8
  %87 = load i8, ptr @WD, align 1
  %conv202 = zext i8 %87 to i32
  %88 = load i8, ptr @WD, align 1
  %conv203 = zext i8 %88 to i32
  %mul204 = mul nsw i32 %conv202, %conv203
  %conv205 = sext i32 %mul204 to i64
  %cmp206 = icmp ugt i64 %86, %conv205
  br i1 %cmp206, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %89 = load i8, ptr @WD, align 1
  %conv208 = zext i8 %89 to i32
  %90 = load i8, ptr @WD, align 1
  %conv209 = zext i8 %90 to i32
  %mul210 = mul nsw i32 %conv208, %conv209
  %conv211 = sext i32 %mul210 to i64
  %91 = load i64, ptr %big, align 8
  %sub212 = sub i64 %91, %conv211
  store i64 %sub212, ptr %big, align 8
  %92 = load i32, ptr %count, align 4
  %inc213 = add i32 %92, 1
  store i32 %inc213, ptr %count, align 4
  br label %while.cond, !llvm.loop !50

while.end:                                        ; preds = %while.cond
  %93 = load i32, ptr %count, align 4
  %mul214 = mul i32 %93, 10
  %94 = load i32, ptr %thisbad, align 4
  %add215 = add i32 %94, %mul214
  store i32 %add215, ptr %thisbad, align 4
  store i8 0, ptr %x, align 1
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc262, %while.end
  %95 = load i8, ptr %x, align 1
  %conv217 = zext i8 %95 to i32
  %96 = load i8, ptr @WD, align 1
  %conv218 = zext i8 %96 to i32
  %cmp219 = icmp slt i32 %conv217, %conv218
  br i1 %cmp219, label %for.body221, label %for.end264

for.body221:                                      ; preds = %for.cond216
  %97 = load ptr, ptr @rlens, align 8
  %arrayidx222 = getelementptr inbounds i8, ptr %97, i64 0
  store i8 0, ptr %arrayidx222, align 1
  store i8 0, ptr %y, align 1
  store i8 0, ptr %b, align 1
  store i8 0, ptr %h, align 1
  br label %for.cond223

for.cond223:                                      ; preds = %for.inc257, %for.body221
  %98 = load i8, ptr %y, align 1
  %conv224 = zext i8 %98 to i32
  %99 = load i8, ptr @WD, align 1
  %conv225 = zext i8 %99 to i32
  %cmp226 = icmp slt i32 %conv224, %conv225
  br i1 %cmp226, label %for.body228, label %for.end259

for.body228:                                      ; preds = %for.cond223
  %100 = load ptr, ptr @qrframe, align 8
  %101 = load i8, ptr %x, align 1
  %conv229 = zext i8 %101 to i32
  %shr230 = ashr i32 %conv229, 3
  %102 = load i8, ptr %y, align 1
  %conv231 = zext i8 %102 to i32
  %103 = load i8, ptr @WDB, align 1
  %conv232 = zext i8 %103 to i32
  %mul233 = mul nsw i32 %conv231, %conv232
  %add234 = add nsw i32 %shr230, %mul233
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds i8, ptr %100, i64 %idxprom235
  %104 = load i8, ptr %arrayidx236, align 1
  %conv237 = zext i8 %104 to i32
  %105 = load i8, ptr %x, align 1
  %conv238 = zext i8 %105 to i32
  %and239 = and i32 %conv238, 7
  %sub240 = sub nsw i32 7, %and239
  %shr241 = ashr i32 %conv237, %sub240
  %and242 = and i32 %shr241, 1
  %conv243 = trunc i32 %and242 to i8
  store i8 %conv243, ptr %b1, align 1
  %conv244 = zext i8 %conv243 to i32
  %106 = load i8, ptr %b, align 1
  %conv245 = zext i8 %106 to i32
  %cmp246 = icmp eq i32 %conv244, %conv245
  br i1 %cmp246, label %if.then248, label %if.else252

if.then248:                                       ; preds = %for.body228
  %107 = load ptr, ptr @rlens, align 8
  %108 = load i8, ptr %h, align 1
  %idxprom249 = zext i8 %108 to i64
  %arrayidx250 = getelementptr inbounds i8, ptr %107, i64 %idxprom249
  %109 = load i8, ptr %arrayidx250, align 1
  %inc251 = add i8 %109, 1
  store i8 %inc251, ptr %arrayidx250, align 1
  br label %if.end256

if.else252:                                       ; preds = %for.body228
  %110 = load ptr, ptr @rlens, align 8
  %111 = load i8, ptr %h, align 1
  %inc253 = add i8 %111, 1
  store i8 %inc253, ptr %h, align 1
  %idxprom254 = zext i8 %inc253 to i64
  %arrayidx255 = getelementptr inbounds i8, ptr %110, i64 %idxprom254
  store i8 1, ptr %arrayidx255, align 1
  br label %if.end256

if.end256:                                        ; preds = %if.else252, %if.then248
  %112 = load i8, ptr %b1, align 1
  store i8 %112, ptr %b, align 1
  br label %for.inc257

for.inc257:                                       ; preds = %if.end256
  %113 = load i8, ptr %y, align 1
  %inc258 = add i8 %113, 1
  store i8 %inc258, ptr %y, align 1
  br label %for.cond223, !llvm.loop !51

for.end259:                                       ; preds = %for.cond223
  %114 = load i8, ptr %h, align 1
  %call260 = call i32 @badruns(i8 noundef zeroext %114)
  %115 = load i32, ptr %thisbad, align 4
  %add261 = add i32 %115, %call260
  store i32 %add261, ptr %thisbad, align 4
  br label %for.inc262

for.inc262:                                       ; preds = %for.end259
  %116 = load i8, ptr %x, align 1
  %inc263 = add i8 %116, 1
  store i8 %inc263, ptr %x, align 1
  br label %for.cond216, !llvm.loop !52

for.end264:                                       ; preds = %for.cond216
  %117 = load i32, ptr %thisbad, align 4
  ret i32 %117
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @badruns(i8 noundef zeroext %length) #0 {
entry:
  %length.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %runsbad = alloca i32, align 4
  store i8 %length, ptr %length.addr, align 1
  store i32 0, ptr %runsbad, align 4
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %length.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp sle i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @rlens, align 8
  %3 = load i8, ptr %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %4 to i32
  %cmp4 = icmp sge i32 %conv3, 5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr @rlens, align 8
  %6 = load i8, ptr %i, align 1
  %idxprom6 = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 %idxprom6
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %add = add nsw i32 3, %conv8
  %sub = sub nsw i32 %add, 5
  %8 = load i32, ptr %runsbad, align 4
  %add9 = add i32 %8, %sub
  store i32 %add9, ptr %runsbad, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i8, ptr %i, align 1
  %inc = add i8 %9, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  store i8 3, ptr %i, align 1
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc107, %for.end
  %10 = load i8, ptr %i, align 1
  %conv11 = zext i8 %10 to i32
  %11 = load i8, ptr %length.addr, align 1
  %conv12 = zext i8 %11 to i32
  %sub13 = sub nsw i32 %conv12, 1
  %cmp14 = icmp slt i32 %conv11, %sub13
  br i1 %cmp14, label %for.body16, label %for.end111

for.body16:                                       ; preds = %for.cond10
  %12 = load ptr, ptr @rlens, align 8
  %13 = load i8, ptr %i, align 1
  %conv17 = zext i8 %13 to i32
  %sub18 = sub nsw i32 %conv17, 2
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %12, i64 %idxprom19
  %14 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %15 = load ptr, ptr @rlens, align 8
  %16 = load i8, ptr %i, align 1
  %conv22 = zext i8 %16 to i32
  %add23 = add nsw i32 %conv22, 2
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %15, i64 %idxprom24
  %17 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %17 to i32
  %cmp27 = icmp eq i32 %conv21, %conv26
  br i1 %cmp27, label %land.lhs.true, label %if.end106

land.lhs.true:                                    ; preds = %for.body16
  %18 = load ptr, ptr @rlens, align 8
  %19 = load i8, ptr %i, align 1
  %conv29 = zext i8 %19 to i32
  %add30 = add nsw i32 %conv29, 2
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %18, i64 %idxprom31
  %20 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %20 to i32
  %21 = load ptr, ptr @rlens, align 8
  %22 = load i8, ptr %i, align 1
  %conv34 = zext i8 %22 to i32
  %sub35 = sub nsw i32 %conv34, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %21, i64 %idxprom36
  %23 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %23 to i32
  %cmp39 = icmp eq i32 %conv33, %conv38
  br i1 %cmp39, label %land.lhs.true41, label %if.end106

land.lhs.true41:                                  ; preds = %land.lhs.true
  %24 = load ptr, ptr @rlens, align 8
  %25 = load i8, ptr %i, align 1
  %conv42 = zext i8 %25 to i32
  %sub43 = sub nsw i32 %conv42, 1
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %24, i64 %idxprom44
  %26 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %26 to i32
  %27 = load ptr, ptr @rlens, align 8
  %28 = load i8, ptr %i, align 1
  %conv47 = zext i8 %28 to i32
  %add48 = add nsw i32 %conv47, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %27, i64 %idxprom49
  %29 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %29 to i32
  %cmp52 = icmp eq i32 %conv46, %conv51
  br i1 %cmp52, label %land.lhs.true54, label %if.end106

land.lhs.true54:                                  ; preds = %land.lhs.true41
  %30 = load ptr, ptr @rlens, align 8
  %31 = load i8, ptr %i, align 1
  %conv55 = zext i8 %31 to i32
  %sub56 = sub nsw i32 %conv55, 1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %30, i64 %idxprom57
  %32 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %32 to i32
  %mul = mul nsw i32 %conv59, 3
  %33 = load ptr, ptr @rlens, align 8
  %34 = load i8, ptr %i, align 1
  %idxprom60 = zext i8 %34 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %33, i64 %idxprom60
  %35 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %35 to i32
  %cmp63 = icmp eq i32 %mul, %conv62
  br i1 %cmp63, label %land.lhs.true65, label %if.end106

land.lhs.true65:                                  ; preds = %land.lhs.true54
  %36 = load ptr, ptr @rlens, align 8
  %37 = load i8, ptr %i, align 1
  %conv66 = zext i8 %37 to i32
  %sub67 = sub nsw i32 %conv66, 3
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %36, i64 %idxprom68
  %38 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %38 to i32
  %cmp71 = icmp eq i32 %conv70, 0
  br i1 %cmp71, label %if.then104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true65
  %39 = load i8, ptr %i, align 1
  %conv73 = zext i8 %39 to i32
  %add74 = add nsw i32 %conv73, 3
  %40 = load i8, ptr %length.addr, align 1
  %conv75 = zext i8 %40 to i32
  %cmp76 = icmp sgt i32 %add74, %conv75
  br i1 %cmp76, label %if.then104, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr @rlens, align 8
  %42 = load i8, ptr %i, align 1
  %conv79 = zext i8 %42 to i32
  %sub80 = sub nsw i32 %conv79, 3
  %idxprom81 = sext i32 %sub80 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %41, i64 %idxprom81
  %43 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %43 to i32
  %mul84 = mul nsw i32 %conv83, 3
  %44 = load ptr, ptr @rlens, align 8
  %45 = load i8, ptr %i, align 1
  %idxprom85 = zext i8 %45 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %44, i64 %idxprom85
  %46 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %46 to i32
  %mul88 = mul nsw i32 %conv87, 4
  %cmp89 = icmp sge i32 %mul84, %mul88
  br i1 %cmp89, label %if.then104, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false78
  %47 = load ptr, ptr @rlens, align 8
  %48 = load i8, ptr %i, align 1
  %conv92 = zext i8 %48 to i32
  %add93 = add nsw i32 %conv92, 3
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %47, i64 %idxprom94
  %49 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %49 to i32
  %mul97 = mul nsw i32 %conv96, 3
  %50 = load ptr, ptr @rlens, align 8
  %51 = load i8, ptr %i, align 1
  %idxprom98 = zext i8 %51 to i64
  %arrayidx99 = getelementptr inbounds i8, ptr %50, i64 %idxprom98
  %52 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %52 to i32
  %mul101 = mul nsw i32 %conv100, 4
  %cmp102 = icmp sge i32 %mul97, %mul101
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %lor.lhs.false91, %lor.lhs.false78, %lor.lhs.false, %land.lhs.true65
  %53 = load i32, ptr %runsbad, align 4
  %add105 = add i32 %53, 40
  store i32 %add105, ptr %runsbad, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %lor.lhs.false91, %land.lhs.true54, %land.lhs.true41, %land.lhs.true, %for.body16
  br label %for.inc107

for.inc107:                                       ; preds = %if.end106
  %54 = load i8, ptr %i, align 1
  %conv108 = zext i8 %54 to i32
  %add109 = add nsw i32 %conv108, 2
  %conv110 = trunc i32 %add109 to i8
  store i8 %conv110, ptr %i, align 1
  br label %for.cond10, !llvm.loop !54

for.end111:                                       ; preds = %for.cond10
  %55 = load i32, ptr %runsbad, align 4
  ret i32 %55
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal zeroext i8 @pc_inline_source_snapshot_public_repos_embench_iot_src_qrduino_qrencode_0(i8 noundef zeroext %x, i8 noundef zeroext %y)  alwaysinline#0 {
entry:
  %x.addr = alloca i8, align 1
  %y.addr = alloca i8, align 1
  %bt = alloca i32, align 4
  store i8 %x, ptr %x.addr, align 1
  store i8 %y, ptr %y.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %y.addr, align 1
  %conv1 = zext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %x.addr, align 1
  %conv3 = zext i8 %2 to i32
  store i32 %conv3, ptr %bt, align 4
  %3 = load i8, ptr %y.addr, align 1
  store i8 %3, ptr %x.addr, align 1
  %4 = load i32, ptr %bt, align 4
  %conv4 = trunc i32 %4 to i8
  store i8 %conv4, ptr %y.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, ptr %y.addr, align 1
  %conv5 = zext i8 %5 to i32
  store i32 %conv5, ptr %bt, align 4
  %6 = load i8, ptr %y.addr, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i8, ptr %y.addr, align 1
  %conv7 = zext i8 %7 to i32
  %mul = mul nsw i32 %conv6, %conv7
  %8 = load i32, ptr %bt, align 4
  %add = add i32 %8, %mul
  store i32 %add, ptr %bt, align 4
  %9 = load i32, ptr %bt, align 4
  %shr = lshr i32 %9, 1
  store i32 %shr, ptr %bt, align 4
  %10 = load i8, ptr %x.addr, align 1
  %conv8 = zext i8 %10 to i32
  %11 = load i32, ptr %bt, align 4
  %add9 = add i32 %11, %conv8
  store i32 %add9, ptr %bt, align 4
  %12 = load ptr, ptr @framask, align 8
  %13 = load i32, ptr %bt, align 4
  %shr10 = lshr i32 %13, 3
  %idxprom = zext i32 %shr10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom
  %14 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %14 to i32
  %15 = load i32, ptr %bt, align 4
  %and = and i32 %15, 7
  %sub = sub i32 7, %and
  %shr12 = ashr i32 %conv11, %sub
  %and13 = and i32 %shr12, 1
  %conv14 = trunc i32 %and13 to i8
  ret i8 %conv14
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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
