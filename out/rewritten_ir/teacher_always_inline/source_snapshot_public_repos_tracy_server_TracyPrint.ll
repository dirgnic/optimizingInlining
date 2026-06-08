; ModuleID = './out/rewritten_ir/teacher_always_inline/source_snapshot_public_repos_tracy_server_TracyPrint.prepared.ll'
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
  %buf.addr.i184 = alloca ptr, align 8
  %v.addr.i185 = alloca i64, align 8
  %buf.addr.i165 = alloca ptr, align 8
  %v.addr.i166 = alloca i64, align 8
  %buf.addr.i146 = alloca ptr, align 8
  %v.addr.i147 = alloca i64, align 8
  %buf.addr.i129 = alloca ptr, align 8
  %v.addr.i130 = alloca i64, align 8
  %buf.addr.i110 = alloca ptr, align 8
  %v.addr.i111 = alloca i64, align 8
  %buf.addr.i95 = alloca ptr, align 8
  %v.addr.i96 = alloca i64, align 8
  %buf.addr.i78 = alloca ptr, align 8
  %v.addr.i79 = alloca i64, align 8
  %buf.addr.i65 = alloca ptr, align 8
  %in.i67 = alloca i64, align 8
  %fr.i68 = alloca i64, align 8
  %buf.addr.i51 = alloca ptr, align 8
  %v.addr.i52 = alloca i64, align 8
  %buf.addr.i33 = alloca ptr, align 8
  %in.i35 = alloca i64, align 8
  %fr.i36 = alloca i64, align 8
  %buf.addr.i15 = alloca ptr, align 8
  %in.i17 = alloca i64, align 8
  %fr.i18 = alloca i64, align 8
  %buf.addr.i4 = alloca ptr, align 8
  %in.i = alloca i64, align 8
  %fr.i = alloca i64, align 8
  %buf.addr.i = alloca ptr, align 8
  %v.addr.i = alloca i64, align 8
  %x.addr.i = alloca i64, align 8
  %_ns.addr = alloca i64, align 8
  %buf = alloca ptr, align 8
  %bufstart = alloca ptr, align 8
  %ns = alloca i64, align 8
  %s = alloca i64, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x.addr.i)
  store i64 %2, ptr %x.addr.i, align 8
  %cmp.i = icmp slt i64 %2, 0
  %3 = load i64, ptr %x.addr.i, align 8
  %4 = load i64, ptr %x.addr.i, align 8
  %sub.i = sub i64 0, %4
  %storemerge = select i1 %cmp.i, i64 %sub.i, i64 %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x.addr.i)
  store i64 %storemerge, ptr %ns, align 8
  %5 = load i64, ptr %_ns.addr, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %buf, align 8
  store i8 45, ptr %6, align 1
  %7 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %ns, align 8
  %cmp2 = icmp ult i64 %8, 1000
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %9 = load i64, ptr %ns, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i)
  store ptr %buf, ptr %buf.addr.i, align 8
  store i64 %9, ptr %v.addr.i, align 8
  %cmp.i1 = icmp ugt i64 %9, 999
  br i1 %cmp.i1, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then3
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintSmallIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 59, ptr noundef nonnull @.str.12) #9
  unreachable

cond.false.i:                                     ; preds = %if.then3
  %10 = load i64, ptr %v.addr.i, align 8
  %cmp1.i = icmp ugt i64 %10, 99
  br i1 %cmp1.i, label %if.then.i2, label %if.else.i3

if.then.i2:                                       ; preds = %cond.false.i
  %11 = load ptr, ptr %buf.addr.i, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %14 = load i64, ptr %v.addr.i, align 8
  %div.i = udiv i64 %14, 10
  %mul.i = shl nuw nsw i64 %div.i, 1
  %add.ptr.i = getelementptr inbounds i8, ptr %13, i64 %mul.i
  %15 = load i16, ptr %add.ptr.i, align 1
  store i16 %15, ptr %12, align 1
  %16 = load ptr, ptr %buf.addr.i, align 8
  %17 = load ptr, ptr %16, align 8
  %add.ptr2.i = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %add.ptr2.i, ptr %16, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_1.exit

if.else.i3:                                       ; preds = %cond.false.i
  %18 = load i64, ptr %v.addr.i, align 8
  %cmp3.i = icmp ugt i64 %18, 9
  br i1 %cmp3.i, label %if.then4.i, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_1.exit

if.then4.i:                                       ; preds = %if.else.i3
  %19 = load i64, ptr %v.addr.i, align 8
  %div5.i = udiv i64 %19, 10
  %20 = trunc i64 %div5.i to i8
  %conv.i = add i8 %20, 48
  %21 = load ptr, ptr %buf.addr.i, align 8
  %22 = load ptr, ptr %21, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %incdec.ptr.i, ptr %21, align 8
  store i8 %conv.i, ptr %22, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_1.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_1.exit: ; preds = %if.else.i3, %if.then4.i, %if.then.i2
  %23 = load i64, ptr %v.addr.i, align 8
  %rem.i = urem i64 %23, 10
  %24 = trunc i64 %rem.i to i8
  %conv8.i = or i8 %24, 48
  %25 = load ptr, ptr %buf.addr.i, align 8
  %26 = load ptr, ptr %25, align 8
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %incdec.ptr9.i, ptr %25, align 8
  store i8 %conv8.i, ptr %26, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i)
  %27 = load ptr, ptr %buf, align 8
  store i32 7564832, ptr %27, align 1
  br label %if.end68

if.else:                                          ; preds = %if.end
  %28 = load i64, ptr %ns, align 8
  %cmp4 = icmp ult i64 %28, 1000000
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %29 = load i64, ptr %ns, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fr.i)
  store ptr %buf, ptr %buf.addr.i4, align 8
  %div.i6 = udiv i64 %29, 1000
  store i64 %div.i6, ptr %in.i, align 8
  %rem.i7 = urem i64 %29, 1000
  store i64 %rem.i7, ptr %fr.i, align 8
  %cmp.i8 = icmp ugt i64 %rem.i7, 994
  br i1 %cmp.i8, label %if.then.i10, label %if.else3.i

if.then.i10:                                      ; preds = %if.then5
  %30 = load i64, ptr %in.i, align 8
  %cmp1.i9 = icmp ult i64 %30, 999
  br i1 %cmp1.i9, label %if.then2.i, label %if.else.i13

if.then2.i:                                       ; preds = %if.then.i10
  %31 = load ptr, ptr %buf.addr.i4, align 8
  %32 = load i64, ptr %in.i, align 8
  %add.i11 = add i64 %32, 1
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef %add.i11)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_2.exit

if.else.i13:                                      ; preds = %if.then.i10
  %33 = load ptr, ptr %buf.addr.i4, align 8
  %34 = load ptr, ptr %33, align 8
  store i32 808464433, ptr %34, align 1
  %35 = load ptr, ptr %33, align 8
  %add.ptr.i12 = getelementptr inbounds i8, ptr %35, i64 4
  store ptr %add.ptr.i12, ptr %33, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_2.exit

if.else3.i:                                       ; preds = %if.then5
  %36 = load ptr, ptr %buf.addr.i4, align 8
  %37 = load i64, ptr %in.i, align 8
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %37)
  %38 = load i64, ptr %fr.i, align 8
  %cmp4.i = icmp ugt i64 %38, 5
  br i1 %cmp4.i, label %if.then5.i, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_2.exit

if.then5.i:                                       ; preds = %if.else3.i
  %39 = load ptr, ptr %buf.addr.i4, align 8
  %40 = load i64, ptr %fr.i, align 8
  call void @_ZN5tracyL11PrintFrac00ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %40)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_2.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_2.exit: ; preds = %if.else3.i, %if.then5.i, %if.then2.i, %if.else.i13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fr.i)
  %41 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %41, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  br label %if.end68

if.else6:                                         ; preds = %if.else
  %42 = load i64, ptr %ns, align 8
  %cmp7 = icmp ult i64 %42, 1000000000
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else6
  %43 = load i64, ptr %ns, align 8
  %div = udiv i64 %43, 1000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i15)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fr.i18)
  store ptr %buf, ptr %buf.addr.i15, align 8
  %div.i19 = udiv i64 %43, 1000000
  store i64 %div.i19, ptr %in.i17, align 8
  %rem.i20 = urem i64 %div, 1000
  store i64 %rem.i20, ptr %fr.i18, align 8
  %cmp.i21 = icmp ugt i64 %rem.i20, 994
  br i1 %cmp.i21, label %if.then.i23, label %if.else3.i30

if.then.i23:                                      ; preds = %if.then8
  %44 = load i64, ptr %in.i17, align 8
  %cmp1.i22 = icmp ult i64 %44, 999
  br i1 %cmp1.i22, label %if.then2.i25, label %if.else.i27

if.then2.i25:                                     ; preds = %if.then.i23
  %45 = load ptr, ptr %buf.addr.i15, align 8
  %46 = load i64, ptr %in.i17, align 8
  %add.i24 = add i64 %46, 1
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef %add.i24)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_3.exit

if.else.i27:                                      ; preds = %if.then.i23
  %47 = load ptr, ptr %buf.addr.i15, align 8
  %48 = load ptr, ptr %47, align 8
  store i32 808464433, ptr %48, align 1
  %49 = load ptr, ptr %47, align 8
  %add.ptr.i26 = getelementptr inbounds i8, ptr %49, i64 4
  store ptr %add.ptr.i26, ptr %47, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_3.exit

if.else3.i30:                                     ; preds = %if.then8
  %50 = load ptr, ptr %buf.addr.i15, align 8
  %51 = load i64, ptr %in.i17, align 8
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %50, i64 noundef %51)
  %52 = load i64, ptr %fr.i18, align 8
  %cmp4.i29 = icmp ugt i64 %52, 5
  br i1 %cmp4.i29, label %if.then5.i31, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_3.exit

if.then5.i31:                                     ; preds = %if.else3.i30
  %53 = load ptr, ptr %buf.addr.i15, align 8
  %54 = load i64, ptr %fr.i18, align 8
  call void @_ZN5tracyL11PrintFrac00ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef %54)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_3.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_3.exit: ; preds = %if.else3.i30, %if.then5.i31, %if.then2.i25, %if.else.i27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i15)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fr.i18)
  %55 = load ptr, ptr %buf, align 8
  store i32 7564576, ptr %55, align 1
  br label %if.end68

if.else9:                                         ; preds = %if.else6
  %56 = load i64, ptr %ns, align 8
  %cmp10 = icmp ult i64 %56, 60000000000
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %57 = load i64, ptr %ns, align 8
  %div12 = udiv i64 %57, 1000000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i33)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i35)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fr.i36)
  store ptr %buf, ptr %buf.addr.i33, align 8
  %div.i37 = udiv i64 %57, 1000000000
  store i64 %div.i37, ptr %in.i35, align 8
  %rem.i38 = urem i64 %div12, 1000
  store i64 %rem.i38, ptr %fr.i36, align 8
  %cmp.i39 = icmp ugt i64 %rem.i38, 994
  br i1 %cmp.i39, label %if.then.i41, label %if.else3.i48

if.then.i41:                                      ; preds = %if.then11
  %58 = load i64, ptr %in.i35, align 8
  %cmp1.i40 = icmp ult i64 %58, 999
  br i1 %cmp1.i40, label %if.then2.i43, label %if.else.i45

if.then2.i43:                                     ; preds = %if.then.i41
  %59 = load ptr, ptr %buf.addr.i33, align 8
  %60 = load i64, ptr %in.i35, align 8
  %add.i42 = add i64 %60, 1
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %59, i64 noundef %add.i42)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_4.exit

if.else.i45:                                      ; preds = %if.then.i41
  %61 = load ptr, ptr %buf.addr.i33, align 8
  %62 = load ptr, ptr %61, align 8
  store i32 808464433, ptr %62, align 1
  %63 = load ptr, ptr %61, align 8
  %add.ptr.i44 = getelementptr inbounds i8, ptr %63, i64 4
  store ptr %add.ptr.i44, ptr %61, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_4.exit

if.else3.i48:                                     ; preds = %if.then11
  %64 = load ptr, ptr %buf.addr.i33, align 8
  %65 = load i64, ptr %in.i35, align 8
  call void @_ZN5tracyL13PrintSmallIntERPcy(ptr noundef nonnull align 8 dereferenceable(8) %64, i64 noundef %65)
  %66 = load i64, ptr %fr.i36, align 8
  %cmp4.i47 = icmp ugt i64 %66, 5
  br i1 %cmp4.i47, label %if.then5.i49, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_4.exit

if.then5.i49:                                     ; preds = %if.else3.i48
  %67 = load ptr, ptr %buf.addr.i33, align 8
  %68 = load i64, ptr %fr.i36, align 8
  call void @_ZN5tracyL11PrintFrac00ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %67, i64 noundef %68)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_4.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_4.exit: ; preds = %if.else3.i48, %if.then5.i49, %if.then2.i43, %if.else.i45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i33)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i35)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fr.i36)
  %69 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %69, ptr noundef nonnull align 1 dereferenceable(3) @.str.3, i64 3, i1 false)
  br label %if.end68

if.else13:                                        ; preds = %if.else9
  %70 = load i64, ptr %ns, align 8
  %cmp14 = icmp ult i64 %70, 3600000000000
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else13
  %71 = load i64, ptr %ns, align 8
  %div16 = udiv i64 %71, 60000000000
  %mul.neg = mul i64 %div16, -60000000000
  %sub = add i64 %mul.neg, %71
  %div17 = sdiv i64 %sub, 1000000
  store i64 %div17, ptr %s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i51)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i52)
  store ptr %buf, ptr %buf.addr.i51, align 8
  store i64 %div16, ptr %v.addr.i52, align 8
  %cmp.i53 = icmp ugt i64 %71, 5999999999999
  br i1 %cmp.i53, label %cond.true.i55, label %cond.false.i56

cond.true.i55:                                    ; preds = %if.then15
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i56:                                   ; preds = %if.then15
  %72 = load i64, ptr %v.addr.i52, align 8
  %cmp1.i57 = icmp ugt i64 %72, 9
  br i1 %cmp1.i57, label %if.then.i62, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_5.exit

if.then.i62:                                      ; preds = %cond.false.i56
  %73 = load i64, ptr %v.addr.i52, align 8
  %div.i58 = udiv i64 %73, 10
  %74 = trunc i64 %div.i58 to i8
  %conv.i60 = add i8 %74, 48
  %75 = load ptr, ptr %buf.addr.i51, align 8
  %76 = load ptr, ptr %75, align 8
  %incdec.ptr.i61 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %incdec.ptr.i61, ptr %75, align 8
  store i8 %conv.i60, ptr %76, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_5.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_5.exit: ; preds = %cond.false.i56, %if.then.i62
  %77 = load i64, ptr %v.addr.i52, align 8
  %rem.i63 = urem i64 %77, 10
  %78 = trunc i64 %rem.i63 to i8
  %conv3.i = or i8 %78, 48
  %79 = load ptr, ptr %buf.addr.i51, align 8
  %80 = load ptr, ptr %79, align 8
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %incdec.ptr4.i, ptr %79, align 8
  store i8 %conv3.i, ptr %80, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i51)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i52)
  %81 = load ptr, ptr %buf, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %incdec.ptr18, ptr %buf, align 8
  store i8 58, ptr %81, align 1
  %82 = load i64, ptr %s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i65)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in.i67)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fr.i68)
  store ptr %buf, ptr %buf.addr.i65, align 8
  %div.i69 = udiv i64 %82, 1000
  store i64 %div.i69, ptr %in.i67, align 8
  %rem.i70 = urem i64 %82, 1000
  store i64 %rem.i70, ptr %fr.i68, align 8
  %cmp.i71 = icmp ugt i64 %rem.i70, 949
  br i1 %cmp.i71, label %if.then.i73, label %if.else.i75

if.then.i73:                                      ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_5.exit
  %83 = load ptr, ptr %buf.addr.i65, align 8
  %84 = load i64, ptr %in.i67, align 8
  %add.i72 = add i64 %84, 1
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %83, i64 noundef %add.i72)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_6.exit

if.else.i75:                                      ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_5.exit
  %85 = load ptr, ptr %buf.addr.i65, align 8
  %86 = load i64, ptr %in.i67, align 8
  call void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %85, i64 noundef %86)
  %87 = load i64, ptr %fr.i68, align 8
  %cmp1.i74 = icmp ugt i64 %87, 50
  br i1 %cmp1.i74, label %if.then2.i76, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_6.exit

if.then2.i76:                                     ; preds = %if.else.i75
  %88 = load ptr, ptr %buf.addr.i65, align 8
  %89 = load i64, ptr %fr.i68, align 8
  call void @_ZN5tracyL10PrintFrac0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %88, i64 noundef %89)
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_6.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_6.exit: ; preds = %if.else.i75, %if.then2.i76, %if.then.i73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i65)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in.i67)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fr.i68)
  %90 = load ptr, ptr %buf, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %incdec.ptr19, ptr %buf, align 8
  store i8 0, ptr %90, align 1
  br label %if.end68

if.else20:                                        ; preds = %if.else13
  %91 = load i64, ptr %ns, align 8
  %cmp21 = icmp ult i64 %91, 86400000000000
  br i1 %cmp21, label %if.then22, label %if.else37

if.then22:                                        ; preds = %if.else20
  %92 = load i64, ptr %ns, align 8
  %div23 = udiv i64 %92, 3600000000000
  store i64 %div23, ptr %h, align 8
  %div25 = udiv i64 %92, 60000000000
  %mul26.neg = mul nsw i64 %div23, -60
  %sub27 = add nsw i64 %mul26.neg, %div25
  store i64 %sub27, ptr %m24, align 8
  %93 = load i64, ptr %ns, align 8
  %div29 = udiv i64 %93, 1000000000
  %94 = load i64, ptr %h, align 8
  %mul30.neg = mul i64 %94, -3600
  %sub31 = add i64 %mul30.neg, %div29
  %mul32.neg = mul nsw i64 %sub27, -60
  %sub33 = add i64 %mul32.neg, %sub31
  store i64 %sub33, ptr %s28, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i78)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i79)
  store ptr %buf, ptr %buf.addr.i78, align 8
  store i64 %94, ptr %v.addr.i79, align 8
  %cmp.i80 = icmp ugt i64 %94, 99
  br i1 %cmp.i80, label %cond.true.i82, label %cond.false.i83

cond.true.i82:                                    ; preds = %if.then22
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i83:                                   ; preds = %if.then22
  %95 = load i64, ptr %v.addr.i79, align 8
  %cmp1.i84 = icmp ugt i64 %95, 9
  br i1 %cmp1.i84, label %if.then.i89, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_7.exit

if.then.i89:                                      ; preds = %cond.false.i83
  %96 = load i64, ptr %v.addr.i79, align 8
  %div.i85 = udiv i64 %96, 10
  %97 = trunc i64 %div.i85 to i8
  %conv.i87 = add i8 %97, 48
  %98 = load ptr, ptr %buf.addr.i78, align 8
  %99 = load ptr, ptr %98, align 8
  %incdec.ptr.i88 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %incdec.ptr.i88, ptr %98, align 8
  store i8 %conv.i87, ptr %99, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_7.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_7.exit: ; preds = %cond.false.i83, %if.then.i89
  %100 = load i64, ptr %v.addr.i79, align 8
  %rem.i90 = urem i64 %100, 10
  %101 = trunc i64 %rem.i90 to i8
  %conv3.i92 = or i8 %101, 48
  %102 = load ptr, ptr %buf.addr.i78, align 8
  %103 = load ptr, ptr %102, align 8
  %incdec.ptr4.i93 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %incdec.ptr4.i93, ptr %102, align 8
  store i8 %conv3.i92, ptr %103, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i78)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i79)
  %104 = load ptr, ptr %buf, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %incdec.ptr34, ptr %buf, align 8
  store i8 58, ptr %104, align 1
  %105 = load i64, ptr %m24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i95)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i96)
  store ptr %buf, ptr %buf.addr.i95, align 8
  store i64 %105, ptr %v.addr.i96, align 8
  %cmp.i97 = icmp ugt i64 %105, 99
  br i1 %cmp.i97, label %cond.true.i99, label %cond.false.i100

cond.true.i99:                                    ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_7.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i100:                                  ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_7.exit
  %106 = load i64, ptr %v.addr.i96, align 8
  %cmp1.i101 = icmp ugt i64 %106, 9
  br i1 %cmp1.i101, label %if.then.i106, label %if.else.i107

if.then.i106:                                     ; preds = %cond.false.i100
  %107 = load i64, ptr %v.addr.i96, align 8
  %div.i102 = udiv i64 %107, 10
  %108 = trunc i64 %div.i102 to i8
  %conv.i104 = add i8 %108, 48
  %109 = load ptr, ptr %buf.addr.i95, align 8
  %110 = load ptr, ptr %109, align 8
  %incdec.ptr.i105 = getelementptr inbounds i8, ptr %110, i64 1
  store ptr %incdec.ptr.i105, ptr %109, align 8
  store i8 %conv.i104, ptr %110, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_8.exit

if.else.i107:                                     ; preds = %cond.false.i100
  %111 = load ptr, ptr %buf.addr.i95, align 8
  %112 = load ptr, ptr %111, align 8
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %incdec.ptr2.i, ptr %111, align 8
  store i8 48, ptr %112, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_8.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_8.exit: ; preds = %if.then.i106, %if.else.i107
  %113 = load i64, ptr %v.addr.i96, align 8
  %rem.i108 = urem i64 %113, 10
  %114 = trunc i64 %rem.i108 to i8
  %conv4.i = or i8 %114, 48
  %115 = load ptr, ptr %buf.addr.i95, align 8
  %116 = load ptr, ptr %115, align 8
  %incdec.ptr5.i = getelementptr inbounds i8, ptr %116, i64 1
  store ptr %incdec.ptr5.i, ptr %115, align 8
  store i8 %conv4.i, ptr %116, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i95)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i96)
  %117 = load ptr, ptr %buf, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %117, i64 1
  store ptr %incdec.ptr35, ptr %buf, align 8
  store i8 58, ptr %117, align 1
  %118 = load i64, ptr %s28, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i110)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i111)
  store ptr %buf, ptr %buf.addr.i110, align 8
  store i64 %118, ptr %v.addr.i111, align 8
  %cmp.i112 = icmp ugt i64 %118, 99
  br i1 %cmp.i112, label %cond.true.i114, label %cond.false.i115

cond.true.i114:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_8.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i115:                                  ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_8.exit
  %119 = load i64, ptr %v.addr.i111, align 8
  %cmp1.i116 = icmp ugt i64 %119, 9
  br i1 %cmp1.i116, label %if.then.i121, label %if.else.i123

if.then.i121:                                     ; preds = %cond.false.i115
  %120 = load i64, ptr %v.addr.i111, align 8
  %div.i117 = udiv i64 %120, 10
  %121 = trunc i64 %div.i117 to i8
  %conv.i119 = add i8 %121, 48
  %122 = load ptr, ptr %buf.addr.i110, align 8
  %123 = load ptr, ptr %122, align 8
  %incdec.ptr.i120 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %incdec.ptr.i120, ptr %122, align 8
  store i8 %conv.i119, ptr %123, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_9.exit

if.else.i123:                                     ; preds = %cond.false.i115
  %124 = load ptr, ptr %buf.addr.i110, align 8
  %125 = load ptr, ptr %124, align 8
  %incdec.ptr2.i122 = getelementptr inbounds i8, ptr %125, i64 1
  store ptr %incdec.ptr2.i122, ptr %124, align 8
  store i8 48, ptr %125, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_9.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_9.exit: ; preds = %if.then.i121, %if.else.i123
  %126 = load i64, ptr %v.addr.i111, align 8
  %rem.i124 = urem i64 %126, 10
  %127 = trunc i64 %rem.i124 to i8
  %conv4.i126 = or i8 %127, 48
  %128 = load ptr, ptr %buf.addr.i110, align 8
  %129 = load ptr, ptr %128, align 8
  %incdec.ptr5.i127 = getelementptr inbounds i8, ptr %129, i64 1
  store ptr %incdec.ptr5.i127, ptr %128, align 8
  store i8 %conv4.i126, ptr %129, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i110)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i111)
  %130 = load ptr, ptr %buf, align 8
  %incdec.ptr36 = getelementptr inbounds i8, ptr %130, i64 1
  store ptr %incdec.ptr36, ptr %buf, align 8
  store i8 0, ptr %130, align 1
  br label %if.end68

if.else37:                                        ; preds = %if.else20
  %131 = load i64, ptr %ns, align 8
  %div38 = udiv i64 %131, 86400000000000
  store i64 %div38, ptr %d, align 8
  %div40 = udiv i64 %131, 3600000000000
  %mul41.neg = mul nsw i64 %div38, -24
  %sub42 = add nsw i64 %mul41.neg, %div40
  store i64 %sub42, ptr %h39, align 8
  %132 = load i64, ptr %ns, align 8
  %div44 = udiv i64 %132, 60000000000
  %133 = load i64, ptr %d, align 8
  %mul45.neg = mul i64 %133, -1440
  %sub46 = add i64 %mul45.neg, %div44
  %mul47.neg = mul nsw i64 %sub42, -60
  %sub48 = add i64 %mul47.neg, %sub46
  store i64 %sub48, ptr %m43, align 8
  %134 = load i64, ptr %ns, align 8
  %div50 = udiv i64 %134, 1000000000
  %135 = load i64, ptr %d, align 8
  %mul51.neg = mul i64 %135, -86400
  %sub52 = add i64 %mul51.neg, %div50
  %136 = load i64, ptr %h39, align 8
  %mul53.neg = mul i64 %136, -3600
  %sub54 = add i64 %mul53.neg, %sub52
  %137 = load i64, ptr %m43, align 8
  %mul55.neg = mul i64 %137, -60
  %sub56 = add i64 %mul55.neg, %sub54
  store i64 %sub56, ptr %s49, align 8
  %138 = load i64, ptr %d, align 8
  %cmp57 = icmp sgt i64 %138, 99
  br i1 %cmp57, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.else37
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy12TimeToStringEx, ptr noundef nonnull @.str.4, i32 noundef 237, ptr noundef nonnull @.str.5) #9
  unreachable

cond.end:                                         ; preds = %if.else37
  %139 = load i64, ptr %d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i129)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i130)
  store ptr %buf, ptr %buf.addr.i129, align 8
  store i64 %139, ptr %v.addr.i130, align 8
  %cmp.i131 = icmp ugt i64 %139, 99
  br i1 %cmp.i131, label %cond.true.i133, label %cond.false.i134

cond.true.i133:                                   ; preds = %cond.end
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i134:                                  ; preds = %cond.end
  %140 = load i64, ptr %v.addr.i130, align 8
  %cmp1.i135 = icmp ugt i64 %140, 9
  br i1 %cmp1.i135, label %if.then.i140, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_10.exit

if.then.i140:                                     ; preds = %cond.false.i134
  %141 = load i64, ptr %v.addr.i130, align 8
  %div.i136 = udiv i64 %141, 10
  %142 = trunc i64 %div.i136 to i8
  %conv.i138 = add i8 %142, 48
  %143 = load ptr, ptr %buf.addr.i129, align 8
  %144 = load ptr, ptr %143, align 8
  %incdec.ptr.i139 = getelementptr inbounds i8, ptr %144, i64 1
  store ptr %incdec.ptr.i139, ptr %143, align 8
  store i8 %conv.i138, ptr %144, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_10.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_10.exit: ; preds = %cond.false.i134, %if.then.i140
  %145 = load i64, ptr %v.addr.i130, align 8
  %rem.i141 = urem i64 %145, 10
  %146 = trunc i64 %rem.i141 to i8
  %conv3.i143 = or i8 %146, 48
  %147 = load ptr, ptr %buf.addr.i129, align 8
  %148 = load ptr, ptr %147, align 8
  %incdec.ptr4.i144 = getelementptr inbounds i8, ptr %148, i64 1
  store ptr %incdec.ptr4.i144, ptr %147, align 8
  store i8 %conv3.i143, ptr %148, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i129)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i130)
  %149 = load ptr, ptr %buf, align 8
  %incdec.ptr59 = getelementptr inbounds i8, ptr %149, i64 1
  store ptr %incdec.ptr59, ptr %buf, align 8
  store i8 100, ptr %149, align 1
  %150 = load i64, ptr %h39, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i146)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i147)
  store ptr %buf, ptr %buf.addr.i146, align 8
  store i64 %150, ptr %v.addr.i147, align 8
  %cmp.i148 = icmp ugt i64 %150, 99
  br i1 %cmp.i148, label %cond.true.i150, label %cond.false.i151

cond.true.i150:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_10.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i151:                                  ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_10.exit
  %151 = load i64, ptr %v.addr.i147, align 8
  %cmp1.i152 = icmp ugt i64 %151, 9
  br i1 %cmp1.i152, label %if.then.i157, label %if.else.i159

if.then.i157:                                     ; preds = %cond.false.i151
  %152 = load i64, ptr %v.addr.i147, align 8
  %div.i153 = udiv i64 %152, 10
  %153 = trunc i64 %div.i153 to i8
  %conv.i155 = add i8 %153, 48
  %154 = load ptr, ptr %buf.addr.i146, align 8
  %155 = load ptr, ptr %154, align 8
  %incdec.ptr.i156 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %incdec.ptr.i156, ptr %154, align 8
  store i8 %conv.i155, ptr %155, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_11.exit

if.else.i159:                                     ; preds = %cond.false.i151
  %156 = load ptr, ptr %buf.addr.i146, align 8
  %157 = load ptr, ptr %156, align 8
  %incdec.ptr2.i158 = getelementptr inbounds i8, ptr %157, i64 1
  store ptr %incdec.ptr2.i158, ptr %156, align 8
  store i8 48, ptr %157, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_11.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_11.exit: ; preds = %if.then.i157, %if.else.i159
  %158 = load i64, ptr %v.addr.i147, align 8
  %rem.i160 = urem i64 %158, 10
  %159 = trunc i64 %rem.i160 to i8
  %conv4.i162 = or i8 %159, 48
  %160 = load ptr, ptr %buf.addr.i146, align 8
  %161 = load ptr, ptr %160, align 8
  %incdec.ptr5.i163 = getelementptr inbounds i8, ptr %161, i64 1
  store ptr %incdec.ptr5.i163, ptr %160, align 8
  store i8 %conv4.i162, ptr %161, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i146)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i147)
  %162 = load ptr, ptr %buf, align 8
  %incdec.ptr60 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %incdec.ptr60, ptr %buf, align 8
  store i8 58, ptr %162, align 1
  %163 = load i64, ptr %m43, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i165)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i166)
  store ptr %buf, ptr %buf.addr.i165, align 8
  store i64 %163, ptr %v.addr.i166, align 8
  %cmp.i167 = icmp ugt i64 %163, 99
  br i1 %cmp.i167, label %cond.true.i169, label %cond.false.i170

cond.true.i169:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_11.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i170:                                  ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_11.exit
  %164 = load i64, ptr %v.addr.i166, align 8
  %cmp1.i171 = icmp ugt i64 %164, 9
  br i1 %cmp1.i171, label %if.then.i176, label %if.else.i178

if.then.i176:                                     ; preds = %cond.false.i170
  %165 = load i64, ptr %v.addr.i166, align 8
  %div.i172 = udiv i64 %165, 10
  %166 = trunc i64 %div.i172 to i8
  %conv.i174 = add i8 %166, 48
  %167 = load ptr, ptr %buf.addr.i165, align 8
  %168 = load ptr, ptr %167, align 8
  %incdec.ptr.i175 = getelementptr inbounds i8, ptr %168, i64 1
  store ptr %incdec.ptr.i175, ptr %167, align 8
  store i8 %conv.i174, ptr %168, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_12.exit

if.else.i178:                                     ; preds = %cond.false.i170
  %169 = load ptr, ptr %buf.addr.i165, align 8
  %170 = load ptr, ptr %169, align 8
  %incdec.ptr2.i177 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %incdec.ptr2.i177, ptr %169, align 8
  store i8 48, ptr %170, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_12.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_12.exit: ; preds = %if.then.i176, %if.else.i178
  %171 = load i64, ptr %v.addr.i166, align 8
  %rem.i179 = urem i64 %171, 10
  %172 = trunc i64 %rem.i179 to i8
  %conv4.i181 = or i8 %172, 48
  %173 = load ptr, ptr %buf.addr.i165, align 8
  %174 = load ptr, ptr %173, align 8
  %incdec.ptr5.i182 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %incdec.ptr5.i182, ptr %173, align 8
  store i8 %conv4.i181, ptr %174, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i165)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i166)
  %175 = load ptr, ptr %buf, align 8
  %incdec.ptr61 = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %incdec.ptr61, ptr %buf, align 8
  store i8 58, ptr %175, align 1
  %176 = load i64, ptr %s49, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i184)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i185)
  store ptr %buf, ptr %buf.addr.i184, align 8
  store i64 %176, ptr %v.addr.i185, align 8
  %cmp.i186 = icmp ugt i64 %176, 99
  br i1 %cmp.i186, label %cond.true.i188, label %cond.false.i189

cond.true.i188:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_12.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i189:                                  ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_12.exit
  %177 = load i64, ptr %v.addr.i185, align 8
  %cmp1.i190 = icmp ugt i64 %177, 9
  br i1 %cmp1.i190, label %if.then.i195, label %if.else.i197

if.then.i195:                                     ; preds = %cond.false.i189
  %178 = load i64, ptr %v.addr.i185, align 8
  %div.i191 = udiv i64 %178, 10
  %179 = trunc i64 %div.i191 to i8
  %conv.i193 = add i8 %179, 48
  %180 = load ptr, ptr %buf.addr.i184, align 8
  %181 = load ptr, ptr %180, align 8
  %incdec.ptr.i194 = getelementptr inbounds i8, ptr %181, i64 1
  store ptr %incdec.ptr.i194, ptr %180, align 8
  store i8 %conv.i193, ptr %181, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_13.exit

if.else.i197:                                     ; preds = %cond.false.i189
  %182 = load ptr, ptr %buf.addr.i184, align 8
  %183 = load ptr, ptr %182, align 8
  %incdec.ptr2.i196 = getelementptr inbounds i8, ptr %183, i64 1
  store ptr %incdec.ptr2.i196, ptr %182, align 8
  store i8 48, ptr %183, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_13.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_13.exit: ; preds = %if.then.i195, %if.else.i197
  %184 = load i64, ptr %v.addr.i185, align 8
  %rem.i198 = urem i64 %184, 10
  %185 = trunc i64 %rem.i198 to i8
  %conv4.i200 = or i8 %185, 48
  %186 = load ptr, ptr %buf.addr.i184, align 8
  %187 = load ptr, ptr %186, align 8
  %incdec.ptr5.i201 = getelementptr inbounds i8, ptr %187, i64 1
  store ptr %incdec.ptr5.i201, ptr %186, align 8
  store i8 %conv4.i200, ptr %187, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i184)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i185)
  %188 = load ptr, ptr %buf, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %188, i64 1
  store ptr %incdec.ptr62, ptr %buf, align 8
  store i8 0, ptr %188, align 1
  br label %if.end68

if.end68:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_2.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_4.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_9.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_13.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_6.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_3.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_1.exit
  %189 = load ptr, ptr %bufstart, align 8
  ret ptr %189
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
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintSmallIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 59, ptr noundef nonnull @.str.12) #9
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
define internal void @_ZN5tracyL13PrintTinyInt0ERPcy(ptr noundef nonnull align 8 dereferenceable(8) %buf, i64 noundef %v) #1 {
entry:
  %buf.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %cmp = icmp ugt i64 %v, 99
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
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
  %buf.addr.i196 = alloca ptr, align 8
  %v.addr.i197 = alloca i64, align 8
  %buf.addr.i169 = alloca ptr, align 8
  %v.addr.i170 = alloca i64, align 8
  %buf.addr.i155 = alloca ptr, align 8
  %v.addr.i156 = alloca i64, align 8
  %buf.addr.i139 = alloca ptr, align 8
  %v.addr.i140 = alloca i64, align 8
  %buf.addr.i121 = alloca ptr, align 8
  %v.addr.i122 = alloca i64, align 8
  %buf.addr.i105 = alloca ptr, align 8
  %v.addr.i106 = alloca i64, align 8
  %buf.addr.i87 = alloca ptr, align 8
  %v.addr.i88 = alloca i64, align 8
  %buf.addr.i69 = alloca ptr, align 8
  %v.addr.i70 = alloca i64, align 8
  %buf.addr.i53 = alloca ptr, align 8
  %v.addr.i54 = alloca i64, align 8
  %buf.addr.i35 = alloca ptr, align 8
  %v.addr.i36 = alloca i64, align 8
  %buf.addr.i17 = alloca ptr, align 8
  %v.addr.i18 = alloca i64, align 8
  %buf.addr.i3 = alloca ptr, align 8
  %v.addr.i4 = alloca i64, align 8
  %buf.addr.i = alloca ptr, align 8
  %v.addr.i = alloca i64, align 8
  %x.addr.i = alloca i64, align 8
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
  %s47 = alloca i64, align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x.addr.i)
  store i64 %2, ptr %x.addr.i, align 8
  %cmp.i = icmp slt i64 %2, 0
  %3 = load i64, ptr %x.addr.i, align 8
  %4 = load i64, ptr %x.addr.i, align 8
  %sub.i = sub i64 0, %4
  %storemerge = select i1 %cmp.i, i64 %sub.i, i64 %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x.addr.i)
  store i64 %storemerge, ptr %ns, align 8
  %5 = load i64, ptr %_ns.addr, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %buf, align 8
  store i8 45, ptr %6, align 1
  %7 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %incdec.ptr, ptr %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %buf, align 8
  store ptr %8, ptr %numStart, align 8
  %9 = load i64, ptr %ns, align 8
  %cmp2 = icmp ugt i64 %9, 86399999999999
  br i1 %cmp2, label %if.then3, label %if.else24

if.then3:                                         ; preds = %if.end
  %10 = load i64, ptr %ns, align 8
  %div = udiv i64 %10, 86400000000000
  store i64 %div, ptr %d, align 8
  %div4 = udiv i64 %10, 3600000000000
  %mul.neg = mul nsw i64 %div, -24
  %sub = add nsw i64 %mul.neg, %div4
  store i64 %sub, ptr %h, align 8
  %11 = load i64, ptr %ns, align 8
  %div5 = udiv i64 %11, 60000000000
  %12 = load i64, ptr %d, align 8
  %mul6.neg = mul i64 %12, -1440
  %sub7 = add i64 %mul6.neg, %div5
  %mul8.neg = mul nsw i64 %sub, -60
  %sub9 = add i64 %mul8.neg, %sub7
  store i64 %sub9, ptr %m, align 8
  %13 = load i64, ptr %ns, align 8
  %div10 = udiv i64 %13, 1000000000
  %14 = load i64, ptr %d, align 8
  %mul11.neg = mul i64 %14, -86400
  %sub12 = add i64 %mul11.neg, %div10
  %15 = load i64, ptr %h, align 8
  %mul13.neg = mul i64 %15, -3600
  %sub14 = add i64 %mul13.neg, %sub12
  %16 = load i64, ptr %m, align 8
  %mul15.neg = mul i64 %16, -60
  %sub16 = add i64 %mul15.neg, %sub14
  store i64 %sub16, ptr %s, align 8
  %17 = load i64, ptr %d, align 8
  %cmp17 = icmp slt i64 %17, 100
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then3
  %18 = load i64, ptr %d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i)
  store ptr %buf, ptr %buf.addr.i, align 8
  store i64 %18, ptr %v.addr.i, align 8
  %cmp.i1 = icmp ugt i64 %18, 99
  br i1 %cmp.i1, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then18
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i:                                     ; preds = %if.then18
  %19 = load i64, ptr %v.addr.i, align 8
  %cmp1.i = icmp ugt i64 %19, 9
  br i1 %cmp1.i, label %if.then.i2, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_21.exit

if.then.i2:                                       ; preds = %cond.false.i
  %20 = load i64, ptr %v.addr.i, align 8
  %div.i = udiv i64 %20, 10
  %21 = trunc i64 %div.i to i8
  %conv.i = add i8 %21, 48
  %22 = load ptr, ptr %buf.addr.i, align 8
  %23 = load ptr, ptr %22, align 8
  %incdec.ptr.i = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %incdec.ptr.i, ptr %22, align 8
  store i8 %conv.i, ptr %23, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_21.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_21.exit: ; preds = %cond.false.i, %if.then.i2
  %24 = load i64, ptr %v.addr.i, align 8
  %rem.i = urem i64 %24, 10
  %25 = trunc i64 %rem.i to i8
  %conv3.i = or i8 %25, 48
  %26 = load ptr, ptr %buf.addr.i, align 8
  %27 = load ptr, ptr %26, align 8
  %incdec.ptr4.i = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %incdec.ptr4.i, ptr %26, align 8
  store i8 %conv3.i, ptr %27, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i)
  %28 = load ptr, ptr %buf, align 8
  %incdec.ptr19 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %incdec.ptr19, ptr %buf, align 8
  store i8 100, ptr %28, align 1
  br label %if.end20

if.else:                                          ; preds = %if.then3
  %29 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %29, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %30 = load ptr, ptr %buf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %30, i64 5
  store ptr %add.ptr, ptr %buf, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_21.exit
  %31 = load i64, ptr %h, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i4)
  store ptr %buf, ptr %buf.addr.i3, align 8
  store i64 %31, ptr %v.addr.i4, align 8
  %cmp.i5 = icmp ugt i64 %31, 99
  br i1 %cmp.i5, label %cond.true.i7, label %cond.false.i8

cond.true.i7:                                     ; preds = %if.end20
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i8:                                    ; preds = %if.end20
  %32 = load i64, ptr %v.addr.i4, align 8
  %cmp1.i9 = icmp ugt i64 %32, 9
  br i1 %cmp1.i9, label %if.then.i14, label %if.else.i15

if.then.i14:                                      ; preds = %cond.false.i8
  %33 = load i64, ptr %v.addr.i4, align 8
  %div.i10 = udiv i64 %33, 10
  %34 = trunc i64 %div.i10 to i8
  %conv.i12 = add i8 %34, 48
  %35 = load ptr, ptr %buf.addr.i3, align 8
  %36 = load ptr, ptr %35, align 8
  %incdec.ptr.i13 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %incdec.ptr.i13, ptr %35, align 8
  store i8 %conv.i12, ptr %36, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_22.exit

if.else.i15:                                      ; preds = %cond.false.i8
  %37 = load ptr, ptr %buf.addr.i3, align 8
  %38 = load ptr, ptr %37, align 8
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %incdec.ptr2.i, ptr %37, align 8
  store i8 48, ptr %38, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_22.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_22.exit: ; preds = %if.then.i14, %if.else.i15
  %39 = load i64, ptr %v.addr.i4, align 8
  %rem.i16 = urem i64 %39, 10
  %40 = trunc i64 %rem.i16 to i8
  %conv4.i = or i8 %40, 48
  %41 = load ptr, ptr %buf.addr.i3, align 8
  %42 = load ptr, ptr %41, align 8
  %incdec.ptr5.i = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %incdec.ptr5.i, ptr %41, align 8
  store i8 %conv4.i, ptr %42, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i4)
  %43 = load ptr, ptr %buf, align 8
  %incdec.ptr21 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %incdec.ptr21, ptr %buf, align 8
  store i8 58, ptr %43, align 1
  %44 = load i64, ptr %m, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i18)
  store ptr %buf, ptr %buf.addr.i17, align 8
  store i64 %44, ptr %v.addr.i18, align 8
  %cmp.i19 = icmp ugt i64 %44, 99
  br i1 %cmp.i19, label %cond.true.i21, label %cond.false.i22

cond.true.i21:                                    ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_22.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i22:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_22.exit
  %45 = load i64, ptr %v.addr.i18, align 8
  %cmp1.i23 = icmp ugt i64 %45, 9
  br i1 %cmp1.i23, label %if.then.i28, label %if.else.i30

if.then.i28:                                      ; preds = %cond.false.i22
  %46 = load i64, ptr %v.addr.i18, align 8
  %div.i24 = udiv i64 %46, 10
  %47 = trunc i64 %div.i24 to i8
  %conv.i26 = add i8 %47, 48
  %48 = load ptr, ptr %buf.addr.i17, align 8
  %49 = load ptr, ptr %48, align 8
  %incdec.ptr.i27 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %incdec.ptr.i27, ptr %48, align 8
  store i8 %conv.i26, ptr %49, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_23.exit

if.else.i30:                                      ; preds = %cond.false.i22
  %50 = load ptr, ptr %buf.addr.i17, align 8
  %51 = load ptr, ptr %50, align 8
  %incdec.ptr2.i29 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %incdec.ptr2.i29, ptr %50, align 8
  store i8 48, ptr %51, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_23.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_23.exit: ; preds = %if.then.i28, %if.else.i30
  %52 = load i64, ptr %v.addr.i18, align 8
  %rem.i31 = urem i64 %52, 10
  %53 = trunc i64 %rem.i31 to i8
  %conv4.i33 = or i8 %53, 48
  %54 = load ptr, ptr %buf.addr.i17, align 8
  %55 = load ptr, ptr %54, align 8
  %incdec.ptr5.i34 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %incdec.ptr5.i34, ptr %54, align 8
  store i8 %conv4.i33, ptr %55, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i18)
  %56 = load ptr, ptr %buf, align 8
  %incdec.ptr22 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %incdec.ptr22, ptr %buf, align 8
  store i8 58, ptr %56, align 1
  %57 = load i64, ptr %s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i35)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i36)
  store ptr %buf, ptr %buf.addr.i35, align 8
  store i64 %57, ptr %v.addr.i36, align 8
  %cmp.i37 = icmp ugt i64 %57, 99
  br i1 %cmp.i37, label %cond.true.i39, label %cond.false.i40

cond.true.i39:                                    ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_23.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i40:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_23.exit
  %58 = load i64, ptr %v.addr.i36, align 8
  %cmp1.i41 = icmp ugt i64 %58, 9
  br i1 %cmp1.i41, label %if.then.i46, label %if.else.i48

if.then.i46:                                      ; preds = %cond.false.i40
  %59 = load i64, ptr %v.addr.i36, align 8
  %div.i42 = udiv i64 %59, 10
  %60 = trunc i64 %div.i42 to i8
  %conv.i44 = add i8 %60, 48
  %61 = load ptr, ptr %buf.addr.i35, align 8
  %62 = load ptr, ptr %61, align 8
  %incdec.ptr.i45 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %incdec.ptr.i45, ptr %61, align 8
  store i8 %conv.i44, ptr %62, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_24.exit

if.else.i48:                                      ; preds = %cond.false.i40
  %63 = load ptr, ptr %buf.addr.i35, align 8
  %64 = load ptr, ptr %63, align 8
  %incdec.ptr2.i47 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %incdec.ptr2.i47, ptr %63, align 8
  store i8 48, ptr %64, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_24.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_24.exit: ; preds = %if.then.i46, %if.else.i48
  %65 = load i64, ptr %v.addr.i36, align 8
  %rem.i49 = urem i64 %65, 10
  %66 = trunc i64 %rem.i49 to i8
  %conv4.i51 = or i8 %66, 48
  %67 = load ptr, ptr %buf.addr.i35, align 8
  %68 = load ptr, ptr %67, align 8
  %incdec.ptr5.i52 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %incdec.ptr5.i52, ptr %67, align 8
  store i8 %conv4.i51, ptr %68, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i35)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i36)
  %69 = load i64, ptr %ns, align 8
  %rem23 = urem i64 %69, 1000000000
  store i64 %rem23, ptr %ns, align 8
  br label %if.end62

if.else24:                                        ; preds = %if.end
  %70 = load i64, ptr %ns, align 8
  %cmp25 = icmp ugt i64 %70, 3599999999999
  br i1 %cmp25, label %if.then26, label %if.else42

if.then26:                                        ; preds = %if.else24
  %71 = load i64, ptr %ns, align 8
  %div28 = udiv i64 %71, 3600000000000
  store i64 %div28, ptr %h27, align 8
  %div30 = udiv i64 %71, 60000000000
  %mul31.neg = mul nsw i64 %div28, -60
  %sub32 = add nsw i64 %mul31.neg, %div30
  store i64 %sub32, ptr %m29, align 8
  %72 = load i64, ptr %ns, align 8
  %div34 = udiv i64 %72, 1000000000
  %73 = load i64, ptr %h27, align 8
  %mul35.neg = mul i64 %73, -3600
  %sub36 = add i64 %mul35.neg, %div34
  %mul37.neg = mul nsw i64 %sub32, -60
  %sub38 = add i64 %mul37.neg, %sub36
  store i64 %sub38, ptr %s33, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i53)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i54)
  store ptr %buf, ptr %buf.addr.i53, align 8
  store i64 %73, ptr %v.addr.i54, align 8
  %cmp.i55 = icmp ugt i64 %73, 99
  br i1 %cmp.i55, label %cond.true.i57, label %cond.false.i58

cond.true.i57:                                    ; preds = %if.then26
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i58:                                   ; preds = %if.then26
  %74 = load i64, ptr %v.addr.i54, align 8
  %cmp1.i59 = icmp ugt i64 %74, 9
  br i1 %cmp1.i59, label %if.then.i64, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_25.exit

if.then.i64:                                      ; preds = %cond.false.i58
  %75 = load i64, ptr %v.addr.i54, align 8
  %div.i60 = udiv i64 %75, 10
  %76 = trunc i64 %div.i60 to i8
  %conv.i62 = add i8 %76, 48
  %77 = load ptr, ptr %buf.addr.i53, align 8
  %78 = load ptr, ptr %77, align 8
  %incdec.ptr.i63 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %incdec.ptr.i63, ptr %77, align 8
  store i8 %conv.i62, ptr %78, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_25.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_25.exit: ; preds = %cond.false.i58, %if.then.i64
  %79 = load i64, ptr %v.addr.i54, align 8
  %rem.i65 = urem i64 %79, 10
  %80 = trunc i64 %rem.i65 to i8
  %conv3.i67 = or i8 %80, 48
  %81 = load ptr, ptr %buf.addr.i53, align 8
  %82 = load ptr, ptr %81, align 8
  %incdec.ptr4.i68 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %incdec.ptr4.i68, ptr %81, align 8
  store i8 %conv3.i67, ptr %82, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i53)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i54)
  %83 = load ptr, ptr %buf, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %83, i64 1
  store ptr %incdec.ptr39, ptr %buf, align 8
  store i8 58, ptr %83, align 1
  %84 = load i64, ptr %m29, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i69)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i70)
  store ptr %buf, ptr %buf.addr.i69, align 8
  store i64 %84, ptr %v.addr.i70, align 8
  %cmp.i71 = icmp ugt i64 %84, 99
  br i1 %cmp.i71, label %cond.true.i73, label %cond.false.i74

cond.true.i73:                                    ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_25.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i74:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_25.exit
  %85 = load i64, ptr %v.addr.i70, align 8
  %cmp1.i75 = icmp ugt i64 %85, 9
  br i1 %cmp1.i75, label %if.then.i80, label %if.else.i82

if.then.i80:                                      ; preds = %cond.false.i74
  %86 = load i64, ptr %v.addr.i70, align 8
  %div.i76 = udiv i64 %86, 10
  %87 = trunc i64 %div.i76 to i8
  %conv.i78 = add i8 %87, 48
  %88 = load ptr, ptr %buf.addr.i69, align 8
  %89 = load ptr, ptr %88, align 8
  %incdec.ptr.i79 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %incdec.ptr.i79, ptr %88, align 8
  store i8 %conv.i78, ptr %89, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_26.exit

if.else.i82:                                      ; preds = %cond.false.i74
  %90 = load ptr, ptr %buf.addr.i69, align 8
  %91 = load ptr, ptr %90, align 8
  %incdec.ptr2.i81 = getelementptr inbounds i8, ptr %91, i64 1
  store ptr %incdec.ptr2.i81, ptr %90, align 8
  store i8 48, ptr %91, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_26.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_26.exit: ; preds = %if.then.i80, %if.else.i82
  %92 = load i64, ptr %v.addr.i70, align 8
  %rem.i83 = urem i64 %92, 10
  %93 = trunc i64 %rem.i83 to i8
  %conv4.i85 = or i8 %93, 48
  %94 = load ptr, ptr %buf.addr.i69, align 8
  %95 = load ptr, ptr %94, align 8
  %incdec.ptr5.i86 = getelementptr inbounds i8, ptr %95, i64 1
  store ptr %incdec.ptr5.i86, ptr %94, align 8
  store i8 %conv4.i85, ptr %95, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i69)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i70)
  %96 = load ptr, ptr %buf, align 8
  %incdec.ptr40 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %incdec.ptr40, ptr %buf, align 8
  store i8 58, ptr %96, align 1
  %97 = load i64, ptr %s33, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i87)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i88)
  store ptr %buf, ptr %buf.addr.i87, align 8
  store i64 %97, ptr %v.addr.i88, align 8
  %cmp.i89 = icmp ugt i64 %97, 99
  br i1 %cmp.i89, label %cond.true.i91, label %cond.false.i92

cond.true.i91:                                    ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_26.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i92:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_26.exit
  %98 = load i64, ptr %v.addr.i88, align 8
  %cmp1.i93 = icmp ugt i64 %98, 9
  br i1 %cmp1.i93, label %if.then.i98, label %if.else.i100

if.then.i98:                                      ; preds = %cond.false.i92
  %99 = load i64, ptr %v.addr.i88, align 8
  %div.i94 = udiv i64 %99, 10
  %100 = trunc i64 %div.i94 to i8
  %conv.i96 = add i8 %100, 48
  %101 = load ptr, ptr %buf.addr.i87, align 8
  %102 = load ptr, ptr %101, align 8
  %incdec.ptr.i97 = getelementptr inbounds i8, ptr %102, i64 1
  store ptr %incdec.ptr.i97, ptr %101, align 8
  store i8 %conv.i96, ptr %102, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_27.exit

if.else.i100:                                     ; preds = %cond.false.i92
  %103 = load ptr, ptr %buf.addr.i87, align 8
  %104 = load ptr, ptr %103, align 8
  %incdec.ptr2.i99 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %incdec.ptr2.i99, ptr %103, align 8
  store i8 48, ptr %104, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_27.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_27.exit: ; preds = %if.then.i98, %if.else.i100
  %105 = load i64, ptr %v.addr.i88, align 8
  %rem.i101 = urem i64 %105, 10
  %106 = trunc i64 %rem.i101 to i8
  %conv4.i103 = or i8 %106, 48
  %107 = load ptr, ptr %buf.addr.i87, align 8
  %108 = load ptr, ptr %107, align 8
  %incdec.ptr5.i104 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %incdec.ptr5.i104, ptr %107, align 8
  store i8 %conv4.i103, ptr %108, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i87)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i88)
  %109 = load i64, ptr %ns, align 8
  %rem41 = urem i64 %109, 1000000000
  store i64 %rem41, ptr %ns, align 8
  br label %if.end62

if.else42:                                        ; preds = %if.else24
  %110 = load i64, ptr %ns, align 8
  %cmp43 = icmp ugt i64 %110, 59999999999
  br i1 %cmp43, label %if.then44, label %if.else53

if.then44:                                        ; preds = %if.else42
  %111 = load i64, ptr %ns, align 8
  %div46 = udiv i64 %111, 60000000000
  %div48 = udiv i64 %111, 1000000000
  %mul49.neg = mul nsw i64 %div46, -60
  %sub50 = add nsw i64 %mul49.neg, %div48
  store i64 %sub50, ptr %s47, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i105)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i106)
  store ptr %buf, ptr %buf.addr.i105, align 8
  store i64 %div46, ptr %v.addr.i106, align 8
  %cmp.i107 = icmp ugt i64 %111, 5999999999999
  br i1 %cmp.i107, label %cond.true.i109, label %cond.false.i110

cond.true.i109:                                   ; preds = %if.then44
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i110:                                  ; preds = %if.then44
  %112 = load i64, ptr %v.addr.i106, align 8
  %cmp1.i111 = icmp ugt i64 %112, 9
  br i1 %cmp1.i111, label %if.then.i116, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_28.exit

if.then.i116:                                     ; preds = %cond.false.i110
  %113 = load i64, ptr %v.addr.i106, align 8
  %div.i112 = udiv i64 %113, 10
  %114 = trunc i64 %div.i112 to i8
  %conv.i114 = add i8 %114, 48
  %115 = load ptr, ptr %buf.addr.i105, align 8
  %116 = load ptr, ptr %115, align 8
  %incdec.ptr.i115 = getelementptr inbounds i8, ptr %116, i64 1
  store ptr %incdec.ptr.i115, ptr %115, align 8
  store i8 %conv.i114, ptr %116, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_28.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_28.exit: ; preds = %cond.false.i110, %if.then.i116
  %117 = load i64, ptr %v.addr.i106, align 8
  %rem.i117 = urem i64 %117, 10
  %118 = trunc i64 %rem.i117 to i8
  %conv3.i119 = or i8 %118, 48
  %119 = load ptr, ptr %buf.addr.i105, align 8
  %120 = load ptr, ptr %119, align 8
  %incdec.ptr4.i120 = getelementptr inbounds i8, ptr %120, i64 1
  store ptr %incdec.ptr4.i120, ptr %119, align 8
  store i8 %conv3.i119, ptr %120, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i105)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i106)
  %121 = load ptr, ptr %buf, align 8
  %incdec.ptr51 = getelementptr inbounds i8, ptr %121, i64 1
  store ptr %incdec.ptr51, ptr %buf, align 8
  store i8 58, ptr %121, align 1
  %122 = load i64, ptr %s47, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i121)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i122)
  store ptr %buf, ptr %buf.addr.i121, align 8
  store i64 %122, ptr %v.addr.i122, align 8
  %cmp.i123 = icmp ugt i64 %122, 99
  br i1 %cmp.i123, label %cond.true.i125, label %cond.false.i126

cond.true.i125:                                   ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_28.exit
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL13PrintTinyInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i126:                                  ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_28.exit
  %123 = load i64, ptr %v.addr.i122, align 8
  %cmp1.i127 = icmp ugt i64 %123, 9
  br i1 %cmp1.i127, label %if.then.i132, label %if.else.i134

if.then.i132:                                     ; preds = %cond.false.i126
  %124 = load i64, ptr %v.addr.i122, align 8
  %div.i128 = udiv i64 %124, 10
  %125 = trunc i64 %div.i128 to i8
  %conv.i130 = add i8 %125, 48
  %126 = load ptr, ptr %buf.addr.i121, align 8
  %127 = load ptr, ptr %126, align 8
  %incdec.ptr.i131 = getelementptr inbounds i8, ptr %127, i64 1
  store ptr %incdec.ptr.i131, ptr %126, align 8
  store i8 %conv.i130, ptr %127, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_29.exit

if.else.i134:                                     ; preds = %cond.false.i126
  %128 = load ptr, ptr %buf.addr.i121, align 8
  %129 = load ptr, ptr %128, align 8
  %incdec.ptr2.i133 = getelementptr inbounds i8, ptr %129, i64 1
  store ptr %incdec.ptr2.i133, ptr %128, align 8
  store i8 48, ptr %129, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_29.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_29.exit: ; preds = %if.then.i132, %if.else.i134
  %130 = load i64, ptr %v.addr.i122, align 8
  %rem.i135 = urem i64 %130, 10
  %131 = trunc i64 %rem.i135 to i8
  %conv4.i137 = or i8 %131, 48
  %132 = load ptr, ptr %buf.addr.i121, align 8
  %133 = load ptr, ptr %132, align 8
  %incdec.ptr5.i138 = getelementptr inbounds i8, ptr %133, i64 1
  store ptr %incdec.ptr5.i138, ptr %132, align 8
  store i8 %conv4.i137, ptr %133, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i121)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i122)
  %134 = load i64, ptr %ns, align 8
  %rem52 = urem i64 %134, 1000000000
  store i64 %rem52, ptr %ns, align 8
  br label %if.end62

if.else53:                                        ; preds = %if.else42
  %135 = load i64, ptr %ns, align 8
  %cmp54 = icmp ugt i64 %135, 999999999
  br i1 %cmp54, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.else53
  %136 = load i64, ptr %ns, align 8
  %div56 = udiv i64 %136, 1000000000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i139)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i140)
  store ptr %buf, ptr %buf.addr.i139, align 8
  store i64 %div56, ptr %v.addr.i140, align 8
  %cmp.i141 = icmp ugt i64 %136, 99999999999
  br i1 %cmp.i141, label %cond.true.i143, label %cond.false.i144

cond.true.i143:                                   ; preds = %if.then55
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL12PrintTinyIntERPcy, ptr noundef nonnull @.str.4, i32 noundef 35, ptr noundef nonnull @.str.15) #9
  unreachable

cond.false.i144:                                  ; preds = %if.then55
  %137 = load i64, ptr %v.addr.i140, align 8
  %cmp1.i145 = icmp ugt i64 %137, 9
  br i1 %cmp1.i145, label %if.then.i150, label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_30.exit

if.then.i150:                                     ; preds = %cond.false.i144
  %138 = load i64, ptr %v.addr.i140, align 8
  %div.i146 = udiv i64 %138, 10
  %139 = trunc i64 %div.i146 to i8
  %conv.i148 = add i8 %139, 48
  %140 = load ptr, ptr %buf.addr.i139, align 8
  %141 = load ptr, ptr %140, align 8
  %incdec.ptr.i149 = getelementptr inbounds i8, ptr %141, i64 1
  store ptr %incdec.ptr.i149, ptr %140, align 8
  store i8 %conv.i148, ptr %141, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_30.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_30.exit: ; preds = %cond.false.i144, %if.then.i150
  %142 = load i64, ptr %v.addr.i140, align 8
  %rem.i151 = urem i64 %142, 10
  %143 = trunc i64 %rem.i151 to i8
  %conv3.i153 = or i8 %143, 48
  %144 = load ptr, ptr %buf.addr.i139, align 8
  %145 = load ptr, ptr %144, align 8
  %incdec.ptr4.i154 = getelementptr inbounds i8, ptr %145, i64 1
  store ptr %incdec.ptr4.i154, ptr %144, align 8
  store i8 %conv3.i153, ptr %145, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i139)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i140)
  %146 = load ptr, ptr %buf, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %146, i64 1
  store ptr %incdec.ptr57, ptr %buf, align 8
  store i8 115, ptr %146, align 1
  %147 = load i64, ptr %ns, align 8
  %rem58 = urem i64 %147, 1000000000
  store i64 %rem58, ptr %ns, align 8
  br label %if.end62

if.end62:                                         ; preds = %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_27.exit, %if.else53, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_30.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_29.exit, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_24.exit
  %148 = load i64, ptr %ns, align 8
  %cmp63.not = icmp eq i64 %148, 0
  br i1 %cmp63.not, label %if.else87, label %if.then64

if.then64:                                        ; preds = %if.end62
  %149 = load ptr, ptr %buf, align 8
  %150 = load ptr, ptr %numStart, align 8
  %cmp65.not = icmp eq ptr %149, %150
  br i1 %cmp65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.then64
  %151 = load ptr, ptr %buf, align 8
  %incdec.ptr67 = getelementptr inbounds i8, ptr %151, i64 1
  store ptr %incdec.ptr67, ptr %buf, align 8
  store i8 32, ptr %151, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then64
  %152 = load i64, ptr %ns, align 8
  %cmp69 = icmp ugt i64 %152, 999999
  br i1 %cmp69, label %if.then70, label %if.else74

if.then70:                                        ; preds = %if.end68
  %153 = load i64, ptr %ns, align 8
  %div71 = udiv i64 %153, 1000000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i155)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i156)
  store ptr %buf, ptr %buf.addr.i155, align 8
  store i64 %div71, ptr %v.addr.i156, align 8
  %cmp.i157 = icmp ugt i64 %153, 999999999
  br i1 %cmp.i157, label %cond.true.i159, label %cond.false.i160

cond.true.i159:                                   ; preds = %if.then70
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL14PrintSmallInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 74, ptr noundef nonnull @.str.12) #9
  unreachable

cond.false.i160:                                  ; preds = %if.then70
  %154 = load i64, ptr %v.addr.i156, align 8
  %cmp1.i161 = icmp ugt i64 %154, 99
  br i1 %cmp1.i161, label %if.then.i163, label %if.else.i164

if.then.i163:                                     ; preds = %cond.false.i160
  %155 = load ptr, ptr %buf.addr.i155, align 8
  %156 = load ptr, ptr %155, align 8
  %157 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %158 = load i64, ptr %v.addr.i156, align 8
  %div.i162 = udiv i64 %158, 10
  %mul.i = shl nuw nsw i64 %div.i162, 1
  %add.ptr.i = getelementptr inbounds i8, ptr %157, i64 %mul.i
  %159 = load i16, ptr %add.ptr.i, align 1
  store i16 %159, ptr %156, align 1
  %160 = load ptr, ptr %buf.addr.i155, align 8
  %161 = load ptr, ptr %160, align 8
  %add.ptr2.i = getelementptr inbounds i8, ptr %161, i64 2
  store ptr %add.ptr2.i, ptr %160, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_31.exit

if.else.i164:                                     ; preds = %cond.false.i160
  %162 = load i64, ptr %v.addr.i156, align 8
  %cmp3.i = icmp ugt i64 %162, 9
  br i1 %cmp3.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.else.i164
  %163 = load ptr, ptr %buf.addr.i155, align 8
  %164 = load ptr, ptr %163, align 8
  %incdec.ptr.i165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %incdec.ptr.i165, ptr %163, align 8
  store i8 48, ptr %164, align 1
  %165 = load i64, ptr %v.addr.i156, align 8
  %div5.i = udiv i64 %165, 10
  %166 = trunc i64 %div5.i to i8
  %conv.i167 = add i8 %166, 48
  %167 = load ptr, ptr %buf.addr.i155, align 8
  %168 = load ptr, ptr %167, align 8
  %incdec.ptr6.i = getelementptr inbounds i8, ptr %168, i64 1
  store ptr %incdec.ptr6.i, ptr %167, align 8
  store i8 %conv.i167, ptr %168, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_31.exit

if.else7.i:                                       ; preds = %if.else.i164
  %169 = load ptr, ptr %buf.addr.i155, align 8
  %170 = load ptr, ptr %169, align 8
  store i16 12336, ptr %170, align 1
  %171 = load ptr, ptr %169, align 8
  %add.ptr8.i = getelementptr inbounds i8, ptr %171, i64 2
  store ptr %add.ptr8.i, ptr %169, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_31.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_31.exit: ; preds = %if.then4.i, %if.else7.i, %if.then.i163
  %172 = load i64, ptr %v.addr.i156, align 8
  %rem.i168 = urem i64 %172, 10
  %173 = trunc i64 %rem.i168 to i8
  %conv11.i = or i8 %173, 48
  %174 = load ptr, ptr %buf.addr.i155, align 8
  %175 = load ptr, ptr %174, align 8
  %incdec.ptr12.i = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %incdec.ptr12.i, ptr %174, align 8
  store i8 %conv11.i, ptr %175, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i155)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i156)
  %176 = load ptr, ptr %buf, align 8
  %incdec.ptr72 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %incdec.ptr72, ptr %buf, align 8
  store i8 44, ptr %176, align 1
  %177 = load i64, ptr %ns, align 8
  %rem73 = urem i64 %177, 1000000
  store i64 %rem73, ptr %ns, align 8
  br label %if.end76

if.else74:                                        ; preds = %if.end68
  %178 = load ptr, ptr %buf, align 8
  store i32 741355568, ptr %178, align 1
  %179 = load ptr, ptr %buf, align 8
  %add.ptr75 = getelementptr inbounds i8, ptr %179, i64 4
  store ptr %add.ptr75, ptr %buf, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_31.exit
  %180 = load i64, ptr %ns, align 8
  %cmp77 = icmp ugt i64 %180, 999
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.end76
  %181 = load i64, ptr %ns, align 8
  %div79 = udiv i64 %181, 1000
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i169)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i170)
  store ptr %buf, ptr %buf.addr.i169, align 8
  store i64 %div79, ptr %v.addr.i170, align 8
  %cmp.i171 = icmp ugt i64 %181, 999999
  br i1 %cmp.i171, label %cond.true.i173, label %cond.false.i174

cond.true.i173:                                   ; preds = %if.then78
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL14PrintSmallInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 74, ptr noundef nonnull @.str.12) #9
  unreachable

cond.false.i174:                                  ; preds = %if.then78
  %182 = load i64, ptr %v.addr.i170, align 8
  %cmp1.i175 = icmp ugt i64 %182, 99
  br i1 %cmp1.i175, label %if.then.i180, label %if.else.i182

if.then.i180:                                     ; preds = %cond.false.i174
  %183 = load ptr, ptr %buf.addr.i169, align 8
  %184 = load ptr, ptr %183, align 8
  %185 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %186 = load i64, ptr %v.addr.i170, align 8
  %div.i176 = udiv i64 %186, 10
  %mul.i177 = shl nuw nsw i64 %div.i176, 1
  %add.ptr.i178 = getelementptr inbounds i8, ptr %185, i64 %mul.i177
  %187 = load i16, ptr %add.ptr.i178, align 1
  store i16 %187, ptr %184, align 1
  %188 = load ptr, ptr %buf.addr.i169, align 8
  %189 = load ptr, ptr %188, align 8
  %add.ptr2.i179 = getelementptr inbounds i8, ptr %189, i64 2
  store ptr %add.ptr2.i179, ptr %188, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_32.exit

if.else.i182:                                     ; preds = %cond.false.i174
  %190 = load i64, ptr %v.addr.i170, align 8
  %cmp3.i181 = icmp ugt i64 %190, 9
  br i1 %cmp3.i181, label %if.then4.i188, label %if.else7.i190

if.then4.i188:                                    ; preds = %if.else.i182
  %191 = load ptr, ptr %buf.addr.i169, align 8
  %192 = load ptr, ptr %191, align 8
  %incdec.ptr.i183 = getelementptr inbounds i8, ptr %192, i64 1
  store ptr %incdec.ptr.i183, ptr %191, align 8
  store i8 48, ptr %192, align 1
  %193 = load i64, ptr %v.addr.i170, align 8
  %div5.i184 = udiv i64 %193, 10
  %194 = trunc i64 %div5.i184 to i8
  %conv.i186 = add i8 %194, 48
  %195 = load ptr, ptr %buf.addr.i169, align 8
  %196 = load ptr, ptr %195, align 8
  %incdec.ptr6.i187 = getelementptr inbounds i8, ptr %196, i64 1
  store ptr %incdec.ptr6.i187, ptr %195, align 8
  store i8 %conv.i186, ptr %196, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_32.exit

if.else7.i190:                                    ; preds = %if.else.i182
  %197 = load ptr, ptr %buf.addr.i169, align 8
  %198 = load ptr, ptr %197, align 8
  store i16 12336, ptr %198, align 1
  %199 = load ptr, ptr %197, align 8
  %add.ptr8.i189 = getelementptr inbounds i8, ptr %199, i64 2
  store ptr %add.ptr8.i189, ptr %197, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_32.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_32.exit: ; preds = %if.then4.i188, %if.else7.i190, %if.then.i180
  %200 = load i64, ptr %v.addr.i170, align 8
  %rem.i192 = urem i64 %200, 10
  %201 = trunc i64 %rem.i192 to i8
  %conv11.i194 = or i8 %201, 48
  %202 = load ptr, ptr %buf.addr.i169, align 8
  %203 = load ptr, ptr %202, align 8
  %incdec.ptr12.i195 = getelementptr inbounds i8, ptr %203, i64 1
  store ptr %incdec.ptr12.i195, ptr %202, align 8
  store i8 %conv11.i194, ptr %203, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i169)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i170)
  %204 = load ptr, ptr %buf, align 8
  %incdec.ptr80 = getelementptr inbounds i8, ptr %204, i64 1
  store ptr %incdec.ptr80, ptr %buf, align 8
  store i8 44, ptr %204, align 1
  %205 = load i64, ptr %ns, align 8
  %rem81 = urem i64 %205, 1000
  store i64 %rem81, ptr %ns, align 8
  br label %if.end84

if.else82:                                        ; preds = %if.end76
  %206 = load ptr, ptr %buf, align 8
  store i32 741355568, ptr %206, align 1
  %207 = load ptr, ptr %buf, align 8
  %add.ptr83 = getelementptr inbounds i8, ptr %207, i64 4
  store ptr %add.ptr83, ptr %buf, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_32.exit
  %208 = load i64, ptr %ns, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.addr.i196)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.addr.i197)
  store ptr %buf, ptr %buf.addr.i196, align 8
  store i64 %208, ptr %v.addr.i197, align 8
  %cmp.i198 = icmp ugt i64 %208, 999
  br i1 %cmp.i198, label %cond.true.i200, label %cond.false.i201

cond.true.i200:                                   ; preds = %if.end84
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracyL14PrintSmallInt0ERPcy, ptr noundef nonnull @.str.4, i32 noundef 74, ptr noundef nonnull @.str.12) #9
  unreachable

cond.false.i201:                                  ; preds = %if.end84
  %209 = load i64, ptr %v.addr.i197, align 8
  %cmp1.i202 = icmp ugt i64 %209, 99
  br i1 %cmp1.i202, label %if.then.i207, label %if.else.i209

if.then.i207:                                     ; preds = %cond.false.i201
  %210 = load ptr, ptr %buf.addr.i196, align 8
  %211 = load ptr, ptr %210, align 8
  %212 = load ptr, ptr @_ZN5tracyL11IntTable100E, align 8
  %213 = load i64, ptr %v.addr.i197, align 8
  %div.i203 = udiv i64 %213, 10
  %mul.i204 = shl nuw nsw i64 %div.i203, 1
  %add.ptr.i205 = getelementptr inbounds i8, ptr %212, i64 %mul.i204
  %214 = load i16, ptr %add.ptr.i205, align 1
  store i16 %214, ptr %211, align 1
  %215 = load ptr, ptr %buf.addr.i196, align 8
  %216 = load ptr, ptr %215, align 8
  %add.ptr2.i206 = getelementptr inbounds i8, ptr %216, i64 2
  store ptr %add.ptr2.i206, ptr %215, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_33.exit

if.else.i209:                                     ; preds = %cond.false.i201
  %217 = load i64, ptr %v.addr.i197, align 8
  %cmp3.i208 = icmp ugt i64 %217, 9
  br i1 %cmp3.i208, label %if.then4.i215, label %if.else7.i217

if.then4.i215:                                    ; preds = %if.else.i209
  %218 = load ptr, ptr %buf.addr.i196, align 8
  %219 = load ptr, ptr %218, align 8
  %incdec.ptr.i210 = getelementptr inbounds i8, ptr %219, i64 1
  store ptr %incdec.ptr.i210, ptr %218, align 8
  store i8 48, ptr %219, align 1
  %220 = load i64, ptr %v.addr.i197, align 8
  %div5.i211 = udiv i64 %220, 10
  %221 = trunc i64 %div5.i211 to i8
  %conv.i213 = add i8 %221, 48
  %222 = load ptr, ptr %buf.addr.i196, align 8
  %223 = load ptr, ptr %222, align 8
  %incdec.ptr6.i214 = getelementptr inbounds i8, ptr %223, i64 1
  store ptr %incdec.ptr6.i214, ptr %222, align 8
  store i8 %conv.i213, ptr %223, align 1
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_33.exit

if.else7.i217:                                    ; preds = %if.else.i209
  %224 = load ptr, ptr %buf.addr.i196, align 8
  %225 = load ptr, ptr %224, align 8
  store i16 12336, ptr %225, align 1
  %226 = load ptr, ptr %224, align 8
  %add.ptr8.i216 = getelementptr inbounds i8, ptr %226, i64 2
  store ptr %add.ptr8.i216, ptr %224, align 8
  br label %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_33.exit

pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_33.exit: ; preds = %if.then4.i215, %if.else7.i217, %if.then.i207
  %227 = load i64, ptr %v.addr.i197, align 8
  %rem.i219 = urem i64 %227, 10
  %228 = trunc i64 %rem.i219 to i8
  %conv11.i221 = or i8 %228, 48
  %229 = load ptr, ptr %buf.addr.i196, align 8
  %230 = load ptr, ptr %229, align 8
  %incdec.ptr12.i222 = getelementptr inbounds i8, ptr %230, i64 1
  store ptr %incdec.ptr12.i222, ptr %229, align 8
  store i8 %conv11.i221, ptr %230, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.addr.i196)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.addr.i197)
  %231 = load ptr, ptr %buf, align 8
  %incdec.ptr85 = getelementptr inbounds i8, ptr %231, i64 1
  store ptr %incdec.ptr85, ptr %buf, align 8
  store i8 110, ptr %231, align 1
  %232 = load ptr, ptr %buf, align 8
  %incdec.ptr86 = getelementptr inbounds i8, ptr %232, i64 1
  store ptr %incdec.ptr86, ptr %buf, align 8
  store i8 115, ptr %232, align 1
  br label %if.end89

if.else87:                                        ; preds = %if.end62
  %233 = load ptr, ptr %buf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %233, ptr noundef nonnull align 1 dereferenceable(13) @.str.8, i64 13, i1 false)
  %add.ptr88 = getelementptr inbounds i8, ptr %233, i64 13
  store ptr %add.ptr88, ptr %buf, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_33.exit
  %234 = load ptr, ptr %buf, align 8
  %incdec.ptr90 = getelementptr inbounds i8, ptr %234, i64 1
  store ptr %incdec.ptr90, ptr %buf, align 8
  store i8 0, ptr %234, align 1
  %235 = load ptr, ptr %bufstart, align 8
  ret ptr %235
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
  %call.i = call [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef %7, ptr noundef nonnull %add.ptr, double noundef %div, i32 noundef 2, i32 noundef 2)
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
  %call.i6 = call [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef %10, ptr noundef nonnull %add.ptr9, double noundef %div11, i32 noundef 2, i32 noundef 2)
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
  %call.i12 = call [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef %13, ptr noundef nonnull %add.ptr16, double noundef %div18, i32 noundef 2, i32 noundef 2)
  br label %if.end27

if.else20:                                        ; preds = %if.else13
  %15 = load ptr, ptr %buf, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %15, i64 64
  %16 = load i64, ptr %val.addr, align 8
  %conv22 = sitofp i64 %16 to double
  %div23 = fmul double %conv22, 0x3D70000000000000
  %call.i18 = call [2 x i64] @_ZNSt3__18to_charsEPcS0_dNS_12chars_formatEi(ptr noundef %15, ptr noundef nonnull %add.ptr21, double noundef %div23, i32 noundef 2, i32 noundef 2)
  br label %if.end27

if.end27:                                         ; preds = %if.then8, %if.else20, %if.then15, %if.then4
  %call.i18.pn.pn.pn = phi [2 x i64] [ %call.i, %if.then4 ], [ %call.i6, %if.then8 ], [ %call.i18, %if.else20 ], [ %call.i12, %if.then15 ]
  %storemerge25 = phi i32 [ 0, %if.then4 ], [ 1, %if.then8 ], [ 3, %if.else20 ], [ 2, %if.then15 ]
  %storemerge26.in = extractvalue [2 x i64] %call.i18.pn.pn.pn, 0
  %storemerge26 = inttoptr i64 %storemerge26.in to ptr
  store ptr %storemerge26, ptr %ptr, align 8
  store i32 %storemerge25, ptr %unit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end27
  %storemerge26.pn = phi ptr [ %storemerge26, %if.end27 ], [ %20, %while.body ]
  %storemerge27 = getelementptr inbounds i8, ptr %storemerge26.pn, i64 -1
  store ptr %storemerge27, ptr %ptr, align 8
  %17 = load ptr, ptr %buf, align 8
  %cmp28.not = icmp ult ptr %storemerge27, %17
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
  call void @__assert_rtn(ptr noundef nonnull @__func__._ZN5tracy15MemSizeToStringEx, ptr noundef nonnull @.str.4, i32 noundef 426, ptr noundef nonnull @.str.10) #9
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
  %storemerge28 = phi ptr [ %31, %sw.epilog ], [ %4, %if.then ]
  ret ptr %storemerge28
}

; Function Attrs: nounwind readnone willreturn
declare i64 @llabs(i64 noundef) #4

declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

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

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i64 @pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_0(i64 noundef %x) #6 {
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

; Function Attrs: alwaysinline mustprogress nounwind ssp uwtable
define noundef i64 @pc_inline_source_snapshot_public_repos_tracy_server_TracyPrint_20(i64 noundef %x) #6 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

attributes #0 = { mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { mustprogress ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #6 = { alwaysinline mustprogress nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold noreturn }

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
