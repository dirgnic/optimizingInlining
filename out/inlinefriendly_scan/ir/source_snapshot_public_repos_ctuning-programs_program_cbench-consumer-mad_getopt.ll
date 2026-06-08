; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/getopt.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/getopt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.option = type { ptr, i32, ptr, i32 }

@optind = global i32 1, align 4
@opterr = global i32 1, align 4
@optopt = global i32 63, align 4
@optarg = global ptr null, align 8
@__getopt_initialized = global i32 0, align 4
@nextchar = internal global ptr null, align 8
@last_nonopt = internal global i32 0, align 4
@first_nonopt = internal global i32 0, align 4
@ordering = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@posixly_correct = internal global ptr null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_getopt_internal(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring, ptr noundef %longopts, ptr noundef %longind, i32 noundef %long_only) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optstring.addr = alloca ptr, align 8
  %longopts.addr = alloca ptr, align 8
  %longind.addr = alloca ptr, align 8
  %long_only.addr = alloca i32, align 4
  %print_errors = alloca i32, align 4
  %nameend = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pfound = alloca ptr, align 8
  %exact = alloca i32, align 4
  %ambig = alloca i32, align 4
  %indfound = alloca i32, align 4
  %option_index = alloca i32, align 4
  %c = alloca i8, align 1
  %temp = alloca ptr, align 8
  %nameend352 = alloca ptr, align 8
  %p353 = alloca ptr, align 8
  %pfound354 = alloca ptr, align 8
  %exact355 = alloca i32, align 4
  %ambig356 = alloca i32, align 4
  %indfound357 = alloca i32, align 4
  %option_index358 = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %optstring, ptr %optstring.addr, align 8
  store ptr %longopts, ptr %longopts.addr, align 8
  store ptr %longind, ptr %longind.addr, align 8
  store i32 %long_only, ptr %long_only.addr, align 4
  %0 = load i32, ptr @opterr, align 4
  store i32 %0, ptr %print_errors, align 4
  %1 = load ptr, ptr %optstring.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %print_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store ptr null, ptr @optarg, align 8
  %3 = load i32, ptr @optind, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr @__getopt_initialized, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end9, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load i32, ptr @optind, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  store i32 1, ptr @optind, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then4
  %6 = load i32, ptr %argc.addr, align 4
  %7 = load ptr, ptr %argv.addr, align 8
  %8 = load ptr, ptr %optstring.addr, align 8
  %call = call ptr @_getopt_initialize(i32 noundef %6, ptr noundef %7, ptr noundef %8)
  store ptr %call, ptr %optstring.addr, align 8
  store i32 1, ptr @__getopt_initialized, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %lor.lhs.false
  %9 = load ptr, ptr @nextchar, align 8
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %10 = load ptr, ptr @nextchar, align 8
  %11 = load i8, ptr %10, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end117

if.then16:                                        ; preds = %lor.lhs.false12, %if.end9
  %12 = load i32, ptr @last_nonopt, align 4
  %13 = load i32, ptr @optind, align 4
  %cmp17 = icmp sgt i32 %12, %13
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  %14 = load i32, ptr @optind, align 4
  store i32 %14, ptr @last_nonopt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16
  %15 = load i32, ptr @first_nonopt, align 4
  %16 = load i32, ptr @optind, align 4
  %cmp21 = icmp sgt i32 %15, %16
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %17 = load i32, ptr @optind, align 4
  store i32 %17, ptr @first_nonopt, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %18 = load i32, ptr @ordering, align 4
  %cmp25 = icmp eq i32 %18, 1
  br i1 %cmp25, label %if.then27, label %if.end51

if.then27:                                        ; preds = %if.end24
  %19 = load i32, ptr @first_nonopt, align 4
  %20 = load i32, ptr @last_nonopt, align 4
  %cmp28 = icmp ne i32 %19, %20
  br i1 %cmp28, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then27
  %21 = load i32, ptr @last_nonopt, align 4
  %22 = load i32, ptr @optind, align 4
  %cmp30 = icmp ne i32 %21, %22
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %argv.addr, align 8
  call void @exchange(ptr noundef %23)
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true, %if.then27
  %24 = load i32, ptr @last_nonopt, align 4
  %25 = load i32, ptr @optind, align 4
  %cmp33 = icmp ne i32 %24, %25
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else
  %26 = load i32, ptr @optind, align 4
  store i32 %26, ptr @first_nonopt, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end37
  %27 = load i32, ptr @optind, align 4
  %28 = load i32, ptr %argc.addr, align 4
  %cmp38 = icmp slt i32 %27, %28
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load ptr, ptr %argv.addr, align 8
  %30 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %29, i64 %idxprom
  %31 = load ptr, ptr %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx41, align 1
  %conv42 = sext i8 %32 to i32
  %cmp43 = icmp ne i32 %conv42, 45
  br i1 %cmp43, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %33 = load ptr, ptr %argv.addr, align 8
  %34 = load i32, ptr @optind, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %33, i64 %idxprom45
  %35 = load ptr, ptr %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %35, i64 1
  %36 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %36 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %37 = phi i1 [ true, %land.rhs ], [ %cmp49, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %37, %lor.end ]
  br i1 %38, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %39 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr @optind, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %40 = load i32, ptr @optind, align 4
  store i32 %40, ptr @last_nonopt, align 4
  br label %if.end51

if.end51:                                         ; preds = %while.end, %if.end24
  %41 = load i32, ptr @optind, align 4
  %42 = load i32, ptr %argc.addr, align 4
  %cmp52 = icmp ne i32 %41, %42
  br i1 %cmp52, label %land.lhs.true54, label %if.end73

land.lhs.true54:                                  ; preds = %if.end51
  %43 = load ptr, ptr %argv.addr, align 8
  %44 = load i32, ptr @optind, align 4
  %idxprom55 = sext i32 %44 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %43, i64 %idxprom55
  %45 = load ptr, ptr %arrayidx56, align 8
  %call57 = call i32 @strcmp(ptr noundef %45, ptr noundef @.str)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end73, label %if.then59

if.then59:                                        ; preds = %land.lhs.true54
  %46 = load i32, ptr @optind, align 4
  %inc60 = add nsw i32 %46, 1
  store i32 %inc60, ptr @optind, align 4
  %47 = load i32, ptr @first_nonopt, align 4
  %48 = load i32, ptr @last_nonopt, align 4
  %cmp61 = icmp ne i32 %47, %48
  br i1 %cmp61, label %land.lhs.true63, label %if.else67

land.lhs.true63:                                  ; preds = %if.then59
  %49 = load i32, ptr @last_nonopt, align 4
  %50 = load i32, ptr @optind, align 4
  %cmp64 = icmp ne i32 %49, %50
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %land.lhs.true63
  %51 = load ptr, ptr %argv.addr, align 8
  call void @exchange(ptr noundef %51)
  br label %if.end72

if.else67:                                        ; preds = %land.lhs.true63, %if.then59
  %52 = load i32, ptr @first_nonopt, align 4
  %53 = load i32, ptr @last_nonopt, align 4
  %cmp68 = icmp eq i32 %52, %53
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.else67
  %54 = load i32, ptr @optind, align 4
  store i32 %54, ptr @first_nonopt, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.else67
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then66
  %55 = load i32, ptr %argc.addr, align 4
  store i32 %55, ptr @last_nonopt, align 4
  %56 = load i32, ptr %argc.addr, align 4
  store i32 %56, ptr @optind, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %land.lhs.true54, %if.end51
  %57 = load i32, ptr @optind, align 4
  %58 = load i32, ptr %argc.addr, align 4
  %cmp74 = icmp eq i32 %57, %58
  br i1 %cmp74, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end73
  %59 = load i32, ptr @first_nonopt, align 4
  %60 = load i32, ptr @last_nonopt, align 4
  %cmp77 = icmp ne i32 %59, %60
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.then76
  %61 = load i32, ptr @first_nonopt, align 4
  store i32 %61, ptr @optind, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.then76
  store i32 -1, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end73
  %62 = load ptr, ptr %argv.addr, align 8
  %63 = load i32, ptr @optind, align 4
  %idxprom82 = sext i32 %63 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %62, i64 %idxprom82
  %64 = load ptr, ptr %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx84, align 1
  %conv85 = sext i8 %65 to i32
  %cmp86 = icmp ne i32 %conv85, 45
  br i1 %cmp86, label %if.then95, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.end81
  %66 = load ptr, ptr %argv.addr, align 8
  %67 = load i32, ptr @optind, align 4
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds ptr, ptr %66, i64 %idxprom89
  %68 = load ptr, ptr %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %68, i64 1
  %69 = load i8, ptr %arrayidx91, align 1
  %conv92 = sext i8 %69 to i32
  %cmp93 = icmp eq i32 %conv92, 0
  br i1 %cmp93, label %if.then95, label %if.end103

if.then95:                                        ; preds = %lor.lhs.false88, %if.end81
  %70 = load i32, ptr @ordering, align 4
  %cmp96 = icmp eq i32 %70, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then95
  store i32 -1, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %if.then95
  %71 = load ptr, ptr %argv.addr, align 8
  %72 = load i32, ptr @optind, align 4
  %inc100 = add nsw i32 %72, 1
  store i32 %inc100, ptr @optind, align 4
  %idxprom101 = sext i32 %72 to i64
  %arrayidx102 = getelementptr inbounds ptr, ptr %71, i64 %idxprom101
  %73 = load ptr, ptr %arrayidx102, align 8
  store ptr %73, ptr @optarg, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %lor.lhs.false88
  %74 = load ptr, ptr %argv.addr, align 8
  %75 = load i32, ptr @optind, align 4
  %idxprom104 = sext i32 %75 to i64
  %arrayidx105 = getelementptr inbounds ptr, ptr %74, i64 %idxprom104
  %76 = load ptr, ptr %arrayidx105, align 8
  %add.ptr = getelementptr inbounds i8, ptr %76, i64 1
  %77 = load ptr, ptr %longopts.addr, align 8
  %cmp106 = icmp ne ptr %77, null
  br i1 %cmp106, label %land.rhs108, label %land.end115

land.rhs108:                                      ; preds = %if.end103
  %78 = load ptr, ptr %argv.addr, align 8
  %79 = load i32, ptr @optind, align 4
  %idxprom109 = sext i32 %79 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %78, i64 %idxprom109
  %80 = load ptr, ptr %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %80, i64 1
  %81 = load i8, ptr %arrayidx111, align 1
  %conv112 = sext i8 %81 to i32
  %cmp113 = icmp eq i32 %conv112, 45
  br label %land.end115

land.end115:                                      ; preds = %land.rhs108, %if.end103
  %82 = phi i1 [ false, %if.end103 ], [ %cmp113, %land.rhs108 ]
  %land.ext = zext i1 %82 to i32
  %idx.ext = sext i32 %land.ext to i64
  %add.ptr116 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr116, ptr @nextchar, align 8
  br label %if.end117

if.end117:                                        ; preds = %land.end115, %lor.lhs.false12
  %83 = load ptr, ptr %longopts.addr, align 8
  %cmp118 = icmp ne ptr %83, null
  br i1 %cmp118, label %land.lhs.true120, label %if.end310

land.lhs.true120:                                 ; preds = %if.end117
  %84 = load ptr, ptr %argv.addr, align 8
  %85 = load i32, ptr @optind, align 4
  %idxprom121 = sext i32 %85 to i64
  %arrayidx122 = getelementptr inbounds ptr, ptr %84, i64 %idxprom121
  %86 = load ptr, ptr %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %86, i64 1
  %87 = load i8, ptr %arrayidx123, align 1
  %conv124 = sext i8 %87 to i32
  %cmp125 = icmp eq i32 %conv124, 45
  br i1 %cmp125, label %if.then142, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %land.lhs.true120
  %88 = load i32, ptr %long_only.addr, align 4
  %tobool128 = icmp ne i32 %88, 0
  br i1 %tobool128, label %land.lhs.true129, label %if.end310

land.lhs.true129:                                 ; preds = %lor.lhs.false127
  %89 = load ptr, ptr %argv.addr, align 8
  %90 = load i32, ptr @optind, align 4
  %idxprom130 = sext i32 %90 to i64
  %arrayidx131 = getelementptr inbounds ptr, ptr %89, i64 %idxprom130
  %91 = load ptr, ptr %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %91, i64 2
  %92 = load i8, ptr %arrayidx132, align 1
  %conv133 = sext i8 %92 to i32
  %tobool134 = icmp ne i32 %conv133, 0
  br i1 %tobool134, label %if.then142, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %land.lhs.true129
  %93 = load ptr, ptr %optstring.addr, align 8
  %94 = load ptr, ptr %argv.addr, align 8
  %95 = load i32, ptr @optind, align 4
  %idxprom136 = sext i32 %95 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %94, i64 %idxprom136
  %96 = load ptr, ptr %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %96, i64 1
  %97 = load i8, ptr %arrayidx138, align 1
  %conv139 = sext i8 %97 to i32
  %call140 = call ptr @my_index(ptr noundef %93, i32 noundef %conv139)
  %tobool141 = icmp ne ptr %call140, null
  br i1 %tobool141, label %if.end310, label %if.then142

if.then142:                                       ; preds = %lor.lhs.false135, %land.lhs.true129, %land.lhs.true120
  store ptr null, ptr %pfound, align 8
  store i32 0, ptr %exact, align 4
  store i32 0, ptr %ambig, align 4
  store i32 -1, ptr %indfound, align 4
  %98 = load ptr, ptr @nextchar, align 8
  store ptr %98, ptr %nameend, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then142
  %99 = load ptr, ptr %nameend, align 8
  %100 = load i8, ptr %99, align 1
  %conv143 = sext i8 %100 to i32
  %tobool144 = icmp ne i32 %conv143, 0
  br i1 %tobool144, label %land.rhs145, label %land.end149

land.rhs145:                                      ; preds = %for.cond
  %101 = load ptr, ptr %nameend, align 8
  %102 = load i8, ptr %101, align 1
  %conv146 = sext i8 %102 to i32
  %cmp147 = icmp ne i32 %conv146, 61
  br label %land.end149

land.end149:                                      ; preds = %land.rhs145, %for.cond
  %103 = phi i1 [ false, %for.cond ], [ %cmp147, %land.rhs145 ]
  br i1 %103, label %for.body, label %for.end

for.body:                                         ; preds = %land.end149
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load ptr, ptr %nameend, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %104, i32 1
  store ptr %incdec.ptr, ptr %nameend, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end149
  %105 = load ptr, ptr %longopts.addr, align 8
  store ptr %105, ptr %p, align 8
  store i32 0, ptr %option_index, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc176, %for.end
  %106 = load ptr, ptr %p, align 8
  %name = getelementptr inbounds %struct.option, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %name, align 8
  %tobool152 = icmp ne ptr %107, null
  br i1 %tobool152, label %for.body153, label %for.end179

for.body153:                                      ; preds = %for.cond151
  %108 = load ptr, ptr %p, align 8
  %name154 = getelementptr inbounds %struct.option, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %name154, align 8
  %110 = load ptr, ptr @nextchar, align 8
  %111 = load ptr, ptr %nameend, align 8
  %112 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %111 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %112 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call155 = call i32 @strncmp(ptr noundef %109, ptr noundef %110, i64 noundef %sub.ptr.sub)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.end175, label %if.then157

if.then157:                                       ; preds = %for.body153
  %113 = load ptr, ptr %nameend, align 8
  %114 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast158 = ptrtoint ptr %113 to i64
  %sub.ptr.rhs.cast159 = ptrtoint ptr %114 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %conv161 = trunc i64 %sub.ptr.sub160 to i32
  %115 = load ptr, ptr %p, align 8
  %name162 = getelementptr inbounds %struct.option, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %name162, align 8
  %call163 = call i64 @strlen(ptr noundef %116)
  %conv164 = trunc i64 %call163 to i32
  %cmp165 = icmp eq i32 %conv161, %conv164
  br i1 %cmp165, label %if.then167, label %if.else168

if.then167:                                       ; preds = %if.then157
  %117 = load ptr, ptr %p, align 8
  store ptr %117, ptr %pfound, align 8
  %118 = load i32, ptr %option_index, align 4
  store i32 %118, ptr %indfound, align 4
  store i32 1, ptr %exact, align 4
  br label %for.end179

if.else168:                                       ; preds = %if.then157
  %119 = load ptr, ptr %pfound, align 8
  %cmp169 = icmp eq ptr %119, null
  br i1 %cmp169, label %if.then171, label %if.else172

if.then171:                                       ; preds = %if.else168
  %120 = load ptr, ptr %p, align 8
  store ptr %120, ptr %pfound, align 8
  %121 = load i32, ptr %option_index, align 4
  store i32 %121, ptr %indfound, align 4
  br label %if.end173

if.else172:                                       ; preds = %if.else168
  store i32 1, ptr %ambig, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.else172, %if.then171
  br label %if.end174

if.end174:                                        ; preds = %if.end173
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %for.body153
  br label %for.inc176

for.inc176:                                       ; preds = %if.end175
  %122 = load ptr, ptr %p, align 8
  %incdec.ptr177 = getelementptr inbounds %struct.option, ptr %122, i32 1
  store ptr %incdec.ptr177, ptr %p, align 8
  %123 = load i32, ptr %option_index, align 4
  %inc178 = add nsw i32 %123, 1
  store i32 %inc178, ptr %option_index, align 4
  br label %for.cond151, !llvm.loop !9

for.end179:                                       ; preds = %if.then167, %for.cond151
  %124 = load i32, ptr %ambig, align 4
  %tobool180 = icmp ne i32 %124, 0
  br i1 %tobool180, label %land.lhs.true181, label %if.end194

land.lhs.true181:                                 ; preds = %for.end179
  %125 = load i32, ptr %exact, align 4
  %tobool182 = icmp ne i32 %125, 0
  br i1 %tobool182, label %if.end194, label %if.then183

if.then183:                                       ; preds = %land.lhs.true181
  %126 = load i32, ptr %print_errors, align 4
  %tobool184 = icmp ne i32 %126, 0
  br i1 %tobool184, label %if.then185, label %if.end190

if.then185:                                       ; preds = %if.then183
  %127 = load ptr, ptr @__stderrp, align 8
  %128 = load ptr, ptr %argv.addr, align 8
  %arrayidx186 = getelementptr inbounds ptr, ptr %128, i64 0
  %129 = load ptr, ptr %arrayidx186, align 8
  %130 = load ptr, ptr %argv.addr, align 8
  %131 = load i32, ptr @optind, align 4
  %idxprom187 = sext i32 %131 to i64
  %arrayidx188 = getelementptr inbounds ptr, ptr %130, i64 %idxprom187
  %132 = load ptr, ptr %arrayidx188, align 8
  %call189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.1, ptr noundef %129, ptr noundef %132)
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %if.then183
  %133 = load ptr, ptr @nextchar, align 8
  %call191 = call i64 @strlen(ptr noundef %133)
  %134 = load ptr, ptr @nextchar, align 8
  %add.ptr192 = getelementptr inbounds i8, ptr %134, i64 %call191
  store ptr %add.ptr192, ptr @nextchar, align 8
  %135 = load i32, ptr @optind, align 4
  %inc193 = add nsw i32 %135, 1
  store i32 %inc193, ptr @optind, align 4
  store i32 0, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end194:                                        ; preds = %land.lhs.true181, %for.end179
  %136 = load ptr, ptr %pfound, align 8
  %cmp195 = icmp ne ptr %136, null
  br i1 %cmp195, label %if.then197, label %if.end273

if.then197:                                       ; preds = %if.end194
  %137 = load i32, ptr %indfound, align 4
  store i32 %137, ptr %option_index, align 4
  %138 = load i32, ptr @optind, align 4
  %inc198 = add nsw i32 %138, 1
  store i32 %inc198, ptr @optind, align 4
  %139 = load ptr, ptr %nameend, align 8
  %140 = load i8, ptr %139, align 1
  %tobool199 = icmp ne i8 %140, 0
  br i1 %tobool199, label %if.then200, label %if.else231

if.then200:                                       ; preds = %if.then197
  %141 = load ptr, ptr %pfound, align 8
  %has_arg = getelementptr inbounds %struct.option, ptr %141, i32 0, i32 1
  %142 = load i32, ptr %has_arg, align 8
  %tobool201 = icmp ne i32 %142, 0
  br i1 %tobool201, label %if.then202, label %if.else204

if.then202:                                       ; preds = %if.then200
  %143 = load ptr, ptr %nameend, align 8
  %add.ptr203 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %add.ptr203, ptr @optarg, align 8
  br label %if.end230

if.else204:                                       ; preds = %if.then200
  %144 = load i32, ptr %print_errors, align 4
  %tobool205 = icmp ne i32 %144, 0
  br i1 %tobool205, label %if.then206, label %if.end227

if.then206:                                       ; preds = %if.else204
  %145 = load ptr, ptr %argv.addr, align 8
  %146 = load i32, ptr @optind, align 4
  %sub = sub nsw i32 %146, 1
  %idxprom207 = sext i32 %sub to i64
  %arrayidx208 = getelementptr inbounds ptr, ptr %145, i64 %idxprom207
  %147 = load ptr, ptr %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i8, ptr %147, i64 1
  %148 = load i8, ptr %arrayidx209, align 1
  %conv210 = sext i8 %148 to i32
  %cmp211 = icmp eq i32 %conv210, 45
  br i1 %cmp211, label %if.then213, label %if.else217

if.then213:                                       ; preds = %if.then206
  %149 = load ptr, ptr @__stderrp, align 8
  %150 = load ptr, ptr %argv.addr, align 8
  %arrayidx214 = getelementptr inbounds ptr, ptr %150, i64 0
  %151 = load ptr, ptr %arrayidx214, align 8
  %152 = load ptr, ptr %pfound, align 8
  %name215 = getelementptr inbounds %struct.option, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %name215, align 8
  %call216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.2, ptr noundef %151, ptr noundef %153)
  br label %if.end226

if.else217:                                       ; preds = %if.then206
  %154 = load ptr, ptr @__stderrp, align 8
  %155 = load ptr, ptr %argv.addr, align 8
  %arrayidx218 = getelementptr inbounds ptr, ptr %155, i64 0
  %156 = load ptr, ptr %arrayidx218, align 8
  %157 = load ptr, ptr %argv.addr, align 8
  %158 = load i32, ptr @optind, align 4
  %sub219 = sub nsw i32 %158, 1
  %idxprom220 = sext i32 %sub219 to i64
  %arrayidx221 = getelementptr inbounds ptr, ptr %157, i64 %idxprom220
  %159 = load ptr, ptr %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i8, ptr %159, i64 0
  %160 = load i8, ptr %arrayidx222, align 1
  %conv223 = sext i8 %160 to i32
  %161 = load ptr, ptr %pfound, align 8
  %name224 = getelementptr inbounds %struct.option, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %name224, align 8
  %call225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.3, ptr noundef %156, i32 noundef %conv223, ptr noundef %162)
  br label %if.end226

if.end226:                                        ; preds = %if.else217, %if.then213
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %if.else204
  %163 = load ptr, ptr @nextchar, align 8
  %call228 = call i64 @strlen(ptr noundef %163)
  %164 = load ptr, ptr @nextchar, align 8
  %add.ptr229 = getelementptr inbounds i8, ptr %164, i64 %call228
  store ptr %add.ptr229, ptr @nextchar, align 8
  %165 = load ptr, ptr %pfound, align 8
  %val = getelementptr inbounds %struct.option, ptr %165, i32 0, i32 3
  %166 = load i32, ptr %val, align 8
  store i32 %166, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end230:                                        ; preds = %if.then202
  br label %if.end260

if.else231:                                       ; preds = %if.then197
  %167 = load ptr, ptr %pfound, align 8
  %has_arg232 = getelementptr inbounds %struct.option, ptr %167, i32 0, i32 1
  %168 = load i32, ptr %has_arg232, align 8
  %cmp233 = icmp eq i32 %168, 1
  br i1 %cmp233, label %if.then235, label %if.end259

if.then235:                                       ; preds = %if.else231
  %169 = load i32, ptr @optind, align 4
  %170 = load i32, ptr %argc.addr, align 4
  %cmp236 = icmp slt i32 %169, %170
  br i1 %cmp236, label %if.then238, label %if.else242

if.then238:                                       ; preds = %if.then235
  %171 = load ptr, ptr %argv.addr, align 8
  %172 = load i32, ptr @optind, align 4
  %inc239 = add nsw i32 %172, 1
  store i32 %inc239, ptr @optind, align 4
  %idxprom240 = sext i32 %172 to i64
  %arrayidx241 = getelementptr inbounds ptr, ptr %171, i64 %idxprom240
  %173 = load ptr, ptr %arrayidx241, align 8
  store ptr %173, ptr @optarg, align 8
  br label %if.end258

if.else242:                                       ; preds = %if.then235
  %174 = load i32, ptr %print_errors, align 4
  %tobool243 = icmp ne i32 %174, 0
  br i1 %tobool243, label %if.then244, label %if.end250

if.then244:                                       ; preds = %if.else242
  %175 = load ptr, ptr @__stderrp, align 8
  %176 = load ptr, ptr %argv.addr, align 8
  %arrayidx245 = getelementptr inbounds ptr, ptr %176, i64 0
  %177 = load ptr, ptr %arrayidx245, align 8
  %178 = load ptr, ptr %argv.addr, align 8
  %179 = load i32, ptr @optind, align 4
  %sub246 = sub nsw i32 %179, 1
  %idxprom247 = sext i32 %sub246 to i64
  %arrayidx248 = getelementptr inbounds ptr, ptr %178, i64 %idxprom247
  %180 = load ptr, ptr %arrayidx248, align 8
  %call249 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.4, ptr noundef %177, ptr noundef %180)
  br label %if.end250

if.end250:                                        ; preds = %if.then244, %if.else242
  %181 = load ptr, ptr @nextchar, align 8
  %call251 = call i64 @strlen(ptr noundef %181)
  %182 = load ptr, ptr @nextchar, align 8
  %add.ptr252 = getelementptr inbounds i8, ptr %182, i64 %call251
  store ptr %add.ptr252, ptr @nextchar, align 8
  %183 = load ptr, ptr %pfound, align 8
  %val253 = getelementptr inbounds %struct.option, ptr %183, i32 0, i32 3
  %184 = load i32, ptr %val253, align 8
  store i32 %184, ptr @optopt, align 4
  %185 = load ptr, ptr %optstring.addr, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %185, i64 0
  %186 = load i8, ptr %arrayidx254, align 1
  %conv255 = sext i8 %186 to i32
  %cmp256 = icmp eq i32 %conv255, 58
  %187 = zext i1 %cmp256 to i64
  %cond = select i1 %cmp256, i32 58, i32 63
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end258:                                        ; preds = %if.then238
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.else231
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %if.end230
  %188 = load ptr, ptr @nextchar, align 8
  %call261 = call i64 @strlen(ptr noundef %188)
  %189 = load ptr, ptr @nextchar, align 8
  %add.ptr262 = getelementptr inbounds i8, ptr %189, i64 %call261
  store ptr %add.ptr262, ptr @nextchar, align 8
  %190 = load ptr, ptr %longind.addr, align 8
  %cmp263 = icmp ne ptr %190, null
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %if.end260
  %191 = load i32, ptr %option_index, align 4
  %192 = load ptr, ptr %longind.addr, align 8
  store i32 %191, ptr %192, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.end260
  %193 = load ptr, ptr %pfound, align 8
  %flag = getelementptr inbounds %struct.option, ptr %193, i32 0, i32 2
  %194 = load ptr, ptr %flag, align 8
  %tobool267 = icmp ne ptr %194, null
  br i1 %tobool267, label %if.then268, label %if.end271

if.then268:                                       ; preds = %if.end266
  %195 = load ptr, ptr %pfound, align 8
  %val269 = getelementptr inbounds %struct.option, ptr %195, i32 0, i32 3
  %196 = load i32, ptr %val269, align 8
  %197 = load ptr, ptr %pfound, align 8
  %flag270 = getelementptr inbounds %struct.option, ptr %197, i32 0, i32 2
  %198 = load ptr, ptr %flag270, align 8
  store i32 %196, ptr %198, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end271:                                        ; preds = %if.end266
  %199 = load ptr, ptr %pfound, align 8
  %val272 = getelementptr inbounds %struct.option, ptr %199, i32 0, i32 3
  %200 = load i32, ptr %val272, align 8
  store i32 %200, ptr %retval, align 4
  br label %return

if.end273:                                        ; preds = %if.end194
  %201 = load i32, ptr %long_only.addr, align 4
  %tobool274 = icmp ne i32 %201, 0
  br i1 %tobool274, label %lor.lhs.false275, label %if.then287

lor.lhs.false275:                                 ; preds = %if.end273
  %202 = load ptr, ptr %argv.addr, align 8
  %203 = load i32, ptr @optind, align 4
  %idxprom276 = sext i32 %203 to i64
  %arrayidx277 = getelementptr inbounds ptr, ptr %202, i64 %idxprom276
  %204 = load ptr, ptr %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i8, ptr %204, i64 1
  %205 = load i8, ptr %arrayidx278, align 1
  %conv279 = sext i8 %205 to i32
  %cmp280 = icmp eq i32 %conv279, 45
  br i1 %cmp280, label %if.then287, label %lor.lhs.false282

lor.lhs.false282:                                 ; preds = %lor.lhs.false275
  %206 = load ptr, ptr %optstring.addr, align 8
  %207 = load ptr, ptr @nextchar, align 8
  %208 = load i8, ptr %207, align 1
  %conv283 = sext i8 %208 to i32
  %call284 = call ptr @my_index(ptr noundef %206, i32 noundef %conv283)
  %cmp285 = icmp eq ptr %call284, null
  br i1 %cmp285, label %if.then287, label %if.end309

if.then287:                                       ; preds = %lor.lhs.false282, %lor.lhs.false275, %if.end273
  %209 = load i32, ptr %print_errors, align 4
  %tobool288 = icmp ne i32 %209, 0
  br i1 %tobool288, label %if.then289, label %if.end307

if.then289:                                       ; preds = %if.then287
  %210 = load ptr, ptr %argv.addr, align 8
  %211 = load i32, ptr @optind, align 4
  %idxprom290 = sext i32 %211 to i64
  %arrayidx291 = getelementptr inbounds ptr, ptr %210, i64 %idxprom290
  %212 = load ptr, ptr %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i8, ptr %212, i64 1
  %213 = load i8, ptr %arrayidx292, align 1
  %conv293 = sext i8 %213 to i32
  %cmp294 = icmp eq i32 %conv293, 45
  br i1 %cmp294, label %if.then296, label %if.else299

if.then296:                                       ; preds = %if.then289
  %214 = load ptr, ptr @__stderrp, align 8
  %215 = load ptr, ptr %argv.addr, align 8
  %arrayidx297 = getelementptr inbounds ptr, ptr %215, i64 0
  %216 = load ptr, ptr %arrayidx297, align 8
  %217 = load ptr, ptr @nextchar, align 8
  %call298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef @.str.5, ptr noundef %216, ptr noundef %217)
  br label %if.end306

if.else299:                                       ; preds = %if.then289
  %218 = load ptr, ptr @__stderrp, align 8
  %219 = load ptr, ptr %argv.addr, align 8
  %arrayidx300 = getelementptr inbounds ptr, ptr %219, i64 0
  %220 = load ptr, ptr %arrayidx300, align 8
  %221 = load ptr, ptr %argv.addr, align 8
  %222 = load i32, ptr @optind, align 4
  %idxprom301 = sext i32 %222 to i64
  %arrayidx302 = getelementptr inbounds ptr, ptr %221, i64 %idxprom301
  %223 = load ptr, ptr %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i8, ptr %223, i64 0
  %224 = load i8, ptr %arrayidx303, align 1
  %conv304 = sext i8 %224 to i32
  %225 = load ptr, ptr @nextchar, align 8
  %call305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str.6, ptr noundef %220, i32 noundef %conv304, ptr noundef %225)
  br label %if.end306

if.end306:                                        ; preds = %if.else299, %if.then296
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %if.then287
  store ptr @.str.7, ptr @nextchar, align 8
  %226 = load i32, ptr @optind, align 4
  %inc308 = add nsw i32 %226, 1
  store i32 %inc308, ptr @optind, align 4
  store i32 0, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end309:                                        ; preds = %lor.lhs.false282
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %lor.lhs.false135, %lor.lhs.false127, %if.end117
  %227 = load ptr, ptr @nextchar, align 8
  %incdec.ptr311 = getelementptr inbounds i8, ptr %227, i32 1
  store ptr %incdec.ptr311, ptr @nextchar, align 8
  %228 = load i8, ptr %227, align 1
  store i8 %228, ptr %c, align 1
  %229 = load ptr, ptr %optstring.addr, align 8
  %230 = load i8, ptr %c, align 1
  %conv312 = sext i8 %230 to i32
  %call313 = call ptr @my_index(ptr noundef %229, i32 noundef %conv312)
  store ptr %call313, ptr %temp, align 8
  %231 = load ptr, ptr @nextchar, align 8
  %232 = load i8, ptr %231, align 1
  %conv314 = sext i8 %232 to i32
  %cmp315 = icmp eq i32 %conv314, 0
  br i1 %cmp315, label %if.then317, label %if.end319

if.then317:                                       ; preds = %if.end310
  %233 = load i32, ptr @optind, align 4
  %inc318 = add nsw i32 %233, 1
  store i32 %inc318, ptr @optind, align 4
  br label %if.end319

if.end319:                                        ; preds = %if.then317, %if.end310
  %234 = load ptr, ptr %temp, align 8
  %cmp320 = icmp eq ptr %234, null
  br i1 %cmp320, label %if.then326, label %lor.lhs.false322

lor.lhs.false322:                                 ; preds = %if.end319
  %235 = load i8, ptr %c, align 1
  %conv323 = sext i8 %235 to i32
  %cmp324 = icmp eq i32 %conv323, 58
  br i1 %cmp324, label %if.then326, label %if.end341

if.then326:                                       ; preds = %lor.lhs.false322, %if.end319
  %236 = load i32, ptr %print_errors, align 4
  %tobool327 = icmp ne i32 %236, 0
  br i1 %tobool327, label %if.then328, label %if.end339

if.then328:                                       ; preds = %if.then326
  %237 = load ptr, ptr @posixly_correct, align 8
  %tobool329 = icmp ne ptr %237, null
  br i1 %tobool329, label %if.then330, label %if.else334

if.then330:                                       ; preds = %if.then328
  %238 = load ptr, ptr @__stderrp, align 8
  %239 = load ptr, ptr %argv.addr, align 8
  %arrayidx331 = getelementptr inbounds ptr, ptr %239, i64 0
  %240 = load ptr, ptr %arrayidx331, align 8
  %241 = load i8, ptr %c, align 1
  %conv332 = sext i8 %241 to i32
  %call333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef @.str.8, ptr noundef %240, i32 noundef %conv332)
  br label %if.end338

if.else334:                                       ; preds = %if.then328
  %242 = load ptr, ptr @__stderrp, align 8
  %243 = load ptr, ptr %argv.addr, align 8
  %arrayidx335 = getelementptr inbounds ptr, ptr %243, i64 0
  %244 = load ptr, ptr %arrayidx335, align 8
  %245 = load i8, ptr %c, align 1
  %conv336 = sext i8 %245 to i32
  %call337 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str.9, ptr noundef %244, i32 noundef %conv336)
  br label %if.end338

if.end338:                                        ; preds = %if.else334, %if.then330
  br label %if.end339

if.end339:                                        ; preds = %if.end338, %if.then326
  %246 = load i8, ptr %c, align 1
  %conv340 = sext i8 %246 to i32
  store i32 %conv340, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end341:                                        ; preds = %lor.lhs.false322
  %247 = load ptr, ptr %temp, align 8
  %arrayidx342 = getelementptr inbounds i8, ptr %247, i64 0
  %248 = load i8, ptr %arrayidx342, align 1
  %conv343 = sext i8 %248 to i32
  %cmp344 = icmp eq i32 %conv343, 87
  br i1 %cmp344, label %land.lhs.true346, label %if.end513

land.lhs.true346:                                 ; preds = %if.end341
  %249 = load ptr, ptr %temp, align 8
  %arrayidx347 = getelementptr inbounds i8, ptr %249, i64 1
  %250 = load i8, ptr %arrayidx347, align 1
  %conv348 = sext i8 %250 to i32
  %cmp349 = icmp eq i32 %conv348, 59
  br i1 %cmp349, label %if.then351, label %if.end513

if.then351:                                       ; preds = %land.lhs.true346
  store ptr null, ptr %pfound354, align 8
  store i32 0, ptr %exact355, align 4
  store i32 0, ptr %ambig356, align 4
  store i32 0, ptr %indfound357, align 4
  %251 = load ptr, ptr @nextchar, align 8
  %252 = load i8, ptr %251, align 1
  %conv359 = sext i8 %252 to i32
  %cmp360 = icmp ne i32 %conv359, 0
  br i1 %cmp360, label %if.then362, label %if.else364

if.then362:                                       ; preds = %if.then351
  %253 = load ptr, ptr @nextchar, align 8
  store ptr %253, ptr @optarg, align 8
  %254 = load i32, ptr @optind, align 4
  %inc363 = add nsw i32 %254, 1
  store i32 %inc363, ptr @optind, align 4
  br label %if.end388

if.else364:                                       ; preds = %if.then351
  %255 = load i32, ptr @optind, align 4
  %256 = load i32, ptr %argc.addr, align 4
  %cmp365 = icmp eq i32 %255, %256
  br i1 %cmp365, label %if.then367, label %if.else383

if.then367:                                       ; preds = %if.else364
  %257 = load i32, ptr %print_errors, align 4
  %tobool368 = icmp ne i32 %257, 0
  br i1 %tobool368, label %if.then369, label %if.end373

if.then369:                                       ; preds = %if.then367
  %258 = load ptr, ptr @__stderrp, align 8
  %259 = load ptr, ptr %argv.addr, align 8
  %arrayidx370 = getelementptr inbounds ptr, ptr %259, i64 0
  %260 = load ptr, ptr %arrayidx370, align 8
  %261 = load i8, ptr %c, align 1
  %conv371 = sext i8 %261 to i32
  %call372 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef @.str.10, ptr noundef %260, i32 noundef %conv371)
  br label %if.end373

if.end373:                                        ; preds = %if.then369, %if.then367
  %262 = load i8, ptr %c, align 1
  %conv374 = sext i8 %262 to i32
  store i32 %conv374, ptr @optopt, align 4
  %263 = load ptr, ptr %optstring.addr, align 8
  %arrayidx375 = getelementptr inbounds i8, ptr %263, i64 0
  %264 = load i8, ptr %arrayidx375, align 1
  %conv376 = sext i8 %264 to i32
  %cmp377 = icmp eq i32 %conv376, 58
  br i1 %cmp377, label %if.then379, label %if.else380

if.then379:                                       ; preds = %if.end373
  store i8 58, ptr %c, align 1
  br label %if.end381

if.else380:                                       ; preds = %if.end373
  store i8 63, ptr %c, align 1
  br label %if.end381

if.end381:                                        ; preds = %if.else380, %if.then379
  %265 = load i8, ptr %c, align 1
  %conv382 = sext i8 %265 to i32
  store i32 %conv382, ptr %retval, align 4
  br label %return

if.else383:                                       ; preds = %if.else364
  %266 = load ptr, ptr %argv.addr, align 8
  %267 = load i32, ptr @optind, align 4
  %inc384 = add nsw i32 %267, 1
  store i32 %inc384, ptr @optind, align 4
  %idxprom385 = sext i32 %267 to i64
  %arrayidx386 = getelementptr inbounds ptr, ptr %266, i64 %idxprom385
  %268 = load ptr, ptr %arrayidx386, align 8
  store ptr %268, ptr @optarg, align 8
  br label %if.end387

if.end387:                                        ; preds = %if.else383
  br label %if.end388

if.end388:                                        ; preds = %if.end387, %if.then362
  %269 = load ptr, ptr @optarg, align 8
  store ptr %269, ptr %nameend352, align 8
  store ptr %269, ptr @nextchar, align 8
  br label %for.cond389

for.cond389:                                      ; preds = %for.inc399, %if.end388
  %270 = load ptr, ptr %nameend352, align 8
  %271 = load i8, ptr %270, align 1
  %conv390 = sext i8 %271 to i32
  %tobool391 = icmp ne i32 %conv390, 0
  br i1 %tobool391, label %land.rhs392, label %land.end396

land.rhs392:                                      ; preds = %for.cond389
  %272 = load ptr, ptr %nameend352, align 8
  %273 = load i8, ptr %272, align 1
  %conv393 = sext i8 %273 to i32
  %cmp394 = icmp ne i32 %conv393, 61
  br label %land.end396

land.end396:                                      ; preds = %land.rhs392, %for.cond389
  %274 = phi i1 [ false, %for.cond389 ], [ %cmp394, %land.rhs392 ]
  br i1 %274, label %for.body398, label %for.end401

for.body398:                                      ; preds = %land.end396
  br label %for.inc399

for.inc399:                                       ; preds = %for.body398
  %275 = load ptr, ptr %nameend352, align 8
  %incdec.ptr400 = getelementptr inbounds i8, ptr %275, i32 1
  store ptr %incdec.ptr400, ptr %nameend352, align 8
  br label %for.cond389, !llvm.loop !10

for.end401:                                       ; preds = %land.end396
  %276 = load ptr, ptr %longopts.addr, align 8
  store ptr %276, ptr %p353, align 8
  store i32 0, ptr %option_index358, align 4
  br label %for.cond402

for.cond402:                                      ; preds = %for.inc431, %for.end401
  %277 = load ptr, ptr %p353, align 8
  %name403 = getelementptr inbounds %struct.option, ptr %277, i32 0, i32 0
  %278 = load ptr, ptr %name403, align 8
  %tobool404 = icmp ne ptr %278, null
  br i1 %tobool404, label %for.body405, label %for.end434

for.body405:                                      ; preds = %for.cond402
  %279 = load ptr, ptr %p353, align 8
  %name406 = getelementptr inbounds %struct.option, ptr %279, i32 0, i32 0
  %280 = load ptr, ptr %name406, align 8
  %281 = load ptr, ptr @nextchar, align 8
  %282 = load ptr, ptr %nameend352, align 8
  %283 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast407 = ptrtoint ptr %282 to i64
  %sub.ptr.rhs.cast408 = ptrtoint ptr %283 to i64
  %sub.ptr.sub409 = sub i64 %sub.ptr.lhs.cast407, %sub.ptr.rhs.cast408
  %call410 = call i32 @strncmp(ptr noundef %280, ptr noundef %281, i64 noundef %sub.ptr.sub409)
  %tobool411 = icmp ne i32 %call410, 0
  br i1 %tobool411, label %if.end430, label %if.then412

if.then412:                                       ; preds = %for.body405
  %284 = load ptr, ptr %nameend352, align 8
  %285 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast413 = ptrtoint ptr %284 to i64
  %sub.ptr.rhs.cast414 = ptrtoint ptr %285 to i64
  %sub.ptr.sub415 = sub i64 %sub.ptr.lhs.cast413, %sub.ptr.rhs.cast414
  %conv416 = trunc i64 %sub.ptr.sub415 to i32
  %conv417 = zext i32 %conv416 to i64
  %286 = load ptr, ptr %p353, align 8
  %name418 = getelementptr inbounds %struct.option, ptr %286, i32 0, i32 0
  %287 = load ptr, ptr %name418, align 8
  %call419 = call i64 @strlen(ptr noundef %287)
  %cmp420 = icmp eq i64 %conv417, %call419
  br i1 %cmp420, label %if.then422, label %if.else423

if.then422:                                       ; preds = %if.then412
  %288 = load ptr, ptr %p353, align 8
  store ptr %288, ptr %pfound354, align 8
  %289 = load i32, ptr %option_index358, align 4
  store i32 %289, ptr %indfound357, align 4
  store i32 1, ptr %exact355, align 4
  br label %for.end434

if.else423:                                       ; preds = %if.then412
  %290 = load ptr, ptr %pfound354, align 8
  %cmp424 = icmp eq ptr %290, null
  br i1 %cmp424, label %if.then426, label %if.else427

if.then426:                                       ; preds = %if.else423
  %291 = load ptr, ptr %p353, align 8
  store ptr %291, ptr %pfound354, align 8
  %292 = load i32, ptr %option_index358, align 4
  store i32 %292, ptr %indfound357, align 4
  br label %if.end428

if.else427:                                       ; preds = %if.else423
  store i32 1, ptr %ambig356, align 4
  br label %if.end428

if.end428:                                        ; preds = %if.else427, %if.then426
  br label %if.end429

if.end429:                                        ; preds = %if.end428
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %for.body405
  br label %for.inc431

for.inc431:                                       ; preds = %if.end430
  %293 = load ptr, ptr %p353, align 8
  %incdec.ptr432 = getelementptr inbounds %struct.option, ptr %293, i32 1
  store ptr %incdec.ptr432, ptr %p353, align 8
  %294 = load i32, ptr %option_index358, align 4
  %inc433 = add nsw i32 %294, 1
  store i32 %inc433, ptr %option_index358, align 4
  br label %for.cond402, !llvm.loop !11

for.end434:                                       ; preds = %if.then422, %for.cond402
  %295 = load i32, ptr %ambig356, align 4
  %tobool435 = icmp ne i32 %295, 0
  br i1 %tobool435, label %land.lhs.true436, label %if.end449

land.lhs.true436:                                 ; preds = %for.end434
  %296 = load i32, ptr %exact355, align 4
  %tobool437 = icmp ne i32 %296, 0
  br i1 %tobool437, label %if.end449, label %if.then438

if.then438:                                       ; preds = %land.lhs.true436
  %297 = load i32, ptr %print_errors, align 4
  %tobool439 = icmp ne i32 %297, 0
  br i1 %tobool439, label %if.then440, label %if.end445

if.then440:                                       ; preds = %if.then438
  %298 = load ptr, ptr @__stderrp, align 8
  %299 = load ptr, ptr %argv.addr, align 8
  %arrayidx441 = getelementptr inbounds ptr, ptr %299, i64 0
  %300 = load ptr, ptr %arrayidx441, align 8
  %301 = load ptr, ptr %argv.addr, align 8
  %302 = load i32, ptr @optind, align 4
  %idxprom442 = sext i32 %302 to i64
  %arrayidx443 = getelementptr inbounds ptr, ptr %301, i64 %idxprom442
  %303 = load ptr, ptr %arrayidx443, align 8
  %call444 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %298, ptr noundef @.str.11, ptr noundef %300, ptr noundef %303)
  br label %if.end445

if.end445:                                        ; preds = %if.then440, %if.then438
  %304 = load ptr, ptr @nextchar, align 8
  %call446 = call i64 @strlen(ptr noundef %304)
  %305 = load ptr, ptr @nextchar, align 8
  %add.ptr447 = getelementptr inbounds i8, ptr %305, i64 %call446
  store ptr %add.ptr447, ptr @nextchar, align 8
  %306 = load i32, ptr @optind, align 4
  %inc448 = add nsw i32 %306, 1
  store i32 %inc448, ptr @optind, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end449:                                        ; preds = %land.lhs.true436, %for.end434
  %307 = load ptr, ptr %pfound354, align 8
  %cmp450 = icmp ne ptr %307, null
  br i1 %cmp450, label %if.then452, label %if.end512

if.then452:                                       ; preds = %if.end449
  %308 = load i32, ptr %indfound357, align 4
  store i32 %308, ptr %option_index358, align 4
  %309 = load ptr, ptr %nameend352, align 8
  %310 = load i8, ptr %309, align 1
  %tobool453 = icmp ne i8 %310, 0
  br i1 %tobool453, label %if.then454, label %if.else469

if.then454:                                       ; preds = %if.then452
  %311 = load ptr, ptr %pfound354, align 8
  %has_arg455 = getelementptr inbounds %struct.option, ptr %311, i32 0, i32 1
  %312 = load i32, ptr %has_arg455, align 8
  %tobool456 = icmp ne i32 %312, 0
  br i1 %tobool456, label %if.then457, label %if.else459

if.then457:                                       ; preds = %if.then454
  %313 = load ptr, ptr %nameend352, align 8
  %add.ptr458 = getelementptr inbounds i8, ptr %313, i64 1
  store ptr %add.ptr458, ptr @optarg, align 8
  br label %if.end468

if.else459:                                       ; preds = %if.then454
  %314 = load i32, ptr %print_errors, align 4
  %tobool460 = icmp ne i32 %314, 0
  br i1 %tobool460, label %if.then461, label %if.end465

if.then461:                                       ; preds = %if.else459
  %315 = load ptr, ptr @__stderrp, align 8
  %316 = load ptr, ptr %argv.addr, align 8
  %arrayidx462 = getelementptr inbounds ptr, ptr %316, i64 0
  %317 = load ptr, ptr %arrayidx462, align 8
  %318 = load ptr, ptr %pfound354, align 8
  %name463 = getelementptr inbounds %struct.option, ptr %318, i32 0, i32 0
  %319 = load ptr, ptr %name463, align 8
  %call464 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef @.str.12, ptr noundef %317, ptr noundef %319)
  br label %if.end465

if.end465:                                        ; preds = %if.then461, %if.else459
  %320 = load ptr, ptr @nextchar, align 8
  %call466 = call i64 @strlen(ptr noundef %320)
  %321 = load ptr, ptr @nextchar, align 8
  %add.ptr467 = getelementptr inbounds i8, ptr %321, i64 %call466
  store ptr %add.ptr467, ptr @nextchar, align 8
  store i32 63, ptr %retval, align 4
  br label %return

if.end468:                                        ; preds = %if.then457
  br label %if.end498

if.else469:                                       ; preds = %if.then452
  %322 = load ptr, ptr %pfound354, align 8
  %has_arg470 = getelementptr inbounds %struct.option, ptr %322, i32 0, i32 1
  %323 = load i32, ptr %has_arg470, align 8
  %cmp471 = icmp eq i32 %323, 1
  br i1 %cmp471, label %if.then473, label %if.end497

if.then473:                                       ; preds = %if.else469
  %324 = load i32, ptr @optind, align 4
  %325 = load i32, ptr %argc.addr, align 4
  %cmp474 = icmp slt i32 %324, %325
  br i1 %cmp474, label %if.then476, label %if.else480

if.then476:                                       ; preds = %if.then473
  %326 = load ptr, ptr %argv.addr, align 8
  %327 = load i32, ptr @optind, align 4
  %inc477 = add nsw i32 %327, 1
  store i32 %inc477, ptr @optind, align 4
  %idxprom478 = sext i32 %327 to i64
  %arrayidx479 = getelementptr inbounds ptr, ptr %326, i64 %idxprom478
  %328 = load ptr, ptr %arrayidx479, align 8
  store ptr %328, ptr @optarg, align 8
  br label %if.end496

if.else480:                                       ; preds = %if.then473
  %329 = load i32, ptr %print_errors, align 4
  %tobool481 = icmp ne i32 %329, 0
  br i1 %tobool481, label %if.then482, label %if.end488

if.then482:                                       ; preds = %if.else480
  %330 = load ptr, ptr @__stderrp, align 8
  %331 = load ptr, ptr %argv.addr, align 8
  %arrayidx483 = getelementptr inbounds ptr, ptr %331, i64 0
  %332 = load ptr, ptr %arrayidx483, align 8
  %333 = load ptr, ptr %argv.addr, align 8
  %334 = load i32, ptr @optind, align 4
  %sub484 = sub nsw i32 %334, 1
  %idxprom485 = sext i32 %sub484 to i64
  %arrayidx486 = getelementptr inbounds ptr, ptr %333, i64 %idxprom485
  %335 = load ptr, ptr %arrayidx486, align 8
  %call487 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %330, ptr noundef @.str.4, ptr noundef %332, ptr noundef %335)
  br label %if.end488

if.end488:                                        ; preds = %if.then482, %if.else480
  %336 = load ptr, ptr @nextchar, align 8
  %call489 = call i64 @strlen(ptr noundef %336)
  %337 = load ptr, ptr @nextchar, align 8
  %add.ptr490 = getelementptr inbounds i8, ptr %337, i64 %call489
  store ptr %add.ptr490, ptr @nextchar, align 8
  %338 = load ptr, ptr %optstring.addr, align 8
  %arrayidx491 = getelementptr inbounds i8, ptr %338, i64 0
  %339 = load i8, ptr %arrayidx491, align 1
  %conv492 = sext i8 %339 to i32
  %cmp493 = icmp eq i32 %conv492, 58
  %340 = zext i1 %cmp493 to i64
  %cond495 = select i1 %cmp493, i32 58, i32 63
  store i32 %cond495, ptr %retval, align 4
  br label %return

if.end496:                                        ; preds = %if.then476
  br label %if.end497

if.end497:                                        ; preds = %if.end496, %if.else469
  br label %if.end498

if.end498:                                        ; preds = %if.end497, %if.end468
  %341 = load ptr, ptr @nextchar, align 8
  %call499 = call i64 @strlen(ptr noundef %341)
  %342 = load ptr, ptr @nextchar, align 8
  %add.ptr500 = getelementptr inbounds i8, ptr %342, i64 %call499
  store ptr %add.ptr500, ptr @nextchar, align 8
  %343 = load ptr, ptr %longind.addr, align 8
  %cmp501 = icmp ne ptr %343, null
  br i1 %cmp501, label %if.then503, label %if.end504

if.then503:                                       ; preds = %if.end498
  %344 = load i32, ptr %option_index358, align 4
  %345 = load ptr, ptr %longind.addr, align 8
  store i32 %344, ptr %345, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.then503, %if.end498
  %346 = load ptr, ptr %pfound354, align 8
  %flag505 = getelementptr inbounds %struct.option, ptr %346, i32 0, i32 2
  %347 = load ptr, ptr %flag505, align 8
  %tobool506 = icmp ne ptr %347, null
  br i1 %tobool506, label %if.then507, label %if.end510

if.then507:                                       ; preds = %if.end504
  %348 = load ptr, ptr %pfound354, align 8
  %val508 = getelementptr inbounds %struct.option, ptr %348, i32 0, i32 3
  %349 = load i32, ptr %val508, align 8
  %350 = load ptr, ptr %pfound354, align 8
  %flag509 = getelementptr inbounds %struct.option, ptr %350, i32 0, i32 2
  %351 = load ptr, ptr %flag509, align 8
  store i32 %349, ptr %351, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end510:                                        ; preds = %if.end504
  %352 = load ptr, ptr %pfound354, align 8
  %val511 = getelementptr inbounds %struct.option, ptr %352, i32 0, i32 3
  %353 = load i32, ptr %val511, align 8
  store i32 %353, ptr %retval, align 4
  br label %return

if.end512:                                        ; preds = %if.end449
  store ptr null, ptr @nextchar, align 8
  store i32 87, ptr %retval, align 4
  br label %return

if.end513:                                        ; preds = %land.lhs.true346, %if.end341
  %354 = load ptr, ptr %temp, align 8
  %arrayidx514 = getelementptr inbounds i8, ptr %354, i64 1
  %355 = load i8, ptr %arrayidx514, align 1
  %conv515 = sext i8 %355 to i32
  %cmp516 = icmp eq i32 %conv515, 58
  br i1 %cmp516, label %if.then518, label %if.end562

if.then518:                                       ; preds = %if.end513
  %356 = load ptr, ptr %temp, align 8
  %arrayidx519 = getelementptr inbounds i8, ptr %356, i64 2
  %357 = load i8, ptr %arrayidx519, align 1
  %conv520 = sext i8 %357 to i32
  %cmp521 = icmp eq i32 %conv520, 58
  br i1 %cmp521, label %if.then523, label %if.else531

if.then523:                                       ; preds = %if.then518
  %358 = load ptr, ptr @nextchar, align 8
  %359 = load i8, ptr %358, align 1
  %conv524 = sext i8 %359 to i32
  %cmp525 = icmp ne i32 %conv524, 0
  br i1 %cmp525, label %if.then527, label %if.else529

if.then527:                                       ; preds = %if.then523
  %360 = load ptr, ptr @nextchar, align 8
  store ptr %360, ptr @optarg, align 8
  %361 = load i32, ptr @optind, align 4
  %inc528 = add nsw i32 %361, 1
  store i32 %inc528, ptr @optind, align 4
  br label %if.end530

if.else529:                                       ; preds = %if.then523
  store ptr null, ptr @optarg, align 8
  br label %if.end530

if.end530:                                        ; preds = %if.else529, %if.then527
  store ptr null, ptr @nextchar, align 8
  br label %if.end561

if.else531:                                       ; preds = %if.then518
  %362 = load ptr, ptr @nextchar, align 8
  %363 = load i8, ptr %362, align 1
  %conv532 = sext i8 %363 to i32
  %cmp533 = icmp ne i32 %conv532, 0
  br i1 %cmp533, label %if.then535, label %if.else537

if.then535:                                       ; preds = %if.else531
  %364 = load ptr, ptr @nextchar, align 8
  store ptr %364, ptr @optarg, align 8
  %365 = load i32, ptr @optind, align 4
  %inc536 = add nsw i32 %365, 1
  store i32 %inc536, ptr @optind, align 4
  br label %if.end560

if.else537:                                       ; preds = %if.else531
  %366 = load i32, ptr @optind, align 4
  %367 = load i32, ptr %argc.addr, align 4
  %cmp538 = icmp eq i32 %366, %367
  br i1 %cmp538, label %if.then540, label %if.else555

if.then540:                                       ; preds = %if.else537
  %368 = load i32, ptr %print_errors, align 4
  %tobool541 = icmp ne i32 %368, 0
  br i1 %tobool541, label %if.then542, label %if.end546

if.then542:                                       ; preds = %if.then540
  %369 = load ptr, ptr @__stderrp, align 8
  %370 = load ptr, ptr %argv.addr, align 8
  %arrayidx543 = getelementptr inbounds ptr, ptr %370, i64 0
  %371 = load ptr, ptr %arrayidx543, align 8
  %372 = load i8, ptr %c, align 1
  %conv544 = sext i8 %372 to i32
  %call545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef @.str.10, ptr noundef %371, i32 noundef %conv544)
  br label %if.end546

if.end546:                                        ; preds = %if.then542, %if.then540
  %373 = load i8, ptr %c, align 1
  %conv547 = sext i8 %373 to i32
  store i32 %conv547, ptr @optopt, align 4
  %374 = load ptr, ptr %optstring.addr, align 8
  %arrayidx548 = getelementptr inbounds i8, ptr %374, i64 0
  %375 = load i8, ptr %arrayidx548, align 1
  %conv549 = sext i8 %375 to i32
  %cmp550 = icmp eq i32 %conv549, 58
  br i1 %cmp550, label %if.then552, label %if.else553

if.then552:                                       ; preds = %if.end546
  store i8 58, ptr %c, align 1
  br label %if.end554

if.else553:                                       ; preds = %if.end546
  store i8 63, ptr %c, align 1
  br label %if.end554

if.end554:                                        ; preds = %if.else553, %if.then552
  br label %if.end559

if.else555:                                       ; preds = %if.else537
  %376 = load ptr, ptr %argv.addr, align 8
  %377 = load i32, ptr @optind, align 4
  %inc556 = add nsw i32 %377, 1
  store i32 %inc556, ptr @optind, align 4
  %idxprom557 = sext i32 %377 to i64
  %arrayidx558 = getelementptr inbounds ptr, ptr %376, i64 %idxprom557
  %378 = load ptr, ptr %arrayidx558, align 8
  store ptr %378, ptr @optarg, align 8
  br label %if.end559

if.end559:                                        ; preds = %if.else555, %if.end554
  br label %if.end560

if.end560:                                        ; preds = %if.end559, %if.then535
  store ptr null, ptr @nextchar, align 8
  br label %if.end561

if.end561:                                        ; preds = %if.end560, %if.end530
  br label %if.end562

if.end562:                                        ; preds = %if.end561, %if.end513
  %379 = load i8, ptr %c, align 1
  %conv563 = sext i8 %379 to i32
  store i32 %conv563, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end562, %if.end512, %if.end510, %if.then507, %if.end488, %if.end465, %if.end445, %if.end381, %if.end339, %if.end307, %if.end271, %if.then268, %if.end250, %if.end227, %if.end190, %if.end99, %if.then98, %if.end80
  %380 = load i32, ptr %retval, align 4
  ret i32 %380
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @_getopt_initialize(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optstring.addr = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %optstring, ptr %optstring.addr, align 8
  %0 = load i32, ptr @optind, align 4
  store i32 %0, ptr @last_nonopt, align 4
  store i32 %0, ptr @first_nonopt, align 4
  store ptr null, ptr @nextchar, align 8
  %call = call ptr @getenv(ptr noundef @.str.13)
  store ptr %call, ptr @posixly_correct, align 8
  %1 = load ptr, ptr %optstring.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr @ordering, align 4
  %3 = load ptr, ptr %optstring.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %optstring.addr, align 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %optstring.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  store i32 0, ptr @ordering, align 4
  %6 = load ptr, ptr %optstring.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr7, ptr %optstring.addr, align 8
  br label %if.end13

if.else8:                                         ; preds = %if.else
  %7 = load ptr, ptr @posixly_correct, align 8
  %cmp9 = icmp ne ptr %7, null
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  store i32 0, ptr @ordering, align 4
  br label %if.end

if.else12:                                        ; preds = %if.else8
  store i32 1, ptr @ordering, align 4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %8 = load ptr, ptr %optstring.addr, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal void @exchange(ptr noundef %argv) #0 {
entry:
  %argv.addr = alloca ptr, align 8
  %bottom = alloca i32, align 4
  %middle = alloca i32, align 4
  %top = alloca i32, align 4
  %tem = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %len20 = alloca i32, align 4
  %i22 = alloca i32, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr @first_nonopt, align 4
  store i32 %0, ptr %bottom, align 4
  %1 = load i32, ptr @last_nonopt, align 4
  store i32 %1, ptr %middle, align 4
  %2 = load i32, ptr @optind, align 4
  store i32 %2, ptr %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, ptr %top, align 4
  %4 = load i32, ptr %middle, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr %middle, align 4
  %6 = load i32, ptr %bottom, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %top, align 4
  %9 = load i32, ptr %middle, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32, ptr %middle, align 4
  %11 = load i32, ptr %bottom, align 4
  %sub2 = sub nsw i32 %10, %11
  %cmp3 = icmp sgt i32 %sub, %sub2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %middle, align 4
  %13 = load i32, ptr %bottom, align 4
  %sub4 = sub nsw i32 %12, %13
  store i32 %sub4, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %len, align 4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr %bottom, align 4
  %18 = load i32, ptr %i, align 4
  %add = add nsw i32 %17, %18
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %19 = load ptr, ptr %arrayidx, align 8
  store ptr %19, ptr %tem, align 8
  %20 = load ptr, ptr %argv.addr, align 8
  %21 = load i32, ptr %top, align 4
  %22 = load i32, ptr %middle, align 4
  %23 = load i32, ptr %bottom, align 4
  %sub6 = sub nsw i32 %22, %23
  %sub7 = sub nsw i32 %21, %sub6
  %24 = load i32, ptr %i, align 4
  %add8 = add nsw i32 %sub7, %24
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %idxprom9
  %25 = load ptr, ptr %arrayidx10, align 8
  %26 = load ptr, ptr %argv.addr, align 8
  %27 = load i32, ptr %bottom, align 4
  %28 = load i32, ptr %i, align 4
  %add11 = add nsw i32 %27, %28
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %26, i64 %idxprom12
  store ptr %25, ptr %arrayidx13, align 8
  %29 = load ptr, ptr %tem, align 8
  %30 = load ptr, ptr %argv.addr, align 8
  %31 = load i32, ptr %top, align 4
  %32 = load i32, ptr %middle, align 4
  %33 = load i32, ptr %bottom, align 4
  %sub14 = sub nsw i32 %32, %33
  %sub15 = sub nsw i32 %31, %sub14
  %34 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %sub15, %34
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %30, i64 %idxprom17
  store ptr %29, ptr %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %36 = load i32, ptr %len, align 4
  %37 = load i32, ptr %top, align 4
  %sub19 = sub nsw i32 %37, %36
  store i32 %sub19, ptr %top, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %38 = load i32, ptr %top, align 4
  %39 = load i32, ptr %middle, align 4
  %sub21 = sub nsw i32 %38, %39
  store i32 %sub21, ptr %len20, align 4
  store i32 0, ptr %i22, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc38, %if.else
  %40 = load i32, ptr %i22, align 4
  %41 = load i32, ptr %len20, align 4
  %cmp24 = icmp slt i32 %40, %41
  br i1 %cmp24, label %for.body25, label %for.end40

for.body25:                                       ; preds = %for.cond23
  %42 = load ptr, ptr %argv.addr, align 8
  %43 = load i32, ptr %bottom, align 4
  %44 = load i32, ptr %i22, align 4
  %add26 = add nsw i32 %43, %44
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %42, i64 %idxprom27
  %45 = load ptr, ptr %arrayidx28, align 8
  store ptr %45, ptr %tem, align 8
  %46 = load ptr, ptr %argv.addr, align 8
  %47 = load i32, ptr %middle, align 4
  %48 = load i32, ptr %i22, align 4
  %add29 = add nsw i32 %47, %48
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %46, i64 %idxprom30
  %49 = load ptr, ptr %arrayidx31, align 8
  %50 = load ptr, ptr %argv.addr, align 8
  %51 = load i32, ptr %bottom, align 4
  %52 = load i32, ptr %i22, align 4
  %add32 = add nsw i32 %51, %52
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %50, i64 %idxprom33
  store ptr %49, ptr %arrayidx34, align 8
  %53 = load ptr, ptr %tem, align 8
  %54 = load ptr, ptr %argv.addr, align 8
  %55 = load i32, ptr %middle, align 4
  %56 = load i32, ptr %i22, align 4
  %add35 = add nsw i32 %55, %56
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %54, i64 %idxprom36
  store ptr %53, ptr %arrayidx37, align 8
  br label %for.inc38

for.inc38:                                        ; preds = %for.body25
  %57 = load i32, ptr %i22, align 4
  %inc39 = add nsw i32 %57, 1
  store i32 %inc39, ptr %i22, align 4
  br label %for.cond23, !llvm.loop !13

for.end40:                                        ; preds = %for.cond23
  %58 = load i32, ptr %len20, align 4
  %59 = load i32, ptr %bottom, align 4
  %add41 = add nsw i32 %59, %58
  store i32 %add41, ptr %bottom, align 4
  br label %if.end

if.end:                                           ; preds = %for.end40, %for.end
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  %60 = load i32, ptr @optind, align 4
  %61 = load i32, ptr @last_nonopt, align 4
  %sub42 = sub nsw i32 %60, %61
  %62 = load i32, ptr @first_nonopt, align 4
  %add43 = add nsw i32 %62, %sub42
  store i32 %add43, ptr @first_nonopt, align 4
  %63 = load i32, ptr @optind, align 4
  store i32 %63, ptr @last_nonopt, align 4
  ret void
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal ptr @my_index(ptr noundef %str, i32 noundef %chr) #0 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %chr.addr = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %chr, ptr %chr.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, ptr %chr.addr, align 4
  %cmp = icmp eq i32 %conv, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %str.addr, align 8
  store ptr %5, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %str.addr, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @strlen(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optstring.addr = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %optstring, ptr %optstring.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %2 = load ptr, ptr %optstring.addr, align 8
  %call = call i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

declare ptr @getenv(...) #1

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
