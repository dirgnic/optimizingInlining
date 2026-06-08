; ModuleID = 'SingleSource/Benchmarks/Misc/evalloop.c'
source_filename = "SingleSource/Benchmarks/Misc/evalloop.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

@sum = global i32 0, align 4
@eval.dispatch = internal global [32 x ptr] [ptr blockaddress(@eval, %L0), ptr blockaddress(@eval, %L1), ptr blockaddress(@eval, %L2), ptr blockaddress(@eval, %L3), ptr blockaddress(@eval, %L4), ptr blockaddress(@eval, %L5), ptr blockaddress(@eval, %L6), ptr blockaddress(@eval, %L7), ptr blockaddress(@eval, %L8), ptr blockaddress(@eval, %L9), ptr blockaddress(@eval, %L10), ptr blockaddress(@eval, %L11), ptr blockaddress(@eval, %L12), ptr blockaddress(@eval, %L13), ptr blockaddress(@eval, %L14), ptr blockaddress(@eval, %L15), ptr blockaddress(@eval, %L16), ptr blockaddress(@eval, %L17), ptr blockaddress(@eval, %L18), ptr blockaddress(@eval, %L19), ptr blockaddress(@eval, %L20), ptr blockaddress(@eval, %L21), ptr blockaddress(@eval, %L22), ptr blockaddress(@eval, %L23), ptr blockaddress(@eval, %L24), ptr blockaddress(@eval, %L25), ptr blockaddress(@eval, %L26), ptr blockaddress(@eval, %L27), ptr blockaddress(@eval, %L28), ptr blockaddress(@eval, %L29), ptr blockaddress(@eval, %L30), ptr blockaddress(@eval, %L31)], align 8
@.str = private unnamed_addr constant [9 x i8] c"Sum: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @execute(i32 noundef %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4
  %0 = load i32, ptr %code.addr, align 4
  %1 = load i32, ptr @sum, align 4
  %add = add i32 %1, %0
  store i32 %add, ptr @sum, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @eval(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %opcode = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %opcode, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
    i32 4, label %sw.bb11
    i32 5, label %sw.bb15
    i32 6, label %sw.bb19
    i32 7, label %sw.bb23
    i32 8, label %sw.bb27
    i32 9, label %sw.bb31
    i32 10, label %sw.bb35
    i32 11, label %sw.bb39
    i32 12, label %sw.bb43
    i32 13, label %sw.bb47
    i32 14, label %sw.bb51
    i32 15, label %sw.bb55
    i32 16, label %sw.bb59
    i32 17, label %sw.bb63
    i32 18, label %sw.bb67
    i32 19, label %sw.bb71
    i32 20, label %sw.bb75
    i32 21, label %sw.bb79
    i32 22, label %sw.bb83
    i32 23, label %sw.bb87
    i32 24, label %sw.bb91
    i32 25, label %sw.bb95
    i32 26, label %sw.bb99
    i32 27, label %sw.bb103
    i32 28, label %sw.bb107
    i32 29, label %sw.bb111
    i32 30, label %sw.bb115
    i32 31, label %sw.bb119
  ]

L0:                                               ; preds = %indirectgoto
  store i32 0, ptr %opcode, align 4
  br label %sw.bb

sw.bb:                                            ; preds = %while.body, %L0
  ret void

indirectgoto:                                     ; preds = %sw.bb119, %sw.bb115, %sw.bb111, %sw.bb107, %sw.bb103, %sw.bb99, %sw.bb95, %sw.bb91, %sw.bb87, %sw.bb83, %sw.bb79, %sw.bb75, %sw.bb71, %sw.bb67, %sw.bb63, %sw.bb59, %sw.bb55, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb1
  %indirect.goto.dest = phi ptr [ %5, %sw.bb1 ], [ %9, %sw.bb3 ], [ %13, %sw.bb7 ], [ %17, %sw.bb11 ], [ %21, %sw.bb15 ], [ %25, %sw.bb19 ], [ %29, %sw.bb23 ], [ %33, %sw.bb27 ], [ %37, %sw.bb31 ], [ %41, %sw.bb35 ], [ %45, %sw.bb39 ], [ %49, %sw.bb43 ], [ %53, %sw.bb47 ], [ %57, %sw.bb51 ], [ %61, %sw.bb55 ], [ %65, %sw.bb59 ], [ %69, %sw.bb63 ], [ %73, %sw.bb67 ], [ %77, %sw.bb71 ], [ %81, %sw.bb75 ], [ %85, %sw.bb79 ], [ %89, %sw.bb83 ], [ %93, %sw.bb87 ], [ %97, %sw.bb91 ], [ %101, %sw.bb95 ], [ %105, %sw.bb99 ], [ %109, %sw.bb103 ], [ %113, %sw.bb107 ], [ %117, %sw.bb111 ], [ %121, %sw.bb115 ], [ %125, %sw.bb119 ]
  indirectbr ptr %indirect.goto.dest, [label %L0, label %L1, label %L2, label %L3, label %L4, label %L5, label %L6, label %L7, label %L8, label %L9, label %L10, label %L11, label %L12, label %L13, label %L14, label %L15, label %L16, label %L17, label %L18, label %L19, label %L20, label %L21, label %L22, label %L23, label %L24, label %L25, label %L26, label %L27, label %L28, label %L29, label %L30, label %L31]

L1:                                               ; preds = %indirectgoto
  store i32 1, ptr %opcode, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %while.body, %L1
  %2 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %incdec.ptr2 = getelementptr inbounds nuw i32, ptr %3, i32 1
  store ptr %incdec.ptr2, ptr %p.addr, align 8
  %4 = load i32, ptr %3, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  br label %indirectgoto

L2:                                               ; preds = %indirectgoto
  store i32 2, ptr %opcode, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %while.body, %L2
  %6 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %6)
  %7 = load ptr, ptr %p.addr, align 8
  %incdec.ptr4 = getelementptr inbounds nuw i32, ptr %7, i32 1
  store ptr %incdec.ptr4, ptr %p.addr, align 8
  %8 = load i32, ptr %7, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom5
  %9 = load ptr, ptr %arrayidx6, align 8
  br label %indirectgoto

L3:                                               ; preds = %indirectgoto
  store i32 3, ptr %opcode, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %while.body, %L3
  %10 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %10)
  %11 = load ptr, ptr %p.addr, align 8
  %incdec.ptr8 = getelementptr inbounds nuw i32, ptr %11, i32 1
  store ptr %incdec.ptr8, ptr %p.addr, align 8
  %12 = load i32, ptr %11, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom9
  %13 = load ptr, ptr %arrayidx10, align 8
  br label %indirectgoto

L4:                                               ; preds = %indirectgoto
  store i32 4, ptr %opcode, align 4
  br label %sw.bb11

sw.bb11:                                          ; preds = %while.body, %L4
  %14 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %14)
  %15 = load ptr, ptr %p.addr, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i32, ptr %15, i32 1
  store ptr %incdec.ptr12, ptr %p.addr, align 8
  %16 = load i32, ptr %15, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom13
  %17 = load ptr, ptr %arrayidx14, align 8
  br label %indirectgoto

L5:                                               ; preds = %indirectgoto
  store i32 5, ptr %opcode, align 4
  br label %sw.bb15

sw.bb15:                                          ; preds = %while.body, %L5
  %18 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %18)
  %19 = load ptr, ptr %p.addr, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i32, ptr %19, i32 1
  store ptr %incdec.ptr16, ptr %p.addr, align 8
  %20 = load i32, ptr %19, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom17
  %21 = load ptr, ptr %arrayidx18, align 8
  br label %indirectgoto

L6:                                               ; preds = %indirectgoto
  store i32 6, ptr %opcode, align 4
  br label %sw.bb19

sw.bb19:                                          ; preds = %while.body, %L6
  %22 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %22)
  %23 = load ptr, ptr %p.addr, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i32, ptr %23, i32 1
  store ptr %incdec.ptr20, ptr %p.addr, align 8
  %24 = load i32, ptr %23, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom21
  %25 = load ptr, ptr %arrayidx22, align 8
  br label %indirectgoto

L7:                                               ; preds = %indirectgoto
  store i32 7, ptr %opcode, align 4
  br label %sw.bb23

sw.bb23:                                          ; preds = %while.body, %L7
  %26 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %26)
  %27 = load ptr, ptr %p.addr, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i32, ptr %27, i32 1
  store ptr %incdec.ptr24, ptr %p.addr, align 8
  %28 = load i32, ptr %27, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom25
  %29 = load ptr, ptr %arrayidx26, align 8
  br label %indirectgoto

L8:                                               ; preds = %indirectgoto
  store i32 8, ptr %opcode, align 4
  br label %sw.bb27

sw.bb27:                                          ; preds = %while.body, %L8
  %30 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %30)
  %31 = load ptr, ptr %p.addr, align 8
  %incdec.ptr28 = getelementptr inbounds nuw i32, ptr %31, i32 1
  store ptr %incdec.ptr28, ptr %p.addr, align 8
  %32 = load i32, ptr %31, align 4
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom29
  %33 = load ptr, ptr %arrayidx30, align 8
  br label %indirectgoto

L9:                                               ; preds = %indirectgoto
  store i32 9, ptr %opcode, align 4
  br label %sw.bb31

sw.bb31:                                          ; preds = %while.body, %L9
  %34 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %34)
  %35 = load ptr, ptr %p.addr, align 8
  %incdec.ptr32 = getelementptr inbounds nuw i32, ptr %35, i32 1
  store ptr %incdec.ptr32, ptr %p.addr, align 8
  %36 = load i32, ptr %35, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom33
  %37 = load ptr, ptr %arrayidx34, align 8
  br label %indirectgoto

L10:                                              ; preds = %indirectgoto
  store i32 10, ptr %opcode, align 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %while.body, %L10
  %38 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %38)
  %39 = load ptr, ptr %p.addr, align 8
  %incdec.ptr36 = getelementptr inbounds nuw i32, ptr %39, i32 1
  store ptr %incdec.ptr36, ptr %p.addr, align 8
  %40 = load i32, ptr %39, align 4
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom37
  %41 = load ptr, ptr %arrayidx38, align 8
  br label %indirectgoto

L11:                                              ; preds = %indirectgoto
  store i32 11, ptr %opcode, align 4
  br label %sw.bb39

sw.bb39:                                          ; preds = %while.body, %L11
  %42 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %42)
  %43 = load ptr, ptr %p.addr, align 8
  %incdec.ptr40 = getelementptr inbounds nuw i32, ptr %43, i32 1
  store ptr %incdec.ptr40, ptr %p.addr, align 8
  %44 = load i32, ptr %43, align 4
  %idxprom41 = sext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom41
  %45 = load ptr, ptr %arrayidx42, align 8
  br label %indirectgoto

L12:                                              ; preds = %indirectgoto
  store i32 12, ptr %opcode, align 4
  br label %sw.bb43

sw.bb43:                                          ; preds = %while.body, %L12
  %46 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %46)
  %47 = load ptr, ptr %p.addr, align 8
  %incdec.ptr44 = getelementptr inbounds nuw i32, ptr %47, i32 1
  store ptr %incdec.ptr44, ptr %p.addr, align 8
  %48 = load i32, ptr %47, align 4
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom45
  %49 = load ptr, ptr %arrayidx46, align 8
  br label %indirectgoto

L13:                                              ; preds = %indirectgoto
  store i32 13, ptr %opcode, align 4
  br label %sw.bb47

sw.bb47:                                          ; preds = %while.body, %L13
  %50 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %50)
  %51 = load ptr, ptr %p.addr, align 8
  %incdec.ptr48 = getelementptr inbounds nuw i32, ptr %51, i32 1
  store ptr %incdec.ptr48, ptr %p.addr, align 8
  %52 = load i32, ptr %51, align 4
  %idxprom49 = sext i32 %52 to i64
  %arrayidx50 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom49
  %53 = load ptr, ptr %arrayidx50, align 8
  br label %indirectgoto

L14:                                              ; preds = %indirectgoto
  store i32 14, ptr %opcode, align 4
  br label %sw.bb51

sw.bb51:                                          ; preds = %while.body, %L14
  %54 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %54)
  %55 = load ptr, ptr %p.addr, align 8
  %incdec.ptr52 = getelementptr inbounds nuw i32, ptr %55, i32 1
  store ptr %incdec.ptr52, ptr %p.addr, align 8
  %56 = load i32, ptr %55, align 4
  %idxprom53 = sext i32 %56 to i64
  %arrayidx54 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom53
  %57 = load ptr, ptr %arrayidx54, align 8
  br label %indirectgoto

L15:                                              ; preds = %indirectgoto
  store i32 15, ptr %opcode, align 4
  br label %sw.bb55

sw.bb55:                                          ; preds = %while.body, %L15
  %58 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %58)
  %59 = load ptr, ptr %p.addr, align 8
  %incdec.ptr56 = getelementptr inbounds nuw i32, ptr %59, i32 1
  store ptr %incdec.ptr56, ptr %p.addr, align 8
  %60 = load i32, ptr %59, align 4
  %idxprom57 = sext i32 %60 to i64
  %arrayidx58 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom57
  %61 = load ptr, ptr %arrayidx58, align 8
  br label %indirectgoto

L16:                                              ; preds = %indirectgoto
  store i32 16, ptr %opcode, align 4
  br label %sw.bb59

sw.bb59:                                          ; preds = %while.body, %L16
  %62 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %62)
  %63 = load ptr, ptr %p.addr, align 8
  %incdec.ptr60 = getelementptr inbounds nuw i32, ptr %63, i32 1
  store ptr %incdec.ptr60, ptr %p.addr, align 8
  %64 = load i32, ptr %63, align 4
  %idxprom61 = sext i32 %64 to i64
  %arrayidx62 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom61
  %65 = load ptr, ptr %arrayidx62, align 8
  br label %indirectgoto

L17:                                              ; preds = %indirectgoto
  store i32 17, ptr %opcode, align 4
  br label %sw.bb63

sw.bb63:                                          ; preds = %while.body, %L17
  %66 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %66)
  %67 = load ptr, ptr %p.addr, align 8
  %incdec.ptr64 = getelementptr inbounds nuw i32, ptr %67, i32 1
  store ptr %incdec.ptr64, ptr %p.addr, align 8
  %68 = load i32, ptr %67, align 4
  %idxprom65 = sext i32 %68 to i64
  %arrayidx66 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom65
  %69 = load ptr, ptr %arrayidx66, align 8
  br label %indirectgoto

L18:                                              ; preds = %indirectgoto
  store i32 18, ptr %opcode, align 4
  br label %sw.bb67

sw.bb67:                                          ; preds = %while.body, %L18
  %70 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %70)
  %71 = load ptr, ptr %p.addr, align 8
  %incdec.ptr68 = getelementptr inbounds nuw i32, ptr %71, i32 1
  store ptr %incdec.ptr68, ptr %p.addr, align 8
  %72 = load i32, ptr %71, align 4
  %idxprom69 = sext i32 %72 to i64
  %arrayidx70 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom69
  %73 = load ptr, ptr %arrayidx70, align 8
  br label %indirectgoto

L19:                                              ; preds = %indirectgoto
  store i32 19, ptr %opcode, align 4
  br label %sw.bb71

sw.bb71:                                          ; preds = %while.body, %L19
  %74 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %74)
  %75 = load ptr, ptr %p.addr, align 8
  %incdec.ptr72 = getelementptr inbounds nuw i32, ptr %75, i32 1
  store ptr %incdec.ptr72, ptr %p.addr, align 8
  %76 = load i32, ptr %75, align 4
  %idxprom73 = sext i32 %76 to i64
  %arrayidx74 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom73
  %77 = load ptr, ptr %arrayidx74, align 8
  br label %indirectgoto

L20:                                              ; preds = %indirectgoto
  store i32 20, ptr %opcode, align 4
  br label %sw.bb75

sw.bb75:                                          ; preds = %while.body, %L20
  %78 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %78)
  %79 = load ptr, ptr %p.addr, align 8
  %incdec.ptr76 = getelementptr inbounds nuw i32, ptr %79, i32 1
  store ptr %incdec.ptr76, ptr %p.addr, align 8
  %80 = load i32, ptr %79, align 4
  %idxprom77 = sext i32 %80 to i64
  %arrayidx78 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom77
  %81 = load ptr, ptr %arrayidx78, align 8
  br label %indirectgoto

L21:                                              ; preds = %indirectgoto
  store i32 21, ptr %opcode, align 4
  br label %sw.bb79

sw.bb79:                                          ; preds = %while.body, %L21
  %82 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %82)
  %83 = load ptr, ptr %p.addr, align 8
  %incdec.ptr80 = getelementptr inbounds nuw i32, ptr %83, i32 1
  store ptr %incdec.ptr80, ptr %p.addr, align 8
  %84 = load i32, ptr %83, align 4
  %idxprom81 = sext i32 %84 to i64
  %arrayidx82 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom81
  %85 = load ptr, ptr %arrayidx82, align 8
  br label %indirectgoto

L22:                                              ; preds = %indirectgoto
  store i32 22, ptr %opcode, align 4
  br label %sw.bb83

sw.bb83:                                          ; preds = %while.body, %L22
  %86 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %86)
  %87 = load ptr, ptr %p.addr, align 8
  %incdec.ptr84 = getelementptr inbounds nuw i32, ptr %87, i32 1
  store ptr %incdec.ptr84, ptr %p.addr, align 8
  %88 = load i32, ptr %87, align 4
  %idxprom85 = sext i32 %88 to i64
  %arrayidx86 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom85
  %89 = load ptr, ptr %arrayidx86, align 8
  br label %indirectgoto

L23:                                              ; preds = %indirectgoto
  store i32 23, ptr %opcode, align 4
  br label %sw.bb87

sw.bb87:                                          ; preds = %while.body, %L23
  %90 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %90)
  %91 = load ptr, ptr %p.addr, align 8
  %incdec.ptr88 = getelementptr inbounds nuw i32, ptr %91, i32 1
  store ptr %incdec.ptr88, ptr %p.addr, align 8
  %92 = load i32, ptr %91, align 4
  %idxprom89 = sext i32 %92 to i64
  %arrayidx90 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom89
  %93 = load ptr, ptr %arrayidx90, align 8
  br label %indirectgoto

L24:                                              ; preds = %indirectgoto
  store i32 24, ptr %opcode, align 4
  br label %sw.bb91

sw.bb91:                                          ; preds = %while.body, %L24
  %94 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %94)
  %95 = load ptr, ptr %p.addr, align 8
  %incdec.ptr92 = getelementptr inbounds nuw i32, ptr %95, i32 1
  store ptr %incdec.ptr92, ptr %p.addr, align 8
  %96 = load i32, ptr %95, align 4
  %idxprom93 = sext i32 %96 to i64
  %arrayidx94 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom93
  %97 = load ptr, ptr %arrayidx94, align 8
  br label %indirectgoto

L25:                                              ; preds = %indirectgoto
  store i32 25, ptr %opcode, align 4
  br label %sw.bb95

sw.bb95:                                          ; preds = %while.body, %L25
  %98 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %98)
  %99 = load ptr, ptr %p.addr, align 8
  %incdec.ptr96 = getelementptr inbounds nuw i32, ptr %99, i32 1
  store ptr %incdec.ptr96, ptr %p.addr, align 8
  %100 = load i32, ptr %99, align 4
  %idxprom97 = sext i32 %100 to i64
  %arrayidx98 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom97
  %101 = load ptr, ptr %arrayidx98, align 8
  br label %indirectgoto

L26:                                              ; preds = %indirectgoto
  store i32 26, ptr %opcode, align 4
  br label %sw.bb99

sw.bb99:                                          ; preds = %while.body, %L26
  %102 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %102)
  %103 = load ptr, ptr %p.addr, align 8
  %incdec.ptr100 = getelementptr inbounds nuw i32, ptr %103, i32 1
  store ptr %incdec.ptr100, ptr %p.addr, align 8
  %104 = load i32, ptr %103, align 4
  %idxprom101 = sext i32 %104 to i64
  %arrayidx102 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom101
  %105 = load ptr, ptr %arrayidx102, align 8
  br label %indirectgoto

L27:                                              ; preds = %indirectgoto
  store i32 27, ptr %opcode, align 4
  br label %sw.bb103

sw.bb103:                                         ; preds = %while.body, %L27
  %106 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %106)
  %107 = load ptr, ptr %p.addr, align 8
  %incdec.ptr104 = getelementptr inbounds nuw i32, ptr %107, i32 1
  store ptr %incdec.ptr104, ptr %p.addr, align 8
  %108 = load i32, ptr %107, align 4
  %idxprom105 = sext i32 %108 to i64
  %arrayidx106 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom105
  %109 = load ptr, ptr %arrayidx106, align 8
  br label %indirectgoto

L28:                                              ; preds = %indirectgoto
  store i32 28, ptr %opcode, align 4
  br label %sw.bb107

sw.bb107:                                         ; preds = %while.body, %L28
  %110 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %110)
  %111 = load ptr, ptr %p.addr, align 8
  %incdec.ptr108 = getelementptr inbounds nuw i32, ptr %111, i32 1
  store ptr %incdec.ptr108, ptr %p.addr, align 8
  %112 = load i32, ptr %111, align 4
  %idxprom109 = sext i32 %112 to i64
  %arrayidx110 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom109
  %113 = load ptr, ptr %arrayidx110, align 8
  br label %indirectgoto

L29:                                              ; preds = %indirectgoto
  store i32 29, ptr %opcode, align 4
  br label %sw.bb111

sw.bb111:                                         ; preds = %while.body, %L29
  %114 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %114)
  %115 = load ptr, ptr %p.addr, align 8
  %incdec.ptr112 = getelementptr inbounds nuw i32, ptr %115, i32 1
  store ptr %incdec.ptr112, ptr %p.addr, align 8
  %116 = load i32, ptr %115, align 4
  %idxprom113 = sext i32 %116 to i64
  %arrayidx114 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom113
  %117 = load ptr, ptr %arrayidx114, align 8
  br label %indirectgoto

L30:                                              ; preds = %indirectgoto
  store i32 30, ptr %opcode, align 4
  br label %sw.bb115

sw.bb115:                                         ; preds = %while.body, %L30
  %118 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %118)
  %119 = load ptr, ptr %p.addr, align 8
  %incdec.ptr116 = getelementptr inbounds nuw i32, ptr %119, i32 1
  store ptr %incdec.ptr116, ptr %p.addr, align 8
  %120 = load i32, ptr %119, align 4
  %idxprom117 = sext i32 %120 to i64
  %arrayidx118 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom117
  %121 = load ptr, ptr %arrayidx118, align 8
  br label %indirectgoto

L31:                                              ; preds = %indirectgoto
  store i32 31, ptr %opcode, align 4
  br label %sw.bb119

sw.bb119:                                         ; preds = %while.body, %L31
  %122 = load i32, ptr %opcode, align 4
  call void @execute(i32 noundef %122)
  %123 = load ptr, ptr %p.addr, align 8
  %incdec.ptr120 = getelementptr inbounds nuw i32, ptr %123, i32 1
  store ptr %incdec.ptr120, ptr %p.addr, align 8
  %124 = load i32, ptr %123, align 4
  %idxprom121 = sext i32 %124 to i64
  %arrayidx122 = getelementptr inbounds [32 x ptr], ptr @eval.dispatch, i64 0, i64 %idxprom121
  %125 = load ptr, ptr %arrayidx122, align 8
  br label %indirectgoto

sw.epilog:                                        ; preds = %while.body
  br label %while.body
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %BUFSIZE = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 2048, ptr %BUFSIZE, align 4
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca i32, i64 2048, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 2047
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %rem = srem i32 %2, 31
  %add = add nsw i32 %rem, 1
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds i32, ptr %vla, i64 2047
  store i32 0, ptr %arrayidx1, align 4
  store i32 0, ptr %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc6, %for.end
  %5 = load i32, ptr %i2, align 4
  %cmp4 = icmp slt i32 %5, 100000
  br i1 %cmp4, label %for.body5, label %for.end8

for.body5:                                        ; preds = %for.cond3
  call void @eval(ptr noundef %vla)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body5
  %6 = load i32, ptr %i2, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, ptr %i2, align 4
  br label %for.cond3, !llvm.loop !8

for.end8:                                         ; preds = %for.cond3
  %7 = load i32, ptr @sum, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  store i32 0, ptr %retval, align 4
  %8 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %8)
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+ccpp,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Homebrew clang version 20.1.5"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
