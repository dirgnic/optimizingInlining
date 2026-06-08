; ModuleID = './out/rewritten_ir/teacher_llvm_like_size/source_snapshot_public_repos_tracy_server_TracyPrint.prepared.ll'
source_filename = "./source_snapshot/public_repos/tracy/server/TracyPrint.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

@_ZZN5tracy12TimeToStringExE7bufpool = internal global [8 x [64 x i8]] zeroinitializer, align 1
@_ZZN5tracy12TimeToStringExE6bufsel = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" ns\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \CE\BCs\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" s\00", align 1
@__func__._ZN5tracy12TimeToStringEx = private unnamed_addr constant [13 x i8] c"TimeToString\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"TracyPrint.cpp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"d < 100\00", align 1
@_ZZN5tracy17TimeToStringExactExE7bufpool = internal global [8 x [64 x i8]] zeroinitializer, align 1
@_ZZN5tracy17TimeToStringExactExE6bufsel = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"100+d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"000,\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"000,000,000ns\00", align 1
@_ZZN5tracy15MemSizeToStringExE7bufpool = internal global [8 x [64 x i8]] zeroinitializer, align 1
@_ZZN5tracy15MemSizeToStringExE6bufsel = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"%lli bytes\00", align 1
@__func__._ZN5tracy15MemSizeToStringEx = private unnamed_addr constant [16 x i8] c"MemSizeToString\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZZN5tracy16LocationToStringEPKcjE7bufpool = internal global [8 x [4096 x i8]] zeroinitializer, align 1
@_ZZN5tracy16LocationToStringEPKcjE6bufsel = internal global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"%s:%i\00", align 1
@_ZZN5tracy6detail21RealToStringGetBufferEvE7bufpool = internal global [8 x [64 x i8]] zeroinitializer, align 1
@_ZZN5tracy6detail21RealToStringGetBufferEvE6bufsel = internal global i32 0, align 4
@__func__._ZN5tracyL13PrintSmallIntERPcy = private unnamed_addr constant [14 x i8] c"PrintSmallInt\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"v < 1000\00", align 1
@_ZN5tracyL11IntTable100E = internal global ptr @.str.13, align 8
@.str.13 = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@__func__._ZN5tracyL12PrintTinyIntERPcy = private unnamed_addr constant [13 x i8] c"PrintTinyInt\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"v < 100\00", align 1
@__func__._ZN5tracyL13PrintTinyInt0ERPcy = private unnamed_addr constant [14 x i8] c"PrintTinyInt0\00", align 1
@__func__._ZN5tracyL14PrintSmallInt0ERPcy = private unnamed_addr constant [15 x i8] c"PrintSmallInt0\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"00\00", align 1

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef i64 @_ZN5tracy10_int64_absEx(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  %cmp = icmp slt i64 %x, 0
  %0 = load i64, ptr %x.addr, align 8
  %1 = load i64, ptr %x.addr, align 8
  %sub = sub i64 0, %1
  %storemerge = select i1 %cmp, i64 %sub, i64 %0
  ret i64 %storemerge
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy12TimeToStringEx(i64 noundef %_ns) #1 {
entry:
  %_ns.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %bufstart = alloca ptr, align 8
  %ns = alloca i64, align 8
  %h = alloca i64, align 8
  %m24 = alloca i64, align 8
  %s28 = alloca i64, align 8
  %d = alloca i64, align 8
  %h39 = alloca i64, align 8
  %m43 = alloca i64, align 8
  %s49 = alloca i64, align 8
  store i64 %_ns, ptr %_ns.addr, align 8
  %0 = load i32, ptr @_ZZN5tracy12TimeToStringExE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy12TimeToStringExE7bufpool, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %buf, align 8
  store ptr %arrayidx, ptr %bufstart, align 8
  %add = add nsw i32 %0, 1
  %1 = and i32 %add, 7
  store i32 %1, ptr @_ZZN5tracy12TimeToStringExE6bufsel, align 4
  %2 = load i64, ptr %_ns.addr, align 8
  %call = call noundef i64 @_ZN5tracy10_int64_absEx(i64 noundef %2)
  store i64 %call, ptr %ns, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buf, align 8
  store i8 45, ptr %3, align 1
  %4 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %ns, align 8
  %cmp2 = icmp ult i64 %5, 1000
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load i64, ptr %ns, align 8
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %6)
  %7 = load ptr, ptr %buf, align 8
  store i32 7564832, ptr %7, align 1
  br label %if.end68

if.else:                                          ; preds = %if.end
  %8 = load i64, ptr %ns, align 8
  %cmp4 = icmp ult i64 %8, 1000000
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %9 = load i64, ptr %ns, align 8
  call void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %9)
  %10 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %10, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  br label %if.end68

if.else6:                                         ; preds = %if.else
  %11 = load i64, ptr %ns, align 8
  %cmp7 = icmp ult i64 %11, 1000000000
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  %12 = load i64, ptr %ns, align 8
  %div = udiv i64 %12, 1000
  call void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div)
  %13 = load ptr, ptr %buf, align 8
  store i32 7564576, ptr %13, align 1
  br label %if.end68

if.else9:                                         ; preds = %if.else6
  %14 = load i64, ptr %ns, align 8
  %cmp10 = icmp ult i64 %14, 60000000000
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %15 = load i64, ptr %ns, align 8
  %div12 = udiv i64 %15, 1000000
  call void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div12)
  %16 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %16, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  br label %if.end68

if.else13:                                        ; preds = %if.else9
  %17 = load i64, ptr %ns, align 8
  %cmp14 = icmp ult i64 %17, 3600000000000
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  %18 = load i64, ptr %ns, align 8
  %div16 = udiv i64 %18, 60000000000
  %mul.neg = mul i64 %div16, -60000000000
  %sub = add i64 %mul.neg, %18
  %div17 = sdiv i64 %sub, 1000000
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div16)
  %19 = load ptr, ptr %buf, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %incdec.ptr18, ptr %buf, align 8
  store i8 58, ptr %19, align 1
  call void @_ZN5tracyL16PrintSecondsFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div17)
  %20 = load ptr, ptr %buf, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr19, ptr %buf, align 8
  store i8 0, ptr %20, align 1
  br label %if.end68

if.else20:                                        ; preds = %if.else13
  %21 = load i64, ptr %ns, align 8
  %cmp21 = icmp ult i64 %21, 86400000000000
  br i1 %cmp21, label %if.then22, label %if.else37

if.then22:                                        ; preds = %if.else20
  %22 = load i64, ptr %ns, align 8
  %div23 = udiv i64 %22, 3600000000000
  store i64 %div23, ptr %h, align 8
  %div25 = udiv i64 %22, 60000000000
  %mul26.neg = mul nsw i64 %div23, -60
  %sub27 = add nsw i64 %mul26.neg, %div25
  store i64 %sub27, ptr %m24, align 8
  %23 = load i64, ptr %ns, align 8
  %div29 = udiv i64 %23, 1000000000
  %24 = load i64, ptr %h, align 8
  %mul30.neg = mul i64 %24, -3600
  %sub31 = add i64 %mul30.neg, %div29
  %mul32.neg = mul nsw i64 %sub27, -60
  %sub33 = add i64 %mul32.neg, %sub31
  store i64 %sub33, ptr %s28, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %24)
  %25 = load ptr, ptr %buf, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %incdec.ptr34, ptr %buf, align 8
  store i8 58, ptr %25, align 1
  %26 = load i64, ptr %m24, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %26)
  %27 = load ptr, ptr %buf, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr35, ptr %buf, align 8
  store i8 58, ptr %27, align 1
  %28 = load i64, ptr %s28, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %28)
  %29 = load ptr, ptr %buf, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr36, ptr %buf, align 8
  store i8 0, ptr %29, align 1
  br label %if.end68

if.else37:                                        ; preds = %if.else20
  %30 = load i64, ptr %ns, align 8
  %div38 = udiv i64 %30, 86400000000000
  store i64 %div38, ptr %d, align 8
  %div40 = udiv i64 %30, 3600000000000
  %mul41.neg = mul nsw i64 %div38, -24
  %sub42 = add nsw i64 %mul41.neg, %div40
  store i64 %sub42, ptr %h39, align 8
  %31 = load i64, ptr %ns, align 8
  %div44 = udiv i64 %31, 60000000000
  %32 = load i64, ptr %d, align 8
  %mul45.neg = mul i64 %32, -1440
  %sub46 = add i64 %mul45.neg, %div44
  %mul47.neg = mul nsw i64 %sub42, -60
  %sub48 = add i64 %mul47.neg, %sub46
  store i64 %sub48, ptr %m43, align 8
  %33 = load i64, ptr %ns, align 8
  %div50 = udiv i64 %33, 1000000000
  %34 = load i64, ptr %d, align 8
  %mul51.neg = mul i64 %34, -86400
  %sub52 = add i64 %mul51.neg, %div50
  %35 = load i64, ptr %h39, align 8
  %mul53.neg = mul i64 %35, -3600
  %sub54 = add i64 %mul53.neg, %sub52
  %36 = load i64, ptr %m43, align 8
  %mul55.neg = mul i64 %36, -60
  %sub56 = add i64 %mul55.neg, %sub54
  store i64 %sub56, ptr %s49, align 8
  %37 = load i64, ptr %d, align 8
  %cmp57 = icmp sgt i64 %37, 99
  br i1 %cmp57, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.else37
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy12TimeToStringEx, ptr noundef nonnull @.str.4, i32 noundef 237, ptr noundef nonnull @.str.5) #7
  unreachable

cond.end:                                         ; preds = %if.else37
  %38 = load i64, ptr %d, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %38)
  %39 = load ptr, ptr %buf, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %incdec.ptr59, ptr %buf, align 8
  store i8 100, ptr %39, align 1
  %40 = load i64, ptr %h39, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %40)
  %41 = load ptr, ptr %buf, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %incdec.ptr60, ptr %buf, align 8
  store i8 58, ptr %41, align 1
  %42 = load i64, ptr %m43, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %42)
  %43 = load ptr, ptr %buf, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr61, ptr %buf, align 8
  store i8 58, ptr %43, align 1
  %44 = load i64, ptr %s49, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %44)
  %45 = load ptr, ptr %buf, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr62, ptr %buf, align 8
  store i8 0, ptr %45, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then5, %if.then11, %if.then22, %cond.end, %if.then15, %if.then8, %if.then3
  %46 = load ptr, ptr %bufstart, align 8
  ret ptr %46
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %cmp = icmp ugt i64 %v, 999
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintSmallIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 59, ptr noundef nonnull @.str.12) #7
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp ugt i64 %0, 99
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %4 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %4, 10
  %mul = shl nuw nsw i64 %div, 1
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %mul
  %5 = load i16, ptr %add.ptr, align 1
  store i16 %5, ptr %2, align 1
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %add.ptr2, ptr %6, align 8
  br label %if.end6

if.else:                                          ; preds = %cond.end
  %8 = load i64, ptr %v.addr, align 8
  %cmp3 = icmp ugt i64 %8, 9
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  %9 = load i64, ptr %v.addr, align 8
  %div5 = udiv i64 %9, 10
  %10 = trunc i64 %div5 to i8
  %conv = add i8 %10, 48
  %11 = load ptr, ptr %buf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %incdec.ptr, ptr %11, align 8
  store i8 %conv, ptr %12, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %if.then
  %13 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %13, 10
  %14 = trunc i64 %rem to i8
  %conv8 = or i8 %14, 48
  %15 = load ptr, ptr %buf.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr9, ptr %15, align 8
  store i8 %conv8, ptr %16, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %in = alloca i64, align 8
  %fr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %div = udiv i64 %v, 1000
  store i64 %div, ptr %in, align 8
  %rem = urem i64 %v, 1000
  store i64 %rem, ptr %fr, align 8
  %cmp = icmp ugt i64 %rem, 994
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %in, align 8
  %cmp1 = icmp ult i64 %0, 999
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i64, ptr %in, align 8
  %add = add i64 %2, 1
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %add)
  br label %if.end7

if.else:                                          ; preds = %if.then
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  store i32 808464433, ptr %4, align 1
  %5 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 4
  store ptr %add.ptr, ptr %3, align 8
  br label %if.end7

if.else3:                                         ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i64, ptr %in, align 8
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %7)
  %8 = load i64, ptr %fr, align 8
  %cmp4 = icmp ugt i64 %8, 5
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.else3
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load i64, ptr %fr, align 8
  call void @_ZN5tracyL11PrintFrac00ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef %10)
  br label %if.end7

if.end7:                                          ; preds = %if.else3, %if.then5, %if.then2, %if.else
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %cmp = icmp ugt i64 %v, 99
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #7
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp ugt i64 %0, 9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %1 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %1, 10
  %2 = trunc i64 %div to i8
  %conv = add i8 %2, 48
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %3, align 8
  store i8 %conv, ptr %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %5 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %5, 10
  %6 = trunc i64 %rem to i8
  %conv3 = or i8 %6, 48
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %incdec.ptr4, ptr %7, align 8
  store i8 %conv3, ptr %8, align 1
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL16PrintSecondsFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %in = alloca i64, align 8
  %fr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %div = udiv i64 %v, 1000
  store i64 %div, ptr %in, align 8
  %rem = urem i64 %v, 1000
  store i64 %rem, ptr %fr, align 8
  %cmp = icmp ugt i64 %rem, 949
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load i64, ptr %in, align 8
  %add = add i64 %1, 1
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %add)
  br label %if.end3

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load i64, ptr %in, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %4 = load i64, ptr %fr, align 8
  %cmp1 = icmp ugt i64 %4, 50
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load i64, ptr %fr, align 8
  call void @_ZN5tracyL10PrintFrac0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %6)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2, %if.then
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %cmp = icmp ugt i64 %v, 99
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #7
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp ugt i64 %0, 9
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %1 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %1, 10
  %2 = trunc i64 %div to i8
  %conv = add i8 %2, 48
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %3, align 8
  store i8 %conv, ptr %4, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %incdec.ptr2, ptr %5, align 8
  store i8 48, ptr %6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %7, 10
  %8 = trunc i64 %rem to i8
  %conv4 = or i8 %8, 48
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr5, ptr %9, align 8
  store i8 %conv4, ptr %10, align 1
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy17TimeToStringExactEx(i64 noundef %_ns) #1 {
entry:
  %_ns.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %bufstart = alloca ptr, align 8
  %ns = alloca i64, align 8
  %numStart = alloca ptr, align 8
  %d = alloca i64, align 8
  %h = alloca i64, align 8
  %m = alloca i64, align 8
  %s = alloca i64, align 8
  %h27 = alloca i64, align 8
  %m29 = alloca i64, align 8
  %s33 = alloca i64, align 8
  store i64 %_ns, ptr %_ns.addr, align 8
  %0 = load i32, ptr @_ZZN5tracy17TimeToStringExactExE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy17TimeToStringExactExE7bufpool, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %buf, align 8
  store ptr %arrayidx, ptr %bufstart, align 8
  %add = add nsw i32 %0, 1
  %1 = and i32 %add, 7
  store i32 %1, ptr @_ZZN5tracy17TimeToStringExactExE6bufsel, align 4
  %2 = load i64, ptr %_ns.addr, align 8
  %call = call noundef i64 @_ZN5tracy10_int64_absEx(i64 noundef %2)
  store i64 %call, ptr %ns, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buf, align 8
  store i8 45, ptr %3, align 1
  %4 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %buf, align 8
  store ptr %5, ptr %numStart, align 8
  %6 = load i64, ptr %ns, align 8
  %cmp2 = icmp ugt i64 %6, 86399999999999
  br i1 %cmp2, label %if.then3, label %if.else24

if.then3:                                         ; preds = %if.end
  %7 = load i64, ptr %ns, align 8
  %div = udiv i64 %7, 86400000000000
  store i64 %div, ptr %d, align 8
  %div4 = udiv i64 %7, 3600000000000
  %mul.neg = mul nsw i64 %div, -24
  %sub = add nsw i64 %mul.neg, %div4
  store i64 %sub, ptr %h, align 8
  %8 = load i64, ptr %ns, align 8
  %div5 = udiv i64 %8, 60000000000
  %9 = load i64, ptr %d, align 8
  %mul6.neg = mul i64 %9, -1440
  %sub7 = add i64 %mul6.neg, %div5
  %mul8.neg = mul nsw i64 %sub, -60
  %sub9 = add i64 %mul8.neg, %sub7
  store i64 %sub9, ptr %m, align 8
  %10 = load i64, ptr %ns, align 8
  %div10 = udiv i64 %10, 1000000000
  %11 = load i64, ptr %d, align 8
  %mul11.neg = mul i64 %11, -86400
  %sub12 = add i64 %mul11.neg, %div10
  %12 = load i64, ptr %h, align 8
  %mul13.neg = mul i64 %12, -3600
  %sub14 = add i64 %mul13.neg, %sub12
  %13 = load i64, ptr %m, align 8
  %mul15.neg = mul i64 %13, -60
  %sub16 = add i64 %mul15.neg, %sub14
  store i64 %sub16, ptr %s, align 8
  %14 = load i64, ptr %d, align 8
  %cmp17 = icmp slt i64 %14, 100
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then3
  %15 = load i64, ptr %d, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %15)
  %16 = load ptr, ptr %buf, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %incdec.ptr19, ptr %buf, align 8
  store i8 100, ptr %16, align 1
  br label %if.end20

if.else:                                          ; preds = %if.then3
  %17 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %17, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %18 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 5
  store ptr %add.ptr, ptr %buf, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  %19 = load i64, ptr %h, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %19)
  %20 = load ptr, ptr %buf, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr21, ptr %buf, align 8
  store i8 58, ptr %20, align 1
  %21 = load i64, ptr %m, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %21)
  %22 = load ptr, ptr %buf, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr22, ptr %buf, align 8
  store i8 58, ptr %22, align 1
  %23 = load i64, ptr %s, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %23)
  %24 = load i64, ptr %ns, align 8
  %rem23 = urem i64 %24, 1000000000
  store i64 %rem23, ptr %ns, align 8
  br label %if.end62

if.else24:                                        ; preds = %if.end
  %25 = load i64, ptr %ns, align 8
  %cmp25 = icmp ugt i64 %25, 3599999999999
  br i1 %cmp25, label %if.then26, label %if.else42

if.then26:                                        ; preds = %if.else24
  %26 = load i64, ptr %ns, align 8
  %div28 = udiv i64 %26, 3600000000000
  store i64 %div28, ptr %h27, align 8
  %div30 = udiv i64 %26, 60000000000
  %mul31.neg = mul nsw i64 %div28, -60
  %sub32 = add nsw i64 %mul31.neg, %div30
  store i64 %sub32, ptr %m29, align 8
  %27 = load i64, ptr %ns, align 8
  %div34 = udiv i64 %27, 1000000000
  %28 = load i64, ptr %h27, align 8
  %mul35.neg = mul i64 %28, -3600
  %sub36 = add i64 %mul35.neg, %div34
  %mul37.neg = mul nsw i64 %sub32, -60
  %sub38 = add i64 %mul37.neg, %sub36
  store i64 %sub38, ptr %s33, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %28)
  %29 = load ptr, ptr %buf, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr39, ptr %buf, align 8
  store i8 58, ptr %29, align 1
  %30 = load i64, ptr %m29, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %30)
  %31 = load ptr, ptr %buf, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %incdec.ptr40, ptr %buf, align 8
  store i8 58, ptr %31, align 1
  %32 = load i64, ptr %s33, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %32)
  %33 = load i64, ptr %ns, align 8
  %rem41 = urem i64 %33, 1000000000
  store i64 %rem41, ptr %ns, align 8
  br label %if.end62

if.else42:                                        ; preds = %if.else24
  %34 = load i64, ptr %ns, align 8
  %cmp43 = icmp ugt i64 %34, 59999999999
  br i1 %cmp43, label %if.then44, label %if.else53

if.then44:                                        ; preds = %if.else42
  %35 = load i64, ptr %ns, align 8
  %div46 = udiv i64 %35, 60000000000
  %div48 = udiv i64 %35, 1000000000
  %mul49.neg = mul nsw i64 %div46, -60
  %sub50 = add nsw i64 %mul49.neg, %div48
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div46)
  %36 = load ptr, ptr %buf, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %incdec.ptr51, ptr %buf, align 8
  store i8 58, ptr %36, align 1
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %sub50)
  %37 = load i64, ptr %ns, align 8
  %rem52 = urem i64 %37, 1000000000
  store i64 %rem52, ptr %ns, align 8
  br label %if.end62

if.else53:                                        ; preds = %if.else42
  %38 = load i64, ptr %ns, align 8
  %cmp54 = icmp ugt i64 %38, 999999999
  br i1 %cmp54, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.else53
  %39 = load i64, ptr %ns, align 8
  %div56 = udiv i64 %39, 1000000000
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div56)
  %40 = load ptr, ptr %buf, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %incdec.ptr57, ptr %buf, align 8
  store i8 115, ptr %40, align 1
  %41 = load i64, ptr %ns, align 8
  %rem58 = urem i64 %41, 1000000000
  store i64 %rem58, ptr %ns, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then26, %if.else53, %if.then55, %if.then44, %if.end20
  %42 = load i64, ptr %ns, align 8
  %cmp63.not = icmp eq i64 %42, 0
  br i1 %cmp63.not, label %if.else87, label %if.then64

if.then64:                                        ; preds = %if.end62
  %43 = load ptr, ptr %buf, align 8
  %44 = load ptr, ptr %numStart, align 8
  %cmp65.not = icmp eq ptr %43, %44
  br i1 %cmp65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.then64
  %45 = load ptr, ptr %buf, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %incdec.ptr67, ptr %buf, align 8
  store i8 32, ptr %45, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64
  %46 = load i64, ptr %ns, align 8
  %cmp69 = icmp ugt i64 %46, 999999
  br i1 %cmp69, label %if.then70, label %if.else74

if.then70:                                        ; preds = %if.end68
  %47 = load i64, ptr %ns, align 8
  %div71 = udiv i64 %47, 1000000
  call void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div71)
  %48 = load ptr, ptr %buf, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %incdec.ptr72, ptr %buf, align 8
  store i8 44, ptr %48, align 1
  %49 = load i64, ptr %ns, align 8
  %rem73 = urem i64 %49, 1000000
  store i64 %rem73, ptr %ns, align 8
  br label %if.end76

if.else74:                                        ; preds = %if.end68
  %50 = load ptr, ptr %buf, align 8
  store i32 741355568, ptr %50, align 1
  %51 = load ptr, ptr %buf, align 8
  %add.ptr75 = getelementptr inbounds i8, ptr %51, i64 4
  store ptr %add.ptr75, ptr %buf, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then70
  %52 = load i64, ptr %ns, align 8
  %cmp77 = icmp ugt i64 %52, 999
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.end76
  %53 = load i64, ptr %ns, align 8
  %div79 = udiv i64 %53, 1000
  call void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div79)
  %54 = load ptr, ptr %buf, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %incdec.ptr80, ptr %buf, align 8
  store i8 44, ptr %54, align 1
  %55 = load i64, ptr %ns, align 8
  %rem81 = urem i64 %55, 1000
  store i64 %rem81, ptr %ns, align 8
  br label %if.end84

if.else82:                                        ; preds = %if.end76
  %56 = load ptr, ptr %buf, align 8
  store i32 741355568, ptr %56, align 1
  %57 = load ptr, ptr %buf, align 8
  %add.ptr83 = getelementptr inbounds i8, ptr %57, i64 4
  store ptr %add.ptr83, ptr %buf, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then78
  %58 = load i64, ptr %ns, align 8
  call void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %58)
  %59 = load ptr, ptr %buf, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %incdec.ptr85, ptr %buf, align 8
  store i8 110, ptr %59, align 1
  %60 = load ptr, ptr %buf, align 8
  %incdec.ptr86 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %incdec.ptr86, ptr %buf, align 8
  store i8 115, ptr %60, align 1
  br label %if.end89

if.else87:                                        ; preds = %if.end62
  %61 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %61, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, i64 13, i1 false)
  %add.ptr88 = getelementptr inbounds i8, ptr %61, i64 13
  store ptr %add.ptr88, ptr %buf, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.end84
  %62 = load ptr, ptr %buf, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr90, ptr %buf, align 8
  store i8 0, ptr %62, align 1
  %63 = load ptr, ptr %bufstart, align 8
  ret ptr %63
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %cmp = icmp ugt i64 %v, 999
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL14PrintSmallInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 74, ptr noundef nonnull @.str.12) #7
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp ugt i64 %0, 99
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %4 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %4, 10
  %mul = shl nuw nsw i64 %div, 1
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %mul
  %5 = load i16, ptr %add.ptr, align 1
  store i16 %5, ptr %2, align 1
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %add.ptr2, ptr %6, align 8
  br label %if.end9

if.else:                                          ; preds = %cond.end
  %8 = load i64, ptr %v.addr, align 8
  %cmp3 = icmp ugt i64 %8, 9
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %incdec.ptr, ptr %9, align 8
  store i8 48, ptr %10, align 1
  %11 = load i64, ptr %v.addr, align 8
  %div5 = udiv i64 %11, 10
  %12 = trunc i64 %div5 to i8
  %conv = add i8 %12, 48
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %incdec.ptr6, ptr %13, align 8
  store i8 %conv, ptr %14, align 1
  br label %if.end9

if.else7:                                         ; preds = %if.else
  %15 = load ptr, ptr %buf.addr, align 8
  %16 = load ptr, ptr %15, align 8
  store i16 12336, ptr %16, align 1
  %17 = load ptr, ptr %15, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %add.ptr8, ptr %15, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.else7, %if.then
  %18 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %18, 10
  %19 = trunc i64 %rem to i8
  %conv11 = or i8 %19, 48
  %20 = load ptr, ptr %buf.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %incdec.ptr12, ptr %20, align 8
  store i8 %conv11, ptr %21, align 1
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy15MemSizeToStringEx(i64 noundef %val) #1 {
entry:
  %val.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %aval = alloca i64, align 8
  %unit = alloca i32, align 4
  %ptr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  %0 = load i32, ptr @_ZZN5tracy15MemSizeToStringExE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy15MemSizeToStringExE7bufpool, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %buf, align 8
  %add = add nsw i32 %0, 1
  %1 = and i32 %add, 7
  store i32 %1, ptr @_ZZN5tracy15MemSizeToStringExE6bufsel, align 4
  %2 = load i64, ptr %val.addr, align 8
  %3 = call i64 @llvm.abs.i64(i64 %2, i1 true)
  store i64 %3, ptr %aval, align 8
  %cmp = icmp ult i64 %3, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buf, align 8
  %5 = load i64, ptr %val.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull @.str.9, i64 noundef %5)
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %aval, align 8
  %cmp3 = icmp slt i64 %6, 10240000
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 64
  %8 = load i64, ptr %val.addr, align 8
  %conv5 = sitofp i64 %8 to double
  %div = fmul double %conv5, 0x3F50000000000000
  %call6 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %7, ptr noundef nonnull %add.ptr, double noundef %div, i32 noundef 2)
  br label %if.end27

if.else:                                          ; preds = %if.end
  %9 = load i64, ptr %aval, align 8
  %cmp7 = icmp slt i64 %9, 10485760000
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  %10 = load ptr, ptr %buf, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %10, i64 64
  %11 = load i64, ptr %val.addr, align 8
  %conv10 = sitofp i64 %11 to double
  %div11 = fmul double %conv10, 0x3EB0000000000000
  %call12 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %10, ptr noundef nonnull %add.ptr9, double noundef %div11, i32 noundef 2)
  br label %if.end27

if.else13:                                        ; preds = %if.else
  %12 = load i64, ptr %aval, align 8
  %cmp14 = icmp slt i64 %12, 10737418240000
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  %13 = load ptr, ptr %buf, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %13, i64 64
  %14 = load i64, ptr %val.addr, align 8
  %conv17 = sitofp i64 %14 to double
  %div18 = fmul double %conv17, 0x3E10000000000000
  %call19 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %13, ptr noundef nonnull %add.ptr16, double noundef %div18, i32 noundef 2)
  br label %if.end27

if.else20:                                        ; preds = %if.else13
  %15 = load ptr, ptr %buf, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %15, i64 64
  %16 = load i64, ptr %val.addr, align 8
  %conv22 = sitofp i64 %16 to double
  %div23 = fmul double %conv22, 0x3D70000000000000
  %call24 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %15, ptr noundef nonnull %add.ptr21, double noundef %div23, i32 noundef 2)
  br label %if.end27

if.end27:                                         ; preds = %if.then8, %if.else20, %if.then15, %if.then4
  %storemerge7 = phi ptr [ %call6, %if.then4 ], [ %call12, %if.then8 ], [ %call24, %if.else20 ], [ %call19, %if.then15 ]
  %storemerge6 = phi i32 [ 0, %if.then4 ], [ 1, %if.then8 ], [ 3, %if.else20 ], [ 2, %if.then15 ]
  store ptr %storemerge7, ptr %ptr, align 8
  store i32 %storemerge6, ptr %unit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end27
  %storemerge7.pn = phi ptr [ %storemerge7, %if.end27 ], [ %20, %while.body ]
  %storemerge8 = getelementptr inbounds i8, ptr %storemerge7.pn, i64 -1
  store ptr %storemerge8, ptr %ptr, align 8
  %17 = load ptr, ptr %buf, align 8
  %cmp28.not = icmp ult ptr %storemerge8, %17
  br i1 %cmp28.not, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %ptr, align 8
  %19 = load i8, ptr %18, align 1
  %cmp30 = icmp eq i8 %19, 48
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %20 = load ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond, %land.rhs
  %21 = load ptr, ptr %ptr, align 8
  %22 = load i8, ptr %21, align 1
  %cmp33.not = icmp eq i8 %22, 46
  br i1 %cmp33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %while.end
  %23 = load ptr, ptr %ptr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr35, ptr %ptr, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %while.end
  %24 = load ptr, ptr %ptr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %incdec.ptr37, ptr %ptr, align 8
  store i8 32, ptr %24, align 1
  %25 = load i32, ptr %unit, align 4
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
    i32 2, label %sw.bb41
    i32 3, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end36
  %26 = load ptr, ptr %ptr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr38, ptr %ptr, align 8
  store i8 75, ptr %26, align 1
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end36
  %27 = load ptr, ptr %ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr40, ptr %ptr, align 8
  store i8 77, ptr %27, align 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end36
  %28 = load ptr, ptr %ptr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr42, ptr %ptr, align 8
  store i8 71, ptr %28, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end36
  %29 = load ptr, ptr %ptr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %incdec.ptr44, ptr %ptr, align 8
  store i8 84, ptr %29, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy15MemSizeToStringEx, ptr noundef nonnull @.str.4, i32 noundef 426, ptr noundef nonnull @.str.10) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb
  %30 = load ptr, ptr %ptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %incdec.ptr45, ptr %ptr, align 8
  store i8 66, ptr %30, align 1
  %incdec.ptr46 = getelementptr inbounds i8, ptr %30, i64 2
  store ptr %incdec.ptr46, ptr %ptr, align 8
  store i8 0, ptr %incdec.ptr45, align 1
  %31 = load ptr, ptr %buf, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %storemerge9 = phi ptr [ %31, %sw.epilog ], [ %4, %if.then ]
  ret ptr %storemerge9
}

; Function Attrs: nounwind readnone willreturn
declare i64 @llabs(i64 noundef) #4

declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %begin, ptr noundef %end, double noundef %value, i32 noundef %precision) #1 {
entry:
  %call = call [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef %begin, ptr noundef %end, double noundef %value, i32 noundef 2, i32 noundef %precision)
  %call.elt = extractvalue [2 x i64] %call, 0
  %.cast = inttoptr i64 %call.elt to ptr
  ret ptr %.cast
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy16LocationToStringEPKcj(ptr noundef %fn, i32 noundef %line) #1 {
entry:
  %fn.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store i32 %line, ptr %line.addr, align 4
  %cmp = icmp eq i32 %line, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %fn.addr, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @_ZZN5tracy16LocationToStringEPKcjE6bufsel, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x [4096 x i8]], ptr @_ZZN5tracy16LocationToStringEPKcjE7bufpool, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %buf, align 8
  %add = add nsw i32 %1, 1
  %2 = and i32 %add, 7
  store i32 %2, ptr @_ZZN5tracy16LocationToStringEPKcjE6bufsel, align 4
  %3 = load ptr, ptr %fn.addr, align 8
  %4 = load i32, ptr %line.addr, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %buf, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %storemerge = phi ptr [ %5, %if.end ], [ %0, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef ptr @_ZN5tracy6detail21RealToStringGetBufferEv() #0 {
entry:
  %0 = load i32, ptr @_ZZN5tracy6detail21RealToStringGetBufferEvE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy6detail21RealToStringGetBufferEvE7bufpool, i64 0, i64 %idxprom
  %add = add nsw i32 %0, 1
  %1 = and i32 %add, 7
  store i32 %1, ptr @_ZZN5tracy6detail21RealToStringGetBufferEvE6bufsel, align 4
  ret ptr %arrayidx
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @_ZN5tracyL11PrintFrac00ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %buf, align 8
  store i8 46, ptr %0, align 1
  %add = add i64 %v, 5
  store i64 %add, ptr %v.addr, align 8
  %div = udiv i64 %add, 10
  %rem = urem i64 %div, 10
  %cmp = icmp eq i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %v.addr, align 8
  %div1 = udiv i64 %1, 100
  %2 = trunc i64 %div1 to i8
  %conv = add i8 %2, 48
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr3, ptr %3, align 8
  store i8 %conv, ptr %4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %8 = load i64, ptr %v.addr, align 8
  %div4 = udiv i64 %8, 10
  %mul = shl nuw nsw i64 %div4, 1
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %mul
  %9 = load i16, ptr %add.ptr, align 1
  store i16 %9, ptr %6, align 1
  %10 = load ptr, ptr %buf.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %add.ptr5, ptr %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @_ZN5tracyL10PrintFrac0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %incdec.ptr, ptr %buf, align 8
  store i8 46, ptr %0, align 1
  %add = add i64 %v, 50
  %div = udiv i64 %add, 100
  %1 = trunc i64 %div to i8
  %conv = add i8 %1, 48
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %incdec.ptr2, ptr %2, align 8
  store i8 %conv, ptr %3, align 1
  ret void
}

declare [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef, ptr noundef, double noundef, i32 noundef, i32 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold noreturn }

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
