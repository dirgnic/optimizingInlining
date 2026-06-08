; ModuleID = './out/greedy_inlinefriendly_scan/rewritten_ir/teacher_balanced_score/source_snapshot_public_repos_embench-iot_src_qrduino_qrencode.prepared.ll'
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
  %conv = zext i8 %2 to i64
  %3 = load i8, ptr @WDB, align 1
  %conv1 = zext i8 %3 to i64
  %mul = mul nuw nsw i64 %conv, %conv1
  %4 = load ptr, ptr @strinbuf, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %mul, i64 noundef %5) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %if.end12 ]
  store i8 %storemerge, ptr %i, align 1
  %cmp = icmp ult i8 %storemerge, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8, ptr %i, align 1
  call void @applymask(i8 noundef zeroext %6)
  %call5 = call i32 @badcheck()
  store i32 %call5, ptr %badness, align 4
  %7 = load i32, ptr %mindem, align 4
  %cmp6 = icmp ult i32 %call5, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %badness, align 4
  store i32 %8, ptr %mindem, align 4
  %9 = load i8, ptr %i, align 1
  store i8 %9, ptr %best, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i8, ptr %best, align 1
  %cmp9 = icmp eq i8 %10, 7
  br i1 %cmp9, label %for.end, label %if.end12

if.end12:                                         ; preds = %if.end
  %11 = load ptr, ptr @qrframe, align 8
  %12 = load ptr, ptr @strinbuf, align 8
  %13 = load i8, ptr @WD, align 1
  %conv13 = zext i8 %13 to i64
  %14 = load i8, ptr @WDB, align 1
  %conv14 = zext i8 %14 to i64
  %mul15 = mul nuw nsw i64 %conv13, %conv14
  %15 = load ptr, ptr @qrframe, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call17 = call ptr @__memcpy_chk(ptr noundef %11, ptr noundef %12, i64 noundef %mul15, i64 noundef %16) #4
  %17 = load i8, ptr %i, align 1
  %inc = add i8 %17, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end, %for.cond
  %18 = load i8, ptr %best, align 1
  %19 = load i8, ptr %i, align 1
  %cmp20.not = icmp eq i8 %18, %19
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.end
  %20 = load i8, ptr %best, align 1
  call void @applymask(i8 noundef zeroext %20)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.end
  %21 = load i8, ptr %best, align 1
  call void @addfmt(i8 noundef zeroext %21)
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
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size, align 4
  %1 = load i8, ptr @datablkw, align 1
  %conv1 = zext i8 %1 to i32
  %2 = load i8, ptr @neccblk1, align 1
  %conv2 = zext i8 %2 to i32
  %3 = load i8, ptr @neccblk2, align 1
  %conv3 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv2, %conv3
  %mul = mul nuw nsw i32 %add, %conv1
  %conv4 = zext i8 %3 to i32
  %add5 = add nuw nsw i32 %mul, %conv4
  store i32 %add5, ptr %max, align 4
  %4 = load i32, ptr %size, align 4
  %sub = add nsw i32 %add5, -2
  %cmp.not = icmp ult i32 %4, %sub
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %max, align 4
  %sub7 = add i32 %5, -2
  store i32 %sub7, ptr %size, align 4
  %6 = load i8, ptr @VERSION, align 1
  %cmp9 = icmp ugt i8 %6, 9
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then
  %7 = load i32, ptr %size, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %size, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then11, %entry
  %8 = load i32, ptr %size, align 4
  store i32 %8, ptr %i, align 4
  %9 = load i8, ptr @VERSION, align 1
  %cmp14 = icmp ugt i8 %9, 9
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %10 = load ptr, ptr @strinbuf, align 8
  %11 = load i32, ptr %i, align 4
  %add17 = add i32 %11, 2
  %idxprom = zext i32 %add17 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then16
  %12 = load i32, ptr %i, align 4
  %dec18 = add i32 %12, -1
  store i32 %dec18, ptr %i, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr @strinbuf, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom19 = zext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %13, i64 %idxprom19
  %15 = load i8, ptr %arrayidx20, align 1
  %shl = shl i8 %15, 4
  %add22 = add i32 %14, 3
  %idxprom23 = zext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %13, i64 %idxprom23
  %16 = load i8, ptr %arrayidx24, align 1
  %or = or i8 %shl, %16
  store i8 %or, ptr %arrayidx24, align 1
  %17 = load ptr, ptr @strinbuf, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom27 = zext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %17, i64 %idxprom27
  %19 = load i8, ptr %arrayidx28, align 1
  %20 = lshr i8 %19, 4
  %add31 = add i32 %18, 2
  %idxprom32 = zext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %17, i64 %idxprom32
  store i8 %20, ptr %arrayidx33, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %21 = load i32, ptr %size, align 4
  %22 = load ptr, ptr @strinbuf, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx35, align 1
  %.tr8 = trunc i32 %21 to i8
  %24 = shl i8 %.tr8, 4
  %conv38 = or i8 %24, %23
  store i8 %conv38, ptr %arrayidx35, align 1
  %25 = load i32, ptr %size, align 4
  %shr39 = lshr i32 %25, 4
  %conv40 = trunc i32 %shr39 to i8
  %26 = load ptr, ptr @strinbuf, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %26, i64 1
  store i8 %conv40, ptr %arrayidx41, align 1
  %shr42 = lshr i32 %25, 12
  %27 = trunc i32 %shr42 to i8
  %conv44 = or i8 %27, 64
  %28 = load ptr, ptr @strinbuf, align 8
  store i8 %conv44, ptr %28, align 1
  br label %if.end81

if.else:                                          ; preds = %if.end12
  %29 = load ptr, ptr @strinbuf, align 8
  %30 = load i32, ptr %i, align 4
  %add46 = add i32 %30, 1
  %idxprom47 = zext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %29, i64 %idxprom47
  store i8 0, ptr %arrayidx48, align 1
  br label %while.cond49

while.cond49:                                     ; preds = %while.body52, %if.else
  %31 = load i32, ptr %i, align 4
  %dec50 = add i32 %31, -1
  store i32 %dec50, ptr %i, align 4
  %tobool51.not = icmp eq i32 %31, 0
  br i1 %tobool51.not, label %while.end71, label %while.body52

while.body52:                                     ; preds = %while.cond49
  %32 = load ptr, ptr @strinbuf, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom53 = zext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %32, i64 %idxprom53
  %34 = load i8, ptr %arrayidx54, align 1
  %shl56 = shl i8 %34, 4
  %add57 = add i32 %33, 2
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %32, i64 %idxprom58
  %35 = load i8, ptr %arrayidx59, align 1
  %or61 = or i8 %shl56, %35
  store i8 %or61, ptr %arrayidx59, align 1
  %36 = load ptr, ptr @strinbuf, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom63 = zext i32 %37 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %36, i64 %idxprom63
  %38 = load i8, ptr %arrayidx64, align 1
  %39 = lshr i8 %38, 4
  %add68 = add i32 %37, 1
  %idxprom69 = zext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %36, i64 %idxprom69
  store i8 %39, ptr %arrayidx70, align 1
  br label %while.cond49, !llvm.loop !9

while.end71:                                      ; preds = %while.cond49
  %40 = load i32, ptr %size, align 4
  %41 = load ptr, ptr @strinbuf, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %41, i64 1
  %42 = load i8, ptr %arrayidx73, align 1
  %.tr = trunc i32 %40 to i8
  %43 = shl i8 %.tr, 4
  %conv76 = or i8 %43, %42
  store i8 %conv76, ptr %arrayidx73, align 1
  %44 = load i32, ptr %size, align 4
  %shr77 = lshr i32 %44, 4
  %45 = trunc i32 %shr77 to i8
  %conv79 = or i8 %45, 64
  %46 = load ptr, ptr @strinbuf, align 8
  store i8 %conv79, ptr %46, align 1
  br label %if.end81

if.end81:                                         ; preds = %while.end71, %while.end
  %47 = load i32, ptr %size, align 4
  %add82 = add i32 %47, 3
  %48 = load i8, ptr @VERSION, align 1
  %cmp84 = icmp ult i8 %48, 10
  %conv85.neg = sext i1 %cmp84 to i32
  %sub86 = add i32 %add82, %conv85.neg
  store i32 %sub86, ptr %i, align 4
  br label %while.cond87

while.cond87:                                     ; preds = %while.body90, %if.end81
  %49 = load i32, ptr %i, align 4
  %50 = load i32, ptr %max, align 4
  %cmp88 = icmp ult i32 %49, %50
  br i1 %cmp88, label %while.body90, label %while.end96

while.body90:                                     ; preds = %while.cond87
  %51 = load ptr, ptr @strinbuf, align 8
  %52 = load i32, ptr %i, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %i, align 4
  %idxprom91 = zext i32 %52 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %51, i64 %idxprom91
  store i8 -20, ptr %arrayidx92, align 1
  %53 = load ptr, ptr @strinbuf, align 8
  %inc93 = add i32 %52, 2
  store i32 %inc93, ptr %i, align 4
  %idxprom94 = zext i32 %inc to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %53, i64 %idxprom94
  store i8 17, ptr %arrayidx95, align 1
  br label %while.cond87, !llvm.loop !10

while.end96:                                      ; preds = %while.cond87
  %54 = load ptr, ptr @strinbuf, align 8
  %55 = load i32, ptr %max, align 4
  %idxprom97 = zext i32 %55 to i64
  %arrayidx98 = getelementptr inbounds i8, ptr %54, i64 %idxprom97
  store ptr %arrayidx98, ptr %ecc, align 8
  store ptr %54, ptr %dat, align 8
  %56 = load i8, ptr @eccblkwid, align 1
  %57 = load ptr, ptr @qrframe, align 8
  call void @initrspoly(i8 noundef zeroext %56, ptr noundef %57)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.end96
  %storemerge = phi i32 [ 0, %while.end96 ], [ %inc106, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %58 = load i8, ptr @neccblk1, align 1
  %conv99 = zext i8 %58 to i32
  %cmp100 = icmp ult i32 %storemerge, %conv99
  br i1 %cmp100, label %for.body, label %for.cond107

for.body:                                         ; preds = %for.cond
  %59 = load ptr, ptr %dat, align 8
  %60 = load i8, ptr @datablkw, align 1
  %61 = load ptr, ptr %ecc, align 8
  %62 = load i8, ptr @eccblkwid, align 1
  %63 = load ptr, ptr @qrframe, align 8
  call void @appendrs(ptr noundef %59, i8 noundef zeroext %60, ptr noundef %61, i8 noundef zeroext %62, ptr noundef %63)
  %64 = load i8, ptr @datablkw, align 1
  %65 = load ptr, ptr %dat, align 8
  %idx.ext = zext i8 %64 to i64
  %add.ptr = getelementptr inbounds i8, ptr %65, i64 %idx.ext
  store ptr %add.ptr, ptr %dat, align 8
  %66 = load i8, ptr @eccblkwid, align 1
  %67 = load ptr, ptr %ecc, align 8
  %idx.ext104 = zext i8 %66 to i64
  %add.ptr105 = getelementptr inbounds i8, ptr %67, i64 %idx.ext104
  store ptr %add.ptr105, ptr %ecc, align 8
  %68 = load i32, ptr %i, align 4
  %inc106 = add i32 %68, 1
  br label %for.cond, !llvm.loop !11

for.cond107:                                      ; preds = %for.cond, %for.body111
  %storemerge1 = phi i32 [ %inc123, %for.body111 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %i, align 4
  %69 = load i8, ptr @neccblk2, align 1
  %conv108 = zext i8 %69 to i32
  %cmp109 = icmp ult i32 %storemerge1, %conv108
  br i1 %cmp109, label %for.body111, label %for.end124

for.body111:                                      ; preds = %for.cond107
  %70 = load ptr, ptr %dat, align 8
  %71 = load i8, ptr @datablkw, align 1
  %add113 = add i8 %71, 1
  %72 = load ptr, ptr %ecc, align 8
  %73 = load i8, ptr @eccblkwid, align 1
  %74 = load ptr, ptr @qrframe, align 8
  call void @appendrs(ptr noundef %70, i8 noundef zeroext %add113, ptr noundef %72, i8 noundef zeroext %73, ptr noundef %74)
  %75 = load i8, ptr @datablkw, align 1
  %conv115 = zext i8 %75 to i64
  %add116 = add nuw nsw i64 %conv115, 1
  %76 = load ptr, ptr %dat, align 8
  %add.ptr118 = getelementptr inbounds i8, ptr %76, i64 %add116
  store ptr %add.ptr118, ptr %dat, align 8
  %77 = load i8, ptr @eccblkwid, align 1
  %78 = load ptr, ptr %ecc, align 8
  %idx.ext120 = zext i8 %77 to i64
  %add.ptr121 = getelementptr inbounds i8, ptr %78, i64 %idx.ext120
  store ptr %add.ptr121, ptr %ecc, align 8
  %79 = load i32, ptr %i, align 4
  %inc123 = add i32 %79, 1
  br label %for.cond107, !llvm.loop !12

for.end124:                                       ; preds = %for.cond107
  %80 = load ptr, ptr @qrframe, align 8
  store ptr %80, ptr %dat, align 8
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc162, %for.end124
  %storemerge2 = phi i32 [ 0, %for.end124 ], [ %inc163, %for.inc162 ]
  store i32 %storemerge2, ptr %i, align 4
  %81 = load i8, ptr @datablkw, align 1
  %conv126 = zext i8 %81 to i32
  %cmp127 = icmp ult i32 %storemerge2, %conv126
  br i1 %cmp127, label %for.cond130, label %for.cond165

for.cond130:                                      ; preds = %for.cond125, %for.body134
  %storemerge6 = phi i32 [ %inc141, %for.body134 ], [ 0, %for.cond125 ]
  store i32 %storemerge6, ptr %j, align 4
  %82 = load i8, ptr @neccblk1, align 1
  %conv131 = zext i8 %82 to i32
  %cmp132 = icmp ult i32 %storemerge6, %conv131
  br i1 %cmp132, label %for.body134, label %for.cond143

for.body134:                                      ; preds = %for.cond130
  %83 = load ptr, ptr @strinbuf, align 8
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr %j, align 4
  %86 = load i8, ptr @datablkw, align 1
  %conv135 = zext i8 %86 to i32
  %mul136 = mul i32 %85, %conv135
  %add137 = add i32 %84, %mul136
  %idxprom138 = zext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %83, i64 %idxprom138
  %87 = load i8, ptr %arrayidx139, align 1
  %88 = load ptr, ptr %dat, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %incdec.ptr, ptr %dat, align 8
  store i8 %87, ptr %88, align 1
  %89 = load i32, ptr %j, align 4
  %inc141 = add i32 %89, 1
  br label %for.cond130, !llvm.loop !13

for.cond143:                                      ; preds = %for.cond130, %for.body147
  %storemerge7 = phi i32 [ %inc160, %for.body147 ], [ 0, %for.cond130 ]
  store i32 %storemerge7, ptr %j, align 4
  %90 = load i8, ptr @neccblk2, align 1
  %conv144 = zext i8 %90 to i32
  %cmp145 = icmp ult i32 %storemerge7, %conv144
  br i1 %cmp145, label %for.body147, label %for.inc162

for.body147:                                      ; preds = %for.cond143
  %91 = load ptr, ptr @strinbuf, align 8
  %92 = load i8, ptr @neccblk1, align 1
  %conv148 = zext i8 %92 to i32
  %93 = load i8, ptr @datablkw, align 1
  %conv149 = zext i8 %93 to i32
  %mul150 = mul nuw nsw i32 %conv148, %conv149
  %94 = load i32, ptr %i, align 4
  %add151 = add i32 %mul150, %94
  %95 = load i32, ptr %j, align 4
  %conv152 = zext i8 %93 to i32
  %add153 = add nuw nsw i32 %conv152, 1
  %mul154 = mul i32 %95, %add153
  %add155 = add i32 %add151, %mul154
  %idxprom156 = zext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds i8, ptr %91, i64 %idxprom156
  %96 = load i8, ptr %arrayidx157, align 1
  %97 = load ptr, ptr %dat, align 8
  %incdec.ptr158 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %incdec.ptr158, ptr %dat, align 8
  store i8 %96, ptr %97, align 1
  %98 = load i32, ptr %j, align 4
  %inc160 = add i32 %98, 1
  br label %for.cond143, !llvm.loop !14

for.inc162:                                       ; preds = %for.cond143
  %99 = load i32, ptr %i, align 4
  %inc163 = add i32 %99, 1
  br label %for.cond125, !llvm.loop !15

for.cond165:                                      ; preds = %for.cond125, %for.body169
  %storemerge3 = phi i32 [ %inc182, %for.body169 ], [ 0, %for.cond125 ]
  store i32 %storemerge3, ptr %j, align 4
  %100 = load i8, ptr @neccblk2, align 1
  %conv166 = zext i8 %100 to i32
  %cmp167 = icmp ult i32 %storemerge3, %conv166
  br i1 %cmp167, label %for.body169, label %for.cond184

for.body169:                                      ; preds = %for.cond165
  %101 = load ptr, ptr @strinbuf, align 8
  %102 = load i8, ptr @neccblk1, align 1
  %conv170 = zext i8 %102 to i32
  %103 = load i8, ptr @datablkw, align 1
  %conv171 = zext i8 %103 to i32
  %mul172 = mul nuw nsw i32 %conv170, %conv171
  %104 = load i32, ptr %i, align 4
  %add173 = add i32 %mul172, %104
  %105 = load i32, ptr %j, align 4
  %conv174 = zext i8 %103 to i32
  %add175 = add nuw nsw i32 %conv174, 1
  %mul176 = mul i32 %105, %add175
  %add177 = add i32 %add173, %mul176
  %idxprom178 = zext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds i8, ptr %101, i64 %idxprom178
  %106 = load i8, ptr %arrayidx179, align 1
  %107 = load ptr, ptr %dat, align 8
  %incdec.ptr180 = getelementptr inbounds i8, ptr %107, i64 1
  store ptr %incdec.ptr180, ptr %dat, align 8
  store i8 %106, ptr %107, align 1
  %108 = load i32, ptr %j, align 4
  %inc182 = add i32 %108, 1
  br label %for.cond165, !llvm.loop !16

for.cond184:                                      ; preds = %for.cond165, %for.inc206
  %storemerge4 = phi i32 [ %inc207, %for.inc206 ], [ 0, %for.cond165 ]
  store i32 %storemerge4, ptr %i, align 4
  %109 = load i8, ptr @eccblkwid, align 1
  %conv185 = zext i8 %109 to i32
  %cmp186 = icmp ult i32 %storemerge4, %conv185
  br i1 %cmp186, label %for.cond189, label %for.end208

for.cond189:                                      ; preds = %for.cond184, %for.body195
  %storemerge5 = phi i32 [ %inc204, %for.body195 ], [ 0, %for.cond184 ]
  store i32 %storemerge5, ptr %j, align 4
  %110 = load i8, ptr @neccblk1, align 1
  %conv190 = zext i8 %110 to i32
  %111 = load i8, ptr @neccblk2, align 1
  %conv191 = zext i8 %111 to i32
  %add192 = add nuw nsw i32 %conv190, %conv191
  %cmp193 = icmp ult i32 %storemerge5, %add192
  br i1 %cmp193, label %for.body195, label %for.inc206

for.body195:                                      ; preds = %for.cond189
  %112 = load ptr, ptr @strinbuf, align 8
  %113 = load i32, ptr %max, align 4
  %114 = load i32, ptr %i, align 4
  %add196 = add i32 %113, %114
  %115 = load i32, ptr %j, align 4
  %116 = load i8, ptr @eccblkwid, align 1
  %conv197 = zext i8 %116 to i32
  %mul198 = mul i32 %115, %conv197
  %add199 = add i32 %add196, %mul198
  %idxprom200 = zext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds i8, ptr %112, i64 %idxprom200
  %117 = load i8, ptr %arrayidx201, align 1
  %118 = load ptr, ptr %dat, align 8
  %incdec.ptr202 = getelementptr inbounds i8, ptr %118, i64 1
  store ptr %incdec.ptr202, ptr %dat, align 8
  store i8 %117, ptr %118, align 1
  %119 = load i32, ptr %j, align 4
  %inc204 = add i32 %119, 1
  br label %for.cond189, !llvm.loop !17

for.inc206:                                       ; preds = %for.cond189
  %120 = load i32, ptr %i, align 4
  %inc207 = add i32 %120, 1
  br label %for.cond184, !llvm.loop !18

for.end208:                                       ; preds = %for.cond184
  %121 = load ptr, ptr @strinbuf, align 8
  %122 = load ptr, ptr @qrframe, align 8
  %123 = load i32, ptr %max, align 4
  %124 = load i8, ptr @eccblkwid, align 1
  %conv209 = zext i8 %124 to i32
  %125 = load i8, ptr @neccblk1, align 1
  %conv210 = zext i8 %125 to i32
  %126 = load i8, ptr @neccblk2, align 1
  %conv211 = zext i8 %126 to i32
  %add212 = add nuw nsw i32 %conv210, %conv211
  %mul213 = mul nuw nsw i32 %add212, %conv209
  %add214 = add i32 %123, %mul213
  %conv215 = zext i32 %add214 to i64
  %127 = load ptr, ptr @strinbuf, align 8
  %128 = call i64 @llvm.objectsize.i64.p0(ptr %127, i1 false, i1 true, i1 false)
  %call216 = call ptr @__memcpy_chk(ptr noundef %121, ptr noundef %122, i64 noundef %conv215, i64 noundef %128) #4
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
  %conv = zext i8 %2 to i64
  %3 = load i8, ptr @WD, align 1
  %conv1 = zext i8 %3 to i64
  %mul = mul nuw nsw i64 %conv, %conv1
  %4 = load ptr, ptr @qrframe, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %0, ptr noundef %1, i64 noundef %mul, i64 noundef %5) #4
  %6 = load i8, ptr @WD, align 1
  %sub = add i8 %6, -1
  store i8 %sub, ptr %y, align 1
  store i8 %sub, ptr %x, align 1
  store i8 1, ptr %ffdecy, align 1
  store i8 1, ptr %ffgohv, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc91, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc92, %for.inc91 ]
  store i32 %storemerge, ptr %i, align 4
  %7 = load i8, ptr @datablkw, align 1
  %conv5 = zext i8 %7 to i32
  %8 = load i8, ptr @eccblkwid, align 1
  %conv6 = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv5, %conv6
  %9 = load i8, ptr @neccblk1, align 1
  %conv7 = zext i8 %9 to i32
  %10 = load i8, ptr @neccblk2, align 1
  %conv8 = zext i8 %10 to i32
  %add9 = add nuw nsw i32 %conv7, %conv8
  %mul10 = mul nuw nsw i32 %add, %add9
  %conv11 = zext i8 %10 to i32
  %add12 = add nuw nsw i32 %mul10, %conv11
  %cmp = icmp slt i32 %storemerge, %add12
  br i1 %cmp, label %for.body, label %for.end93

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr @strinbuf, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %13 = load i8, ptr %arrayidx, align 1
  store i8 %13, ptr %d, align 1
  store i8 0, ptr %j, align 1
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %14 = load i8, ptr %j, align 1
  %cmp16 = icmp ult i8 %14, 8
  br i1 %cmp16, label %for.body18, label %for.inc91

for.body18:                                       ; preds = %for.cond14
  %15 = load i8, ptr %d, align 1
  %tobool.not = icmp sgt i8 %15, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body18
  %16 = load i8, ptr %x, align 1
  %17 = and i8 %16, 7
  %shr = lshr i8 -128, %17
  %18 = load ptr, ptr @qrframe, align 8
  %19 = lshr i8 %16, 3
  %20 = zext i8 %19 to i64
  %21 = load i8, ptr %y, align 1
  %conv24 = zext i8 %21 to i64
  %22 = load i8, ptr @WDB, align 1
  %conv25 = zext i8 %22 to i64
  %mul26 = mul nuw nsw i64 %conv24, %conv25
  %add27 = add nuw nsw i64 %mul26, %20
  %arrayidx29 = getelementptr inbounds i8, ptr %18, i64 %add27
  %23 = load i8, ptr %arrayidx29, align 1
  %or = or i8 %shr, %23
  store i8 %or, ptr %arrayidx29, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  br label %do.body

do.body:                                          ; preds = %if.end81, %if.end
  %24 = load i8, ptr %ffgohv, align 1
  %tobool32.not = icmp eq i8 %24, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

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
  %tobool34.not = icmp eq i8 %27, 0
  br i1 %tobool34.not, label %if.else54, label %if.then35

if.then35:                                        ; preds = %if.else
  %28 = load i8, ptr %y, align 1
  %cmp37.not = icmp eq i8 %28, 0
  br i1 %cmp37.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.then35
  %29 = load i8, ptr %y, align 1
  %dec40 = add i8 %29, -1
  store i8 %dec40, ptr %y, align 1
  br label %if.end81

if.else41:                                        ; preds = %if.then35
  %30 = load i8, ptr %x, align 1
  %sub43 = add i8 %30, -2
  store i8 %sub43, ptr %x, align 1
  %31 = load i8, ptr %ffdecy, align 1
  %tobool45.not = icmp eq i8 %31, 0
  %conv46 = zext i1 %tobool45.not to i8
  store i8 %conv46, ptr %ffdecy, align 1
  %cmp48 = icmp eq i8 %sub43, 6
  br i1 %cmp48, label %if.then50, label %if.end81

if.then50:                                        ; preds = %if.else41
  %32 = load i8, ptr %x, align 1
  %dec51 = add i8 %32, -1
  store i8 %dec51, ptr %x, align 1
  store i8 9, ptr %y, align 1
  br label %if.end81

if.else54:                                        ; preds = %if.else
  %33 = load i8, ptr %y, align 1
  %conv55 = zext i8 %33 to i32
  %34 = load i8, ptr @WD, align 1
  %conv56 = zext i8 %34 to i32
  %sub57 = add nsw i32 %conv56, -1
  %cmp58.not = icmp eq i32 %sub57, %conv55
  br i1 %cmp58.not, label %if.else62, label %if.then60

if.then60:                                        ; preds = %if.else54
  %35 = load i8, ptr %y, align 1
  %inc61 = add i8 %35, 1
  store i8 %inc61, ptr %y, align 1
  br label %if.end81

if.else62:                                        ; preds = %if.else54
  %36 = load i8, ptr %x, align 1
  %sub64 = add i8 %36, -2
  store i8 %sub64, ptr %x, align 1
  %37 = load i8, ptr %ffdecy, align 1
  %tobool66.not = icmp eq i8 %37, 0
  %conv69 = zext i1 %tobool66.not to i8
  store i8 %conv69, ptr %ffdecy, align 1
  %cmp71 = icmp eq i8 %sub64, 6
  br i1 %cmp71, label %if.then73, label %if.end81

if.then73:                                        ; preds = %if.else62
  %38 = load i8, ptr %x, align 1
  %dec74 = add i8 %38, -1
  store i8 %dec74, ptr %x, align 1
  %39 = load i8, ptr %y, align 1
  %sub76 = add i8 %39, -8
  store i8 %sub76, ptr %y, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.else41, %if.then50, %if.then39, %if.else62, %if.then73, %if.then60, %if.then33
  %40 = load i8, ptr %ffgohv, align 1
  %tobool82.not = icmp eq i8 %40, 0
  %conv85 = zext i1 %tobool82.not to i8
  store i8 %conv85, ptr %ffgohv, align 1
  %41 = load i8, ptr %x, align 1
  %42 = load i8, ptr %y, align 1
  %call86 = call zeroext i8 @ismasked(i8 noundef zeroext %41, i8 noundef zeroext %42)
  %tobool87.not = icmp eq i8 %call86, 0
  br i1 %tobool87.not, label %for.inc, label %do.body, !llvm.loop !19

for.inc:                                          ; preds = %if.end81
  %43 = load i8, ptr %j, align 1
  %inc88 = add i8 %43, 1
  store i8 %inc88, ptr %j, align 1
  %44 = load i8, ptr %d, align 1
  %shl = shl i8 %44, 1
  store i8 %shl, ptr %d, align 1
  br label %for.cond14, !llvm.loop !20

for.inc91:                                        ; preds = %for.cond14
  %45 = load i32, ptr %i, align 4
  %inc92 = add nsw i32 %45, 1
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
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %r3x = alloca i8, align 1
  %r3y = alloca i8, align 1
  switch i8 %m, label %sw.epilog [
    i8 0, label %for.cond
    i8 1, label %for.cond26
    i8 2, label %for.cond67
    i8 3, label %sw.bb111
    i8 4, label %for.cond163
    i8 5, label %sw.bb213
    i8 6, label %sw.bb278
    i8 7, label %sw.bb341
  ]

for.cond:                                         ; preds = %entry, %for.inc22
  %storemerge7 = phi i8 [ %inc23, %for.inc22 ], [ 0, %entry ]
  store i8 %storemerge7, ptr %y, align 1
  %0 = load i8, ptr @WD, align 1
  %cmp = icmp ult i8 %storemerge7, %0
  br i1 %cmp, label %for.cond4, label %sw.epilog

for.cond4:                                        ; preds = %for.cond, %for.inc
  %storemerge8 = phi i8 [ %inc, %for.inc ], [ 0, %for.cond ]
  store i8 %storemerge8, ptr %x, align 1
  %1 = load i8, ptr @WD, align 1
  %cmp7 = icmp ult i8 %storemerge8, %1
  br i1 %cmp7, label %for.body9, label %for.inc22

for.body9:                                        ; preds = %for.cond4
  %2 = load i8, ptr %x, align 1
  %conv10 = zext i8 %2 to i32
  %3 = load i8, ptr %y, align 1
  %conv11 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv10, %conv11
  %and = and i32 %add, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body9
  %4 = load i8, ptr %x, align 1
  %5 = load i8, ptr %y, align 1
  %call = call zeroext i8 @ismasked(i8 noundef zeroext %4, i8 noundef zeroext %5)
  %tobool12.not = icmp eq i8 %call, 0
  br i1 %tobool12.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8, ptr %x, align 1
  %7 = and i8 %6, 7
  %shr = lshr i8 -128, %7
  %8 = load ptr, ptr @qrframe, align 8
  %9 = lshr i8 %6, 3
  %10 = zext i8 %9 to i64
  %11 = load i8, ptr %y, align 1
  %conv17 = zext i8 %11 to i64
  %12 = load i8, ptr @WDB, align 1
  %conv18 = zext i8 %12 to i64
  %mul = mul nuw nsw i64 %conv17, %conv18
  %add19 = add nuw nsw i64 %mul, %10
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %add19
  %13 = load i8, ptr %arrayidx, align 1
  %xor = xor i8 %shr, %13
  store i8 %xor, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body9, %land.lhs.true, %if.then
  %14 = load i8, ptr %x, align 1
  %inc = add i8 %14, 1
  br label %for.cond4, !llvm.loop !22

for.inc22:                                        ; preds = %for.cond4
  %15 = load i8, ptr %y, align 1
  %inc23 = add i8 %15, 1
  br label %for.cond, !llvm.loop !23

for.cond26:                                       ; preds = %entry, %for.inc63
  %storemerge5 = phi i8 [ %inc64, %for.inc63 ], [ 0, %entry ]
  store i8 %storemerge5, ptr %y, align 1
  %16 = load i8, ptr @WD, align 1
  %cmp29 = icmp ult i8 %storemerge5, %16
  br i1 %cmp29, label %for.cond32, label %sw.epilog

for.cond32:                                       ; preds = %for.cond26, %for.inc60
  %storemerge6 = phi i8 [ %inc61, %for.inc60 ], [ 0, %for.cond26 ]
  store i8 %storemerge6, ptr %x, align 1
  %17 = load i8, ptr @WD, align 1
  %cmp35 = icmp ult i8 %storemerge6, %17
  br i1 %cmp35, label %for.body37, label %for.inc63

for.body37:                                       ; preds = %for.cond32
  %18 = load i8, ptr %y, align 1
  %19 = and i8 %18, 1
  %tobool40.not = icmp eq i8 %19, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %for.inc60

land.lhs.true41:                                  ; preds = %for.body37
  %20 = load i8, ptr %x, align 1
  %21 = load i8, ptr %y, align 1
  %call42 = call zeroext i8 @ismasked(i8 noundef zeroext %20, i8 noundef zeroext %21)
  %tobool43.not = icmp eq i8 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %for.inc60

if.then44:                                        ; preds = %land.lhs.true41
  %22 = load i8, ptr %x, align 1
  %23 = and i8 %22, 7
  %shr47 = lshr i8 -128, %23
  %24 = load ptr, ptr @qrframe, align 8
  %25 = lshr i8 %22, 3
  %26 = zext i8 %25 to i64
  %27 = load i8, ptr %y, align 1
  %conv50 = zext i8 %27 to i64
  %28 = load i8, ptr @WDB, align 1
  %conv51 = zext i8 %28 to i64
  %mul52 = mul nuw nsw i64 %conv50, %conv51
  %add53 = add nuw nsw i64 %mul52, %26
  %arrayidx55 = getelementptr inbounds i8, ptr %24, i64 %add53
  %29 = load i8, ptr %arrayidx55, align 1
  %xor57 = xor i8 %shr47, %29
  store i8 %xor57, ptr %arrayidx55, align 1
  br label %for.inc60

for.inc60:                                        ; preds = %for.body37, %land.lhs.true41, %if.then44
  %30 = load i8, ptr %x, align 1
  %inc61 = add i8 %30, 1
  br label %for.cond32, !llvm.loop !24

for.inc63:                                        ; preds = %for.cond32
  %31 = load i8, ptr %y, align 1
  %inc64 = add i8 %31, 1
  br label %for.cond26, !llvm.loop !25

for.cond67:                                       ; preds = %entry, %for.inc108
  %storemerge4 = phi i8 [ %inc109, %for.inc108 ], [ 0, %entry ]
  store i8 %storemerge4, ptr %y, align 1
  %32 = load i8, ptr @WD, align 1
  %cmp70 = icmp ult i8 %storemerge4, %32
  br i1 %cmp70, label %for.body72, label %sw.epilog

for.body72:                                       ; preds = %for.cond67
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc104, %for.body72
  %33 = load i8, ptr %x, align 1
  %34 = load i8, ptr @WD, align 1
  %cmp76 = icmp ult i8 %33, %34
  br i1 %cmp76, label %for.body78, label %for.inc108

for.body78:                                       ; preds = %for.cond73
  %35 = load i8, ptr %r3x, align 1
  %cmp80 = icmp eq i8 %35, 3
  %spec.store.select = select i1 %cmp80, i8 0, i8 %35
  store i8 %spec.store.select, ptr %r3x, align 1
  %36 = load i8, ptr %r3x, align 1
  %tobool84.not = icmp eq i8 %36, 0
  br i1 %tobool84.not, label %land.lhs.true85, label %for.inc104

land.lhs.true85:                                  ; preds = %for.body78
  %37 = load i8, ptr %x, align 1
  %38 = load i8, ptr %y, align 1
  %call86 = call zeroext i8 @ismasked(i8 noundef zeroext %37, i8 noundef zeroext %38)
  %tobool87.not = icmp eq i8 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %for.inc104

if.then88:                                        ; preds = %land.lhs.true85
  %39 = load i8, ptr %x, align 1
  %40 = and i8 %39, 7
  %shr91 = lshr i8 -128, %40
  %41 = load ptr, ptr @qrframe, align 8
  %42 = lshr i8 %39, 3
  %43 = zext i8 %42 to i64
  %44 = load i8, ptr %y, align 1
  %conv94 = zext i8 %44 to i64
  %45 = load i8, ptr @WDB, align 1
  %conv95 = zext i8 %45 to i64
  %mul96 = mul nuw nsw i64 %conv94, %conv95
  %add97 = add nuw nsw i64 %mul96, %43
  %arrayidx99 = getelementptr inbounds i8, ptr %41, i64 %add97
  %46 = load i8, ptr %arrayidx99, align 1
  %xor101 = xor i8 %shr91, %46
  store i8 %xor101, ptr %arrayidx99, align 1
  br label %for.inc104

for.inc104:                                       ; preds = %for.body78, %land.lhs.true85, %if.then88
  %47 = load i8, ptr %x, align 1
  %inc105 = add i8 %47, 1
  store i8 %inc105, ptr %x, align 1
  %48 = load i8, ptr %r3x, align 1
  %inc106 = add i8 %48, 1
  store i8 %inc106, ptr %r3x, align 1
  br label %for.cond73, !llvm.loop !26

for.inc108:                                       ; preds = %for.cond73
  %49 = load i8, ptr %y, align 1
  %inc109 = add i8 %49, 1
  br label %for.cond67, !llvm.loop !27

sw.bb111:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc158, %sw.bb111
  %50 = load i8, ptr %y, align 1
  %51 = load i8, ptr @WD, align 1
  %cmp115 = icmp ult i8 %50, %51
  br i1 %cmp115, label %for.body117, label %sw.epilog

for.body117:                                      ; preds = %for.cond112
  %52 = load i8, ptr %r3y, align 1
  %cmp119 = icmp eq i8 %52, 3
  %spec.store.select9 = select i1 %cmp119, i8 0, i8 %52
  store i8 %spec.store.select9, ptr %r3y, align 1
  %53 = load i8, ptr %r3y, align 1
  store i8 %53, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc154, %for.body117
  %54 = load i8, ptr %x, align 1
  %55 = load i8, ptr @WD, align 1
  %cmp126 = icmp ult i8 %54, %55
  br i1 %cmp126, label %for.body128, label %for.inc158

for.body128:                                      ; preds = %for.cond123
  %56 = load i8, ptr %r3x, align 1
  %cmp130 = icmp eq i8 %56, 3
  %spec.store.select10 = select i1 %cmp130, i8 0, i8 %56
  store i8 %spec.store.select10, ptr %r3x, align 1
  %57 = load i8, ptr %r3x, align 1
  %tobool134.not = icmp eq i8 %57, 0
  br i1 %tobool134.not, label %land.lhs.true135, label %for.inc154

land.lhs.true135:                                 ; preds = %for.body128
  %58 = load i8, ptr %x, align 1
  %59 = load i8, ptr %y, align 1
  %call136 = call zeroext i8 @ismasked(i8 noundef zeroext %58, i8 noundef zeroext %59)
  %tobool137.not = icmp eq i8 %call136, 0
  br i1 %tobool137.not, label %if.then138, label %for.inc154

if.then138:                                       ; preds = %land.lhs.true135
  %60 = load i8, ptr %x, align 1
  %61 = and i8 %60, 7
  %shr141 = lshr i8 -128, %61
  %62 = load ptr, ptr @qrframe, align 8
  %63 = lshr i8 %60, 3
  %64 = zext i8 %63 to i64
  %65 = load i8, ptr %y, align 1
  %conv144 = zext i8 %65 to i64
  %66 = load i8, ptr @WDB, align 1
  %conv145 = zext i8 %66 to i64
  %mul146 = mul nuw nsw i64 %conv144, %conv145
  %add147 = add nuw nsw i64 %mul146, %64
  %arrayidx149 = getelementptr inbounds i8, ptr %62, i64 %add147
  %67 = load i8, ptr %arrayidx149, align 1
  %xor151 = xor i8 %shr141, %67
  store i8 %xor151, ptr %arrayidx149, align 1
  br label %for.inc154

for.inc154:                                       ; preds = %for.body128, %land.lhs.true135, %if.then138
  %68 = load i8, ptr %x, align 1
  %inc155 = add i8 %68, 1
  store i8 %inc155, ptr %x, align 1
  %69 = load i8, ptr %r3x, align 1
  %inc156 = add i8 %69, 1
  store i8 %inc156, ptr %r3x, align 1
  br label %for.cond123, !llvm.loop !28

for.inc158:                                       ; preds = %for.cond123
  %70 = load i8, ptr %y, align 1
  %inc159 = add i8 %70, 1
  store i8 %inc159, ptr %y, align 1
  %71 = load i8, ptr %r3y, align 1
  %inc160 = add i8 %71, 1
  store i8 %inc160, ptr %r3y, align 1
  br label %for.cond112, !llvm.loop !29

for.cond163:                                      ; preds = %entry, %for.inc210
  %storemerge = phi i8 [ %inc211, %for.inc210 ], [ 0, %entry ]
  store i8 %storemerge, ptr %y, align 1
  %72 = load i8, ptr @WD, align 1
  %cmp166 = icmp ult i8 %storemerge, %72
  br i1 %cmp166, label %for.body168, label %sw.epilog

for.body168:                                      ; preds = %for.cond163
  store i8 0, ptr %r3x, align 1
  %73 = load i8, ptr %y, align 1
  %74 = lshr i8 %73, 1
  %75 = and i8 %74, 1
  store i8 %75, ptr %r3y, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc206, %for.body168
  %76 = load i8, ptr %x, align 1
  %77 = load i8, ptr @WD, align 1
  %cmp176 = icmp ult i8 %76, %77
  br i1 %cmp176, label %for.body178, label %for.inc210

for.body178:                                      ; preds = %for.cond173
  %78 = load i8, ptr %r3x, align 1
  %cmp180 = icmp eq i8 %78, 3
  br i1 %cmp180, label %if.then182, label %if.end185

if.then182:                                       ; preds = %for.body178
  store i8 0, ptr %r3x, align 1
  %79 = load i8, ptr %r3y, align 1
  %tobool183.not = icmp eq i8 %79, 0
  %conv184 = zext i1 %tobool183.not to i8
  store i8 %conv184, ptr %r3y, align 1
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %for.body178
  %80 = load i8, ptr %r3y, align 1
  %tobool186.not = icmp eq i8 %80, 0
  br i1 %tobool186.not, label %land.lhs.true187, label %for.inc206

land.lhs.true187:                                 ; preds = %if.end185
  %81 = load i8, ptr %x, align 1
  %82 = load i8, ptr %y, align 1
  %call188 = call zeroext i8 @ismasked(i8 noundef zeroext %81, i8 noundef zeroext %82)
  %tobool189.not = icmp eq i8 %call188, 0
  br i1 %tobool189.not, label %if.then190, label %for.inc206

if.then190:                                       ; preds = %land.lhs.true187
  %83 = load i8, ptr %x, align 1
  %84 = and i8 %83, 7
  %shr193 = lshr i8 -128, %84
  %85 = load ptr, ptr @qrframe, align 8
  %86 = lshr i8 %83, 3
  %87 = zext i8 %86 to i64
  %88 = load i8, ptr %y, align 1
  %conv196 = zext i8 %88 to i64
  %89 = load i8, ptr @WDB, align 1
  %conv197 = zext i8 %89 to i64
  %mul198 = mul nuw nsw i64 %conv196, %conv197
  %add199 = add nuw nsw i64 %mul198, %87
  %arrayidx201 = getelementptr inbounds i8, ptr %85, i64 %add199
  %90 = load i8, ptr %arrayidx201, align 1
  %xor203 = xor i8 %shr193, %90
  store i8 %xor203, ptr %arrayidx201, align 1
  br label %for.inc206

for.inc206:                                       ; preds = %if.end185, %land.lhs.true187, %if.then190
  %91 = load i8, ptr %x, align 1
  %inc207 = add i8 %91, 1
  store i8 %inc207, ptr %x, align 1
  %92 = load i8, ptr %r3x, align 1
  %inc208 = add i8 %92, 1
  store i8 %inc208, ptr %r3x, align 1
  br label %for.cond173, !llvm.loop !30

for.inc210:                                       ; preds = %for.cond173
  %93 = load i8, ptr %y, align 1
  %inc211 = add i8 %93, 1
  br label %for.cond163, !llvm.loop !31

sw.bb213:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc274, %sw.bb213
  %94 = load i8, ptr %y, align 1
  %95 = load i8, ptr @WD, align 1
  %cmp217 = icmp ult i8 %94, %95
  br i1 %cmp217, label %for.body219, label %sw.epilog

for.body219:                                      ; preds = %for.cond214
  %96 = load i8, ptr %r3y, align 1
  %cmp221 = icmp eq i8 %96, 3
  %spec.store.select11 = select i1 %cmp221, i8 0, i8 %96
  store i8 %spec.store.select11, ptr %r3y, align 1
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc270, %for.body219
  %97 = load i8, ptr %x, align 1
  %98 = load i8, ptr @WD, align 1
  %cmp228 = icmp ult i8 %97, %98
  br i1 %cmp228, label %for.body230, label %for.inc274

for.body230:                                      ; preds = %for.cond225
  %99 = load i8, ptr %r3x, align 1
  %cmp232 = icmp eq i8 %99, 3
  %spec.store.select12 = select i1 %cmp232, i8 0, i8 %99
  store i8 %spec.store.select12, ptr %r3x, align 1
  %100 = load i8, ptr %x, align 1
  %101 = load i8, ptr %y, align 1
  %and2382 = and i8 %100, %101
  %102 = and i8 %and2382, 1
  %103 = load i8, ptr %r3x, align 1
  %tobool240.not = icmp ne i8 %103, 0
  %104 = load i8, ptr %r3y, align 1
  %tobool243.not = icmp ne i8 %104, 0
  %lnot247 = and i1 %tobool240.not, %tobool243.not
  %105 = sext i1 %lnot247 to i8
  %tobool250.not = icmp eq i8 %102, %105
  br i1 %tobool250.not, label %land.lhs.true251, label %for.inc270

land.lhs.true251:                                 ; preds = %for.body230
  %106 = load i8, ptr %x, align 1
  %107 = load i8, ptr %y, align 1
  %call252 = call zeroext i8 @ismasked(i8 noundef zeroext %106, i8 noundef zeroext %107)
  %tobool253.not = icmp eq i8 %call252, 0
  br i1 %tobool253.not, label %if.then254, label %for.inc270

if.then254:                                       ; preds = %land.lhs.true251
  %108 = load i8, ptr %x, align 1
  %109 = and i8 %108, 7
  %shr257 = lshr i8 -128, %109
  %110 = load ptr, ptr @qrframe, align 8
  %111 = lshr i8 %108, 3
  %112 = zext i8 %111 to i64
  %113 = load i8, ptr %y, align 1
  %conv260 = zext i8 %113 to i64
  %114 = load i8, ptr @WDB, align 1
  %conv261 = zext i8 %114 to i64
  %mul262 = mul nuw nsw i64 %conv260, %conv261
  %add263 = add nuw nsw i64 %mul262, %112
  %arrayidx265 = getelementptr inbounds i8, ptr %110, i64 %add263
  %115 = load i8, ptr %arrayidx265, align 1
  %xor267 = xor i8 %shr257, %115
  store i8 %xor267, ptr %arrayidx265, align 1
  br label %for.inc270

for.inc270:                                       ; preds = %for.body230, %land.lhs.true251, %if.then254
  %116 = load i8, ptr %x, align 1
  %inc271 = add i8 %116, 1
  store i8 %inc271, ptr %x, align 1
  %117 = load i8, ptr %r3x, align 1
  %inc272 = add i8 %117, 1
  store i8 %inc272, ptr %r3x, align 1
  br label %for.cond225, !llvm.loop !32

for.inc274:                                       ; preds = %for.cond225
  %118 = load i8, ptr %y, align 1
  %inc275 = add i8 %118, 1
  store i8 %inc275, ptr %y, align 1
  %119 = load i8, ptr %r3y, align 1
  %inc276 = add i8 %119, 1
  store i8 %inc276, ptr %r3y, align 1
  br label %for.cond214, !llvm.loop !33

sw.bb278:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc337, %sw.bb278
  %120 = load i8, ptr %y, align 1
  %121 = load i8, ptr @WD, align 1
  %cmp282 = icmp ult i8 %120, %121
  br i1 %cmp282, label %for.body284, label %sw.epilog

for.body284:                                      ; preds = %for.cond279
  %122 = load i8, ptr %r3y, align 1
  %cmp286 = icmp eq i8 %122, 3
  %spec.store.select13 = select i1 %cmp286, i8 0, i8 %122
  store i8 %spec.store.select13, ptr %r3y, align 1
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond290

for.cond290:                                      ; preds = %for.inc333, %for.body284
  %123 = load i8, ptr %x, align 1
  %124 = load i8, ptr @WD, align 1
  %cmp293 = icmp ult i8 %123, %124
  br i1 %cmp293, label %for.body295, label %for.inc337

for.body295:                                      ; preds = %for.cond290
  %125 = load i8, ptr %r3x, align 1
  %cmp297 = icmp eq i8 %125, 3
  %spec.store.select14 = select i1 %cmp297, i8 0, i8 %125
  store i8 %spec.store.select14, ptr %r3x, align 1
  %126 = load i8, ptr %x, align 1
  %127 = load i8, ptr %y, align 1
  %and3031 = and i8 %126, %127
  %128 = load i8, ptr %r3x, align 1
  %tobool306.not = icmp eq i8 %128, 0
  %129 = load i8, ptr %r3x, align 1
  %130 = load i8, ptr %r3y, align 1
  %cmp309 = icmp eq i8 %129, %130
  %131 = select i1 %tobool306.not, i1 false, i1 %cmp309
  %132 = and i8 %and3031, 1
  %and304.tr = icmp ne i8 %132, 0
  %add311.narrow = xor i1 %and304.tr, %131
  br i1 %add311.narrow, label %for.inc333, label %land.lhs.true314

land.lhs.true314:                                 ; preds = %for.body295
  %133 = load i8, ptr %x, align 1
  %134 = load i8, ptr %y, align 1
  %call315 = call zeroext i8 @ismasked(i8 noundef zeroext %133, i8 noundef zeroext %134)
  %tobool316.not = icmp eq i8 %call315, 0
  br i1 %tobool316.not, label %if.then317, label %for.inc333

if.then317:                                       ; preds = %land.lhs.true314
  %135 = load i8, ptr %x, align 1
  %136 = and i8 %135, 7
  %shr320 = lshr i8 -128, %136
  %137 = load ptr, ptr @qrframe, align 8
  %138 = lshr i8 %135, 3
  %139 = zext i8 %138 to i64
  %140 = load i8, ptr %y, align 1
  %conv323 = zext i8 %140 to i64
  %141 = load i8, ptr @WDB, align 1
  %conv324 = zext i8 %141 to i64
  %mul325 = mul nuw nsw i64 %conv323, %conv324
  %add326 = add nuw nsw i64 %mul325, %139
  %arrayidx328 = getelementptr inbounds i8, ptr %137, i64 %add326
  %142 = load i8, ptr %arrayidx328, align 1
  %xor330 = xor i8 %shr320, %142
  store i8 %xor330, ptr %arrayidx328, align 1
  br label %for.inc333

for.inc333:                                       ; preds = %for.body295, %land.lhs.true314, %if.then317
  %143 = load i8, ptr %x, align 1
  %inc334 = add i8 %143, 1
  store i8 %inc334, ptr %x, align 1
  %144 = load i8, ptr %r3x, align 1
  %inc335 = add i8 %144, 1
  store i8 %inc335, ptr %r3x, align 1
  br label %for.cond290, !llvm.loop !34

for.inc337:                                       ; preds = %for.cond290
  %145 = load i8, ptr %y, align 1
  %inc338 = add i8 %145, 1
  store i8 %inc338, ptr %y, align 1
  %146 = load i8, ptr %r3y, align 1
  %inc339 = add i8 %146, 1
  store i8 %inc339, ptr %r3y, align 1
  br label %for.cond279, !llvm.loop !35

sw.bb341:                                         ; preds = %entry
  store i8 0, ptr %r3y, align 1
  store i8 0, ptr %y, align 1
  br label %for.cond342

for.cond342:                                      ; preds = %for.inc403, %sw.bb341
  %147 = load i8, ptr %y, align 1
  %148 = load i8, ptr @WD, align 1
  %cmp345 = icmp ult i8 %147, %148
  br i1 %cmp345, label %for.body347, label %sw.epilog

for.body347:                                      ; preds = %for.cond342
  %149 = load i8, ptr %r3y, align 1
  %cmp349 = icmp eq i8 %149, 3
  %spec.store.select15 = select i1 %cmp349, i8 0, i8 %149
  store i8 %spec.store.select15, ptr %r3y, align 1
  store i8 0, ptr %r3x, align 1
  store i8 0, ptr %x, align 1
  br label %for.cond353

for.cond353:                                      ; preds = %for.inc399, %for.body347
  %150 = load i8, ptr %x, align 1
  %151 = load i8, ptr @WD, align 1
  %cmp356 = icmp ult i8 %150, %151
  br i1 %cmp356, label %for.body358, label %for.inc403

for.body358:                                      ; preds = %for.cond353
  %152 = load i8, ptr %r3x, align 1
  %cmp360 = icmp eq i8 %152, 3
  %spec.store.select16 = select i1 %cmp360, i8 0, i8 %152
  store i8 %spec.store.select16, ptr %r3x, align 1
  %153 = load i8, ptr %r3x, align 1
  %tobool365.not = icmp eq i8 %153, 0
  %154 = load i8, ptr %r3x, align 1
  %155 = load i8, ptr %r3y, align 1
  %cmp369 = icmp eq i8 %154, %155
  %156 = select i1 %tobool365.not, i1 false, i1 %cmp369
  %157 = load i8, ptr %x, align 1
  %158 = and i8 %157, 1
  %conv373 = icmp ne i8 %158, 0
  %159 = load i8, ptr %y, align 1
  %160 = and i8 %159, 1
  %conv374 = icmp ne i8 %160, 0
  %add375 = xor i1 %conv373, %conv374
  %add377.narrow = xor i1 %add375, %156
  br i1 %add377.narrow, label %for.inc399, label %land.lhs.true380

land.lhs.true380:                                 ; preds = %for.body358
  %161 = load i8, ptr %x, align 1
  %162 = load i8, ptr %y, align 1
  %call381 = call zeroext i8 @ismasked(i8 noundef zeroext %161, i8 noundef zeroext %162)
  %tobool382.not = icmp eq i8 %call381, 0
  br i1 %tobool382.not, label %if.then383, label %for.inc399

if.then383:                                       ; preds = %land.lhs.true380
  %163 = load i8, ptr %x, align 1
  %164 = and i8 %163, 7
  %shr386 = lshr i8 -128, %164
  %165 = load ptr, ptr @qrframe, align 8
  %166 = lshr i8 %163, 3
  %167 = zext i8 %166 to i64
  %168 = load i8, ptr %y, align 1
  %conv389 = zext i8 %168 to i64
  %169 = load i8, ptr @WDB, align 1
  %conv390 = zext i8 %169 to i64
  %mul391 = mul nuw nsw i64 %conv389, %conv390
  %add392 = add nuw nsw i64 %mul391, %167
  %arrayidx394 = getelementptr inbounds i8, ptr %165, i64 %add392
  %170 = load i8, ptr %arrayidx394, align 1
  %xor396 = xor i8 %shr386, %170
  store i8 %xor396, ptr %arrayidx394, align 1
  br label %for.inc399

for.inc399:                                       ; preds = %for.body358, %land.lhs.true380, %if.then383
  %171 = load i8, ptr %x, align 1
  %inc400 = add i8 %171, 1
  store i8 %inc400, ptr %x, align 1
  %172 = load i8, ptr %r3x, align 1
  %inc401 = add i8 %172, 1
  store i8 %inc401, ptr %r3x, align 1
  br label %for.cond353, !llvm.loop !36

for.inc403:                                       ; preds = %for.cond353
  %173 = load i8, ptr %y, align 1
  %inc404 = add i8 %173, 1
  store i8 %inc404, ptr %y, align 1
  %174 = load i8, ptr %r3y, align 1
  %inc405 = add i8 %174, 1
  store i8 %inc405, ptr %r3y, align 1
  br label %for.cond342, !llvm.loop !37

sw.epilog:                                        ; preds = %for.cond342, %for.cond279, %for.cond214, %for.cond163, %for.cond112, %for.cond67, %for.cond26, %for.cond, %entry
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @addfmt(i8 noundef zeroext %masknum) #0 {
entry:
  %fmtbits = alloca i32, align 4
  %i = alloca i8, align 1
  %0 = load i8, ptr @ECCLEVEL, align 1
  %sub = add i8 %0, -1
  %conv2 = zext i8 %masknum to i64
  %conv3 = zext i8 %sub to i64
  %shl = shl nuw nsw i64 %conv3, 3
  %add = add nuw nsw i64 %shl, %conv2
  %arrayidx = getelementptr inbounds [32 x i32], ptr @fmtword, i64 0, i64 %add
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %fmtbits, align 4
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, ptr %i, align 1
  %cmp = icmp ult i8 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %fmtbits, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i8, ptr @WD, align 1
  %5 = load i8, ptr %i, align 1
  %6 = xor i8 %5, -1
  %sub9 = add i8 %4, %6
  %and10 = and i8 %sub9, 7
  %shr = lshr i8 -128, %and10
  %7 = load ptr, ptr @qrframe, align 8
  %8 = load i8, ptr @WD, align 1
  %conv11 = zext i8 %8 to i32
  %9 = load i8, ptr %i, align 1
  %conv13 = zext i8 %9 to i32
  %10 = xor i32 %conv13, -1
  %sub14 = add nsw i32 %10, %conv11
  %shr15 = ashr i32 %sub14, 3
  %11 = load i8, ptr @WDB, align 1
  %conv16 = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv16, 3
  %add17 = add nsw i32 %shr15, %mul
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %7, i64 %idxprom18
  %12 = load i8, ptr %arrayidx19, align 1
  %or = or i8 %shr, %12
  store i8 %or, ptr %arrayidx19, align 1
  %13 = load i8, ptr %i, align 1
  %cmp23 = icmp ult i8 %13, 6
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then
  %14 = load ptr, ptr @qrframe, align 8
  %15 = load i8, ptr %i, align 1
  %conv26 = zext i8 %15 to i64
  %16 = load i8, ptr @WDB, align 1
  %conv27 = zext i8 %16 to i64
  %mul28 = mul nuw nsw i64 %conv26, %conv27
  %add29 = add nuw nsw i64 %mul28, 1
  %arrayidx31 = getelementptr inbounds i8, ptr %14, i64 %add29
  %17 = load i8, ptr %arrayidx31, align 1
  %18 = or i8 %17, -128
  store i8 %18, ptr %arrayidx31, align 1
  br label %for.inc

if.else:                                          ; preds = %if.then
  %19 = load ptr, ptr @qrframe, align 8
  %20 = load i8, ptr %i, align 1
  %conv35 = zext i8 %20 to i64
  %add36 = add nuw nsw i64 %conv35, 1
  %21 = load i8, ptr @WDB, align 1
  %conv37 = zext i8 %21 to i64
  %mul38 = mul nuw nsw i64 %add36, %conv37
  %add39 = add nuw nsw i64 %mul38, 1
  %arrayidx41 = getelementptr inbounds i8, ptr %19, i64 %add39
  %22 = load i8, ptr %arrayidx41, align 1
  %23 = or i8 %22, -128
  store i8 %23, ptr %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else, %if.then25
  %24 = load i8, ptr %i, align 1
  %inc = add i8 %24, 1
  store i8 %inc, ptr %i, align 1
  %25 = load i32, ptr %fmtbits, align 4
  %shr46 = lshr i32 %25, 1
  store i32 %shr46, ptr %fmtbits, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  store i8 0, ptr %i, align 1
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc95, %for.end
  %26 = load i8, ptr %i, align 1
  %cmp49 = icmp ult i8 %26, 7
  br i1 %cmp49, label %for.body51, label %for.end98

for.body51:                                       ; preds = %for.cond47
  %27 = load i32, ptr %fmtbits, align 4
  %and52 = and i32 %27, 1
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %for.inc95, label %if.then54

if.then54:                                        ; preds = %for.body51
  %28 = load ptr, ptr @qrframe, align 8
  %29 = load i8, ptr @WD, align 1
  %conv55 = zext i8 %29 to i64
  %sub56 = add nsw i64 %conv55, -7
  %30 = load i8, ptr %i, align 1
  %conv57 = zext i8 %30 to i64
  %add58 = add nsw i64 %sub56, %conv57
  %31 = load i8, ptr @WDB, align 1
  %conv59 = zext i8 %31 to i64
  %mul60 = mul nsw i64 %add58, %conv59
  %add61 = add nsw i64 %mul60, 1
  %arrayidx63 = getelementptr inbounds i8, ptr %28, i64 %add61
  %32 = load i8, ptr %arrayidx63, align 1
  %33 = or i8 %32, -128
  store i8 %33, ptr %arrayidx63, align 1
  %34 = load i8, ptr %i, align 1
  %tobool67.not = icmp eq i8 %34, 0
  br i1 %tobool67.not, label %if.else84, label %if.then68

if.then68:                                        ; preds = %if.then54
  %35 = load i8, ptr %i, align 1
  %36 = sub i8 6, %35
  %37 = and i8 %36, 7
  %shr72 = lshr i8 -128, %37
  %38 = load ptr, ptr @qrframe, align 8
  %conv73 = zext i8 %35 to i32
  %sub74 = sub nsw i32 6, %conv73
  %shr75 = ashr i32 %sub74, 3
  %39 = load i8, ptr @WDB, align 1
  %conv76 = zext i8 %39 to i32
  %mul77 = shl nuw nsw i32 %conv76, 3
  %add78 = add nsw i32 %shr75, %mul77
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds i8, ptr %38, i64 %idxprom79
  %40 = load i8, ptr %arrayidx80, align 1
  %or82 = or i8 %shr72, %40
  store i8 %or82, ptr %arrayidx80, align 1
  br label %for.inc95

if.else84:                                        ; preds = %if.then54
  %41 = load ptr, ptr @qrframe, align 8
  %42 = load i8, ptr @WDB, align 1
  %conv85 = zext i8 %42 to i64
  %mul86 = shl nuw nsw i64 %conv85, 3
  %arrayidx89 = getelementptr inbounds i8, ptr %41, i64 %mul86
  %43 = load i8, ptr %arrayidx89, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %arrayidx89, align 1
  br label %for.inc95

for.inc95:                                        ; preds = %for.body51, %if.else84, %if.then68
  %45 = load i8, ptr %i, align 1
  %inc96 = add i8 %45, 1
  store i8 %inc96, ptr %i, align 1
  %46 = load i32, ptr %fmtbits, align 4
  %shr97 = lshr i32 %46, 1
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
  store i8 1, ptr %genpoly, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %for.end ]
  store i8 %storemerge, ptr %i, align 1
  %0 = load i8, ptr %eclen.addr, align 1
  %cmp = icmp ult i8 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.cond47

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %genpoly.addr, align 8
  %2 = load i8, ptr %i, align 1
  %conv3 = zext i8 %2 to i64
  %add = add nuw nsw i64 %conv3, 1
  %arrayidx4 = getelementptr inbounds i8, ptr %1, i64 %add
  store i8 1, ptr %arrayidx4, align 1
  br label %for.cond5

for.cond5:                                        ; preds = %cond.end, %for.body
  %storemerge2 = phi i8 [ %2, %for.body ], [ %dec, %cond.end ]
  store i8 %storemerge2, ptr %j, align 1
  %cmp7.not = icmp eq i8 %storemerge2, 0
  br i1 %cmp7.not, label %for.end, label %for.body9

for.body9:                                        ; preds = %for.cond5
  %3 = load ptr, ptr %genpoly.addr, align 8
  %4 = load i8, ptr %j, align 1
  %idxprom10 = zext i8 %4 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %3, i64 %idxprom10
  %5 = load i8, ptr %arrayidx11, align 1
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body9
  %6 = load ptr, ptr %genpoly.addr, align 8
  %7 = load i8, ptr %j, align 1
  %conv13 = zext i8 %7 to i64
  %sub = add nsw i64 %conv13, -1
  %arrayidx15 = getelementptr inbounds i8, ptr %6, i64 %sub
  %8 = load i8, ptr %arrayidx15, align 1
  %idxprom17 = zext i8 %7 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %6, i64 %idxprom17
  %9 = load i8, ptr %arrayidx18, align 1
  %idxprom19 = zext i8 %9 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom19
  %10 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %10 to i32
  %11 = load i8, ptr %i, align 1
  %conv22 = zext i8 %11 to i32
  %add23 = add nuw nsw i32 %conv21, %conv22
  %call = call i32 @modnn(i32 noundef %add23)
  %idxprom24 = zext i32 %call to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom24
  %12 = load i8, ptr %arrayidx25, align 1
  %xor = xor i8 %8, %12
  br label %cond.end

cond.false:                                       ; preds = %for.body9
  %13 = load ptr, ptr %genpoly.addr, align 8
  %14 = load i8, ptr %j, align 1
  %conv27 = zext i8 %14 to i64
  %sub28 = add nsw i64 %conv27, -1
  %arrayidx30 = getelementptr inbounds i8, ptr %13, i64 %sub28
  %15 = load i8, ptr %arrayidx30, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8 [ %xor, %cond.true ], [ %15, %cond.false ]
  %16 = load ptr, ptr %genpoly.addr, align 8
  %17 = load i8, ptr %j, align 1
  %idxprom33 = zext i8 %17 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %16, i64 %idxprom33
  store i8 %cond, ptr %arrayidx34, align 1
  %18 = load i8, ptr %j, align 1
  %dec = add i8 %18, -1
  br label %for.cond5, !llvm.loop !40

for.end:                                          ; preds = %for.cond5
  %19 = load ptr, ptr %genpoly.addr, align 8
  %20 = load i8, ptr %19, align 1
  %idxprom36 = zext i8 %20 to i64
  %arrayidx37 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom36
  %21 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %21 to i32
  %22 = load i8, ptr %i, align 1
  %conv39 = zext i8 %22 to i32
  %add40 = add nuw nsw i32 %conv38, %conv39
  %call41 = call i32 @modnn(i32 noundef %add40)
  %idxprom42 = zext i32 %call41 to i64
  %arrayidx43 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom42
  %23 = load i8, ptr %arrayidx43, align 1
  %24 = load ptr, ptr %genpoly.addr, align 8
  store i8 %23, ptr %24, align 1
  %25 = load i8, ptr %i, align 1
  %inc = add i8 %25, 1
  br label %for.cond, !llvm.loop !41

for.cond47:                                       ; preds = %for.cond, %for.body52
  %storemerge1 = phi i8 [ %inc60, %for.body52 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %i, align 1
  %26 = load i8, ptr %eclen.addr, align 1
  %cmp50.not = icmp ugt i8 %storemerge1, %26
  br i1 %cmp50.not, label %for.end61, label %for.body52

for.body52:                                       ; preds = %for.cond47
  %27 = load ptr, ptr %genpoly.addr, align 8
  %28 = load i8, ptr %i, align 1
  %idxprom53 = zext i8 %28 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %27, i64 %idxprom53
  %29 = load i8, ptr %arrayidx54, align 1
  %idxprom55 = zext i8 %29 to i64
  %arrayidx56 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom55
  %30 = load i8, ptr %arrayidx56, align 1
  %31 = load ptr, ptr %genpoly.addr, align 8
  %32 = load i8, ptr %i, align 1
  %idxprom57 = zext i8 %32 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %31, i64 %idxprom57
  store i8 %30, ptr %arrayidx58, align 1
  %33 = load i8, ptr %i, align 1
  %inc60 = add i8 %33, 1
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
  %conv = zext i8 %eclen to i64
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %ecbuf, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %ecbuf, i32 noundef 0, i64 noundef %conv, i64 noundef %0) #4
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc58, %cond.end ]
  store i8 %storemerge, ptr %i, align 1
  %1 = load i8, ptr %dlen.addr, align 1
  %cmp = icmp ult i8 %storemerge, %1
  br i1 %cmp, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %data.addr, align 8
  %3 = load i8, ptr %i, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %5 = load ptr, ptr %ecbuf.addr, align 8
  %6 = load i8, ptr %5, align 1
  %xor1 = xor i8 %4, %6
  %idxprom7 = zext i8 %xor1 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr @g0log, i64 0, i64 %idxprom7
  %7 = load i8, ptr %arrayidx8, align 1
  store i8 %7, ptr %fb, align 1
  %cmp10.not = icmp eq i8 %xor1, 0
  br i1 %cmp10.not, label %if.else, label %for.cond12

for.cond12:                                       ; preds = %for.body, %for.body17
  %storemerge2 = phi i8 [ %inc, %for.body17 ], [ 1, %for.body ]
  store i8 %storemerge2, ptr %j, align 1
  %8 = load i8, ptr %eclen.addr, align 1
  %cmp15 = icmp ult i8 %storemerge2, %8
  br i1 %cmp15, label %for.body17, label %if.end

for.body17:                                       ; preds = %for.cond12
  %9 = load ptr, ptr %ecbuf.addr, align 8
  %10 = load i8, ptr %j, align 1
  %idxprom18 = zext i8 %10 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %9, i64 %idxprom18
  %11 = load i8, ptr %arrayidx19, align 1
  %12 = load i8, ptr %fb, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load ptr, ptr %genpoly.addr, align 8
  %14 = load i8, ptr %eclen.addr, align 1
  %conv22 = zext i8 %14 to i64
  %15 = load i8, ptr %j, align 1
  %conv23 = zext i8 %15 to i64
  %sub = sub nsw i64 %conv22, %conv23
  %arrayidx25 = getelementptr inbounds i8, ptr %13, i64 %sub
  %16 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv21, %conv26
  %call27 = call i32 @modnn(i32 noundef %add)
  %idxprom28 = zext i32 %call27 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom28
  %17 = load i8, ptr %arrayidx29, align 1
  %xor313 = xor i8 %11, %17
  %18 = load ptr, ptr %ecbuf.addr, align 8
  %19 = load i8, ptr %j, align 1
  %conv33 = zext i8 %19 to i64
  %sub34 = add nsw i64 %conv33, -1
  %arrayidx36 = getelementptr inbounds i8, ptr %18, i64 %sub34
  store i8 %xor313, ptr %arrayidx36, align 1
  %20 = load i8, ptr %j, align 1
  %inc = add i8 %20, 1
  br label %for.cond12, !llvm.loop !43

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %ecbuf.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %eclen.addr, align 1
  %conv37 = zext i8 %22 to i64
  %sub38 = add nsw i64 %conv37, -1
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call40 = call ptr @__memmove_chk(ptr noundef %21, ptr noundef nonnull %add.ptr, i64 noundef %sub38, i64 noundef %23) #4
  br label %if.end

if.end:                                           ; preds = %for.cond12, %if.else
  %24 = load i8, ptr %fb, align 1
  %cmp42 = icmp eq i8 %24, -1
  br i1 %cmp42, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end
  %25 = load i8, ptr %fb, align 1
  %conv44 = zext i8 %25 to i32
  %26 = load ptr, ptr %genpoly.addr, align 8
  %27 = load i8, ptr %26, align 1
  %conv46 = zext i8 %27 to i32
  %add47 = add nuw nsw i32 %conv44, %conv46
  %call48 = call i32 @modnn(i32 noundef %add47)
  %idxprom49 = zext i32 %call48 to i64
  %arrayidx50 = getelementptr inbounds [256 x i8], ptr @g0exp, i64 0, i64 %idxprom49
  %28 = load i8, ptr %arrayidx50, align 1
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi i8 [ %28, %cond.false ], [ 0, %if.end ]
  %29 = load ptr, ptr %ecbuf.addr, align 8
  %30 = load i8, ptr %eclen.addr, align 1
  %conv53 = zext i8 %30 to i64
  %sub54 = add nsw i64 %conv53, -1
  %arrayidx56 = getelementptr inbounds i8, ptr %29, i64 %sub54
  store i8 %cond, ptr %arrayidx56, align 1
  %31 = load i8, ptr %i, align 1
  %inc58 = add i8 %31, 1
  br label %for.cond, !llvm.loop !44

for.end59:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @modnn(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi i32 [ %x, %entry ], [ %add, %while.body ]
  store i32 %storemerge, ptr %x.addr, align 4
  %cmp = icmp ugt i32 %storemerge, 254
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %x.addr, align 4
  %sub = add i32 %0, -255
  store i32 %sub, ptr %x.addr, align 4
  %shr = lshr i32 %sub, 8
  %and = and i32 %sub, 255
  %add = add nuw nsw i32 %shr, %and
  br label %while.cond, !llvm.loop !45

while.end:                                        ; preds = %while.cond
  %1 = load i32, ptr %x.addr, align 4
  ret i32 %1
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
  %cmp = icmp ugt i8 %x, %y
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8, ptr %x.addr, align 1
  %conv3 = zext i8 %0 to i32
  store i32 %conv3, ptr %bt, align 4
  %1 = load i8, ptr %y.addr, align 1
  store i8 %1, ptr %x.addr, align 1
  store i8 %0, ptr %y.addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, ptr %y.addr, align 1
  %conv5 = zext i8 %2 to i32
  %conv6 = zext i8 %2 to i32
  %conv7 = zext i8 %2 to i32
  %mul = mul nuw nsw i32 %conv6, %conv7
  %add = add nuw nsw i32 %mul, %conv5
  %shr = lshr i32 %add, 1
  store i32 %shr, ptr %bt, align 4
  %3 = load i8, ptr %x.addr, align 1
  %conv8 = zext i8 %3 to i32
  %add9 = add nuw nsw i32 %shr, %conv8
  store i32 %add9, ptr %bt, align 4
  %4 = load ptr, ptr @framask, align 8
  %shr10 = lshr i32 %add9, 3
  %idxprom = zext i32 %shr10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %5 to i32
  %6 = load i32, ptr %bt, align 4
  %and = and i32 %6, 7
  %sub = xor i32 %and, 7
  %shr12 = lshr i32 %conv11, %sub
  %7 = trunc i32 %shr12 to i8
  %conv14 = and i8 %7, 1
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
  br label %for.cond

for.cond:                                         ; preds = %for.inc141, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc142, %for.inc141 ]
  store i8 %storemerge, ptr %y, align 1
  %conv = zext i8 %storemerge to i32
  %0 = load i8, ptr @WD, align 1
  %conv1 = zext i8 %0 to i32
  %sub = add nsw i32 %conv1, -1
  %cmp = icmp sgt i32 %sub, %conv
  br i1 %cmp, label %for.cond3, label %for.cond144

for.cond3:                                        ; preds = %for.cond, %for.inc
  %storemerge3 = phi i8 [ %inc, %for.inc ], [ 0, %for.cond ]
  store i8 %storemerge3, ptr %x, align 1
  %conv4 = zext i8 %storemerge3 to i32
  %1 = load i8, ptr @WD, align 1
  %conv5 = zext i8 %1 to i32
  %sub6 = add nsw i32 %conv5, -1
  %cmp7 = icmp sgt i32 %sub6, %conv4
  br i1 %cmp7, label %for.body9, label %for.inc141

for.body9:                                        ; preds = %for.cond3
  %2 = load ptr, ptr @qrframe, align 8
  %3 = load i8, ptr %x, align 1
  %4 = lshr i8 %3, 3
  %5 = zext i8 %4 to i64
  %6 = load i8, ptr %y, align 1
  %conv11 = zext i8 %6 to i64
  %7 = load i8, ptr @WDB, align 1
  %conv12 = zext i8 %7 to i64
  %mul = mul nuw nsw i64 %conv11, %conv12
  %add = add nuw nsw i64 %mul, %5
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %add
  %8 = load i8, ptr %arrayidx, align 1
  %conv13 = zext i8 %8 to i32
  %9 = load i8, ptr %x, align 1
  %10 = and i8 %9, 7
  %11 = xor i8 %10, 7
  %sub15 = zext i8 %11 to i32
  %12 = shl i32 1, %sub15
  %13 = and i32 %12, %conv13
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body9
  %14 = load ptr, ptr @qrframe, align 8
  %15 = load i8, ptr %x, align 1
  %conv18 = zext i8 %15 to i32
  %add19 = add nuw nsw i32 %conv18, 1
  %16 = lshr i32 %add19, 3
  %17 = load i8, ptr %y, align 1
  %conv21 = zext i8 %17 to i32
  %18 = load i8, ptr @WDB, align 1
  %conv22 = zext i8 %18 to i32
  %mul23 = mul nuw nsw i32 %conv21, %conv22
  %add24 = add nuw nsw i32 %16, %mul23
  %idxprom25 = zext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %14, i64 %idxprom25
  %19 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %19 to i32
  %20 = load i8, ptr %x, align 1
  %21 = add i8 %20, 1
  %22 = and i8 %21, 7
  %23 = xor i8 %22, 7
  %sub31 = zext i8 %23 to i32
  %24 = shl i32 1, %sub31
  %25 = and i32 %24, %conv27
  %tobool34.not = icmp eq i32 %25, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true
  %26 = load ptr, ptr @qrframe, align 8
  %27 = load i8, ptr %x, align 1
  %28 = lshr i8 %27, 3
  %29 = zext i8 %28 to i64
  %30 = load i8, ptr %y, align 1
  %conv38 = zext i8 %30 to i64
  %add39 = add nuw nsw i64 %conv38, 1
  %31 = load i8, ptr @WDB, align 1
  %conv40 = zext i8 %31 to i64
  %mul41 = mul nuw nsw i64 %add39, %conv40
  %add42 = add nuw nsw i64 %mul41, %29
  %arrayidx44 = getelementptr inbounds i8, ptr %26, i64 %add42
  %32 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %32 to i32
  %33 = load i8, ptr %x, align 1
  %34 = and i8 %33, 7
  %35 = xor i8 %34, 7
  %sub48 = zext i8 %35 to i32
  %36 = shl i32 1, %sub48
  %37 = and i32 %36, %conv45
  %tobool51.not = icmp eq i32 %37, 0
  br i1 %tobool51.not, label %lor.lhs.false, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true35
  %38 = load ptr, ptr @qrframe, align 8
  %39 = load i8, ptr %x, align 1
  %conv53 = zext i8 %39 to i32
  %add54 = add nuw nsw i32 %conv53, 1
  %40 = lshr i32 %add54, 3
  %41 = load i8, ptr %y, align 1
  %conv56 = zext i8 %41 to i32
  %add57 = add nuw nsw i32 %conv56, 1
  %42 = load i8, ptr @WDB, align 1
  %conv58 = zext i8 %42 to i32
  %mul59 = mul nuw nsw i32 %add57, %conv58
  %add60 = add nuw nsw i32 %40, %mul59
  %idxprom61 = zext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %38, i64 %idxprom61
  %43 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %43 to i32
  %44 = load i8, ptr %x, align 1
  %45 = add i8 %44, 1
  %46 = and i8 %45, 7
  %47 = xor i8 %46, 7
  %sub67 = zext i8 %47 to i32
  %48 = shl i32 1, %sub67
  %49 = and i32 %48, %conv63
  %tobool70.not = icmp eq i32 %49, 0
  br i1 %tobool70.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true52, %land.lhs.true35, %land.lhs.true, %for.body9
  %50 = load ptr, ptr @qrframe, align 8
  %51 = load i8, ptr %x, align 1
  %52 = lshr i8 %51, 3
  %53 = zext i8 %52 to i64
  %54 = load i8, ptr %y, align 1
  %conv73 = zext i8 %54 to i64
  %55 = load i8, ptr @WDB, align 1
  %conv74 = zext i8 %55 to i64
  %mul75 = mul nuw nsw i64 %conv73, %conv74
  %add76 = add nuw nsw i64 %mul75, %53
  %arrayidx78 = getelementptr inbounds i8, ptr %50, i64 %add76
  %56 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %56 to i32
  %57 = load i8, ptr %x, align 1
  %58 = and i8 %57, 7
  %59 = xor i8 %58, 7
  %sub82 = zext i8 %59 to i32
  %60 = shl i32 1, %sub82
  %61 = and i32 %60, %conv79
  %tobool85.not = icmp eq i32 %61, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %for.inc

lor.lhs.false86:                                  ; preds = %lor.lhs.false
  %62 = load ptr, ptr @qrframe, align 8
  %63 = load i8, ptr %x, align 1
  %conv87 = zext i8 %63 to i32
  %add88 = add nuw nsw i32 %conv87, 1
  %64 = lshr i32 %add88, 3
  %65 = load i8, ptr %y, align 1
  %conv90 = zext i8 %65 to i32
  %66 = load i8, ptr @WDB, align 1
  %conv91 = zext i8 %66 to i32
  %mul92 = mul nuw nsw i32 %conv90, %conv91
  %add93 = add nuw nsw i32 %64, %mul92
  %idxprom94 = zext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %62, i64 %idxprom94
  %67 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %67 to i32
  %68 = load i8, ptr %x, align 1
  %69 = add i8 %68, 1
  %70 = and i8 %69, 7
  %71 = xor i8 %70, 7
  %sub100 = zext i8 %71 to i32
  %72 = shl i32 1, %sub100
  %73 = and i32 %72, %conv96
  %tobool103.not = icmp eq i32 %73, 0
  br i1 %tobool103.not, label %lor.lhs.false104, label %for.inc

lor.lhs.false104:                                 ; preds = %lor.lhs.false86
  %74 = load ptr, ptr @qrframe, align 8
  %75 = load i8, ptr %x, align 1
  %76 = lshr i8 %75, 3
  %77 = zext i8 %76 to i64
  %78 = load i8, ptr %y, align 1
  %conv107 = zext i8 %78 to i64
  %add108 = add nuw nsw i64 %conv107, 1
  %79 = load i8, ptr @WDB, align 1
  %conv109 = zext i8 %79 to i64
  %mul110 = mul nuw nsw i64 %add108, %conv109
  %add111 = add nuw nsw i64 %mul110, %77
  %arrayidx113 = getelementptr inbounds i8, ptr %74, i64 %add111
  %80 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %80 to i32
  %81 = load i8, ptr %x, align 1
  %82 = and i8 %81, 7
  %83 = xor i8 %82, 7
  %sub117 = zext i8 %83 to i32
  %84 = shl i32 1, %sub117
  %85 = and i32 %84, %conv114
  %tobool120.not = icmp eq i32 %85, 0
  br i1 %tobool120.not, label %lor.lhs.false121, label %for.inc

lor.lhs.false121:                                 ; preds = %lor.lhs.false104
  %86 = load ptr, ptr @qrframe, align 8
  %87 = load i8, ptr %x, align 1
  %conv122 = zext i8 %87 to i32
  %add123 = add nuw nsw i32 %conv122, 1
  %88 = lshr i32 %add123, 3
  %89 = load i8, ptr %y, align 1
  %conv125 = zext i8 %89 to i32
  %add126 = add nuw nsw i32 %conv125, 1
  %90 = load i8, ptr @WDB, align 1
  %conv127 = zext i8 %90 to i32
  %mul128 = mul nuw nsw i32 %add126, %conv127
  %add129 = add nuw nsw i32 %88, %mul128
  %idxprom130 = zext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %86, i64 %idxprom130
  %91 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %91 to i32
  %92 = load i8, ptr %x, align 1
  %93 = add i8 %92, 1
  %94 = and i8 %93, 7
  %95 = xor i8 %94, 7
  %sub136 = zext i8 %95 to i32
  %96 = shl i32 1, %sub136
  %97 = and i32 %96, %conv132
  %tobool139.not = icmp eq i32 %97, 0
  br i1 %tobool139.not, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false121, %land.lhs.true52
  %98 = load i32, ptr %thisbad, align 4
  %add140 = add i32 %98, 3
  store i32 %add140, ptr %thisbad, align 4
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %lor.lhs.false86, %lor.lhs.false104, %lor.lhs.false121, %if.then
  %99 = load i8, ptr %x, align 1
  %inc = add i8 %99, 1
  br label %for.cond3, !llvm.loop !46

for.inc141:                                       ; preds = %for.cond3
  %100 = load i8, ptr %y, align 1
  %inc142 = add i8 %100, 1
  br label %for.cond, !llvm.loop !47

for.cond144:                                      ; preds = %for.cond, %for.end189
  %storemerge1 = phi i8 [ %inc192, %for.end189 ], [ 0, %for.cond ]
  store i8 %storemerge1, ptr %y, align 1
  %101 = load i8, ptr @WD, align 1
  %cmp147 = icmp ult i8 %storemerge1, %101
  br i1 %cmp147, label %for.body149, label %for.end193

for.body149:                                      ; preds = %for.cond144
  %102 = load ptr, ptr @rlens, align 8
  store i8 0, ptr %102, align 1
  store i8 0, ptr %x, align 1
  store i8 0, ptr %b, align 1
  store i8 0, ptr %h, align 1
  br label %for.cond151

for.cond151:                                      ; preds = %if.end183, %for.body149
  %103 = load i8, ptr %x, align 1
  %104 = load i8, ptr @WD, align 1
  %cmp154 = icmp ult i8 %103, %104
  br i1 %cmp154, label %for.body156, label %for.end189

for.body156:                                      ; preds = %for.cond151
  %105 = load ptr, ptr @qrframe, align 8
  %106 = load i8, ptr %x, align 1
  %107 = lshr i8 %106, 3
  %108 = zext i8 %107 to i64
  %109 = load i8, ptr %y, align 1
  %conv159 = zext i8 %109 to i64
  %110 = load i8, ptr @WDB, align 1
  %conv160 = zext i8 %110 to i64
  %mul161 = mul nuw nsw i64 %conv159, %conv160
  %add162 = add nuw nsw i64 %mul161, %108
  %arrayidx164 = getelementptr inbounds i8, ptr %105, i64 %add162
  %111 = load i8, ptr %arrayidx164, align 1
  %112 = load i8, ptr %x, align 1
  %113 = and i8 %112, 7
  %114 = xor i8 %113, 7
  %shr169 = lshr i8 %111, %114
  %and170 = and i8 %shr169, 1
  store i8 %and170, ptr %b1, align 1
  %115 = load i8, ptr %b, align 1
  %cmp174 = icmp eq i8 %and170, %115
  br i1 %cmp174, label %if.then176, label %if.else

if.then176:                                       ; preds = %for.body156
  %116 = load ptr, ptr @rlens, align 8
  %117 = load i8, ptr %h, align 1
  %idxprom177 = zext i8 %117 to i64
  %arrayidx178 = getelementptr inbounds i8, ptr %116, i64 %idxprom177
  %118 = load i8, ptr %arrayidx178, align 1
  %inc179 = add i8 %118, 1
  store i8 %inc179, ptr %arrayidx178, align 1
  br label %if.end183

if.else:                                          ; preds = %for.body156
  %119 = load ptr, ptr @rlens, align 8
  %120 = load i8, ptr %h, align 1
  %inc180 = add i8 %120, 1
  store i8 %inc180, ptr %h, align 1
  %idxprom181 = zext i8 %inc180 to i64
  %arrayidx182 = getelementptr inbounds i8, ptr %119, i64 %idxprom181
  store i8 1, ptr %arrayidx182, align 1
  br label %if.end183

if.end183:                                        ; preds = %if.else, %if.then176
  %121 = load i8, ptr %b1, align 1
  store i8 %121, ptr %b, align 1
  %tobool185.not = icmp eq i8 %121, 0
  %cond = select i1 %tobool185.not, i32 -1, i32 1
  %122 = load i32, ptr %bw, align 4
  %add186 = add nsw i32 %122, %cond
  store i32 %add186, ptr %bw, align 4
  %123 = load i8, ptr %x, align 1
  %inc188 = add i8 %123, 1
  store i8 %inc188, ptr %x, align 1
  br label %for.cond151, !llvm.loop !48

for.end189:                                       ; preds = %for.cond151
  %124 = load i8, ptr %h, align 1
  %call = call i32 @badruns(i8 noundef zeroext %124)
  %125 = load i32, ptr %thisbad, align 4
  %add190 = add i32 %125, %call
  store i32 %add190, ptr %thisbad, align 4
  %126 = load i8, ptr %y, align 1
  %inc192 = add i8 %126, 1
  br label %for.cond144, !llvm.loop !49

for.end193:                                       ; preds = %for.cond144
  %127 = load i32, ptr %bw, align 4
  %cmp194 = icmp slt i32 %127, 0
  br i1 %cmp194, label %if.then196, label %if.end198

if.then196:                                       ; preds = %for.end193
  %128 = load i32, ptr %bw, align 4
  %sub197 = sub nsw i32 0, %128
  store i32 %sub197, ptr %bw, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %for.end193
  %129 = load i32, ptr %bw, align 4
  %conv199 = sext i32 %129 to i64
  store i64 %conv199, ptr %big, align 8
  store i32 0, ptr %count, align 4
  %shl201 = mul nsw i64 %conv199, 10
  store i64 %shl201, ptr %big, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end198
  %130 = load i64, ptr %big, align 8
  %131 = load i8, ptr @WD, align 1
  %conv202 = zext i8 %131 to i64
  %conv203 = zext i8 %131 to i64
  %mul204 = mul nuw nsw i64 %conv202, %conv203
  %cmp206 = icmp ugt i64 %130, %mul204
  br i1 %cmp206, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %132 = load i8, ptr @WD, align 1
  %conv208 = zext i8 %132 to i64
  %conv209 = zext i8 %132 to i64
  %mul210 = mul nuw nsw i64 %conv208, %conv209
  %133 = load i64, ptr %big, align 8
  %sub212 = sub i64 %133, %mul210
  store i64 %sub212, ptr %big, align 8
  %134 = load i32, ptr %count, align 4
  %inc213 = add i32 %134, 1
  store i32 %inc213, ptr %count, align 4
  br label %while.cond, !llvm.loop !50

while.end:                                        ; preds = %while.cond
  %135 = load i32, ptr %count, align 4
  %mul214 = mul i32 %135, 10
  %136 = load i32, ptr %thisbad, align 4
  %add215 = add i32 %136, %mul214
  store i32 %add215, ptr %thisbad, align 4
  br label %for.cond216

for.cond216:                                      ; preds = %for.end259, %while.end
  %storemerge2 = phi i8 [ 0, %while.end ], [ %inc263, %for.end259 ]
  store i8 %storemerge2, ptr %x, align 1
  %137 = load i8, ptr @WD, align 1
  %cmp219 = icmp ult i8 %storemerge2, %137
  br i1 %cmp219, label %for.body221, label %for.end264

for.body221:                                      ; preds = %for.cond216
  %138 = load ptr, ptr @rlens, align 8
  store i8 0, ptr %138, align 1
  store i8 0, ptr %y, align 1
  store i8 0, ptr %b, align 1
  store i8 0, ptr %h, align 1
  br label %for.cond223

for.cond223:                                      ; preds = %if.end256, %for.body221
  %139 = load i8, ptr %y, align 1
  %140 = load i8, ptr @WD, align 1
  %cmp226 = icmp ult i8 %139, %140
  br i1 %cmp226, label %for.body228, label %for.end259

for.body228:                                      ; preds = %for.cond223
  %141 = load ptr, ptr @qrframe, align 8
  %142 = load i8, ptr %x, align 1
  %143 = lshr i8 %142, 3
  %144 = zext i8 %143 to i64
  %145 = load i8, ptr %y, align 1
  %conv231 = zext i8 %145 to i64
  %146 = load i8, ptr @WDB, align 1
  %conv232 = zext i8 %146 to i64
  %mul233 = mul nuw nsw i64 %conv231, %conv232
  %add234 = add nuw nsw i64 %mul233, %144
  %arrayidx236 = getelementptr inbounds i8, ptr %141, i64 %add234
  %147 = load i8, ptr %arrayidx236, align 1
  %148 = load i8, ptr %x, align 1
  %149 = and i8 %148, 7
  %150 = xor i8 %149, 7
  %shr241 = lshr i8 %147, %150
  %and242 = and i8 %shr241, 1
  store i8 %and242, ptr %b1, align 1
  %151 = load i8, ptr %b, align 1
  %cmp246 = icmp eq i8 %and242, %151
  br i1 %cmp246, label %if.then248, label %if.else252

if.then248:                                       ; preds = %for.body228
  %152 = load ptr, ptr @rlens, align 8
  %153 = load i8, ptr %h, align 1
  %idxprom249 = zext i8 %153 to i64
  %arrayidx250 = getelementptr inbounds i8, ptr %152, i64 %idxprom249
  %154 = load i8, ptr %arrayidx250, align 1
  %inc251 = add i8 %154, 1
  store i8 %inc251, ptr %arrayidx250, align 1
  br label %if.end256

if.else252:                                       ; preds = %for.body228
  %155 = load ptr, ptr @rlens, align 8
  %156 = load i8, ptr %h, align 1
  %inc253 = add i8 %156, 1
  store i8 %inc253, ptr %h, align 1
  %idxprom254 = zext i8 %inc253 to i64
  %arrayidx255 = getelementptr inbounds i8, ptr %155, i64 %idxprom254
  store i8 1, ptr %arrayidx255, align 1
  br label %if.end256

if.end256:                                        ; preds = %if.else252, %if.then248
  %157 = load i8, ptr %b1, align 1
  store i8 %157, ptr %b, align 1
  %158 = load i8, ptr %y, align 1
  %inc258 = add i8 %158, 1
  store i8 %inc258, ptr %y, align 1
  br label %for.cond223, !llvm.loop !51

for.end259:                                       ; preds = %for.cond223
  %159 = load i8, ptr %h, align 1
  %call260 = call i32 @badruns(i8 noundef zeroext %159)
  %160 = load i32, ptr %thisbad, align 4
  %add261 = add i32 %160, %call260
  store i32 %add261, ptr %thisbad, align 4
  %161 = load i8, ptr %x, align 1
  %inc263 = add i8 %161, 1
  br label %for.cond216, !llvm.loop !52

for.end264:                                       ; preds = %for.cond216
  %162 = load i32, ptr %thisbad, align 4
  ret i32 %162
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @badruns(i8 noundef zeroext %length) #0 {
entry:
  %length.addr = alloca i8, align 1
  %i = alloca i8, align 1
  %runsbad = alloca i32, align 4
  store i8 %length, ptr %length.addr, align 1
  store i32 0, ptr %runsbad, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i8 [ 0, %entry ], [ %inc, %for.inc ]
  store i8 %storemerge, ptr %i, align 1
  %0 = load i8, ptr %length.addr, align 1
  %cmp.not = icmp ugt i8 %storemerge, %0
  br i1 %cmp.not, label %for.cond10, label %for.body

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @rlens, align 8
  %2 = load i8, ptr %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %cmp4 = icmp ugt i8 %3, 4
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr @rlens, align 8
  %5 = load i8, ptr %i, align 1
  %idxprom6 = zext i8 %5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 %idxprom6
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %sub = add nsw i32 %conv8, -2
  %7 = load i32, ptr %runsbad, align 4
  %add9 = add i32 %7, %sub
  store i32 %add9, ptr %runsbad, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %8 = load i8, ptr %i, align 1
  %inc = add i8 %8, 1
  br label %for.cond, !llvm.loop !53

for.cond10:                                       ; preds = %for.cond, %for.inc107
  %storemerge1 = phi i8 [ %add109, %for.inc107 ], [ 3, %for.cond ]
  store i8 %storemerge1, ptr %i, align 1
  %conv11 = zext i8 %storemerge1 to i32
  %9 = load i8, ptr %length.addr, align 1
  %conv12 = zext i8 %9 to i32
  %sub13 = add nsw i32 %conv12, -1
  %cmp14 = icmp sgt i32 %sub13, %conv11
  br i1 %cmp14, label %for.body16, label %for.end111

for.body16:                                       ; preds = %for.cond10
  %10 = load ptr, ptr @rlens, align 8
  %11 = load i8, ptr %i, align 1
  %conv17 = zext i8 %11 to i64
  %sub18 = add nsw i64 %conv17, -2
  %arrayidx20 = getelementptr inbounds i8, ptr %10, i64 %sub18
  %12 = load i8, ptr %arrayidx20, align 1
  %conv22 = zext i8 %11 to i64
  %add23 = add nuw nsw i64 %conv22, 2
  %arrayidx25 = getelementptr inbounds i8, ptr %10, i64 %add23
  %13 = load i8, ptr %arrayidx25, align 1
  %cmp27 = icmp eq i8 %12, %13
  br i1 %cmp27, label %land.lhs.true, label %for.inc107

land.lhs.true:                                    ; preds = %for.body16
  %14 = load ptr, ptr @rlens, align 8
  %15 = load i8, ptr %i, align 1
  %conv29 = zext i8 %15 to i64
  %add30 = add nuw nsw i64 %conv29, 2
  %arrayidx32 = getelementptr inbounds i8, ptr %14, i64 %add30
  %16 = load i8, ptr %arrayidx32, align 1
  %conv34 = zext i8 %15 to i64
  %sub35 = add nsw i64 %conv34, -1
  %arrayidx37 = getelementptr inbounds i8, ptr %14, i64 %sub35
  %17 = load i8, ptr %arrayidx37, align 1
  %cmp39 = icmp eq i8 %16, %17
  br i1 %cmp39, label %land.lhs.true41, label %for.inc107

land.lhs.true41:                                  ; preds = %land.lhs.true
  %18 = load ptr, ptr @rlens, align 8
  %19 = load i8, ptr %i, align 1
  %conv42 = zext i8 %19 to i64
  %sub43 = add nsw i64 %conv42, -1
  %arrayidx45 = getelementptr inbounds i8, ptr %18, i64 %sub43
  %20 = load i8, ptr %arrayidx45, align 1
  %conv47 = zext i8 %19 to i64
  %add48 = add nuw nsw i64 %conv47, 1
  %arrayidx50 = getelementptr inbounds i8, ptr %18, i64 %add48
  %21 = load i8, ptr %arrayidx50, align 1
  %cmp52 = icmp eq i8 %20, %21
  br i1 %cmp52, label %land.lhs.true54, label %for.inc107

land.lhs.true54:                                  ; preds = %land.lhs.true41
  %22 = load ptr, ptr @rlens, align 8
  %23 = load i8, ptr %i, align 1
  %conv55 = zext i8 %23 to i64
  %sub56 = add nsw i64 %conv55, -1
  %arrayidx58 = getelementptr inbounds i8, ptr %22, i64 %sub56
  %24 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %24 to i32
  %mul = mul nuw nsw i32 %conv59, 3
  %25 = load ptr, ptr @rlens, align 8
  %26 = load i8, ptr %i, align 1
  %idxprom60 = zext i8 %26 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %25, i64 %idxprom60
  %27 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %27 to i32
  %cmp63 = icmp eq i32 %mul, %conv62
  br i1 %cmp63, label %land.lhs.true65, label %for.inc107

land.lhs.true65:                                  ; preds = %land.lhs.true54
  %28 = load ptr, ptr @rlens, align 8
  %29 = load i8, ptr %i, align 1
  %conv66 = zext i8 %29 to i64
  %sub67 = add nsw i64 %conv66, -3
  %arrayidx69 = getelementptr inbounds i8, ptr %28, i64 %sub67
  %30 = load i8, ptr %arrayidx69, align 1
  %cmp71 = icmp eq i8 %30, 0
  br i1 %cmp71, label %if.then104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true65
  %31 = load i8, ptr %i, align 1
  %conv73 = zext i8 %31 to i32
  %add74 = add nuw nsw i32 %conv73, 3
  %32 = load i8, ptr %length.addr, align 1
  %conv75 = zext i8 %32 to i32
  %cmp76 = icmp ugt i32 %add74, %conv75
  br i1 %cmp76, label %if.then104, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false
  %33 = load ptr, ptr @rlens, align 8
  %34 = load i8, ptr %i, align 1
  %conv79 = zext i8 %34 to i64
  %sub80 = add nsw i64 %conv79, -3
  %arrayidx82 = getelementptr inbounds i8, ptr %33, i64 %sub80
  %35 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %35 to i32
  %mul84 = mul nuw nsw i32 %conv83, 3
  %36 = load ptr, ptr @rlens, align 8
  %37 = load i8, ptr %i, align 1
  %idxprom85 = zext i8 %37 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %36, i64 %idxprom85
  %38 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %38 to i32
  %mul88 = shl nuw nsw i32 %conv87, 2
  %cmp89.not = icmp ult i32 %mul84, %mul88
  br i1 %cmp89.not, label %lor.lhs.false91, label %if.then104

lor.lhs.false91:                                  ; preds = %lor.lhs.false78
  %39 = load ptr, ptr @rlens, align 8
  %40 = load i8, ptr %i, align 1
  %conv92 = zext i8 %40 to i64
  %add93 = add nuw nsw i64 %conv92, 3
  %arrayidx95 = getelementptr inbounds i8, ptr %39, i64 %add93
  %41 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %41 to i32
  %mul97 = mul nuw nsw i32 %conv96, 3
  %42 = load ptr, ptr @rlens, align 8
  %43 = load i8, ptr %i, align 1
  %idxprom98 = zext i8 %43 to i64
  %arrayidx99 = getelementptr inbounds i8, ptr %42, i64 %idxprom98
  %44 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %44 to i32
  %mul101 = shl nuw nsw i32 %conv100, 2
  %cmp102.not = icmp ult i32 %mul97, %mul101
  br i1 %cmp102.not, label %for.inc107, label %if.then104

if.then104:                                       ; preds = %lor.lhs.false91, %lor.lhs.false78, %lor.lhs.false, %land.lhs.true65
  %45 = load i32, ptr %runsbad, align 4
  %add105 = add i32 %45, 40
  store i32 %add105, ptr %runsbad, align 4
  br label %for.inc107

for.inc107:                                       ; preds = %for.body16, %land.lhs.true, %land.lhs.true41, %land.lhs.true54, %lor.lhs.false91, %if.then104
  %46 = load i8, ptr %i, align 1
  %add109 = add i8 %46, 2
  br label %for.cond10, !llvm.loop !54

for.end111:                                       ; preds = %for.cond10
  %47 = load i32, ptr %runsbad, align 4
  ret i32 %47
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
