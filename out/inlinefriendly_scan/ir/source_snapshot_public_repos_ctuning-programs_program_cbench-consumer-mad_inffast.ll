; ModuleID = './source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/inffast.c'
source_filename = "./source_snapshot/public_repos/ctuning-programs/program/cbench-consumer-mad/inffast.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }

@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @inflate_fast(ptr noundef %strm, i32 noundef %start) #0 {
entry:
  %strm.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %in = alloca ptr, align 8
  %last = alloca ptr, align 8
  %out = alloca ptr, align 8
  %beg = alloca ptr, align 8
  %end = alloca ptr, align 8
  %wsize = alloca i32, align 4
  %whave = alloca i32, align 4
  %write = alloca i32, align 4
  %window = alloca ptr, align 8
  %hold = alloca i64, align 8
  %bits = alloca i32, align 4
  %lcode = alloca ptr, align 8
  %dcode = alloca ptr, align 8
  %lmask = alloca i32, align 4
  %dmask = alloca i32, align 4
  %this = alloca %struct.code, align 2
  %op = alloca i32, align 4
  %len = alloca i32, align 4
  %dist = alloca i32, align 4
  %from = alloca ptr, align 8
  store ptr %strm, ptr %strm.addr, align 8
  store i32 %start, ptr %start.addr, align 4
  %0 = load ptr, ptr %strm.addr, align 8
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %2 = load ptr, ptr %strm.addr, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next_in, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 -1
  store ptr %add.ptr, ptr %in, align 8
  %4 = load ptr, ptr %in, align 8
  %5 = load ptr, ptr %strm.addr, align 8
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %avail_in, align 8
  %sub = sub i32 %6, 5
  %idx.ext = zext i32 %sub to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  store ptr %add.ptr2, ptr %last, align 8
  %7 = load ptr, ptr %strm.addr, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %next_out, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %8, i64 -1
  store ptr %add.ptr3, ptr %out, align 8
  %9 = load ptr, ptr %out, align 8
  %10 = load i32, ptr %start.addr, align 4
  %11 = load ptr, ptr %strm.addr, align 8
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %avail_out, align 8
  %sub4 = sub i32 %10, %12
  %idx.ext5 = zext i32 %sub4 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i8, ptr %9, i64 %idx.neg
  store ptr %add.ptr6, ptr %beg, align 8
  %13 = load ptr, ptr %out, align 8
  %14 = load ptr, ptr %strm.addr, align 8
  %avail_out7 = getelementptr inbounds %struct.z_stream_s, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %avail_out7, align 8
  %sub8 = sub i32 %15, 257
  %idx.ext9 = zext i32 %sub8 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %13, i64 %idx.ext9
  store ptr %add.ptr10, ptr %end, align 8
  %16 = load ptr, ptr %state, align 8
  %wsize11 = getelementptr inbounds %struct.inflate_state, ptr %16, i32 0, i32 10
  %17 = load i32, ptr %wsize11, align 4
  store i32 %17, ptr %wsize, align 4
  %18 = load ptr, ptr %state, align 8
  %whave12 = getelementptr inbounds %struct.inflate_state, ptr %18, i32 0, i32 11
  %19 = load i32, ptr %whave12, align 8
  store i32 %19, ptr %whave, align 4
  %20 = load ptr, ptr %state, align 8
  %write13 = getelementptr inbounds %struct.inflate_state, ptr %20, i32 0, i32 12
  %21 = load i32, ptr %write13, align 4
  store i32 %21, ptr %write, align 4
  %22 = load ptr, ptr %state, align 8
  %window14 = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %window14, align 8
  store ptr %23, ptr %window, align 8
  %24 = load ptr, ptr %state, align 8
  %hold15 = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 14
  %25 = load i64, ptr %hold15, align 8
  store i64 %25, ptr %hold, align 8
  %26 = load ptr, ptr %state, align 8
  %bits16 = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 15
  %27 = load i32, ptr %bits16, align 8
  store i32 %27, ptr %bits, align 4
  %28 = load ptr, ptr %state, align 8
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %28, i32 0, i32 19
  %29 = load ptr, ptr %lencode, align 8
  store ptr %29, ptr %lcode, align 8
  %30 = load ptr, ptr %state, align 8
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %30, i32 0, i32 20
  %31 = load ptr, ptr %distcode, align 8
  store ptr %31, ptr %dcode, align 8
  %32 = load ptr, ptr %state, align 8
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %32, i32 0, i32 21
  %33 = load i32, ptr %lenbits, align 8
  %shl = shl i32 1, %33
  %sub17 = sub i32 %shl, 1
  store i32 %sub17, ptr %lmask, align 4
  %34 = load ptr, ptr %state, align 8
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %34, i32 0, i32 22
  %35 = load i32, ptr %distbits, align 4
  %shl18 = shl i32 1, %35
  %sub19 = sub i32 %shl18, 1
  store i32 %sub19, ptr %dmask, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %36 = load i32, ptr %bits, align 4
  %cmp = icmp ult i32 %36, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %37 = load ptr, ptr %in, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %in, align 8
  %38 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %38 to i64
  %39 = load i32, ptr %bits, align 4
  %sh_prom = zext i32 %39 to i64
  %shl20 = shl i64 %conv, %sh_prom
  %40 = load i64, ptr %hold, align 8
  %add = add i64 %40, %shl20
  store i64 %add, ptr %hold, align 8
  %41 = load i32, ptr %bits, align 4
  %add21 = add i32 %41, 8
  store i32 %add21, ptr %bits, align 4
  %42 = load ptr, ptr %in, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %42, i32 1
  store ptr %incdec.ptr22, ptr %in, align 8
  %43 = load i8, ptr %incdec.ptr22, align 1
  %conv23 = zext i8 %43 to i64
  %44 = load i32, ptr %bits, align 4
  %sh_prom24 = zext i32 %44 to i64
  %shl25 = shl i64 %conv23, %sh_prom24
  %45 = load i64, ptr %hold, align 8
  %add26 = add i64 %45, %shl25
  store i64 %add26, ptr %hold, align 8
  %46 = load i32, ptr %bits, align 4
  %add27 = add i32 %46, 8
  store i32 %add27, ptr %bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %47 = load ptr, ptr %lcode, align 8
  %48 = load i64, ptr %hold, align 8
  %49 = load i32, ptr %lmask, align 4
  %conv28 = zext i32 %49 to i64
  %and = and i64 %48, %conv28
  %arrayidx = getelementptr inbounds %struct.code, ptr %47, i64 %and
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx, i64 4, i1 false)
  br label %dolen

dolen:                                            ; preds = %if.then281, %if.end
  %bits29 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %50 = load i8, ptr %bits29, align 1
  %conv30 = zext i8 %50 to i32
  store i32 %conv30, ptr %op, align 4
  %51 = load i32, ptr %op, align 4
  %52 = load i64, ptr %hold, align 8
  %sh_prom31 = zext i32 %51 to i64
  %shr = lshr i64 %52, %sh_prom31
  store i64 %shr, ptr %hold, align 8
  %53 = load i32, ptr %op, align 4
  %54 = load i32, ptr %bits, align 4
  %sub32 = sub i32 %54, %53
  store i32 %sub32, ptr %bits, align 4
  %op33 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %55 = load i8, ptr %op33, align 2
  %conv34 = zext i8 %55 to i32
  store i32 %conv34, ptr %op, align 4
  %56 = load i32, ptr %op, align 4
  %cmp35 = icmp eq i32 %56, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %dolen
  %val = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %57 = load i16, ptr %val, align 2
  %conv38 = trunc i16 %57 to i8
  %58 = load ptr, ptr %out, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr39, ptr %out, align 8
  store i8 %conv38, ptr %incdec.ptr39, align 1
  br label %if.end299

if.else:                                          ; preds = %dolen
  %59 = load i32, ptr %op, align 4
  %and40 = and i32 %59, 16
  %tobool = icmp ne i32 %and40, 0
  br i1 %tobool, label %if.then41, label %if.else277

if.then41:                                        ; preds = %if.else
  %val42 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %60 = load i16, ptr %val42, align 2
  %conv43 = zext i16 %60 to i32
  store i32 %conv43, ptr %len, align 4
  %61 = load i32, ptr %op, align 4
  %and44 = and i32 %61, 15
  store i32 %and44, ptr %op, align 4
  %62 = load i32, ptr %op, align 4
  %tobool45 = icmp ne i32 %62, 0
  br i1 %tobool45, label %if.then46, label %if.end65

if.then46:                                        ; preds = %if.then41
  %63 = load i32, ptr %bits, align 4
  %64 = load i32, ptr %op, align 4
  %cmp47 = icmp ult i32 %63, %64
  br i1 %cmp47, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.then46
  %65 = load ptr, ptr %in, align 8
  %incdec.ptr50 = getelementptr inbounds i8, ptr %65, i32 1
  store ptr %incdec.ptr50, ptr %in, align 8
  %66 = load i8, ptr %incdec.ptr50, align 1
  %conv51 = zext i8 %66 to i64
  %67 = load i32, ptr %bits, align 4
  %sh_prom52 = zext i32 %67 to i64
  %shl53 = shl i64 %conv51, %sh_prom52
  %68 = load i64, ptr %hold, align 8
  %add54 = add i64 %68, %shl53
  store i64 %add54, ptr %hold, align 8
  %69 = load i32, ptr %bits, align 4
  %add55 = add i32 %69, 8
  store i32 %add55, ptr %bits, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.then46
  %70 = load i64, ptr %hold, align 8
  %conv57 = trunc i64 %70 to i32
  %71 = load i32, ptr %op, align 4
  %shl58 = shl i32 1, %71
  %sub59 = sub i32 %shl58, 1
  %and60 = and i32 %conv57, %sub59
  %72 = load i32, ptr %len, align 4
  %add61 = add i32 %72, %and60
  store i32 %add61, ptr %len, align 4
  %73 = load i32, ptr %op, align 4
  %74 = load i64, ptr %hold, align 8
  %sh_prom62 = zext i32 %73 to i64
  %shr63 = lshr i64 %74, %sh_prom62
  store i64 %shr63, ptr %hold, align 8
  %75 = load i32, ptr %op, align 4
  %76 = load i32, ptr %bits, align 4
  %sub64 = sub i32 %76, %75
  store i32 %sub64, ptr %bits, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end56, %if.then41
  %77 = load i32, ptr %bits, align 4
  %cmp66 = icmp ult i32 %77, 15
  br i1 %cmp66, label %if.then68, label %if.end81

if.then68:                                        ; preds = %if.end65
  %78 = load ptr, ptr %in, align 8
  %incdec.ptr69 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr69, ptr %in, align 8
  %79 = load i8, ptr %incdec.ptr69, align 1
  %conv70 = zext i8 %79 to i64
  %80 = load i32, ptr %bits, align 4
  %sh_prom71 = zext i32 %80 to i64
  %shl72 = shl i64 %conv70, %sh_prom71
  %81 = load i64, ptr %hold, align 8
  %add73 = add i64 %81, %shl72
  store i64 %add73, ptr %hold, align 8
  %82 = load i32, ptr %bits, align 4
  %add74 = add i32 %82, 8
  store i32 %add74, ptr %bits, align 4
  %83 = load ptr, ptr %in, align 8
  %incdec.ptr75 = getelementptr inbounds i8, ptr %83, i32 1
  store ptr %incdec.ptr75, ptr %in, align 8
  %84 = load i8, ptr %incdec.ptr75, align 1
  %conv76 = zext i8 %84 to i64
  %85 = load i32, ptr %bits, align 4
  %sh_prom77 = zext i32 %85 to i64
  %shl78 = shl i64 %conv76, %sh_prom77
  %86 = load i64, ptr %hold, align 8
  %add79 = add i64 %86, %shl78
  store i64 %add79, ptr %hold, align 8
  %87 = load i32, ptr %bits, align 4
  %add80 = add i32 %87, 8
  store i32 %add80, ptr %bits, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then68, %if.end65
  %88 = load ptr, ptr %dcode, align 8
  %89 = load i64, ptr %hold, align 8
  %90 = load i32, ptr %dmask, align 4
  %conv82 = zext i32 %90 to i64
  %and83 = and i64 %89, %conv82
  %arrayidx84 = getelementptr inbounds %struct.code, ptr %88, i64 %and83
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx84, i64 4, i1 false)
  br label %dodist

dodist:                                           ; preds = %if.then264, %if.end81
  %bits85 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 1
  %91 = load i8, ptr %bits85, align 1
  %conv86 = zext i8 %91 to i32
  store i32 %conv86, ptr %op, align 4
  %92 = load i32, ptr %op, align 4
  %93 = load i64, ptr %hold, align 8
  %sh_prom87 = zext i32 %92 to i64
  %shr88 = lshr i64 %93, %sh_prom87
  store i64 %shr88, ptr %hold, align 8
  %94 = load i32, ptr %op, align 4
  %95 = load i32, ptr %bits, align 4
  %sub89 = sub i32 %95, %94
  store i32 %sub89, ptr %bits, align 4
  %op90 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 0
  %96 = load i8, ptr %op90, align 2
  %conv91 = zext i8 %96 to i32
  store i32 %conv91, ptr %op, align 4
  %97 = load i32, ptr %op, align 4
  %and92 = and i32 %97, 16
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.then94, label %if.else260

if.then94:                                        ; preds = %dodist
  %val95 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %98 = load i16, ptr %val95, align 2
  %conv96 = zext i16 %98 to i32
  store i32 %conv96, ptr %dist, align 4
  %99 = load i32, ptr %op, align 4
  %and97 = and i32 %99, 15
  store i32 %and97, ptr %op, align 4
  %100 = load i32, ptr %bits, align 4
  %101 = load i32, ptr %op, align 4
  %cmp98 = icmp ult i32 %100, %101
  br i1 %cmp98, label %if.then100, label %if.end117

if.then100:                                       ; preds = %if.then94
  %102 = load ptr, ptr %in, align 8
  %incdec.ptr101 = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr101, ptr %in, align 8
  %103 = load i8, ptr %incdec.ptr101, align 1
  %conv102 = zext i8 %103 to i64
  %104 = load i32, ptr %bits, align 4
  %sh_prom103 = zext i32 %104 to i64
  %shl104 = shl i64 %conv102, %sh_prom103
  %105 = load i64, ptr %hold, align 8
  %add105 = add i64 %105, %shl104
  store i64 %add105, ptr %hold, align 8
  %106 = load i32, ptr %bits, align 4
  %add106 = add i32 %106, 8
  store i32 %add106, ptr %bits, align 4
  %107 = load i32, ptr %bits, align 4
  %108 = load i32, ptr %op, align 4
  %cmp107 = icmp ult i32 %107, %108
  br i1 %cmp107, label %if.then109, label %if.end116

if.then109:                                       ; preds = %if.then100
  %109 = load ptr, ptr %in, align 8
  %incdec.ptr110 = getelementptr inbounds i8, ptr %109, i32 1
  store ptr %incdec.ptr110, ptr %in, align 8
  %110 = load i8, ptr %incdec.ptr110, align 1
  %conv111 = zext i8 %110 to i64
  %111 = load i32, ptr %bits, align 4
  %sh_prom112 = zext i32 %111 to i64
  %shl113 = shl i64 %conv111, %sh_prom112
  %112 = load i64, ptr %hold, align 8
  %add114 = add i64 %112, %shl113
  store i64 %add114, ptr %hold, align 8
  %113 = load i32, ptr %bits, align 4
  %add115 = add i32 %113, 8
  store i32 %add115, ptr %bits, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then109, %if.then100
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then94
  %114 = load i64, ptr %hold, align 8
  %conv118 = trunc i64 %114 to i32
  %115 = load i32, ptr %op, align 4
  %shl119 = shl i32 1, %115
  %sub120 = sub i32 %shl119, 1
  %and121 = and i32 %conv118, %sub120
  %116 = load i32, ptr %dist, align 4
  %add122 = add i32 %116, %and121
  store i32 %add122, ptr %dist, align 4
  %117 = load i32, ptr %op, align 4
  %118 = load i64, ptr %hold, align 8
  %sh_prom123 = zext i32 %117 to i64
  %shr124 = lshr i64 %118, %sh_prom123
  store i64 %shr124, ptr %hold, align 8
  %119 = load i32, ptr %op, align 4
  %120 = load i32, ptr %bits, align 4
  %sub125 = sub i32 %120, %119
  store i32 %sub125, ptr %bits, align 4
  %121 = load ptr, ptr %out, align 8
  %122 = load ptr, ptr %beg, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %121 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %122 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv126 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv126, ptr %op, align 4
  %123 = load i32, ptr %dist, align 4
  %124 = load i32, ptr %op, align 4
  %cmp127 = icmp ugt i32 %123, %124
  br i1 %cmp127, label %if.then129, label %if.else232

if.then129:                                       ; preds = %if.end117
  %125 = load i32, ptr %dist, align 4
  %126 = load i32, ptr %op, align 4
  %sub130 = sub i32 %125, %126
  store i32 %sub130, ptr %op, align 4
  %127 = load i32, ptr %op, align 4
  %128 = load i32, ptr %whave, align 4
  %cmp131 = icmp ugt i32 %127, %128
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.then129
  %129 = load ptr, ptr %strm.addr, align 8
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %129, i32 0, i32 6
  store ptr @.str, ptr %msg, align 8
  %130 = load ptr, ptr %state, align 8
  %mode = getelementptr inbounds %struct.inflate_state, ptr %130, i32 0, i32 0
  store i32 27, ptr %mode, align 8
  br label %do.end305

if.end134:                                        ; preds = %if.then129
  %131 = load ptr, ptr %window, align 8
  %add.ptr135 = getelementptr inbounds i8, ptr %131, i64 -1
  store ptr %add.ptr135, ptr %from, align 8
  %132 = load i32, ptr %write, align 4
  %cmp136 = icmp eq i32 %132, 0
  br i1 %cmp136, label %if.then138, label %if.else154

if.then138:                                       ; preds = %if.end134
  %133 = load i32, ptr %wsize, align 4
  %134 = load i32, ptr %op, align 4
  %sub139 = sub i32 %133, %134
  %135 = load ptr, ptr %from, align 8
  %idx.ext140 = zext i32 %sub139 to i64
  %add.ptr141 = getelementptr inbounds i8, ptr %135, i64 %idx.ext140
  store ptr %add.ptr141, ptr %from, align 8
  %136 = load i32, ptr %op, align 4
  %137 = load i32, ptr %len, align 4
  %cmp142 = icmp ult i32 %136, %137
  br i1 %cmp142, label %if.then144, label %if.end153

if.then144:                                       ; preds = %if.then138
  %138 = load i32, ptr %op, align 4
  %139 = load i32, ptr %len, align 4
  %sub145 = sub i32 %139, %138
  store i32 %sub145, ptr %len, align 4
  br label %do.body146

do.body146:                                       ; preds = %do.cond, %if.then144
  %140 = load ptr, ptr %from, align 8
  %incdec.ptr147 = getelementptr inbounds i8, ptr %140, i32 1
  store ptr %incdec.ptr147, ptr %from, align 8
  %141 = load i8, ptr %incdec.ptr147, align 1
  %142 = load ptr, ptr %out, align 8
  %incdec.ptr148 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %incdec.ptr148, ptr %out, align 8
  store i8 %141, ptr %incdec.ptr148, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body146
  %143 = load i32, ptr %op, align 4
  %dec = add i32 %143, -1
  store i32 %dec, ptr %op, align 4
  %tobool149 = icmp ne i32 %dec, 0
  br i1 %tobool149, label %do.body146, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %144 = load ptr, ptr %out, align 8
  %145 = load i32, ptr %dist, align 4
  %idx.ext150 = zext i32 %145 to i64
  %idx.neg151 = sub i64 0, %idx.ext150
  %add.ptr152 = getelementptr inbounds i8, ptr %144, i64 %idx.neg151
  store ptr %add.ptr152, ptr %from, align 8
  br label %if.end153

if.end153:                                        ; preds = %do.end, %if.then138
  br label %if.end211

if.else154:                                       ; preds = %if.end134
  %146 = load i32, ptr %write, align 4
  %147 = load i32, ptr %op, align 4
  %cmp155 = icmp ult i32 %146, %147
  br i1 %cmp155, label %if.then157, label %if.else191

if.then157:                                       ; preds = %if.else154
  %148 = load i32, ptr %wsize, align 4
  %149 = load i32, ptr %write, align 4
  %add158 = add i32 %148, %149
  %150 = load i32, ptr %op, align 4
  %sub159 = sub i32 %add158, %150
  %151 = load ptr, ptr %from, align 8
  %idx.ext160 = zext i32 %sub159 to i64
  %add.ptr161 = getelementptr inbounds i8, ptr %151, i64 %idx.ext160
  store ptr %add.ptr161, ptr %from, align 8
  %152 = load i32, ptr %write, align 4
  %153 = load i32, ptr %op, align 4
  %sub162 = sub i32 %153, %152
  store i32 %sub162, ptr %op, align 4
  %154 = load i32, ptr %op, align 4
  %155 = load i32, ptr %len, align 4
  %cmp163 = icmp ult i32 %154, %155
  br i1 %cmp163, label %if.then165, label %if.end190

if.then165:                                       ; preds = %if.then157
  %156 = load i32, ptr %op, align 4
  %157 = load i32, ptr %len, align 4
  %sub166 = sub i32 %157, %156
  store i32 %sub166, ptr %len, align 4
  br label %do.body167

do.body167:                                       ; preds = %do.cond170, %if.then165
  %158 = load ptr, ptr %from, align 8
  %incdec.ptr168 = getelementptr inbounds i8, ptr %158, i32 1
  store ptr %incdec.ptr168, ptr %from, align 8
  %159 = load i8, ptr %incdec.ptr168, align 1
  %160 = load ptr, ptr %out, align 8
  %incdec.ptr169 = getelementptr inbounds i8, ptr %160, i32 1
  store ptr %incdec.ptr169, ptr %out, align 8
  store i8 %159, ptr %incdec.ptr169, align 1
  br label %do.cond170

do.cond170:                                       ; preds = %do.body167
  %161 = load i32, ptr %op, align 4
  %dec171 = add i32 %161, -1
  store i32 %dec171, ptr %op, align 4
  %tobool172 = icmp ne i32 %dec171, 0
  br i1 %tobool172, label %do.body167, label %do.end173, !llvm.loop !8

do.end173:                                        ; preds = %do.cond170
  %162 = load ptr, ptr %window, align 8
  %add.ptr174 = getelementptr inbounds i8, ptr %162, i64 -1
  store ptr %add.ptr174, ptr %from, align 8
  %163 = load i32, ptr %write, align 4
  %164 = load i32, ptr %len, align 4
  %cmp175 = icmp ult i32 %163, %164
  br i1 %cmp175, label %if.then177, label %if.end189

if.then177:                                       ; preds = %do.end173
  %165 = load i32, ptr %write, align 4
  store i32 %165, ptr %op, align 4
  %166 = load i32, ptr %op, align 4
  %167 = load i32, ptr %len, align 4
  %sub178 = sub i32 %167, %166
  store i32 %sub178, ptr %len, align 4
  br label %do.body179

do.body179:                                       ; preds = %do.cond182, %if.then177
  %168 = load ptr, ptr %from, align 8
  %incdec.ptr180 = getelementptr inbounds i8, ptr %168, i32 1
  store ptr %incdec.ptr180, ptr %from, align 8
  %169 = load i8, ptr %incdec.ptr180, align 1
  %170 = load ptr, ptr %out, align 8
  %incdec.ptr181 = getelementptr inbounds i8, ptr %170, i32 1
  store ptr %incdec.ptr181, ptr %out, align 8
  store i8 %169, ptr %incdec.ptr181, align 1
  br label %do.cond182

do.cond182:                                       ; preds = %do.body179
  %171 = load i32, ptr %op, align 4
  %dec183 = add i32 %171, -1
  store i32 %dec183, ptr %op, align 4
  %tobool184 = icmp ne i32 %dec183, 0
  br i1 %tobool184, label %do.body179, label %do.end185, !llvm.loop !9

do.end185:                                        ; preds = %do.cond182
  %172 = load ptr, ptr %out, align 8
  %173 = load i32, ptr %dist, align 4
  %idx.ext186 = zext i32 %173 to i64
  %idx.neg187 = sub i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, ptr %172, i64 %idx.neg187
  store ptr %add.ptr188, ptr %from, align 8
  br label %if.end189

if.end189:                                        ; preds = %do.end185, %do.end173
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.then157
  br label %if.end210

if.else191:                                       ; preds = %if.else154
  %174 = load i32, ptr %write, align 4
  %175 = load i32, ptr %op, align 4
  %sub192 = sub i32 %174, %175
  %176 = load ptr, ptr %from, align 8
  %idx.ext193 = zext i32 %sub192 to i64
  %add.ptr194 = getelementptr inbounds i8, ptr %176, i64 %idx.ext193
  store ptr %add.ptr194, ptr %from, align 8
  %177 = load i32, ptr %op, align 4
  %178 = load i32, ptr %len, align 4
  %cmp195 = icmp ult i32 %177, %178
  br i1 %cmp195, label %if.then197, label %if.end209

if.then197:                                       ; preds = %if.else191
  %179 = load i32, ptr %op, align 4
  %180 = load i32, ptr %len, align 4
  %sub198 = sub i32 %180, %179
  store i32 %sub198, ptr %len, align 4
  br label %do.body199

do.body199:                                       ; preds = %do.cond202, %if.then197
  %181 = load ptr, ptr %from, align 8
  %incdec.ptr200 = getelementptr inbounds i8, ptr %181, i32 1
  store ptr %incdec.ptr200, ptr %from, align 8
  %182 = load i8, ptr %incdec.ptr200, align 1
  %183 = load ptr, ptr %out, align 8
  %incdec.ptr201 = getelementptr inbounds i8, ptr %183, i32 1
  store ptr %incdec.ptr201, ptr %out, align 8
  store i8 %182, ptr %incdec.ptr201, align 1
  br label %do.cond202

do.cond202:                                       ; preds = %do.body199
  %184 = load i32, ptr %op, align 4
  %dec203 = add i32 %184, -1
  store i32 %dec203, ptr %op, align 4
  %tobool204 = icmp ne i32 %dec203, 0
  br i1 %tobool204, label %do.body199, label %do.end205, !llvm.loop !10

do.end205:                                        ; preds = %do.cond202
  %185 = load ptr, ptr %out, align 8
  %186 = load i32, ptr %dist, align 4
  %idx.ext206 = zext i32 %186 to i64
  %idx.neg207 = sub i64 0, %idx.ext206
  %add.ptr208 = getelementptr inbounds i8, ptr %185, i64 %idx.neg207
  store ptr %add.ptr208, ptr %from, align 8
  br label %if.end209

if.end209:                                        ; preds = %do.end205, %if.else191
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end190
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.end153
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end211
  %187 = load i32, ptr %len, align 4
  %cmp212 = icmp ugt i32 %187, 2
  br i1 %cmp212, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %188 = load ptr, ptr %from, align 8
  %incdec.ptr214 = getelementptr inbounds i8, ptr %188, i32 1
  store ptr %incdec.ptr214, ptr %from, align 8
  %189 = load i8, ptr %incdec.ptr214, align 1
  %190 = load ptr, ptr %out, align 8
  %incdec.ptr215 = getelementptr inbounds i8, ptr %190, i32 1
  store ptr %incdec.ptr215, ptr %out, align 8
  store i8 %189, ptr %incdec.ptr215, align 1
  %191 = load ptr, ptr %from, align 8
  %incdec.ptr216 = getelementptr inbounds i8, ptr %191, i32 1
  store ptr %incdec.ptr216, ptr %from, align 8
  %192 = load i8, ptr %incdec.ptr216, align 1
  %193 = load ptr, ptr %out, align 8
  %incdec.ptr217 = getelementptr inbounds i8, ptr %193, i32 1
  store ptr %incdec.ptr217, ptr %out, align 8
  store i8 %192, ptr %incdec.ptr217, align 1
  %194 = load ptr, ptr %from, align 8
  %incdec.ptr218 = getelementptr inbounds i8, ptr %194, i32 1
  store ptr %incdec.ptr218, ptr %from, align 8
  %195 = load i8, ptr %incdec.ptr218, align 1
  %196 = load ptr, ptr %out, align 8
  %incdec.ptr219 = getelementptr inbounds i8, ptr %196, i32 1
  store ptr %incdec.ptr219, ptr %out, align 8
  store i8 %195, ptr %incdec.ptr219, align 1
  %197 = load i32, ptr %len, align 4
  %sub220 = sub i32 %197, 3
  store i32 %sub220, ptr %len, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %198 = load i32, ptr %len, align 4
  %tobool221 = icmp ne i32 %198, 0
  br i1 %tobool221, label %if.then222, label %if.end231

if.then222:                                       ; preds = %while.end
  %199 = load ptr, ptr %from, align 8
  %incdec.ptr223 = getelementptr inbounds i8, ptr %199, i32 1
  store ptr %incdec.ptr223, ptr %from, align 8
  %200 = load i8, ptr %incdec.ptr223, align 1
  %201 = load ptr, ptr %out, align 8
  %incdec.ptr224 = getelementptr inbounds i8, ptr %201, i32 1
  store ptr %incdec.ptr224, ptr %out, align 8
  store i8 %200, ptr %incdec.ptr224, align 1
  %202 = load i32, ptr %len, align 4
  %cmp225 = icmp ugt i32 %202, 1
  br i1 %cmp225, label %if.then227, label %if.end230

if.then227:                                       ; preds = %if.then222
  %203 = load ptr, ptr %from, align 8
  %incdec.ptr228 = getelementptr inbounds i8, ptr %203, i32 1
  store ptr %incdec.ptr228, ptr %from, align 8
  %204 = load i8, ptr %incdec.ptr228, align 1
  %205 = load ptr, ptr %out, align 8
  %incdec.ptr229 = getelementptr inbounds i8, ptr %205, i32 1
  store ptr %incdec.ptr229, ptr %out, align 8
  store i8 %204, ptr %incdec.ptr229, align 1
  br label %if.end230

if.end230:                                        ; preds = %if.then227, %if.then222
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %while.end
  br label %if.end259

if.else232:                                       ; preds = %if.end117
  %206 = load ptr, ptr %out, align 8
  %207 = load i32, ptr %dist, align 4
  %idx.ext233 = zext i32 %207 to i64
  %idx.neg234 = sub i64 0, %idx.ext233
  %add.ptr235 = getelementptr inbounds i8, ptr %206, i64 %idx.neg234
  store ptr %add.ptr235, ptr %from, align 8
  br label %do.body236

do.body236:                                       ; preds = %do.cond244, %if.else232
  %208 = load ptr, ptr %from, align 8
  %incdec.ptr237 = getelementptr inbounds i8, ptr %208, i32 1
  store ptr %incdec.ptr237, ptr %from, align 8
  %209 = load i8, ptr %incdec.ptr237, align 1
  %210 = load ptr, ptr %out, align 8
  %incdec.ptr238 = getelementptr inbounds i8, ptr %210, i32 1
  store ptr %incdec.ptr238, ptr %out, align 8
  store i8 %209, ptr %incdec.ptr238, align 1
  %211 = load ptr, ptr %from, align 8
  %incdec.ptr239 = getelementptr inbounds i8, ptr %211, i32 1
  store ptr %incdec.ptr239, ptr %from, align 8
  %212 = load i8, ptr %incdec.ptr239, align 1
  %213 = load ptr, ptr %out, align 8
  %incdec.ptr240 = getelementptr inbounds i8, ptr %213, i32 1
  store ptr %incdec.ptr240, ptr %out, align 8
  store i8 %212, ptr %incdec.ptr240, align 1
  %214 = load ptr, ptr %from, align 8
  %incdec.ptr241 = getelementptr inbounds i8, ptr %214, i32 1
  store ptr %incdec.ptr241, ptr %from, align 8
  %215 = load i8, ptr %incdec.ptr241, align 1
  %216 = load ptr, ptr %out, align 8
  %incdec.ptr242 = getelementptr inbounds i8, ptr %216, i32 1
  store ptr %incdec.ptr242, ptr %out, align 8
  store i8 %215, ptr %incdec.ptr242, align 1
  %217 = load i32, ptr %len, align 4
  %sub243 = sub i32 %217, 3
  store i32 %sub243, ptr %len, align 4
  br label %do.cond244

do.cond244:                                       ; preds = %do.body236
  %218 = load i32, ptr %len, align 4
  %cmp245 = icmp ugt i32 %218, 2
  br i1 %cmp245, label %do.body236, label %do.end247, !llvm.loop !12

do.end247:                                        ; preds = %do.cond244
  %219 = load i32, ptr %len, align 4
  %tobool248 = icmp ne i32 %219, 0
  br i1 %tobool248, label %if.then249, label %if.end258

if.then249:                                       ; preds = %do.end247
  %220 = load ptr, ptr %from, align 8
  %incdec.ptr250 = getelementptr inbounds i8, ptr %220, i32 1
  store ptr %incdec.ptr250, ptr %from, align 8
  %221 = load i8, ptr %incdec.ptr250, align 1
  %222 = load ptr, ptr %out, align 8
  %incdec.ptr251 = getelementptr inbounds i8, ptr %222, i32 1
  store ptr %incdec.ptr251, ptr %out, align 8
  store i8 %221, ptr %incdec.ptr251, align 1
  %223 = load i32, ptr %len, align 4
  %cmp252 = icmp ugt i32 %223, 1
  br i1 %cmp252, label %if.then254, label %if.end257

if.then254:                                       ; preds = %if.then249
  %224 = load ptr, ptr %from, align 8
  %incdec.ptr255 = getelementptr inbounds i8, ptr %224, i32 1
  store ptr %incdec.ptr255, ptr %from, align 8
  %225 = load i8, ptr %incdec.ptr255, align 1
  %226 = load ptr, ptr %out, align 8
  %incdec.ptr256 = getelementptr inbounds i8, ptr %226, i32 1
  store ptr %incdec.ptr256, ptr %out, align 8
  store i8 %225, ptr %incdec.ptr256, align 1
  br label %if.end257

if.end257:                                        ; preds = %if.then254, %if.then249
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %do.end247
  br label %if.end259

if.end259:                                        ; preds = %if.end258, %if.end231
  br label %if.end276

if.else260:                                       ; preds = %dodist
  %227 = load i32, ptr %op, align 4
  %and261 = and i32 %227, 64
  %cmp262 = icmp eq i32 %and261, 0
  br i1 %cmp262, label %if.then264, label %if.else273

if.then264:                                       ; preds = %if.else260
  %228 = load ptr, ptr %dcode, align 8
  %val265 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %229 = load i16, ptr %val265, align 2
  %conv266 = zext i16 %229 to i64
  %230 = load i64, ptr %hold, align 8
  %231 = load i32, ptr %op, align 4
  %shl267 = shl i32 1, %231
  %sub268 = sub i32 %shl267, 1
  %conv269 = zext i32 %sub268 to i64
  %and270 = and i64 %230, %conv269
  %add271 = add i64 %conv266, %and270
  %arrayidx272 = getelementptr inbounds %struct.code, ptr %228, i64 %add271
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx272, i64 4, i1 false)
  br label %dodist

if.else273:                                       ; preds = %if.else260
  %232 = load ptr, ptr %strm.addr, align 8
  %msg274 = getelementptr inbounds %struct.z_stream_s, ptr %232, i32 0, i32 6
  store ptr @.str.1, ptr %msg274, align 8
  %233 = load ptr, ptr %state, align 8
  %mode275 = getelementptr inbounds %struct.inflate_state, ptr %233, i32 0, i32 0
  store i32 27, ptr %mode275, align 8
  br label %do.end305

if.end276:                                        ; preds = %if.end259
  br label %if.end298

if.else277:                                       ; preds = %if.else
  %234 = load i32, ptr %op, align 4
  %and278 = and i32 %234, 64
  %cmp279 = icmp eq i32 %and278, 0
  br i1 %cmp279, label %if.then281, label %if.else290

if.then281:                                       ; preds = %if.else277
  %235 = load ptr, ptr %lcode, align 8
  %val282 = getelementptr inbounds %struct.code, ptr %this, i32 0, i32 2
  %236 = load i16, ptr %val282, align 2
  %conv283 = zext i16 %236 to i64
  %237 = load i64, ptr %hold, align 8
  %238 = load i32, ptr %op, align 4
  %shl284 = shl i32 1, %238
  %sub285 = sub i32 %shl284, 1
  %conv286 = zext i32 %sub285 to i64
  %and287 = and i64 %237, %conv286
  %add288 = add i64 %conv283, %and287
  %arrayidx289 = getelementptr inbounds %struct.code, ptr %235, i64 %add288
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %this, ptr align 2 %arrayidx289, i64 4, i1 false)
  br label %dolen

if.else290:                                       ; preds = %if.else277
  %239 = load i32, ptr %op, align 4
  %and291 = and i32 %239, 32
  %tobool292 = icmp ne i32 %and291, 0
  br i1 %tobool292, label %if.then293, label %if.else295

if.then293:                                       ; preds = %if.else290
  %240 = load ptr, ptr %state, align 8
  %mode294 = getelementptr inbounds %struct.inflate_state, ptr %240, i32 0, i32 0
  store i32 11, ptr %mode294, align 8
  br label %do.end305

if.else295:                                       ; preds = %if.else290
  %241 = load ptr, ptr %strm.addr, align 8
  %msg296 = getelementptr inbounds %struct.z_stream_s, ptr %241, i32 0, i32 6
  store ptr @.str.2, ptr %msg296, align 8
  %242 = load ptr, ptr %state, align 8
  %mode297 = getelementptr inbounds %struct.inflate_state, ptr %242, i32 0, i32 0
  store i32 27, ptr %mode297, align 8
  br label %do.end305

if.end298:                                        ; preds = %if.end276
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.then37
  br label %do.cond300

do.cond300:                                       ; preds = %if.end299
  %243 = load ptr, ptr %in, align 8
  %244 = load ptr, ptr %last, align 8
  %cmp301 = icmp ult ptr %243, %244
  br i1 %cmp301, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond300
  %245 = load ptr, ptr %out, align 8
  %246 = load ptr, ptr %end, align 8
  %cmp303 = icmp ult ptr %245, %246
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond300
  %247 = phi i1 [ false, %do.cond300 ], [ %cmp303, %land.rhs ]
  br i1 %247, label %do.body, label %do.end305, !llvm.loop !13

do.end305:                                        ; preds = %land.end, %if.else295, %if.then293, %if.else273, %if.then133
  %248 = load i32, ptr %bits, align 4
  %shr306 = lshr i32 %248, 3
  store i32 %shr306, ptr %len, align 4
  %249 = load i32, ptr %len, align 4
  %250 = load ptr, ptr %in, align 8
  %idx.ext307 = zext i32 %249 to i64
  %idx.neg308 = sub i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, ptr %250, i64 %idx.neg308
  store ptr %add.ptr309, ptr %in, align 8
  %251 = load i32, ptr %len, align 4
  %shl310 = shl i32 %251, 3
  %252 = load i32, ptr %bits, align 4
  %sub311 = sub i32 %252, %shl310
  store i32 %sub311, ptr %bits, align 4
  %253 = load i32, ptr %bits, align 4
  %shl312 = shl i32 1, %253
  %sub313 = sub i32 %shl312, 1
  %conv314 = zext i32 %sub313 to i64
  %254 = load i64, ptr %hold, align 8
  %and315 = and i64 %254, %conv314
  store i64 %and315, ptr %hold, align 8
  %255 = load ptr, ptr %in, align 8
  %add.ptr316 = getelementptr inbounds i8, ptr %255, i64 1
  %256 = load ptr, ptr %strm.addr, align 8
  %next_in317 = getelementptr inbounds %struct.z_stream_s, ptr %256, i32 0, i32 0
  store ptr %add.ptr316, ptr %next_in317, align 8
  %257 = load ptr, ptr %out, align 8
  %add.ptr318 = getelementptr inbounds i8, ptr %257, i64 1
  %258 = load ptr, ptr %strm.addr, align 8
  %next_out319 = getelementptr inbounds %struct.z_stream_s, ptr %258, i32 0, i32 3
  store ptr %add.ptr318, ptr %next_out319, align 8
  %259 = load ptr, ptr %in, align 8
  %260 = load ptr, ptr %last, align 8
  %cmp320 = icmp ult ptr %259, %260
  br i1 %cmp320, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end305
  %261 = load ptr, ptr %last, align 8
  %262 = load ptr, ptr %in, align 8
  %sub.ptr.lhs.cast322 = ptrtoint ptr %261 to i64
  %sub.ptr.rhs.cast323 = ptrtoint ptr %262 to i64
  %sub.ptr.sub324 = sub i64 %sub.ptr.lhs.cast322, %sub.ptr.rhs.cast323
  %add325 = add nsw i64 5, %sub.ptr.sub324
  br label %cond.end

cond.false:                                       ; preds = %do.end305
  %263 = load ptr, ptr %in, align 8
  %264 = load ptr, ptr %last, align 8
  %sub.ptr.lhs.cast326 = ptrtoint ptr %263 to i64
  %sub.ptr.rhs.cast327 = ptrtoint ptr %264 to i64
  %sub.ptr.sub328 = sub i64 %sub.ptr.lhs.cast326, %sub.ptr.rhs.cast327
  %sub329 = sub nsw i64 5, %sub.ptr.sub328
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add325, %cond.true ], [ %sub329, %cond.false ]
  %conv330 = trunc i64 %cond to i32
  %265 = load ptr, ptr %strm.addr, align 8
  %avail_in331 = getelementptr inbounds %struct.z_stream_s, ptr %265, i32 0, i32 1
  store i32 %conv330, ptr %avail_in331, align 8
  %266 = load ptr, ptr %out, align 8
  %267 = load ptr, ptr %end, align 8
  %cmp332 = icmp ult ptr %266, %267
  br i1 %cmp332, label %cond.true334, label %cond.false339

cond.true334:                                     ; preds = %cond.end
  %268 = load ptr, ptr %end, align 8
  %269 = load ptr, ptr %out, align 8
  %sub.ptr.lhs.cast335 = ptrtoint ptr %268 to i64
  %sub.ptr.rhs.cast336 = ptrtoint ptr %269 to i64
  %sub.ptr.sub337 = sub i64 %sub.ptr.lhs.cast335, %sub.ptr.rhs.cast336
  %add338 = add nsw i64 257, %sub.ptr.sub337
  br label %cond.end344

cond.false339:                                    ; preds = %cond.end
  %270 = load ptr, ptr %out, align 8
  %271 = load ptr, ptr %end, align 8
  %sub.ptr.lhs.cast340 = ptrtoint ptr %270 to i64
  %sub.ptr.rhs.cast341 = ptrtoint ptr %271 to i64
  %sub.ptr.sub342 = sub i64 %sub.ptr.lhs.cast340, %sub.ptr.rhs.cast341
  %sub343 = sub nsw i64 257, %sub.ptr.sub342
  br label %cond.end344

cond.end344:                                      ; preds = %cond.false339, %cond.true334
  %cond345 = phi i64 [ %add338, %cond.true334 ], [ %sub343, %cond.false339 ]
  %conv346 = trunc i64 %cond345 to i32
  %272 = load ptr, ptr %strm.addr, align 8
  %avail_out347 = getelementptr inbounds %struct.z_stream_s, ptr %272, i32 0, i32 4
  store i32 %conv346, ptr %avail_out347, align 8
  %273 = load i64, ptr %hold, align 8
  %274 = load ptr, ptr %state, align 8
  %hold348 = getelementptr inbounds %struct.inflate_state, ptr %274, i32 0, i32 14
  store i64 %273, ptr %hold348, align 8
  %275 = load i32, ptr %bits, align 4
  %276 = load ptr, ptr %state, align 8
  %bits349 = getelementptr inbounds %struct.inflate_state, ptr %276, i32 0, i32 15
  store i32 %275, ptr %bits349, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }

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
