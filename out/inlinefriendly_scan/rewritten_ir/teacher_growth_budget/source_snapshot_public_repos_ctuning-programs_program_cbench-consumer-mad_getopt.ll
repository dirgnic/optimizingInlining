; ModuleID = './out/inlinefriendly_scan/rewritten_ir/teacher_growth_budget/source_snapshot_public_repos_ctuning-programs_program_cbench-consumer-mad_getopt.prepared.ll'
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

; Function Attrs: nounwind ssp uwtable
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
  %1 = load i8, ptr %optstring, align 1
  %cmp = icmp eq i8 %1, 58
  %spec.store.select = select i1 %cmp, i32 0, i32 %0
  store i32 %spec.store.select, ptr %print_errors, align 4
  store ptr null, ptr @optarg, align 8
  %2 = load i32, ptr @optind, align 4
  %cmp2 = icmp eq i32 %2, 0
  %3 = load i32, ptr @__getopt_initialized, align 4
  %tobool.not = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then4, label %if.end9

if.then4:                                         ; preds = %entry
  %4 = load i32, ptr @optind, align 4
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  store i32 1, ptr @optind, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then4
  %5 = load i32, ptr %argc.addr, align 4
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load ptr, ptr %optstring.addr, align 8
  %call = call ptr @_getopt_initialize(i32 noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %optstring.addr, align 8
  store i32 1, ptr @__getopt_initialized, align 4
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.end8
  %8 = load ptr, ptr @nextchar, align 8
  %cmp10 = icmp eq ptr %8, null
  br i1 %cmp10, label %if.then16, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %9 = load ptr, ptr @nextchar, align 8
  %10 = load i8, ptr %9, align 1
  %cmp14 = icmp eq i8 %10, 0
  br i1 %cmp14, label %if.then16, label %if.end117

if.then16:                                        ; preds = %lor.lhs.false12, %if.end9
  %11 = load i32, ptr @last_nonopt, align 4
  %12 = load i32, ptr @optind, align 4
  %cmp17 = icmp sgt i32 %11, %12
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then16
  %13 = load i32, ptr @optind, align 4
  store i32 %13, ptr @last_nonopt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16
  %14 = load i32, ptr @first_nonopt, align 4
  %15 = load i32, ptr @optind, align 4
  %cmp21 = icmp sgt i32 %14, %15
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %16 = load i32, ptr @optind, align 4
  store i32 %16, ptr @first_nonopt, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %17 = load i32, ptr @ordering, align 4
  %cmp25 = icmp eq i32 %17, 1
  br i1 %cmp25, label %if.then27, label %if.end51

if.then27:                                        ; preds = %if.end24
  %18 = load i32, ptr @first_nonopt, align 4
  %19 = load i32, ptr @last_nonopt, align 4
  %cmp28.not = icmp eq i32 %18, %19
  br i1 %cmp28.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then27
  %20 = load i32, ptr @last_nonopt, align 4
  %21 = load i32, ptr @optind, align 4
  %cmp30.not = icmp eq i32 %20, %21
  br i1 %cmp30.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %argv.addr, align 8
  call void @exchange(ptr noundef %22)
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true, %if.then27
  %23 = load i32, ptr @last_nonopt, align 4
  %24 = load i32, ptr @optind, align 4
  %cmp33.not = icmp eq i32 %23, %24
  br i1 %cmp33.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.else
  %25 = load i32, ptr @optind, align 4
  store i32 %25, ptr @first_nonopt, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then35, %if.then32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end37
  %26 = load i32, ptr @optind, align 4
  %27 = load i32, ptr %argc.addr, align 4
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %28 = load ptr, ptr %argv.addr, align 8
  %29 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %28, i64 %idxprom
  %30 = load ptr, ptr %arrayidx40, align 8
  %31 = load i8, ptr %30, align 1
  %cmp43.not = icmp eq i8 %31, 45
  br i1 %cmp43.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %32 = load ptr, ptr %argv.addr, align 8
  %33 = load i32, ptr @optind, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %32, i64 %idxprom45
  %34 = load ptr, ptr %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load i8, ptr %arrayidx47, align 1
  %cmp49 = icmp eq i8 %35, 0
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs, %lor.rhs
  %36 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr @optind, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond, %lor.rhs
  %37 = load i32, ptr @optind, align 4
  store i32 %37, ptr @last_nonopt, align 4
  br label %if.end51

if.end51:                                         ; preds = %while.end, %if.end24
  %38 = load i32, ptr @optind, align 4
  %39 = load i32, ptr %argc.addr, align 4
  %cmp52.not = icmp eq i32 %38, %39
  br i1 %cmp52.not, label %if.end73, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %if.end51
  %40 = load ptr, ptr %argv.addr, align 8
  %41 = load i32, ptr @optind, align 4
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %40, i64 %idxprom55
  %42 = load ptr, ptr %arrayidx56, align 8
  %call57 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(3) @.str) #2
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end73

if.then59:                                        ; preds = %land.lhs.true54
  %43 = load i32, ptr @optind, align 4
  %inc60 = add nsw i32 %43, 1
  store i32 %inc60, ptr @optind, align 4
  %44 = load i32, ptr @first_nonopt, align 4
  %45 = load i32, ptr @last_nonopt, align 4
  %cmp61.not = icmp eq i32 %44, %45
  br i1 %cmp61.not, label %if.else67, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %if.then59
  %46 = load i32, ptr @last_nonopt, align 4
  %47 = load i32, ptr @optind, align 4
  %cmp64.not = icmp eq i32 %46, %47
  br i1 %cmp64.not, label %if.else67, label %if.then66

if.then66:                                        ; preds = %land.lhs.true63
  %48 = load ptr, ptr %argv.addr, align 8
  call void @exchange(ptr noundef %48)
  br label %if.end72

if.else67:                                        ; preds = %land.lhs.true63, %if.then59
  %49 = load i32, ptr @first_nonopt, align 4
  %50 = load i32, ptr @last_nonopt, align 4
  %cmp68 = icmp eq i32 %49, %50
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.else67
  %51 = load i32, ptr @optind, align 4
  store i32 %51, ptr @first_nonopt, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %if.then70, %if.then66
  %52 = load i32, ptr %argc.addr, align 4
  store i32 %52, ptr @last_nonopt, align 4
  store i32 %52, ptr @optind, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %land.lhs.true54, %if.end51
  %53 = load i32, ptr @optind, align 4
  %54 = load i32, ptr %argc.addr, align 4
  %cmp74 = icmp eq i32 %53, %54
  br i1 %cmp74, label %if.then76, label %if.end81

if.then76:                                        ; preds = %if.end73
  %55 = load i32, ptr @first_nonopt, align 4
  %56 = load i32, ptr @last_nonopt, align 4
  %cmp77.not = icmp eq i32 %55, %56
  br i1 %cmp77.not, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.then76
  %57 = load i32, ptr @first_nonopt, align 4
  store i32 %57, ptr @optind, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.then76
  store i32 -1, ptr %retval, align 4
  br label %return

if.end81:                                         ; preds = %if.end73
  %58 = load ptr, ptr %argv.addr, align 8
  %59 = load i32, ptr @optind, align 4
  %idxprom82 = sext i32 %59 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %58, i64 %idxprom82
  %60 = load ptr, ptr %arrayidx83, align 8
  %61 = load i8, ptr %60, align 1
  %cmp86.not = icmp eq i8 %61, 45
  br i1 %cmp86.not, label %lor.lhs.false88, label %if.then95

lor.lhs.false88:                                  ; preds = %if.end81
  %62 = load ptr, ptr %argv.addr, align 8
  %63 = load i32, ptr @optind, align 4
  %idxprom89 = sext i32 %63 to i64
  %arrayidx90 = getelementptr inbounds ptr, ptr %62, i64 %idxprom89
  %64 = load ptr, ptr %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %64, i64 1
  %65 = load i8, ptr %arrayidx91, align 1
  %cmp93 = icmp eq i8 %65, 0
  br i1 %cmp93, label %if.then95, label %if.end103

if.then95:                                        ; preds = %lor.lhs.false88, %if.end81
  %66 = load i32, ptr @ordering, align 4
  %cmp96 = icmp eq i32 %66, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.then95
  store i32 -1, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %if.then95
  %67 = load ptr, ptr %argv.addr, align 8
  %68 = load i32, ptr @optind, align 4
  %inc100 = add nsw i32 %68, 1
  store i32 %inc100, ptr @optind, align 4
  %idxprom101 = sext i32 %68 to i64
  %arrayidx102 = getelementptr inbounds ptr, ptr %67, i64 %idxprom101
  %69 = load ptr, ptr %arrayidx102, align 8
  store ptr %69, ptr @optarg, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %lor.lhs.false88
  %70 = load ptr, ptr %argv.addr, align 8
  %71 = load i32, ptr @optind, align 4
  %idxprom104 = sext i32 %71 to i64
  %arrayidx105 = getelementptr inbounds ptr, ptr %70, i64 %idxprom104
  %72 = load ptr, ptr %arrayidx105, align 8
  %add.ptr = getelementptr inbounds i8, ptr %72, i64 1
  %73 = load ptr, ptr %longopts.addr, align 8
  %cmp106.not = icmp eq ptr %73, null
  br i1 %cmp106.not, label %land.end115, label %land.rhs108

land.rhs108:                                      ; preds = %if.end103
  %74 = load ptr, ptr %argv.addr, align 8
  %75 = load i32, ptr @optind, align 4
  %idxprom109 = sext i32 %75 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %74, i64 %idxprom109
  %76 = load ptr, ptr %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i8, ptr %76, i64 1
  %77 = load i8, ptr %arrayidx111, align 1
  %cmp113 = icmp eq i8 %77, 45
  br label %land.end115

land.end115:                                      ; preds = %land.rhs108, %if.end103
  %78 = phi i1 [ false, %if.end103 ], [ %cmp113, %land.rhs108 ]
  %idx.ext = zext i1 %78 to i64
  %add.ptr116 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr116, ptr @nextchar, align 8
  br label %if.end117

if.end117:                                        ; preds = %land.end115, %lor.lhs.false12
  %79 = load ptr, ptr %longopts.addr, align 8
  %cmp118.not = icmp eq ptr %79, null
  br i1 %cmp118.not, label %if.end310, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.end117
  %80 = load ptr, ptr %argv.addr, align 8
  %81 = load i32, ptr @optind, align 4
  %idxprom121 = sext i32 %81 to i64
  %arrayidx122 = getelementptr inbounds ptr, ptr %80, i64 %idxprom121
  %82 = load ptr, ptr %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %82, i64 1
  %83 = load i8, ptr %arrayidx123, align 1
  %cmp125 = icmp eq i8 %83, 45
  br i1 %cmp125, label %if.then142, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %land.lhs.true120
  %84 = load i32, ptr %long_only.addr, align 4
  %tobool128.not = icmp eq i32 %84, 0
  br i1 %tobool128.not, label %if.end310, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %lor.lhs.false127
  %85 = load ptr, ptr %argv.addr, align 8
  %86 = load i32, ptr @optind, align 4
  %idxprom130 = sext i32 %86 to i64
  %arrayidx131 = getelementptr inbounds ptr, ptr %85, i64 %idxprom130
  %87 = load ptr, ptr %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %87, i64 2
  %88 = load i8, ptr %arrayidx132, align 1
  %tobool134.not = icmp eq i8 %88, 0
  br i1 %tobool134.not, label %lor.lhs.false135, label %if.then142

lor.lhs.false135:                                 ; preds = %land.lhs.true129
  %89 = load ptr, ptr %optstring.addr, align 8
  %90 = load ptr, ptr %argv.addr, align 8
  %91 = load i32, ptr @optind, align 4
  %idxprom136 = sext i32 %91 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %90, i64 %idxprom136
  %92 = load ptr, ptr %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %92, i64 1
  %93 = load i8, ptr %arrayidx138, align 1
  %conv139 = sext i8 %93 to i32
  %call140 = call ptr @my_index(ptr noundef %89, i32 noundef %conv139)
  %tobool141.not = icmp eq ptr %call140, null
  br i1 %tobool141.not, label %if.then142, label %if.end310

if.then142:                                       ; preds = %lor.lhs.false135, %land.lhs.true129, %land.lhs.true120
  store ptr null, ptr %pfound, align 8
  store i32 0, ptr %exact, align 4
  store i32 0, ptr %ambig, align 4
  store i32 -1, ptr %indfound, align 4
  %94 = load ptr, ptr @nextchar, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then142
  %storemerge3 = phi ptr [ %94, %if.then142 ], [ %incdec.ptr, %for.inc ]
  store ptr %storemerge3, ptr %nameend, align 8
  %95 = load i8, ptr %storemerge3, align 1
  %tobool144.not = icmp eq i8 %95, 0
  br i1 %tobool144.not, label %for.end, label %land.rhs145

land.rhs145:                                      ; preds = %for.cond
  %96 = load ptr, ptr %nameend, align 8
  %97 = load i8, ptr %96, align 1
  %cmp147 = icmp ne i8 %97, 61
  br i1 %cmp147, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.rhs145
  %98 = load ptr, ptr %nameend, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %98, i64 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond, %land.rhs145
  %99 = load ptr, ptr %longopts.addr, align 8
  store ptr %99, ptr %p, align 8
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc176, %for.end
  %storemerge4 = phi i32 [ 0, %for.end ], [ %inc178, %for.inc176 ]
  store i32 %storemerge4, ptr %option_index, align 4
  %100 = load ptr, ptr %p, align 8
  %101 = load ptr, ptr %100, align 8
  %tobool152.not = icmp eq ptr %101, null
  br i1 %tobool152.not, label %for.end179, label %for.body153

for.body153:                                      ; preds = %for.cond151
  %102 = load ptr, ptr %p, align 8
  %103 = load ptr, ptr %102, align 8
  %104 = load ptr, ptr @nextchar, align 8
  %105 = load ptr, ptr %nameend, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %105 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %104 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call155 = call i32 @strncmp(ptr noundef %103, ptr noundef %104, i64 noundef %sub.ptr.sub) #2
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then157, label %for.inc176

if.then157:                                       ; preds = %for.body153
  %106 = load ptr, ptr %nameend, align 8
  %107 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast158 = ptrtoint ptr %106 to i64
  %sub.ptr.rhs.cast159 = ptrtoint ptr %107 to i64
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %conv161 = trunc i64 %sub.ptr.sub160 to i32
  %108 = load ptr, ptr %p, align 8
  %109 = load ptr, ptr %108, align 8
  %call163 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %109) #2
  %conv164 = trunc i64 %call163 to i32
  %cmp165 = icmp eq i32 %conv161, %conv164
  br i1 %cmp165, label %if.then167, label %if.else168

if.then167:                                       ; preds = %if.then157
  %110 = load ptr, ptr %p, align 8
  store ptr %110, ptr %pfound, align 8
  %111 = load i32, ptr %option_index, align 4
  store i32 %111, ptr %indfound, align 4
  store i32 1, ptr %exact, align 4
  br label %for.end179

if.else168:                                       ; preds = %if.then157
  %112 = load ptr, ptr %pfound, align 8
  %cmp169 = icmp eq ptr %112, null
  br i1 %cmp169, label %if.then171, label %if.else172

if.then171:                                       ; preds = %if.else168
  %113 = load ptr, ptr %p, align 8
  store ptr %113, ptr %pfound, align 8
  %114 = load i32, ptr %option_index, align 4
  store i32 %114, ptr %indfound, align 4
  br label %for.inc176

if.else172:                                       ; preds = %if.else168
  store i32 1, ptr %ambig, align 4
  br label %for.inc176

for.inc176:                                       ; preds = %for.body153, %if.then171, %if.else172
  %115 = load ptr, ptr %p, align 8
  %incdec.ptr177 = getelementptr inbounds %struct.option, ptr %115, i64 1
  store ptr %incdec.ptr177, ptr %p, align 8
  %116 = load i32, ptr %option_index, align 4
  %inc178 = add nsw i32 %116, 1
  br label %for.cond151, !llvm.loop !9

for.end179:                                       ; preds = %if.then167, %for.cond151
  %117 = load i32, ptr %ambig, align 4
  %tobool180.not = icmp ne i32 %117, 0
  %118 = load i32, ptr %exact, align 4
  %tobool182.not = icmp eq i32 %118, 0
  %or.cond5 = select i1 %tobool180.not, i1 %tobool182.not, i1 false
  br i1 %or.cond5, label %if.then183, label %if.end194

if.then183:                                       ; preds = %for.end179
  %119 = load i32, ptr %print_errors, align 4
  %tobool184.not = icmp eq i32 %119, 0
  br i1 %tobool184.not, label %if.end190, label %if.then185

if.then185:                                       ; preds = %if.then183
  %120 = load ptr, ptr @__stderrp, align 8
  %121 = load ptr, ptr %argv.addr, align 8
  %122 = load ptr, ptr %121, align 8
  %123 = load i32, ptr @optind, align 4
  %idxprom187 = sext i32 %123 to i64
  %arrayidx188 = getelementptr inbounds ptr, ptr %121, i64 %idxprom187
  %124 = load ptr, ptr %arrayidx188, align 8
  %call189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.1, ptr noundef %122, ptr noundef %124) #2
  br label %if.end190

if.end190:                                        ; preds = %if.then185, %if.then183
  %125 = load ptr, ptr @nextchar, align 8
  %call191 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %125) #2
  %126 = load ptr, ptr @nextchar, align 8
  %add.ptr192 = getelementptr inbounds i8, ptr %126, i64 %call191
  store ptr %add.ptr192, ptr @nextchar, align 8
  %127 = load i32, ptr @optind, align 4
  %inc193 = add nsw i32 %127, 1
  store i32 %inc193, ptr @optind, align 4
  store i32 0, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end194:                                        ; preds = %for.end179
  %128 = load ptr, ptr %pfound, align 8
  %cmp195.not = icmp eq ptr %128, null
  br i1 %cmp195.not, label %if.end273, label %if.then197

if.then197:                                       ; preds = %if.end194
  %129 = load i32, ptr %indfound, align 4
  store i32 %129, ptr %option_index, align 4
  %130 = load i32, ptr @optind, align 4
  %inc198 = add nsw i32 %130, 1
  store i32 %inc198, ptr @optind, align 4
  %131 = load ptr, ptr %nameend, align 8
  %132 = load i8, ptr %131, align 1
  %tobool199.not = icmp eq i8 %132, 0
  br i1 %tobool199.not, label %if.else231, label %if.then200

if.then200:                                       ; preds = %if.then197
  %133 = load ptr, ptr %pfound, align 8
  %has_arg = getelementptr inbounds %struct.option, ptr %133, i64 0, i32 1
  %134 = load i32, ptr %has_arg, align 8
  %tobool201.not = icmp eq i32 %134, 0
  br i1 %tobool201.not, label %if.else204, label %if.then202

if.then202:                                       ; preds = %if.then200
  %135 = load ptr, ptr %nameend, align 8
  %add.ptr203 = getelementptr inbounds i8, ptr %135, i64 1
  store ptr %add.ptr203, ptr @optarg, align 8
  br label %if.end260

if.else204:                                       ; preds = %if.then200
  %136 = load i32, ptr %print_errors, align 4
  %tobool205.not = icmp eq i32 %136, 0
  br i1 %tobool205.not, label %if.end227, label %if.then206

if.then206:                                       ; preds = %if.else204
  %137 = load ptr, ptr %argv.addr, align 8
  %138 = load i32, ptr @optind, align 4
  %sub = add nsw i32 %138, -1
  %idxprom207 = sext i32 %sub to i64
  %arrayidx208 = getelementptr inbounds ptr, ptr %137, i64 %idxprom207
  %139 = load ptr, ptr %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i8, ptr %139, i64 1
  %140 = load i8, ptr %arrayidx209, align 1
  %cmp211 = icmp eq i8 %140, 45
  br i1 %cmp211, label %if.then213, label %if.else217

if.then213:                                       ; preds = %if.then206
  %141 = load ptr, ptr @__stderrp, align 8
  %142 = load ptr, ptr %argv.addr, align 8
  %143 = load ptr, ptr %142, align 8
  %144 = load ptr, ptr %pfound, align 8
  %145 = load ptr, ptr %144, align 8
  %call216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.2, ptr noundef %143, ptr noundef %145) #2
  br label %if.end227

if.else217:                                       ; preds = %if.then206
  %146 = load ptr, ptr @__stderrp, align 8
  %147 = load ptr, ptr %argv.addr, align 8
  %148 = load ptr, ptr %147, align 8
  %149 = load i32, ptr @optind, align 4
  %sub219 = add nsw i32 %149, -1
  %idxprom220 = sext i32 %sub219 to i64
  %arrayidx221 = getelementptr inbounds ptr, ptr %147, i64 %idxprom220
  %150 = load ptr, ptr %arrayidx221, align 8
  %151 = load i8, ptr %150, align 1
  %conv223 = sext i8 %151 to i32
  %152 = load ptr, ptr %pfound, align 8
  %153 = load ptr, ptr %152, align 8
  %call225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.3, ptr noundef %148, i32 noundef %conv223, ptr noundef %153) #2
  br label %if.end227

if.end227:                                        ; preds = %if.then213, %if.else217, %if.else204
  %154 = load ptr, ptr @nextchar, align 8
  %call228 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %154) #2
  %155 = load ptr, ptr @nextchar, align 8
  %add.ptr229 = getelementptr inbounds i8, ptr %155, i64 %call228
  store ptr %add.ptr229, ptr @nextchar, align 8
  %156 = load ptr, ptr %pfound, align 8
  %val = getelementptr inbounds %struct.option, ptr %156, i64 0, i32 3
  %157 = load i32, ptr %val, align 8
  store i32 %157, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.else231:                                       ; preds = %if.then197
  %158 = load ptr, ptr %pfound, align 8
  %has_arg232 = getelementptr inbounds %struct.option, ptr %158, i64 0, i32 1
  %159 = load i32, ptr %has_arg232, align 8
  %cmp233 = icmp eq i32 %159, 1
  br i1 %cmp233, label %if.then235, label %if.end260

if.then235:                                       ; preds = %if.else231
  %160 = load i32, ptr @optind, align 4
  %161 = load i32, ptr %argc.addr, align 4
  %cmp236 = icmp slt i32 %160, %161
  br i1 %cmp236, label %if.then238, label %if.else242

if.then238:                                       ; preds = %if.then235
  %162 = load ptr, ptr %argv.addr, align 8
  %163 = load i32, ptr @optind, align 4
  %inc239 = add nsw i32 %163, 1
  store i32 %inc239, ptr @optind, align 4
  %idxprom240 = sext i32 %163 to i64
  %arrayidx241 = getelementptr inbounds ptr, ptr %162, i64 %idxprom240
  %164 = load ptr, ptr %arrayidx241, align 8
  store ptr %164, ptr @optarg, align 8
  br label %if.end260

if.else242:                                       ; preds = %if.then235
  %165 = load i32, ptr %print_errors, align 4
  %tobool243.not = icmp eq i32 %165, 0
  br i1 %tobool243.not, label %if.end250, label %if.then244

if.then244:                                       ; preds = %if.else242
  %166 = load ptr, ptr @__stderrp, align 8
  %167 = load ptr, ptr %argv.addr, align 8
  %168 = load ptr, ptr %167, align 8
  %169 = load i32, ptr @optind, align 4
  %sub246 = add nsw i32 %169, -1
  %idxprom247 = sext i32 %sub246 to i64
  %arrayidx248 = getelementptr inbounds ptr, ptr %167, i64 %idxprom247
  %170 = load ptr, ptr %arrayidx248, align 8
  %call249 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef nonnull @.str.4, ptr noundef %168, ptr noundef %170) #2
  br label %if.end250

if.end250:                                        ; preds = %if.then244, %if.else242
  %171 = load ptr, ptr @nextchar, align 8
  %call251 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %171) #2
  %172 = load ptr, ptr @nextchar, align 8
  %add.ptr252 = getelementptr inbounds i8, ptr %172, i64 %call251
  store ptr %add.ptr252, ptr @nextchar, align 8
  %173 = load ptr, ptr %pfound, align 8
  %val253 = getelementptr inbounds %struct.option, ptr %173, i64 0, i32 3
  %174 = load i32, ptr %val253, align 8
  store i32 %174, ptr @optopt, align 4
  %175 = load ptr, ptr %optstring.addr, align 8
  %176 = load i8, ptr %175, align 1
  %cmp256 = icmp eq i8 %176, 58
  %cond = select i1 %cmp256, i32 58, i32 63
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %if.else231, %if.then238, %if.then202
  %177 = load ptr, ptr @nextchar, align 8
  %call261 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %177) #2
  %178 = load ptr, ptr @nextchar, align 8
  %add.ptr262 = getelementptr inbounds i8, ptr %178, i64 %call261
  store ptr %add.ptr262, ptr @nextchar, align 8
  %179 = load ptr, ptr %longind.addr, align 8
  %cmp263.not = icmp eq ptr %179, null
  br i1 %cmp263.not, label %if.end266, label %if.then265

if.then265:                                       ; preds = %if.end260
  %180 = load i32, ptr %option_index, align 4
  %181 = load ptr, ptr %longind.addr, align 8
  store i32 %180, ptr %181, align 4
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.end260
  %182 = load ptr, ptr %pfound, align 8
  %flag = getelementptr inbounds %struct.option, ptr %182, i64 0, i32 2
  %183 = load ptr, ptr %flag, align 8
  %tobool267.not = icmp eq ptr %183, null
  br i1 %tobool267.not, label %if.end271, label %if.then268

if.then268:                                       ; preds = %if.end266
  %184 = load ptr, ptr %pfound, align 8
  %val269 = getelementptr inbounds %struct.option, ptr %184, i64 0, i32 3
  %185 = load i32, ptr %val269, align 8
  %flag270 = getelementptr inbounds %struct.option, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %flag270, align 8
  store i32 %185, ptr %186, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end271:                                        ; preds = %if.end266
  %187 = load ptr, ptr %pfound, align 8
  %val272 = getelementptr inbounds %struct.option, ptr %187, i64 0, i32 3
  %188 = load i32, ptr %val272, align 8
  store i32 %188, ptr %retval, align 4
  br label %return

if.end273:                                        ; preds = %if.end194
  %189 = load i32, ptr %long_only.addr, align 4
  %tobool274.not = icmp eq i32 %189, 0
  br i1 %tobool274.not, label %if.then287, label %lor.lhs.false275

lor.lhs.false275:                                 ; preds = %if.end273
  %190 = load ptr, ptr %argv.addr, align 8
  %191 = load i32, ptr @optind, align 4
  %idxprom276 = sext i32 %191 to i64
  %arrayidx277 = getelementptr inbounds ptr, ptr %190, i64 %idxprom276
  %192 = load ptr, ptr %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i8, ptr %192, i64 1
  %193 = load i8, ptr %arrayidx278, align 1
  %cmp280 = icmp eq i8 %193, 45
  br i1 %cmp280, label %if.then287, label %lor.lhs.false282

lor.lhs.false282:                                 ; preds = %lor.lhs.false275
  %194 = load ptr, ptr %optstring.addr, align 8
  %195 = load ptr, ptr @nextchar, align 8
  %196 = load i8, ptr %195, align 1
  %conv283 = sext i8 %196 to i32
  %call284 = call ptr @my_index(ptr noundef %194, i32 noundef %conv283)
  %cmp285 = icmp eq ptr %call284, null
  br i1 %cmp285, label %if.then287, label %if.end310

if.then287:                                       ; preds = %lor.lhs.false282, %lor.lhs.false275, %if.end273
  %197 = load i32, ptr %print_errors, align 4
  %tobool288.not = icmp eq i32 %197, 0
  br i1 %tobool288.not, label %if.end307, label %if.then289

if.then289:                                       ; preds = %if.then287
  %198 = load ptr, ptr %argv.addr, align 8
  %199 = load i32, ptr @optind, align 4
  %idxprom290 = sext i32 %199 to i64
  %arrayidx291 = getelementptr inbounds ptr, ptr %198, i64 %idxprom290
  %200 = load ptr, ptr %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i8, ptr %200, i64 1
  %201 = load i8, ptr %arrayidx292, align 1
  %cmp294 = icmp eq i8 %201, 45
  br i1 %cmp294, label %if.then296, label %if.else299

if.then296:                                       ; preds = %if.then289
  %202 = load ptr, ptr @__stderrp, align 8
  %203 = load ptr, ptr %argv.addr, align 8
  %204 = load ptr, ptr %203, align 8
  %205 = load ptr, ptr @nextchar, align 8
  %call298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.5, ptr noundef %204, ptr noundef %205) #2
  br label %if.end307

if.else299:                                       ; preds = %if.then289
  %206 = load ptr, ptr @__stderrp, align 8
  %207 = load ptr, ptr %argv.addr, align 8
  %208 = load ptr, ptr %207, align 8
  %209 = load i32, ptr @optind, align 4
  %idxprom301 = sext i32 %209 to i64
  %arrayidx302 = getelementptr inbounds ptr, ptr %207, i64 %idxprom301
  %210 = load ptr, ptr %arrayidx302, align 8
  %211 = load i8, ptr %210, align 1
  %conv304 = sext i8 %211 to i32
  %212 = load ptr, ptr @nextchar, align 8
  %call305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.6, ptr noundef %208, i32 noundef %conv304, ptr noundef %212) #2
  br label %if.end307

if.end307:                                        ; preds = %if.then296, %if.else299, %if.then287
  store ptr @.str.7, ptr @nextchar, align 8
  %213 = load i32, ptr @optind, align 4
  %inc308 = add nsw i32 %213, 1
  store i32 %inc308, ptr @optind, align 4
  store i32 0, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end310:                                        ; preds = %lor.lhs.false282, %lor.lhs.false135, %lor.lhs.false127, %if.end117
  %214 = load ptr, ptr @nextchar, align 8
  %incdec.ptr311 = getelementptr inbounds i8, ptr %214, i64 1
  store ptr %incdec.ptr311, ptr @nextchar, align 8
  %215 = load i8, ptr %214, align 1
  store i8 %215, ptr %c, align 1
  %216 = load ptr, ptr %optstring.addr, align 8
  %conv312 = sext i8 %215 to i32
  %call313 = call ptr @my_index(ptr noundef %216, i32 noundef %conv312)
  store ptr %call313, ptr %temp, align 8
  %217 = load ptr, ptr @nextchar, align 8
  %218 = load i8, ptr %217, align 1
  %cmp315 = icmp eq i8 %218, 0
  br i1 %cmp315, label %if.then317, label %if.end319

if.then317:                                       ; preds = %if.end310
  %219 = load i32, ptr @optind, align 4
  %inc318 = add nsw i32 %219, 1
  store i32 %inc318, ptr @optind, align 4
  br label %if.end319

if.end319:                                        ; preds = %if.then317, %if.end310
  %220 = load ptr, ptr %temp, align 8
  %cmp320 = icmp eq ptr %220, null
  %221 = load i8, ptr %c, align 1
  %cmp324 = icmp eq i8 %221, 58
  %or.cond6 = select i1 %cmp320, i1 true, i1 %cmp324
  br i1 %or.cond6, label %if.then326, label %if.end341

if.then326:                                       ; preds = %if.end319
  %222 = load i32, ptr %print_errors, align 4
  %tobool327.not = icmp eq i32 %222, 0
  br i1 %tobool327.not, label %if.end339, label %if.then328

if.then328:                                       ; preds = %if.then326
  %223 = load ptr, ptr @posixly_correct, align 8
  %tobool329.not = icmp eq ptr %223, null
  br i1 %tobool329.not, label %if.else334, label %if.then330

if.then330:                                       ; preds = %if.then328
  %224 = load ptr, ptr @__stderrp, align 8
  %225 = load ptr, ptr %argv.addr, align 8
  %226 = load ptr, ptr %225, align 8
  %227 = load i8, ptr %c, align 1
  %conv332 = sext i8 %227 to i32
  %call333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef nonnull @.str.8, ptr noundef %226, i32 noundef %conv332) #2
  br label %if.end339

if.else334:                                       ; preds = %if.then328
  %228 = load ptr, ptr @__stderrp, align 8
  %229 = load ptr, ptr %argv.addr, align 8
  %230 = load ptr, ptr %229, align 8
  %231 = load i8, ptr %c, align 1
  %conv336 = sext i8 %231 to i32
  %call337 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.9, ptr noundef %230, i32 noundef %conv336) #2
  br label %if.end339

if.end339:                                        ; preds = %if.then330, %if.else334, %if.then326
  %232 = load i8, ptr %c, align 1
  %conv340 = sext i8 %232 to i32
  store i32 %conv340, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end341:                                        ; preds = %if.end319
  %233 = load ptr, ptr %temp, align 8
  %234 = load i8, ptr %233, align 1
  %cmp344 = icmp eq i8 %234, 87
  br i1 %cmp344, label %land.lhs.true346, label %if.end513

land.lhs.true346:                                 ; preds = %if.end341
  %235 = load ptr, ptr %temp, align 8
  %arrayidx347 = getelementptr inbounds i8, ptr %235, i64 1
  %236 = load i8, ptr %arrayidx347, align 1
  %cmp349 = icmp eq i8 %236, 59
  br i1 %cmp349, label %if.then351, label %if.end513

if.then351:                                       ; preds = %land.lhs.true346
  store ptr null, ptr %pfound354, align 8
  store i32 0, ptr %exact355, align 4
  store i32 0, ptr %ambig356, align 4
  store i32 0, ptr %indfound357, align 4
  %237 = load ptr, ptr @nextchar, align 8
  %238 = load i8, ptr %237, align 1
  %cmp360.not = icmp eq i8 %238, 0
  br i1 %cmp360.not, label %if.else364, label %if.then362

if.then362:                                       ; preds = %if.then351
  %239 = load ptr, ptr @nextchar, align 8
  store ptr %239, ptr @optarg, align 8
  %240 = load i32, ptr @optind, align 4
  %inc363 = add nsw i32 %240, 1
  store i32 %inc363, ptr @optind, align 4
  br label %if.end388

if.else364:                                       ; preds = %if.then351
  %241 = load i32, ptr @optind, align 4
  %242 = load i32, ptr %argc.addr, align 4
  %cmp365 = icmp eq i32 %241, %242
  br i1 %cmp365, label %if.then367, label %if.else383

if.then367:                                       ; preds = %if.else364
  %243 = load i32, ptr %print_errors, align 4
  %tobool368.not = icmp eq i32 %243, 0
  br i1 %tobool368.not, label %if.end373, label %if.then369

if.then369:                                       ; preds = %if.then367
  %244 = load ptr, ptr @__stderrp, align 8
  %245 = load ptr, ptr %argv.addr, align 8
  %246 = load ptr, ptr %245, align 8
  %247 = load i8, ptr %c, align 1
  %conv371 = sext i8 %247 to i32
  %call372 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.10, ptr noundef %246, i32 noundef %conv371) #2
  br label %if.end373

if.end373:                                        ; preds = %if.then369, %if.then367
  %248 = load i8, ptr %c, align 1
  %conv374 = sext i8 %248 to i32
  store i32 %conv374, ptr @optopt, align 4
  %249 = load ptr, ptr %optstring.addr, align 8
  %250 = load i8, ptr %249, align 1
  %cmp377 = icmp eq i8 %250, 58
  %. = select i1 %cmp377, i8 58, i8 63
  store i8 %., ptr %c, align 1
  %conv382 = zext i8 %. to i32
  store i32 %conv382, ptr %retval, align 4
  br label %return

if.else383:                                       ; preds = %if.else364
  %251 = load ptr, ptr %argv.addr, align 8
  %252 = load i32, ptr @optind, align 4
  %inc384 = add nsw i32 %252, 1
  store i32 %inc384, ptr @optind, align 4
  %idxprom385 = sext i32 %252 to i64
  %arrayidx386 = getelementptr inbounds ptr, ptr %251, i64 %idxprom385
  %253 = load ptr, ptr %arrayidx386, align 8
  store ptr %253, ptr @optarg, align 8
  br label %if.end388

if.end388:                                        ; preds = %if.else383, %if.then362
  %254 = load ptr, ptr @optarg, align 8
  store ptr %254, ptr %nameend352, align 8
  store ptr %254, ptr @nextchar, align 8
  br label %for.cond389

for.cond389:                                      ; preds = %for.inc399, %if.end388
  %255 = load ptr, ptr %nameend352, align 8
  %256 = load i8, ptr %255, align 1
  %tobool391.not = icmp eq i8 %256, 0
  br i1 %tobool391.not, label %for.end401, label %land.rhs392

land.rhs392:                                      ; preds = %for.cond389
  %257 = load ptr, ptr %nameend352, align 8
  %258 = load i8, ptr %257, align 1
  %cmp394 = icmp ne i8 %258, 61
  br i1 %cmp394, label %for.inc399, label %for.end401

for.inc399:                                       ; preds = %land.rhs392
  %259 = load ptr, ptr %nameend352, align 8
  %incdec.ptr400 = getelementptr inbounds i8, ptr %259, i64 1
  store ptr %incdec.ptr400, ptr %nameend352, align 8
  br label %for.cond389, !llvm.loop !10

for.end401:                                       ; preds = %for.cond389, %land.rhs392
  %260 = load ptr, ptr %longopts.addr, align 8
  store ptr %260, ptr %p353, align 8
  br label %for.cond402

for.cond402:                                      ; preds = %for.inc431, %for.end401
  %storemerge1 = phi i32 [ 0, %for.end401 ], [ %inc433, %for.inc431 ]
  store i32 %storemerge1, ptr %option_index358, align 4
  %261 = load ptr, ptr %p353, align 8
  %262 = load ptr, ptr %261, align 8
  %tobool404.not = icmp eq ptr %262, null
  br i1 %tobool404.not, label %for.end434, label %for.body405

for.body405:                                      ; preds = %for.cond402
  %263 = load ptr, ptr %p353, align 8
  %264 = load ptr, ptr %263, align 8
  %265 = load ptr, ptr @nextchar, align 8
  %266 = load ptr, ptr %nameend352, align 8
  %sub.ptr.lhs.cast407 = ptrtoint ptr %266 to i64
  %sub.ptr.rhs.cast408 = ptrtoint ptr %265 to i64
  %sub.ptr.sub409 = sub i64 %sub.ptr.lhs.cast407, %sub.ptr.rhs.cast408
  %call410 = call i32 @strncmp(ptr noundef %264, ptr noundef %265, i64 noundef %sub.ptr.sub409) #2
  %tobool411.not = icmp eq i32 %call410, 0
  br i1 %tobool411.not, label %if.then412, label %for.inc431

if.then412:                                       ; preds = %for.body405
  %267 = load ptr, ptr %nameend352, align 8
  %268 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast413 = ptrtoint ptr %267 to i64
  %sub.ptr.rhs.cast414 = ptrtoint ptr %268 to i64
  %sub.ptr.sub415 = sub i64 %sub.ptr.lhs.cast413, %sub.ptr.rhs.cast414
  %conv417 = and i64 %sub.ptr.sub415, 4294967295
  %269 = load ptr, ptr %p353, align 8
  %270 = load ptr, ptr %269, align 8
  %call419 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %270) #2
  %cmp420 = icmp eq i64 %conv417, %call419
  br i1 %cmp420, label %if.then422, label %if.else423

if.then422:                                       ; preds = %if.then412
  %271 = load ptr, ptr %p353, align 8
  store ptr %271, ptr %pfound354, align 8
  %272 = load i32, ptr %option_index358, align 4
  store i32 %272, ptr %indfound357, align 4
  store i32 1, ptr %exact355, align 4
  br label %for.end434

if.else423:                                       ; preds = %if.then412
  %273 = load ptr, ptr %pfound354, align 8
  %cmp424 = icmp eq ptr %273, null
  br i1 %cmp424, label %if.then426, label %if.else427

if.then426:                                       ; preds = %if.else423
  %274 = load ptr, ptr %p353, align 8
  store ptr %274, ptr %pfound354, align 8
  %275 = load i32, ptr %option_index358, align 4
  store i32 %275, ptr %indfound357, align 4
  br label %for.inc431

if.else427:                                       ; preds = %if.else423
  store i32 1, ptr %ambig356, align 4
  br label %for.inc431

for.inc431:                                       ; preds = %for.body405, %if.then426, %if.else427
  %276 = load ptr, ptr %p353, align 8
  %incdec.ptr432 = getelementptr inbounds %struct.option, ptr %276, i64 1
  store ptr %incdec.ptr432, ptr %p353, align 8
  %277 = load i32, ptr %option_index358, align 4
  %inc433 = add nsw i32 %277, 1
  br label %for.cond402, !llvm.loop !11

for.end434:                                       ; preds = %if.then422, %for.cond402
  %278 = load i32, ptr %ambig356, align 4
  %tobool435.not = icmp ne i32 %278, 0
  %279 = load i32, ptr %exact355, align 4
  %tobool437.not = icmp eq i32 %279, 0
  %or.cond7 = select i1 %tobool435.not, i1 %tobool437.not, i1 false
  br i1 %or.cond7, label %if.then438, label %if.end449

if.then438:                                       ; preds = %for.end434
  %280 = load i32, ptr %print_errors, align 4
  %tobool439.not = icmp eq i32 %280, 0
  br i1 %tobool439.not, label %if.end445, label %if.then440

if.then440:                                       ; preds = %if.then438
  %281 = load ptr, ptr @__stderrp, align 8
  %282 = load ptr, ptr %argv.addr, align 8
  %283 = load ptr, ptr %282, align 8
  %284 = load i32, ptr @optind, align 4
  %idxprom442 = sext i32 %284 to i64
  %arrayidx443 = getelementptr inbounds ptr, ptr %282, i64 %idxprom442
  %285 = load ptr, ptr %arrayidx443, align 8
  %call444 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.11, ptr noundef %283, ptr noundef %285) #2
  br label %if.end445

if.end445:                                        ; preds = %if.then440, %if.then438
  %286 = load ptr, ptr @nextchar, align 8
  %call446 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %286) #2
  %287 = load ptr, ptr @nextchar, align 8
  %add.ptr447 = getelementptr inbounds i8, ptr %287, i64 %call446
  store ptr %add.ptr447, ptr @nextchar, align 8
  %288 = load i32, ptr @optind, align 4
  %inc448 = add nsw i32 %288, 1
  store i32 %inc448, ptr @optind, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end449:                                        ; preds = %for.end434
  %289 = load ptr, ptr %pfound354, align 8
  %cmp450.not = icmp eq ptr %289, null
  br i1 %cmp450.not, label %if.end512, label %if.then452

if.then452:                                       ; preds = %if.end449
  %290 = load i32, ptr %indfound357, align 4
  store i32 %290, ptr %option_index358, align 4
  %291 = load ptr, ptr %nameend352, align 8
  %292 = load i8, ptr %291, align 1
  %tobool453.not = icmp eq i8 %292, 0
  br i1 %tobool453.not, label %if.else469, label %if.then454

if.then454:                                       ; preds = %if.then452
  %293 = load ptr, ptr %pfound354, align 8
  %has_arg455 = getelementptr inbounds %struct.option, ptr %293, i64 0, i32 1
  %294 = load i32, ptr %has_arg455, align 8
  %tobool456.not = icmp eq i32 %294, 0
  br i1 %tobool456.not, label %if.else459, label %if.then457

if.then457:                                       ; preds = %if.then454
  %295 = load ptr, ptr %nameend352, align 8
  %add.ptr458 = getelementptr inbounds i8, ptr %295, i64 1
  store ptr %add.ptr458, ptr @optarg, align 8
  br label %if.end498

if.else459:                                       ; preds = %if.then454
  %296 = load i32, ptr %print_errors, align 4
  %tobool460.not = icmp eq i32 %296, 0
  br i1 %tobool460.not, label %if.end465, label %if.then461

if.then461:                                       ; preds = %if.else459
  %297 = load ptr, ptr @__stderrp, align 8
  %298 = load ptr, ptr %argv.addr, align 8
  %299 = load ptr, ptr %298, align 8
  %300 = load ptr, ptr %pfound354, align 8
  %301 = load ptr, ptr %300, align 8
  %call464 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef nonnull @.str.12, ptr noundef %299, ptr noundef %301) #2
  br label %if.end465

if.end465:                                        ; preds = %if.then461, %if.else459
  %302 = load ptr, ptr @nextchar, align 8
  %call466 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %302) #2
  %303 = load ptr, ptr @nextchar, align 8
  %add.ptr467 = getelementptr inbounds i8, ptr %303, i64 %call466
  store ptr %add.ptr467, ptr @nextchar, align 8
  store i32 63, ptr %retval, align 4
  br label %return

if.else469:                                       ; preds = %if.then452
  %304 = load ptr, ptr %pfound354, align 8
  %has_arg470 = getelementptr inbounds %struct.option, ptr %304, i64 0, i32 1
  %305 = load i32, ptr %has_arg470, align 8
  %cmp471 = icmp eq i32 %305, 1
  br i1 %cmp471, label %if.then473, label %if.end498

if.then473:                                       ; preds = %if.else469
  %306 = load i32, ptr @optind, align 4
  %307 = load i32, ptr %argc.addr, align 4
  %cmp474 = icmp slt i32 %306, %307
  br i1 %cmp474, label %if.then476, label %if.else480

if.then476:                                       ; preds = %if.then473
  %308 = load ptr, ptr %argv.addr, align 8
  %309 = load i32, ptr @optind, align 4
  %inc477 = add nsw i32 %309, 1
  store i32 %inc477, ptr @optind, align 4
  %idxprom478 = sext i32 %309 to i64
  %arrayidx479 = getelementptr inbounds ptr, ptr %308, i64 %idxprom478
  %310 = load ptr, ptr %arrayidx479, align 8
  store ptr %310, ptr @optarg, align 8
  br label %if.end498

if.else480:                                       ; preds = %if.then473
  %311 = load i32, ptr %print_errors, align 4
  %tobool481.not = icmp eq i32 %311, 0
  br i1 %tobool481.not, label %if.end488, label %if.then482

if.then482:                                       ; preds = %if.else480
  %312 = load ptr, ptr @__stderrp, align 8
  %313 = load ptr, ptr %argv.addr, align 8
  %314 = load ptr, ptr %313, align 8
  %315 = load i32, ptr @optind, align 4
  %sub484 = add nsw i32 %315, -1
  %idxprom485 = sext i32 %sub484 to i64
  %arrayidx486 = getelementptr inbounds ptr, ptr %313, i64 %idxprom485
  %316 = load ptr, ptr %arrayidx486, align 8
  %call487 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.4, ptr noundef %314, ptr noundef %316) #2
  br label %if.end488

if.end488:                                        ; preds = %if.then482, %if.else480
  %317 = load ptr, ptr @nextchar, align 8
  %call489 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %317) #2
  %318 = load ptr, ptr @nextchar, align 8
  %add.ptr490 = getelementptr inbounds i8, ptr %318, i64 %call489
  store ptr %add.ptr490, ptr @nextchar, align 8
  %319 = load ptr, ptr %optstring.addr, align 8
  %320 = load i8, ptr %319, align 1
  %cmp493 = icmp eq i8 %320, 58
  %cond495 = select i1 %cmp493, i32 58, i32 63
  store i32 %cond495, ptr %retval, align 4
  br label %return

if.end498:                                        ; preds = %if.else469, %if.then476, %if.then457
  %321 = load ptr, ptr @nextchar, align 8
  %call499 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %321) #2
  %322 = load ptr, ptr @nextchar, align 8
  %add.ptr500 = getelementptr inbounds i8, ptr %322, i64 %call499
  store ptr %add.ptr500, ptr @nextchar, align 8
  %323 = load ptr, ptr %longind.addr, align 8
  %cmp501.not = icmp eq ptr %323, null
  br i1 %cmp501.not, label %if.end504, label %if.then503

if.then503:                                       ; preds = %if.end498
  %324 = load i32, ptr %option_index358, align 4
  %325 = load ptr, ptr %longind.addr, align 8
  store i32 %324, ptr %325, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.then503, %if.end498
  %326 = load ptr, ptr %pfound354, align 8
  %flag505 = getelementptr inbounds %struct.option, ptr %326, i64 0, i32 2
  %327 = load ptr, ptr %flag505, align 8
  %tobool506.not = icmp eq ptr %327, null
  br i1 %tobool506.not, label %if.end510, label %if.then507

if.then507:                                       ; preds = %if.end504
  %328 = load ptr, ptr %pfound354, align 8
  %val508 = getelementptr inbounds %struct.option, ptr %328, i64 0, i32 3
  %329 = load i32, ptr %val508, align 8
  %flag509 = getelementptr inbounds %struct.option, ptr %328, i64 0, i32 2
  %330 = load ptr, ptr %flag509, align 8
  store i32 %329, ptr %330, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end510:                                        ; preds = %if.end504
  %331 = load ptr, ptr %pfound354, align 8
  %val511 = getelementptr inbounds %struct.option, ptr %331, i64 0, i32 3
  %332 = load i32, ptr %val511, align 8
  store i32 %332, ptr %retval, align 4
  br label %return

if.end512:                                        ; preds = %if.end449
  store ptr null, ptr @nextchar, align 8
  store i32 87, ptr %retval, align 4
  br label %return

if.end513:                                        ; preds = %land.lhs.true346, %if.end341
  %333 = load ptr, ptr %temp, align 8
  %arrayidx514 = getelementptr inbounds i8, ptr %333, i64 1
  %334 = load i8, ptr %arrayidx514, align 1
  %cmp516 = icmp eq i8 %334, 58
  br i1 %cmp516, label %if.then518, label %if.end562

if.then518:                                       ; preds = %if.end513
  %335 = load ptr, ptr %temp, align 8
  %arrayidx519 = getelementptr inbounds i8, ptr %335, i64 2
  %336 = load i8, ptr %arrayidx519, align 1
  %cmp521 = icmp eq i8 %336, 58
  br i1 %cmp521, label %if.then523, label %if.else531

if.then523:                                       ; preds = %if.then518
  %337 = load ptr, ptr @nextchar, align 8
  %338 = load i8, ptr %337, align 1
  %cmp525.not = icmp eq i8 %338, 0
  br i1 %cmp525.not, label %if.else529, label %if.then527

if.then527:                                       ; preds = %if.then523
  %339 = load ptr, ptr @nextchar, align 8
  store ptr %339, ptr @optarg, align 8
  %340 = load i32, ptr @optind, align 4
  %inc528 = add nsw i32 %340, 1
  store i32 %inc528, ptr @optind, align 4
  br label %if.end561

if.else529:                                       ; preds = %if.then523
  store ptr null, ptr @optarg, align 8
  br label %if.end561

if.else531:                                       ; preds = %if.then518
  %341 = load ptr, ptr @nextchar, align 8
  %342 = load i8, ptr %341, align 1
  %cmp533.not = icmp eq i8 %342, 0
  br i1 %cmp533.not, label %if.else537, label %if.then535

if.then535:                                       ; preds = %if.else531
  %343 = load ptr, ptr @nextchar, align 8
  store ptr %343, ptr @optarg, align 8
  %344 = load i32, ptr @optind, align 4
  %inc536 = add nsw i32 %344, 1
  store i32 %inc536, ptr @optind, align 4
  br label %if.end561

if.else537:                                       ; preds = %if.else531
  %345 = load i32, ptr @optind, align 4
  %346 = load i32, ptr %argc.addr, align 4
  %cmp538 = icmp eq i32 %345, %346
  br i1 %cmp538, label %if.then540, label %if.else555

if.then540:                                       ; preds = %if.else537
  %347 = load i32, ptr %print_errors, align 4
  %tobool541.not = icmp eq i32 %347, 0
  br i1 %tobool541.not, label %if.end546, label %if.then542

if.then542:                                       ; preds = %if.then540
  %348 = load ptr, ptr @__stderrp, align 8
  %349 = load ptr, ptr %argv.addr, align 8
  %350 = load ptr, ptr %349, align 8
  %351 = load i8, ptr %c, align 1
  %conv544 = sext i8 %351 to i32
  %call545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %348, ptr noundef nonnull @.str.10, ptr noundef %350, i32 noundef %conv544) #2
  br label %if.end546

if.end546:                                        ; preds = %if.then542, %if.then540
  %352 = load i8, ptr %c, align 1
  %conv547 = sext i8 %352 to i32
  store i32 %conv547, ptr @optopt, align 4
  %353 = load ptr, ptr %optstring.addr, align 8
  %354 = load i8, ptr %353, align 1
  %cmp550 = icmp eq i8 %354, 58
  %.8 = select i1 %cmp550, i8 58, i8 63
  store i8 %.8, ptr %c, align 1
  br label %if.end561

if.else555:                                       ; preds = %if.else537
  %355 = load ptr, ptr %argv.addr, align 8
  %356 = load i32, ptr @optind, align 4
  %inc556 = add nsw i32 %356, 1
  store i32 %inc556, ptr @optind, align 4
  %idxprom557 = sext i32 %356 to i64
  %arrayidx558 = getelementptr inbounds ptr, ptr %355, i64 %idxprom557
  %357 = load ptr, ptr %arrayidx558, align 8
  store ptr %357, ptr @optarg, align 8
  br label %if.end561

if.end561:                                        ; preds = %if.then535, %if.else555, %if.end546, %if.then527, %if.else529
  store ptr null, ptr @nextchar, align 8
  br label %if.end562

if.end562:                                        ; preds = %if.end561, %if.end513
  %358 = load i8, ptr %c, align 1
  %conv563 = sext i8 %358 to i32
  store i32 %conv563, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end562, %if.end512, %if.end510, %if.then507, %if.end488, %if.end465, %if.end445, %if.end373, %if.end339, %if.end307, %if.end271, %if.then268, %if.end250, %if.end227, %if.end190, %if.end99, %if.then98, %if.end80
  %359 = load i32, ptr %retval, align 4
  ret i32 %359
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @_getopt_initialize(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring) #0 {
entry:
  %optstring.addr = alloca ptr, align 8
  store ptr %optstring, ptr %optstring.addr, align 8
  %0 = load i32, ptr @optind, align 4
  store i32 %0, ptr @last_nonopt, align 4
  store i32 %0, ptr @first_nonopt, align 4
  store ptr null, ptr @nextchar, align 8
  %call = call ptr @getenv(ptr noundef nonnull @.str.13) #2
  store ptr %call, ptr @posixly_correct, align 8
  %1 = load ptr, ptr %optstring.addr, align 8
  %2 = load i8, ptr %1, align 1
  %cmp = icmp eq i8 %2, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr @ordering, align 4
  %3 = load ptr, ptr %optstring.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr, ptr %optstring.addr, align 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %optstring.addr, align 8
  %5 = load i8, ptr %4, align 1
  %cmp4 = icmp eq i8 %5, 43
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  store i32 0, ptr @ordering, align 4
  %6 = load ptr, ptr %optstring.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr7, ptr %optstring.addr, align 8
  br label %if.end14

if.else8:                                         ; preds = %if.else
  %7 = load ptr, ptr @posixly_correct, align 8
  %cmp9.not = icmp eq ptr %7, null
  %. = select i1 %cmp9.not, i32 1, i32 0
  store i32 %., ptr @ordering, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.else8, %if.then
  %8 = load ptr, ptr %optstring.addr, align 8
  ret ptr %8
}

; Function Attrs: nounwind ssp uwtable
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
  %5 = load i32, ptr %middle, align 4
  %6 = load i32, ptr %bottom, align 4
  %cmp1 = icmp sgt i32 %5, %6
  %7 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %top, align 4
  %9 = load i32, ptr %middle, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32, ptr %bottom, align 4
  %sub2 = sub nsw i32 %9, %10
  %cmp3 = icmp sgt i32 %sub, %sub2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, ptr %middle, align 4
  %12 = load i32, ptr %bottom, align 4
  %sub4 = sub nsw i32 %11, %12
  store i32 %sub4, ptr %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then
  %storemerge1 = phi i32 [ 0, %if.then ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %13 = load i32, ptr %len, align 4
  %cmp5 = icmp slt i32 %storemerge1, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %argv.addr, align 8
  %15 = load i32, ptr %bottom, align 4
  %16 = load i32, ptr %i, align 4
  %add = add nsw i32 %15, %16
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  store ptr %17, ptr %tem, align 8
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %top, align 4
  %20 = load i32, ptr %middle, align 4
  %21 = load i32, ptr %bottom, align 4
  %sub6.neg = sub i32 %21, %20
  %sub7 = add i32 %sub6.neg, %19
  %22 = load i32, ptr %i, align 4
  %add8 = add nsw i32 %sub7, %22
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %18, i64 %idxprom9
  %23 = load ptr, ptr %arrayidx10, align 8
  %24 = load ptr, ptr %argv.addr, align 8
  %25 = load i32, ptr %bottom, align 4
  %26 = load i32, ptr %i, align 4
  %add11 = add nsw i32 %25, %26
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %24, i64 %idxprom12
  store ptr %23, ptr %arrayidx13, align 8
  %27 = load ptr, ptr %tem, align 8
  %28 = load ptr, ptr %argv.addr, align 8
  %29 = load i32, ptr %top, align 4
  %30 = load i32, ptr %middle, align 4
  %31 = load i32, ptr %bottom, align 4
  %sub14.neg = sub i32 %31, %30
  %sub15 = add i32 %sub14.neg, %29
  %32 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %sub15, %32
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %28, i64 %idxprom17
  store ptr %27, ptr %arrayidx18, align 8
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %len, align 4
  %35 = load i32, ptr %top, align 4
  %sub19 = sub nsw i32 %35, %34
  store i32 %sub19, ptr %top, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %36 = load i32, ptr %top, align 4
  %37 = load i32, ptr %middle, align 4
  %sub21 = sub nsw i32 %36, %37
  store i32 %sub21, ptr %len20, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.body25, %if.else
  %storemerge = phi i32 [ 0, %if.else ], [ %inc39, %for.body25 ]
  store i32 %storemerge, ptr %i22, align 4
  %38 = load i32, ptr %len20, align 4
  %cmp24 = icmp slt i32 %storemerge, %38
  br i1 %cmp24, label %for.body25, label %for.end40

for.body25:                                       ; preds = %for.cond23
  %39 = load ptr, ptr %argv.addr, align 8
  %40 = load i32, ptr %bottom, align 4
  %41 = load i32, ptr %i22, align 4
  %add26 = add nsw i32 %40, %41
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %39, i64 %idxprom27
  %42 = load ptr, ptr %arrayidx28, align 8
  store ptr %42, ptr %tem, align 8
  %43 = load ptr, ptr %argv.addr, align 8
  %44 = load i32, ptr %middle, align 4
  %45 = load i32, ptr %i22, align 4
  %add29 = add nsw i32 %44, %45
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %43, i64 %idxprom30
  %46 = load ptr, ptr %arrayidx31, align 8
  %47 = load ptr, ptr %argv.addr, align 8
  %48 = load i32, ptr %bottom, align 4
  %49 = load i32, ptr %i22, align 4
  %add32 = add nsw i32 %48, %49
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %47, i64 %idxprom33
  store ptr %46, ptr %arrayidx34, align 8
  %50 = load ptr, ptr %tem, align 8
  %51 = load ptr, ptr %argv.addr, align 8
  %52 = load i32, ptr %middle, align 4
  %53 = load i32, ptr %i22, align 4
  %add35 = add nsw i32 %52, %53
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %51, i64 %idxprom36
  store ptr %50, ptr %arrayidx37, align 8
  %54 = load i32, ptr %i22, align 4
  %inc39 = add nsw i32 %54, 1
  br label %for.cond23, !llvm.loop !13

for.end40:                                        ; preds = %for.cond23
  %55 = load i32, ptr %len20, align 4
  %56 = load i32, ptr %bottom, align 4
  %add41 = add nsw i32 %56, %55
  store i32 %add41, ptr %bottom, align 4
  br label %if.end

if.end:                                           ; preds = %for.end40, %for.end
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %57 = load i32, ptr @optind, align 4
  %58 = load i32, ptr @last_nonopt, align 4
  %sub42 = sub nsw i32 %57, %58
  %59 = load i32, ptr @first_nonopt, align 4
  %add43 = add nsw i32 %59, %sub42
  store i32 %add43, ptr @first_nonopt, align 4
  store i32 %57, ptr @last_nonopt, align 4
  ret void
}

declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal ptr @my_index(ptr noundef %str, i32 noundef %chr) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %chr.addr = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %chr, ptr %chr.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, ptr %chr.addr, align 4
  %cmp = icmp eq i32 %4, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %str.addr, align 8
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr, ptr %str.addr, align 8
  br label %while.cond, !llvm.loop !15

return:                                           ; preds = %while.cond, %if.then
  %storemerge = phi ptr [ %5, %if.then ], [ null, %while.cond ]
  ret ptr %storemerge
}

declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @strlen(ptr noundef) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring) #0 {
entry:
  %call = call i32 @_getopt_internal(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

declare ptr @getenv(...) #1

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
