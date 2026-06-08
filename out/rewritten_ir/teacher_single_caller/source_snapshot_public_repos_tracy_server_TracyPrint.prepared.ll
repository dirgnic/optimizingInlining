; ModuleID = './source_snapshot/public_repos/tracy/server/TracyPrint.cpp'
source_filename = "./source_snapshot/public_repos/tracy/server/TracyPrint.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%"struct.std::__1::to_chars_result" = type { ptr, i32 }

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
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %x.addr, align 8
  %sub = sub i64 0, %1
  store i64 %sub, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %x.addr, align 8
  store i64 %2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy12TimeToStringEx(i64 noundef %_ns) #1 {
entry:
  %_ns.addr = alloca i64, align 8
  %Pool = alloca i64, align 8
  %buf = alloca ptr, align 8
  %bufstart = alloca ptr, align 8
  %ns = alloca i64, align 8
  %m = alloca i64, align 8
  %s = alloca i64, align 8
  %h = alloca i64, align 8
  %m24 = alloca i64, align 8
  %s28 = alloca i64, align 8
  %d = alloca i64, align 8
  %h39 = alloca i64, align 8
  %m43 = alloca i64, align 8
  %s49 = alloca i64, align 8
  store i64 %_ns, ptr %_ns.addr, align 8
  store i64 8, ptr %Pool, align 8
  %0 = load i32, ptr @_ZZN5tracy12TimeToStringExE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy12TimeToStringExE7bufpool, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i8], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %buf, align 8
  %1 = load ptr, ptr %buf, align 8
  store ptr %1, ptr %bufstart, align 8
  %2 = load i32, ptr @_ZZN5tracy12TimeToStringExE6bufsel, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %rem = urem i64 %conv, 8
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, ptr @_ZZN5tracy12TimeToStringExE6bufsel, align 4
  %3 = load i64, ptr %_ns.addr, align 8
  %call = call noundef i64 @_ZN5tracy10_int64_absEx(i64 noundef %3)
  store i64 %call, ptr %ns, align 8
  %4 = load i64, ptr %_ns.addr, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf, align 8
  store i8 45, ptr %5, align 1
  %6 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, ptr %ns, align 8
  %cmp2 = icmp ult i64 %7, 1000
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %8 = load i64, ptr %ns, align 8
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %8)
  %9 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 @.str, i64 4, i1 false)
  br label %if.end68

if.else:                                          ; preds = %if.end
  %10 = load i64, ptr %ns, align 8
  %cmp4 = icmp ult i64 %10, 1000000
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %11 = load i64, ptr %ns, align 8
  call void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %11)
  %12 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 @.str.1, i64 5, i1 false)
  br label %if.end67

if.else6:                                         ; preds = %if.else
  %13 = load i64, ptr %ns, align 8
  %cmp7 = icmp ult i64 %13, 1000000000
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  %14 = load i64, ptr %ns, align 8
  %div = udiv i64 %14, 1000
  call void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div)
  %15 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 @.str.2, i64 4, i1 false)
  br label %if.end66

if.else9:                                         ; preds = %if.else6
  %16 = load i64, ptr %ns, align 8
  %cmp10 = icmp ult i64 %16, 60000000000
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %17 = load i64, ptr %ns, align 8
  %div12 = udiv i64 %17, 1000000
  call void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div12)
  %18 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 @.str.3, i64 3, i1 false)
  br label %if.end65

if.else13:                                        ; preds = %if.else9
  %19 = load i64, ptr %ns, align 8
  %cmp14 = icmp ult i64 %19, 3600000000000
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  %20 = load i64, ptr %ns, align 8
  %div16 = udiv i64 %20, 60000000000
  store i64 %div16, ptr %m, align 8
  %21 = load i64, ptr %ns, align 8
  %22 = load i64, ptr %m, align 8
  %mul = mul nsw i64 %22, 60000000000
  %sub = sub i64 %21, %mul
  %div17 = sdiv i64 %sub, 1000000
  store i64 %div17, ptr %s, align 8
  %23 = load i64, ptr %m, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %23)
  %24 = load ptr, ptr %buf, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr18, ptr %buf, align 8
  store i8 58, ptr %24, align 1
  %25 = load i64, ptr %s, align 8
  call void @pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_0(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %25)
  %26 = load ptr, ptr %buf, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr19, ptr %buf, align 8
  store i8 0, ptr %26, align 1
  br label %if.end64

if.else20:                                        ; preds = %if.else13
  %27 = load i64, ptr %ns, align 8
  %cmp21 = icmp ult i64 %27, 86400000000000
  br i1 %cmp21, label %if.then22, label %if.else37

if.then22:                                        ; preds = %if.else20
  %28 = load i64, ptr %ns, align 8
  %div23 = udiv i64 %28, 3600000000000
  store i64 %div23, ptr %h, align 8
  %29 = load i64, ptr %ns, align 8
  %div25 = udiv i64 %29, 60000000000
  %30 = load i64, ptr %h, align 8
  %mul26 = mul nsw i64 %30, 60
  %sub27 = sub i64 %div25, %mul26
  store i64 %sub27, ptr %m24, align 8
  %31 = load i64, ptr %ns, align 8
  %div29 = udiv i64 %31, 1000000000
  %32 = load i64, ptr %h, align 8
  %mul30 = mul nsw i64 %32, 3600
  %sub31 = sub i64 %div29, %mul30
  %33 = load i64, ptr %m24, align 8
  %mul32 = mul nsw i64 %33, 60
  %sub33 = sub i64 %sub31, %mul32
  store i64 %sub33, ptr %s28, align 8
  %34 = load i64, ptr %h, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %34)
  %35 = load ptr, ptr %buf, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr34, ptr %buf, align 8
  store i8 58, ptr %35, align 1
  %36 = load i64, ptr %m24, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %36)
  %37 = load ptr, ptr %buf, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr35, ptr %buf, align 8
  store i8 58, ptr %37, align 1
  %38 = load i64, ptr %s28, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %38)
  %39 = load ptr, ptr %buf, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr36, ptr %buf, align 8
  store i8 0, ptr %39, align 1
  br label %if.end63

if.else37:                                        ; preds = %if.else20
  %40 = load i64, ptr %ns, align 8
  %div38 = udiv i64 %40, 86400000000000
  store i64 %div38, ptr %d, align 8
  %41 = load i64, ptr %ns, align 8
  %div40 = udiv i64 %41, 3600000000000
  %42 = load i64, ptr %d, align 8
  %mul41 = mul nsw i64 %42, 24
  %sub42 = sub i64 %div40, %mul41
  store i64 %sub42, ptr %h39, align 8
  %43 = load i64, ptr %ns, align 8
  %div44 = udiv i64 %43, 60000000000
  %44 = load i64, ptr %d, align 8
  %mul45 = mul nsw i64 %44, 1440
  %sub46 = sub i64 %div44, %mul45
  %45 = load i64, ptr %h39, align 8
  %mul47 = mul nsw i64 %45, 60
  %sub48 = sub i64 %sub46, %mul47
  store i64 %sub48, ptr %m43, align 8
  %46 = load i64, ptr %ns, align 8
  %div50 = udiv i64 %46, 1000000000
  %47 = load i64, ptr %d, align 8
  %mul51 = mul nsw i64 %47, 86400
  %sub52 = sub i64 %div50, %mul51
  %48 = load i64, ptr %h39, align 8
  %mul53 = mul nsw i64 %48, 3600
  %sub54 = sub i64 %sub52, %mul53
  %49 = load i64, ptr %m43, align 8
  %mul55 = mul nsw i64 %49, 60
  %sub56 = sub i64 %sub54, %mul55
  store i64 %sub56, ptr %s49, align 8
  %50 = load i64, ptr %d, align 8
  %cmp57 = icmp slt i64 %50, 100
  %lnot = xor i1 %cmp57, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else37
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy12TimeToStringEx, ptr noundef @.str.4, i32 noundef 237, ptr noundef @.str.5) #6
  unreachable

51:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.else37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %51
  %52 = load i64, ptr %d, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %52)
  %53 = load ptr, ptr %buf, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr59, ptr %buf, align 8
  store i8 100, ptr %53, align 1
  %54 = load i64, ptr %h39, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %54)
  %55 = load ptr, ptr %buf, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr60, ptr %buf, align 8
  store i8 58, ptr %55, align 1
  %56 = load i64, ptr %m43, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %56)
  %57 = load ptr, ptr %buf, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %57, i32 1
  store ptr %incdec.ptr61, ptr %buf, align 8
  store i8 58, ptr %57, align 1
  %58 = load i64, ptr %s49, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %58)
  %59 = load ptr, ptr %buf, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %59, i32 1
  store ptr %incdec.ptr62, ptr %buf, align 8
  store i8 0, ptr %59, align 1
  br label %if.end63

if.end63:                                         ; preds = %cond.end, %if.then22
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then15
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then11
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then8
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then5
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then3
  %60 = load ptr, ptr %bufstart, align 8
  ret ptr %60
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %cmp = icmp ult i64 %0, 1000
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracyL13PrintSmallIntERPcy, ptr noundef @.str.4, i32 noundef 59, ptr noundef @.str.12) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp uge i64 %2, 100
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %6 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %6, 10
  %mul = mul i64 %div, 2
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %add.ptr, i64 2, i1 false)
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %add.ptr2, ptr %7, align 8
  br label %if.end6

if.else:                                          ; preds = %cond.end
  %9 = load i64, ptr %v.addr, align 8
  %cmp3 = icmp uge i64 %9, 10
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %10 = load i64, ptr %v.addr, align 8
  %div5 = udiv i64 %10, 10
  %add = add i64 48, %div5
  %conv = trunc i64 %add to i8
  %11 = load ptr, ptr %buf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %11, align 8
  store i8 %conv, ptr %12, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %13 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %13, 10
  %add7 = add i64 48, %rem
  %conv8 = trunc i64 %add7 to i8
  %14 = load ptr, ptr %buf.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %incdec.ptr9 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr9, ptr %14, align 8
  store i8 %conv8, ptr %15, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL17PrintSmallIntFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %in = alloca i64, align 8
  %fr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %0, 1000
  store i64 %div, ptr %in, align 8
  %1 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %1, 1000
  store i64 %rem, ptr %fr, align 8
  %2 = load i64, ptr %fr, align 8
  %cmp = icmp uge i64 %2, 995
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %in, align 8
  %cmp1 = icmp ult i64 %3, 999
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i64, ptr %in, align 8
  %add = add i64 %5, 1
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %add)
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 @.str.14, i64 4, i1 false)
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 4
  store ptr %add.ptr, ptr %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7

if.else3:                                         ; preds = %entry
  %10 = load ptr, ptr %buf.addr, align 8
  %11 = load i64, ptr %in, align 8
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %11)
  %12 = load i64, ptr %fr, align 8
  %cmp4 = icmp ugt i64 %12, 5
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else3
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load i64, ptr %fr, align 8
  call void @_ZN5tracyL11PrintFrac00ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %14)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %cmp = icmp ult i64 %0, 100
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef @.str.4, i32 noundef 35, ptr noundef @.str.15) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp uge i64 %2, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %3 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %3, 10
  %add = add i64 48, %div
  %conv = trunc i64 %add to i8
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %4, align 8
  store i8 %conv, ptr %5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %6 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %6, 10
  %add2 = add i64 48, %rem
  %conv3 = trunc i64 %add2 to i8
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr4, ptr %7, align 8
  store i8 %conv3, ptr %8, align 1
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL16PrintSecondsFracERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %in = alloca i64, align 8
  %fr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %0, 1000
  store i64 %div, ptr %in, align 8
  %1 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %1, 1000
  store i64 %rem, ptr %fr, align 8
  %2 = load i64, ptr %fr, align 8
  %cmp = icmp uge i64 %2, 950
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load i64, ptr %in, align 8
  %add = add i64 %4, 1
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %add)
  br label %if.end3

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load i64, ptr %in, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %6)
  %7 = load i64, ptr %fr, align 8
  %cmp1 = icmp ugt i64 %7, 50
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = load i64, ptr %fr, align 8
  call void @pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_1(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %cmp = icmp ult i64 %0, 100
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef @.str.4, i32 noundef 45, ptr noundef @.str.15) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp uge i64 %2, 10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %3, 10
  %add = add i64 48, %div
  %conv = trunc i64 %add to i8
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %4, align 8
  store i8 %conv, ptr %5, align 1
  br label %if.end

if.else:                                          ; preds = %cond.end
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr2, ptr %6, align 8
  store i8 48, ptr %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %8, 10
  %add3 = add i64 48, %rem
  %conv4 = trunc i64 %add3 to i8
  %9 = load ptr, ptr %buf.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %incdec.ptr5 = getelementptr inbounds i8, ptr %10, i32 1
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
  %Pool = alloca i64, align 8
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
  %m45 = alloca i64, align 8
  %s47 = alloca i64, align 8
  store i64 %_ns, ptr %_ns.addr, align 8
  store i64 8, ptr %Pool, align 8
  %0 = load i32, ptr @_ZZN5tracy17TimeToStringExactExE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy17TimeToStringExactExE7bufpool, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i8], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %buf, align 8
  %1 = load ptr, ptr %buf, align 8
  store ptr %1, ptr %bufstart, align 8
  %2 = load i32, ptr @_ZZN5tracy17TimeToStringExactExE6bufsel, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %rem = urem i64 %conv, 8
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, ptr @_ZZN5tracy17TimeToStringExactExE6bufsel, align 4
  %3 = load i64, ptr %_ns.addr, align 8
  %call = call noundef i64 @_ZN5tracy10_int64_absEx(i64 noundef %3)
  store i64 %call, ptr %ns, align 8
  %4 = load i64, ptr %_ns.addr, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf, align 8
  store i8 45, ptr %5, align 1
  %6 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %buf, align 8
  store ptr %7, ptr %numStart, align 8
  %8 = load i64, ptr %ns, align 8
  %cmp2 = icmp uge i64 %8, 86400000000000
  br i1 %cmp2, label %if.then3, label %if.else24

if.then3:                                         ; preds = %if.end
  %9 = load i64, ptr %ns, align 8
  %div = udiv i64 %9, 86400000000000
  store i64 %div, ptr %d, align 8
  %10 = load i64, ptr %ns, align 8
  %div4 = udiv i64 %10, 3600000000000
  %11 = load i64, ptr %d, align 8
  %mul = mul nsw i64 %11, 24
  %sub = sub i64 %div4, %mul
  store i64 %sub, ptr %h, align 8
  %12 = load i64, ptr %ns, align 8
  %div5 = udiv i64 %12, 60000000000
  %13 = load i64, ptr %d, align 8
  %mul6 = mul nsw i64 %13, 1440
  %sub7 = sub i64 %div5, %mul6
  %14 = load i64, ptr %h, align 8
  %mul8 = mul nsw i64 %14, 60
  %sub9 = sub i64 %sub7, %mul8
  store i64 %sub9, ptr %m, align 8
  %15 = load i64, ptr %ns, align 8
  %div10 = udiv i64 %15, 1000000000
  %16 = load i64, ptr %d, align 8
  %mul11 = mul nsw i64 %16, 86400
  %sub12 = sub i64 %div10, %mul11
  %17 = load i64, ptr %h, align 8
  %mul13 = mul nsw i64 %17, 3600
  %sub14 = sub i64 %sub12, %mul13
  %18 = load i64, ptr %m, align 8
  %mul15 = mul nsw i64 %18, 60
  %sub16 = sub i64 %sub14, %mul15
  store i64 %sub16, ptr %s, align 8
  %19 = load i64, ptr %d, align 8
  %cmp17 = icmp slt i64 %19, 100
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then3
  %20 = load i64, ptr %d, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %20)
  %21 = load ptr, ptr %buf, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr19, ptr %buf, align 8
  store i8 100, ptr %21, align 1
  br label %if.end20

if.else:                                          ; preds = %if.then3
  %22 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 @.str.6, i64 5, i1 false)
  %23 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 5
  store ptr %add.ptr, ptr %buf, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then18
  %24 = load i64, ptr %h, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %24)
  %25 = load ptr, ptr %buf, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr21, ptr %buf, align 8
  store i8 58, ptr %25, align 1
  %26 = load i64, ptr %m, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %26)
  %27 = load ptr, ptr %buf, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr22, ptr %buf, align 8
  store i8 58, ptr %27, align 1
  %28 = load i64, ptr %s, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %28)
  %29 = load i64, ptr %ns, align 8
  %rem23 = urem i64 %29, 1000000000
  store i64 %rem23, ptr %ns, align 8
  br label %if.end62

if.else24:                                        ; preds = %if.end
  %30 = load i64, ptr %ns, align 8
  %cmp25 = icmp uge i64 %30, 3600000000000
  br i1 %cmp25, label %if.then26, label %if.else42

if.then26:                                        ; preds = %if.else24
  %31 = load i64, ptr %ns, align 8
  %div28 = udiv i64 %31, 3600000000000
  store i64 %div28, ptr %h27, align 8
  %32 = load i64, ptr %ns, align 8
  %div30 = udiv i64 %32, 60000000000
  %33 = load i64, ptr %h27, align 8
  %mul31 = mul nsw i64 %33, 60
  %sub32 = sub i64 %div30, %mul31
  store i64 %sub32, ptr %m29, align 8
  %34 = load i64, ptr %ns, align 8
  %div34 = udiv i64 %34, 1000000000
  %35 = load i64, ptr %h27, align 8
  %mul35 = mul nsw i64 %35, 3600
  %sub36 = sub i64 %div34, %mul35
  %36 = load i64, ptr %m29, align 8
  %mul37 = mul nsw i64 %36, 60
  %sub38 = sub i64 %sub36, %mul37
  store i64 %sub38, ptr %s33, align 8
  %37 = load i64, ptr %h27, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %37)
  %38 = load ptr, ptr %buf, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr39, ptr %buf, align 8
  store i8 58, ptr %38, align 1
  %39 = load i64, ptr %m29, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %39)
  %40 = load ptr, ptr %buf, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr40, ptr %buf, align 8
  store i8 58, ptr %40, align 1
  %41 = load i64, ptr %s33, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %41)
  %42 = load i64, ptr %ns, align 8
  %rem41 = urem i64 %42, 1000000000
  store i64 %rem41, ptr %ns, align 8
  br label %if.end61

if.else42:                                        ; preds = %if.else24
  %43 = load i64, ptr %ns, align 8
  %cmp43 = icmp uge i64 %43, 60000000000
  br i1 %cmp43, label %if.then44, label %if.else53

if.then44:                                        ; preds = %if.else42
  %44 = load i64, ptr %ns, align 8
  %div46 = udiv i64 %44, 60000000000
  store i64 %div46, ptr %m45, align 8
  %45 = load i64, ptr %ns, align 8
  %div48 = udiv i64 %45, 1000000000
  %46 = load i64, ptr %m45, align 8
  %mul49 = mul nsw i64 %46, 60
  %sub50 = sub i64 %div48, %mul49
  store i64 %sub50, ptr %s47, align 8
  %47 = load i64, ptr %m45, align 8
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %47)
  %48 = load ptr, ptr %buf, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr51, ptr %buf, align 8
  store i8 58, ptr %48, align 1
  %49 = load i64, ptr %s47, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %49)
  %50 = load i64, ptr %ns, align 8
  %rem52 = urem i64 %50, 1000000000
  store i64 %rem52, ptr %ns, align 8
  br label %if.end60

if.else53:                                        ; preds = %if.else42
  %51 = load i64, ptr %ns, align 8
  %cmp54 = icmp uge i64 %51, 1000000000
  br i1 %cmp54, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.else53
  %52 = load i64, ptr %ns, align 8
  %div56 = udiv i64 %52, 1000000000
  call void @_ZN5tracyL12PrintTinyIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div56)
  %53 = load ptr, ptr %buf, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %53, i32 1
  store ptr %incdec.ptr57, ptr %buf, align 8
  store i8 115, ptr %53, align 1
  %54 = load i64, ptr %ns, align 8
  %rem58 = urem i64 %54, 1000000000
  store i64 %rem58, ptr %ns, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.else53
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then44
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then26
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end20
  %55 = load i64, ptr %ns, align 8
  %cmp63 = icmp ugt i64 %55, 0
  br i1 %cmp63, label %if.then64, label %if.else87

if.then64:                                        ; preds = %if.end62
  %56 = load ptr, ptr %buf, align 8
  %57 = load ptr, ptr %numStart, align 8
  %cmp65 = icmp ne ptr %56, %57
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then64
  %58 = load ptr, ptr %buf, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr67, ptr %buf, align 8
  store i8 32, ptr %58, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64
  %59 = load i64, ptr %ns, align 8
  %cmp69 = icmp uge i64 %59, 1000000
  br i1 %cmp69, label %if.then70, label %if.else74

if.then70:                                        ; preds = %if.end68
  %60 = load i64, ptr %ns, align 8
  %div71 = udiv i64 %60, 1000000
  call void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div71)
  %61 = load ptr, ptr %buf, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %61, i32 1
  store ptr %incdec.ptr72, ptr %buf, align 8
  store i8 44, ptr %61, align 1
  %62 = load i64, ptr %ns, align 8
  %rem73 = urem i64 %62, 1000000
  store i64 %rem73, ptr %ns, align 8
  br label %if.end76

if.else74:                                        ; preds = %if.end68
  %63 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 @.str.7, i64 4, i1 false)
  %64 = load ptr, ptr %buf, align 8
  %add.ptr75 = getelementptr inbounds i8, ptr %64, i64 4
  store ptr %add.ptr75, ptr %buf, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then70
  %65 = load i64, ptr %ns, align 8
  %cmp77 = icmp uge i64 %65, 1000
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.end76
  %66 = load i64, ptr %ns, align 8
  %div79 = udiv i64 %66, 1000
  call void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %div79)
  %67 = load ptr, ptr %buf, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr80, ptr %buf, align 8
  store i8 44, ptr %67, align 1
  %68 = load i64, ptr %ns, align 8
  %rem81 = urem i64 %68, 1000
  store i64 %rem81, ptr %ns, align 8
  br label %if.end84

if.else82:                                        ; preds = %if.end76
  %69 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 @.str.7, i64 4, i1 false)
  %70 = load ptr, ptr %buf, align 8
  %add.ptr83 = getelementptr inbounds i8, ptr %70, i64 4
  store ptr %add.ptr83, ptr %buf, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then78
  %71 = load i64, ptr %ns, align 8
  call void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %71)
  %72 = load ptr, ptr %buf, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %72, i32 1
  store ptr %incdec.ptr85, ptr %buf, align 8
  store i8 110, ptr %72, align 1
  %73 = load ptr, ptr %buf, align 8
  %incdec.ptr86 = getelementptr inbounds i8, ptr %73, i32 1
  store ptr %incdec.ptr86, ptr %buf, align 8
  store i8 115, ptr %73, align 1
  br label %if.end89

if.else87:                                        ; preds = %if.end62
  %74 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 @.str.8, i64 13, i1 false)
  %75 = load ptr, ptr %buf, align 8
  %add.ptr88 = getelementptr inbounds i8, ptr %75, i64 13
  store ptr %add.ptr88, ptr %buf, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.end84
  %76 = load ptr, ptr %buf, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr90, ptr %buf, align 8
  store i8 0, ptr %76, align 1
  %77 = load ptr, ptr %bufstart, align 8
  ret ptr %77
}

; Function Attrs: mustprogress ssp uwtable
define internal void @_ZN5tracyL14PrintSmallInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %cmp = icmp ult i64 %0, 1000
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracyL14PrintSmallInt0ERPcy, ptr noundef @.str.4, i32 noundef 74, ptr noundef @.str.12) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i64, ptr %v.addr, align 8
  %cmp1 = icmp uge i64 %2, 100
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %6 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %6, 10
  %mul = mul i64 %div, 2
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %mul
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %add.ptr, i64 2, i1 false)
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %add.ptr2, ptr %7, align 8
  br label %if.end9

if.else:                                          ; preds = %cond.end
  %9 = load i64, ptr %v.addr, align 8
  %cmp3 = icmp uge i64 %9, 10
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  %10 = load ptr, ptr %buf.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %10, align 8
  store i8 48, ptr %11, align 1
  %12 = load i64, ptr %v.addr, align 8
  %div5 = udiv i64 %12, 10
  %add = add i64 48, %div5
  %conv = trunc i64 %add to i8
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load ptr, ptr %13, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr6, ptr %13, align 8
  store i8 %conv, ptr %14, align 1
  br label %if.end

if.else7:                                         ; preds = %if.else
  %15 = load ptr, ptr %buf.addr, align 8
  %16 = load ptr, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 @.str.16, i64 2, i1 false)
  %17 = load ptr, ptr %buf.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %18, i64 2
  store ptr %add.ptr8, ptr %17, align 8
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %19 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %19, 10
  %add10 = add i64 48, %rem
  %conv11 = trunc i64 %add10 to i8
  %20 = load ptr, ptr %buf.addr, align 8
  %21 = load ptr, ptr %20, align 8
  %incdec.ptr12 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr12, ptr %20, align 8
  store i8 %conv11, ptr %21, align 1
  ret void
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy15MemSizeToStringEx(i64 noundef %val) #1 {
entry:
  %retval = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %Pool = alloca i64, align 8
  %buf = alloca ptr, align 8
  %aval = alloca i64, align 8
  %unit = alloca i32, align 4
  %ptr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  store i64 8, ptr %Pool, align 8
  %0 = load i32, ptr @_ZZN5tracy15MemSizeToStringExE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy15MemSizeToStringExE7bufpool, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i8], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %buf, align 8
  %1 = load i32, ptr @_ZZN5tracy15MemSizeToStringExE6bufsel, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %rem = urem i64 %conv, 8
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, ptr @_ZZN5tracy15MemSizeToStringExE6bufsel, align 4
  %2 = load i64, ptr %val.addr, align 8
  %call = call i64 @llabs(i64 noundef %2) #7
  store i64 %call, ptr %aval, align 8
  %3 = load i64, ptr %aval, align 8
  %cmp = icmp slt i64 %3, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buf, align 8
  %5 = load i64, ptr %val.addr, align 8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.9, i64 noundef %5)
  %6 = load ptr, ptr %buf, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, ptr %aval, align 8
  %cmp3 = icmp slt i64 %7, 10240000
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf, align 8
  %9 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 64
  %10 = load i64, ptr %val.addr, align 8
  %conv5 = sitofp i64 %10 to double
  %div = fdiv double %conv5, 1.024000e+03
  %call6 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %8, ptr noundef %add.ptr, double noundef %div, i32 noundef 2)
  store ptr %call6, ptr %ptr, align 8
  store i32 0, ptr %unit, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end
  %11 = load i64, ptr %aval, align 8
  %cmp7 = icmp slt i64 %11, 10485760000
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else
  %12 = load ptr, ptr %buf, align 8
  %13 = load ptr, ptr %buf, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %13, i64 64
  %14 = load i64, ptr %val.addr, align 8
  %conv10 = sitofp i64 %14 to double
  %div11 = fdiv double %conv10, 0x4130000000000000
  %call12 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %12, ptr noundef %add.ptr9, double noundef %div11, i32 noundef 2)
  store ptr %call12, ptr %ptr, align 8
  store i32 1, ptr %unit, align 4
  br label %if.end26

if.else13:                                        ; preds = %if.else
  %15 = load i64, ptr %aval, align 8
  %cmp14 = icmp slt i64 %15, 10737418240000
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  %16 = load ptr, ptr %buf, align 8
  %17 = load ptr, ptr %buf, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %17, i64 64
  %18 = load i64, ptr %val.addr, align 8
  %conv17 = sitofp i64 %18 to double
  %div18 = fdiv double %conv17, 0x41D0000000000000
  %call19 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %16, ptr noundef %add.ptr16, double noundef %div18, i32 noundef 2)
  store ptr %call19, ptr %ptr, align 8
  store i32 2, ptr %unit, align 4
  br label %if.end25

if.else20:                                        ; preds = %if.else13
  %19 = load ptr, ptr %buf, align 8
  %20 = load ptr, ptr %buf, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %20, i64 64
  %21 = load i64, ptr %val.addr, align 8
  %conv22 = sitofp i64 %21 to double
  %div23 = fdiv double %conv22, 0x4270000000000000
  %call24 = call noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %19, ptr noundef %add.ptr21, double noundef %div23, i32 noundef 2)
  store ptr %call24, ptr %ptr, align 8
  store i32 3, ptr %unit, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.then15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then8
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then4
  %22 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 -1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end27
  %23 = load ptr, ptr %ptr, align 8
  %24 = load ptr, ptr %buf, align 8
  %cmp28 = icmp uge ptr %23, %24
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load ptr, ptr %ptr, align 8
  %26 = load i8, ptr %25, align 1
  %conv29 = sext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp30, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load ptr, ptr %ptr, align 8
  %incdec.ptr31 = getelementptr inbounds i8, ptr %28, i32 -1
  store ptr %incdec.ptr31, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %29 = load ptr, ptr %ptr, align 8
  %30 = load i8, ptr %29, align 1
  %conv32 = sext i8 %30 to i32
  %cmp33 = icmp ne i32 %conv32, 46
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %while.end
  %31 = load ptr, ptr %ptr, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr35, ptr %ptr, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %while.end
  %32 = load ptr, ptr %ptr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr37, ptr %ptr, align 8
  store i8 32, ptr %32, align 1
  %33 = load i32, ptr %unit, align 4
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
    i32 2, label %sw.bb41
    i32 3, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end36
  %34 = load ptr, ptr %ptr, align 8
  %incdec.ptr38 = getelementptr inbounds i8, ptr %34, i32 1
  store ptr %incdec.ptr38, ptr %ptr, align 8
  store i8 75, ptr %34, align 1
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end36
  %35 = load ptr, ptr %ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr40, ptr %ptr, align 8
  store i8 77, ptr %35, align 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end36
  %36 = load ptr, ptr %ptr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, ptr %36, i32 1
  store ptr %incdec.ptr42, ptr %ptr, align 8
  store i8 71, ptr %36, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end36
  %37 = load ptr, ptr %ptr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %37, i32 1
  store ptr %incdec.ptr44, ptr %ptr, align 8
  store i8 84, ptr %37, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  call void @__assert_rtn(ptr noundef @__func__._ZN5tracy15MemSizeToStringEx, ptr noundef @.str.4, i32 noundef 426, ptr noundef @.str.10) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb
  %38 = load ptr, ptr %ptr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, ptr %38, i32 1
  store ptr %incdec.ptr45, ptr %ptr, align 8
  store i8 66, ptr %38, align 1
  %39 = load ptr, ptr %ptr, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %39, i32 1
  store ptr %incdec.ptr46, ptr %ptr, align 8
  store i8 0, ptr %39, align 1
  %40 = load ptr, ptr %buf, align 8
  store ptr %40, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %41 = load ptr, ptr %retval, align 8
  ret ptr %41
}

; Function Attrs: nounwind readnone willreturn
declare i64 @llabs(i64 noundef) #4

declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: mustprogress ssp uwtable
define internal noundef ptr @_ZN5tracyL10PrintFloatIdEEPcS1_S1_T_i(ptr noundef %begin, ptr noundef %end, double noundef %value, i32 noundef %precision) #1 {
entry:
  %begin.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %value.addr = alloca double, align 8
  %precision.addr = alloca i32, align 4
  %ref.tmp = alloca %"struct.std::__1::to_chars_result", align 8
  store ptr %begin, ptr %begin.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store double %value, ptr %value.addr, align 8
  store i32 %precision, ptr %precision.addr, align 4
  %0 = load ptr, ptr %begin.addr, align 8
  %1 = load ptr, ptr %end.addr, align 8
  %2 = load double, ptr %value.addr, align 8
  %3 = load i32, ptr %precision.addr, align 4
  %call = call [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef %0, ptr noundef %1, double noundef %2, i32 noundef 2, i32 noundef %3)
  store [2 x i64] %call, ptr %ref.tmp, align 8
  %ptr = getelementptr inbounds %"struct.std::__1::to_chars_result", ptr %ref.tmp, i32 0, i32 0
  %4 = load ptr, ptr %ptr, align 8
  ret ptr %4
}

; Function Attrs: mustprogress ssp uwtable
define noundef ptr @_ZN5tracy16LocationToStringEPKcj(ptr noundef %fn, i32 noundef %line) #1 {
entry:
  %retval = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %Pool = alloca i64, align 8
  %buf = alloca ptr, align 8
  store ptr %fn, ptr %fn.addr, align 8
  store i32 %line, ptr %line.addr, align 4
  %0 = load i32, ptr %line.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fn.addr, align 8
  store ptr %1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 8, ptr %Pool, align 8
  %2 = load i32, ptr @_ZZN5tracy16LocationToStringEPKcjE6bufsel, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x [4096 x i8]], ptr @_ZZN5tracy16LocationToStringEPKcjE7bufpool, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %buf, align 8
  %3 = load i32, ptr @_ZZN5tracy16LocationToStringEPKcjE6bufsel, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %rem = urem i64 %conv, 8
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, ptr @_ZZN5tracy16LocationToStringEPKcjE6bufsel, align 4
  %4 = load ptr, ptr %buf, align 8
  %5 = load ptr, ptr %fn.addr, align 8
  %6 = load i32, ptr %line.addr, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.11, ptr noundef %5, i32 noundef %6)
  %7 = load ptr, ptr %buf, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: mustprogress nounwind ssp uwtable
define noundef ptr @_ZN5tracy6detail21RealToStringGetBufferEv() #0 {
entry:
  %Pool = alloca i64, align 8
  %buf = alloca ptr, align 8
  store i64 8, ptr %Pool, align 8
  %0 = load i32, ptr @_ZZN5tracy6detail21RealToStringGetBufferEvE6bufsel, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [8 x [64 x i8]], ptr @_ZZN5tracy6detail21RealToStringGetBufferEvE7bufpool, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i8], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %buf, align 8
  %1 = load i32, ptr @_ZZN5tracy6detail21RealToStringGetBufferEvE6bufsel, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %rem = urem i64 %conv, 8
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, ptr @_ZZN5tracy6detail21RealToStringGetBufferEvE6bufsel, align 4
  %2 = load ptr, ptr %buf, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @_ZN5tracyL11PrintFrac00ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %0, align 8
  store i8 46, ptr %1, align 1
  %2 = load i64, ptr %v.addr, align 8
  %add = add i64 %2, 5
  store i64 %add, ptr %v.addr, align 8
  %3 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %3, 10
  %rem = urem i64 %div, 10
  %cmp = icmp eq i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %v.addr, align 8
  %div1 = udiv i64 %4, 100
  %add2 = add i64 48, %div1
  %conv = trunc i64 %add2 to i8
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr3, ptr %5, align 8
  store i8 %conv, ptr %6, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %10 = load i64, ptr %v.addr, align 8
  %div4 = udiv i64 %10, 10
  %mul = mul i64 %div4, 2
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %mul
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %add.ptr, i64 2, i1 false)
  %11 = load ptr, ptr %buf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %add.ptr5 = getelementptr inbounds i8, ptr %12, i64 2
  store ptr %add.ptr5, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind ssp uwtable
define internal void @_ZN5tracyL10PrintFrac0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %0, align 8
  store i8 46, ptr %1, align 1
  %2 = load i64, ptr %v.addr, align 8
  %add = add i64 %2, 50
  %div = udiv i64 %add, 100
  %add1 = add i64 48, %div
  %conv = trunc i64 %add1 to i8
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr2, ptr %3, align 8
  store i8 %conv, ptr %4, align 1
  ret void
}

declare [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef, ptr noundef, double noundef, i32 noundef, i32 noundef) #5

attributes #0 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { cold noreturn }
attributes #7 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}


define internal void @pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_0(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v)  alwaysinline#1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %in = alloca i64, align 8
  %fr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %div = udiv i64 %0, 1000
  store i64 %div, ptr %in, align 8
  %1 = load i64, ptr %v.addr, align 8
  %rem = urem i64 %1, 1000
  store i64 %rem, ptr %fr, align 8
  %2 = load i64, ptr %fr, align 8
  %cmp = icmp uge i64 %2, 950
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load i64, ptr %in, align 8
  %add = add i64 %4, 1
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %add)
  br label %if.end3

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8
  %6 = load i64, ptr %in, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %6)
  %7 = load i64, ptr %fr, align 8
  %cmp1 = icmp ugt i64 %7, 50
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = load i64, ptr %fr, align 8
  call void @_ZN5tracyL10PrintFrac0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret void
}

define internal void @pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_1(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v)  alwaysinline#0 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %0, align 8
  store i8 46, ptr %1, align 1
  %2 = load i64, ptr %v.addr, align 8
  %add = add i64 %2, 50
  %div = udiv i64 %add, 100
  %add1 = add i64 48, %div
  %conv = trunc i64 %add1 to i8
  %3 = load ptr, ptr %buf.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr2, ptr %3, align 8
  store i8 %conv, ptr %4, align 1
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
