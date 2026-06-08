; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/infcodes.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/infcodes.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_codes_state = type { i32, i32, %union.anon, i8, i8, ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.inflate_blocks_state = type { i32, %union.anon.3, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, ptr, i32, ptr }
%struct.anon.5 = type { ptr }
%struct.inflate_huft_s = type { %union.anon.0, i32 }
%union.anon.0 = type { i32 }
%struct.anon.1 = type { i8, i8 }
%struct.anon.2 = type { i32, i32 }

@inflate_mask = external global [17 x i32], align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define ptr @inflate_codes_new(i32 noundef %bl, i32 noundef %bd, ptr noundef %tl, ptr noundef %td, ptr noundef %z) #0 {
entry:
  %bl.addr = alloca i32, align 4
  %bd.addr = alloca i32, align 4
  %tl.addr = alloca ptr, align 8
  %td.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  store i32 %bl, ptr %bl.addr, align 4
  store i32 %bd, ptr %bd.addr, align 4
  store ptr %tl, ptr %tl.addr, align 8
  store ptr %td, ptr %td.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %zalloc, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %opaque, align 8
  %call = call ptr %1(ptr noundef %3, i32 noundef 1, i32 noundef 48)
  store ptr %call, ptr %c, align 8
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %c, align 8
  %mode = getelementptr inbounds %struct.inflate_codes_state, ptr %4, i32 0, i32 0
  store i32 0, ptr %mode, align 8
  %5 = load i32, ptr %bl.addr, align 4
  %conv = trunc i32 %5 to i8
  %6 = load ptr, ptr %c, align 8
  %lbits = getelementptr inbounds %struct.inflate_codes_state, ptr %6, i32 0, i32 3
  store i8 %conv, ptr %lbits, align 8
  %7 = load i32, ptr %bd.addr, align 4
  %conv1 = trunc i32 %7 to i8
  %8 = load ptr, ptr %c, align 8
  %dbits = getelementptr inbounds %struct.inflate_codes_state, ptr %8, i32 0, i32 4
  store i8 %conv1, ptr %dbits, align 1
  %9 = load ptr, ptr %tl.addr, align 8
  %10 = load ptr, ptr %c, align 8
  %ltree = getelementptr inbounds %struct.inflate_codes_state, ptr %10, i32 0, i32 5
  store ptr %9, ptr %ltree, align 8
  %11 = load ptr, ptr %td.addr, align 8
  %12 = load ptr, ptr %c, align 8
  %dtree = getelementptr inbounds %struct.inflate_codes_state, ptr %12, i32 0, i32 6
  store ptr %11, ptr %dtree, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %c, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflate_codes(ptr noundef %s, ptr noundef %z, i32 noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca ptr, align 8
  %e = alloca i32, align 4
  %b = alloca i64, align 8
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %q = alloca ptr, align 8
  %m = alloca i32, align 4
  %f = alloca ptr, align 8
  %c = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %r, ptr %r.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %sub = getelementptr inbounds %struct.inflate_blocks_state, ptr %0, i32 0, i32 1
  %codes = getelementptr inbounds %struct.anon.5, ptr %sub, i32 0, i32 0
  %1 = load ptr, ptr %codes, align 8
  store ptr %1, ptr %c, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_in, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %avail_in, align 8
  store i32 %5, ptr %n, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, ptr %6, i32 0, i32 4
  %7 = load i64, ptr %bitb, align 8
  store i64 %7, ptr %b, align 8
  %8 = load ptr, ptr %s.addr, align 8
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %bitk, align 4
  store i32 %9, ptr %k, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %write, align 8
  store ptr %11, ptr %q, align 8
  %12 = load ptr, ptr %q, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %read, align 8
  %cmp = icmp ult ptr %12, %14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %15 = load ptr, ptr %s.addr, align 8
  %read1 = getelementptr inbounds %struct.inflate_blocks_state, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %read1, align 8
  %17 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub2 = sub nsw i64 %sub.ptr.sub, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = load ptr, ptr %s.addr, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %end, align 8
  %20 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast3 = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast4 = ptrtoint ptr %20 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub2, %cond.true ], [ %sub.ptr.sub5, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, ptr %m, align 4
  br label %while.body

while.body:                                       ; preds = %cond.end, %sw.epilog
  %21 = load ptr, ptr %c, align 8
  %mode = getelementptr inbounds %struct.inflate_codes_state, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %mode, align 8
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
    i32 2, label %sw.bb135
    i32 3, label %sw.bb183
    i32 4, label %sw.bb270
    i32 5, label %sw.bb312
    i32 6, label %sw.bb457
    i32 7, label %sw.bb563
    i32 8, label %sw.bb609
    i32 9, label %sw.bb622
  ]

sw.bb:                                            ; preds = %while.body
  %23 = load i32, ptr %m, align 4
  %cmp6 = icmp uge i32 %23, 258
  br i1 %cmp6, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %sw.bb
  %24 = load i32, ptr %n, align 4
  %cmp8 = icmp uge i32 %24, 10
  br i1 %cmp8, label %if.then, label %if.end50

if.then:                                          ; preds = %land.lhs.true
  %25 = load i64, ptr %b, align 8
  %26 = load ptr, ptr %s.addr, align 8
  %bitb10 = getelementptr inbounds %struct.inflate_blocks_state, ptr %26, i32 0, i32 4
  store i64 %25, ptr %bitb10, align 8
  %27 = load i32, ptr %k, align 4
  %28 = load ptr, ptr %s.addr, align 8
  %bitk11 = getelementptr inbounds %struct.inflate_blocks_state, ptr %28, i32 0, i32 3
  store i32 %27, ptr %bitk11, align 4
  %29 = load i32, ptr %n, align 4
  %30 = load ptr, ptr %z.addr, align 8
  %avail_in12 = getelementptr inbounds %struct.z_stream_s, ptr %30, i32 0, i32 1
  store i32 %29, ptr %avail_in12, align 8
  %31 = load ptr, ptr %p, align 8
  %32 = load ptr, ptr %z.addr, align 8
  %next_in13 = getelementptr inbounds %struct.z_stream_s, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %next_in13, align 8
  %sub.ptr.lhs.cast14 = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast15 = ptrtoint ptr %33 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %34 = load ptr, ptr %z.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %34, i32 0, i32 2
  %35 = load i64, ptr %total_in, align 8
  %add = add i64 %35, %sub.ptr.sub16
  store i64 %add, ptr %total_in, align 8
  %36 = load ptr, ptr %p, align 8
  %37 = load ptr, ptr %z.addr, align 8
  %next_in17 = getelementptr inbounds %struct.z_stream_s, ptr %37, i32 0, i32 0
  store ptr %36, ptr %next_in17, align 8
  %38 = load ptr, ptr %q, align 8
  %39 = load ptr, ptr %s.addr, align 8
  %write18 = getelementptr inbounds %struct.inflate_blocks_state, ptr %39, i32 0, i32 9
  store ptr %38, ptr %write18, align 8
  %40 = load ptr, ptr %c, align 8
  %lbits = getelementptr inbounds %struct.inflate_codes_state, ptr %40, i32 0, i32 3
  %41 = load i8, ptr %lbits, align 8
  %conv19 = zext i8 %41 to i32
  %42 = load ptr, ptr %c, align 8
  %dbits = getelementptr inbounds %struct.inflate_codes_state, ptr %42, i32 0, i32 4
  %43 = load i8, ptr %dbits, align 1
  %conv20 = zext i8 %43 to i32
  %44 = load ptr, ptr %c, align 8
  %ltree = getelementptr inbounds %struct.inflate_codes_state, ptr %44, i32 0, i32 5
  %45 = load ptr, ptr %ltree, align 8
  %46 = load ptr, ptr %c, align 8
  %dtree = getelementptr inbounds %struct.inflate_codes_state, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %dtree, align 8
  %48 = load ptr, ptr %s.addr, align 8
  %49 = load ptr, ptr %z.addr, align 8
  %call = call i32 @inflate_fast(i32 noundef %conv19, i32 noundef %conv20, ptr noundef %45, ptr noundef %47, ptr noundef %48, ptr noundef %49)
  store i32 %call, ptr %r.addr, align 4
  %50 = load ptr, ptr %z.addr, align 8
  %next_in21 = getelementptr inbounds %struct.z_stream_s, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %next_in21, align 8
  store ptr %51, ptr %p, align 8
  %52 = load ptr, ptr %z.addr, align 8
  %avail_in22 = getelementptr inbounds %struct.z_stream_s, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %avail_in22, align 8
  store i32 %53, ptr %n, align 4
  %54 = load ptr, ptr %s.addr, align 8
  %bitb23 = getelementptr inbounds %struct.inflate_blocks_state, ptr %54, i32 0, i32 4
  %55 = load i64, ptr %bitb23, align 8
  store i64 %55, ptr %b, align 8
  %56 = load ptr, ptr %s.addr, align 8
  %bitk24 = getelementptr inbounds %struct.inflate_blocks_state, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %bitk24, align 4
  store i32 %57, ptr %k, align 4
  %58 = load ptr, ptr %s.addr, align 8
  %write25 = getelementptr inbounds %struct.inflate_blocks_state, ptr %58, i32 0, i32 9
  %59 = load ptr, ptr %write25, align 8
  store ptr %59, ptr %q, align 8
  %60 = load ptr, ptr %q, align 8
  %61 = load ptr, ptr %s.addr, align 8
  %read26 = getelementptr inbounds %struct.inflate_blocks_state, ptr %61, i32 0, i32 8
  %62 = load ptr, ptr %read26, align 8
  %cmp27 = icmp ult ptr %60, %62
  br i1 %cmp27, label %cond.true29, label %cond.false35

cond.true29:                                      ; preds = %if.then
  %63 = load ptr, ptr %s.addr, align 8
  %read30 = getelementptr inbounds %struct.inflate_blocks_state, ptr %63, i32 0, i32 8
  %64 = load ptr, ptr %read30, align 8
  %65 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast31 = ptrtoint ptr %64 to i64
  %sub.ptr.rhs.cast32 = ptrtoint ptr %65 to i64
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32
  %sub34 = sub nsw i64 %sub.ptr.sub33, 1
  br label %cond.end40

cond.false35:                                     ; preds = %if.then
  %66 = load ptr, ptr %s.addr, align 8
  %end36 = getelementptr inbounds %struct.inflate_blocks_state, ptr %66, i32 0, i32 7
  %67 = load ptr, ptr %end36, align 8
  %68 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast37 = ptrtoint ptr %67 to i64
  %sub.ptr.rhs.cast38 = ptrtoint ptr %68 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false35, %cond.true29
  %cond41 = phi i64 [ %sub34, %cond.true29 ], [ %sub.ptr.sub39, %cond.false35 ]
  %conv42 = trunc i64 %cond41 to i32
  store i32 %conv42, ptr %m, align 4
  %69 = load i32, ptr %r.addr, align 4
  %cmp43 = icmp ne i32 %69, 0
  br i1 %cmp43, label %if.then45, label %if.end

if.then45:                                        ; preds = %cond.end40
  %70 = load i32, ptr %r.addr, align 4
  %cmp46 = icmp eq i32 %70, 1
  %71 = zext i1 %cmp46 to i64
  %cond48 = select i1 %cmp46, i32 7, i32 9
  %72 = load ptr, ptr %c, align 8
  %mode49 = getelementptr inbounds %struct.inflate_codes_state, ptr %72, i32 0, i32 0
  store i32 %cond48, ptr %mode49, align 8
  br label %sw.epilog

if.end:                                           ; preds = %cond.end40
  br label %if.end50

if.end50:                                         ; preds = %if.end, %land.lhs.true, %sw.bb
  %73 = load ptr, ptr %c, align 8
  %lbits51 = getelementptr inbounds %struct.inflate_codes_state, ptr %73, i32 0, i32 3
  %74 = load i8, ptr %lbits51, align 8
  %conv52 = zext i8 %74 to i32
  %75 = load ptr, ptr %c, align 8
  %sub53 = getelementptr inbounds %struct.inflate_codes_state, ptr %75, i32 0, i32 2
  %need = getelementptr inbounds %struct.anon, ptr %sub53, i32 0, i32 1
  store i32 %conv52, ptr %need, align 8
  %76 = load ptr, ptr %c, align 8
  %ltree54 = getelementptr inbounds %struct.inflate_codes_state, ptr %76, i32 0, i32 5
  %77 = load ptr, ptr %ltree54, align 8
  %78 = load ptr, ptr %c, align 8
  %sub55 = getelementptr inbounds %struct.inflate_codes_state, ptr %78, i32 0, i32 2
  %tree = getelementptr inbounds %struct.anon, ptr %sub55, i32 0, i32 0
  store ptr %77, ptr %tree, align 8
  %79 = load ptr, ptr %c, align 8
  %mode56 = getelementptr inbounds %struct.inflate_codes_state, ptr %79, i32 0, i32 0
  store i32 1, ptr %mode56, align 8
  br label %sw.bb57

sw.bb57:                                          ; preds = %while.body, %if.end50
  %80 = load ptr, ptr %c, align 8
  %sub58 = getelementptr inbounds %struct.inflate_codes_state, ptr %80, i32 0, i32 2
  %need59 = getelementptr inbounds %struct.anon, ptr %sub58, i32 0, i32 1
  %81 = load i32, ptr %need59, align 8
  store i32 %81, ptr %j, align 4
  br label %while.cond60

while.cond60:                                     ; preds = %if.end77, %sw.bb57
  %82 = load i32, ptr %k, align 4
  %83 = load i32, ptr %j, align 4
  %cmp61 = icmp ult i32 %82, %83
  br i1 %cmp61, label %while.body63, label %while.end

while.body63:                                     ; preds = %while.cond60
  %84 = load i32, ptr %n, align 4
  %tobool = icmp ne i32 %84, 0
  br i1 %tobool, label %if.then64, label %if.else

if.then64:                                        ; preds = %while.body63
  store i32 0, ptr %r.addr, align 4
  br label %if.end77

if.else:                                          ; preds = %while.body63
  %85 = load i64, ptr %b, align 8
  %86 = load ptr, ptr %s.addr, align 8
  %bitb65 = getelementptr inbounds %struct.inflate_blocks_state, ptr %86, i32 0, i32 4
  store i64 %85, ptr %bitb65, align 8
  %87 = load i32, ptr %k, align 4
  %88 = load ptr, ptr %s.addr, align 8
  %bitk66 = getelementptr inbounds %struct.inflate_blocks_state, ptr %88, i32 0, i32 3
  store i32 %87, ptr %bitk66, align 4
  %89 = load i32, ptr %n, align 4
  %90 = load ptr, ptr %z.addr, align 8
  %avail_in67 = getelementptr inbounds %struct.z_stream_s, ptr %90, i32 0, i32 1
  store i32 %89, ptr %avail_in67, align 8
  %91 = load ptr, ptr %p, align 8
  %92 = load ptr, ptr %z.addr, align 8
  %next_in68 = getelementptr inbounds %struct.z_stream_s, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %next_in68, align 8
  %sub.ptr.lhs.cast69 = ptrtoint ptr %91 to i64
  %sub.ptr.rhs.cast70 = ptrtoint ptr %93 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %94 = load ptr, ptr %z.addr, align 8
  %total_in72 = getelementptr inbounds %struct.z_stream_s, ptr %94, i32 0, i32 2
  %95 = load i64, ptr %total_in72, align 8
  %add73 = add i64 %95, %sub.ptr.sub71
  store i64 %add73, ptr %total_in72, align 8
  %96 = load ptr, ptr %p, align 8
  %97 = load ptr, ptr %z.addr, align 8
  %next_in74 = getelementptr inbounds %struct.z_stream_s, ptr %97, i32 0, i32 0
  store ptr %96, ptr %next_in74, align 8
  %98 = load ptr, ptr %q, align 8
  %99 = load ptr, ptr %s.addr, align 8
  %write75 = getelementptr inbounds %struct.inflate_blocks_state, ptr %99, i32 0, i32 9
  store ptr %98, ptr %write75, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %101 = load ptr, ptr %z.addr, align 8
  %102 = load i32, ptr %r.addr, align 4
  %call76 = call i32 @inflate_flush(ptr noundef %100, ptr noundef %101, i32 noundef %102)
  store i32 %call76, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.then64
  %103 = load i32, ptr %n, align 4
  %dec = add i32 %103, -1
  store i32 %dec, ptr %n, align 4
  %104 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %104, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %105 = load i8, ptr %104, align 1
  %conv78 = zext i8 %105 to i64
  %106 = load i32, ptr %k, align 4
  %sh_prom = zext i32 %106 to i64
  %shl = shl i64 %conv78, %sh_prom
  %107 = load i64, ptr %b, align 8
  %or = or i64 %107, %shl
  store i64 %or, ptr %b, align 8
  %108 = load i32, ptr %k, align 4
  %add79 = add i32 %108, 8
  store i32 %add79, ptr %k, align 4
  br label %while.cond60, !llvm.loop !6

while.end:                                        ; preds = %while.cond60
  %109 = load ptr, ptr %c, align 8
  %sub80 = getelementptr inbounds %struct.inflate_codes_state, ptr %109, i32 0, i32 2
  %tree81 = getelementptr inbounds %struct.anon, ptr %sub80, i32 0, i32 0
  %110 = load ptr, ptr %tree81, align 8
  %111 = load i64, ptr %b, align 8
  %conv82 = trunc i64 %111 to i32
  %112 = load i32, ptr %j, align 4
  %idxprom = zext i32 %112 to i64
  %arrayidx = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom
  %113 = load i32, ptr %arrayidx, align 4
  %and = and i32 %conv82, %113
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.inflate_huft_s, ptr %110, i64 %idx.ext
  store ptr %add.ptr, ptr %t, align 8
  %114 = load ptr, ptr %t, align 8
  %word = getelementptr inbounds %struct.inflate_huft_s, ptr %114, i32 0, i32 0
  %Bits = getelementptr inbounds %struct.anon.1, ptr %word, i32 0, i32 1
  %115 = load i8, ptr %Bits, align 1
  %conv83 = zext i8 %115 to i32
  %116 = load i64, ptr %b, align 8
  %sh_prom84 = zext i32 %conv83 to i64
  %shr = lshr i64 %116, %sh_prom84
  store i64 %shr, ptr %b, align 8
  %117 = load ptr, ptr %t, align 8
  %word85 = getelementptr inbounds %struct.inflate_huft_s, ptr %117, i32 0, i32 0
  %Bits86 = getelementptr inbounds %struct.anon.1, ptr %word85, i32 0, i32 1
  %118 = load i8, ptr %Bits86, align 1
  %conv87 = zext i8 %118 to i32
  %119 = load i32, ptr %k, align 4
  %sub88 = sub i32 %119, %conv87
  store i32 %sub88, ptr %k, align 4
  %120 = load ptr, ptr %t, align 8
  %word89 = getelementptr inbounds %struct.inflate_huft_s, ptr %120, i32 0, i32 0
  %Exop = getelementptr inbounds %struct.anon.1, ptr %word89, i32 0, i32 0
  %121 = load i8, ptr %Exop, align 4
  %conv90 = zext i8 %121 to i32
  store i32 %conv90, ptr %e, align 4
  %122 = load i32, ptr %e, align 4
  %cmp91 = icmp eq i32 %122, 0
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %while.end
  %123 = load ptr, ptr %t, align 8
  %base = getelementptr inbounds %struct.inflate_huft_s, ptr %123, i32 0, i32 1
  %124 = load i32, ptr %base, align 4
  %125 = load ptr, ptr %c, align 8
  %sub94 = getelementptr inbounds %struct.inflate_codes_state, ptr %125, i32 0, i32 2
  store i32 %124, ptr %sub94, align 8
  %126 = load ptr, ptr %c, align 8
  %mode95 = getelementptr inbounds %struct.inflate_codes_state, ptr %126, i32 0, i32 0
  store i32 6, ptr %mode95, align 8
  br label %sw.epilog

if.end96:                                         ; preds = %while.end
  %127 = load i32, ptr %e, align 4
  %and97 = and i32 %127, 16
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then99, label %if.end104

if.then99:                                        ; preds = %if.end96
  %128 = load i32, ptr %e, align 4
  %and100 = and i32 %128, 15
  %129 = load ptr, ptr %c, align 8
  %sub101 = getelementptr inbounds %struct.inflate_codes_state, ptr %129, i32 0, i32 2
  %get = getelementptr inbounds %struct.anon.2, ptr %sub101, i32 0, i32 0
  store i32 %and100, ptr %get, align 8
  %130 = load ptr, ptr %t, align 8
  %base102 = getelementptr inbounds %struct.inflate_huft_s, ptr %130, i32 0, i32 1
  %131 = load i32, ptr %base102, align 4
  %132 = load ptr, ptr %c, align 8
  %len = getelementptr inbounds %struct.inflate_codes_state, ptr %132, i32 0, i32 1
  store i32 %131, ptr %len, align 4
  %133 = load ptr, ptr %c, align 8
  %mode103 = getelementptr inbounds %struct.inflate_codes_state, ptr %133, i32 0, i32 0
  store i32 2, ptr %mode103, align 8
  br label %sw.epilog

if.end104:                                        ; preds = %if.end96
  %134 = load i32, ptr %e, align 4
  %and105 = and i32 %134, 64
  %cmp106 = icmp eq i32 %and105, 0
  br i1 %cmp106, label %if.then108, label %if.end116

if.then108:                                       ; preds = %if.end104
  %135 = load i32, ptr %e, align 4
  %136 = load ptr, ptr %c, align 8
  %sub109 = getelementptr inbounds %struct.inflate_codes_state, ptr %136, i32 0, i32 2
  %need110 = getelementptr inbounds %struct.anon, ptr %sub109, i32 0, i32 1
  store i32 %135, ptr %need110, align 8
  %137 = load ptr, ptr %t, align 8
  %138 = load ptr, ptr %t, align 8
  %base111 = getelementptr inbounds %struct.inflate_huft_s, ptr %138, i32 0, i32 1
  %139 = load i32, ptr %base111, align 4
  %idx.ext112 = zext i32 %139 to i64
  %add.ptr113 = getelementptr inbounds %struct.inflate_huft_s, ptr %137, i64 %idx.ext112
  %140 = load ptr, ptr %c, align 8
  %sub114 = getelementptr inbounds %struct.inflate_codes_state, ptr %140, i32 0, i32 2
  %tree115 = getelementptr inbounds %struct.anon, ptr %sub114, i32 0, i32 0
  store ptr %add.ptr113, ptr %tree115, align 8
  br label %sw.epilog

if.end116:                                        ; preds = %if.end104
  %141 = load i32, ptr %e, align 4
  %and117 = and i32 %141, 32
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end116
  %142 = load ptr, ptr %c, align 8
  %mode120 = getelementptr inbounds %struct.inflate_codes_state, ptr %142, i32 0, i32 0
  store i32 7, ptr %mode120, align 8
  br label %sw.epilog

if.end121:                                        ; preds = %if.end116
  %143 = load ptr, ptr %c, align 8
  %mode122 = getelementptr inbounds %struct.inflate_codes_state, ptr %143, i32 0, i32 0
  store i32 9, ptr %mode122, align 8
  %144 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %144, i32 0, i32 6
  store ptr @.str, ptr %msg, align 8
  store i32 -3, ptr %r.addr, align 4
  %145 = load i64, ptr %b, align 8
  %146 = load ptr, ptr %s.addr, align 8
  %bitb123 = getelementptr inbounds %struct.inflate_blocks_state, ptr %146, i32 0, i32 4
  store i64 %145, ptr %bitb123, align 8
  %147 = load i32, ptr %k, align 4
  %148 = load ptr, ptr %s.addr, align 8
  %bitk124 = getelementptr inbounds %struct.inflate_blocks_state, ptr %148, i32 0, i32 3
  store i32 %147, ptr %bitk124, align 4
  %149 = load i32, ptr %n, align 4
  %150 = load ptr, ptr %z.addr, align 8
  %avail_in125 = getelementptr inbounds %struct.z_stream_s, ptr %150, i32 0, i32 1
  store i32 %149, ptr %avail_in125, align 8
  %151 = load ptr, ptr %p, align 8
  %152 = load ptr, ptr %z.addr, align 8
  %next_in126 = getelementptr inbounds %struct.z_stream_s, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %next_in126, align 8
  %sub.ptr.lhs.cast127 = ptrtoint ptr %151 to i64
  %sub.ptr.rhs.cast128 = ptrtoint ptr %153 to i64
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128
  %154 = load ptr, ptr %z.addr, align 8
  %total_in130 = getelementptr inbounds %struct.z_stream_s, ptr %154, i32 0, i32 2
  %155 = load i64, ptr %total_in130, align 8
  %add131 = add i64 %155, %sub.ptr.sub129
  store i64 %add131, ptr %total_in130, align 8
  %156 = load ptr, ptr %p, align 8
  %157 = load ptr, ptr %z.addr, align 8
  %next_in132 = getelementptr inbounds %struct.z_stream_s, ptr %157, i32 0, i32 0
  store ptr %156, ptr %next_in132, align 8
  %158 = load ptr, ptr %q, align 8
  %159 = load ptr, ptr %s.addr, align 8
  %write133 = getelementptr inbounds %struct.inflate_blocks_state, ptr %159, i32 0, i32 9
  store ptr %158, ptr %write133, align 8
  %160 = load ptr, ptr %s.addr, align 8
  %161 = load ptr, ptr %z.addr, align 8
  %162 = load i32, ptr %r.addr, align 4
  %call134 = call i32 @inflate_flush(ptr noundef %160, ptr noundef %161, i32 noundef %162)
  store i32 %call134, ptr %retval, align 4
  br label %return

sw.bb135:                                         ; preds = %while.body
  %163 = load ptr, ptr %c, align 8
  %sub136 = getelementptr inbounds %struct.inflate_codes_state, ptr %163, i32 0, i32 2
  %get137 = getelementptr inbounds %struct.anon.2, ptr %sub136, i32 0, i32 0
  %164 = load i32, ptr %get137, align 8
  store i32 %164, ptr %j, align 4
  br label %while.cond138

while.cond138:                                    ; preds = %if.end157, %sw.bb135
  %165 = load i32, ptr %k, align 4
  %166 = load i32, ptr %j, align 4
  %cmp139 = icmp ult i32 %165, %166
  br i1 %cmp139, label %while.body141, label %while.end165

while.body141:                                    ; preds = %while.cond138
  %167 = load i32, ptr %n, align 4
  %tobool142 = icmp ne i32 %167, 0
  br i1 %tobool142, label %if.then143, label %if.else144

if.then143:                                       ; preds = %while.body141
  store i32 0, ptr %r.addr, align 4
  br label %if.end157

if.else144:                                       ; preds = %while.body141
  %168 = load i64, ptr %b, align 8
  %169 = load ptr, ptr %s.addr, align 8
  %bitb145 = getelementptr inbounds %struct.inflate_blocks_state, ptr %169, i32 0, i32 4
  store i64 %168, ptr %bitb145, align 8
  %170 = load i32, ptr %k, align 4
  %171 = load ptr, ptr %s.addr, align 8
  %bitk146 = getelementptr inbounds %struct.inflate_blocks_state, ptr %171, i32 0, i32 3
  store i32 %170, ptr %bitk146, align 4
  %172 = load i32, ptr %n, align 4
  %173 = load ptr, ptr %z.addr, align 8
  %avail_in147 = getelementptr inbounds %struct.z_stream_s, ptr %173, i32 0, i32 1
  store i32 %172, ptr %avail_in147, align 8
  %174 = load ptr, ptr %p, align 8
  %175 = load ptr, ptr %z.addr, align 8
  %next_in148 = getelementptr inbounds %struct.z_stream_s, ptr %175, i32 0, i32 0
  %176 = load ptr, ptr %next_in148, align 8
  %sub.ptr.lhs.cast149 = ptrtoint ptr %174 to i64
  %sub.ptr.rhs.cast150 = ptrtoint ptr %176 to i64
  %sub.ptr.sub151 = sub i64 %sub.ptr.lhs.cast149, %sub.ptr.rhs.cast150
  %177 = load ptr, ptr %z.addr, align 8
  %total_in152 = getelementptr inbounds %struct.z_stream_s, ptr %177, i32 0, i32 2
  %178 = load i64, ptr %total_in152, align 8
  %add153 = add i64 %178, %sub.ptr.sub151
  store i64 %add153, ptr %total_in152, align 8
  %179 = load ptr, ptr %p, align 8
  %180 = load ptr, ptr %z.addr, align 8
  %next_in154 = getelementptr inbounds %struct.z_stream_s, ptr %180, i32 0, i32 0
  store ptr %179, ptr %next_in154, align 8
  %181 = load ptr, ptr %q, align 8
  %182 = load ptr, ptr %s.addr, align 8
  %write155 = getelementptr inbounds %struct.inflate_blocks_state, ptr %182, i32 0, i32 9
  store ptr %181, ptr %write155, align 8
  %183 = load ptr, ptr %s.addr, align 8
  %184 = load ptr, ptr %z.addr, align 8
  %185 = load i32, ptr %r.addr, align 4
  %call156 = call i32 @inflate_flush(ptr noundef %183, ptr noundef %184, i32 noundef %185)
  store i32 %call156, ptr %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.then143
  %186 = load i32, ptr %n, align 4
  %dec158 = add i32 %186, -1
  store i32 %dec158, ptr %n, align 4
  %187 = load ptr, ptr %p, align 8
  %incdec.ptr159 = getelementptr inbounds i8, ptr %187, i32 1
  store ptr %incdec.ptr159, ptr %p, align 8
  %188 = load i8, ptr %187, align 1
  %conv160 = zext i8 %188 to i64
  %189 = load i32, ptr %k, align 4
  %sh_prom161 = zext i32 %189 to i64
  %shl162 = shl i64 %conv160, %sh_prom161
  %190 = load i64, ptr %b, align 8
  %or163 = or i64 %190, %shl162
  store i64 %or163, ptr %b, align 8
  %191 = load i32, ptr %k, align 4
  %add164 = add i32 %191, 8
  store i32 %add164, ptr %k, align 4
  br label %while.cond138, !llvm.loop !8

while.end165:                                     ; preds = %while.cond138
  %192 = load i64, ptr %b, align 8
  %conv166 = trunc i64 %192 to i32
  %193 = load i32, ptr %j, align 4
  %idxprom167 = zext i32 %193 to i64
  %arrayidx168 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom167
  %194 = load i32, ptr %arrayidx168, align 4
  %and169 = and i32 %conv166, %194
  %195 = load ptr, ptr %c, align 8
  %len170 = getelementptr inbounds %struct.inflate_codes_state, ptr %195, i32 0, i32 1
  %196 = load i32, ptr %len170, align 4
  %add171 = add i32 %196, %and169
  store i32 %add171, ptr %len170, align 4
  %197 = load i32, ptr %j, align 4
  %198 = load i64, ptr %b, align 8
  %sh_prom172 = zext i32 %197 to i64
  %shr173 = lshr i64 %198, %sh_prom172
  store i64 %shr173, ptr %b, align 8
  %199 = load i32, ptr %j, align 4
  %200 = load i32, ptr %k, align 4
  %sub174 = sub i32 %200, %199
  store i32 %sub174, ptr %k, align 4
  %201 = load ptr, ptr %c, align 8
  %dbits175 = getelementptr inbounds %struct.inflate_codes_state, ptr %201, i32 0, i32 4
  %202 = load i8, ptr %dbits175, align 1
  %conv176 = zext i8 %202 to i32
  %203 = load ptr, ptr %c, align 8
  %sub177 = getelementptr inbounds %struct.inflate_codes_state, ptr %203, i32 0, i32 2
  %need178 = getelementptr inbounds %struct.anon, ptr %sub177, i32 0, i32 1
  store i32 %conv176, ptr %need178, align 8
  %204 = load ptr, ptr %c, align 8
  %dtree179 = getelementptr inbounds %struct.inflate_codes_state, ptr %204, i32 0, i32 6
  %205 = load ptr, ptr %dtree179, align 8
  %206 = load ptr, ptr %c, align 8
  %sub180 = getelementptr inbounds %struct.inflate_codes_state, ptr %206, i32 0, i32 2
  %tree181 = getelementptr inbounds %struct.anon, ptr %sub180, i32 0, i32 0
  store ptr %205, ptr %tree181, align 8
  %207 = load ptr, ptr %c, align 8
  %mode182 = getelementptr inbounds %struct.inflate_codes_state, ptr %207, i32 0, i32 0
  store i32 3, ptr %mode182, align 8
  br label %sw.bb183

sw.bb183:                                         ; preds = %while.body, %while.end165
  %208 = load ptr, ptr %c, align 8
  %sub184 = getelementptr inbounds %struct.inflate_codes_state, ptr %208, i32 0, i32 2
  %need185 = getelementptr inbounds %struct.anon, ptr %sub184, i32 0, i32 1
  %209 = load i32, ptr %need185, align 8
  store i32 %209, ptr %j, align 4
  br label %while.cond186

while.cond186:                                    ; preds = %if.end205, %sw.bb183
  %210 = load i32, ptr %k, align 4
  %211 = load i32, ptr %j, align 4
  %cmp187 = icmp ult i32 %210, %211
  br i1 %cmp187, label %while.body189, label %while.end213

while.body189:                                    ; preds = %while.cond186
  %212 = load i32, ptr %n, align 4
  %tobool190 = icmp ne i32 %212, 0
  br i1 %tobool190, label %if.then191, label %if.else192

if.then191:                                       ; preds = %while.body189
  store i32 0, ptr %r.addr, align 4
  br label %if.end205

if.else192:                                       ; preds = %while.body189
  %213 = load i64, ptr %b, align 8
  %214 = load ptr, ptr %s.addr, align 8
  %bitb193 = getelementptr inbounds %struct.inflate_blocks_state, ptr %214, i32 0, i32 4
  store i64 %213, ptr %bitb193, align 8
  %215 = load i32, ptr %k, align 4
  %216 = load ptr, ptr %s.addr, align 8
  %bitk194 = getelementptr inbounds %struct.inflate_blocks_state, ptr %216, i32 0, i32 3
  store i32 %215, ptr %bitk194, align 4
  %217 = load i32, ptr %n, align 4
  %218 = load ptr, ptr %z.addr, align 8
  %avail_in195 = getelementptr inbounds %struct.z_stream_s, ptr %218, i32 0, i32 1
  store i32 %217, ptr %avail_in195, align 8
  %219 = load ptr, ptr %p, align 8
  %220 = load ptr, ptr %z.addr, align 8
  %next_in196 = getelementptr inbounds %struct.z_stream_s, ptr %220, i32 0, i32 0
  %221 = load ptr, ptr %next_in196, align 8
  %sub.ptr.lhs.cast197 = ptrtoint ptr %219 to i64
  %sub.ptr.rhs.cast198 = ptrtoint ptr %221 to i64
  %sub.ptr.sub199 = sub i64 %sub.ptr.lhs.cast197, %sub.ptr.rhs.cast198
  %222 = load ptr, ptr %z.addr, align 8
  %total_in200 = getelementptr inbounds %struct.z_stream_s, ptr %222, i32 0, i32 2
  %223 = load i64, ptr %total_in200, align 8
  %add201 = add i64 %223, %sub.ptr.sub199
  store i64 %add201, ptr %total_in200, align 8
  %224 = load ptr, ptr %p, align 8
  %225 = load ptr, ptr %z.addr, align 8
  %next_in202 = getelementptr inbounds %struct.z_stream_s, ptr %225, i32 0, i32 0
  store ptr %224, ptr %next_in202, align 8
  %226 = load ptr, ptr %q, align 8
  %227 = load ptr, ptr %s.addr, align 8
  %write203 = getelementptr inbounds %struct.inflate_blocks_state, ptr %227, i32 0, i32 9
  store ptr %226, ptr %write203, align 8
  %228 = load ptr, ptr %s.addr, align 8
  %229 = load ptr, ptr %z.addr, align 8
  %230 = load i32, ptr %r.addr, align 4
  %call204 = call i32 @inflate_flush(ptr noundef %228, ptr noundef %229, i32 noundef %230)
  store i32 %call204, ptr %retval, align 4
  br label %return

if.end205:                                        ; preds = %if.then191
  %231 = load i32, ptr %n, align 4
  %dec206 = add i32 %231, -1
  store i32 %dec206, ptr %n, align 4
  %232 = load ptr, ptr %p, align 8
  %incdec.ptr207 = getelementptr inbounds i8, ptr %232, i32 1
  store ptr %incdec.ptr207, ptr %p, align 8
  %233 = load i8, ptr %232, align 1
  %conv208 = zext i8 %233 to i64
  %234 = load i32, ptr %k, align 4
  %sh_prom209 = zext i32 %234 to i64
  %shl210 = shl i64 %conv208, %sh_prom209
  %235 = load i64, ptr %b, align 8
  %or211 = or i64 %235, %shl210
  store i64 %or211, ptr %b, align 8
  %236 = load i32, ptr %k, align 4
  %add212 = add i32 %236, 8
  store i32 %add212, ptr %k, align 4
  br label %while.cond186, !llvm.loop !9

while.end213:                                     ; preds = %while.cond186
  %237 = load ptr, ptr %c, align 8
  %sub214 = getelementptr inbounds %struct.inflate_codes_state, ptr %237, i32 0, i32 2
  %tree215 = getelementptr inbounds %struct.anon, ptr %sub214, i32 0, i32 0
  %238 = load ptr, ptr %tree215, align 8
  %239 = load i64, ptr %b, align 8
  %conv216 = trunc i64 %239 to i32
  %240 = load i32, ptr %j, align 4
  %idxprom217 = zext i32 %240 to i64
  %arrayidx218 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom217
  %241 = load i32, ptr %arrayidx218, align 4
  %and219 = and i32 %conv216, %241
  %idx.ext220 = zext i32 %and219 to i64
  %add.ptr221 = getelementptr inbounds %struct.inflate_huft_s, ptr %238, i64 %idx.ext220
  store ptr %add.ptr221, ptr %t, align 8
  %242 = load ptr, ptr %t, align 8
  %word222 = getelementptr inbounds %struct.inflate_huft_s, ptr %242, i32 0, i32 0
  %Bits223 = getelementptr inbounds %struct.anon.1, ptr %word222, i32 0, i32 1
  %243 = load i8, ptr %Bits223, align 1
  %conv224 = zext i8 %243 to i32
  %244 = load i64, ptr %b, align 8
  %sh_prom225 = zext i32 %conv224 to i64
  %shr226 = lshr i64 %244, %sh_prom225
  store i64 %shr226, ptr %b, align 8
  %245 = load ptr, ptr %t, align 8
  %word227 = getelementptr inbounds %struct.inflate_huft_s, ptr %245, i32 0, i32 0
  %Bits228 = getelementptr inbounds %struct.anon.1, ptr %word227, i32 0, i32 1
  %246 = load i8, ptr %Bits228, align 1
  %conv229 = zext i8 %246 to i32
  %247 = load i32, ptr %k, align 4
  %sub230 = sub i32 %247, %conv229
  store i32 %sub230, ptr %k, align 4
  %248 = load ptr, ptr %t, align 8
  %word231 = getelementptr inbounds %struct.inflate_huft_s, ptr %248, i32 0, i32 0
  %Exop232 = getelementptr inbounds %struct.anon.1, ptr %word231, i32 0, i32 0
  %249 = load i8, ptr %Exop232, align 4
  %conv233 = zext i8 %249 to i32
  store i32 %conv233, ptr %e, align 4
  %250 = load i32, ptr %e, align 4
  %and234 = and i32 %250, 16
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %if.then236, label %if.end243

if.then236:                                       ; preds = %while.end213
  %251 = load i32, ptr %e, align 4
  %and237 = and i32 %251, 15
  %252 = load ptr, ptr %c, align 8
  %sub238 = getelementptr inbounds %struct.inflate_codes_state, ptr %252, i32 0, i32 2
  %get239 = getelementptr inbounds %struct.anon.2, ptr %sub238, i32 0, i32 0
  store i32 %and237, ptr %get239, align 8
  %253 = load ptr, ptr %t, align 8
  %base240 = getelementptr inbounds %struct.inflate_huft_s, ptr %253, i32 0, i32 1
  %254 = load i32, ptr %base240, align 4
  %255 = load ptr, ptr %c, align 8
  %sub241 = getelementptr inbounds %struct.inflate_codes_state, ptr %255, i32 0, i32 2
  %dist = getelementptr inbounds %struct.anon.2, ptr %sub241, i32 0, i32 1
  store i32 %254, ptr %dist, align 4
  %256 = load ptr, ptr %c, align 8
  %mode242 = getelementptr inbounds %struct.inflate_codes_state, ptr %256, i32 0, i32 0
  store i32 4, ptr %mode242, align 8
  br label %sw.epilog

if.end243:                                        ; preds = %while.end213
  %257 = load i32, ptr %e, align 4
  %and244 = and i32 %257, 64
  %cmp245 = icmp eq i32 %and244, 0
  br i1 %cmp245, label %if.then247, label %if.end255

if.then247:                                       ; preds = %if.end243
  %258 = load i32, ptr %e, align 4
  %259 = load ptr, ptr %c, align 8
  %sub248 = getelementptr inbounds %struct.inflate_codes_state, ptr %259, i32 0, i32 2
  %need249 = getelementptr inbounds %struct.anon, ptr %sub248, i32 0, i32 1
  store i32 %258, ptr %need249, align 8
  %260 = load ptr, ptr %t, align 8
  %261 = load ptr, ptr %t, align 8
  %base250 = getelementptr inbounds %struct.inflate_huft_s, ptr %261, i32 0, i32 1
  %262 = load i32, ptr %base250, align 4
  %idx.ext251 = zext i32 %262 to i64
  %add.ptr252 = getelementptr inbounds %struct.inflate_huft_s, ptr %260, i64 %idx.ext251
  %263 = load ptr, ptr %c, align 8
  %sub253 = getelementptr inbounds %struct.inflate_codes_state, ptr %263, i32 0, i32 2
  %tree254 = getelementptr inbounds %struct.anon, ptr %sub253, i32 0, i32 0
  store ptr %add.ptr252, ptr %tree254, align 8
  br label %sw.epilog

if.end255:                                        ; preds = %if.end243
  %264 = load ptr, ptr %c, align 8
  %mode256 = getelementptr inbounds %struct.inflate_codes_state, ptr %264, i32 0, i32 0
  store i32 9, ptr %mode256, align 8
  %265 = load ptr, ptr %z.addr, align 8
  %msg257 = getelementptr inbounds %struct.z_stream_s, ptr %265, i32 0, i32 6
  store ptr @.str.1, ptr %msg257, align 8
  store i32 -3, ptr %r.addr, align 4
  %266 = load i64, ptr %b, align 8
  %267 = load ptr, ptr %s.addr, align 8
  %bitb258 = getelementptr inbounds %struct.inflate_blocks_state, ptr %267, i32 0, i32 4
  store i64 %266, ptr %bitb258, align 8
  %268 = load i32, ptr %k, align 4
  %269 = load ptr, ptr %s.addr, align 8
  %bitk259 = getelementptr inbounds %struct.inflate_blocks_state, ptr %269, i32 0, i32 3
  store i32 %268, ptr %bitk259, align 4
  %270 = load i32, ptr %n, align 4
  %271 = load ptr, ptr %z.addr, align 8
  %avail_in260 = getelementptr inbounds %struct.z_stream_s, ptr %271, i32 0, i32 1
  store i32 %270, ptr %avail_in260, align 8
  %272 = load ptr, ptr %p, align 8
  %273 = load ptr, ptr %z.addr, align 8
  %next_in261 = getelementptr inbounds %struct.z_stream_s, ptr %273, i32 0, i32 0
  %274 = load ptr, ptr %next_in261, align 8
  %sub.ptr.lhs.cast262 = ptrtoint ptr %272 to i64
  %sub.ptr.rhs.cast263 = ptrtoint ptr %274 to i64
  %sub.ptr.sub264 = sub i64 %sub.ptr.lhs.cast262, %sub.ptr.rhs.cast263
  %275 = load ptr, ptr %z.addr, align 8
  %total_in265 = getelementptr inbounds %struct.z_stream_s, ptr %275, i32 0, i32 2
  %276 = load i64, ptr %total_in265, align 8
  %add266 = add i64 %276, %sub.ptr.sub264
  store i64 %add266, ptr %total_in265, align 8
  %277 = load ptr, ptr %p, align 8
  %278 = load ptr, ptr %z.addr, align 8
  %next_in267 = getelementptr inbounds %struct.z_stream_s, ptr %278, i32 0, i32 0
  store ptr %277, ptr %next_in267, align 8
  %279 = load ptr, ptr %q, align 8
  %280 = load ptr, ptr %s.addr, align 8
  %write268 = getelementptr inbounds %struct.inflate_blocks_state, ptr %280, i32 0, i32 9
  store ptr %279, ptr %write268, align 8
  %281 = load ptr, ptr %s.addr, align 8
  %282 = load ptr, ptr %z.addr, align 8
  %283 = load i32, ptr %r.addr, align 4
  %call269 = call i32 @inflate_flush(ptr noundef %281, ptr noundef %282, i32 noundef %283)
  store i32 %call269, ptr %retval, align 4
  br label %return

sw.bb270:                                         ; preds = %while.body
  %284 = load ptr, ptr %c, align 8
  %sub271 = getelementptr inbounds %struct.inflate_codes_state, ptr %284, i32 0, i32 2
  %get272 = getelementptr inbounds %struct.anon.2, ptr %sub271, i32 0, i32 0
  %285 = load i32, ptr %get272, align 8
  store i32 %285, ptr %j, align 4
  br label %while.cond273

while.cond273:                                    ; preds = %if.end292, %sw.bb270
  %286 = load i32, ptr %k, align 4
  %287 = load i32, ptr %j, align 4
  %cmp274 = icmp ult i32 %286, %287
  br i1 %cmp274, label %while.body276, label %while.end300

while.body276:                                    ; preds = %while.cond273
  %288 = load i32, ptr %n, align 4
  %tobool277 = icmp ne i32 %288, 0
  br i1 %tobool277, label %if.then278, label %if.else279

if.then278:                                       ; preds = %while.body276
  store i32 0, ptr %r.addr, align 4
  br label %if.end292

if.else279:                                       ; preds = %while.body276
  %289 = load i64, ptr %b, align 8
  %290 = load ptr, ptr %s.addr, align 8
  %bitb280 = getelementptr inbounds %struct.inflate_blocks_state, ptr %290, i32 0, i32 4
  store i64 %289, ptr %bitb280, align 8
  %291 = load i32, ptr %k, align 4
  %292 = load ptr, ptr %s.addr, align 8
  %bitk281 = getelementptr inbounds %struct.inflate_blocks_state, ptr %292, i32 0, i32 3
  store i32 %291, ptr %bitk281, align 4
  %293 = load i32, ptr %n, align 4
  %294 = load ptr, ptr %z.addr, align 8
  %avail_in282 = getelementptr inbounds %struct.z_stream_s, ptr %294, i32 0, i32 1
  store i32 %293, ptr %avail_in282, align 8
  %295 = load ptr, ptr %p, align 8
  %296 = load ptr, ptr %z.addr, align 8
  %next_in283 = getelementptr inbounds %struct.z_stream_s, ptr %296, i32 0, i32 0
  %297 = load ptr, ptr %next_in283, align 8
  %sub.ptr.lhs.cast284 = ptrtoint ptr %295 to i64
  %sub.ptr.rhs.cast285 = ptrtoint ptr %297 to i64
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285
  %298 = load ptr, ptr %z.addr, align 8
  %total_in287 = getelementptr inbounds %struct.z_stream_s, ptr %298, i32 0, i32 2
  %299 = load i64, ptr %total_in287, align 8
  %add288 = add i64 %299, %sub.ptr.sub286
  store i64 %add288, ptr %total_in287, align 8
  %300 = load ptr, ptr %p, align 8
  %301 = load ptr, ptr %z.addr, align 8
  %next_in289 = getelementptr inbounds %struct.z_stream_s, ptr %301, i32 0, i32 0
  store ptr %300, ptr %next_in289, align 8
  %302 = load ptr, ptr %q, align 8
  %303 = load ptr, ptr %s.addr, align 8
  %write290 = getelementptr inbounds %struct.inflate_blocks_state, ptr %303, i32 0, i32 9
  store ptr %302, ptr %write290, align 8
  %304 = load ptr, ptr %s.addr, align 8
  %305 = load ptr, ptr %z.addr, align 8
  %306 = load i32, ptr %r.addr, align 4
  %call291 = call i32 @inflate_flush(ptr noundef %304, ptr noundef %305, i32 noundef %306)
  store i32 %call291, ptr %retval, align 4
  br label %return

if.end292:                                        ; preds = %if.then278
  %307 = load i32, ptr %n, align 4
  %dec293 = add i32 %307, -1
  store i32 %dec293, ptr %n, align 4
  %308 = load ptr, ptr %p, align 8
  %incdec.ptr294 = getelementptr inbounds i8, ptr %308, i32 1
  store ptr %incdec.ptr294, ptr %p, align 8
  %309 = load i8, ptr %308, align 1
  %conv295 = zext i8 %309 to i64
  %310 = load i32, ptr %k, align 4
  %sh_prom296 = zext i32 %310 to i64
  %shl297 = shl i64 %conv295, %sh_prom296
  %311 = load i64, ptr %b, align 8
  %or298 = or i64 %311, %shl297
  store i64 %or298, ptr %b, align 8
  %312 = load i32, ptr %k, align 4
  %add299 = add i32 %312, 8
  store i32 %add299, ptr %k, align 4
  br label %while.cond273, !llvm.loop !10

while.end300:                                     ; preds = %while.cond273
  %313 = load i64, ptr %b, align 8
  %conv301 = trunc i64 %313 to i32
  %314 = load i32, ptr %j, align 4
  %idxprom302 = zext i32 %314 to i64
  %arrayidx303 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom302
  %315 = load i32, ptr %arrayidx303, align 4
  %and304 = and i32 %conv301, %315
  %316 = load ptr, ptr %c, align 8
  %sub305 = getelementptr inbounds %struct.inflate_codes_state, ptr %316, i32 0, i32 2
  %dist306 = getelementptr inbounds %struct.anon.2, ptr %sub305, i32 0, i32 1
  %317 = load i32, ptr %dist306, align 4
  %add307 = add i32 %317, %and304
  store i32 %add307, ptr %dist306, align 4
  %318 = load i32, ptr %j, align 4
  %319 = load i64, ptr %b, align 8
  %sh_prom308 = zext i32 %318 to i64
  %shr309 = lshr i64 %319, %sh_prom308
  store i64 %shr309, ptr %b, align 8
  %320 = load i32, ptr %j, align 4
  %321 = load i32, ptr %k, align 4
  %sub310 = sub i32 %321, %320
  store i32 %sub310, ptr %k, align 4
  %322 = load ptr, ptr %c, align 8
  %mode311 = getelementptr inbounds %struct.inflate_codes_state, ptr %322, i32 0, i32 0
  store i32 5, ptr %mode311, align 8
  br label %sw.bb312

sw.bb312:                                         ; preds = %while.body, %while.end300
  %323 = load ptr, ptr %q, align 8
  %324 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %324, i32 0, i32 6
  %325 = load ptr, ptr %window, align 8
  %sub.ptr.lhs.cast313 = ptrtoint ptr %323 to i64
  %sub.ptr.rhs.cast314 = ptrtoint ptr %325 to i64
  %sub.ptr.sub315 = sub i64 %sub.ptr.lhs.cast313, %sub.ptr.rhs.cast314
  %conv316 = trunc i64 %sub.ptr.sub315 to i32
  %326 = load ptr, ptr %c, align 8
  %sub317 = getelementptr inbounds %struct.inflate_codes_state, ptr %326, i32 0, i32 2
  %dist318 = getelementptr inbounds %struct.anon.2, ptr %sub317, i32 0, i32 1
  %327 = load i32, ptr %dist318, align 4
  %cmp319 = icmp ult i32 %conv316, %327
  br i1 %cmp319, label %cond.true321, label %cond.false332

cond.true321:                                     ; preds = %sw.bb312
  %328 = load ptr, ptr %s.addr, align 8
  %end322 = getelementptr inbounds %struct.inflate_blocks_state, ptr %328, i32 0, i32 7
  %329 = load ptr, ptr %end322, align 8
  %330 = load ptr, ptr %c, align 8
  %sub323 = getelementptr inbounds %struct.inflate_codes_state, ptr %330, i32 0, i32 2
  %dist324 = getelementptr inbounds %struct.anon.2, ptr %sub323, i32 0, i32 1
  %331 = load i32, ptr %dist324, align 4
  %conv325 = zext i32 %331 to i64
  %332 = load ptr, ptr %q, align 8
  %333 = load ptr, ptr %s.addr, align 8
  %window326 = getelementptr inbounds %struct.inflate_blocks_state, ptr %333, i32 0, i32 6
  %334 = load ptr, ptr %window326, align 8
  %sub.ptr.lhs.cast327 = ptrtoint ptr %332 to i64
  %sub.ptr.rhs.cast328 = ptrtoint ptr %334 to i64
  %sub.ptr.sub329 = sub i64 %sub.ptr.lhs.cast327, %sub.ptr.rhs.cast328
  %sub330 = sub nsw i64 %conv325, %sub.ptr.sub329
  %idx.neg = sub i64 0, %sub330
  %add.ptr331 = getelementptr inbounds i8, ptr %329, i64 %idx.neg
  br label %cond.end338

cond.false332:                                    ; preds = %sw.bb312
  %335 = load ptr, ptr %q, align 8
  %336 = load ptr, ptr %c, align 8
  %sub333 = getelementptr inbounds %struct.inflate_codes_state, ptr %336, i32 0, i32 2
  %dist334 = getelementptr inbounds %struct.anon.2, ptr %sub333, i32 0, i32 1
  %337 = load i32, ptr %dist334, align 4
  %idx.ext335 = zext i32 %337 to i64
  %idx.neg336 = sub i64 0, %idx.ext335
  %add.ptr337 = getelementptr inbounds i8, ptr %335, i64 %idx.neg336
  br label %cond.end338

cond.end338:                                      ; preds = %cond.false332, %cond.true321
  %cond339 = phi ptr [ %add.ptr331, %cond.true321 ], [ %add.ptr337, %cond.false332 ]
  store ptr %cond339, ptr %f, align 8
  br label %while.cond340

while.cond340:                                    ; preds = %if.end452, %cond.end338
  %338 = load ptr, ptr %c, align 8
  %len341 = getelementptr inbounds %struct.inflate_codes_state, ptr %338, i32 0, i32 1
  %339 = load i32, ptr %len341, align 4
  %tobool342 = icmp ne i32 %339, 0
  br i1 %tobool342, label %while.body343, label %while.end455

while.body343:                                    ; preds = %while.cond340
  %340 = load i32, ptr %m, align 4
  %cmp344 = icmp eq i32 %340, 0
  br i1 %cmp344, label %if.then346, label %if.end443

if.then346:                                       ; preds = %while.body343
  %341 = load ptr, ptr %q, align 8
  %342 = load ptr, ptr %s.addr, align 8
  %end347 = getelementptr inbounds %struct.inflate_blocks_state, ptr %342, i32 0, i32 7
  %343 = load ptr, ptr %end347, align 8
  %cmp348 = icmp eq ptr %341, %343
  br i1 %cmp348, label %land.lhs.true350, label %if.end374

land.lhs.true350:                                 ; preds = %if.then346
  %344 = load ptr, ptr %s.addr, align 8
  %read351 = getelementptr inbounds %struct.inflate_blocks_state, ptr %344, i32 0, i32 8
  %345 = load ptr, ptr %read351, align 8
  %346 = load ptr, ptr %s.addr, align 8
  %window352 = getelementptr inbounds %struct.inflate_blocks_state, ptr %346, i32 0, i32 6
  %347 = load ptr, ptr %window352, align 8
  %cmp353 = icmp ne ptr %345, %347
  br i1 %cmp353, label %if.then355, label %if.end374

if.then355:                                       ; preds = %land.lhs.true350
  %348 = load ptr, ptr %s.addr, align 8
  %window356 = getelementptr inbounds %struct.inflate_blocks_state, ptr %348, i32 0, i32 6
  %349 = load ptr, ptr %window356, align 8
  store ptr %349, ptr %q, align 8
  %350 = load ptr, ptr %q, align 8
  %351 = load ptr, ptr %s.addr, align 8
  %read357 = getelementptr inbounds %struct.inflate_blocks_state, ptr %351, i32 0, i32 8
  %352 = load ptr, ptr %read357, align 8
  %cmp358 = icmp ult ptr %350, %352
  br i1 %cmp358, label %cond.true360, label %cond.false366

cond.true360:                                     ; preds = %if.then355
  %353 = load ptr, ptr %s.addr, align 8
  %read361 = getelementptr inbounds %struct.inflate_blocks_state, ptr %353, i32 0, i32 8
  %354 = load ptr, ptr %read361, align 8
  %355 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast362 = ptrtoint ptr %354 to i64
  %sub.ptr.rhs.cast363 = ptrtoint ptr %355 to i64
  %sub.ptr.sub364 = sub i64 %sub.ptr.lhs.cast362, %sub.ptr.rhs.cast363
  %sub365 = sub nsw i64 %sub.ptr.sub364, 1
  br label %cond.end371

cond.false366:                                    ; preds = %if.then355
  %356 = load ptr, ptr %s.addr, align 8
  %end367 = getelementptr inbounds %struct.inflate_blocks_state, ptr %356, i32 0, i32 7
  %357 = load ptr, ptr %end367, align 8
  %358 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast368 = ptrtoint ptr %357 to i64
  %sub.ptr.rhs.cast369 = ptrtoint ptr %358 to i64
  %sub.ptr.sub370 = sub i64 %sub.ptr.lhs.cast368, %sub.ptr.rhs.cast369
  br label %cond.end371

cond.end371:                                      ; preds = %cond.false366, %cond.true360
  %cond372 = phi i64 [ %sub365, %cond.true360 ], [ %sub.ptr.sub370, %cond.false366 ]
  %conv373 = trunc i64 %cond372 to i32
  store i32 %conv373, ptr %m, align 4
  br label %if.end374

if.end374:                                        ; preds = %cond.end371, %land.lhs.true350, %if.then346
  %359 = load i32, ptr %m, align 4
  %cmp375 = icmp eq i32 %359, 0
  br i1 %cmp375, label %if.then377, label %if.end442

if.then377:                                       ; preds = %if.end374
  %360 = load ptr, ptr %q, align 8
  %361 = load ptr, ptr %s.addr, align 8
  %write378 = getelementptr inbounds %struct.inflate_blocks_state, ptr %361, i32 0, i32 9
  store ptr %360, ptr %write378, align 8
  %362 = load ptr, ptr %s.addr, align 8
  %363 = load ptr, ptr %z.addr, align 8
  %364 = load i32, ptr %r.addr, align 4
  %call379 = call i32 @inflate_flush(ptr noundef %362, ptr noundef %363, i32 noundef %364)
  store i32 %call379, ptr %r.addr, align 4
  %365 = load ptr, ptr %s.addr, align 8
  %write380 = getelementptr inbounds %struct.inflate_blocks_state, ptr %365, i32 0, i32 9
  %366 = load ptr, ptr %write380, align 8
  store ptr %366, ptr %q, align 8
  %367 = load ptr, ptr %q, align 8
  %368 = load ptr, ptr %s.addr, align 8
  %read381 = getelementptr inbounds %struct.inflate_blocks_state, ptr %368, i32 0, i32 8
  %369 = load ptr, ptr %read381, align 8
  %cmp382 = icmp ult ptr %367, %369
  br i1 %cmp382, label %cond.true384, label %cond.false390

cond.true384:                                     ; preds = %if.then377
  %370 = load ptr, ptr %s.addr, align 8
  %read385 = getelementptr inbounds %struct.inflate_blocks_state, ptr %370, i32 0, i32 8
  %371 = load ptr, ptr %read385, align 8
  %372 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast386 = ptrtoint ptr %371 to i64
  %sub.ptr.rhs.cast387 = ptrtoint ptr %372 to i64
  %sub.ptr.sub388 = sub i64 %sub.ptr.lhs.cast386, %sub.ptr.rhs.cast387
  %sub389 = sub nsw i64 %sub.ptr.sub388, 1
  br label %cond.end395

cond.false390:                                    ; preds = %if.then377
  %373 = load ptr, ptr %s.addr, align 8
  %end391 = getelementptr inbounds %struct.inflate_blocks_state, ptr %373, i32 0, i32 7
  %374 = load ptr, ptr %end391, align 8
  %375 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast392 = ptrtoint ptr %374 to i64
  %sub.ptr.rhs.cast393 = ptrtoint ptr %375 to i64
  %sub.ptr.sub394 = sub i64 %sub.ptr.lhs.cast392, %sub.ptr.rhs.cast393
  br label %cond.end395

cond.end395:                                      ; preds = %cond.false390, %cond.true384
  %cond396 = phi i64 [ %sub389, %cond.true384 ], [ %sub.ptr.sub394, %cond.false390 ]
  %conv397 = trunc i64 %cond396 to i32
  store i32 %conv397, ptr %m, align 4
  %376 = load ptr, ptr %q, align 8
  %377 = load ptr, ptr %s.addr, align 8
  %end398 = getelementptr inbounds %struct.inflate_blocks_state, ptr %377, i32 0, i32 7
  %378 = load ptr, ptr %end398, align 8
  %cmp399 = icmp eq ptr %376, %378
  br i1 %cmp399, label %land.lhs.true401, label %if.end425

land.lhs.true401:                                 ; preds = %cond.end395
  %379 = load ptr, ptr %s.addr, align 8
  %read402 = getelementptr inbounds %struct.inflate_blocks_state, ptr %379, i32 0, i32 8
  %380 = load ptr, ptr %read402, align 8
  %381 = load ptr, ptr %s.addr, align 8
  %window403 = getelementptr inbounds %struct.inflate_blocks_state, ptr %381, i32 0, i32 6
  %382 = load ptr, ptr %window403, align 8
  %cmp404 = icmp ne ptr %380, %382
  br i1 %cmp404, label %if.then406, label %if.end425

if.then406:                                       ; preds = %land.lhs.true401
  %383 = load ptr, ptr %s.addr, align 8
  %window407 = getelementptr inbounds %struct.inflate_blocks_state, ptr %383, i32 0, i32 6
  %384 = load ptr, ptr %window407, align 8
  store ptr %384, ptr %q, align 8
  %385 = load ptr, ptr %q, align 8
  %386 = load ptr, ptr %s.addr, align 8
  %read408 = getelementptr inbounds %struct.inflate_blocks_state, ptr %386, i32 0, i32 8
  %387 = load ptr, ptr %read408, align 8
  %cmp409 = icmp ult ptr %385, %387
  br i1 %cmp409, label %cond.true411, label %cond.false417

cond.true411:                                     ; preds = %if.then406
  %388 = load ptr, ptr %s.addr, align 8
  %read412 = getelementptr inbounds %struct.inflate_blocks_state, ptr %388, i32 0, i32 8
  %389 = load ptr, ptr %read412, align 8
  %390 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast413 = ptrtoint ptr %389 to i64
  %sub.ptr.rhs.cast414 = ptrtoint ptr %390 to i64
  %sub.ptr.sub415 = sub i64 %sub.ptr.lhs.cast413, %sub.ptr.rhs.cast414
  %sub416 = sub nsw i64 %sub.ptr.sub415, 1
  br label %cond.end422

cond.false417:                                    ; preds = %if.then406
  %391 = load ptr, ptr %s.addr, align 8
  %end418 = getelementptr inbounds %struct.inflate_blocks_state, ptr %391, i32 0, i32 7
  %392 = load ptr, ptr %end418, align 8
  %393 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast419 = ptrtoint ptr %392 to i64
  %sub.ptr.rhs.cast420 = ptrtoint ptr %393 to i64
  %sub.ptr.sub421 = sub i64 %sub.ptr.lhs.cast419, %sub.ptr.rhs.cast420
  br label %cond.end422

cond.end422:                                      ; preds = %cond.false417, %cond.true411
  %cond423 = phi i64 [ %sub416, %cond.true411 ], [ %sub.ptr.sub421, %cond.false417 ]
  %conv424 = trunc i64 %cond423 to i32
  store i32 %conv424, ptr %m, align 4
  br label %if.end425

if.end425:                                        ; preds = %cond.end422, %land.lhs.true401, %cond.end395
  %394 = load i32, ptr %m, align 4
  %cmp426 = icmp eq i32 %394, 0
  br i1 %cmp426, label %if.then428, label %if.end441

if.then428:                                       ; preds = %if.end425
  %395 = load i64, ptr %b, align 8
  %396 = load ptr, ptr %s.addr, align 8
  %bitb429 = getelementptr inbounds %struct.inflate_blocks_state, ptr %396, i32 0, i32 4
  store i64 %395, ptr %bitb429, align 8
  %397 = load i32, ptr %k, align 4
  %398 = load ptr, ptr %s.addr, align 8
  %bitk430 = getelementptr inbounds %struct.inflate_blocks_state, ptr %398, i32 0, i32 3
  store i32 %397, ptr %bitk430, align 4
  %399 = load i32, ptr %n, align 4
  %400 = load ptr, ptr %z.addr, align 8
  %avail_in431 = getelementptr inbounds %struct.z_stream_s, ptr %400, i32 0, i32 1
  store i32 %399, ptr %avail_in431, align 8
  %401 = load ptr, ptr %p, align 8
  %402 = load ptr, ptr %z.addr, align 8
  %next_in432 = getelementptr inbounds %struct.z_stream_s, ptr %402, i32 0, i32 0
  %403 = load ptr, ptr %next_in432, align 8
  %sub.ptr.lhs.cast433 = ptrtoint ptr %401 to i64
  %sub.ptr.rhs.cast434 = ptrtoint ptr %403 to i64
  %sub.ptr.sub435 = sub i64 %sub.ptr.lhs.cast433, %sub.ptr.rhs.cast434
  %404 = load ptr, ptr %z.addr, align 8
  %total_in436 = getelementptr inbounds %struct.z_stream_s, ptr %404, i32 0, i32 2
  %405 = load i64, ptr %total_in436, align 8
  %add437 = add i64 %405, %sub.ptr.sub435
  store i64 %add437, ptr %total_in436, align 8
  %406 = load ptr, ptr %p, align 8
  %407 = load ptr, ptr %z.addr, align 8
  %next_in438 = getelementptr inbounds %struct.z_stream_s, ptr %407, i32 0, i32 0
  store ptr %406, ptr %next_in438, align 8
  %408 = load ptr, ptr %q, align 8
  %409 = load ptr, ptr %s.addr, align 8
  %write439 = getelementptr inbounds %struct.inflate_blocks_state, ptr %409, i32 0, i32 9
  store ptr %408, ptr %write439, align 8
  %410 = load ptr, ptr %s.addr, align 8
  %411 = load ptr, ptr %z.addr, align 8
  %412 = load i32, ptr %r.addr, align 4
  %call440 = call i32 @inflate_flush(ptr noundef %410, ptr noundef %411, i32 noundef %412)
  store i32 %call440, ptr %retval, align 4
  br label %return

if.end441:                                        ; preds = %if.end425
  br label %if.end442

if.end442:                                        ; preds = %if.end441, %if.end374
  br label %if.end443

if.end443:                                        ; preds = %if.end442, %while.body343
  store i32 0, ptr %r.addr, align 4
  %413 = load ptr, ptr %f, align 8
  %incdec.ptr444 = getelementptr inbounds i8, ptr %413, i32 1
  store ptr %incdec.ptr444, ptr %f, align 8
  %414 = load i8, ptr %413, align 1
  %415 = load ptr, ptr %q, align 8
  %incdec.ptr445 = getelementptr inbounds i8, ptr %415, i32 1
  store ptr %incdec.ptr445, ptr %q, align 8
  store i8 %414, ptr %415, align 1
  %416 = load i32, ptr %m, align 4
  %dec446 = add i32 %416, -1
  store i32 %dec446, ptr %m, align 4
  %417 = load ptr, ptr %f, align 8
  %418 = load ptr, ptr %s.addr, align 8
  %end447 = getelementptr inbounds %struct.inflate_blocks_state, ptr %418, i32 0, i32 7
  %419 = load ptr, ptr %end447, align 8
  %cmp448 = icmp eq ptr %417, %419
  br i1 %cmp448, label %if.then450, label %if.end452

if.then450:                                       ; preds = %if.end443
  %420 = load ptr, ptr %s.addr, align 8
  %window451 = getelementptr inbounds %struct.inflate_blocks_state, ptr %420, i32 0, i32 6
  %421 = load ptr, ptr %window451, align 8
  store ptr %421, ptr %f, align 8
  br label %if.end452

if.end452:                                        ; preds = %if.then450, %if.end443
  %422 = load ptr, ptr %c, align 8
  %len453 = getelementptr inbounds %struct.inflate_codes_state, ptr %422, i32 0, i32 1
  %423 = load i32, ptr %len453, align 4
  %dec454 = add i32 %423, -1
  store i32 %dec454, ptr %len453, align 4
  br label %while.cond340, !llvm.loop !11

while.end455:                                     ; preds = %while.cond340
  %424 = load ptr, ptr %c, align 8
  %mode456 = getelementptr inbounds %struct.inflate_codes_state, ptr %424, i32 0, i32 0
  store i32 0, ptr %mode456, align 8
  br label %sw.epilog

sw.bb457:                                         ; preds = %while.body
  %425 = load i32, ptr %m, align 4
  %cmp458 = icmp eq i32 %425, 0
  br i1 %cmp458, label %if.then460, label %if.end557

if.then460:                                       ; preds = %sw.bb457
  %426 = load ptr, ptr %q, align 8
  %427 = load ptr, ptr %s.addr, align 8
  %end461 = getelementptr inbounds %struct.inflate_blocks_state, ptr %427, i32 0, i32 7
  %428 = load ptr, ptr %end461, align 8
  %cmp462 = icmp eq ptr %426, %428
  br i1 %cmp462, label %land.lhs.true464, label %if.end488

land.lhs.true464:                                 ; preds = %if.then460
  %429 = load ptr, ptr %s.addr, align 8
  %read465 = getelementptr inbounds %struct.inflate_blocks_state, ptr %429, i32 0, i32 8
  %430 = load ptr, ptr %read465, align 8
  %431 = load ptr, ptr %s.addr, align 8
  %window466 = getelementptr inbounds %struct.inflate_blocks_state, ptr %431, i32 0, i32 6
  %432 = load ptr, ptr %window466, align 8
  %cmp467 = icmp ne ptr %430, %432
  br i1 %cmp467, label %if.then469, label %if.end488

if.then469:                                       ; preds = %land.lhs.true464
  %433 = load ptr, ptr %s.addr, align 8
  %window470 = getelementptr inbounds %struct.inflate_blocks_state, ptr %433, i32 0, i32 6
  %434 = load ptr, ptr %window470, align 8
  store ptr %434, ptr %q, align 8
  %435 = load ptr, ptr %q, align 8
  %436 = load ptr, ptr %s.addr, align 8
  %read471 = getelementptr inbounds %struct.inflate_blocks_state, ptr %436, i32 0, i32 8
  %437 = load ptr, ptr %read471, align 8
  %cmp472 = icmp ult ptr %435, %437
  br i1 %cmp472, label %cond.true474, label %cond.false480

cond.true474:                                     ; preds = %if.then469
  %438 = load ptr, ptr %s.addr, align 8
  %read475 = getelementptr inbounds %struct.inflate_blocks_state, ptr %438, i32 0, i32 8
  %439 = load ptr, ptr %read475, align 8
  %440 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast476 = ptrtoint ptr %439 to i64
  %sub.ptr.rhs.cast477 = ptrtoint ptr %440 to i64
  %sub.ptr.sub478 = sub i64 %sub.ptr.lhs.cast476, %sub.ptr.rhs.cast477
  %sub479 = sub nsw i64 %sub.ptr.sub478, 1
  br label %cond.end485

cond.false480:                                    ; preds = %if.then469
  %441 = load ptr, ptr %s.addr, align 8
  %end481 = getelementptr inbounds %struct.inflate_blocks_state, ptr %441, i32 0, i32 7
  %442 = load ptr, ptr %end481, align 8
  %443 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast482 = ptrtoint ptr %442 to i64
  %sub.ptr.rhs.cast483 = ptrtoint ptr %443 to i64
  %sub.ptr.sub484 = sub i64 %sub.ptr.lhs.cast482, %sub.ptr.rhs.cast483
  br label %cond.end485

cond.end485:                                      ; preds = %cond.false480, %cond.true474
  %cond486 = phi i64 [ %sub479, %cond.true474 ], [ %sub.ptr.sub484, %cond.false480 ]
  %conv487 = trunc i64 %cond486 to i32
  store i32 %conv487, ptr %m, align 4
  br label %if.end488

if.end488:                                        ; preds = %cond.end485, %land.lhs.true464, %if.then460
  %444 = load i32, ptr %m, align 4
  %cmp489 = icmp eq i32 %444, 0
  br i1 %cmp489, label %if.then491, label %if.end556

if.then491:                                       ; preds = %if.end488
  %445 = load ptr, ptr %q, align 8
  %446 = load ptr, ptr %s.addr, align 8
  %write492 = getelementptr inbounds %struct.inflate_blocks_state, ptr %446, i32 0, i32 9
  store ptr %445, ptr %write492, align 8
  %447 = load ptr, ptr %s.addr, align 8
  %448 = load ptr, ptr %z.addr, align 8
  %449 = load i32, ptr %r.addr, align 4
  %call493 = call i32 @inflate_flush(ptr noundef %447, ptr noundef %448, i32 noundef %449)
  store i32 %call493, ptr %r.addr, align 4
  %450 = load ptr, ptr %s.addr, align 8
  %write494 = getelementptr inbounds %struct.inflate_blocks_state, ptr %450, i32 0, i32 9
  %451 = load ptr, ptr %write494, align 8
  store ptr %451, ptr %q, align 8
  %452 = load ptr, ptr %q, align 8
  %453 = load ptr, ptr %s.addr, align 8
  %read495 = getelementptr inbounds %struct.inflate_blocks_state, ptr %453, i32 0, i32 8
  %454 = load ptr, ptr %read495, align 8
  %cmp496 = icmp ult ptr %452, %454
  br i1 %cmp496, label %cond.true498, label %cond.false504

cond.true498:                                     ; preds = %if.then491
  %455 = load ptr, ptr %s.addr, align 8
  %read499 = getelementptr inbounds %struct.inflate_blocks_state, ptr %455, i32 0, i32 8
  %456 = load ptr, ptr %read499, align 8
  %457 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast500 = ptrtoint ptr %456 to i64
  %sub.ptr.rhs.cast501 = ptrtoint ptr %457 to i64
  %sub.ptr.sub502 = sub i64 %sub.ptr.lhs.cast500, %sub.ptr.rhs.cast501
  %sub503 = sub nsw i64 %sub.ptr.sub502, 1
  br label %cond.end509

cond.false504:                                    ; preds = %if.then491
  %458 = load ptr, ptr %s.addr, align 8
  %end505 = getelementptr inbounds %struct.inflate_blocks_state, ptr %458, i32 0, i32 7
  %459 = load ptr, ptr %end505, align 8
  %460 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast506 = ptrtoint ptr %459 to i64
  %sub.ptr.rhs.cast507 = ptrtoint ptr %460 to i64
  %sub.ptr.sub508 = sub i64 %sub.ptr.lhs.cast506, %sub.ptr.rhs.cast507
  br label %cond.end509

cond.end509:                                      ; preds = %cond.false504, %cond.true498
  %cond510 = phi i64 [ %sub503, %cond.true498 ], [ %sub.ptr.sub508, %cond.false504 ]
  %conv511 = trunc i64 %cond510 to i32
  store i32 %conv511, ptr %m, align 4
  %461 = load ptr, ptr %q, align 8
  %462 = load ptr, ptr %s.addr, align 8
  %end512 = getelementptr inbounds %struct.inflate_blocks_state, ptr %462, i32 0, i32 7
  %463 = load ptr, ptr %end512, align 8
  %cmp513 = icmp eq ptr %461, %463
  br i1 %cmp513, label %land.lhs.true515, label %if.end539

land.lhs.true515:                                 ; preds = %cond.end509
  %464 = load ptr, ptr %s.addr, align 8
  %read516 = getelementptr inbounds %struct.inflate_blocks_state, ptr %464, i32 0, i32 8
  %465 = load ptr, ptr %read516, align 8
  %466 = load ptr, ptr %s.addr, align 8
  %window517 = getelementptr inbounds %struct.inflate_blocks_state, ptr %466, i32 0, i32 6
  %467 = load ptr, ptr %window517, align 8
  %cmp518 = icmp ne ptr %465, %467
  br i1 %cmp518, label %if.then520, label %if.end539

if.then520:                                       ; preds = %land.lhs.true515
  %468 = load ptr, ptr %s.addr, align 8
  %window521 = getelementptr inbounds %struct.inflate_blocks_state, ptr %468, i32 0, i32 6
  %469 = load ptr, ptr %window521, align 8
  store ptr %469, ptr %q, align 8
  %470 = load ptr, ptr %q, align 8
  %471 = load ptr, ptr %s.addr, align 8
  %read522 = getelementptr inbounds %struct.inflate_blocks_state, ptr %471, i32 0, i32 8
  %472 = load ptr, ptr %read522, align 8
  %cmp523 = icmp ult ptr %470, %472
  br i1 %cmp523, label %cond.true525, label %cond.false531

cond.true525:                                     ; preds = %if.then520
  %473 = load ptr, ptr %s.addr, align 8
  %read526 = getelementptr inbounds %struct.inflate_blocks_state, ptr %473, i32 0, i32 8
  %474 = load ptr, ptr %read526, align 8
  %475 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast527 = ptrtoint ptr %474 to i64
  %sub.ptr.rhs.cast528 = ptrtoint ptr %475 to i64
  %sub.ptr.sub529 = sub i64 %sub.ptr.lhs.cast527, %sub.ptr.rhs.cast528
  %sub530 = sub nsw i64 %sub.ptr.sub529, 1
  br label %cond.end536

cond.false531:                                    ; preds = %if.then520
  %476 = load ptr, ptr %s.addr, align 8
  %end532 = getelementptr inbounds %struct.inflate_blocks_state, ptr %476, i32 0, i32 7
  %477 = load ptr, ptr %end532, align 8
  %478 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast533 = ptrtoint ptr %477 to i64
  %sub.ptr.rhs.cast534 = ptrtoint ptr %478 to i64
  %sub.ptr.sub535 = sub i64 %sub.ptr.lhs.cast533, %sub.ptr.rhs.cast534
  br label %cond.end536

cond.end536:                                      ; preds = %cond.false531, %cond.true525
  %cond537 = phi i64 [ %sub530, %cond.true525 ], [ %sub.ptr.sub535, %cond.false531 ]
  %conv538 = trunc i64 %cond537 to i32
  store i32 %conv538, ptr %m, align 4
  br label %if.end539

if.end539:                                        ; preds = %cond.end536, %land.lhs.true515, %cond.end509
  %479 = load i32, ptr %m, align 4
  %cmp540 = icmp eq i32 %479, 0
  br i1 %cmp540, label %if.then542, label %if.end555

if.then542:                                       ; preds = %if.end539
  %480 = load i64, ptr %b, align 8
  %481 = load ptr, ptr %s.addr, align 8
  %bitb543 = getelementptr inbounds %struct.inflate_blocks_state, ptr %481, i32 0, i32 4
  store i64 %480, ptr %bitb543, align 8
  %482 = load i32, ptr %k, align 4
  %483 = load ptr, ptr %s.addr, align 8
  %bitk544 = getelementptr inbounds %struct.inflate_blocks_state, ptr %483, i32 0, i32 3
  store i32 %482, ptr %bitk544, align 4
  %484 = load i32, ptr %n, align 4
  %485 = load ptr, ptr %z.addr, align 8
  %avail_in545 = getelementptr inbounds %struct.z_stream_s, ptr %485, i32 0, i32 1
  store i32 %484, ptr %avail_in545, align 8
  %486 = load ptr, ptr %p, align 8
  %487 = load ptr, ptr %z.addr, align 8
  %next_in546 = getelementptr inbounds %struct.z_stream_s, ptr %487, i32 0, i32 0
  %488 = load ptr, ptr %next_in546, align 8
  %sub.ptr.lhs.cast547 = ptrtoint ptr %486 to i64
  %sub.ptr.rhs.cast548 = ptrtoint ptr %488 to i64
  %sub.ptr.sub549 = sub i64 %sub.ptr.lhs.cast547, %sub.ptr.rhs.cast548
  %489 = load ptr, ptr %z.addr, align 8
  %total_in550 = getelementptr inbounds %struct.z_stream_s, ptr %489, i32 0, i32 2
  %490 = load i64, ptr %total_in550, align 8
  %add551 = add i64 %490, %sub.ptr.sub549
  store i64 %add551, ptr %total_in550, align 8
  %491 = load ptr, ptr %p, align 8
  %492 = load ptr, ptr %z.addr, align 8
  %next_in552 = getelementptr inbounds %struct.z_stream_s, ptr %492, i32 0, i32 0
  store ptr %491, ptr %next_in552, align 8
  %493 = load ptr, ptr %q, align 8
  %494 = load ptr, ptr %s.addr, align 8
  %write553 = getelementptr inbounds %struct.inflate_blocks_state, ptr %494, i32 0, i32 9
  store ptr %493, ptr %write553, align 8
  %495 = load ptr, ptr %s.addr, align 8
  %496 = load ptr, ptr %z.addr, align 8
  %497 = load i32, ptr %r.addr, align 4
  %call554 = call i32 @inflate_flush(ptr noundef %495, ptr noundef %496, i32 noundef %497)
  store i32 %call554, ptr %retval, align 4
  br label %return

if.end555:                                        ; preds = %if.end539
  br label %if.end556

if.end556:                                        ; preds = %if.end555, %if.end488
  br label %if.end557

if.end557:                                        ; preds = %if.end556, %sw.bb457
  store i32 0, ptr %r.addr, align 4
  %498 = load ptr, ptr %c, align 8
  %sub558 = getelementptr inbounds %struct.inflate_codes_state, ptr %498, i32 0, i32 2
  %499 = load i32, ptr %sub558, align 8
  %conv559 = trunc i32 %499 to i8
  %500 = load ptr, ptr %q, align 8
  %incdec.ptr560 = getelementptr inbounds i8, ptr %500, i32 1
  store ptr %incdec.ptr560, ptr %q, align 8
  store i8 %conv559, ptr %500, align 1
  %501 = load i32, ptr %m, align 4
  %dec561 = add i32 %501, -1
  store i32 %dec561, ptr %m, align 4
  %502 = load ptr, ptr %c, align 8
  %mode562 = getelementptr inbounds %struct.inflate_codes_state, ptr %502, i32 0, i32 0
  store i32 0, ptr %mode562, align 8
  br label %sw.epilog

sw.bb563:                                         ; preds = %while.body
  %503 = load i32, ptr %k, align 4
  %cmp564 = icmp ugt i32 %503, 7
  br i1 %cmp564, label %if.then566, label %if.end569

if.then566:                                       ; preds = %sw.bb563
  %504 = load i32, ptr %k, align 4
  %sub567 = sub i32 %504, 8
  store i32 %sub567, ptr %k, align 4
  %505 = load i32, ptr %n, align 4
  %inc = add i32 %505, 1
  store i32 %inc, ptr %n, align 4
  %506 = load ptr, ptr %p, align 8
  %incdec.ptr568 = getelementptr inbounds i8, ptr %506, i32 -1
  store ptr %incdec.ptr568, ptr %p, align 8
  br label %if.end569

if.end569:                                        ; preds = %if.then566, %sw.bb563
  %507 = load ptr, ptr %q, align 8
  %508 = load ptr, ptr %s.addr, align 8
  %write570 = getelementptr inbounds %struct.inflate_blocks_state, ptr %508, i32 0, i32 9
  store ptr %507, ptr %write570, align 8
  %509 = load ptr, ptr %s.addr, align 8
  %510 = load ptr, ptr %z.addr, align 8
  %511 = load i32, ptr %r.addr, align 4
  %call571 = call i32 @inflate_flush(ptr noundef %509, ptr noundef %510, i32 noundef %511)
  store i32 %call571, ptr %r.addr, align 4
  %512 = load ptr, ptr %s.addr, align 8
  %write572 = getelementptr inbounds %struct.inflate_blocks_state, ptr %512, i32 0, i32 9
  %513 = load ptr, ptr %write572, align 8
  store ptr %513, ptr %q, align 8
  %514 = load ptr, ptr %q, align 8
  %515 = load ptr, ptr %s.addr, align 8
  %read573 = getelementptr inbounds %struct.inflate_blocks_state, ptr %515, i32 0, i32 8
  %516 = load ptr, ptr %read573, align 8
  %cmp574 = icmp ult ptr %514, %516
  br i1 %cmp574, label %cond.true576, label %cond.false582

cond.true576:                                     ; preds = %if.end569
  %517 = load ptr, ptr %s.addr, align 8
  %read577 = getelementptr inbounds %struct.inflate_blocks_state, ptr %517, i32 0, i32 8
  %518 = load ptr, ptr %read577, align 8
  %519 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast578 = ptrtoint ptr %518 to i64
  %sub.ptr.rhs.cast579 = ptrtoint ptr %519 to i64
  %sub.ptr.sub580 = sub i64 %sub.ptr.lhs.cast578, %sub.ptr.rhs.cast579
  %sub581 = sub nsw i64 %sub.ptr.sub580, 1
  br label %cond.end587

cond.false582:                                    ; preds = %if.end569
  %520 = load ptr, ptr %s.addr, align 8
  %end583 = getelementptr inbounds %struct.inflate_blocks_state, ptr %520, i32 0, i32 7
  %521 = load ptr, ptr %end583, align 8
  %522 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast584 = ptrtoint ptr %521 to i64
  %sub.ptr.rhs.cast585 = ptrtoint ptr %522 to i64
  %sub.ptr.sub586 = sub i64 %sub.ptr.lhs.cast584, %sub.ptr.rhs.cast585
  br label %cond.end587

cond.end587:                                      ; preds = %cond.false582, %cond.true576
  %cond588 = phi i64 [ %sub581, %cond.true576 ], [ %sub.ptr.sub586, %cond.false582 ]
  %conv589 = trunc i64 %cond588 to i32
  store i32 %conv589, ptr %m, align 4
  %523 = load ptr, ptr %s.addr, align 8
  %read590 = getelementptr inbounds %struct.inflate_blocks_state, ptr %523, i32 0, i32 8
  %524 = load ptr, ptr %read590, align 8
  %525 = load ptr, ptr %s.addr, align 8
  %write591 = getelementptr inbounds %struct.inflate_blocks_state, ptr %525, i32 0, i32 9
  %526 = load ptr, ptr %write591, align 8
  %cmp592 = icmp ne ptr %524, %526
  br i1 %cmp592, label %if.then594, label %if.end607

if.then594:                                       ; preds = %cond.end587
  %527 = load i64, ptr %b, align 8
  %528 = load ptr, ptr %s.addr, align 8
  %bitb595 = getelementptr inbounds %struct.inflate_blocks_state, ptr %528, i32 0, i32 4
  store i64 %527, ptr %bitb595, align 8
  %529 = load i32, ptr %k, align 4
  %530 = load ptr, ptr %s.addr, align 8
  %bitk596 = getelementptr inbounds %struct.inflate_blocks_state, ptr %530, i32 0, i32 3
  store i32 %529, ptr %bitk596, align 4
  %531 = load i32, ptr %n, align 4
  %532 = load ptr, ptr %z.addr, align 8
  %avail_in597 = getelementptr inbounds %struct.z_stream_s, ptr %532, i32 0, i32 1
  store i32 %531, ptr %avail_in597, align 8
  %533 = load ptr, ptr %p, align 8
  %534 = load ptr, ptr %z.addr, align 8
  %next_in598 = getelementptr inbounds %struct.z_stream_s, ptr %534, i32 0, i32 0
  %535 = load ptr, ptr %next_in598, align 8
  %sub.ptr.lhs.cast599 = ptrtoint ptr %533 to i64
  %sub.ptr.rhs.cast600 = ptrtoint ptr %535 to i64
  %sub.ptr.sub601 = sub i64 %sub.ptr.lhs.cast599, %sub.ptr.rhs.cast600
  %536 = load ptr, ptr %z.addr, align 8
  %total_in602 = getelementptr inbounds %struct.z_stream_s, ptr %536, i32 0, i32 2
  %537 = load i64, ptr %total_in602, align 8
  %add603 = add i64 %537, %sub.ptr.sub601
  store i64 %add603, ptr %total_in602, align 8
  %538 = load ptr, ptr %p, align 8
  %539 = load ptr, ptr %z.addr, align 8
  %next_in604 = getelementptr inbounds %struct.z_stream_s, ptr %539, i32 0, i32 0
  store ptr %538, ptr %next_in604, align 8
  %540 = load ptr, ptr %q, align 8
  %541 = load ptr, ptr %s.addr, align 8
  %write605 = getelementptr inbounds %struct.inflate_blocks_state, ptr %541, i32 0, i32 9
  store ptr %540, ptr %write605, align 8
  %542 = load ptr, ptr %s.addr, align 8
  %543 = load ptr, ptr %z.addr, align 8
  %544 = load i32, ptr %r.addr, align 4
  %call606 = call i32 @inflate_flush(ptr noundef %542, ptr noundef %543, i32 noundef %544)
  store i32 %call606, ptr %retval, align 4
  br label %return

if.end607:                                        ; preds = %cond.end587
  %545 = load ptr, ptr %c, align 8
  %mode608 = getelementptr inbounds %struct.inflate_codes_state, ptr %545, i32 0, i32 0
  store i32 8, ptr %mode608, align 8
  br label %sw.bb609

sw.bb609:                                         ; preds = %while.body, %if.end607
  store i32 1, ptr %r.addr, align 4
  %546 = load i64, ptr %b, align 8
  %547 = load ptr, ptr %s.addr, align 8
  %bitb610 = getelementptr inbounds %struct.inflate_blocks_state, ptr %547, i32 0, i32 4
  store i64 %546, ptr %bitb610, align 8
  %548 = load i32, ptr %k, align 4
  %549 = load ptr, ptr %s.addr, align 8
  %bitk611 = getelementptr inbounds %struct.inflate_blocks_state, ptr %549, i32 0, i32 3
  store i32 %548, ptr %bitk611, align 4
  %550 = load i32, ptr %n, align 4
  %551 = load ptr, ptr %z.addr, align 8
  %avail_in612 = getelementptr inbounds %struct.z_stream_s, ptr %551, i32 0, i32 1
  store i32 %550, ptr %avail_in612, align 8
  %552 = load ptr, ptr %p, align 8
  %553 = load ptr, ptr %z.addr, align 8
  %next_in613 = getelementptr inbounds %struct.z_stream_s, ptr %553, i32 0, i32 0
  %554 = load ptr, ptr %next_in613, align 8
  %sub.ptr.lhs.cast614 = ptrtoint ptr %552 to i64
  %sub.ptr.rhs.cast615 = ptrtoint ptr %554 to i64
  %sub.ptr.sub616 = sub i64 %sub.ptr.lhs.cast614, %sub.ptr.rhs.cast615
  %555 = load ptr, ptr %z.addr, align 8
  %total_in617 = getelementptr inbounds %struct.z_stream_s, ptr %555, i32 0, i32 2
  %556 = load i64, ptr %total_in617, align 8
  %add618 = add i64 %556, %sub.ptr.sub616
  store i64 %add618, ptr %total_in617, align 8
  %557 = load ptr, ptr %p, align 8
  %558 = load ptr, ptr %z.addr, align 8
  %next_in619 = getelementptr inbounds %struct.z_stream_s, ptr %558, i32 0, i32 0
  store ptr %557, ptr %next_in619, align 8
  %559 = load ptr, ptr %q, align 8
  %560 = load ptr, ptr %s.addr, align 8
  %write620 = getelementptr inbounds %struct.inflate_blocks_state, ptr %560, i32 0, i32 9
  store ptr %559, ptr %write620, align 8
  %561 = load ptr, ptr %s.addr, align 8
  %562 = load ptr, ptr %z.addr, align 8
  %563 = load i32, ptr %r.addr, align 4
  %call621 = call i32 @inflate_flush(ptr noundef %561, ptr noundef %562, i32 noundef %563)
  store i32 %call621, ptr %retval, align 4
  br label %return

sw.bb622:                                         ; preds = %while.body
  store i32 -3, ptr %r.addr, align 4
  %564 = load i64, ptr %b, align 8
  %565 = load ptr, ptr %s.addr, align 8
  %bitb623 = getelementptr inbounds %struct.inflate_blocks_state, ptr %565, i32 0, i32 4
  store i64 %564, ptr %bitb623, align 8
  %566 = load i32, ptr %k, align 4
  %567 = load ptr, ptr %s.addr, align 8
  %bitk624 = getelementptr inbounds %struct.inflate_blocks_state, ptr %567, i32 0, i32 3
  store i32 %566, ptr %bitk624, align 4
  %568 = load i32, ptr %n, align 4
  %569 = load ptr, ptr %z.addr, align 8
  %avail_in625 = getelementptr inbounds %struct.z_stream_s, ptr %569, i32 0, i32 1
  store i32 %568, ptr %avail_in625, align 8
  %570 = load ptr, ptr %p, align 8
  %571 = load ptr, ptr %z.addr, align 8
  %next_in626 = getelementptr inbounds %struct.z_stream_s, ptr %571, i32 0, i32 0
  %572 = load ptr, ptr %next_in626, align 8
  %sub.ptr.lhs.cast627 = ptrtoint ptr %570 to i64
  %sub.ptr.rhs.cast628 = ptrtoint ptr %572 to i64
  %sub.ptr.sub629 = sub i64 %sub.ptr.lhs.cast627, %sub.ptr.rhs.cast628
  %573 = load ptr, ptr %z.addr, align 8
  %total_in630 = getelementptr inbounds %struct.z_stream_s, ptr %573, i32 0, i32 2
  %574 = load i64, ptr %total_in630, align 8
  %add631 = add i64 %574, %sub.ptr.sub629
  store i64 %add631, ptr %total_in630, align 8
  %575 = load ptr, ptr %p, align 8
  %576 = load ptr, ptr %z.addr, align 8
  %next_in632 = getelementptr inbounds %struct.z_stream_s, ptr %576, i32 0, i32 0
  store ptr %575, ptr %next_in632, align 8
  %577 = load ptr, ptr %q, align 8
  %578 = load ptr, ptr %s.addr, align 8
  %write633 = getelementptr inbounds %struct.inflate_blocks_state, ptr %578, i32 0, i32 9
  store ptr %577, ptr %write633, align 8
  %579 = load ptr, ptr %s.addr, align 8
  %580 = load ptr, ptr %z.addr, align 8
  %581 = load i32, ptr %r.addr, align 4
  %call634 = call i32 @inflate_flush(ptr noundef %579, ptr noundef %580, i32 noundef %581)
  store i32 %call634, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %while.body
  store i32 -2, ptr %r.addr, align 4
  %582 = load i64, ptr %b, align 8
  %583 = load ptr, ptr %s.addr, align 8
  %bitb635 = getelementptr inbounds %struct.inflate_blocks_state, ptr %583, i32 0, i32 4
  store i64 %582, ptr %bitb635, align 8
  %584 = load i32, ptr %k, align 4
  %585 = load ptr, ptr %s.addr, align 8
  %bitk636 = getelementptr inbounds %struct.inflate_blocks_state, ptr %585, i32 0, i32 3
  store i32 %584, ptr %bitk636, align 4
  %586 = load i32, ptr %n, align 4
  %587 = load ptr, ptr %z.addr, align 8
  %avail_in637 = getelementptr inbounds %struct.z_stream_s, ptr %587, i32 0, i32 1
  store i32 %586, ptr %avail_in637, align 8
  %588 = load ptr, ptr %p, align 8
  %589 = load ptr, ptr %z.addr, align 8
  %next_in638 = getelementptr inbounds %struct.z_stream_s, ptr %589, i32 0, i32 0
  %590 = load ptr, ptr %next_in638, align 8
  %sub.ptr.lhs.cast639 = ptrtoint ptr %588 to i64
  %sub.ptr.rhs.cast640 = ptrtoint ptr %590 to i64
  %sub.ptr.sub641 = sub i64 %sub.ptr.lhs.cast639, %sub.ptr.rhs.cast640
  %591 = load ptr, ptr %z.addr, align 8
  %total_in642 = getelementptr inbounds %struct.z_stream_s, ptr %591, i32 0, i32 2
  %592 = load i64, ptr %total_in642, align 8
  %add643 = add i64 %592, %sub.ptr.sub641
  store i64 %add643, ptr %total_in642, align 8
  %593 = load ptr, ptr %p, align 8
  %594 = load ptr, ptr %z.addr, align 8
  %next_in644 = getelementptr inbounds %struct.z_stream_s, ptr %594, i32 0, i32 0
  store ptr %593, ptr %next_in644, align 8
  %595 = load ptr, ptr %q, align 8
  %596 = load ptr, ptr %s.addr, align 8
  %write645 = getelementptr inbounds %struct.inflate_blocks_state, ptr %596, i32 0, i32 9
  store ptr %595, ptr %write645, align 8
  %597 = load ptr, ptr %s.addr, align 8
  %598 = load ptr, ptr %z.addr, align 8
  %599 = load i32, ptr %r.addr, align 4
  %call646 = call i32 @inflate_flush(ptr noundef %597, ptr noundef %598, i32 noundef %599)
  store i32 %call646, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end557, %while.end455, %if.then247, %if.then236, %if.then119, %if.then108, %if.then99, %if.then93, %if.then45
  br label %while.body

return:                                           ; preds = %sw.default, %sw.bb622, %sw.bb609, %if.then594, %if.then542, %if.then428, %if.else279, %if.end255, %if.else192, %if.else144, %if.end121, %if.else
  %600 = load i32, ptr %retval, align 4
  ret i32 %600
}

declare i32 @inflate_fast(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @inflate_flush(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @inflate_codes_free(ptr noundef %c, ptr noundef %z) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %zfree, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %opaque = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %opaque, align 8
  %4 = load ptr, ptr %c.addr, align 8
  call void %1(ptr noundef %3, ptr noundef %4)
  ret void
}

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
