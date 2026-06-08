; ModuleID = './source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/inffast.c'
source_filename = "./source_snapshot/public_repos/mibench/consumer/mad/mad-0.14.2b/libz/inffast.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_blocks_state = type { i32, %union.anon.0, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32, ptr, i32, ptr }
%struct.inflate_huft_s = type { %union.anon, i32 }
%union.anon = type { i32 }
%struct.anon = type { i8, i8 }

@inflate_mask = external global [17 x i32], align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @inflate_fast(i32 noundef %bl, i32 noundef %bd, ptr noundef %tl, ptr noundef %td, ptr noundef %s, ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %bl.addr = alloca i32, align 4
  %bd.addr = alloca i32, align 4
  %tl.addr = alloca ptr, align 8
  %td.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %e = alloca i32, align 4
  %b = alloca i64, align 8
  %k = alloca i32, align 4
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %q = alloca ptr, align 8
  %m = alloca i32, align 4
  %ml = alloca i32, align 4
  %md = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca ptr, align 8
  store i32 %bl, ptr %bl.addr, align 4
  store i32 %bd, ptr %bd.addr, align 4
  store ptr %tl, ptr %tl.addr, align 8
  store ptr %td, ptr %td.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next_in, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %avail_in, align 8
  store i32 %3, ptr %n, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %bitb = getelementptr inbounds %struct.inflate_blocks_state, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %bitb, align 8
  store i64 %5, ptr %b, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %bitk = getelementptr inbounds %struct.inflate_blocks_state, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %bitk, align 4
  store i32 %7, ptr %k, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %write = getelementptr inbounds %struct.inflate_blocks_state, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %write, align 8
  store ptr %9, ptr %q, align 8
  %10 = load ptr, ptr %q, align 8
  %11 = load ptr, ptr %s.addr, align 8
  %read = getelementptr inbounds %struct.inflate_blocks_state, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %read, align 8
  %cmp = icmp ult ptr %10, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load ptr, ptr %s.addr, align 8
  %read1 = getelementptr inbounds %struct.inflate_blocks_state, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %read1, align 8
  %15 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %16 = load ptr, ptr %s.addr, align 8
  %end = getelementptr inbounds %struct.inflate_blocks_state, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %end, align 8
  %18 = load ptr, ptr %q, align 8
  %sub.ptr.lhs.cast2 = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast3 = ptrtoint ptr %18 to i64
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %sub.ptr.sub4, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, ptr %m, align 4
  %19 = load i32, ptr %bl.addr, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  store i32 %20, ptr %ml, align 4
  %21 = load i32, ptr %bd.addr, align 4
  %idxprom5 = zext i32 %21 to i64
  %arrayidx6 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom5
  %22 = load i32, ptr %arrayidx6, align 4
  store i32 %22, ptr %md, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %23 = load i32, ptr %k, align 4
  %cmp7 = icmp ult i32 %23, 20
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, ptr %n, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %n, align 4
  %25 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %26 = load i8, ptr %25, align 1
  %conv9 = zext i8 %26 to i64
  %27 = load i32, ptr %k, align 4
  %sh_prom = zext i32 %27 to i64
  %shl = shl i64 %conv9, %sh_prom
  %28 = load i64, ptr %b, align 8
  %or = or i64 %28, %shl
  store i64 %or, ptr %b, align 8
  %29 = load i32, ptr %k, align 4
  %add = add i32 %29, 8
  store i32 %add, ptr %k, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %30 = load ptr, ptr %tl.addr, align 8
  %31 = load i64, ptr %b, align 8
  %conv10 = trunc i64 %31 to i32
  %32 = load i32, ptr %ml, align 4
  %and = and i32 %conv10, %32
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr inbounds %struct.inflate_huft_s, ptr %30, i64 %idx.ext
  store ptr %add.ptr, ptr %t, align 8
  %word = getelementptr inbounds %struct.inflate_huft_s, ptr %add.ptr, i32 0, i32 0
  %Exop = getelementptr inbounds %struct.anon, ptr %word, i32 0, i32 0
  %33 = load i8, ptr %Exop, align 4
  %conv11 = zext i8 %33 to i32
  store i32 %conv11, ptr %e, align 4
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %34 = load ptr, ptr %t, align 8
  %word14 = getelementptr inbounds %struct.inflate_huft_s, ptr %34, i32 0, i32 0
  %Bits = getelementptr inbounds %struct.anon, ptr %word14, i32 0, i32 1
  %35 = load i8, ptr %Bits, align 1
  %conv15 = zext i8 %35 to i32
  %36 = load i64, ptr %b, align 8
  %sh_prom16 = zext i32 %conv15 to i64
  %shr = lshr i64 %36, %sh_prom16
  store i64 %shr, ptr %b, align 8
  %37 = load ptr, ptr %t, align 8
  %word17 = getelementptr inbounds %struct.inflate_huft_s, ptr %37, i32 0, i32 0
  %Bits18 = getelementptr inbounds %struct.anon, ptr %word17, i32 0, i32 1
  %38 = load i8, ptr %Bits18, align 1
  %conv19 = zext i8 %38 to i32
  %39 = load i32, ptr %k, align 4
  %sub20 = sub i32 %39, %conv19
  store i32 %sub20, ptr %k, align 4
  %40 = load ptr, ptr %t, align 8
  %base = getelementptr inbounds %struct.inflate_huft_s, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %base, align 4
  %conv21 = trunc i32 %41 to i8
  %42 = load ptr, ptr %q, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr22, ptr %q, align 8
  store i8 %conv21, ptr %42, align 1
  %43 = load i32, ptr %m, align 4
  %dec23 = add i32 %43, -1
  store i32 %dec23, ptr %m, align 4
  br label %do.cond290

if.end:                                           ; preds = %while.end
  br label %do.body24

do.body24:                                        ; preds = %do.cond288, %if.end
  %44 = load ptr, ptr %t, align 8
  %word25 = getelementptr inbounds %struct.inflate_huft_s, ptr %44, i32 0, i32 0
  %Bits26 = getelementptr inbounds %struct.anon, ptr %word25, i32 0, i32 1
  %45 = load i8, ptr %Bits26, align 1
  %conv27 = zext i8 %45 to i32
  %46 = load i64, ptr %b, align 8
  %sh_prom28 = zext i32 %conv27 to i64
  %shr29 = lshr i64 %46, %sh_prom28
  store i64 %shr29, ptr %b, align 8
  %47 = load ptr, ptr %t, align 8
  %word30 = getelementptr inbounds %struct.inflate_huft_s, ptr %47, i32 0, i32 0
  %Bits31 = getelementptr inbounds %struct.anon, ptr %word30, i32 0, i32 1
  %48 = load i8, ptr %Bits31, align 1
  %conv32 = zext i8 %48 to i32
  %49 = load i32, ptr %k, align 4
  %sub33 = sub i32 %49, %conv32
  store i32 %sub33, ptr %k, align 4
  %50 = load i32, ptr %e, align 4
  %and34 = and i32 %50, 16
  %tobool = icmp ne i32 %and34, 0
  br i1 %tobool, label %if.then35, label %if.end193

if.then35:                                        ; preds = %do.body24
  %51 = load i32, ptr %e, align 4
  %and36 = and i32 %51, 15
  store i32 %and36, ptr %e, align 4
  %52 = load ptr, ptr %t, align 8
  %base37 = getelementptr inbounds %struct.inflate_huft_s, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %base37, align 4
  %54 = load i64, ptr %b, align 8
  %conv38 = trunc i64 %54 to i32
  %55 = load i32, ptr %e, align 4
  %idxprom39 = zext i32 %55 to i64
  %arrayidx40 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom39
  %56 = load i32, ptr %arrayidx40, align 4
  %and41 = and i32 %conv38, %56
  %add42 = add i32 %53, %and41
  store i32 %add42, ptr %c, align 4
  %57 = load i32, ptr %e, align 4
  %58 = load i64, ptr %b, align 8
  %sh_prom43 = zext i32 %57 to i64
  %shr44 = lshr i64 %58, %sh_prom43
  store i64 %shr44, ptr %b, align 8
  %59 = load i32, ptr %e, align 4
  %60 = load i32, ptr %k, align 4
  %sub45 = sub i32 %60, %59
  store i32 %sub45, ptr %k, align 4
  br label %while.cond46

while.cond46:                                     ; preds = %while.body49, %if.then35
  %61 = load i32, ptr %k, align 4
  %cmp47 = icmp ult i32 %61, 15
  br i1 %cmp47, label %while.body49, label %while.end57

while.body49:                                     ; preds = %while.cond46
  %62 = load i32, ptr %n, align 4
  %dec50 = add i32 %62, -1
  store i32 %dec50, ptr %n, align 4
  %63 = load ptr, ptr %p, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr51, ptr %p, align 8
  %64 = load i8, ptr %63, align 1
  %conv52 = zext i8 %64 to i64
  %65 = load i32, ptr %k, align 4
  %sh_prom53 = zext i32 %65 to i64
  %shl54 = shl i64 %conv52, %sh_prom53
  %66 = load i64, ptr %b, align 8
  %or55 = or i64 %66, %shl54
  store i64 %or55, ptr %b, align 8
  %67 = load i32, ptr %k, align 4
  %add56 = add i32 %67, 8
  store i32 %add56, ptr %k, align 4
  br label %while.cond46, !llvm.loop !8

while.end57:                                      ; preds = %while.cond46
  %68 = load ptr, ptr %td.addr, align 8
  %69 = load i64, ptr %b, align 8
  %conv58 = trunc i64 %69 to i32
  %70 = load i32, ptr %md, align 4
  %and59 = and i32 %conv58, %70
  %idx.ext60 = zext i32 %and59 to i64
  %add.ptr61 = getelementptr inbounds %struct.inflate_huft_s, ptr %68, i64 %idx.ext60
  store ptr %add.ptr61, ptr %t, align 8
  %word62 = getelementptr inbounds %struct.inflate_huft_s, ptr %add.ptr61, i32 0, i32 0
  %Exop63 = getelementptr inbounds %struct.anon, ptr %word62, i32 0, i32 0
  %71 = load i8, ptr %Exop63, align 4
  %conv64 = zext i8 %71 to i32
  store i32 %conv64, ptr %e, align 4
  br label %do.body65

do.body65:                                        ; preds = %do.cond191, %while.end57
  %72 = load ptr, ptr %t, align 8
  %word66 = getelementptr inbounds %struct.inflate_huft_s, ptr %72, i32 0, i32 0
  %Bits67 = getelementptr inbounds %struct.anon, ptr %word66, i32 0, i32 1
  %73 = load i8, ptr %Bits67, align 1
  %conv68 = zext i8 %73 to i32
  %74 = load i64, ptr %b, align 8
  %sh_prom69 = zext i32 %conv68 to i64
  %shr70 = lshr i64 %74, %sh_prom69
  store i64 %shr70, ptr %b, align 8
  %75 = load ptr, ptr %t, align 8
  %word71 = getelementptr inbounds %struct.inflate_huft_s, ptr %75, i32 0, i32 0
  %Bits72 = getelementptr inbounds %struct.anon, ptr %word71, i32 0, i32 1
  %76 = load i8, ptr %Bits72, align 1
  %conv73 = zext i8 %76 to i32
  %77 = load i32, ptr %k, align 4
  %sub74 = sub i32 %77, %conv73
  store i32 %sub74, ptr %k, align 4
  %78 = load i32, ptr %e, align 4
  %and75 = and i32 %78, 16
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then77, label %if.else145

if.then77:                                        ; preds = %do.body65
  %79 = load i32, ptr %e, align 4
  %and78 = and i32 %79, 15
  store i32 %and78, ptr %e, align 4
  br label %while.cond79

while.cond79:                                     ; preds = %while.body82, %if.then77
  %80 = load i32, ptr %k, align 4
  %81 = load i32, ptr %e, align 4
  %cmp80 = icmp ult i32 %80, %81
  br i1 %cmp80, label %while.body82, label %while.end90

while.body82:                                     ; preds = %while.cond79
  %82 = load i32, ptr %n, align 4
  %dec83 = add i32 %82, -1
  store i32 %dec83, ptr %n, align 4
  %83 = load ptr, ptr %p, align 8
  %incdec.ptr84 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr84, ptr %p, align 8
  %84 = load i8, ptr %83, align 1
  %conv85 = zext i8 %84 to i64
  %85 = load i32, ptr %k, align 4
  %sh_prom86 = zext i32 %85 to i64
  %shl87 = shl i64 %conv85, %sh_prom86
  %86 = load i64, ptr %b, align 8
  %or88 = or i64 %86, %shl87
  store i64 %or88, ptr %b, align 8
  %87 = load i32, ptr %k, align 4
  %add89 = add i32 %87, 8
  store i32 %add89, ptr %k, align 4
  br label %while.cond79, !llvm.loop !9

while.end90:                                      ; preds = %while.cond79
  %88 = load ptr, ptr %t, align 8
  %base91 = getelementptr inbounds %struct.inflate_huft_s, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %base91, align 4
  %90 = load i64, ptr %b, align 8
  %conv92 = trunc i64 %90 to i32
  %91 = load i32, ptr %e, align 4
  %idxprom93 = zext i32 %91 to i64
  %arrayidx94 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom93
  %92 = load i32, ptr %arrayidx94, align 4
  %and95 = and i32 %conv92, %92
  %add96 = add i32 %89, %and95
  store i32 %add96, ptr %d, align 4
  %93 = load i32, ptr %e, align 4
  %94 = load i64, ptr %b, align 8
  %sh_prom97 = zext i32 %93 to i64
  %shr98 = lshr i64 %94, %sh_prom97
  store i64 %shr98, ptr %b, align 8
  %95 = load i32, ptr %e, align 4
  %96 = load i32, ptr %k, align 4
  %sub99 = sub i32 %96, %95
  store i32 %sub99, ptr %k, align 4
  %97 = load i32, ptr %c, align 4
  %98 = load i32, ptr %m, align 4
  %sub100 = sub i32 %98, %97
  store i32 %sub100, ptr %m, align 4
  %99 = load ptr, ptr %q, align 8
  %100 = load ptr, ptr %s.addr, align 8
  %window = getelementptr inbounds %struct.inflate_blocks_state, ptr %100, i32 0, i32 6
  %101 = load ptr, ptr %window, align 8
  %sub.ptr.lhs.cast101 = ptrtoint ptr %99 to i64
  %sub.ptr.rhs.cast102 = ptrtoint ptr %101 to i64
  %sub.ptr.sub103 = sub i64 %sub.ptr.lhs.cast101, %sub.ptr.rhs.cast102
  %conv104 = trunc i64 %sub.ptr.sub103 to i32
  %102 = load i32, ptr %d, align 4
  %cmp105 = icmp uge i32 %conv104, %102
  br i1 %cmp105, label %if.then107, label %if.else

if.then107:                                       ; preds = %while.end90
  %103 = load ptr, ptr %q, align 8
  %104 = load i32, ptr %d, align 4
  %idx.ext108 = zext i32 %104 to i64
  %idx.neg = sub i64 0, %idx.ext108
  %add.ptr109 = getelementptr inbounds i8, ptr %103, i64 %idx.neg
  store ptr %add.ptr109, ptr %r, align 8
  %105 = load ptr, ptr %r, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr110, ptr %r, align 8
  %106 = load i8, ptr %105, align 1
  %107 = load ptr, ptr %q, align 8
  %incdec.ptr111 = getelementptr inbounds i8, ptr %107, i32 1
  store ptr %incdec.ptr111, ptr %q, align 8
  store i8 %106, ptr %107, align 1
  %108 = load i32, ptr %c, align 4
  %dec112 = add i32 %108, -1
  store i32 %dec112, ptr %c, align 4
  %109 = load ptr, ptr %r, align 8
  %incdec.ptr113 = getelementptr inbounds i8, ptr %109, i32 1
  store ptr %incdec.ptr113, ptr %r, align 8
  %110 = load i8, ptr %109, align 1
  %111 = load ptr, ptr %q, align 8
  %incdec.ptr114 = getelementptr inbounds i8, ptr %111, i32 1
  store ptr %incdec.ptr114, ptr %q, align 8
  store i8 %110, ptr %111, align 1
  %112 = load i32, ptr %c, align 4
  %dec115 = add i32 %112, -1
  store i32 %dec115, ptr %c, align 4
  br label %if.end137

if.else:                                          ; preds = %while.end90
  %113 = load i32, ptr %d, align 4
  %114 = load ptr, ptr %q, align 8
  %115 = load ptr, ptr %s.addr, align 8
  %window116 = getelementptr inbounds %struct.inflate_blocks_state, ptr %115, i32 0, i32 6
  %116 = load ptr, ptr %window116, align 8
  %sub.ptr.lhs.cast117 = ptrtoint ptr %114 to i64
  %sub.ptr.rhs.cast118 = ptrtoint ptr %116 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  %conv120 = trunc i64 %sub.ptr.sub119 to i32
  %sub121 = sub i32 %113, %conv120
  store i32 %sub121, ptr %e, align 4
  %117 = load ptr, ptr %s.addr, align 8
  %end122 = getelementptr inbounds %struct.inflate_blocks_state, ptr %117, i32 0, i32 7
  %118 = load ptr, ptr %end122, align 8
  %119 = load i32, ptr %e, align 4
  %idx.ext123 = zext i32 %119 to i64
  %idx.neg124 = sub i64 0, %idx.ext123
  %add.ptr125 = getelementptr inbounds i8, ptr %118, i64 %idx.neg124
  store ptr %add.ptr125, ptr %r, align 8
  %120 = load i32, ptr %c, align 4
  %121 = load i32, ptr %e, align 4
  %cmp126 = icmp ugt i32 %120, %121
  br i1 %cmp126, label %if.then128, label %if.end136

if.then128:                                       ; preds = %if.else
  %122 = load i32, ptr %e, align 4
  %123 = load i32, ptr %c, align 4
  %sub129 = sub i32 %123, %122
  store i32 %sub129, ptr %c, align 4
  br label %do.body130

do.body130:                                       ; preds = %do.cond, %if.then128
  %124 = load ptr, ptr %r, align 8
  %incdec.ptr131 = getelementptr inbounds i8, ptr %124, i32 1
  store ptr %incdec.ptr131, ptr %r, align 8
  %125 = load i8, ptr %124, align 1
  %126 = load ptr, ptr %q, align 8
  %incdec.ptr132 = getelementptr inbounds i8, ptr %126, i32 1
  store ptr %incdec.ptr132, ptr %q, align 8
  store i8 %125, ptr %126, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body130
  %127 = load i32, ptr %e, align 4
  %dec133 = add i32 %127, -1
  store i32 %dec133, ptr %e, align 4
  %tobool134 = icmp ne i32 %dec133, 0
  br i1 %tobool134, label %do.body130, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %128 = load ptr, ptr %s.addr, align 8
  %window135 = getelementptr inbounds %struct.inflate_blocks_state, ptr %128, i32 0, i32 6
  %129 = load ptr, ptr %window135, align 8
  store ptr %129, ptr %r, align 8
  br label %if.end136

if.end136:                                        ; preds = %do.end, %if.else
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.then107
  br label %do.body138

do.body138:                                       ; preds = %do.cond141, %if.end137
  %130 = load ptr, ptr %r, align 8
  %incdec.ptr139 = getelementptr inbounds i8, ptr %130, i32 1
  store ptr %incdec.ptr139, ptr %r, align 8
  %131 = load i8, ptr %130, align 1
  %132 = load ptr, ptr %q, align 8
  %incdec.ptr140 = getelementptr inbounds i8, ptr %132, i32 1
  store ptr %incdec.ptr140, ptr %q, align 8
  store i8 %131, ptr %132, align 1
  br label %do.cond141

do.cond141:                                       ; preds = %do.body138
  %133 = load i32, ptr %c, align 4
  %dec142 = add i32 %133, -1
  store i32 %dec142, ptr %c, align 4
  %tobool143 = icmp ne i32 %dec142, 0
  br i1 %tobool143, label %do.body138, label %do.end144, !llvm.loop !11

do.end144:                                        ; preds = %do.cond141
  br label %do.end192

if.else145:                                       ; preds = %do.body65
  %134 = load i32, ptr %e, align 4
  %and146 = and i32 %134, 64
  %cmp147 = icmp eq i32 %and146, 0
  br i1 %cmp147, label %if.then149, label %if.else162

if.then149:                                       ; preds = %if.else145
  %135 = load ptr, ptr %t, align 8
  %base150 = getelementptr inbounds %struct.inflate_huft_s, ptr %135, i32 0, i32 1
  %136 = load i32, ptr %base150, align 4
  %137 = load ptr, ptr %t, align 8
  %idx.ext151 = zext i32 %136 to i64
  %add.ptr152 = getelementptr inbounds %struct.inflate_huft_s, ptr %137, i64 %idx.ext151
  store ptr %add.ptr152, ptr %t, align 8
  %138 = load i64, ptr %b, align 8
  %conv153 = trunc i64 %138 to i32
  %139 = load i32, ptr %e, align 4
  %idxprom154 = zext i32 %139 to i64
  %arrayidx155 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom154
  %140 = load i32, ptr %arrayidx155, align 4
  %and156 = and i32 %conv153, %140
  %141 = load ptr, ptr %t, align 8
  %idx.ext157 = zext i32 %and156 to i64
  %add.ptr158 = getelementptr inbounds %struct.inflate_huft_s, ptr %141, i64 %idx.ext157
  store ptr %add.ptr158, ptr %t, align 8
  %word159 = getelementptr inbounds %struct.inflate_huft_s, ptr %add.ptr158, i32 0, i32 0
  %Exop160 = getelementptr inbounds %struct.anon, ptr %word159, i32 0, i32 0
  %142 = load i8, ptr %Exop160, align 4
  %conv161 = zext i8 %142 to i32
  store i32 %conv161, ptr %e, align 4
  br label %if.end189

if.else162:                                       ; preds = %if.else145
  %143 = load ptr, ptr %z.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %143, i32 0, i32 6
  store ptr @.str, ptr %msg, align 8
  %144 = load ptr, ptr %z.addr, align 8
  %avail_in163 = getelementptr inbounds %struct.z_stream_s, ptr %144, i32 0, i32 1
  %145 = load i32, ptr %avail_in163, align 8
  %146 = load i32, ptr %n, align 4
  %sub164 = sub i32 %145, %146
  store i32 %sub164, ptr %c, align 4
  %147 = load i32, ptr %k, align 4
  %shr165 = lshr i32 %147, 3
  %148 = load i32, ptr %c, align 4
  %cmp166 = icmp ult i32 %shr165, %148
  br i1 %cmp166, label %cond.true168, label %cond.false170

cond.true168:                                     ; preds = %if.else162
  %149 = load i32, ptr %k, align 4
  %shr169 = lshr i32 %149, 3
  br label %cond.end171

cond.false170:                                    ; preds = %if.else162
  %150 = load i32, ptr %c, align 4
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false170, %cond.true168
  %cond172 = phi i32 [ %shr169, %cond.true168 ], [ %150, %cond.false170 ]
  store i32 %cond172, ptr %c, align 4
  %151 = load i32, ptr %c, align 4
  %152 = load i32, ptr %n, align 4
  %add173 = add i32 %152, %151
  store i32 %add173, ptr %n, align 4
  %153 = load i32, ptr %c, align 4
  %154 = load ptr, ptr %p, align 8
  %idx.ext174 = zext i32 %153 to i64
  %idx.neg175 = sub i64 0, %idx.ext174
  %add.ptr176 = getelementptr inbounds i8, ptr %154, i64 %idx.neg175
  store ptr %add.ptr176, ptr %p, align 8
  %155 = load i32, ptr %c, align 4
  %shl177 = shl i32 %155, 3
  %156 = load i32, ptr %k, align 4
  %sub178 = sub i32 %156, %shl177
  store i32 %sub178, ptr %k, align 4
  %157 = load i64, ptr %b, align 8
  %158 = load ptr, ptr %s.addr, align 8
  %bitb179 = getelementptr inbounds %struct.inflate_blocks_state, ptr %158, i32 0, i32 4
  store i64 %157, ptr %bitb179, align 8
  %159 = load i32, ptr %k, align 4
  %160 = load ptr, ptr %s.addr, align 8
  %bitk180 = getelementptr inbounds %struct.inflate_blocks_state, ptr %160, i32 0, i32 3
  store i32 %159, ptr %bitk180, align 4
  %161 = load i32, ptr %n, align 4
  %162 = load ptr, ptr %z.addr, align 8
  %avail_in181 = getelementptr inbounds %struct.z_stream_s, ptr %162, i32 0, i32 1
  store i32 %161, ptr %avail_in181, align 8
  %163 = load ptr, ptr %p, align 8
  %164 = load ptr, ptr %z.addr, align 8
  %next_in182 = getelementptr inbounds %struct.z_stream_s, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %next_in182, align 8
  %sub.ptr.lhs.cast183 = ptrtoint ptr %163 to i64
  %sub.ptr.rhs.cast184 = ptrtoint ptr %165 to i64
  %sub.ptr.sub185 = sub i64 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %166 = load ptr, ptr %z.addr, align 8
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %166, i32 0, i32 2
  %167 = load i64, ptr %total_in, align 8
  %add186 = add i64 %167, %sub.ptr.sub185
  store i64 %add186, ptr %total_in, align 8
  %168 = load ptr, ptr %p, align 8
  %169 = load ptr, ptr %z.addr, align 8
  %next_in187 = getelementptr inbounds %struct.z_stream_s, ptr %169, i32 0, i32 0
  store ptr %168, ptr %next_in187, align 8
  %170 = load ptr, ptr %q, align 8
  %171 = load ptr, ptr %s.addr, align 8
  %write188 = getelementptr inbounds %struct.inflate_blocks_state, ptr %171, i32 0, i32 9
  store ptr %170, ptr %write188, align 8
  store i32 -3, ptr %retval, align 4
  br label %return

if.end189:                                        ; preds = %if.then149
  br label %if.end190

if.end190:                                        ; preds = %if.end189
  br label %do.cond191

do.cond191:                                       ; preds = %if.end190
  br i1 true, label %do.body65, label %do.end192

do.end192:                                        ; preds = %do.cond191, %do.end144
  br label %do.end289

if.end193:                                        ; preds = %do.body24
  %172 = load i32, ptr %e, align 4
  %and194 = and i32 %172, 64
  %cmp195 = icmp eq i32 %and194, 0
  br i1 %cmp195, label %if.then197, label %if.else227

if.then197:                                       ; preds = %if.end193
  %173 = load ptr, ptr %t, align 8
  %base198 = getelementptr inbounds %struct.inflate_huft_s, ptr %173, i32 0, i32 1
  %174 = load i32, ptr %base198, align 4
  %175 = load ptr, ptr %t, align 8
  %idx.ext199 = zext i32 %174 to i64
  %add.ptr200 = getelementptr inbounds %struct.inflate_huft_s, ptr %175, i64 %idx.ext199
  store ptr %add.ptr200, ptr %t, align 8
  %176 = load i64, ptr %b, align 8
  %conv201 = trunc i64 %176 to i32
  %177 = load i32, ptr %e, align 4
  %idxprom202 = zext i32 %177 to i64
  %arrayidx203 = getelementptr inbounds [17 x i32], ptr @inflate_mask, i64 0, i64 %idxprom202
  %178 = load i32, ptr %arrayidx203, align 4
  %and204 = and i32 %conv201, %178
  %179 = load ptr, ptr %t, align 8
  %idx.ext205 = zext i32 %and204 to i64
  %add.ptr206 = getelementptr inbounds %struct.inflate_huft_s, ptr %179, i64 %idx.ext205
  store ptr %add.ptr206, ptr %t, align 8
  %word207 = getelementptr inbounds %struct.inflate_huft_s, ptr %add.ptr206, i32 0, i32 0
  %Exop208 = getelementptr inbounds %struct.anon, ptr %word207, i32 0, i32 0
  %180 = load i8, ptr %Exop208, align 4
  %conv209 = zext i8 %180 to i32
  store i32 %conv209, ptr %e, align 4
  %cmp210 = icmp eq i32 %conv209, 0
  br i1 %cmp210, label %if.then212, label %if.end226

if.then212:                                       ; preds = %if.then197
  %181 = load ptr, ptr %t, align 8
  %word213 = getelementptr inbounds %struct.inflate_huft_s, ptr %181, i32 0, i32 0
  %Bits214 = getelementptr inbounds %struct.anon, ptr %word213, i32 0, i32 1
  %182 = load i8, ptr %Bits214, align 1
  %conv215 = zext i8 %182 to i32
  %183 = load i64, ptr %b, align 8
  %sh_prom216 = zext i32 %conv215 to i64
  %shr217 = lshr i64 %183, %sh_prom216
  store i64 %shr217, ptr %b, align 8
  %184 = load ptr, ptr %t, align 8
  %word218 = getelementptr inbounds %struct.inflate_huft_s, ptr %184, i32 0, i32 0
  %Bits219 = getelementptr inbounds %struct.anon, ptr %word218, i32 0, i32 1
  %185 = load i8, ptr %Bits219, align 1
  %conv220 = zext i8 %185 to i32
  %186 = load i32, ptr %k, align 4
  %sub221 = sub i32 %186, %conv220
  store i32 %sub221, ptr %k, align 4
  %187 = load ptr, ptr %t, align 8
  %base222 = getelementptr inbounds %struct.inflate_huft_s, ptr %187, i32 0, i32 1
  %188 = load i32, ptr %base222, align 4
  %conv223 = trunc i32 %188 to i8
  %189 = load ptr, ptr %q, align 8
  %incdec.ptr224 = getelementptr inbounds i8, ptr %189, i32 1
  store ptr %incdec.ptr224, ptr %q, align 8
  store i8 %conv223, ptr %189, align 1
  %190 = load i32, ptr %m, align 4
  %dec225 = add i32 %190, -1
  store i32 %dec225, ptr %m, align 4
  br label %do.end289

if.end226:                                        ; preds = %if.then197
  br label %if.end287

if.else227:                                       ; preds = %if.end193
  %191 = load i32, ptr %e, align 4
  %and228 = and i32 %191, 32
  %tobool229 = icmp ne i32 %and228, 0
  br i1 %tobool229, label %if.then230, label %if.else258

if.then230:                                       ; preds = %if.else227
  %192 = load ptr, ptr %z.addr, align 8
  %avail_in231 = getelementptr inbounds %struct.z_stream_s, ptr %192, i32 0, i32 1
  %193 = load i32, ptr %avail_in231, align 8
  %194 = load i32, ptr %n, align 4
  %sub232 = sub i32 %193, %194
  store i32 %sub232, ptr %c, align 4
  %195 = load i32, ptr %k, align 4
  %shr233 = lshr i32 %195, 3
  %196 = load i32, ptr %c, align 4
  %cmp234 = icmp ult i32 %shr233, %196
  br i1 %cmp234, label %cond.true236, label %cond.false238

cond.true236:                                     ; preds = %if.then230
  %197 = load i32, ptr %k, align 4
  %shr237 = lshr i32 %197, 3
  br label %cond.end239

cond.false238:                                    ; preds = %if.then230
  %198 = load i32, ptr %c, align 4
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false238, %cond.true236
  %cond240 = phi i32 [ %shr237, %cond.true236 ], [ %198, %cond.false238 ]
  store i32 %cond240, ptr %c, align 4
  %199 = load i32, ptr %c, align 4
  %200 = load i32, ptr %n, align 4
  %add241 = add i32 %200, %199
  store i32 %add241, ptr %n, align 4
  %201 = load i32, ptr %c, align 4
  %202 = load ptr, ptr %p, align 8
  %idx.ext242 = zext i32 %201 to i64
  %idx.neg243 = sub i64 0, %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, ptr %202, i64 %idx.neg243
  store ptr %add.ptr244, ptr %p, align 8
  %203 = load i32, ptr %c, align 4
  %shl245 = shl i32 %203, 3
  %204 = load i32, ptr %k, align 4
  %sub246 = sub i32 %204, %shl245
  store i32 %sub246, ptr %k, align 4
  %205 = load i64, ptr %b, align 8
  %206 = load ptr, ptr %s.addr, align 8
  %bitb247 = getelementptr inbounds %struct.inflate_blocks_state, ptr %206, i32 0, i32 4
  store i64 %205, ptr %bitb247, align 8
  %207 = load i32, ptr %k, align 4
  %208 = load ptr, ptr %s.addr, align 8
  %bitk248 = getelementptr inbounds %struct.inflate_blocks_state, ptr %208, i32 0, i32 3
  store i32 %207, ptr %bitk248, align 4
  %209 = load i32, ptr %n, align 4
  %210 = load ptr, ptr %z.addr, align 8
  %avail_in249 = getelementptr inbounds %struct.z_stream_s, ptr %210, i32 0, i32 1
  store i32 %209, ptr %avail_in249, align 8
  %211 = load ptr, ptr %p, align 8
  %212 = load ptr, ptr %z.addr, align 8
  %next_in250 = getelementptr inbounds %struct.z_stream_s, ptr %212, i32 0, i32 0
  %213 = load ptr, ptr %next_in250, align 8
  %sub.ptr.lhs.cast251 = ptrtoint ptr %211 to i64
  %sub.ptr.rhs.cast252 = ptrtoint ptr %213 to i64
  %sub.ptr.sub253 = sub i64 %sub.ptr.lhs.cast251, %sub.ptr.rhs.cast252
  %214 = load ptr, ptr %z.addr, align 8
  %total_in254 = getelementptr inbounds %struct.z_stream_s, ptr %214, i32 0, i32 2
  %215 = load i64, ptr %total_in254, align 8
  %add255 = add i64 %215, %sub.ptr.sub253
  store i64 %add255, ptr %total_in254, align 8
  %216 = load ptr, ptr %p, align 8
  %217 = load ptr, ptr %z.addr, align 8
  %next_in256 = getelementptr inbounds %struct.z_stream_s, ptr %217, i32 0, i32 0
  store ptr %216, ptr %next_in256, align 8
  %218 = load ptr, ptr %q, align 8
  %219 = load ptr, ptr %s.addr, align 8
  %write257 = getelementptr inbounds %struct.inflate_blocks_state, ptr %219, i32 0, i32 9
  store ptr %218, ptr %write257, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else258:                                       ; preds = %if.else227
  %220 = load ptr, ptr %z.addr, align 8
  %msg259 = getelementptr inbounds %struct.z_stream_s, ptr %220, i32 0, i32 6
  store ptr @.str.1, ptr %msg259, align 8
  %221 = load ptr, ptr %z.addr, align 8
  %avail_in260 = getelementptr inbounds %struct.z_stream_s, ptr %221, i32 0, i32 1
  %222 = load i32, ptr %avail_in260, align 8
  %223 = load i32, ptr %n, align 4
  %sub261 = sub i32 %222, %223
  store i32 %sub261, ptr %c, align 4
  %224 = load i32, ptr %k, align 4
  %shr262 = lshr i32 %224, 3
  %225 = load i32, ptr %c, align 4
  %cmp263 = icmp ult i32 %shr262, %225
  br i1 %cmp263, label %cond.true265, label %cond.false267

cond.true265:                                     ; preds = %if.else258
  %226 = load i32, ptr %k, align 4
  %shr266 = lshr i32 %226, 3
  br label %cond.end268

cond.false267:                                    ; preds = %if.else258
  %227 = load i32, ptr %c, align 4
  br label %cond.end268

cond.end268:                                      ; preds = %cond.false267, %cond.true265
  %cond269 = phi i32 [ %shr266, %cond.true265 ], [ %227, %cond.false267 ]
  store i32 %cond269, ptr %c, align 4
  %228 = load i32, ptr %c, align 4
  %229 = load i32, ptr %n, align 4
  %add270 = add i32 %229, %228
  store i32 %add270, ptr %n, align 4
  %230 = load i32, ptr %c, align 4
  %231 = load ptr, ptr %p, align 8
  %idx.ext271 = zext i32 %230 to i64
  %idx.neg272 = sub i64 0, %idx.ext271
  %add.ptr273 = getelementptr inbounds i8, ptr %231, i64 %idx.neg272
  store ptr %add.ptr273, ptr %p, align 8
  %232 = load i32, ptr %c, align 4
  %shl274 = shl i32 %232, 3
  %233 = load i32, ptr %k, align 4
  %sub275 = sub i32 %233, %shl274
  store i32 %sub275, ptr %k, align 4
  %234 = load i64, ptr %b, align 8
  %235 = load ptr, ptr %s.addr, align 8
  %bitb276 = getelementptr inbounds %struct.inflate_blocks_state, ptr %235, i32 0, i32 4
  store i64 %234, ptr %bitb276, align 8
  %236 = load i32, ptr %k, align 4
  %237 = load ptr, ptr %s.addr, align 8
  %bitk277 = getelementptr inbounds %struct.inflate_blocks_state, ptr %237, i32 0, i32 3
  store i32 %236, ptr %bitk277, align 4
  %238 = load i32, ptr %n, align 4
  %239 = load ptr, ptr %z.addr, align 8
  %avail_in278 = getelementptr inbounds %struct.z_stream_s, ptr %239, i32 0, i32 1
  store i32 %238, ptr %avail_in278, align 8
  %240 = load ptr, ptr %p, align 8
  %241 = load ptr, ptr %z.addr, align 8
  %next_in279 = getelementptr inbounds %struct.z_stream_s, ptr %241, i32 0, i32 0
  %242 = load ptr, ptr %next_in279, align 8
  %sub.ptr.lhs.cast280 = ptrtoint ptr %240 to i64
  %sub.ptr.rhs.cast281 = ptrtoint ptr %242 to i64
  %sub.ptr.sub282 = sub i64 %sub.ptr.lhs.cast280, %sub.ptr.rhs.cast281
  %243 = load ptr, ptr %z.addr, align 8
  %total_in283 = getelementptr inbounds %struct.z_stream_s, ptr %243, i32 0, i32 2
  %244 = load i64, ptr %total_in283, align 8
  %add284 = add i64 %244, %sub.ptr.sub282
  store i64 %add284, ptr %total_in283, align 8
  %245 = load ptr, ptr %p, align 8
  %246 = load ptr, ptr %z.addr, align 8
  %next_in285 = getelementptr inbounds %struct.z_stream_s, ptr %246, i32 0, i32 0
  store ptr %245, ptr %next_in285, align 8
  %247 = load ptr, ptr %q, align 8
  %248 = load ptr, ptr %s.addr, align 8
  %write286 = getelementptr inbounds %struct.inflate_blocks_state, ptr %248, i32 0, i32 9
  store ptr %247, ptr %write286, align 8
  store i32 -3, ptr %retval, align 4
  br label %return

if.end287:                                        ; preds = %if.end226
  br label %do.cond288

do.cond288:                                       ; preds = %if.end287
  br i1 true, label %do.body24, label %do.end289

do.end289:                                        ; preds = %do.cond288, %if.then212, %do.end192
  br label %do.cond290

do.cond290:                                       ; preds = %do.end289, %if.then
  %249 = load i32, ptr %m, align 4
  %cmp291 = icmp uge i32 %249, 258
  br i1 %cmp291, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond290
  %250 = load i32, ptr %n, align 4
  %cmp293 = icmp uge i32 %250, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond290
  %251 = phi i1 [ false, %do.cond290 ], [ %cmp293, %land.rhs ]
  br i1 %251, label %do.body, label %do.end295, !llvm.loop !12

do.end295:                                        ; preds = %land.end
  %252 = load ptr, ptr %z.addr, align 8
  %avail_in296 = getelementptr inbounds %struct.z_stream_s, ptr %252, i32 0, i32 1
  %253 = load i32, ptr %avail_in296, align 8
  %254 = load i32, ptr %n, align 4
  %sub297 = sub i32 %253, %254
  store i32 %sub297, ptr %c, align 4
  %255 = load i32, ptr %k, align 4
  %shr298 = lshr i32 %255, 3
  %256 = load i32, ptr %c, align 4
  %cmp299 = icmp ult i32 %shr298, %256
  br i1 %cmp299, label %cond.true301, label %cond.false303

cond.true301:                                     ; preds = %do.end295
  %257 = load i32, ptr %k, align 4
  %shr302 = lshr i32 %257, 3
  br label %cond.end304

cond.false303:                                    ; preds = %do.end295
  %258 = load i32, ptr %c, align 4
  br label %cond.end304

cond.end304:                                      ; preds = %cond.false303, %cond.true301
  %cond305 = phi i32 [ %shr302, %cond.true301 ], [ %258, %cond.false303 ]
  store i32 %cond305, ptr %c, align 4
  %259 = load i32, ptr %c, align 4
  %260 = load i32, ptr %n, align 4
  %add306 = add i32 %260, %259
  store i32 %add306, ptr %n, align 4
  %261 = load i32, ptr %c, align 4
  %262 = load ptr, ptr %p, align 8
  %idx.ext307 = zext i32 %261 to i64
  %idx.neg308 = sub i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, ptr %262, i64 %idx.neg308
  store ptr %add.ptr309, ptr %p, align 8
  %263 = load i32, ptr %c, align 4
  %shl310 = shl i32 %263, 3
  %264 = load i32, ptr %k, align 4
  %sub311 = sub i32 %264, %shl310
  store i32 %sub311, ptr %k, align 4
  %265 = load i64, ptr %b, align 8
  %266 = load ptr, ptr %s.addr, align 8
  %bitb312 = getelementptr inbounds %struct.inflate_blocks_state, ptr %266, i32 0, i32 4
  store i64 %265, ptr %bitb312, align 8
  %267 = load i32, ptr %k, align 4
  %268 = load ptr, ptr %s.addr, align 8
  %bitk313 = getelementptr inbounds %struct.inflate_blocks_state, ptr %268, i32 0, i32 3
  store i32 %267, ptr %bitk313, align 4
  %269 = load i32, ptr %n, align 4
  %270 = load ptr, ptr %z.addr, align 8
  %avail_in314 = getelementptr inbounds %struct.z_stream_s, ptr %270, i32 0, i32 1
  store i32 %269, ptr %avail_in314, align 8
  %271 = load ptr, ptr %p, align 8
  %272 = load ptr, ptr %z.addr, align 8
  %next_in315 = getelementptr inbounds %struct.z_stream_s, ptr %272, i32 0, i32 0
  %273 = load ptr, ptr %next_in315, align 8
  %sub.ptr.lhs.cast316 = ptrtoint ptr %271 to i64
  %sub.ptr.rhs.cast317 = ptrtoint ptr %273 to i64
  %sub.ptr.sub318 = sub i64 %sub.ptr.lhs.cast316, %sub.ptr.rhs.cast317
  %274 = load ptr, ptr %z.addr, align 8
  %total_in319 = getelementptr inbounds %struct.z_stream_s, ptr %274, i32 0, i32 2
  %275 = load i64, ptr %total_in319, align 8
  %add320 = add i64 %275, %sub.ptr.sub318
  store i64 %add320, ptr %total_in319, align 8
  %276 = load ptr, ptr %p, align 8
  %277 = load ptr, ptr %z.addr, align 8
  %next_in321 = getelementptr inbounds %struct.z_stream_s, ptr %277, i32 0, i32 0
  store ptr %276, ptr %next_in321, align 8
  %278 = load ptr, ptr %q, align 8
  %279 = load ptr, ptr %s.addr, align 8
  %write322 = getelementptr inbounds %struct.inflate_blocks_state, ptr %279, i32 0, i32 9
  store ptr %278, ptr %write322, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end304, %cond.end268, %cond.end239, %cond.end171
  %280 = load i32, ptr %retval, align 4
  ret i32 %280
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
