; ModuleID = './source_snapshot/public_repos/zlib/examples/enough.c'
source_filename = "./source_snapshot/public_repos/zlib/examples/enough.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.anon = type { i32, i32, i32, i64, i64, %struct.string_t, ptr, ptr, ptr }
%struct.string_t = type { ptr, i64, i64 }
%struct.tab = type { i64, ptr }

@g = global %struct.anon zeroinitializer, align 8
@.str = private unnamed_addr constant [60 x i8] c"invalid arguments, need: [sym >= 2 [root >= 1 [max >= 1]]]\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"abort: code length too long for internal types\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%d symbols cannot be coded in %d bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"enough.c\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"g.code != NULL && \22out of memory\22\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"g.size <= (size_t)-1 / n && \22overflow\22\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"g.num != NULL && \22out of memory\22\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"got != (big_t)-1 && sum >= got && \22overflow\22\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%llu total codes for 2 to %d symbols\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c" (%d-bit length limit)\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" (no length limit)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"g.done != NULL && \22out of memory\22\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"cannot handle minimum code lengths > root\00", align 1
@__func__.string_init = private unnamed_addr constant [12 x i8] c"string_init\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"s->str != NULL && \22out of memory\22\00", align 1
@__func__.count = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"syms > left && left > 0 && len < g.max\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"sum != 0\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"maximum of %d table entries for root = %d\0A\00", align 1
@__stdoutp = external global ptr, align 8
@__func__.examine = private unnamed_addr constant [8 x i8] c"examine\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"rem == left\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"(left & 1) == 0\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"<%u, %u, %u>:\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c" %d[%d]\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.string_printf = private unnamed_addr constant [14 x i8] c"string_printf\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"ret >= 0 && \22out of memory\22\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"s->size != 0 && \22overflow\22\00", align 1
@__func__.been_here = private unnamed_addr constant [10 x i8] c"been_here\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"vector != NULL && \22out of memory\22\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %syms = alloca i32, align 4
  %bits = alloca i32, align 4
  %word = alloca i64, align 8
  %n = alloca i32, align 4
  %sum = alloca i64, align 8
  %n98 = alloca i32, align 4
  %got = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_examples_enough_1(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  store i32 286, ptr %syms, align 4
  store i32 9, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  store i32 15, ptr @g, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  store i32 %call, ptr %syms, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  store i32 %call4, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %6 = load i32, ptr %argc.addr, align 4
  %cmp5 = icmp sgt i32 %6, 3
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then2
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 3
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @atoi(ptr noundef %8)
  store i32 %call8, ptr @g, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  %9 = load i32, ptr %argc.addr, align 4
  %cmp11 = icmp sgt i32 %9, 4
  br i1 %cmp11, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %10 = load i32, ptr %syms, align 4
  %cmp12 = icmp slt i32 %10, 2
  br i1 %cmp12, label %if.then17, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %11 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %cmp14 = icmp slt i32 %11, 1
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %12 = load i32, ptr @g, align 8
  %cmp16 = icmp slt i32 %12, 1
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false, %if.end10
  %13 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 @"\01_fputs"(ptr noundef @.str, ptr noundef %13)
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false15
  %14 = load i32, ptr @g, align 8
  %15 = load i32, ptr %syms, align 4
  %sub = sub nsw i32 %15, 1
  %cmp20 = icmp sgt i32 %14, %sub
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %16 = load i32, ptr %syms, align 4
  %sub22 = sub nsw i32 %16, 1
  store i32 %sub22, ptr @g, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  store i32 0, ptr %bits, align 4
  store i64 1, ptr %word, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %17 = load i64, ptr %word, align 8
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, ptr %bits, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i64, ptr %word, align 8
  %shl = shl i64 %19, 1
  store i64 %shl, ptr %word, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr @g, align 8
  %21 = load i32, ptr %bits, align 4
  %cmp24 = icmp sgt i32 %20, %21
  br i1 %cmp24, label %if.then30, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %for.end
  %22 = load i32, ptr %syms, align 4
  %sub26 = sub nsw i32 %22, 2
  %conv = sext i32 %sub26 to i64
  %23 = load i32, ptr @g, align 8
  %sub27 = sub nsw i32 %23, 1
  %sh_prom = zext i32 %sub27 to i64
  %shr = lshr i64 -1, %sh_prom
  %cmp28 = icmp uge i64 %conv, %shr
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %lor.lhs.false25, %for.end
  %24 = load ptr, ptr @__stderrp, align 8
  %call31 = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %24)
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %lor.lhs.false25
  %25 = load i32, ptr %syms, align 4
  %sub33 = sub nsw i32 %25, 1
  %conv34 = sext i32 %sub33 to i64
  %26 = load i32, ptr @g, align 8
  %sh_prom35 = zext i32 %26 to i64
  %shl36 = shl i64 1, %sh_prom35
  %sub37 = sub i64 %shl36, 1
  %cmp38 = icmp ugt i64 %conv34, %sub37
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end32
  %27 = load ptr, ptr @__stderrp, align 8
  %28 = load i32, ptr %syms, align 4
  %29 = load i32, ptr @g, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.2, i32 noundef %28, i32 noundef %29)
  store i32 1, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end32
  %30 = load i32, ptr @g, align 8
  %add = add nsw i32 %30, 1
  %conv43 = sext i32 %add to i64
  %call44 = call ptr @calloc(i64 noundef %conv43, i64 noundef 4) #9
  store ptr %call44, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %cmp45 = icmp ne ptr %31, null
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end42
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end42
  %32 = phi i1 [ false, %if.end42 ], [ true, %land.rhs ]
  %lnot = xor i1 %32, true
  %lnot.ext = zext i1 %lnot to i32
  %conv47 = sext i32 %lnot.ext to i64
  %tobool48 = icmp ne i64 %conv47, 0
  br i1 %tobool48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.4, i32 noundef 547, ptr noundef @.str.5) #10
  unreachable

33:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %33
  %34 = load i32, ptr %syms, align 4
  %cmp49 = icmp eq i32 %34, 2
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %cond.end
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  br label %if.end97

if.else:                                          ; preds = %cond.end
  %35 = load i32, ptr %syms, align 4
  %shr52 = ashr i32 %35, 1
  %conv53 = sext i32 %shr52 to i64
  store i64 %conv53, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %36 = load i32, ptr %syms, align 4
  %sub54 = sub nsw i32 %36, 1
  %shr55 = ashr i32 %sub54, 1
  store i32 %shr55, ptr %n, align 4
  %37 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %38 = load i32, ptr %n, align 4
  %conv56 = sext i32 %38 to i64
  %div = udiv i64 -1, %conv56
  %cmp57 = icmp ule i64 %37, %div
  br i1 %cmp57, label %land.rhs59, label %land.end60

land.rhs59:                                       ; preds = %if.else
  br label %land.end60

land.end60:                                       ; preds = %land.rhs59, %if.else
  %39 = phi i1 [ false, %if.else ], [ true, %land.rhs59 ]
  %lnot61 = xor i1 %39, true
  %lnot.ext62 = zext i1 %lnot61 to i32
  %conv63 = sext i32 %lnot.ext62 to i64
  %tobool64 = icmp ne i64 %conv63, 0
  br i1 %tobool64, label %cond.true65, label %cond.false66

cond.true65:                                      ; preds = %land.end60
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.4, i32 noundef 556, ptr noundef @.str.7) #10
  unreachable

40:                                               ; No predecessors!
  br label %cond.end67

cond.false66:                                     ; preds = %land.end60
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %40
  %41 = load i32, ptr %n, align 4
  %conv68 = sext i32 %41 to i64
  %42 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %mul = mul i64 %42, %conv68
  store i64 %mul, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %43 = load i32, ptr @g, align 8
  %sub69 = sub nsw i32 %43, 1
  store i32 %sub69, ptr %n, align 4
  %44 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %45 = load i32, ptr %n, align 4
  %conv70 = sext i32 %45 to i64
  %div71 = udiv i64 -1, %conv70
  %cmp72 = icmp ule i64 %44, %div71
  br i1 %cmp72, label %land.rhs74, label %land.end75

land.rhs74:                                       ; preds = %cond.end67
  br label %land.end75

land.end75:                                       ; preds = %land.rhs74, %cond.end67
  %46 = phi i1 [ false, %cond.end67 ], [ true, %land.rhs74 ]
  %lnot76 = xor i1 %46, true
  %lnot.ext77 = zext i1 %lnot76 to i32
  %conv78 = sext i32 %lnot.ext77 to i64
  %tobool79 = icmp ne i64 %conv78, 0
  br i1 %tobool79, label %cond.true80, label %cond.false81

cond.true80:                                      ; preds = %land.end75
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.4, i32 noundef 559, ptr noundef @.str.7) #10
  unreachable

47:                                               ; No predecessors!
  br label %cond.end82

cond.false81:                                     ; preds = %land.end75
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false81, %47
  %48 = load i32, ptr %n, align 4
  %conv83 = sext i32 %48 to i64
  %49 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %mul84 = mul i64 %49, %conv83
  store i64 %mul84, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %50 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %call85 = call ptr @calloc(i64 noundef %50, i64 noundef 8) #9
  store ptr %call85, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %51 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %cmp86 = icmp ne ptr %51, null
  br i1 %cmp86, label %land.rhs88, label %land.end89

land.rhs88:                                       ; preds = %cond.end82
  br label %land.end89

land.end89:                                       ; preds = %land.rhs88, %cond.end82
  %52 = phi i1 [ false, %cond.end82 ], [ true, %land.rhs88 ]
  %lnot90 = xor i1 %52, true
  %lnot.ext91 = zext i1 %lnot90 to i32
  %conv92 = sext i32 %lnot.ext91 to i64
  %tobool93 = icmp ne i64 %conv92, 0
  br i1 %tobool93, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %land.end89
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.4, i32 noundef 562, ptr noundef @.str.8) #10
  unreachable

53:                                               ; No predecessors!
  br label %cond.end96

cond.false95:                                     ; preds = %land.end89
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false95, %53
  br label %if.end97

if.end97:                                         ; preds = %cond.end96, %if.then51
  store i64 0, ptr %sum, align 8
  store i32 2, ptr %n98, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc118, %if.end97
  %54 = load i32, ptr %n98, align 4
  %55 = load i32, ptr %syms, align 4
  %cmp100 = icmp sle i32 %54, %55
  br i1 %cmp100, label %for.body102, label %for.end120

for.body102:                                      ; preds = %for.cond99
  %56 = load i32, ptr %n98, align 4
  %call103 = call i64 @count(i32 noundef %56, i32 noundef 2, i32 noundef 1)
  store i64 %call103, ptr %got, align 8
  %57 = load i64, ptr %got, align 8
  %58 = load i64, ptr %sum, align 8
  %add104 = add i64 %58, %57
  store i64 %add104, ptr %sum, align 8
  %59 = load i64, ptr %got, align 8
  %cmp105 = icmp ne i64 %59, -1
  br i1 %cmp105, label %land.lhs.true, label %land.end110

land.lhs.true:                                    ; preds = %for.body102
  %60 = load i64, ptr %sum, align 8
  %61 = load i64, ptr %got, align 8
  %cmp107 = icmp uge i64 %60, %61
  br i1 %cmp107, label %land.rhs109, label %land.end110

land.rhs109:                                      ; preds = %land.lhs.true
  br label %land.end110

land.end110:                                      ; preds = %land.rhs109, %land.lhs.true, %for.body102
  %62 = phi i1 [ false, %land.lhs.true ], [ false, %for.body102 ], [ true, %land.rhs109 ]
  %lnot111 = xor i1 %62, true
  %lnot.ext112 = zext i1 %lnot111 to i32
  %conv113 = sext i32 %lnot.ext112 to i64
  %tobool114 = icmp ne i64 %conv113, 0
  br i1 %tobool114, label %cond.true115, label %cond.false116

cond.true115:                                     ; preds = %land.end110
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.4, i32 noundef 570, ptr noundef @.str.9) #10
  unreachable

63:                                               ; No predecessors!
  br label %cond.end117

cond.false116:                                    ; preds = %land.end110
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false116, %63
  br label %for.inc118

for.inc118:                                       ; preds = %cond.end117
  %64 = load i32, ptr %n98, align 4
  %inc119 = add nsw i32 %64, 1
  store i32 %inc119, ptr %n98, align 4
  br label %for.cond99, !llvm.loop !8

for.end120:                                       ; preds = %for.cond99
  %65 = load i64, ptr %sum, align 8
  %66 = load i32, ptr %syms, align 4
  %call121 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i64 noundef %65, i32 noundef %66)
  %67 = load i32, ptr @g, align 8
  %68 = load i32, ptr %syms, align 4
  %sub122 = sub nsw i32 %68, 1
  %cmp123 = icmp slt i32 %67, %sub122
  br i1 %cmp123, label %if.then125, label %if.else127

if.then125:                                       ; preds = %for.end120
  %69 = load i32, ptr @g, align 8
  %call126 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %69)
  br label %if.end129

if.else127:                                       ; preds = %for.end120
  %call128 = call i32 @puts(ptr noundef @.str.12)
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.then125
  %70 = load i32, ptr %syms, align 4
  %cmp130 = icmp eq i32 %70, 2
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %if.end129
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  br label %if.end146

if.else133:                                       ; preds = %if.end129
  %71 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %call134 = call ptr @calloc(i64 noundef %71, i64 noundef 16) #9
  store ptr %call134, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %72 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %cmp135 = icmp ne ptr %72, null
  br i1 %cmp135, label %land.rhs137, label %land.end138

land.rhs137:                                      ; preds = %if.else133
  br label %land.end138

land.end138:                                      ; preds = %land.rhs137, %if.else133
  %73 = phi i1 [ false, %if.else133 ], [ true, %land.rhs137 ]
  %lnot139 = xor i1 %73, true
  %lnot.ext140 = zext i1 %lnot139 to i32
  %conv141 = sext i32 %lnot.ext140 to i64
  %tobool142 = icmp ne i64 %conv141, 0
  br i1 %tobool142, label %cond.true143, label %cond.false144

cond.true143:                                     ; preds = %land.end138
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.4, i32 noundef 583, ptr noundef @.str.13) #10
  unreachable

74:                                               ; No predecessors!
  br label %cond.end145

cond.false144:                                    ; preds = %land.end138
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false144, %74
  br label %if.end146

if.end146:                                        ; preds = %cond.end145, %if.then132
  %75 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %76 = load i32, ptr @g, align 8
  %cmp147 = icmp sgt i32 %75, %76
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end146
  %77 = load i32, ptr @g, align 8
  store i32 %77, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end146
  %78 = load i32, ptr %syms, align 4
  %conv151 = sext i32 %78 to i64
  %79 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %add152 = add nsw i32 %79, 1
  %sh_prom153 = zext i32 %add152 to i64
  %shl154 = shl i64 1, %sh_prom153
  %cmp155 = icmp ult i64 %conv151, %shl154
  br i1 %cmp155, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.end150
  %80 = load i32, ptr %syms, align 4
  call void @enough(i32 noundef %80)
  br label %if.end160

if.else158:                                       ; preds = %if.end150
  %81 = load ptr, ptr @__stderrp, align 8
  %call159 = call i32 @"\01_fputs"(ptr noundef @.str.14, ptr noundef %81)
  br label %if.end160

if.end160:                                        ; preds = %if.else158, %if.then157
  call void @cleanup()
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end160, %if.then40, %if.then30, %if.then17
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: nounwind ssp uwtable
define internal void @string_init(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %0, i32 0, i32 1
  store i64 16, ptr %size, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %size1 = getelementptr inbounds %struct.string_t, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %size1, align 8
  %call = call ptr @malloc(i64 noundef %2) #11
  %3 = load ptr, ptr %s.addr, align 8
  %str = getelementptr inbounds %struct.string_t, ptr %3, i32 0, i32 0
  store ptr %call, ptr %str, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %str2 = getelementptr inbounds %struct.string_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %str2, align 8
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %6, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.string_init, ptr noundef @.str.4, i32 noundef 190, ptr noundef @.str.15) #10
  unreachable

7:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %7
  %8 = load ptr, ptr %s.addr, align 8
  call void @string_clear(ptr noundef %8)
  ret void
}

declare i32 @atoi(ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @count(i32 noundef %syms, i32 noundef %left, i32 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %syms.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %index = alloca i64, align 8
  %got = alloca i64, align 8
  %least = alloca i32, align 4
  %most = alloca i32, align 4
  %sum = alloca i64, align 8
  %use = alloca i32, align 4
  store i32 %syms, ptr %syms.addr, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %syms.addr, align 4
  %1 = load i32, ptr %left.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %syms.addr, align 4
  %3 = load i32, ptr %left.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, ptr %left.addr, align 4
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32, ptr %len.addr, align 4
  %6 = load i32, ptr @g, align 8
  %cmp3 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %cmp3, %land.rhs ]
  %lnot = xor i1 %7, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.count, ptr noundef @.str.4, i32 noundef 267, ptr noundef @.str.16) #10
  unreachable

8:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %8
  %9 = load i32, ptr %syms.addr, align 4
  %10 = load i32, ptr %left.addr, align 4
  %11 = load i32, ptr %len.addr, align 4
  %call = call i64 @map(i32 noundef %9, i32 noundef %10, i32 noundef %11)
  store i64 %call, ptr %index, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %13 = load i64, ptr %index, align 8
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 %13
  %14 = load i64, ptr %arrayidx, align 8
  store i64 %14, ptr %got, align 8
  %15 = load i64, ptr %got, align 8
  %tobool4 = icmp ne i64 %15, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %cond.end
  %16 = load i64, ptr %got, align 8
  store i64 %16, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %cond.end
  %17 = load i32, ptr %left.addr, align 4
  %shl = shl i32 %17, 1
  %18 = load i32, ptr %syms.addr, align 4
  %sub = sub nsw i32 %shl, %18
  store i32 %sub, ptr %least, align 4
  %19 = load i32, ptr %least, align 4
  %cmp7 = icmp slt i32 %19, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 0, ptr %least, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %20 = load i32, ptr %left.addr, align 4
  %conv11 = sext i32 %20 to i64
  %21 = load i32, ptr @g, align 8
  %22 = load i32, ptr %len.addr, align 4
  %sub12 = sub nsw i32 %21, %22
  %sh_prom = zext i32 %sub12 to i64
  %shl13 = shl i64 %conv11, %sh_prom
  %23 = load i32, ptr %syms.addr, align 4
  %conv14 = sext i32 %23 to i64
  %sub15 = sub i64 %shl13, %conv14
  %24 = load i32, ptr @g, align 8
  %25 = load i32, ptr %len.addr, align 4
  %sub16 = sub nsw i32 %24, %25
  %sh_prom17 = zext i32 %sub16 to i64
  %shl18 = shl i64 1, %sh_prom17
  %sub19 = sub i64 %shl18, 1
  %div = udiv i64 %sub15, %sub19
  %conv20 = trunc i64 %div to i32
  store i32 %conv20, ptr %most, align 4
  store i64 0, ptr %sum, align 8
  %26 = load i32, ptr %least, align 4
  store i32 %26, ptr %use, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %27 = load i32, ptr %use, align 4
  %28 = load i32, ptr %most, align 4
  %cmp21 = icmp sle i32 %27, %28
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, ptr %syms.addr, align 4
  %30 = load i32, ptr %use, align 4
  %sub23 = sub nsw i32 %29, %30
  %31 = load i32, ptr %left.addr, align 4
  %32 = load i32, ptr %use, align 4
  %sub24 = sub nsw i32 %31, %32
  %shl25 = shl i32 %sub24, 1
  %33 = load i32, ptr %len.addr, align 4
  %add = add nsw i32 %33, 1
  %call26 = call i64 @count(i32 noundef %sub23, i32 noundef %shl25, i32 noundef %add)
  store i64 %call26, ptr %got, align 8
  %34 = load i64, ptr %got, align 8
  %35 = load i64, ptr %sum, align 8
  %add27 = add i64 %35, %34
  store i64 %add27, ptr %sum, align 8
  %36 = load i64, ptr %got, align 8
  %cmp28 = icmp eq i64 %36, -1
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %37 = load i64, ptr %sum, align 8
  %38 = load i64, ptr %got, align 8
  %cmp30 = icmp ult i64 %37, %38
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %lor.lhs.false, %for.body
  store i64 -1, ptr %retval, align 8
  br label %return

if.end33:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %39 = load i32, ptr %use, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %use, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %40 = load i64, ptr %sum, align 8
  %cmp34 = icmp ne i64 %40, 0
  %lnot36 = xor i1 %cmp34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %tobool39 = icmp ne i64 %conv38, 0
  br i1 %tobool39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %for.end
  call void @__assert_rtn(ptr noundef @__func__.count, ptr noundef @.str.4, i32 noundef 297, ptr noundef @.str.17) #10
  unreachable

41:                                               ; No predecessors!
  br label %cond.end42

cond.false41:                                     ; preds = %for.end
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %41
  %42 = load i64, ptr %sum, align 8
  %43 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %44 = load i64, ptr %index, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %43, i64 %44
  store i64 %42, ptr %arrayidx43, align 8
  %45 = load i64, ptr %sum, align 8
  store i64 %45, ptr %retval, align 8
  br label %return

return:                                           ; preds = %cond.end42, %if.then32, %if.then5, %if.then
  %46 = load i64, ptr %retval, align 8
  ret i64 %46
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @enough(i32 noundef %syms) #0 {
entry:
  %syms.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %left = alloca i32, align 4
  %index = alloca i64, align 8
  store i32 %syms, ptr %syms.addr, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %1 = load i32, ptr @g, align 8
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %3 = load i32, ptr %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @string_clear(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  %5 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %shl = shl i32 1, %5
  store i32 %shl, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %6 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %7 = load i32, ptr @g, align 8
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %if.then, label %if.end34

if.then:                                          ; preds = %for.end
  store i32 3, ptr %n2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc31, %if.then
  %8 = load i32, ptr %n2, align 4
  %9 = load i32, ptr %syms.addr, align 4
  %cmp4 = icmp sle i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end33

for.body5:                                        ; preds = %for.cond3
  store i32 2, ptr %left, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc28, %for.body5
  %10 = load i32, ptr %left, align 4
  %11 = load i32, ptr %n2, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end30

for.body8:                                        ; preds = %for.cond6
  %12 = load i32, ptr %n2, align 4
  %13 = load i32, ptr %left, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %add = add nsw i32 %14, 1
  %call = call i64 @map(i32 noundef %12, i32 noundef %13, i32 noundef %add)
  store i64 %call, ptr %index, align 8
  %15 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %add9 = add nsw i32 %15, 1
  %16 = load i32, ptr @g, align 8
  %cmp10 = icmp slt i32 %add9, %16
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %17 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %18 = load i64, ptr %index, align 8
  %arrayidx11 = getelementptr inbounds i64, ptr %17, i64 %18
  %19 = load i64, ptr %arrayidx11, align 8
  %tobool = icmp ne i64 %19, 0
  br i1 %tobool, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true
  %20 = load i32, ptr %n2, align 4
  %21 = load i32, ptr %left, align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %add13 = add nsw i32 %22, 1
  %23 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %shl14 = shl i32 1, %23
  call void @examine(i32 noundef %20, i32 noundef %21, i32 noundef %add13, i32 noundef %shl14, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true, %for.body8
  %24 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %25 = load i64, ptr %index, align 8
  %sub = sub i64 %25, 1
  %arrayidx15 = getelementptr inbounds i64, ptr %24, i64 %sub
  %26 = load i64, ptr %arrayidx15, align 8
  %tobool16 = icmp ne i64 %26, 0
  br i1 %tobool16, label %land.lhs.true17, label %if.end27

land.lhs.true17:                                  ; preds = %if.end
  %27 = load i32, ptr %n2, align 4
  %28 = load i32, ptr %left, align 4
  %shl18 = shl i32 %28, 1
  %cmp19 = icmp sle i32 %27, %shl18
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %land.lhs.true17
  %29 = load i32, ptr %n2, align 4
  %30 = load i32, ptr %left, align 4
  %sub21 = sub nsw i32 %29, %30
  %shl22 = shl i32 %sub21, 1
  %31 = load i32, ptr %n2, align 4
  %32 = load i32, ptr %left, align 4
  %sub23 = sub nsw i32 %31, %32
  %shl24 = shl i32 %sub23, 1
  %33 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %add25 = add nsw i32 %33, 1
  %34 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %shl26 = shl i32 1, %34
  call void @examine(i32 noundef %shl22, i32 noundef %shl24, i32 noundef %add25, i32 noundef %shl26, i32 noundef 0)
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %land.lhs.true17, %if.end
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %35 = load i32, ptr %left, align 4
  %add29 = add nsw i32 %35, 2
  store i32 %add29, ptr %left, align 4
  br label %for.cond6, !llvm.loop !11

for.end30:                                        ; preds = %for.cond6
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %36 = load i32, ptr %n2, align 4
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, ptr %n2, align 4
  br label %for.cond3, !llvm.loop !12

for.end33:                                        ; preds = %for.cond3
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %for.end
  %37 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %38 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %37, i32 noundef %38)
  %39 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), align 8
  %40 = load ptr, ptr @__stdoutp, align 8
  %call36 = call i32 @"\01_fputs"(ptr noundef %39, ptr noundef %40)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @cleanup() #0 {
entry:
  %n = alloca i64, align 8
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i64 0, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, ptr %n, align 8
  %2 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %cmp1 = icmp ult i64 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %4 = load i64, ptr %n, align 8
  %arrayidx = getelementptr inbounds %struct.tab, ptr %3, i64 %4
  %len = getelementptr inbounds %struct.tab, ptr %arrayidx, i32 0, i32 0
  %5 = load i64, ptr %len, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %for.body
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %7 = load i64, ptr %n, align 8
  %arrayidx3 = getelementptr inbounds %struct.tab, ptr %6, i64 %7
  %vec = getelementptr inbounds %struct.tab, ptr %arrayidx3, i32 0, i32 1
  %8 = load ptr, ptr %vec, align 8
  call void @free(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, ptr %n, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %n, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i64 0, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 3), align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  call void @free(ptr noundef %10)
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  br label %if.end4

if.end4:                                          ; preds = %for.end, %entry
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  call void @free(ptr noundef %11)
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 7), align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  call void @free(ptr noundef %12)
  store ptr null, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  call void @pc_inline_source_snapshot_public_repos_zlib_examples_enough_0(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind ssp uwtable
define internal void @string_clear(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %str = getelementptr inbounds %struct.string_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %str, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 0, ptr %arrayidx, align 1
  %2 = load ptr, ptr %s.addr, align 8
  %len = getelementptr inbounds %struct.string_t, ptr %2, i32 0, i32 2
  store i64 0, ptr %len, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @map(i32 noundef %syms, i32 noundef %left, i32 noundef %len) #0 {
entry:
  %syms.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store i32 %syms, ptr %syms.addr, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %syms.addr, align 4
  %sub = sub nsw i32 %0, 1
  %shr = ashr i32 %sub, 1
  %conv = sext i32 %shr to i64
  %1 = load i32, ptr %syms.addr, align 4
  %sub1 = sub nsw i32 %1, 2
  %shr2 = ashr i32 %sub1, 1
  %conv3 = sext i32 %shr2 to i64
  %mul = mul i64 %conv, %conv3
  %2 = load i32, ptr %left.addr, align 4
  %shr4 = ashr i32 %2, 1
  %conv5 = sext i32 %shr4 to i64
  %add = add i64 %mul, %conv5
  %sub6 = sub i64 %add, 1
  %3 = load i32, ptr @g, align 8
  %sub7 = sub nsw i32 %3, 1
  %conv8 = sext i32 %sub7 to i64
  %mul9 = mul i64 %sub6, %conv8
  %4 = load i32, ptr %len.addr, align 4
  %conv10 = sext i32 %4 to i64
  %add11 = add i64 %mul9, %conv10
  %sub12 = sub i64 %add11, 1
  ret i64 %sub12
}

; Function Attrs: nounwind ssp uwtable
define internal void @examine(i32 noundef %syms, i32 noundef %left, i32 noundef %len, i32 noundef %mem, i32 noundef %rem) #0 {
entry:
  %syms.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %mem.addr = alloca i32, align 4
  %rem.addr = alloca i32, align 4
  %bits = alloca i32, align 4
  %bits32 = alloca i32, align 4
  %least = alloca i32, align 4
  %most = alloca i32, align 4
  %use = alloca i32, align 4
  store i32 %syms, ptr %syms.addr, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %mem, ptr %mem.addr, align 4
  store i32 %rem, ptr %rem.addr, align 4
  %0 = load i32, ptr %syms.addr, align 4
  %1 = load i32, ptr %left.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end50

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %left.addr, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %4 = load i32, ptr %len.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load i32, ptr %rem.addr, align 4
  %6 = load i32, ptr %left.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %rem.addr, align 4
  %8 = load i32, ptr %left.addr, align 4
  %sub = sub nsw i32 %8, %7
  store i32 %sub, ptr %left.addr, align 4
  %9 = load i32, ptr %len.addr, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %sub2 = sub nsw i32 %9, %10
  %shl = shl i32 1, %sub2
  store i32 %shl, ptr %rem.addr, align 4
  %11 = load i32, ptr %rem.addr, align 4
  %12 = load i32, ptr %mem.addr, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, ptr %mem.addr, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %rem.addr, align 4
  %14 = load i32, ptr %left.addr, align 4
  %cmp3 = icmp eq i32 %13, %14
  %lnot = xor i1 %cmp3, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  call void @__assert_rtn(ptr noundef @__func__.examine, ptr noundef @.str.4, i32 noundef 373, ptr noundef @.str.19) #10
  unreachable

15:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %15
  %16 = load i32, ptr %mem.addr, align 4
  %17 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %cmp4 = icmp sge i32 %16, %17
  br i1 %cmp4, label %if.then6, label %if.end47

if.then6:                                         ; preds = %cond.end
  %18 = load i32, ptr %mem.addr, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  %cmp7 = icmp sgt i32 %18, %19
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %20 = load i32, ptr %mem.addr, align 4
  store i32 %20, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 2), align 8
  call void @string_clear(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5))
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6
  store i32 0, ptr %syms.addr, align 4
  %21 = load i32, ptr @g, align 8
  %shl10 = shl i32 1, %21
  store i32 %shl10, ptr %left.addr, align 4
  %22 = load i32, ptr @g, align 8
  store i32 %22, ptr %bits, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, ptr %bits, align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %cmp11 = icmp sgt i32 %23, %24
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %26 = load i32, ptr %bits, align 4
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %25, i64 %idxprom13
  %27 = load i32, ptr %arrayidx14, align 4
  %28 = load i32, ptr %syms.addr, align 4
  %add15 = add nsw i32 %28, %27
  store i32 %add15, ptr %syms.addr, align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %30 = load i32, ptr %bits, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %29, i64 %idxprom16
  %31 = load i32, ptr %arrayidx17, align 4
  %32 = load i32, ptr %left.addr, align 4
  %sub18 = sub nsw i32 %32, %31
  store i32 %sub18, ptr %left.addr, align 4
  %33 = load i32, ptr %left.addr, align 4
  %and = and i32 %33, 1
  %cmp19 = icmp eq i32 %and, 0
  %lnot21 = xor i1 %cmp19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %for.body
  call void @__assert_rtn(ptr noundef @__func__.examine, ptr noundef @.str.4, i32 noundef 390, ptr noundef @.str.20) #10
  unreachable

34:                                               ; No predecessors!
  br label %cond.end27

cond.false26:                                     ; preds = %for.body
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %34
  %35 = load i32, ptr %left.addr, align 4
  %shr = ashr i32 %35, 1
  store i32 %shr, ptr %left.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end27
  %36 = load i32, ptr %bits, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %bits, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %syms.addr, align 4
  %38 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %add28 = add nsw i32 %38, 1
  %39 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %shl29 = shl i32 1, %39
  %40 = load i32, ptr %left.addr, align 4
  %sub30 = sub nsw i32 %shl29, %40
  %shl31 = shl i32 %sub30, 1
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), ptr noundef @.str.21, i32 noundef %37, i32 noundef %add28, i32 noundef %shl31)
  %41 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %add33 = add nsw i32 %41, 1
  store i32 %add33, ptr %bits32, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %for.end
  %42 = load i32, ptr %bits32, align 4
  %43 = load i32, ptr @g, align 8
  %cmp35 = icmp sle i32 %42, %43
  br i1 %cmp35, label %for.body37, label %for.end46

for.body37:                                       ; preds = %for.cond34
  %44 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %45 = load i32, ptr %bits32, align 4
  %idxprom38 = sext i32 %45 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %44, i64 %idxprom38
  %46 = load i32, ptr %arrayidx39, align 4
  %tobool40 = icmp ne i32 %46, 0
  br i1 %tobool40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %for.body37
  %47 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %48 = load i32, ptr %bits32, align 4
  %idxprom42 = sext i32 %48 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %47, i64 %idxprom42
  %49 = load i32, ptr %arrayidx43, align 4
  %50 = load i32, ptr %bits32, align 4
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), ptr noundef @.str.22, i32 noundef %49, i32 noundef %50)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %for.body37
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %51 = load i32, ptr %bits32, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %bits32, align 4
  br label %for.cond34, !llvm.loop !16

for.end46:                                        ; preds = %for.cond34
  call void (ptr, ptr, ...) @string_printf(ptr noundef getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 5), ptr noundef @.str.23)
  br label %if.end47

if.end47:                                         ; preds = %for.end46, %cond.end
  %52 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %53 = load i32, ptr %len.addr, align 4
  %idxprom48 = sext i32 %53 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %52, i64 %idxprom48
  store i32 0, ptr %arrayidx49, align 4
  br label %return

if.end50:                                         ; preds = %entry
  %54 = load i32, ptr %syms.addr, align 4
  %55 = load i32, ptr %left.addr, align 4
  %56 = load i32, ptr %len.addr, align 4
  %57 = load i32, ptr %mem.addr, align 4
  %58 = load i32, ptr %rem.addr, align 4
  %call = call i32 @been_here(i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58)
  %tobool51 = icmp ne i32 %call, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end50
  br label %return

if.end53:                                         ; preds = %if.end50
  %59 = load i32, ptr %left.addr, align 4
  %shl54 = shl i32 %59, 1
  %60 = load i32, ptr %syms.addr, align 4
  %sub55 = sub nsw i32 %shl54, %60
  store i32 %sub55, ptr %least, align 4
  %61 = load i32, ptr %least, align 4
  %cmp56 = icmp slt i32 %61, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end53
  store i32 0, ptr %least, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end53
  %62 = load i32, ptr %left.addr, align 4
  %conv60 = sext i32 %62 to i64
  %63 = load i32, ptr @g, align 8
  %64 = load i32, ptr %len.addr, align 4
  %sub61 = sub nsw i32 %63, %64
  %sh_prom = zext i32 %sub61 to i64
  %shl62 = shl i64 %conv60, %sh_prom
  %65 = load i32, ptr %syms.addr, align 4
  %conv63 = sext i32 %65 to i64
  %sub64 = sub i64 %shl62, %conv63
  %66 = load i32, ptr @g, align 8
  %67 = load i32, ptr %len.addr, align 4
  %sub65 = sub nsw i32 %66, %67
  %sh_prom66 = zext i32 %sub65 to i64
  %shl67 = shl i64 1, %sh_prom66
  %sub68 = sub i64 %shl67, 1
  %div = udiv i64 %sub64, %sub68
  %conv69 = trunc i64 %div to i32
  store i32 %conv69, ptr %most, align 4
  %68 = load i32, ptr %least, align 4
  store i32 %68, ptr %use, align 4
  br label %while.cond70

while.cond70:                                     ; preds = %while.body73, %if.end59
  %69 = load i32, ptr %rem.addr, align 4
  %70 = load i32, ptr %use, align 4
  %cmp71 = icmp slt i32 %69, %70
  br i1 %cmp71, label %while.body73, label %while.end78

while.body73:                                     ; preds = %while.cond70
  %71 = load i32, ptr %rem.addr, align 4
  %72 = load i32, ptr %use, align 4
  %sub74 = sub nsw i32 %72, %71
  store i32 %sub74, ptr %use, align 4
  %73 = load i32, ptr %len.addr, align 4
  %74 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %sub75 = sub nsw i32 %73, %74
  %shl76 = shl i32 1, %sub75
  store i32 %shl76, ptr %rem.addr, align 4
  %75 = load i32, ptr %rem.addr, align 4
  %76 = load i32, ptr %mem.addr, align 4
  %add77 = add nsw i32 %76, %75
  store i32 %add77, ptr %mem.addr, align 4
  br label %while.cond70, !llvm.loop !17

while.end78:                                      ; preds = %while.cond70
  %77 = load i32, ptr %use, align 4
  %78 = load i32, ptr %rem.addr, align 4
  %sub79 = sub nsw i32 %78, %77
  store i32 %sub79, ptr %rem.addr, align 4
  %79 = load i32, ptr %least, align 4
  store i32 %79, ptr %use, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc106, %while.end78
  %80 = load i32, ptr %use, align 4
  %81 = load i32, ptr %most, align 4
  %cmp81 = icmp sle i32 %80, %81
  br i1 %cmp81, label %for.body83, label %for.end108

for.body83:                                       ; preds = %for.cond80
  %82 = load i32, ptr %use, align 4
  %83 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %84 = load i32, ptr %len.addr, align 4
  %idxprom84 = sext i32 %84 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %83, i64 %idxprom84
  store i32 %82, ptr %arrayidx85, align 4
  %85 = load i32, ptr %syms.addr, align 4
  %86 = load i32, ptr %use, align 4
  %sub86 = sub nsw i32 %85, %86
  %87 = load i32, ptr %left.addr, align 4
  %88 = load i32, ptr %use, align 4
  %sub87 = sub nsw i32 %87, %88
  %shl88 = shl i32 %sub87, 1
  %89 = load i32, ptr %len.addr, align 4
  %add89 = add nsw i32 %89, 1
  %90 = load i32, ptr %mem.addr, align 4
  %91 = load i32, ptr %rem.addr, align 4
  %tobool90 = icmp ne i32 %91, 0
  br i1 %tobool90, label %cond.true91, label %cond.false94

cond.true91:                                      ; preds = %for.body83
  %92 = load i32, ptr %len.addr, align 4
  %93 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %sub92 = sub nsw i32 %92, %93
  %shl93 = shl i32 1, %sub92
  br label %cond.end95

cond.false94:                                     ; preds = %for.body83
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false94, %cond.true91
  %cond = phi i32 [ %shl93, %cond.true91 ], [ 0, %cond.false94 ]
  %add96 = add nsw i32 %90, %cond
  %94 = load i32, ptr %rem.addr, align 4
  %shl97 = shl i32 %94, 1
  call void @examine(i32 noundef %sub86, i32 noundef %shl88, i32 noundef %add89, i32 noundef %add96, i32 noundef %shl97)
  %95 = load i32, ptr %rem.addr, align 4
  %cmp98 = icmp eq i32 %95, 0
  br i1 %cmp98, label %if.then100, label %if.end104

if.then100:                                       ; preds = %cond.end95
  %96 = load i32, ptr %len.addr, align 4
  %97 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %sub101 = sub nsw i32 %96, %97
  %shl102 = shl i32 1, %sub101
  store i32 %shl102, ptr %rem.addr, align 4
  %98 = load i32, ptr %rem.addr, align 4
  %99 = load i32, ptr %mem.addr, align 4
  %add103 = add nsw i32 %99, %98
  store i32 %add103, ptr %mem.addr, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %cond.end95
  %100 = load i32, ptr %rem.addr, align 4
  %dec105 = add nsw i32 %100, -1
  store i32 %dec105, ptr %rem.addr, align 4
  br label %for.inc106

for.inc106:                                       ; preds = %if.end104
  %101 = load i32, ptr %use, align 4
  %inc107 = add nsw i32 %101, 1
  store i32 %inc107, ptr %use, align 4
  br label %for.cond80, !llvm.loop !18

for.end108:                                       ; preds = %for.cond80
  %102 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 6), align 8
  %103 = load i32, ptr %len.addr, align 4
  %idxprom109 = sext i32 %103 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %102, i64 %idxprom109
  store i32 0, ptr %arrayidx110, align 4
  br label %return

return:                                           ; preds = %for.end108, %if.then52, %if.end47
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @string_printf(ptr noundef %s, ptr noundef %fmt, ...) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %ap = alloca ptr, align 8
  %len = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.va_start(ptr %ap)
  %0 = load ptr, ptr %s.addr, align 8
  %len1 = getelementptr inbounds %struct.string_t, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %len1, align 8
  store i64 %1, ptr %len, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %str = getelementptr inbounds %struct.string_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %str, align 8
  %4 = load i64, ptr %len, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4
  %5 = load ptr, ptr %s.addr, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %size, align 8
  %7 = load i64, ptr %len, align 8
  %sub = sub i64 %6, %7
  %8 = load ptr, ptr %s.addr, align 8
  %str2 = getelementptr inbounds %struct.string_t, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %str2, align 8
  %10 = load i64, ptr %len, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %9, i64 %10
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr3, i1 false, i1 true, i1 false)
  %12 = load ptr, ptr %fmt.addr, align 8
  %13 = load ptr, ptr %ap, align 8
  %call = call i32 @__vsnprintf_chk(ptr noundef %add.ptr, i64 noundef %sub, i32 noundef 0, i64 noundef %11, ptr noundef %12, ptr noundef %13)
  store i32 %call, ptr %ret, align 4
  %14 = load i32, ptr %ret, align 4
  %cmp = icmp sge i32 %14, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %15 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %15, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.string_printf, ptr noundef @.str.4, i32 noundef 209, ptr noundef @.str.24) #10
  unreachable

16:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %16
  %17 = load i32, ptr %ret, align 4
  %conv4 = sext i32 %17 to i64
  %18 = load ptr, ptr %s.addr, align 8
  %len5 = getelementptr inbounds %struct.string_t, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %len5, align 8
  %add = add i64 %19, %conv4
  store i64 %add, ptr %len5, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %size6 = getelementptr inbounds %struct.string_t, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %size6, align 8
  %22 = load ptr, ptr %s.addr, align 8
  %len7 = getelementptr inbounds %struct.string_t, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %len7, align 8
  %add8 = add i64 %23, 1
  %cmp9 = icmp ult i64 %21, %add8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %24 = load ptr, ptr %s.addr, align 8
  %size11 = getelementptr inbounds %struct.string_t, ptr %24, i32 0, i32 1
  %25 = load i64, ptr %size11, align 8
  %shl = shl i64 %25, 1
  store i64 %shl, ptr %size11, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %size12 = getelementptr inbounds %struct.string_t, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %size12, align 8
  %cmp13 = icmp ne i64 %27, 0
  br i1 %cmp13, label %land.rhs15, label %land.end16

land.rhs15:                                       ; preds = %do.body
  br label %land.end16

land.end16:                                       ; preds = %land.rhs15, %do.body
  %28 = phi i1 [ false, %do.body ], [ true, %land.rhs15 ]
  %lnot17 = xor i1 %28, true
  %lnot.ext18 = zext i1 %lnot17 to i32
  %conv19 = sext i32 %lnot.ext18 to i64
  %tobool20 = icmp ne i64 %conv19, 0
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %land.end16
  call void @__assert_rtn(ptr noundef @__func__.string_printf, ptr noundef @.str.4, i32 noundef 214, ptr noundef @.str.25) #10
  unreachable

29:                                               ; No predecessors!
  br label %cond.end23

cond.false22:                                     ; preds = %land.end16
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %29
  br label %do.cond

do.cond:                                          ; preds = %cond.end23
  %30 = load ptr, ptr %s.addr, align 8
  %size24 = getelementptr inbounds %struct.string_t, ptr %30, i32 0, i32 1
  %31 = load i64, ptr %size24, align 8
  %32 = load ptr, ptr %s.addr, align 8
  %len25 = getelementptr inbounds %struct.string_t, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %len25, align 8
  %add26 = add i64 %33, 1
  %cmp27 = icmp ult i64 %31, %add26
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %s.addr, align 8
  %str29 = getelementptr inbounds %struct.string_t, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %str29, align 8
  %36 = load ptr, ptr %s.addr, align 8
  %size30 = getelementptr inbounds %struct.string_t, ptr %36, i32 0, i32 1
  %37 = load i64, ptr %size30, align 8
  %call31 = call ptr @realloc(ptr noundef %35, i64 noundef %37) #12
  %38 = load ptr, ptr %s.addr, align 8
  %str32 = getelementptr inbounds %struct.string_t, ptr %38, i32 0, i32 0
  store ptr %call31, ptr %str32, align 8
  %39 = load ptr, ptr %s.addr, align 8
  %str33 = getelementptr inbounds %struct.string_t, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %str33, align 8
  %cmp34 = icmp ne ptr %40, null
  br i1 %cmp34, label %land.rhs36, label %land.end37

land.rhs36:                                       ; preds = %do.end
  br label %land.end37

land.end37:                                       ; preds = %land.rhs36, %do.end
  %41 = phi i1 [ false, %do.end ], [ true, %land.rhs36 ]
  %lnot38 = xor i1 %41, true
  %lnot.ext39 = zext i1 %lnot38 to i32
  %conv40 = sext i32 %lnot.ext39 to i64
  %tobool41 = icmp ne i64 %conv40, 0
  br i1 %tobool41, label %cond.true42, label %cond.false43

cond.true42:                                      ; preds = %land.end37
  call void @__assert_rtn(ptr noundef @__func__.string_printf, ptr noundef @.str.4, i32 noundef 217, ptr noundef @.str.15) #10
  unreachable

42:                                               ; No predecessors!
  br label %cond.end44

cond.false43:                                     ; preds = %land.end37
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %42
  %43 = load ptr, ptr %s.addr, align 8
  %str45 = getelementptr inbounds %struct.string_t, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %str45, align 8
  %45 = load i64, ptr %len, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %44, i64 %45
  %46 = load ptr, ptr %s.addr, align 8
  %size47 = getelementptr inbounds %struct.string_t, ptr %46, i32 0, i32 1
  %47 = load i64, ptr %size47, align 8
  %48 = load i64, ptr %len, align 8
  %sub48 = sub i64 %47, %48
  %49 = load ptr, ptr %s.addr, align 8
  %str49 = getelementptr inbounds %struct.string_t, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %str49, align 8
  %51 = load i64, ptr %len, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %50, i64 %51
  %52 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr50, i1 false, i1 true, i1 false)
  %53 = load ptr, ptr %fmt.addr, align 8
  %54 = load ptr, ptr %ap, align 8
  %call51 = call i32 @__vsnprintf_chk(ptr noundef %add.ptr46, i64 noundef %sub48, i32 noundef 0, i64 noundef %52, ptr noundef %53, ptr noundef %54)
  br label %if.end

if.end:                                           ; preds = %cond.end44, %cond.end
  call void @llvm.va_end(ptr %ap)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @been_here(i32 noundef %syms, i32 noundef %left, i32 noundef %len, i32 noundef %mem, i32 noundef %rem) #0 {
entry:
  %retval = alloca i32, align 4
  %syms.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %mem.addr = alloca i32, align 4
  %rem.addr = alloca i32, align 4
  %index = alloca i64, align 8
  %offset = alloca i64, align 8
  %bit = alloca i32, align 4
  %length = alloca i64, align 8
  %vector = alloca ptr, align 8
  store i32 %syms, ptr %syms.addr, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %mem, ptr %mem.addr, align 4
  store i32 %rem, ptr %rem.addr, align 4
  %0 = load i32, ptr %syms.addr, align 4
  %1 = load i32, ptr %left.addr, align 4
  %2 = load i32, ptr %len.addr, align 4
  %call = call i64 @map(i32 noundef %0, i32 noundef %1, i32 noundef %2)
  store i64 %call, ptr %index, align 8
  %3 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 1), align 4
  %shl = shl i32 1, %3
  %4 = load i32, ptr %mem.addr, align 4
  %sub = sub nsw i32 %4, %shl
  store i32 %sub, ptr %mem.addr, align 4
  %5 = load i32, ptr %mem.addr, align 4
  %shr = ashr i32 %5, 1
  store i32 %shr, ptr %mem.addr, align 4
  %6 = load i32, ptr %rem.addr, align 4
  %shr1 = ashr i32 %6, 1
  store i32 %shr1, ptr %rem.addr, align 4
  %7 = load i32, ptr %mem.addr, align 4
  %shr2 = ashr i32 %7, 3
  %8 = load i32, ptr %rem.addr, align 4
  %add = add nsw i32 %shr2, %8
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %offset, align 8
  %9 = load i64, ptr %offset, align 8
  %10 = load i64, ptr %offset, align 8
  %add3 = add i64 %10, 1
  %mul = mul i64 %9, %add3
  %shr4 = lshr i64 %mul, 1
  %11 = load i32, ptr %rem.addr, align 4
  %conv5 = sext i32 %11 to i64
  %add6 = add i64 %shr4, %conv5
  store i64 %add6, ptr %offset, align 8
  %12 = load i32, ptr %mem.addr, align 4
  %and = and i32 %12, 7
  %shl7 = shl i32 1, %and
  store i32 %shl7, ptr %bit, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %14 = load i64, ptr %index, align 8
  %arrayidx = getelementptr inbounds %struct.tab, ptr %13, i64 %14
  %len8 = getelementptr inbounds %struct.tab, ptr %arrayidx, i32 0, i32 0
  %15 = load i64, ptr %len8, align 8
  store i64 %15, ptr %length, align 8
  %16 = load i64, ptr %offset, align 8
  %17 = load i64, ptr %length, align 8
  %cmp = icmp ult i64 %16, %17
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %18 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %19 = load i64, ptr %index, align 8
  %arrayidx10 = getelementptr inbounds %struct.tab, ptr %18, i64 %19
  %vec = getelementptr inbounds %struct.tab, ptr %arrayidx10, i32 0, i32 1
  %20 = load ptr, ptr %vec, align 8
  %21 = load i64, ptr %offset, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %20, i64 %21
  %22 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %22 to i32
  %23 = load i32, ptr %bit, align 4
  %and13 = and i32 %conv12, %23
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %24 = load i64, ptr %length, align 8
  %25 = load i64, ptr %offset, align 8
  %cmp16 = icmp ule i64 %24, %25
  br i1 %cmp16, label %if.then18, label %if.end59

if.then18:                                        ; preds = %if.end
  %26 = load i64, ptr %length, align 8
  %tobool = icmp ne i64 %26, 0
  br i1 %tobool, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then18
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then19
  %27 = load i64, ptr %length, align 8
  %shl20 = shl i64 %27, 1
  store i64 %shl20, ptr %length, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i64, ptr %length, align 8
  %29 = load i64, ptr %offset, align 8
  %cmp21 = icmp ule i64 %28, %29
  br i1 %cmp21, label %do.body, label %do.end, !llvm.loop !20

do.end:                                           ; preds = %do.cond
  %30 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %31 = load i64, ptr %index, align 8
  %arrayidx23 = getelementptr inbounds %struct.tab, ptr %30, i64 %31
  %vec24 = getelementptr inbounds %struct.tab, ptr %arrayidx23, i32 0, i32 1
  %32 = load ptr, ptr %vec24, align 8
  %33 = load i64, ptr %length, align 8
  %call25 = call ptr @realloc(ptr noundef %32, i64 noundef %33) #12
  store ptr %call25, ptr %vector, align 8
  %34 = load ptr, ptr %vector, align 8
  %cmp26 = icmp ne ptr %34, null
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %35 = phi i1 [ false, %do.end ], [ true, %land.rhs ]
  %lnot = xor i1 %35, true
  %lnot.ext = zext i1 %lnot to i32
  %conv28 = sext i32 %lnot.ext to i64
  %tobool29 = icmp ne i64 %conv28, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.been_here, ptr noundef @.str.4, i32 noundef 334, ptr noundef @.str.26) #10
  unreachable

36:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %36
  %37 = load ptr, ptr %vector, align 8
  %38 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %39 = load i64, ptr %index, align 8
  %arrayidx30 = getelementptr inbounds %struct.tab, ptr %38, i64 %39
  %len31 = getelementptr inbounds %struct.tab, ptr %arrayidx30, i32 0, i32 0
  %40 = load i64, ptr %len31, align 8
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %40
  %41 = load i64, ptr %length, align 8
  %42 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %43 = load i64, ptr %index, align 8
  %arrayidx32 = getelementptr inbounds %struct.tab, ptr %42, i64 %43
  %len33 = getelementptr inbounds %struct.tab, ptr %arrayidx32, i32 0, i32 0
  %44 = load i64, ptr %len33, align 8
  %sub34 = sub i64 %41, %44
  %45 = load ptr, ptr %vector, align 8
  %46 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %47 = load i64, ptr %index, align 8
  %arrayidx35 = getelementptr inbounds %struct.tab, ptr %46, i64 %47
  %len36 = getelementptr inbounds %struct.tab, ptr %arrayidx35, i32 0, i32 0
  %48 = load i64, ptr %len36, align 8
  %add.ptr37 = getelementptr inbounds i8, ptr %45, i64 %48
  %49 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr37, i1 false, i1 true, i1 false)
  %call38 = call ptr @__memset_chk(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %sub34, i64 noundef %49) #13
  br label %if.end54

if.else:                                          ; preds = %if.then18
  store i64 16, ptr %length, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %50 = load i64, ptr %length, align 8
  %51 = load i64, ptr %offset, align 8
  %cmp39 = icmp ule i64 %50, %51
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i64, ptr %length, align 8
  %shl41 = shl i64 %52, 1
  store i64 %shl41, ptr %length, align 8
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  %53 = load i64, ptr %length, align 8
  %call42 = call ptr @calloc(i64 noundef %53, i64 noundef 1) #9
  store ptr %call42, ptr %vector, align 8
  %54 = load ptr, ptr %vector, align 8
  %cmp43 = icmp ne ptr %54, null
  br i1 %cmp43, label %land.rhs45, label %land.end46

land.rhs45:                                       ; preds = %while.end
  br label %land.end46

land.end46:                                       ; preds = %land.rhs45, %while.end
  %55 = phi i1 [ false, %while.end ], [ true, %land.rhs45 ]
  %lnot47 = xor i1 %55, true
  %lnot.ext48 = zext i1 %lnot47 to i32
  %conv49 = sext i32 %lnot.ext48 to i64
  %tobool50 = icmp ne i64 %conv49, 0
  br i1 %tobool50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %land.end46
  call void @__assert_rtn(ptr noundef @__func__.been_here, ptr noundef @.str.4, i32 noundef 344, ptr noundef @.str.26) #10
  unreachable

56:                                               ; No predecessors!
  br label %cond.end53

cond.false52:                                     ; preds = %land.end46
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %56
  br label %if.end54

if.end54:                                         ; preds = %cond.end53, %cond.end
  %57 = load i64, ptr %length, align 8
  %58 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %59 = load i64, ptr %index, align 8
  %arrayidx55 = getelementptr inbounds %struct.tab, ptr %58, i64 %59
  %len56 = getelementptr inbounds %struct.tab, ptr %arrayidx55, i32 0, i32 0
  store i64 %57, ptr %len56, align 8
  %60 = load ptr, ptr %vector, align 8
  %61 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %62 = load i64, ptr %index, align 8
  %arrayidx57 = getelementptr inbounds %struct.tab, ptr %61, i64 %62
  %vec58 = getelementptr inbounds %struct.tab, ptr %arrayidx57, i32 0, i32 1
  store ptr %60, ptr %vec58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %if.end
  %63 = load i32, ptr %bit, align 4
  %64 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @g, i32 0, i32 8), align 8
  %65 = load i64, ptr %index, align 8
  %arrayidx60 = getelementptr inbounds %struct.tab, ptr %64, i64 %65
  %vec61 = getelementptr inbounds %struct.tab, ptr %arrayidx60, i32 0, i32 1
  %66 = load ptr, ptr %vec61, align 8
  %67 = load i64, ptr %offset, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %66, i64 %67
  %68 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %68 to i32
  %or = or i32 %conv63, %63
  %conv64 = trunc i32 %or to i8
  store i8 %conv64, ptr %arrayidx62, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

declare i32 @__vsnprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #8

declare void @free(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @string_free(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %str = getelementptr inbounds %struct.string_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %str, align 8
  call void @free(ptr noundef %1)
  %2 = load ptr, ptr %s.addr, align 8
  %str1 = getelementptr inbounds %struct.string_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %str1, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %3, i32 0, i32 1
  store i64 0, ptr %size, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %len = getelementptr inbounds %struct.string_t, ptr %4, i32 0, i32 2
  store i64 0, ptr %len, align 8
  ret void
}

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { allocsize(0,1) }
attributes #10 = { cold noreturn }
attributes #11 = { allocsize(0) }
attributes #12 = { allocsize(1) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_enough_0(ptr noundef %s)  alwaysinline#0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %str = getelementptr inbounds %struct.string_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %str, align 8
  call void @free(ptr noundef %1)
  %2 = load ptr, ptr %s.addr, align 8
  %str1 = getelementptr inbounds %struct.string_t, ptr %2, i32 0, i32 0
  store ptr null, ptr %str1, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %3, i32 0, i32 1
  store i64 0, ptr %size, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %len = getelementptr inbounds %struct.string_t, ptr %4, i32 0, i32 2
  store i64 0, ptr %len, align 8
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_zlib_examples_enough_1(ptr noundef %s)  alwaysinline#0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %size = getelementptr inbounds %struct.string_t, ptr %0, i32 0, i32 1
  store i64 16, ptr %size, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %size1 = getelementptr inbounds %struct.string_t, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %size1, align 8
  %call = call ptr @malloc(i64 noundef %2) #11
  %3 = load ptr, ptr %s.addr, align 8
  %str = getelementptr inbounds %struct.string_t, ptr %3, i32 0, i32 0
  store ptr %call, ptr %str, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %str2 = getelementptr inbounds %struct.string_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %str2, align 8
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ true, %land.rhs ]
  %lnot = xor i1 %6, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  call void @__assert_rtn(ptr noundef @__func__.string_init, ptr noundef @.str.4, i32 noundef 190, ptr noundef @.str.15) #10
  unreachable

7:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %7
  %8 = load ptr, ptr %s.addr, align 8
  call void @string_clear(ptr noundef %8)
  ret void
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
