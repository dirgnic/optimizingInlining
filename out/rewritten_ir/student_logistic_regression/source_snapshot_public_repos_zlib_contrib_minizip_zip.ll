; ModuleID = './out/rewritten_ir/student_logistic_regression/source_snapshot_public_repos_zlib_contrib_minizip_zip.prepared.ll'
source_filename = "./source_snapshot/public_repos/zlib/contrib/minizip/zip.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx15.0.0"

%struct.zip64_internal = type { %struct.zlib_filefunc64_32_def_s, ptr, %struct.linkedlist_data_s, i32, %struct.curfile64_info, i64, i64, i64, ptr, %struct.set_s, %struct.block_t }
%struct.zlib_filefunc64_32_def_s = type { %struct.zlib_filefunc64_def_s, ptr, ptr, ptr }
%struct.zlib_filefunc64_def_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linkedlist_data_s = type { ptr, ptr }
%struct.curfile64_info = type { %struct.z_stream_s, i32, i32, i64, ptr, i64, i64, i64, i64, i32, i32, [65536 x i8], i64, i64, i32, i32, i64, i64, i64, [3 x i64], ptr, i32 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.set_s = type { ptr, ptr, ptr, i16, i64, %struct.set_rand_t, [48 x i32] }
%struct.set_rand_t = type { i64, i64 }
%struct.block_t = type { ptr, i64, ptr }
%struct.set_node_s = type { ptr, i16, i16, ptr }
%struct.linkedlist_datablock_internal_s = type { ptr, i64, i64, i64, [4080 x i8] }
%struct.zip_fileinfo = type { %struct.tm_zip_s, i64, i64, i64 }
%struct.tm_zip_s = type { i32, i32, i32, i32, i32, i32 }

@zip_copyright = constant [93 x i8] c" zip 1.01 Copyright 1998-2004 Gilles Vollant - https://www.winimage.com/zLibDll/minizip.html\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1.2.12\00", align 1
@__func__.set_insert = private unnamed_addr constant [11 x i8] c"set_insert\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"skipset.h\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"set_ok(set) && \22improper use\22\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"level < 32767 && \22Overhead, without any fuss, the stars were going out.\22\00", align 1
@__func__.set_found = private unnamed_addr constant [10 x i8] c"set_found\00", align 1
@crypthead.calls = internal global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @zipAlreadyThere(ptr noundef %file, ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %copy = alloca ptr, align 8
  %zip = alloca ptr, align 8
  %there = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %file, ptr %zip, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %zip, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 2
  %1 = load ptr, ptr %central_dir, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %zip, align 8
  %env = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 9, i32 6
  %call = call i32 @setjmp(ptr noundef nonnull %env) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end3
  %3 = load ptr, ptr %zip, align 8
  %set5 = getelementptr inbounds %struct.zip64_internal, ptr %3, i64 0, i32 9
  call void @set_end(ptr noundef nonnull %set5)
  store i32 -2, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %zip, align 8
  %set7 = getelementptr inbounds %struct.zip64_internal, ptr %4, i64 0, i32 9
  %call8 = call i32 @set_ok(ptr noundef nonnull %set7)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %5 = load ptr, ptr %zip, align 8
  %set11 = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 9
  call void @set_start(ptr noundef nonnull %set11)
  %block = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 10
  %central_dir12 = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 2
  call void @block_init(ptr noundef nonnull %block, ptr noundef nonnull %central_dir12)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %if.end13
  %6 = load ptr, ptr %zip, align 8
  %block14 = getelementptr inbounds %struct.zip64_internal, ptr %6, i64 0, i32 10
  %set15 = getelementptr inbounds %struct.zip64_internal, ptr %6, i64 0, i32 9
  %call16 = call ptr @block_central_name(ptr noundef nonnull %block14, ptr noundef nonnull %set15)
  store ptr %call16, ptr %there, align 8
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %for.cond
  %7 = load ptr, ptr %zip, align 8
  %block19 = getelementptr inbounds %struct.zip64_internal, ptr %7, i64 0, i32 10
  %8 = load ptr, ptr %block19, align 8
  %cmp20 = icmp eq ptr %8, null
  br i1 %cmp20, label %if.then21, label %for.end

if.then21:                                        ; preds = %if.then18
  store i32 -1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %for.cond
  %9 = load ptr, ptr %zip, align 8
  %set24 = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 9
  %10 = load ptr, ptr %there, align 8
  %call25 = call i32 @set_insert(ptr noundef nonnull %set24, ptr noundef %10)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  %11 = load ptr, ptr %there, align 8
  call void @free(ptr noundef %11) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end23
  br label %for.cond

for.end:                                          ; preds = %if.then18
  %12 = load ptr, ptr %name.addr, align 8
  %call30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #13
  store i64 %call30, ptr %len, align 8
  %13 = load ptr, ptr %zip, align 8
  %set31 = getelementptr inbounds %struct.zip64_internal, ptr %13, i64 0, i32 9
  %add = add i64 %call30, 1
  %call32 = call ptr @set_alloc(ptr noundef nonnull %set31, ptr noundef null, i64 noundef %add)
  store ptr %call32, ptr %copy, align 8
  %14 = load ptr, ptr %name.addr, align 8
  %15 = load i64, ptr %len, align 8
  %add33 = add i64 %15, 1
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %call32, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memcpy_chk(ptr noundef %call32, ptr noundef %14, i64 noundef %add33, i64 noundef %16) #13
  %17 = load ptr, ptr %zip, align 8
  %set35 = getelementptr inbounds %struct.zip64_internal, ptr %17, i64 0, i32 9
  %18 = load ptr, ptr %copy, align 8
  %call36 = call i32 @set_found(ptr noundef nonnull %set35, ptr noundef %18)
  call void @free(ptr noundef %18) #13
  store i32 %call36, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then21, %if.then4, %if.then2, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: returns_twice
declare i32 @setjmp(ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @set_end(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %0 = load ptr, ptr %set, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %set.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %right, align 8
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %set.addr, align 8
  call void @set_sweep(ptr noundef %4)
  %5 = load ptr, ptr %4, align 8
  %right5 = getelementptr inbounds %struct.set_node_s, ptr %5, i64 0, i32 3
  %6 = load ptr, ptr %right5, align 8
  call void @set_free(ptr noundef nonnull %4, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %7 = load ptr, ptr %set.addr, align 8
  %8 = load ptr, ptr %7, align 8
  call void @set_free(ptr noundef nonnull %7, ptr noundef %8)
  store ptr null, ptr %7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %set.addr, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %path, align 8
  %cmp9.not = icmp eq ptr %10, null
  br i1 %cmp9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %set.addr, align 8
  %path11 = getelementptr inbounds %struct.set_s, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %path11, align 8
  %right12 = getelementptr inbounds %struct.set_node_s, ptr %12, i64 0, i32 3
  %13 = load ptr, ptr %right12, align 8
  call void @set_free(ptr noundef %11, ptr noundef %13)
  %path13 = getelementptr inbounds %struct.set_s, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %path13, align 8
  call void @set_free(ptr noundef %11, ptr noundef %14)
  %15 = load ptr, ptr %set.addr, align 8
  %path14 = getelementptr inbounds %struct.set_s, ptr %15, i64 0, i32 1
  store ptr null, ptr %path14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end8
  %16 = load ptr, ptr %set.addr, align 8
  %node = getelementptr inbounds %struct.set_s, ptr %16, i64 0, i32 2
  %17 = load ptr, ptr %node, align 8
  %cmp16.not = icmp eq ptr %17, null
  br i1 %cmp16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end15
  %18 = load ptr, ptr %set.addr, align 8
  %node18 = getelementptr inbounds %struct.set_s, ptr %18, i64 0, i32 2
  %19 = load ptr, ptr %node18, align 8
  %20 = load ptr, ptr %19, align 8
  call void @set_free(ptr noundef %18, ptr noundef %20)
  %node19 = getelementptr inbounds %struct.set_s, ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %node19, align 8
  %right20 = getelementptr inbounds %struct.set_node_s, ptr %21, i64 0, i32 3
  %22 = load ptr, ptr %right20, align 8
  call void @set_free(ptr noundef %18, ptr noundef %22)
  %23 = load ptr, ptr %set.addr, align 8
  %node21 = getelementptr inbounds %struct.set_s, ptr %23, i64 0, i32 2
  %24 = load ptr, ptr %node21, align 8
  call void @set_free(ptr noundef %23, ptr noundef %24)
  %node22 = getelementptr inbounds %struct.set_s, ptr %23, i64 0, i32 2
  store ptr null, ptr %node22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end15
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_ok(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %0 = load ptr, ptr %set, align 8
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %set.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %2, i64 0, i32 3
  %3 = load ptr, ptr %right, align 8
  %cmp2.not = icmp eq ptr %3, null
  br i1 %cmp2.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %set.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 8
  %cmp4 = icmp eq i8 %6, -119
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %7 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %7
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_start(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %node = getelementptr inbounds %struct.set_s, ptr %set, i64 0, i32 2
  store ptr null, ptr %node, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %set, i64 0, i32 1
  store ptr null, ptr %path, align 8
  store ptr null, ptr %set, align 8
  %call = call ptr @set_node(ptr noundef nonnull %set)
  %0 = load ptr, ptr %set.addr, align 8
  %path1 = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 1
  store ptr %call, ptr %path1, align 8
  %call2 = call ptr @set_node(ptr noundef %0)
  store ptr %call2, ptr %0, align 8
  call void @set_grow(ptr noundef nonnull %0, ptr noundef %call2, i32 noundef 1, i32 noundef 1)
  %1 = load ptr, ptr %0, align 8
  store i8 -119, ptr %1, align 8
  %2 = load ptr, ptr %set.addr, align 8
  %depth = getelementptr inbounds %struct.set_s, ptr %2, i64 0, i32 3
  store i16 0, ptr %depth, align 8
  %gen = getelementptr inbounds %struct.set_s, ptr %2, i64 0, i32 5
  call void @set_uniq(ptr noundef nonnull %gen, ptr noundef %2)
  %ran = getelementptr inbounds %struct.set_s, ptr %2, i64 0, i32 4
  store i64 1, ptr %ran, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @block_init(ptr noundef %block, ptr noundef %list) #0 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  %0 = load ptr, ptr %list, align 8
  %node = getelementptr inbounds %struct.block_t, ptr %block, i64 0, i32 2
  store ptr %0, ptr %node, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %0, i64 0, i32 4
  store ptr %data, ptr %block, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %0, i64 0, i32 2
  %1 = load i64, ptr %filled_in_this_block, align 8
  %2 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %2, i64 0, i32 1
  store i64 %1, ptr %left, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @block_central_name(ptr noundef %block, ptr noundef %set) #0 {
entry:
  %retval = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %set.addr = alloca ptr, align 8
  %flen = alloca i32, align 4
  %xlen = alloca i32, align 4
  %clen = alloca i32, align 4
  %name = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %set, ptr %set.addr, align 8
  store ptr null, ptr %name, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.then36, %entry
  %0 = load ptr, ptr %block.addr, align 8
  %call = call i32 @block_end(ptr noundef %0)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.cond
  %1 = load ptr, ptr %block.addr, align 8
  %call1 = call i64 @block_get2(ptr noundef %1)
  %cmp.not = icmp eq i64 %call1, 19280
  br i1 %cmp.not, label %lor.lhs.false, label %for.end

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %block.addr, align 8
  %call2 = call i64 @block_get2(ptr noundef %2)
  %cmp3.not = icmp eq i64 %call2, 513
  br i1 %cmp3.not, label %if.end5, label %for.end

if.end5:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %block.addr, align 8
  %call6 = call i32 @block_skip(ptr noundef %3, i64 noundef 24)
  %call7 = call i64 @block_get2(ptr noundef %3)
  %conv = trunc i64 %call7 to i32
  store i32 %conv, ptr %flen, align 4
  %call8 = call i64 @block_get2(ptr noundef %3)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %xlen, align 4
  %4 = load ptr, ptr %block.addr, align 8
  %call10 = call i64 @block_get2(ptr noundef %4)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %clen, align 4
  %call12 = call i32 @block_skip(ptr noundef %4, i64 noundef 12)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %for.end, label %if.end16

if.end16:                                         ; preds = %if.end5
  %5 = load ptr, ptr %set.addr, align 8
  %6 = load i32, ptr %flen, align 4
  %add = add i32 %6, 1
  %conv17 = zext i32 %add to i64
  %call18 = call ptr @set_alloc(ptr noundef %5, ptr noundef null, i64 noundef %conv17)
  store ptr %call18, ptr %name, align 8
  %7 = load ptr, ptr %block.addr, align 8
  %conv19 = zext i32 %6 to i64
  %call20 = call i64 @block_read(ptr noundef %7, ptr noundef %call18, i64 noundef %conv19)
  %8 = load i32, ptr %flen, align 4
  %conv21 = zext i32 %8 to i64
  %cmp22 = icmp ult i64 %call20, %conv21
  br i1 %cmp22, label %for.end, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end16
  %9 = load ptr, ptr %block.addr, align 8
  %10 = load i32, ptr %xlen, align 4
  %11 = load i32, ptr %clen, align 4
  %add25 = add i32 %10, %11
  %conv26 = zext i32 %add25 to i64
  %call27 = call i32 @block_skip(ptr noundef %9, i64 noundef %conv26)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %for.end, label %if.end31

if.end31:                                         ; preds = %lor.lhs.false24
  %12 = load ptr, ptr %name, align 8
  %13 = load i32, ptr %flen, align 4
  %conv32 = zext i32 %13 to i64
  %call33 = call ptr @memchr(ptr noundef %12, i32 noundef 0, i64 noundef %conv32) #13
  %cmp34.not = icmp eq ptr %call33, null
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end31
  %14 = load ptr, ptr %set.addr, align 8
  %15 = load ptr, ptr %name, align 8
  call void @set_free(ptr noundef %14, ptr noundef %15)
  br label %for.cond

if.end37:                                         ; preds = %if.end31
  %16 = load ptr, ptr %name, align 8
  %17 = load i32, ptr %flen, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  store ptr %16, ptr %retval, align 8
  br label %return

for.end:                                          ; preds = %if.end16, %lor.lhs.false24, %if.end5, %if.end, %lor.lhs.false
  %18 = load ptr, ptr %set.addr, align 8
  %19 = load ptr, ptr %name, align 8
  call void @set_free(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %block.addr, align 8
  call void @block_stop(ptr noundef %20)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end37, %if.then
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_insert(ptr noundef %set, ptr noundef %key) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %level = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store i32 0, ptr %level, align 4
  %call = call i32 @set_ok(ptr noundef %set)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.set_insert, ptr noundef nonnull @.str.3, i32 noundef 338, ptr noundef nonnull @.str.4) #14
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %key.addr, align 8
  %call2 = call i32 @set_found(ptr noundef %0, ptr noundef %1)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond, label %return

for.cond:                                         ; preds = %cond.end, %cond.end26
  %2 = load ptr, ptr %set.addr, align 8
  %ran = getelementptr inbounds %struct.set_s, ptr %2, i64 0, i32 4
  %3 = load i64, ptr %ran, align 8
  %cmp = icmp eq i64 %3, 1
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.cond
  %4 = load ptr, ptr %set.addr, align 8
  %gen = getelementptr inbounds %struct.set_s, ptr %4, i64 0, i32 5
  %call6 = call i32 @set_rand(ptr noundef nonnull %gen)
  %conv7 = zext i32 %call6 to i64
  %or = or i64 %conv7, 4294967296
  %ran8 = getelementptr inbounds %struct.set_s, ptr %4, i64 0, i32 4
  store i64 %or, ptr %ran8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %for.cond
  %5 = load ptr, ptr %set.addr, align 8
  %ran10 = getelementptr inbounds %struct.set_s, ptr %5, i64 0, i32 4
  %6 = load i64, ptr %ran10, align 8
  %ran12 = getelementptr inbounds %struct.set_s, ptr %5, i64 0, i32 4
  %shr = lshr i64 %6, 1
  store i64 %shr, ptr %ran12, align 8
  %conv111 = and i64 %6, 1
  %tobool13.not = icmp eq i64 %conv111, 0
  br i1 %tobool13.not, label %if.end15, label %for.end

if.end15:                                         ; preds = %if.end9
  %7 = load i32, ptr %level, align 4
  %cmp16 = icmp slt i32 %7, 32767
  br i1 %cmp16, label %cond.end26, label %cond.true24

cond.true24:                                      ; preds = %if.end15
  call void @__assert_rtn(ptr noundef nonnull @__func__.set_insert, ptr noundef nonnull @.str.3, i32 noundef 355, ptr noundef nonnull @.str.6) #14
  unreachable

cond.end26:                                       ; preds = %if.end15
  %8 = load i32, ptr %level, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %level, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end9
  %9 = load i32, ptr %level, align 4
  %10 = load ptr, ptr %set.addr, align 8
  %depth = getelementptr inbounds %struct.set_s, ptr %10, i64 0, i32 3
  %11 = load i16, ptr %depth, align 8
  %conv27 = sext i16 %11 to i32
  %cmp28 = icmp sgt i32 %9, %conv27
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.end
  %12 = load ptr, ptr %set.addr, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %path, align 8
  %14 = load i32, ptr %level, align 4
  %add = add nsw i32 %14, 1
  call void @set_grow(ptr noundef %12, ptr noundef %13, i32 noundef %add, i32 noundef 1)
  %15 = load ptr, ptr %12, align 8
  %add31 = add nsw i32 %14, 1
  call void @set_grow(ptr noundef nonnull %12, ptr noundef %15, i32 noundef %add31, i32 noundef 1)
  %conv32 = trunc i32 %14 to i16
  %16 = load ptr, ptr %set.addr, align 8
  %depth33 = getelementptr inbounds %struct.set_s, ptr %16, i64 0, i32 3
  store i16 %conv32, ptr %depth33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.end
  %17 = load ptr, ptr %set.addr, align 8
  %call35 = call ptr @set_node(ptr noundef %17)
  %node = getelementptr inbounds %struct.set_s, ptr %17, i64 0, i32 2
  store ptr %call35, ptr %node, align 8
  %18 = load ptr, ptr %key.addr, align 8
  store ptr %18, ptr %call35, align 8
  %node38 = getelementptr inbounds %struct.set_s, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %node38, align 8
  %20 = load i32, ptr %level, align 4
  %add39 = add nsw i32 %20, 1
  call void @set_grow(ptr noundef %17, ptr noundef %19, i32 noundef %add39, i32 noundef 0)
  br label %for.cond40

for.cond40:                                       ; preds = %for.body, %if.end34
  %storemerge = phi i32 [ 0, %if.end34 ], [ %inc59, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %21 = load i32, ptr %level, align 4
  %cmp41.not = icmp sgt i32 %storemerge, %21
  br i1 %cmp41.not, label %for.end60, label %for.body

for.body:                                         ; preds = %for.cond40
  %22 = load ptr, ptr %set.addr, align 8
  %path43 = getelementptr inbounds %struct.set_s, ptr %22, i64 0, i32 1
  %23 = load ptr, ptr %path43, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %23, i64 0, i32 3
  %24 = load ptr, ptr %right, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 %idxprom
  %26 = load ptr, ptr %arrayidx, align 8
  %right44 = getelementptr inbounds %struct.set_node_s, ptr %26, i64 0, i32 3
  %27 = load ptr, ptr %right44, align 8
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds ptr, ptr %27, i64 %idxprom45
  %28 = load ptr, ptr %arrayidx46, align 8
  %29 = load ptr, ptr %set.addr, align 8
  %node47 = getelementptr inbounds %struct.set_s, ptr %29, i64 0, i32 2
  %30 = load ptr, ptr %node47, align 8
  %right48 = getelementptr inbounds %struct.set_node_s, ptr %30, i64 0, i32 3
  %31 = load ptr, ptr %right48, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %31, i64 %idxprom49
  store ptr %28, ptr %arrayidx50, align 8
  %33 = load ptr, ptr %set.addr, align 8
  %node51 = getelementptr inbounds %struct.set_s, ptr %33, i64 0, i32 2
  %34 = load ptr, ptr %node51, align 8
  %path52 = getelementptr inbounds %struct.set_s, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %path52, align 8
  %right53 = getelementptr inbounds %struct.set_node_s, ptr %35, i64 0, i32 3
  %36 = load ptr, ptr %right53, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %37 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %36, i64 %idxprom54
  %38 = load ptr, ptr %arrayidx55, align 8
  %right56 = getelementptr inbounds %struct.set_node_s, ptr %38, i64 0, i32 3
  %39 = load ptr, ptr %right56, align 8
  %idxprom57 = sext i32 %37 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %39, i64 %idxprom57
  store ptr %34, ptr %arrayidx58, align 8
  %40 = load i32, ptr %i, align 4
  %inc59 = add nsw i32 %40, 1
  br label %for.cond40, !llvm.loop !6

for.end60:                                        ; preds = %for.cond40
  %41 = load ptr, ptr %set.addr, align 8
  %node61 = getelementptr inbounds %struct.set_s, ptr %41, i64 0, i32 2
  store ptr null, ptr %node61, align 8
  br label %return

return:                                           ; preds = %cond.end, %for.end60
  %storemerge2 = phi i32 [ 0, %for.end60 ], [ 1, %cond.end ]
  ret i32 %storemerge2
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_free(ptr noundef %set, ptr noundef %ptr) #0 {
entry:
  call void @free(ptr noundef %ptr) #13
  ret void
}

declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal ptr @set_alloc(ptr noundef %set, ptr noundef %ptr, i64 noundef %size) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %call = call ptr @realloc(ptr noundef %ptr, i64 noundef %size) #15
  store ptr %call, ptr %mem, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %set.addr, align 8
  %env = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 6
  call void @longjmp(ptr noundef nonnull %env, i32 noundef 12) #16
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mem, align 8
  ret ptr %1
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_found(ptr noundef %set, ptr noundef %key) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %here = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %call = call i32 @set_ok(ptr noundef %set)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef nonnull @__func__.set_found, ptr noundef nonnull @.str.3, i32 noundef 314, ptr noundef nonnull @.str.4) #14
  unreachable

cond.end:                                         ; preds = %entry
  %0 = load ptr, ptr %set.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %head, align 8
  store ptr %1, ptr %here, align 8
  %depth = getelementptr inbounds %struct.set_s, ptr %0, i64 0, i32 3
  %2 = load i16, ptr %depth, align 8
  %conv3 = sext i16 %2 to i32
  store i32 %conv3, ptr %i, align 4
  %3 = load ptr, ptr %set.addr, align 8
  %path = getelementptr inbounds %struct.set_s, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %path, align 8
  %add = add nsw i32 %conv3, 1
  call void @set_grow(ptr noundef %3, ptr noundef %4, i32 noundef %add, i32 noundef 0)
  br label %do.body

do.body:                                          ; preds = %while.end, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %5 = load ptr, ptr %here, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %5, i64 0, i32 3
  %6 = load ptr, ptr %right, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = load ptr, ptr %head, align 8
  %cmp.not = icmp eq ptr %8, %9
  br i1 %cmp.not, label %while.end, label %land.rhs5

land.rhs5:                                        ; preds = %while.cond
  %10 = load ptr, ptr %here, align 8
  %right6 = getelementptr inbounds %struct.set_node_s, ptr %10, i64 0, i32 3
  %11 = load ptr, ptr %right6, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %11, i64 %idxprom7
  %13 = load ptr, ptr %arrayidx8, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %key.addr, align 8
  %call10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %15) #13
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs5
  %16 = load ptr, ptr %here, align 8
  %right14 = getelementptr inbounds %struct.set_node_s, ptr %16, i64 0, i32 3
  %17 = load ptr, ptr %right14, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %17, i64 %idxprom15
  %19 = load ptr, ptr %arrayidx16, align 8
  store ptr %19, ptr %here, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond, %land.rhs5
  %20 = load ptr, ptr %here, align 8
  %21 = load ptr, ptr %set.addr, align 8
  %path17 = getelementptr inbounds %struct.set_s, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %path17, align 8
  %right18 = getelementptr inbounds %struct.set_node_s, ptr %22, i64 0, i32 3
  %23 = load ptr, ptr %right18, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %23, i64 %idxprom19
  store ptr %20, ptr %arrayidx20, align 8
  %25 = load i32, ptr %i, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %i, align 4
  %tobool21.not = icmp eq i32 %25, 0
  br i1 %tobool21.not, label %do.end, label %do.body, !llvm.loop !9

do.end:                                           ; preds = %while.end
  %26 = load ptr, ptr %here, align 8
  %right22 = getelementptr inbounds %struct.set_node_s, ptr %26, i64 0, i32 3
  %27 = load ptr, ptr %right22, align 8
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %here, align 8
  %29 = load ptr, ptr %head, align 8
  %cmp24.not = icmp eq ptr %28, %29
  br i1 %cmp24.not, label %land.end31, label %land.rhs26

land.rhs26:                                       ; preds = %do.end
  %30 = load ptr, ptr %here, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %key.addr, align 8
  %call28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %32) #13
  %cmp29 = icmp eq i32 %call28, 0
  %phi.cast = zext i1 %cmp29 to i32
  br label %land.end31

land.end31:                                       ; preds = %land.rhs26, %do.end
  %33 = phi i32 [ 0, %do.end ], [ %phi.cast, %land.rhs26 ]
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen3(ptr noundef %pathname, i32 noundef %append, ptr noundef %globalcomment, ptr noundef %pzlib_filefunc64_32_def) #0 {
entry:
  %retval = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  %globalcomment.addr = alloca ptr, align 8
  %pzlib_filefunc64_32_def.addr = alloca ptr, align 8
  %ziinit = alloca %struct.zip64_internal, align 8
  %zi = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %pathname, ptr %pathname.addr, align 8
  store i32 %append, ptr %append.addr, align 4
  store ptr %globalcomment, ptr %globalcomment.addr, align 8
  store ptr %pzlib_filefunc64_32_def, ptr %pzlib_filefunc64_32_def.addr, align 8
  store i32 0, ptr %err, align 4
  %zseek32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %ziinit, i64 0, i32 3
  store ptr null, ptr %zseek32_file, align 8
  %ztell32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %ziinit, i64 0, i32 2
  store ptr null, ptr %ztell32_file, align 8
  %cmp = icmp eq ptr %pzlib_filefunc64_32_def, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @fill_fopen64_filefunc(ptr noundef nonnull %ziinit) #13
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load ptr, ptr %pzlib_filefunc64_32_def.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %ziinit, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %pathname.addr, align 8
  %2 = load i32, ptr %append.addr, align 4
  %cmp5 = icmp eq i32 %2, 0
  %cond = select i1 %cmp5, i32 11, i32 7
  %call = call ptr @call_zopen64(ptr noundef nonnull %ziinit, ptr noundef %1, i32 noundef %cond) #13
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 1
  store ptr %call, ptr %filestream, align 8
  %cmp7 = icmp eq ptr %call, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %3 = load i32, ptr %append.addr, align 4
  %cmp10 = icmp eq i32 %3, 1
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end9
  %filestream13 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 1
  %4 = load ptr, ptr %filestream13, align 8
  %call14 = call i64 @call_zseek64(ptr noundef nonnull %ziinit, ptr noundef %4, i64 noundef 0, i32 noundef 2) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9
  %filestream17 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 1
  %5 = load ptr, ptr %filestream17, align 8
  %call18 = call i64 @call_ztell64(ptr noundef nonnull %ziinit, ptr noundef %5) #13
  %begin_pos = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 5
  store i64 %call18, ptr %begin_pos, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 3
  store i32 0, ptr %in_opened_file_inzip, align 8
  %stream_initialised = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 4, i32 1
  store i32 0, ptr %stream_initialised, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 7
  store i64 0, ptr %number_entry, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 6
  store i64 0, ptr %add_position_when_writing_offset, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 2
  call void @init_linkedlist(ptr noundef nonnull %central_dir)
  %set = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %set, i8 0, i64 248, i1 false)
  %call19 = call dereferenceable_or_null(66224) ptr @malloc(i64 noundef 66224) #17
  store ptr %call19, ptr %zi, align 8
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end15
  %zclose_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %ziinit, i64 0, i32 5
  %6 = load ptr, ptr %zclose_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %ziinit, i64 0, i32 7
  %7 = load ptr, ptr %opaque, align 8
  %filestream26 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 1
  %8 = load ptr, ptr %filestream26, align 8
  %call27 = call i32 %6(ptr noundef %7, ptr noundef %8) #13
  store ptr null, ptr %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.end15
  %globalcomment29 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 8
  store ptr null, ptr %globalcomment29, align 8
  %9 = load i32, ptr %append.addr, align 4
  %cmp30 = icmp eq i32 %9, 2
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  %call32 = call i32 @LoadCentralDirectoryRecord(ptr noundef nonnull %ziinit)
  store i32 %call32, ptr %err, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28
  %10 = load ptr, ptr %globalcomment.addr, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end33
  %globalcomment35 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 8
  %11 = load ptr, ptr %globalcomment35, align 8
  %12 = load ptr, ptr %globalcomment.addr, align 8
  store ptr %11, ptr %12, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end33
  %13 = load i32, ptr %err, align 4
  %cmp37.not = icmp eq i32 %13, 0
  br i1 %cmp37.not, label %if.else40, label %if.then38

if.then38:                                        ; preds = %if.end36
  %globalcomment39 = getelementptr inbounds %struct.zip64_internal, ptr %ziinit, i64 0, i32 8
  %14 = load ptr, ptr %globalcomment39, align 8
  call void @free(ptr noundef %14) #13
  %15 = load ptr, ptr %zi, align 8
  call void @free(ptr noundef %15) #13
  store ptr null, ptr %retval, align 8
  br label %return

if.else40:                                        ; preds = %if.end36
  %16 = load ptr, ptr %zi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(66224) %16, ptr noundef nonnull align 8 dereferenceable(66224) %ziinit, i64 66224, i1 false)
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else40, %if.then38, %if.then21, %if.then8
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

declare void @fill_fopen64_filefunc(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @call_zopen64(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @call_zseek64(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @call_ztell64(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @init_linkedlist(ptr noundef %ll) #0 {
entry:
  %last_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %ll, i64 0, i32 1
  store ptr null, ptr %last_block, align 8
  store ptr null, ptr %ll, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #7

; Function Attrs: nounwind ssp uwtable
define internal i32 @LoadCentralDirectoryRecord(ptr noundef %pziinit) #0 {
entry:
  %pziinit.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %byte_before_the_zipfile = alloca i64, align 8
  %size_central_dir = alloca i64, align 8
  %offset_central_dir = alloca i64, align 8
  %central_pos = alloca i64, align 8
  %uL = alloca i64, align 8
  %number_disk = alloca i64, align 8
  %number_disk_with_CD = alloca i64, align 8
  %number_entry = alloca i64, align 8
  %number_entry_CD = alloca i64, align 8
  %VersionMadeBy = alloca i64, align 8
  %VersionNeeded = alloca i64, align 8
  %size_comment = alloca i64, align 8
  %hasZIP64Record = alloca i32, align 4
  %sizeEndOfCentralDirectory = alloca i64, align 8
  %size_central_dir_to_read = alloca i64, align 8
  %buf_read = alloca ptr, align 8
  %read_this = alloca i64, align 8
  store ptr %pziinit, ptr %pziinit.addr, align 8
  store i32 0, ptr %err, align 4
  store i32 0, ptr %hasZIP64Record, align 4
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %pziinit, i64 0, i32 1
  %0 = load ptr, ptr %filestream, align 8
  %call = call i64 @zip64local_SearchCentralDir64(ptr noundef %pziinit, ptr noundef %0)
  store i64 %call, ptr %central_pos, align 8
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %hasZIP64Record, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %central_pos, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %pziinit.addr, align 8
  %filestream4 = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %filestream4, align 8
  %call5 = call i64 @zip64local_SearchCentralDir(ptr noundef %2, ptr noundef %3)
  store i64 %call5, ptr %central_pos, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2, %if.then
  %4 = load i32, ptr %hasZIP64Record, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else80, label %if.then7

if.then7:                                         ; preds = %if.end6
  %5 = load ptr, ptr %pziinit.addr, align 8
  %filestream9 = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %filestream9, align 8
  %7 = load i64, ptr %central_pos, align 8
  %call10 = call i64 @call_zseek64(ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef 0) #13
  %cmp11.not = icmp eq i64 %call10, 0
  br i1 %cmp11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then7
  store i32 -1, ptr %err, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then7
  %8 = load ptr, ptr %pziinit.addr, align 8
  %filestream15 = getelementptr inbounds %struct.zip64_internal, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %filestream15, align 8
  %call16 = call i32 @zip64local_getLong(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %uL)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end13
  store i32 -1, ptr %err, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13
  %10 = load ptr, ptr %pziinit.addr, align 8
  %filestream21 = getelementptr inbounds %struct.zip64_internal, ptr %10, i64 0, i32 1
  %11 = load ptr, ptr %filestream21, align 8
  %call22 = call i32 @zip64local_getLong64(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %sizeEndOfCentralDirectory)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end19
  store i32 -1, ptr %err, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19
  %12 = load ptr, ptr %pziinit.addr, align 8
  %filestream27 = getelementptr inbounds %struct.zip64_internal, ptr %12, i64 0, i32 1
  %13 = load ptr, ptr %filestream27, align 8
  %call28 = call i32 @zip64local_getShort(ptr noundef %12, ptr noundef %13, ptr noundef nonnull %VersionMadeBy)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end25
  store i32 -1, ptr %err, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end25
  %14 = load ptr, ptr %pziinit.addr, align 8
  %filestream33 = getelementptr inbounds %struct.zip64_internal, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %filestream33, align 8
  %call34 = call i32 @zip64local_getShort(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %VersionNeeded)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end31
  store i32 -1, ptr %err, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end31
  %16 = load ptr, ptr %pziinit.addr, align 8
  %filestream39 = getelementptr inbounds %struct.zip64_internal, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %filestream39, align 8
  %call40 = call i32 @zip64local_getLong(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %number_disk)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end37
  store i32 -1, ptr %err, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end37
  %18 = load ptr, ptr %pziinit.addr, align 8
  %filestream45 = getelementptr inbounds %struct.zip64_internal, ptr %18, i64 0, i32 1
  %19 = load ptr, ptr %filestream45, align 8
  %call46 = call i32 @zip64local_getLong(ptr noundef %18, ptr noundef %19, ptr noundef nonnull %number_disk_with_CD)
  %cmp47.not = icmp eq i32 %call46, 0
  br i1 %cmp47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end43
  store i32 -1, ptr %err, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end43
  %20 = load ptr, ptr %pziinit.addr, align 8
  %filestream51 = getelementptr inbounds %struct.zip64_internal, ptr %20, i64 0, i32 1
  %21 = load ptr, ptr %filestream51, align 8
  %call52 = call i32 @zip64local_getLong64(ptr noundef %20, ptr noundef %21, ptr noundef nonnull %number_entry)
  %cmp53.not = icmp eq i32 %call52, 0
  br i1 %cmp53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end49
  store i32 -1, ptr %err, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end49
  %22 = load ptr, ptr %pziinit.addr, align 8
  %filestream57 = getelementptr inbounds %struct.zip64_internal, ptr %22, i64 0, i32 1
  %23 = load ptr, ptr %filestream57, align 8
  %call58 = call i32 @zip64local_getLong64(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %number_entry_CD)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end55
  store i32 -1, ptr %err, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end55
  %24 = load i64, ptr %number_entry_CD, align 8
  %25 = load i64, ptr %number_entry, align 8
  %cmp62.not = icmp eq i64 %24, %25
  %26 = load i64, ptr %number_disk_with_CD, align 8
  %cmp63.not = icmp eq i64 %26, 0
  %or.cond = select i1 %cmp62.not, i1 %cmp63.not, i1 false
  %27 = load i64, ptr %number_disk, align 8
  %cmp65.not = icmp eq i64 %27, 0
  %or.cond1 = select i1 %or.cond, i1 %cmp65.not, i1 false
  br i1 %or.cond1, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end61
  store i32 -103, ptr %err, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end61, %if.then66
  %28 = load ptr, ptr %pziinit.addr, align 8
  %filestream69 = getelementptr inbounds %struct.zip64_internal, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %filestream69, align 8
  %call70 = call i32 @zip64local_getLong64(ptr noundef %28, ptr noundef %29, ptr noundef nonnull %size_central_dir)
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.end67
  store i32 -1, ptr %err, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end67
  %30 = load ptr, ptr %pziinit.addr, align 8
  %filestream75 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 1
  %31 = load ptr, ptr %filestream75, align 8
  %call76 = call i32 @zip64local_getLong64(ptr noundef %30, ptr noundef %31, ptr noundef nonnull %offset_central_dir)
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end73
  store i32 -1, ptr %err, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end73
  store i64 0, ptr %size_comment, align 8
  br label %if.end146

if.else80:                                        ; preds = %if.end6
  %32 = load ptr, ptr %pziinit.addr, align 8
  %filestream82 = getelementptr inbounds %struct.zip64_internal, ptr %32, i64 0, i32 1
  %33 = load ptr, ptr %filestream82, align 8
  %34 = load i64, ptr %central_pos, align 8
  %call83 = call i64 @call_zseek64(ptr noundef %32, ptr noundef %33, i64 noundef %34, i32 noundef 0) #13
  %cmp84.not = icmp eq i64 %call83, 0
  br i1 %cmp84.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.else80
  store i32 -1, ptr %err, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.else80
  %35 = load ptr, ptr %pziinit.addr, align 8
  %filestream88 = getelementptr inbounds %struct.zip64_internal, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %filestream88, align 8
  %call89 = call i32 @zip64local_getLong(ptr noundef %35, ptr noundef %36, ptr noundef nonnull %uL)
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end86
  store i32 -1, ptr %err, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end86
  %37 = load ptr, ptr %pziinit.addr, align 8
  %filestream94 = getelementptr inbounds %struct.zip64_internal, ptr %37, i64 0, i32 1
  %38 = load ptr, ptr %filestream94, align 8
  %call95 = call i32 @zip64local_getShort(ptr noundef %37, ptr noundef %38, ptr noundef nonnull %number_disk)
  %cmp96.not = icmp eq i32 %call95, 0
  br i1 %cmp96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end92
  store i32 -1, ptr %err, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end92
  %39 = load ptr, ptr %pziinit.addr, align 8
  %filestream100 = getelementptr inbounds %struct.zip64_internal, ptr %39, i64 0, i32 1
  %40 = load ptr, ptr %filestream100, align 8
  %call101 = call i32 @zip64local_getShort(ptr noundef %39, ptr noundef %40, ptr noundef nonnull %number_disk_with_CD)
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end98
  store i32 -1, ptr %err, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end98
  store i64 0, ptr %number_entry, align 8
  %41 = load ptr, ptr %pziinit.addr, align 8
  %filestream106 = getelementptr inbounds %struct.zip64_internal, ptr %41, i64 0, i32 1
  %42 = load ptr, ptr %filestream106, align 8
  %call107 = call i32 @zip64local_getShort(ptr noundef %41, ptr noundef %42, ptr noundef nonnull %uL)
  %cmp108.not = icmp eq i32 %call107, 0
  br i1 %cmp108.not, label %if.else110, label %if.then109

if.then109:                                       ; preds = %if.end104
  store i32 -1, ptr %err, align 4
  br label %if.end111

if.else110:                                       ; preds = %if.end104
  %43 = load i64, ptr %uL, align 8
  store i64 %43, ptr %number_entry, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.else110, %if.then109
  store i64 0, ptr %number_entry_CD, align 8
  %44 = load ptr, ptr %pziinit.addr, align 8
  %filestream113 = getelementptr inbounds %struct.zip64_internal, ptr %44, i64 0, i32 1
  %45 = load ptr, ptr %filestream113, align 8
  %call114 = call i32 @zip64local_getShort(ptr noundef %44, ptr noundef %45, ptr noundef nonnull %uL)
  %cmp115.not = icmp eq i32 %call114, 0
  br i1 %cmp115.not, label %if.else117, label %if.then116

if.then116:                                       ; preds = %if.end111
  store i32 -1, ptr %err, align 4
  br label %if.end118

if.else117:                                       ; preds = %if.end111
  %46 = load i64, ptr %uL, align 8
  store i64 %46, ptr %number_entry_CD, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.then116
  %47 = load i64, ptr %number_entry_CD, align 8
  %48 = load i64, ptr %number_entry, align 8
  %cmp119.not = icmp eq i64 %47, %48
  %49 = load i64, ptr %number_disk_with_CD, align 8
  %cmp121.not = icmp eq i64 %49, 0
  %or.cond2 = select i1 %cmp119.not, i1 %cmp121.not, i1 false
  %50 = load i64, ptr %number_disk, align 8
  %cmp123.not = icmp eq i64 %50, 0
  %or.cond3 = select i1 %or.cond2, i1 %cmp123.not, i1 false
  br i1 %or.cond3, label %if.end125, label %if.then124

if.then124:                                       ; preds = %if.end118
  store i32 -103, ptr %err, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.end118, %if.then124
  store i64 0, ptr %size_central_dir, align 8
  %51 = load ptr, ptr %pziinit.addr, align 8
  %filestream127 = getelementptr inbounds %struct.zip64_internal, ptr %51, i64 0, i32 1
  %52 = load ptr, ptr %filestream127, align 8
  %call128 = call i32 @zip64local_getLong(ptr noundef %51, ptr noundef %52, ptr noundef nonnull %uL)
  %cmp129.not = icmp eq i32 %call128, 0
  br i1 %cmp129.not, label %if.else131, label %if.then130

if.then130:                                       ; preds = %if.end125
  store i32 -1, ptr %err, align 4
  br label %if.end132

if.else131:                                       ; preds = %if.end125
  %53 = load i64, ptr %uL, align 8
  store i64 %53, ptr %size_central_dir, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.else131, %if.then130
  store i64 0, ptr %offset_central_dir, align 8
  %54 = load ptr, ptr %pziinit.addr, align 8
  %filestream134 = getelementptr inbounds %struct.zip64_internal, ptr %54, i64 0, i32 1
  %55 = load ptr, ptr %filestream134, align 8
  %call135 = call i32 @zip64local_getLong(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %uL)
  %cmp136.not = icmp eq i32 %call135, 0
  br i1 %cmp136.not, label %if.else138, label %if.then137

if.then137:                                       ; preds = %if.end132
  store i32 -1, ptr %err, align 4
  br label %if.end139

if.else138:                                       ; preds = %if.end132
  %56 = load i64, ptr %uL, align 8
  store i64 %56, ptr %offset_central_dir, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then137
  %57 = load ptr, ptr %pziinit.addr, align 8
  %filestream141 = getelementptr inbounds %struct.zip64_internal, ptr %57, i64 0, i32 1
  %58 = load ptr, ptr %filestream141, align 8
  %call142 = call i32 @zip64local_getShort(ptr noundef %57, ptr noundef %58, ptr noundef nonnull %size_comment)
  %cmp143.not = icmp eq i32 %call142, 0
  br i1 %cmp143.not, label %if.end146, label %if.then144

if.then144:                                       ; preds = %if.end139
  store i32 -1, ptr %err, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.end139, %if.then144, %if.end79
  %59 = load i64, ptr %central_pos, align 8
  %60 = load i64, ptr %offset_central_dir, align 8
  %61 = load i64, ptr %size_central_dir, align 8
  %add = add i64 %60, %61
  %cmp147 = icmp ult i64 %59, %add
  %62 = load i32, ptr %err, align 4
  %cmp148 = icmp eq i32 %62, 0
  %or.cond4 = select i1 %cmp147, i1 %cmp148, i1 false
  %spec.store.select = select i1 %or.cond4, i32 -103, i32 %62
  store i32 %spec.store.select, ptr %err, align 4
  %63 = load i32, ptr %err, align 4
  %cmp151.not = icmp eq i32 %63, 0
  br i1 %cmp151.not, label %if.end158, label %if.then152

if.then152:                                       ; preds = %if.end146
  %64 = load ptr, ptr %pziinit.addr, align 8
  %zclose_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %64, i64 0, i32 5
  %65 = load ptr, ptr %zclose_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %64, i64 0, i32 7
  %66 = load ptr, ptr %opaque, align 8
  %filestream156 = getelementptr inbounds %struct.zip64_internal, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %filestream156, align 8
  %call157 = call i32 %65(ptr noundef %66, ptr noundef %67) #13
  br label %return

if.end158:                                        ; preds = %if.end146
  %68 = load i64, ptr %size_comment, align 8
  %cmp159.not = icmp eq i64 %68, 0
  br i1 %cmp159.not, label %if.end176, label %if.then160

if.then160:                                       ; preds = %if.end158
  %69 = load i64, ptr %size_comment, align 8
  %add161 = add i64 %69, 1
  %call162 = call ptr @malloc(i64 noundef %add161) #17
  %70 = load ptr, ptr %pziinit.addr, align 8
  %globalcomment = getelementptr inbounds %struct.zip64_internal, ptr %70, i64 0, i32 8
  store ptr %call162, ptr %globalcomment, align 8
  %tobool164.not = icmp eq ptr %call162, null
  br i1 %tobool164.not, label %if.end176, label %if.then165

if.then165:                                       ; preds = %if.then160
  %71 = load ptr, ptr %pziinit.addr, align 8
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %71, i64 0, i32 1
  %72 = load ptr, ptr %zread_file, align 8
  %opaque170 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %71, i64 0, i32 7
  %73 = load ptr, ptr %opaque170, align 8
  %filestream171 = getelementptr inbounds %struct.zip64_internal, ptr %71, i64 0, i32 1
  %74 = load ptr, ptr %filestream171, align 8
  %75 = load ptr, ptr %pziinit.addr, align 8
  %globalcomment172 = getelementptr inbounds %struct.zip64_internal, ptr %75, i64 0, i32 8
  %76 = load ptr, ptr %globalcomment172, align 8
  %77 = load i64, ptr %size_comment, align 8
  %call173 = call i64 %72(ptr noundef %73, ptr noundef %74, ptr noundef %76, i64 noundef %77) #13
  store i64 %call173, ptr %size_comment, align 8
  %globalcomment174 = getelementptr inbounds %struct.zip64_internal, ptr %75, i64 0, i32 8
  %78 = load ptr, ptr %globalcomment174, align 8
  %arrayidx = getelementptr inbounds i8, ptr %78, i64 %call173
  store i8 0, ptr %arrayidx, align 1
  br label %if.end176

if.end176:                                        ; preds = %if.then160, %if.then165, %if.end158
  %79 = load i64, ptr %central_pos, align 8
  %80 = load i64, ptr %offset_central_dir, align 8
  %81 = load i64, ptr %size_central_dir, align 8
  %add177 = add i64 %80, %81
  %sub = sub i64 %79, %add177
  store i64 %sub, ptr %byte_before_the_zipfile, align 8
  %82 = load ptr, ptr %pziinit.addr, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %82, i64 0, i32 6
  store i64 %sub, ptr %add_position_when_writing_offset, align 8
  %83 = load i64, ptr %size_central_dir, align 8
  store i64 %83, ptr %size_central_dir_to_read, align 8
  %call178 = call dereferenceable_or_null(4080) ptr @malloc(i64 noundef 4080) #17
  store ptr %call178, ptr %buf_read, align 8
  %84 = load ptr, ptr %pziinit.addr, align 8
  %filestream180 = getelementptr inbounds %struct.zip64_internal, ptr %84, i64 0, i32 1
  %85 = load ptr, ptr %filestream180, align 8
  %86 = load i64, ptr %offset_central_dir, align 8
  %87 = load i64, ptr %byte_before_the_zipfile, align 8
  %add181 = add i64 %86, %87
  %call182 = call i64 @call_zseek64(ptr noundef %84, ptr noundef %85, i64 noundef %add181, i32 noundef 0) #13
  %cmp183.not = icmp eq i64 %call182, 0
  br i1 %cmp183.not, label %if.end185, label %if.then184

if.then184:                                       ; preds = %if.end176
  store i32 -1, ptr %err, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.end176
  br label %while.cond

while.cond:                                       ; preds = %if.end205, %if.end185
  %88 = load i64, ptr %size_central_dir_to_read, align 8
  %cmp186.not = icmp eq i64 %88, 0
  %89 = load i32, ptr %err, align 4
  %cmp187 = icmp eq i32 %89, 0
  %90 = select i1 %cmp186.not, i1 false, i1 %cmp187
  br i1 %90, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 4080, ptr %read_this, align 8
  %91 = load i64, ptr %size_central_dir_to_read, align 8
  %cmp188 = icmp ult i64 %91, 4080
  br i1 %cmp188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %while.body
  %92 = load i64, ptr %size_central_dir_to_read, align 8
  store i64 %92, ptr %read_this, align 8
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %while.body
  %93 = load ptr, ptr %pziinit.addr, align 8
  %zread_file193 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %93, i64 0, i32 1
  %94 = load ptr, ptr %zread_file193, align 8
  %opaque196 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %93, i64 0, i32 7
  %95 = load ptr, ptr %opaque196, align 8
  %filestream197 = getelementptr inbounds %struct.zip64_internal, ptr %93, i64 0, i32 1
  %96 = load ptr, ptr %filestream197, align 8
  %97 = load ptr, ptr %buf_read, align 8
  %98 = load i64, ptr %read_this, align 8
  %call198 = call i64 %94(ptr noundef %95, ptr noundef %96, ptr noundef %97, i64 noundef %98) #13
  %cmp199.not = icmp eq i64 %call198, %98
  br i1 %cmp199.not, label %if.end201, label %if.then200

if.then200:                                       ; preds = %if.end190
  store i32 -1, ptr %err, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end190
  %99 = load i32, ptr %err, align 4
  %cmp202 = icmp eq i32 %99, 0
  br i1 %cmp202, label %if.then203, label %if.end205

if.then203:                                       ; preds = %if.end201
  %100 = load ptr, ptr %pziinit.addr, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %100, i64 0, i32 2
  %101 = load ptr, ptr %buf_read, align 8
  %102 = load i64, ptr %read_this, align 8
  %call204 = call i32 @add_data_in_datablock(ptr noundef nonnull %central_dir, ptr noundef %101, i64 noundef %102)
  store i32 %call204, ptr %err, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end201
  %103 = load i64, ptr %read_this, align 8
  %104 = load i64, ptr %size_central_dir_to_read, align 8
  %sub206 = sub i64 %104, %103
  store i64 %sub206, ptr %size_central_dir_to_read, align 8
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %105 = load ptr, ptr %buf_read, align 8
  call void @free(ptr noundef %105) #13
  %106 = load i64, ptr %byte_before_the_zipfile, align 8
  %107 = load ptr, ptr %pziinit.addr, align 8
  %begin_pos = getelementptr inbounds %struct.zip64_internal, ptr %107, i64 0, i32 5
  store i64 %106, ptr %begin_pos, align 8
  %108 = load i64, ptr %number_entry_CD, align 8
  %number_entry207 = getelementptr inbounds %struct.zip64_internal, ptr %107, i64 0, i32 7
  store i64 %108, ptr %number_entry207, align 8
  %filestream209 = getelementptr inbounds %struct.zip64_internal, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %filestream209, align 8
  %110 = load i64, ptr %offset_central_dir, align 8
  %111 = load i64, ptr %byte_before_the_zipfile, align 8
  %add210 = add i64 %110, %111
  %call211 = call i64 @call_zseek64(ptr noundef %107, ptr noundef %109, i64 noundef %add210, i32 noundef 0) #13
  %cmp212.not = icmp eq i64 %call211, 0
  br i1 %cmp212.not, label %if.end214, label %if.then213

if.then213:                                       ; preds = %while.end
  store i32 -1, ptr %err, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %while.end
  %112 = load i32, ptr %err, align 4
  br label %return

return:                                           ; preds = %if.end214, %if.then152
  %storemerge = phi i32 [ %112, %if.end214 ], [ -1, %if.then152 ]
  ret i32 %storemerge
}

declare void @free(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen2(ptr noundef %pathname, i32 noundef %append, ptr noundef %globalcomment, ptr noundef %pzlib_filefunc32_def) #0 {
entry:
  %pathname.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  %globalcomment.addr = alloca ptr, align 8
  %pzlib_filefunc32_def.addr = alloca ptr, align 8
  %zlib_filefunc64_32_def_fill = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  store i32 %append, ptr %append.addr, align 4
  store ptr %globalcomment, ptr %globalcomment.addr, align 8
  store ptr %pzlib_filefunc32_def, ptr %pzlib_filefunc32_def.addr, align 8
  %cmp.not = icmp eq ptr %pzlib_filefunc32_def, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %pzlib_filefunc32_def.addr, align 8
  call void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef nonnull %zlib_filefunc64_32_def_fill, ptr noundef %0) #13
  %1 = load ptr, ptr %pathname.addr, align 8
  %2 = load i32, ptr %append.addr, align 4
  %3 = load ptr, ptr %globalcomment.addr, align 8
  %call = call ptr @zipOpen3(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %zlib_filefunc64_32_def_fill)
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pathname.addr, align 8
  %5 = load i32, ptr %append.addr, align 4
  %6 = load ptr, ptr %globalcomment.addr, align 8
  %call1 = call ptr @zipOpen3(ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef null)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %call1, %if.else ], [ %call, %if.then ]
  ret ptr %storemerge
}

declare void @fill_zlib_filefunc64_32_def_from_filefunc32(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen2_64(ptr noundef %pathname, i32 noundef %append, ptr noundef %globalcomment, ptr noundef %pzlib_filefunc_def) #0 {
entry:
  %pathname.addr = alloca ptr, align 8
  %append.addr = alloca i32, align 4
  %globalcomment.addr = alloca ptr, align 8
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %zlib_filefunc64_32_def_fill = alloca %struct.zlib_filefunc64_32_def_s, align 8
  store ptr %pathname, ptr %pathname.addr, align 8
  store i32 %append, ptr %append.addr, align 4
  store ptr %globalcomment, ptr %globalcomment.addr, align 8
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  %cmp.not = icmp eq ptr %pzlib_filefunc_def, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %zlib_filefunc64_32_def_fill, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  %zopen32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %zlib_filefunc64_32_def_fill, i64 0, i32 1
  store ptr null, ptr %zopen32_file, align 8
  %ztell32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %zlib_filefunc64_32_def_fill, i64 0, i32 2
  store ptr null, ptr %ztell32_file, align 8
  %zseek32_file = getelementptr inbounds %struct.zlib_filefunc64_32_def_s, ptr %zlib_filefunc64_32_def_fill, i64 0, i32 3
  store ptr null, ptr %zseek32_file, align 8
  %1 = load ptr, ptr %pathname.addr, align 8
  %2 = load i32, ptr %append.addr, align 4
  %3 = load ptr, ptr %globalcomment.addr, align 8
  %call = call ptr @zipOpen3(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %zlib_filefunc64_32_def_fill)
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pathname.addr, align 8
  %5 = load i32, ptr %append.addr, align 4
  %6 = load ptr, ptr %globalcomment.addr, align 8
  %call1 = call ptr @zipOpen3(ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef null)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi ptr [ %call1, %if.else ], [ %call, %if.then ]
  ret ptr %storemerge
}

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen(ptr noundef %pathname, i32 noundef %append) #0 {
entry:
  %call = call ptr @zipOpen3(ptr noundef %pathname, i32 noundef %append, ptr noundef null, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define ptr @zipOpen64(ptr noundef %pathname, i32 noundef %append) #0 {
entry:
  %call = call ptr @zipOpen3(ptr noundef %pathname, i32 noundef %append, ptr noundef null, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip4_64(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level, i32 noundef %raw, i32 noundef %windowBits, i32 noundef %memLevel, i32 noundef %strategy, ptr noundef %password, i64 noundef %crcForCrypting, i64 noundef %versionMadeBy, i64 noundef %flagBase, i32 noundef %zip64) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %windowBits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  %crcForCrypting.addr = alloca i64, align 8
  %versionMadeBy.addr = alloca i64, align 8
  %flagBase.addr = alloca i64, align 8
  %zip64.addr = alloca i32, align 4
  %zi = alloca ptr, align 8
  %size_filename = alloca i32, align 4
  %size_comment = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %bufHead = alloca [12 x i8], align 1
  %sizeHead = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %raw, ptr %raw.addr, align 4
  store i32 %windowBits, ptr %windowBits.addr, align 4
  store i32 %memLevel, ptr %memLevel.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  store i64 %crcForCrypting, ptr %crcForCrypting.addr, align 8
  store i64 %versionMadeBy, ptr %versionMadeBy.addr, align 8
  store i64 %flagBase, ptr %flagBase.addr, align 8
  store i32 %zip64, ptr %zip64.addr, align 4
  store i32 0, ptr %err, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %method.addr, align 4
  %cmp1.not = icmp eq i32 %1, 0
  %2 = load i32, ptr %method.addr, align 4
  %cmp2.not = icmp eq i32 %2, 8
  %or.cond = select i1 %cmp1.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 -102, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %filename.addr, align 8
  %cmp5.not = icmp eq ptr %3, null
  br i1 %cmp5.not, label %if.end9, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end4
  %4 = load ptr, ptr %filename.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #13
  %cmp7 = icmp ugt i64 %call, 65535
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  store i32 -102, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true6, %if.end4
  %5 = load ptr, ptr %comment.addr, align 8
  %cmp10.not = icmp eq ptr %5, null
  br i1 %cmp10.not, label %if.end15, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end9
  %6 = load ptr, ptr %comment.addr, align 8
  %call12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #13
  %cmp13 = icmp ugt i64 %call12, 65535
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  store i32 -102, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true11, %if.end9
  %7 = load i32, ptr %size_extrafield_local.addr, align 4
  %cmp16 = icmp ugt i32 %7, 65535
  %8 = load i32, ptr %size_extrafield_global.addr, align 4
  %cmp17 = icmp ugt i32 %8, 65535
  %or.cond4 = select i1 %cmp16, i1 true, i1 %cmp17
  br i1 %or.cond4, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store i32 -102, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %9 = load ptr, ptr %file.addr, align 8
  store ptr %9, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 3
  %10 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp20 = icmp eq i32 %10, 1
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end19
  %11 = load ptr, ptr %file.addr, align 8
  %call22 = call i32 @zipCloseFileInZip(ptr noundef %11)
  store i32 %call22, ptr %err, align 4
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.then21
  %12 = load i32, ptr %err, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then21, %if.end19
  %13 = load ptr, ptr %filename.addr, align 8
  %cmp27 = icmp eq ptr %13, null
  %spec.store.select = select i1 %cmp27, ptr @.str, ptr %13
  store ptr %spec.store.select, ptr %filename.addr, align 8
  %14 = load ptr, ptr %comment.addr, align 8
  %cmp30 = icmp eq ptr %14, null
  br i1 %cmp30, label %if.end33, label %if.else

if.else:                                          ; preds = %if.end26
  %15 = load ptr, ptr %comment.addr, align 8
  %call32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #13
  %conv = trunc i64 %call32 to i32
  br label %if.end33

if.end33:                                         ; preds = %if.end26, %if.else
  %storemerge = phi i32 [ %conv, %if.else ], [ 0, %if.end26 ]
  store i32 %storemerge, ptr %size_comment, align 4
  %16 = load ptr, ptr %filename.addr, align 8
  %call34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #13
  %conv35 = trunc i64 %call34 to i32
  store i32 %conv35, ptr %size_filename, align 4
  %17 = load ptr, ptr %zipfi.addr, align 8
  %cmp36 = icmp eq ptr %17, null
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.end33
  %18 = load ptr, ptr %zi, align 8
  %dosDate = getelementptr inbounds %struct.zip64_internal, ptr %18, i64 0, i32 4, i32 12
  store i64 0, ptr %dosDate, align 8
  br label %if.end52

if.else39:                                        ; preds = %if.end33
  %19 = load ptr, ptr %zipfi.addr, align 8
  %dosDate40 = getelementptr inbounds %struct.zip_fileinfo, ptr %19, i64 0, i32 1
  %20 = load i64, ptr %dosDate40, align 8
  %cmp41.not = icmp eq i64 %20, 0
  br i1 %cmp41.not, label %if.else47, label %if.then43

if.then43:                                        ; preds = %if.else39
  %21 = load ptr, ptr %zipfi.addr, align 8
  %dosDate44 = getelementptr inbounds %struct.zip_fileinfo, ptr %21, i64 0, i32 1
  %22 = load i64, ptr %dosDate44, align 8
  %23 = load ptr, ptr %zi, align 8
  %dosDate46 = getelementptr inbounds %struct.zip64_internal, ptr %23, i64 0, i32 4, i32 12
  store i64 %22, ptr %dosDate46, align 8
  br label %if.end52

if.else47:                                        ; preds = %if.else39
  %24 = load ptr, ptr %zipfi.addr, align 8
  %call48 = call i64 @zip64local_TmzDateToDosDate(ptr noundef %24)
  %25 = load ptr, ptr %zi, align 8
  %dosDate50 = getelementptr inbounds %struct.zip64_internal, ptr %25, i64 0, i32 4, i32 12
  store i64 %call48, ptr %dosDate50, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then43, %if.else47, %if.then38
  %26 = load i64, ptr %flagBase.addr, align 8
  %27 = load ptr, ptr %zi, align 8
  %flag = getelementptr inbounds %struct.zip64_internal, ptr %27, i64 0, i32 4, i32 8
  store i64 %26, ptr %flag, align 8
  %28 = load i32, ptr %level.addr, align 4
  %cmp54 = icmp eq i32 %28, 8
  %29 = load i32, ptr %level.addr, align 4
  %cmp57 = icmp eq i32 %29, 9
  %or.cond5 = select i1 %cmp54, i1 true, i1 %cmp57
  br i1 %or.cond5, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end52
  %30 = load ptr, ptr %zi, align 8
  %flag61 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 4, i32 8
  %31 = load i64, ptr %flag61, align 8
  %or = or i64 %31, 2
  store i64 %or, ptr %flag61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end52, %if.then59
  %32 = load i32, ptr %level.addr, align 4
  %cmp63 = icmp eq i32 %32, 2
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end62
  %33 = load ptr, ptr %zi, align 8
  %flag67 = getelementptr inbounds %struct.zip64_internal, ptr %33, i64 0, i32 4, i32 8
  %34 = load i64, ptr %flag67, align 8
  %or68 = or i64 %34, 4
  store i64 %or68, ptr %flag67, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end62
  %35 = load i32, ptr %level.addr, align 4
  %cmp70 = icmp eq i32 %35, 1
  br i1 %cmp70, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.end69
  %36 = load ptr, ptr %zi, align 8
  %flag74 = getelementptr inbounds %struct.zip64_internal, ptr %36, i64 0, i32 4, i32 8
  %37 = load i64, ptr %flag74, align 8
  %or75 = or i64 %37, 6
  store i64 %or75, ptr %flag74, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end69
  %38 = load ptr, ptr %password.addr, align 8
  %cmp77.not = icmp eq ptr %38, null
  br i1 %cmp77.not, label %if.end83, label %if.then79

if.then79:                                        ; preds = %if.end76
  %39 = load ptr, ptr %zi, align 8
  %flag81 = getelementptr inbounds %struct.zip64_internal, ptr %39, i64 0, i32 4, i32 8
  %40 = load i64, ptr %flag81, align 8
  %or82 = or i64 %40, 1
  store i64 %or82, ptr %flag81, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end76
  %41 = load ptr, ptr %filename.addr, align 8
  %42 = load i32, ptr %size_filename, align 4
  %conv84 = zext i32 %42 to i64
  %call85 = call i32 @isutf8(ptr noundef %41, i64 noundef %conv84)
  %tobool.not = icmp eq i32 %call85, 0
  br i1 %tobool.not, label %if.end97, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.end83
  %43 = load i32, ptr %size_comment, align 4
  %cmp87 = icmp eq i32 %43, 0
  br i1 %cmp87, label %if.then93, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %land.lhs.true86
  %44 = load ptr, ptr %comment.addr, align 8
  %45 = load i32, ptr %size_comment, align 4
  %conv90 = zext i32 %45 to i64
  %call91 = call i32 @isutf8(ptr noundef %44, i64 noundef %conv90)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end97, label %if.then93

if.then93:                                        ; preds = %lor.lhs.false89, %land.lhs.true86
  %46 = load ptr, ptr %zi, align 8
  %flag95 = getelementptr inbounds %struct.zip64_internal, ptr %46, i64 0, i32 4, i32 8
  %47 = load i64, ptr %flag95, align 8
  %or96 = or i64 %47, 2048
  store i64 %or96, ptr %flag95, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %lor.lhs.false89, %if.end83
  %48 = load ptr, ptr %zi, align 8
  %crc32 = getelementptr inbounds %struct.zip64_internal, ptr %48, i64 0, i32 4, i32 13
  store i64 0, ptr %crc32, align 8
  %49 = load i32, ptr %method.addr, align 4
  %method100 = getelementptr inbounds %struct.zip64_internal, ptr %48, i64 0, i32 4, i32 9
  store i32 %49, ptr %method100, align 8
  %encrypt = getelementptr inbounds %struct.zip64_internal, ptr %48, i64 0, i32 4, i32 14
  store i32 0, ptr %encrypt, align 8
  %50 = load ptr, ptr %zi, align 8
  %stream_initialised = getelementptr inbounds %struct.zip64_internal, ptr %50, i64 0, i32 4, i32 1
  store i32 0, ptr %stream_initialised, align 8
  %pos_in_buffered_data = getelementptr inbounds %struct.zip64_internal, ptr %50, i64 0, i32 4, i32 2
  store i32 0, ptr %pos_in_buffered_data, align 4
  %51 = load i32, ptr %raw.addr, align 4
  %raw105 = getelementptr inbounds %struct.zip64_internal, ptr %50, i64 0, i32 4, i32 10
  store i32 %51, ptr %raw105, align 4
  %52 = load ptr, ptr %zi, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %52, i64 0, i32 1
  %53 = load ptr, ptr %filestream, align 8
  %call106 = call i64 @call_ztell64(ptr noundef %52, ptr noundef %53) #13
  %pos_local_header = getelementptr inbounds %struct.zip64_internal, ptr %52, i64 0, i32 4, i32 3
  store i64 %call106, ptr %pos_local_header, align 8
  %54 = load i32, ptr %size_filename, align 4
  %add = add i32 %54, 46
  %55 = load i32, ptr %size_extrafield_global.addr, align 4
  %add108 = add i32 %add, %55
  %56 = load i32, ptr %size_comment, align 4
  %add109 = add i32 %add108, %56
  %conv110 = zext i32 %add109 to i64
  %57 = load ptr, ptr %zi, align 8
  %size_centralheader = getelementptr inbounds %struct.zip64_internal, ptr %57, i64 0, i32 4, i32 6
  store i64 %conv110, ptr %size_centralheader, align 8
  %size_centralExtraFree = getelementptr inbounds %struct.zip64_internal, ptr %57, i64 0, i32 4, i32 7
  store i64 32, ptr %size_centralExtraFree, align 8
  %conv116 = zext i32 %add109 to i64
  %add119 = add nuw nsw i64 %conv116, 32
  %call120 = call ptr @malloc(i64 noundef %add119) #17
  %58 = load ptr, ptr %zi, align 8
  %central_header = getelementptr inbounds %struct.zip64_internal, ptr %58, i64 0, i32 4, i32 4
  store ptr %call120, ptr %central_header, align 8
  %59 = load i32, ptr %size_extrafield_global.addr, align 4
  %conv122 = zext i32 %59 to i64
  %size_centralExtra = getelementptr inbounds %struct.zip64_internal, ptr %58, i64 0, i32 4, i32 5
  store i64 %conv122, ptr %size_centralExtra, align 8
  %60 = load ptr, ptr %zi, align 8
  %central_header125 = getelementptr inbounds %struct.zip64_internal, ptr %60, i64 0, i32 4, i32 4
  %61 = load ptr, ptr %central_header125, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %61, i64 noundef 33639248, i32 noundef 4)
  %central_header127 = getelementptr inbounds %struct.zip64_internal, ptr %60, i64 0, i32 4, i32 4
  %62 = load ptr, ptr %central_header127, align 8
  %add.ptr = getelementptr inbounds i8, ptr %62, i64 4
  %63 = load i64, ptr %versionMadeBy.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr, i64 noundef %63, i32 noundef 2)
  %64 = load ptr, ptr %zi, align 8
  %central_header129 = getelementptr inbounds %struct.zip64_internal, ptr %64, i64 0, i32 4, i32 4
  %65 = load ptr, ptr %central_header129, align 8
  %add.ptr130 = getelementptr inbounds i8, ptr %65, i64 6
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr130, i64 noundef 20, i32 noundef 2)
  %central_header132 = getelementptr inbounds %struct.zip64_internal, ptr %64, i64 0, i32 4, i32 4
  %66 = load ptr, ptr %central_header132, align 8
  %add.ptr133 = getelementptr inbounds i8, ptr %66, i64 8
  %67 = load ptr, ptr %zi, align 8
  %flag135 = getelementptr inbounds %struct.zip64_internal, ptr %67, i64 0, i32 4, i32 8
  %68 = load i64, ptr %flag135, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr133, i64 noundef %68, i32 noundef 2)
  %central_header137 = getelementptr inbounds %struct.zip64_internal, ptr %67, i64 0, i32 4, i32 4
  %69 = load ptr, ptr %central_header137, align 8
  %add.ptr138 = getelementptr inbounds i8, ptr %69, i64 10
  %70 = load ptr, ptr %zi, align 8
  %method140 = getelementptr inbounds %struct.zip64_internal, ptr %70, i64 0, i32 4, i32 9
  %71 = load i32, ptr %method140, align 8
  %conv141 = sext i32 %71 to i64
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr138, i64 noundef %conv141, i32 noundef 2)
  %central_header143 = getelementptr inbounds %struct.zip64_internal, ptr %70, i64 0, i32 4, i32 4
  %72 = load ptr, ptr %central_header143, align 8
  %add.ptr144 = getelementptr inbounds i8, ptr %72, i64 12
  %73 = load ptr, ptr %zi, align 8
  %dosDate146 = getelementptr inbounds %struct.zip64_internal, ptr %73, i64 0, i32 4, i32 12
  %74 = load i64, ptr %dosDate146, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr144, i64 noundef %74, i32 noundef 4)
  %central_header148 = getelementptr inbounds %struct.zip64_internal, ptr %73, i64 0, i32 4, i32 4
  %75 = load ptr, ptr %central_header148, align 8
  %add.ptr149 = getelementptr inbounds i8, ptr %75, i64 16
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr149, i64 noundef 0, i32 noundef 4)
  %76 = load ptr, ptr %zi, align 8
  %central_header151 = getelementptr inbounds %struct.zip64_internal, ptr %76, i64 0, i32 4, i32 4
  %77 = load ptr, ptr %central_header151, align 8
  %add.ptr152 = getelementptr inbounds i8, ptr %77, i64 20
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr152, i64 noundef 0, i32 noundef 4)
  %central_header154 = getelementptr inbounds %struct.zip64_internal, ptr %76, i64 0, i32 4, i32 4
  %78 = load ptr, ptr %central_header154, align 8
  %add.ptr155 = getelementptr inbounds i8, ptr %78, i64 24
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr155, i64 noundef 0, i32 noundef 4)
  %79 = load ptr, ptr %zi, align 8
  %central_header157 = getelementptr inbounds %struct.zip64_internal, ptr %79, i64 0, i32 4, i32 4
  %80 = load ptr, ptr %central_header157, align 8
  %add.ptr158 = getelementptr inbounds i8, ptr %80, i64 28
  %81 = load i32, ptr %size_filename, align 4
  %conv159 = zext i32 %81 to i64
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr158, i64 noundef %conv159, i32 noundef 2)
  %82 = load ptr, ptr %zi, align 8
  %central_header161 = getelementptr inbounds %struct.zip64_internal, ptr %82, i64 0, i32 4, i32 4
  %83 = load ptr, ptr %central_header161, align 8
  %add.ptr162 = getelementptr inbounds i8, ptr %83, i64 30
  %84 = load i32, ptr %size_extrafield_global.addr, align 4
  %conv163 = zext i32 %84 to i64
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr162, i64 noundef %conv163, i32 noundef 2)
  %85 = load ptr, ptr %zi, align 8
  %central_header165 = getelementptr inbounds %struct.zip64_internal, ptr %85, i64 0, i32 4, i32 4
  %86 = load ptr, ptr %central_header165, align 8
  %add.ptr166 = getelementptr inbounds i8, ptr %86, i64 32
  %87 = load i32, ptr %size_comment, align 4
  %conv167 = zext i32 %87 to i64
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr166, i64 noundef %conv167, i32 noundef 2)
  %88 = load ptr, ptr %zi, align 8
  %central_header169 = getelementptr inbounds %struct.zip64_internal, ptr %88, i64 0, i32 4, i32 4
  %89 = load ptr, ptr %central_header169, align 8
  %add.ptr170 = getelementptr inbounds i8, ptr %89, i64 34
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr170, i64 noundef 0, i32 noundef 2)
  %90 = load ptr, ptr %zipfi.addr, align 8
  %cmp171 = icmp eq ptr %90, null
  br i1 %cmp171, label %if.then173, label %if.else177

if.then173:                                       ; preds = %if.end97
  %91 = load ptr, ptr %zi, align 8
  %central_header175 = getelementptr inbounds %struct.zip64_internal, ptr %91, i64 0, i32 4, i32 4
  %92 = load ptr, ptr %central_header175, align 8
  %add.ptr176 = getelementptr inbounds i8, ptr %92, i64 36
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr176, i64 noundef 0, i32 noundef 2)
  br label %if.end181

if.else177:                                       ; preds = %if.end97
  %93 = load ptr, ptr %zi, align 8
  %central_header179 = getelementptr inbounds %struct.zip64_internal, ptr %93, i64 0, i32 4, i32 4
  %94 = load ptr, ptr %central_header179, align 8
  %add.ptr180 = getelementptr inbounds i8, ptr %94, i64 36
  %95 = load ptr, ptr %zipfi.addr, align 8
  %internal_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %95, i64 0, i32 2
  %96 = load i64, ptr %internal_fa, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr180, i64 noundef %96, i32 noundef 2)
  br label %if.end181

if.end181:                                        ; preds = %if.else177, %if.then173
  %97 = load ptr, ptr %zipfi.addr, align 8
  %cmp182 = icmp eq ptr %97, null
  br i1 %cmp182, label %if.then184, label %if.else188

if.then184:                                       ; preds = %if.end181
  %98 = load ptr, ptr %zi, align 8
  %central_header186 = getelementptr inbounds %struct.zip64_internal, ptr %98, i64 0, i32 4, i32 4
  %99 = load ptr, ptr %central_header186, align 8
  %add.ptr187 = getelementptr inbounds i8, ptr %99, i64 38
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr187, i64 noundef 0, i32 noundef 4)
  br label %if.end192

if.else188:                                       ; preds = %if.end181
  %100 = load ptr, ptr %zi, align 8
  %central_header190 = getelementptr inbounds %struct.zip64_internal, ptr %100, i64 0, i32 4, i32 4
  %101 = load ptr, ptr %central_header190, align 8
  %add.ptr191 = getelementptr inbounds i8, ptr %101, i64 38
  %102 = load ptr, ptr %zipfi.addr, align 8
  %external_fa = getelementptr inbounds %struct.zip_fileinfo, ptr %102, i64 0, i32 3
  %103 = load i64, ptr %external_fa, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr191, i64 noundef %103, i32 noundef 4)
  br label %if.end192

if.end192:                                        ; preds = %if.else188, %if.then184
  %104 = load ptr, ptr %zi, align 8
  %pos_local_header194 = getelementptr inbounds %struct.zip64_internal, ptr %104, i64 0, i32 4, i32 3
  %105 = load i64, ptr %pos_local_header194, align 8
  %cmp195 = icmp ugt i64 %105, 4294967294
  br i1 %cmp195, label %if.then197, label %if.else201

if.then197:                                       ; preds = %if.end192
  %106 = load ptr, ptr %zi, align 8
  %central_header199 = getelementptr inbounds %struct.zip64_internal, ptr %106, i64 0, i32 4, i32 4
  %107 = load ptr, ptr %central_header199, align 8
  %add.ptr200 = getelementptr inbounds i8, ptr %107, i64 42
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr200, i64 noundef 4294967295, i32 noundef 4)
  br label %if.end207

if.else201:                                       ; preds = %if.end192
  %108 = load ptr, ptr %zi, align 8
  %central_header203 = getelementptr inbounds %struct.zip64_internal, ptr %108, i64 0, i32 4, i32 4
  %109 = load ptr, ptr %central_header203, align 8
  %add.ptr204 = getelementptr inbounds i8, ptr %109, i64 42
  %pos_local_header206 = getelementptr inbounds %struct.zip64_internal, ptr %108, i64 0, i32 4, i32 3
  %110 = load i64, ptr %pos_local_header206, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %108, i64 0, i32 6
  %111 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %110, %111
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr204, i64 noundef %sub, i32 noundef 4)
  br label %if.end207

if.end207:                                        ; preds = %if.else201, %if.then197
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end207
  %storemerge1 = phi i32 [ 0, %if.end207 ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %112 = load i32, ptr %size_filename, align 4
  %cmp208 = icmp ult i32 %storemerge1, %112
  br i1 %cmp208, label %for.body, label %for.cond216

for.body:                                         ; preds = %for.cond
  %113 = load ptr, ptr %filename.addr, align 8
  %114 = load i32, ptr %i, align 4
  %idx.ext = zext i32 %114 to i64
  %add.ptr210 = getelementptr inbounds i8, ptr %113, i64 %idx.ext
  %115 = load i8, ptr %add.ptr210, align 1
  %116 = load ptr, ptr %zi, align 8
  %central_header212 = getelementptr inbounds %struct.zip64_internal, ptr %116, i64 0, i32 4, i32 4
  %117 = load ptr, ptr %central_header212, align 8
  %add.ptr213 = getelementptr inbounds i8, ptr %117, i64 46
  %118 = load i32, ptr %i, align 4
  %idx.ext214 = zext i32 %118 to i64
  %add.ptr215 = getelementptr inbounds i8, ptr %add.ptr213, i64 %idx.ext214
  store i8 %115, ptr %add.ptr215, align 1
  %119 = load i32, ptr %i, align 4
  %inc = add i32 %119, 1
  br label %for.cond, !llvm.loop !11

for.cond216:                                      ; preds = %for.cond, %for.body219
  %storemerge2 = phi i32 [ %inc230, %for.body219 ], [ 0, %for.cond ]
  store i32 %storemerge2, ptr %i, align 4
  %120 = load i32, ptr %size_extrafield_global.addr, align 4
  %cmp217 = icmp ult i32 %storemerge2, %120
  br i1 %cmp217, label %for.body219, label %for.cond232

for.body219:                                      ; preds = %for.cond216
  %121 = load ptr, ptr %extrafield_global.addr, align 8
  %122 = load i32, ptr %i, align 4
  %idx.ext220 = zext i32 %122 to i64
  %add.ptr221 = getelementptr inbounds i8, ptr %121, i64 %idx.ext220
  %123 = load i8, ptr %add.ptr221, align 1
  %124 = load ptr, ptr %zi, align 8
  %central_header223 = getelementptr inbounds %struct.zip64_internal, ptr %124, i64 0, i32 4, i32 4
  %125 = load ptr, ptr %central_header223, align 8
  %add.ptr224 = getelementptr inbounds i8, ptr %125, i64 46
  %126 = load i32, ptr %size_filename, align 4
  %idx.ext225 = zext i32 %126 to i64
  %add.ptr226 = getelementptr inbounds i8, ptr %add.ptr224, i64 %idx.ext225
  %127 = load i32, ptr %i, align 4
  %idx.ext227 = zext i32 %127 to i64
  %add.ptr228 = getelementptr inbounds i8, ptr %add.ptr226, i64 %idx.ext227
  store i8 %123, ptr %add.ptr228, align 1
  %128 = load i32, ptr %i, align 4
  %inc230 = add i32 %128, 1
  br label %for.cond216, !llvm.loop !12

for.cond232:                                      ; preds = %for.cond216, %for.body235
  %storemerge3 = phi i32 [ %inc248, %for.body235 ], [ 0, %for.cond216 ]
  store i32 %storemerge3, ptr %i, align 4
  %129 = load i32, ptr %size_comment, align 4
  %cmp233 = icmp ult i32 %storemerge3, %129
  br i1 %cmp233, label %for.body235, label %for.end249

for.body235:                                      ; preds = %for.cond232
  %130 = load ptr, ptr %comment.addr, align 8
  %131 = load i32, ptr %i, align 4
  %idx.ext236 = zext i32 %131 to i64
  %add.ptr237 = getelementptr inbounds i8, ptr %130, i64 %idx.ext236
  %132 = load i8, ptr %add.ptr237, align 1
  %133 = load ptr, ptr %zi, align 8
  %central_header239 = getelementptr inbounds %struct.zip64_internal, ptr %133, i64 0, i32 4, i32 4
  %134 = load ptr, ptr %central_header239, align 8
  %add.ptr240 = getelementptr inbounds i8, ptr %134, i64 46
  %135 = load i32, ptr %size_filename, align 4
  %idx.ext241 = zext i32 %135 to i64
  %add.ptr242 = getelementptr inbounds i8, ptr %add.ptr240, i64 %idx.ext241
  %136 = load i32, ptr %size_extrafield_global.addr, align 4
  %idx.ext243 = zext i32 %136 to i64
  %add.ptr244 = getelementptr inbounds i8, ptr %add.ptr242, i64 %idx.ext243
  %137 = load i32, ptr %i, align 4
  %idx.ext245 = zext i32 %137 to i64
  %add.ptr246 = getelementptr inbounds i8, ptr %add.ptr244, i64 %idx.ext245
  store i8 %132, ptr %add.ptr246, align 1
  %138 = load i32, ptr %i, align 4
  %inc248 = add i32 %138, 1
  br label %for.cond232, !llvm.loop !13

for.end249:                                       ; preds = %for.cond232
  %139 = load ptr, ptr %zi, align 8
  %central_header251 = getelementptr inbounds %struct.zip64_internal, ptr %139, i64 0, i32 4, i32 4
  %140 = load ptr, ptr %central_header251, align 8
  %cmp252 = icmp eq ptr %140, null
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %for.end249
  store i32 -104, ptr %retval, align 4
  br label %return

if.end255:                                        ; preds = %for.end249
  %141 = load i32, ptr %zip64.addr, align 4
  %142 = load ptr, ptr %zi, align 8
  %zip64257 = getelementptr inbounds %struct.zip64_internal, ptr %142, i64 0, i32 4, i32 15
  store i32 %141, ptr %zip64257, align 4
  %totalCompressedData = getelementptr inbounds %struct.zip64_internal, ptr %142, i64 0, i32 4, i32 17
  store i64 0, ptr %totalCompressedData, align 8
  %totalUncompressedData = getelementptr inbounds %struct.zip64_internal, ptr %142, i64 0, i32 4, i32 18
  store i64 0, ptr %totalUncompressedData, align 8
  %143 = load ptr, ptr %zi, align 8
  %pos_zip64extrainfo = getelementptr inbounds %struct.zip64_internal, ptr %143, i64 0, i32 4, i32 16
  store i64 0, ptr %pos_zip64extrainfo, align 8
  %144 = load ptr, ptr %filename.addr, align 8
  %145 = load i32, ptr %size_extrafield_local.addr, align 4
  %146 = load ptr, ptr %extrafield_local.addr, align 8
  %call261 = call i32 @Write_LocalFileHeader(ptr noundef %143, ptr noundef %144, i32 noundef %145, ptr noundef %146)
  store i32 %call261, ptr %err, align 4
  %147 = load ptr, ptr %zi, align 8
  %avail_in = getelementptr inbounds %struct.zip64_internal, ptr %147, i64 0, i32 4, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %avail_out = getelementptr inbounds %struct.zip64_internal, ptr %147, i64 0, i32 4, i32 0, i32 4
  store i32 65536, ptr %avail_out, align 8
  %buffered_data = getelementptr inbounds %struct.zip64_internal, ptr %147, i64 0, i32 4, i32 11
  %next_out = getelementptr inbounds %struct.zip64_internal, ptr %147, i64 0, i32 4, i32 0, i32 3
  store ptr %buffered_data, ptr %next_out, align 8
  %148 = load ptr, ptr %zi, align 8
  %total_in = getelementptr inbounds %struct.zip64_internal, ptr %148, i64 0, i32 4, i32 0, i32 2
  store i64 0, ptr %total_in, align 8
  %total_out = getelementptr inbounds %struct.zip64_internal, ptr %148, i64 0, i32 4, i32 0, i32 5
  store i64 0, ptr %total_out, align 8
  %data_type = getelementptr inbounds %struct.zip64_internal, ptr %148, i64 0, i32 4, i32 0, i32 11
  store i32 0, ptr %data_type, align 8
  %149 = load i32, ptr %err, align 4
  %cmp274 = icmp eq i32 %149, 0
  br i1 %cmp274, label %land.lhs.true276, label %if.end319

land.lhs.true276:                                 ; preds = %if.end255
  %150 = load ptr, ptr %zi, align 8
  %method278 = getelementptr inbounds %struct.zip64_internal, ptr %150, i64 0, i32 4, i32 9
  %151 = load i32, ptr %method278, align 8
  %cmp279 = icmp eq i32 %151, 8
  br i1 %cmp279, label %land.lhs.true281, label %if.end319

land.lhs.true281:                                 ; preds = %land.lhs.true276
  %152 = load ptr, ptr %zi, align 8
  %raw283 = getelementptr inbounds %struct.zip64_internal, ptr %152, i64 0, i32 4, i32 10
  %153 = load i32, ptr %raw283, align 4
  %tobool284.not = icmp eq i32 %153, 0
  br i1 %tobool284.not, label %if.then285, label %if.end319

if.then285:                                       ; preds = %land.lhs.true281
  %154 = load ptr, ptr %zi, align 8
  %method287 = getelementptr inbounds %struct.zip64_internal, ptr %154, i64 0, i32 4, i32 9
  %155 = load i32, ptr %method287, align 8
  %cmp288 = icmp eq i32 %155, 8
  br i1 %cmp288, label %if.then290, label %if.else311

if.then290:                                       ; preds = %if.then285
  %156 = load ptr, ptr %zi, align 8
  %zalloc = getelementptr inbounds %struct.zip64_internal, ptr %156, i64 0, i32 4, i32 0, i32 8
  store ptr null, ptr %zalloc, align 8
  %zfree = getelementptr inbounds %struct.zip64_internal, ptr %156, i64 0, i32 4, i32 0, i32 9
  store ptr null, ptr %zfree, align 8
  %opaque = getelementptr inbounds %struct.zip64_internal, ptr %156, i64 0, i32 4, i32 0, i32 10
  store ptr null, ptr %opaque, align 8
  %157 = load i32, ptr %windowBits.addr, align 4
  %cmp297 = icmp sgt i32 %157, 0
  br i1 %cmp297, label %if.then299, label %if.end301

if.then299:                                       ; preds = %if.then290
  %158 = load i32, ptr %windowBits.addr, align 4
  %sub300 = sub nsw i32 0, %158
  store i32 %sub300, ptr %windowBits.addr, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.then299, %if.then290
  %159 = load ptr, ptr %zi, align 8
  %ci302 = getelementptr inbounds %struct.zip64_internal, ptr %159, i64 0, i32 4
  %160 = load i32, ptr %level.addr, align 4
  %161 = load i32, ptr %windowBits.addr, align 4
  %162 = load i32, ptr %memLevel.addr, align 4
  %163 = load i32, ptr %strategy.addr, align 4
  %call304 = call i32 @deflateInit2_(ptr noundef nonnull %ci302, i32 noundef %160, i32 noundef 8, i32 noundef %161, i32 noundef %162, i32 noundef %163, ptr noundef nonnull @.str.1, i32 noundef 112) #13
  store i32 %call304, ptr %err, align 4
  %cmp305 = icmp eq i32 %call304, 0
  br i1 %cmp305, label %if.then307, label %if.end319

if.then307:                                       ; preds = %if.end301
  %164 = load ptr, ptr %zi, align 8
  %stream_initialised309 = getelementptr inbounds %struct.zip64_internal, ptr %164, i64 0, i32 4, i32 1
  store i32 8, ptr %stream_initialised309, align 8
  br label %if.end319

if.else311:                                       ; preds = %if.then285
  br label %if.end319

if.end319:                                        ; preds = %if.else311, %if.then307, %if.end301, %land.lhs.true281, %land.lhs.true276, %if.end255
  %165 = load ptr, ptr %zi, align 8
  %crypt_header_size = getelementptr inbounds %struct.zip64_internal, ptr %165, i64 0, i32 4, i32 21
  store i32 0, ptr %crypt_header_size, align 8
  %166 = load i32, ptr %err, align 4
  %cmp321 = icmp ne i32 %166, 0
  %167 = load ptr, ptr %password.addr, align 8
  %cmp324.not = icmp eq ptr %167, null
  %or.cond6 = select i1 %cmp321, i1 true, i1 %cmp324.not
  br i1 %or.cond6, label %if.end352, label %if.then326

if.then326:                                       ; preds = %if.end319
  %168 = load ptr, ptr %zi, align 8
  %encrypt328 = getelementptr inbounds %struct.zip64_internal, ptr %168, i64 0, i32 4, i32 14
  store i32 1, ptr %encrypt328, align 8
  %call329 = call ptr @get_crc_table() #13
  %pcrc_32_tab = getelementptr inbounds %struct.zip64_internal, ptr %168, i64 0, i32 4, i32 20
  store ptr %call329, ptr %pcrc_32_tab, align 8
  %169 = load ptr, ptr %password.addr, align 8
  %170 = load ptr, ptr %zi, align 8
  %keys = getelementptr inbounds %struct.zip64_internal, ptr %170, i64 0, i32 4, i32 19
  %pcrc_32_tab335 = getelementptr inbounds %struct.zip64_internal, ptr %170, i64 0, i32 4, i32 20
  %171 = load ptr, ptr %pcrc_32_tab335, align 8
  %172 = load i64, ptr %crcForCrypting.addr, align 8
  %call336 = call i32 @crypthead(ptr noundef %169, ptr noundef nonnull %bufHead, i32 noundef 12, ptr noundef nonnull %keys, ptr noundef %171, i64 noundef %172)
  store i32 %call336, ptr %sizeHead, align 4
  %173 = load ptr, ptr %zi, align 8
  %crypt_header_size338 = getelementptr inbounds %struct.zip64_internal, ptr %173, i64 0, i32 4, i32 21
  store i32 %call336, ptr %crypt_header_size338, align 8
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %173, i64 0, i32 2
  %174 = load ptr, ptr %zwrite_file, align 8
  %opaque342 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %173, i64 0, i32 7
  %175 = load ptr, ptr %opaque342, align 8
  %176 = load ptr, ptr %zi, align 8
  %filestream343 = getelementptr inbounds %struct.zip64_internal, ptr %176, i64 0, i32 1
  %177 = load ptr, ptr %filestream343, align 8
  %178 = load i32, ptr %sizeHead, align 4
  %conv345 = zext i32 %178 to i64
  %call346 = call i64 %174(ptr noundef %175, ptr noundef %177, ptr noundef nonnull %bufHead, i64 noundef %conv345) #13
  %conv347 = zext i32 %178 to i64
  %cmp348.not = icmp eq i64 %call346, %conv347
  br i1 %cmp348.not, label %if.end352, label %if.then350

if.then350:                                       ; preds = %if.then326
  store i32 -1, ptr %err, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.then326, %if.then350, %if.end319
  %179 = load i32, ptr %err, align 4
  %cmp353 = icmp eq i32 %179, 0
  br i1 %cmp353, label %if.then355, label %if.end357

if.then355:                                       ; preds = %if.end352
  %180 = load ptr, ptr %zi, align 8
  %in_opened_file_inzip356 = getelementptr inbounds %struct.zip64_internal, ptr %180, i64 0, i32 3
  store i32 1, ptr %in_opened_file_inzip356, align 8
  br label %if.end357

if.end357:                                        ; preds = %if.then355, %if.end352
  %181 = load i32, ptr %err, align 4
  store i32 %181, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end357, %if.then254, %if.then24, %if.then18, %if.then14, %if.then8, %if.then3, %if.then
  %182 = load i32, ptr %retval, align 4
  ret i32 %182
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipCloseFileInZip(ptr noundef %file) #0 {
entry:
  %call = call i32 @zipCloseFileInZipRaw(ptr noundef %file, i64 noundef 0, i64 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @zip64local_TmzDateToDosDate(ptr noundef %ptm) #0 {
entry:
  %ptm.addr = alloca ptr, align 8
  %year = alloca i64, align 8
  store ptr %ptm, ptr %ptm.addr, align 8
  %tm_year = getelementptr inbounds %struct.tm_zip_s, ptr %ptm, i64 0, i32 5
  %0 = load i32, ptr %tm_year, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, ptr %year, align 8
  %cmp = icmp ugt i32 %0, 1979
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %year, align 8
  %sub = add i64 %1, -1980
  store i64 %sub, ptr %year, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load i64, ptr %year, align 8
  %cmp2 = icmp ugt i64 %2, 79
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  %3 = load i64, ptr %year, align 8
  %sub5 = add i64 %3, -80
  store i64 %sub5, ptr %year, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %if.then
  %4 = load ptr, ptr %ptm.addr, align 8
  %tm_mday = getelementptr inbounds %struct.tm_zip_s, ptr %4, i64 0, i32 3
  %5 = load i32, ptr %tm_mday, align 4
  %conv7 = sext i32 %5 to i64
  %tm_mon = getelementptr inbounds %struct.tm_zip_s, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %tm_mon, align 4
  %add = add nsw i32 %6, 1
  %conv8 = sext i32 %add to i64
  %mul = shl nsw i64 %conv8, 5
  %add9 = add nsw i64 %mul, %conv7
  %7 = load i64, ptr %year, align 8
  %mul10 = shl i64 %7, 9
  %add11 = add i64 %add9, %mul10
  %shl = shl i64 %add11, 16
  %8 = load ptr, ptr %ptm.addr, align 8
  %9 = load i32, ptr %8, align 4
  %conv12 = sext i32 %9 to i64
  %div1 = lshr i64 %conv12, 1
  %tm_min = getelementptr inbounds %struct.tm_zip_s, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %tm_min, align 4
  %conv13 = sext i32 %10 to i64
  %mul14 = shl nsw i64 %conv13, 5
  %add15 = add i64 %div1, %mul14
  %11 = load ptr, ptr %ptm.addr, align 8
  %tm_hour = getelementptr inbounds %struct.tm_zip_s, ptr %11, i64 0, i32 2
  %12 = load i32, ptr %tm_hour, align 4
  %conv16 = sext i32 %12 to i64
  %mul17 = shl nsw i64 %conv16, 11
  %add18 = add i64 %add15, %mul17
  %or = or i64 %shl, %add18
  ret i64 %or
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @isutf8(ptr noundef %str, i64 noundef %len) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %utf8 = alloca i32, align 4
  %code = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i32 0, ptr %utf8, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %entry
  %0 = load i64, ptr %len.addr, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %str.addr, align 8
  %2 = load i64, ptr %len.addr, align 8
  %call = call i32 @utf8len(ptr noundef %1, i64 noundef %2)
  store i32 %call, ptr %code, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %3 = load i32, ptr %code, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %utf8, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %code, align 4
  %5 = load ptr, ptr %str.addr, align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %str.addr, align 8
  %conv = zext i32 %4 to i64
  %6 = load i64, ptr %len.addr, align 8
  %sub = sub i64 %6, %conv
  store i64 %sub, ptr %len.addr, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %utf8, align 4
  br label %return

return:                                           ; preds = %while.body, %while.end
  %storemerge = phi i32 [ %7, %while.end ], [ 0, %while.body ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @zip64local_putValue_inmemory(ptr noundef %dest, i64 noundef %x, i32 noundef %nbByte) #0 {
entry:
  %x.addr = alloca i64, align 8
  %nbByte.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %n = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  store i32 %nbByte, ptr %nbByte.addr, align 4
  store ptr %dest, ptr %buf, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %0 = load i32, ptr %nbByte.addr, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %x.addr, align 8
  %conv = trunc i64 %1 to i8
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %4 = load i64, ptr %x.addr, align 8
  %shr = lshr i64 %4, 8
  store i64 %shr, ptr %x.addr, align 8
  %5 = load i32, ptr %n, align 4
  %inc = add nsw i32 %5, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %6 = load i64, ptr %x.addr, align 8
  %cmp1.not = icmp eq i64 %6, 0
  br i1 %cmp1.not, label %if.end, label %for.cond3

for.cond3:                                        ; preds = %for.end, %for.body6
  %storemerge1 = phi i32 [ %inc10, %for.body6 ], [ 0, %for.end ]
  store i32 %storemerge1, ptr %n, align 4
  %7 = load i32, ptr %nbByte.addr, align 4
  %cmp4 = icmp slt i32 %storemerge1, %7
  br i1 %cmp4, label %for.body6, label %if.end

for.body6:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %buf, align 8
  %9 = load i32, ptr %n, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom7
  store i8 -1, ptr %arrayidx8, align 1
  %10 = load i32, ptr %n, align 4
  %inc10 = add nsw i32 %10, 1
  br label %for.cond3, !llvm.loop !16

if.end:                                           ; preds = %for.cond3, %for.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Write_LocalFileHeader(ptr noundef %zi, ptr noundef %filename, i32 noundef %size_extrafield_local, ptr noundef %extrafield_local) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_local.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %size_filename = alloca i32, align 4
  %size_extrafield = alloca i32, align 4
  %HeaderID = alloca i16, align 2
  %DataSize = alloca i16, align 2
  %CompressedSize = alloca i64, align 8
  %UncompressedSize = alloca i64, align 8
  store ptr %zi, ptr %zi.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %filename) #13
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size_filename, align 4
  store i32 %size_extrafield_local, ptr %size_extrafield, align 4
  %0 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %filestream, align 8
  %call1 = call i32 @zip64local_putValue(ptr noundef %0, ptr noundef %1, i64 noundef 67324752, i32 noundef 4)
  store i32 %call1, ptr %err, align 4
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %zi.addr, align 8
  %zip64 = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 4, i32 15
  %3 = load i32, ptr %zip64, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %zi.addr, align 8
  %filestream5 = getelementptr inbounds %struct.zip64_internal, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %filestream5, align 8
  %call6 = call i32 @zip64local_putValue(ptr noundef %4, ptr noundef %5, i64 noundef 45, i32 noundef 2)
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %zi.addr, align 8
  %filestream8 = getelementptr inbounds %struct.zip64_internal, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %filestream8, align 8
  %call9 = call i32 @zip64local_putValue(ptr noundef %6, ptr noundef %7, i64 noundef 20, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %storemerge2 = phi i32 [ %call9, %if.else ], [ %call6, %if.then3 ]
  store i32 %storemerge2, ptr %err, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %8 = load i32, ptr %err, align 4
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end10
  %9 = load ptr, ptr %zi.addr, align 8
  %filestream15 = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %filestream15, align 8
  %flag = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 4, i32 8
  %11 = load i64, ptr %flag, align 8
  %call17 = call i32 @zip64local_putValue(ptr noundef %9, ptr noundef %10, i64 noundef %11, i32 noundef 2)
  store i32 %call17, ptr %err, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10
  %12 = load i32, ptr %err, align 4
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %if.then21, label %if.end27

if.then21:                                        ; preds = %if.end18
  %13 = load ptr, ptr %zi.addr, align 8
  %filestream23 = getelementptr inbounds %struct.zip64_internal, ptr %13, i64 0, i32 1
  %14 = load ptr, ptr %filestream23, align 8
  %method = getelementptr inbounds %struct.zip64_internal, ptr %13, i64 0, i32 4, i32 9
  %15 = load i32, ptr %method, align 8
  %conv25 = sext i32 %15 to i64
  %call26 = call i32 @zip64local_putValue(ptr noundef %13, ptr noundef %14, i64 noundef %conv25, i32 noundef 2)
  store i32 %call26, ptr %err, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end18
  %16 = load i32, ptr %err, align 4
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end27
  %17 = load ptr, ptr %zi.addr, align 8
  %filestream32 = getelementptr inbounds %struct.zip64_internal, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %filestream32, align 8
  %dosDate = getelementptr inbounds %struct.zip64_internal, ptr %17, i64 0, i32 4, i32 12
  %19 = load i64, ptr %dosDate, align 8
  %call34 = call i32 @zip64local_putValue(ptr noundef %17, ptr noundef %18, i64 noundef %19, i32 noundef 4)
  store i32 %call34, ptr %err, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end27
  %20 = load i32, ptr %err, align 4
  %cmp36 = icmp eq i32 %20, 0
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end35
  %21 = load ptr, ptr %zi.addr, align 8
  %filestream40 = getelementptr inbounds %struct.zip64_internal, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %filestream40, align 8
  %call41 = call i32 @zip64local_putValue(ptr noundef %21, ptr noundef %22, i64 noundef 0, i32 noundef 4)
  store i32 %call41, ptr %err, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end35
  %23 = load i32, ptr %err, align 4
  %cmp43 = icmp eq i32 %23, 0
  br i1 %cmp43, label %if.then45, label %if.end58

if.then45:                                        ; preds = %if.end42
  %24 = load ptr, ptr %zi.addr, align 8
  %zip6447 = getelementptr inbounds %struct.zip64_internal, ptr %24, i64 0, i32 4, i32 15
  %25 = load i32, ptr %zip6447, align 4
  %tobool48.not = icmp eq i32 %25, 0
  br i1 %tobool48.not, label %if.else53, label %if.then49

if.then49:                                        ; preds = %if.then45
  %26 = load ptr, ptr %zi.addr, align 8
  %filestream51 = getelementptr inbounds %struct.zip64_internal, ptr %26, i64 0, i32 1
  %27 = load ptr, ptr %filestream51, align 8
  %call52 = call i32 @zip64local_putValue(ptr noundef %26, ptr noundef %27, i64 noundef 4294967295, i32 noundef 4)
  br label %if.end57

if.else53:                                        ; preds = %if.then45
  %28 = load ptr, ptr %zi.addr, align 8
  %filestream55 = getelementptr inbounds %struct.zip64_internal, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %filestream55, align 8
  %call56 = call i32 @zip64local_putValue(ptr noundef %28, ptr noundef %29, i64 noundef 0, i32 noundef 4)
  br label %if.end57

if.end57:                                         ; preds = %if.else53, %if.then49
  %storemerge1 = phi i32 [ %call56, %if.else53 ], [ %call52, %if.then49 ]
  store i32 %storemerge1, ptr %err, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end42
  %30 = load i32, ptr %err, align 4
  %cmp59 = icmp eq i32 %30, 0
  br i1 %cmp59, label %if.then61, label %if.end74

if.then61:                                        ; preds = %if.end58
  %31 = load ptr, ptr %zi.addr, align 8
  %zip6463 = getelementptr inbounds %struct.zip64_internal, ptr %31, i64 0, i32 4, i32 15
  %32 = load i32, ptr %zip6463, align 4
  %tobool64.not = icmp eq i32 %32, 0
  br i1 %tobool64.not, label %if.else69, label %if.then65

if.then65:                                        ; preds = %if.then61
  %33 = load ptr, ptr %zi.addr, align 8
  %filestream67 = getelementptr inbounds %struct.zip64_internal, ptr %33, i64 0, i32 1
  %34 = load ptr, ptr %filestream67, align 8
  %call68 = call i32 @zip64local_putValue(ptr noundef %33, ptr noundef %34, i64 noundef 4294967295, i32 noundef 4)
  br label %if.end73

if.else69:                                        ; preds = %if.then61
  %35 = load ptr, ptr %zi.addr, align 8
  %filestream71 = getelementptr inbounds %struct.zip64_internal, ptr %35, i64 0, i32 1
  %36 = load ptr, ptr %filestream71, align 8
  %call72 = call i32 @zip64local_putValue(ptr noundef %35, ptr noundef %36, i64 noundef 0, i32 noundef 4)
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then65
  %storemerge = phi i32 [ %call72, %if.else69 ], [ %call68, %if.then65 ]
  store i32 %storemerge, ptr %err, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end58
  %37 = load i32, ptr %err, align 4
  %cmp75 = icmp eq i32 %37, 0
  br i1 %cmp75, label %if.then77, label %if.end82

if.then77:                                        ; preds = %if.end74
  %38 = load ptr, ptr %zi.addr, align 8
  %filestream79 = getelementptr inbounds %struct.zip64_internal, ptr %38, i64 0, i32 1
  %39 = load ptr, ptr %filestream79, align 8
  %40 = load i32, ptr %size_filename, align 4
  %conv80 = zext i32 %40 to i64
  %call81 = call i32 @zip64local_putValue(ptr noundef %38, ptr noundef %39, i64 noundef %conv80, i32 noundef 2)
  store i32 %call81, ptr %err, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end74
  %41 = load ptr, ptr %zi.addr, align 8
  %zip6484 = getelementptr inbounds %struct.zip64_internal, ptr %41, i64 0, i32 4, i32 15
  %42 = load i32, ptr %zip6484, align 4
  %tobool85.not = icmp eq i32 %42, 0
  br i1 %tobool85.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end82
  %43 = load i32, ptr %size_extrafield, align 4
  %add = add i32 %43, 20
  store i32 %add, ptr %size_extrafield, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end82
  %44 = load i32, ptr %err, align 4
  %cmp88 = icmp eq i32 %44, 0
  br i1 %cmp88, label %if.then90, label %if.end95

if.then90:                                        ; preds = %if.end87
  %45 = load ptr, ptr %zi.addr, align 8
  %filestream92 = getelementptr inbounds %struct.zip64_internal, ptr %45, i64 0, i32 1
  %46 = load ptr, ptr %filestream92, align 8
  %47 = load i32, ptr %size_extrafield, align 4
  %conv93 = zext i32 %47 to i64
  %call94 = call i32 @zip64local_putValue(ptr noundef %45, ptr noundef %46, i64 noundef %conv93, i32 noundef 2)
  store i32 %call94, ptr %err, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.end87
  %48 = load i32, ptr %err, align 4
  %cmp96 = icmp ne i32 %48, 0
  %49 = load i32, ptr %size_filename, align 4
  %cmp98.not = icmp eq i32 %49, 0
  %or.cond = select i1 %cmp96, i1 true, i1 %cmp98.not
  br i1 %or.cond, label %if.end112, label %if.then100

if.then100:                                       ; preds = %if.end95
  %50 = load ptr, ptr %zi.addr, align 8
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %50, i64 0, i32 2
  %51 = load ptr, ptr %zwrite_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %50, i64 0, i32 7
  %52 = load ptr, ptr %opaque, align 8
  %filestream104 = getelementptr inbounds %struct.zip64_internal, ptr %50, i64 0, i32 1
  %53 = load ptr, ptr %filestream104, align 8
  %54 = load ptr, ptr %filename.addr, align 8
  %55 = load i32, ptr %size_filename, align 4
  %conv105 = zext i32 %55 to i64
  %call106 = call i64 %51(ptr noundef %52, ptr noundef %53, ptr noundef %54, i64 noundef %conv105) #13
  %conv107 = zext i32 %55 to i64
  %cmp108.not = icmp eq i64 %call106, %conv107
  br i1 %cmp108.not, label %if.end112, label %if.then110

if.then110:                                       ; preds = %if.then100
  store i32 -1, ptr %err, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then100, %if.then110, %if.end95
  %56 = load i32, ptr %err, align 4
  %cmp113 = icmp ne i32 %56, 0
  %57 = load i32, ptr %size_extrafield_local.addr, align 4
  %cmp116.not = icmp eq i32 %57, 0
  %or.cond3 = select i1 %cmp113, i1 true, i1 %cmp116.not
  br i1 %or.cond3, label %if.end133, label %if.then118

if.then118:                                       ; preds = %if.end112
  %58 = load ptr, ptr %zi.addr, align 8
  %zwrite_file121 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %58, i64 0, i32 2
  %59 = load ptr, ptr %zwrite_file121, align 8
  %opaque124 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %58, i64 0, i32 7
  %60 = load ptr, ptr %opaque124, align 8
  %filestream125 = getelementptr inbounds %struct.zip64_internal, ptr %58, i64 0, i32 1
  %61 = load ptr, ptr %filestream125, align 8
  %62 = load ptr, ptr %extrafield_local.addr, align 8
  %63 = load i32, ptr %size_extrafield_local.addr, align 4
  %conv126 = zext i32 %63 to i64
  %call127 = call i64 %59(ptr noundef %60, ptr noundef %61, ptr noundef %62, i64 noundef %conv126) #13
  %conv128 = zext i32 %63 to i64
  %cmp129.not = icmp eq i64 %call127, %conv128
  br i1 %cmp129.not, label %if.end133, label %if.then131

if.then131:                                       ; preds = %if.then118
  store i32 -1, ptr %err, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then118, %if.then131, %if.end112
  %64 = load i32, ptr %err, align 4
  %cmp134 = icmp eq i32 %64, 0
  br i1 %cmp134, label %land.lhs.true136, label %if.end159

land.lhs.true136:                                 ; preds = %if.end133
  %65 = load ptr, ptr %zi.addr, align 8
  %zip64138 = getelementptr inbounds %struct.zip64_internal, ptr %65, i64 0, i32 4, i32 15
  %66 = load i32, ptr %zip64138, align 4
  %tobool139.not = icmp eq i32 %66, 0
  br i1 %tobool139.not, label %if.end159, label %if.then140

if.then140:                                       ; preds = %land.lhs.true136
  store i16 1, ptr %HeaderID, align 2
  store i16 16, ptr %DataSize, align 2
  store i64 0, ptr %CompressedSize, align 8
  store i64 0, ptr %UncompressedSize, align 8
  %67 = load ptr, ptr %zi.addr, align 8
  %filestream142 = getelementptr inbounds %struct.zip64_internal, ptr %67, i64 0, i32 1
  %68 = load ptr, ptr %filestream142, align 8
  %call143 = call i64 @call_ztell64(ptr noundef %67, ptr noundef %68) #13
  %pos_zip64extrainfo = getelementptr inbounds %struct.zip64_internal, ptr %67, i64 0, i32 4, i32 16
  store i64 %call143, ptr %pos_zip64extrainfo, align 8
  %filestream146 = getelementptr inbounds %struct.zip64_internal, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %filestream146, align 8
  %70 = load i16, ptr %HeaderID, align 2
  %conv147 = sext i16 %70 to i64
  %call148 = call i32 @zip64local_putValue(ptr noundef %67, ptr noundef %69, i64 noundef %conv147, i32 noundef 2)
  store i32 %call148, ptr %err, align 4
  %71 = load ptr, ptr %zi.addr, align 8
  %filestream150 = getelementptr inbounds %struct.zip64_internal, ptr %71, i64 0, i32 1
  %72 = load ptr, ptr %filestream150, align 8
  %73 = load i16, ptr %DataSize, align 2
  %conv151 = sext i16 %73 to i64
  %call152 = call i32 @zip64local_putValue(ptr noundef %71, ptr noundef %72, i64 noundef %conv151, i32 noundef 2)
  store i32 %call152, ptr %err, align 4
  %74 = load ptr, ptr %zi.addr, align 8
  %filestream154 = getelementptr inbounds %struct.zip64_internal, ptr %74, i64 0, i32 1
  %75 = load ptr, ptr %filestream154, align 8
  %76 = load i64, ptr %UncompressedSize, align 8
  %call155 = call i32 @zip64local_putValue(ptr noundef %74, ptr noundef %75, i64 noundef %76, i32 noundef 8)
  store i32 %call155, ptr %err, align 4
  %filestream157 = getelementptr inbounds %struct.zip64_internal, ptr %74, i64 0, i32 1
  %77 = load ptr, ptr %filestream157, align 8
  %78 = load i64, ptr %CompressedSize, align 8
  %call158 = call i32 @zip64local_putValue(ptr noundef %74, ptr noundef %77, i64 noundef %78, i32 noundef 8)
  store i32 %call158, ptr %err, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then140, %land.lhs.true136, %if.end133
  %79 = load i32, ptr %err, align 4
  ret i32 %79
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare ptr @get_crc_table() #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @crypthead(ptr noundef %passwd, ptr noundef %buf, i32 noundef %bufSize, ptr noundef %pkeys, ptr noundef %pcrc_32_tab, i64 noundef %crcForCrypting) #0 {
entry:
  %passwd.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pkeys.addr = alloca ptr, align 8
  %pcrc_32_tab.addr = alloca ptr, align 8
  %crcForCrypting.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  %header = alloca [10 x i8], align 1
  store ptr %passwd, ptr %passwd.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store ptr %pkeys, ptr %pkeys.addr, align 8
  store ptr %pcrc_32_tab, ptr %pcrc_32_tab.addr, align 8
  store i64 %crcForCrypting, ptr %crcForCrypting.addr, align 8
  %cmp = icmp slt i32 %bufSize, 12
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @crypthead.calls, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @crypthead.calls, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %call = call i64 @time(ptr noundef null) #13
  %1 = trunc i64 %call to i32
  %conv4 = xor i32 %1, -1153374642
  call void @srand(i32 noundef %conv4) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr %passwd.addr, align 8
  %3 = load ptr, ptr %pkeys.addr, align 8
  %4 = load ptr, ptr %pcrc_32_tab.addr, align 8
  call void @init_keys(ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end5
  %storemerge = phi i32 [ 0, %if.end5 ], [ %inc15, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %cmp6 = icmp ult i32 %storemerge, 10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call i32 @rand() #13
  %5 = lshr i32 %call8, 7
  %and = and i32 %5, 255
  %6 = load ptr, ptr %pkeys.addr, align 8
  %7 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call9 = call i32 @decrypt_byte(ptr noundef %6, ptr noundef %7)
  store i32 %call9, ptr %t, align 4
  %call10 = call i32 @update_keys(ptr noundef %6, ptr noundef %7, i32 noundef %and)
  %xor13 = xor i32 %call9, %5
  %conv14 = trunc i32 %xor13 to i8
  %8 = load i32, ptr %n, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr %header, i64 0, i64 %idxprom
  store i8 %conv14, ptr %arrayidx, align 1
  %9 = load i32, ptr %n, align 4
  %inc15 = add i32 %9, 1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %passwd.addr, align 8
  %11 = load ptr, ptr %pkeys.addr, align 8
  %12 = load ptr, ptr %pcrc_32_tab.addr, align 8
  call void @init_keys(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  br label %for.cond16

for.cond16:                                       ; preds = %for.body19, %for.end
  %storemerge1 = phi i32 [ 0, %for.end ], [ %inc35, %for.body19 ]
  store i32 %storemerge1, ptr %n, align 4
  %cmp17 = icmp ult i32 %storemerge1, 10
  br i1 %cmp17, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond16
  %13 = load ptr, ptr %pkeys.addr, align 8
  %14 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call20 = call i32 @decrypt_byte(ptr noundef %13, ptr noundef %14)
  store i32 %call20, ptr %t, align 4
  %15 = load i32, ptr %n, align 4
  %idxprom21 = zext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [10 x i8], ptr %header, i64 0, i64 %idxprom21
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %call24 = call i32 @update_keys(ptr noundef %13, ptr noundef %14, i32 noundef %conv23)
  %17 = load i32, ptr %t, align 4
  %18 = load i32, ptr %n, align 4
  %idxprom27 = zext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [10 x i8], ptr %header, i64 0, i64 %idxprom27
  %19 = load i8, ptr %arrayidx28, align 1
  %20 = trunc i32 %17 to i8
  %conv31 = xor i8 %19, %20
  %21 = load ptr, ptr %buf.addr, align 8
  %22 = load i32, ptr %n, align 4
  %idxprom32 = zext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %21, i64 %idxprom32
  store i8 %conv31, ptr %arrayidx33, align 1
  %23 = load i32, ptr %n, align 4
  %inc35 = add i32 %23, 1
  br label %for.cond16, !llvm.loop !18

for.end36:                                        ; preds = %for.cond16
  %24 = load ptr, ptr %pkeys.addr, align 8
  %25 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call37 = call i32 @decrypt_byte(ptr noundef %24, ptr noundef %25)
  store i32 %call37, ptr %t, align 4
  %26 = load i64, ptr %crcForCrypting.addr, align 8
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 16
  %and40 = and i32 %28, 255
  %call41 = call i32 @update_keys(ptr noundef %24, ptr noundef %25, i32 noundef %and40)
  %29 = trunc i64 %26 to i32
  %30 = lshr i32 %29, 16
  %conv432 = xor i32 %call37, %30
  %conv48 = trunc i32 %conv432 to i8
  %31 = load ptr, ptr %buf.addr, align 8
  %32 = load i32, ptr %n, align 4
  %inc49 = add i32 %32, 1
  store i32 %inc49, ptr %n, align 4
  %idxprom50 = zext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %31, i64 %idxprom50
  store i8 %conv48, ptr %arrayidx51, align 1
  %33 = load ptr, ptr %pkeys.addr, align 8
  %34 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %call52 = call i32 @decrypt_byte(ptr noundef %33, ptr noundef %34)
  store i32 %call52, ptr %t, align 4
  %35 = load i64, ptr %crcForCrypting.addr, align 8
  %36 = trunc i64 %35 to i32
  %37 = lshr i32 %36, 24
  %call56 = call i32 @update_keys(ptr noundef %33, ptr noundef %34, i32 noundef %37)
  %38 = trunc i64 %35 to i32
  %39 = lshr i32 %38, 24
  %xor62 = xor i32 %call52, %39
  %conv63 = trunc i32 %xor62 to i8
  %40 = load ptr, ptr %buf.addr, align 8
  %41 = load i32, ptr %n, align 4
  %inc64 = add i32 %41, 1
  store i32 %inc64, ptr %n, align 4
  %idxprom65 = zext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds i8, ptr %40, i64 %idxprom65
  store i8 %conv63, ptr %arrayidx66, align 1
  br label %return

return:                                           ; preds = %entry, %for.end36
  %storemerge3 = phi i32 [ %inc64, %for.end36 ], [ 0, %entry ]
  ret i32 %storemerge3
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip4(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level, i32 noundef %raw, i32 noundef %windowBits, i32 noundef %memLevel, i32 noundef %strategy, ptr noundef %password, i64 noundef %crcForCrypting, i64 noundef %versionMadeBy, i64 noundef %flagBase) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %windowBits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  %crcForCrypting.addr = alloca i64, align 8
  %versionMadeBy.addr = alloca i64, align 8
  %flagBase.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %raw, ptr %raw.addr, align 4
  store i32 %windowBits, ptr %windowBits.addr, align 4
  store i32 %memLevel, ptr %memLevel.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  store i64 %crcForCrypting, ptr %crcForCrypting.addr, align 8
  store i64 %versionMadeBy, ptr %versionMadeBy.addr, align 8
  store i64 %flagBase, ptr %flagBase.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %zipfi.addr, align 8
  %3 = load ptr, ptr %extrafield_local.addr, align 8
  %4 = load i32, ptr %size_extrafield_local.addr, align 4
  %5 = load ptr, ptr %extrafield_global.addr, align 8
  %6 = load i32, ptr %size_extrafield_global.addr, align 4
  %7 = load ptr, ptr %comment.addr, align 8
  %8 = load i32, ptr %method.addr, align 4
  %9 = load i32, ptr %level.addr, align 4
  %10 = load i32, ptr %raw.addr, align 4
  %11 = load i32, ptr %windowBits.addr, align 4
  %12 = load i32, ptr %memLevel.addr, align 4
  %13 = load i32, ptr %strategy.addr, align 4
  %14 = load ptr, ptr %password.addr, align 8
  %15 = load i64, ptr %crcForCrypting.addr, align 8
  %16 = load i64, ptr %versionMadeBy.addr, align 8
  %17 = load i64, ptr %flagBase.addr, align 8
  %call = call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip3(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level, i32 noundef %raw, i32 noundef %windowBits, i32 noundef %memLevel, i32 noundef %strategy, ptr noundef %password, i64 noundef %crcForCrypting) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %windowBits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  %crcForCrypting.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %raw, ptr %raw.addr, align 4
  store i32 %windowBits, ptr %windowBits.addr, align 4
  store i32 %memLevel, ptr %memLevel.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  store i64 %crcForCrypting, ptr %crcForCrypting.addr, align 8
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %zipfi.addr, align 8
  %3 = load ptr, ptr %extrafield_local.addr, align 8
  %4 = load i32, ptr %size_extrafield_local.addr, align 4
  %5 = load ptr, ptr %extrafield_global.addr, align 8
  %6 = load i32, ptr %size_extrafield_global.addr, align 4
  %7 = load ptr, ptr %comment.addr, align 8
  %8 = load i32, ptr %method.addr, align 4
  %9 = load i32, ptr %level.addr, align 4
  %10 = load i32, ptr %raw.addr, align 4
  %11 = load i32, ptr %windowBits.addr, align 4
  %12 = load i32, ptr %memLevel.addr, align 4
  %13 = load i32, ptr %strategy.addr, align 4
  %14 = load ptr, ptr %password.addr, align 8
  %15 = load i64, ptr %crcForCrypting.addr, align 8
  %call = call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip3_64(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level, i32 noundef %raw, i32 noundef %windowBits, i32 noundef %memLevel, i32 noundef %strategy, ptr noundef %password, i64 noundef %crcForCrypting, i32 noundef %zip64) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %windowBits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %password.addr = alloca ptr, align 8
  %crcForCrypting.addr = alloca i64, align 8
  %zip64.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %raw, ptr %raw.addr, align 4
  store i32 %windowBits, ptr %windowBits.addr, align 4
  store i32 %memLevel, ptr %memLevel.addr, align 4
  store i32 %strategy, ptr %strategy.addr, align 4
  store ptr %password, ptr %password.addr, align 8
  store i64 %crcForCrypting, ptr %crcForCrypting.addr, align 8
  store i32 %zip64, ptr %zip64.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %zipfi.addr, align 8
  %3 = load ptr, ptr %extrafield_local.addr, align 8
  %4 = load i32, ptr %size_extrafield_local.addr, align 4
  %5 = load ptr, ptr %extrafield_global.addr, align 8
  %6 = load i32, ptr %size_extrafield_global.addr, align 4
  %7 = load ptr, ptr %comment.addr, align 8
  %8 = load i32, ptr %method.addr, align 4
  %9 = load i32, ptr %level.addr, align 4
  %10 = load i32, ptr %raw.addr, align 4
  %11 = load i32, ptr %windowBits.addr, align 4
  %12 = load i32, ptr %memLevel.addr, align 4
  %13 = load i32, ptr %strategy.addr, align 4
  %14 = load ptr, ptr %password.addr, align 8
  %15 = load i64, ptr %crcForCrypting.addr, align 8
  %16 = load i32, ptr %zip64.addr, align 4
  %call = call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef 0, i64 noundef 0, i32 noundef %16)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip2(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level, i32 noundef %raw) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %raw, ptr %raw.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %zipfi.addr, align 8
  %3 = load ptr, ptr %extrafield_local.addr, align 8
  %4 = load i32, ptr %size_extrafield_local.addr, align 4
  %5 = load ptr, ptr %extrafield_global.addr, align 8
  %6 = load i32, ptr %size_extrafield_global.addr, align 4
  %7 = load ptr, ptr %comment.addr, align 8
  %8 = load i32, ptr %method.addr, align 4
  %9 = load i32, ptr %level.addr, align 4
  %10 = load i32, ptr %raw.addr, align 4
  %call = call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip2_64(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level, i32 noundef %raw, i32 noundef %zip64) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %raw.addr = alloca i32, align 4
  %zip64.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %raw, ptr %raw.addr, align 4
  store i32 %zip64, ptr %zip64.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %zipfi.addr, align 8
  %3 = load ptr, ptr %extrafield_local.addr, align 8
  %4 = load i32, ptr %size_extrafield_local.addr, align 4
  %5 = load ptr, ptr %extrafield_global.addr, align 8
  %6 = load i32, ptr %size_extrafield_global.addr, align 4
  %7 = load ptr, ptr %comment.addr, align 8
  %8 = load i32, ptr %method.addr, align 4
  %9 = load i32, ptr %level.addr, align 4
  %10 = load i32, ptr %raw.addr, align 4
  %11 = load i32, ptr %zip64.addr, align 4
  %call = call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %11)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip64(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level, i32 noundef %zip64) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %zip64.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  store i32 %zip64, ptr %zip64.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %zipfi.addr, align 8
  %3 = load ptr, ptr %extrafield_local.addr, align 8
  %4 = load i32, ptr %size_extrafield_local.addr, align 4
  %5 = load ptr, ptr %extrafield_global.addr, align 8
  %6 = load i32, ptr %size_extrafield_global.addr, align 4
  %7 = load ptr, ptr %comment.addr, align 8
  %8 = load i32, ptr %method.addr, align 4
  %9 = load i32, ptr %level.addr, align 4
  %10 = load i32, ptr %zip64.addr, align 4
  %call = call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %10)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipOpenNewFileInZip(ptr noundef %file, ptr noundef %filename, ptr noundef %zipfi, ptr noundef %extrafield_local, i32 noundef %size_extrafield_local, ptr noundef %extrafield_global, i32 noundef %size_extrafield_global, ptr noundef %comment, i32 noundef %method, i32 noundef %level) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %zipfi.addr = alloca ptr, align 8
  %extrafield_local.addr = alloca ptr, align 8
  %size_extrafield_local.addr = alloca i32, align 4
  %extrafield_global.addr = alloca ptr, align 8
  %size_extrafield_global.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  %method.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %zipfi, ptr %zipfi.addr, align 8
  store ptr %extrafield_local, ptr %extrafield_local.addr, align 8
  store i32 %size_extrafield_local, ptr %size_extrafield_local.addr, align 4
  store ptr %extrafield_global, ptr %extrafield_global.addr, align 8
  store i32 %size_extrafield_global, ptr %size_extrafield_global.addr, align 4
  store ptr %comment, ptr %comment.addr, align 8
  store i32 %method, ptr %method.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  %0 = load ptr, ptr %file.addr, align 8
  %1 = load ptr, ptr %filename.addr, align 8
  %2 = load ptr, ptr %zipfi.addr, align 8
  %3 = load ptr, ptr %extrafield_local.addr, align 8
  %4 = load i32, ptr %size_extrafield_local.addr, align 4
  %5 = load ptr, ptr %extrafield_global.addr, align 8
  %6 = load i32, ptr %size_extrafield_global.addr, align 4
  %7 = load ptr, ptr %comment.addr, align 8
  %8 = load i32, ptr %method.addr, align 4
  %9 = load i32, ptr %level.addr, align 4
  %call = call i32 @zipOpenNewFileInZip4_64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 0, i32 noundef -15, i32 noundef 8, i32 noundef 0, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipWriteInFileInZip(ptr noundef %file, ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %zi = alloca ptr, align 8
  %err = alloca i32, align 4
  %uTotalOutBefore = alloca i64, align 8
  %copy_this = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %err, align 4
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -102, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %zi, align 8
  %crc32 = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 4, i32 13
  %3 = load i64, ptr %crc32, align 8
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i32, ptr %len.addr, align 4
  %call = call i64 @crc32(i64 noundef %3, ptr noundef %4, i32 noundef %5) #13
  %crc325 = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 4, i32 13
  store i64 %call, ptr %crc325, align 8
  %6 = load ptr, ptr %zi, align 8
  %ci6 = getelementptr inbounds %struct.zip64_internal, ptr %6, i64 0, i32 4
  store ptr %4, ptr %ci6, align 8
  %7 = load i32, ptr %len.addr, align 4
  %avail_in = getelementptr inbounds %struct.zip64_internal, ptr %6, i64 0, i32 4, i32 0, i32 1
  store i32 %7, ptr %avail_in, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end102, %if.end3
  %8 = load i32, ptr %err, align 4
  %cmp9 = icmp eq i32 %8, 0
  br i1 %cmp9, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %zi, align 8
  %avail_in12 = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 4, i32 0, i32 1
  %10 = load i32, ptr %avail_in12, align 8
  %cmp13 = icmp ne i32 %10, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %11 = load ptr, ptr %zi, align 8
  %avail_out = getelementptr inbounds %struct.zip64_internal, ptr %11, i64 0, i32 4, i32 0, i32 4
  %12 = load i32, ptr %avail_out, align 8
  %cmp16 = icmp eq i32 %12, 0
  br i1 %cmp16, label %if.then17, label %if.end28

if.then17:                                        ; preds = %while.body
  %13 = load ptr, ptr %zi, align 8
  %call18 = call i32 @zip64FlushWriteBuffer(ptr noundef %13)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  store i32 -1, ptr %err, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %14 = load ptr, ptr %zi, align 8
  %avail_out24 = getelementptr inbounds %struct.zip64_internal, ptr %14, i64 0, i32 4, i32 0, i32 4
  store i32 65536, ptr %avail_out24, align 8
  %buffered_data = getelementptr inbounds %struct.zip64_internal, ptr %14, i64 0, i32 4, i32 11
  %next_out = getelementptr inbounds %struct.zip64_internal, ptr %14, i64 0, i32 4, i32 0, i32 3
  store ptr %buffered_data, ptr %next_out, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end21, %while.body
  %15 = load i32, ptr %err, align 4
  %cmp29.not = icmp eq i32 %15, 0
  br i1 %cmp29.not, label %if.end31, label %while.end

if.end31:                                         ; preds = %if.end28
  %16 = load ptr, ptr %zi, align 8
  %method = getelementptr inbounds %struct.zip64_internal, ptr %16, i64 0, i32 4, i32 9
  %17 = load i32, ptr %method, align 8
  %cmp33 = icmp eq i32 %17, 8
  br i1 %cmp33, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end31
  %18 = load ptr, ptr %zi, align 8
  %raw = getelementptr inbounds %struct.zip64_internal, ptr %18, i64 0, i32 4, i32 10
  %19 = load i32, ptr %raw, align 4
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.then35, label %if.else

if.then35:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %zi, align 8
  %total_out = getelementptr inbounds %struct.zip64_internal, ptr %20, i64 0, i32 4, i32 0, i32 5
  %21 = load i64, ptr %total_out, align 8
  store i64 %21, ptr %uTotalOutBefore, align 8
  %ci38 = getelementptr inbounds %struct.zip64_internal, ptr %20, i64 0, i32 4
  %call40 = call i32 @deflate(ptr noundef nonnull %ci38, i32 noundef 0) #13
  store i32 %call40, ptr %err, align 4
  %22 = load ptr, ptr %zi, align 8
  %total_out43 = getelementptr inbounds %struct.zip64_internal, ptr %22, i64 0, i32 4, i32 0, i32 5
  %23 = load i64, ptr %total_out43, align 8
  %24 = load i64, ptr %uTotalOutBefore, align 8
  %sub = sub i64 %23, %24
  %conv = trunc i64 %sub to i32
  %pos_in_buffered_data = getelementptr inbounds %struct.zip64_internal, ptr %22, i64 0, i32 4, i32 2
  %25 = load i32, ptr %pos_in_buffered_data, align 4
  %add = add i32 %25, %conv
  store i32 %add, ptr %pos_in_buffered_data, align 4
  br label %if.end102

if.else:                                          ; preds = %land.lhs.true, %if.end31
  %26 = load ptr, ptr %zi, align 8
  %avail_in47 = getelementptr inbounds %struct.zip64_internal, ptr %26, i64 0, i32 4, i32 0, i32 1
  %27 = load i32, ptr %avail_in47, align 8
  %avail_out50 = getelementptr inbounds %struct.zip64_internal, ptr %26, i64 0, i32 4, i32 0, i32 4
  %28 = load i32, ptr %avail_out50, align 8
  %cmp51 = icmp ult i32 %27, %28
  %29 = load ptr, ptr %zi, align 8
  %avail_out60 = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 4, i32 0, i32 4
  %30 = load ptr, ptr %zi, align 8
  %avail_in56 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 4, i32 0, i32 1
  %storemerge.in = select i1 %cmp51, ptr %avail_in56, ptr %avail_out60
  %storemerge = load i32, ptr %storemerge.in, align 8
  store i32 %storemerge, ptr %copy_this, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.else
  %storemerge1 = phi i32 [ 0, %if.else ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %31 = load i32, ptr %copy_this, align 4
  %cmp62 = icmp ult i32 %storemerge1, %31
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %zi, align 8
  %ci64 = getelementptr inbounds %struct.zip64_internal, ptr %32, i64 0, i32 4
  %33 = load ptr, ptr %ci64, align 8
  %34 = load i32, ptr %i, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  %35 = load i8, ptr %add.ptr, align 1
  %36 = load ptr, ptr %zi, align 8
  %next_out69 = getelementptr inbounds %struct.zip64_internal, ptr %36, i64 0, i32 4, i32 0, i32 3
  %37 = load ptr, ptr %next_out69, align 8
  %38 = load i32, ptr %i, align 4
  %idx.ext70 = zext i32 %38 to i64
  %add.ptr71 = getelementptr inbounds i8, ptr %37, i64 %idx.ext70
  store i8 %35, ptr %add.ptr71, align 1
  %39 = load i32, ptr %i, align 4
  %inc = add i32 %39, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %40 = load i32, ptr %copy_this, align 4
  %41 = load ptr, ptr %zi, align 8
  %avail_in74 = getelementptr inbounds %struct.zip64_internal, ptr %41, i64 0, i32 4, i32 0, i32 1
  %42 = load i32, ptr %avail_in74, align 8
  %sub75 = sub i32 %42, %40
  store i32 %sub75, ptr %avail_in74, align 8
  %avail_out78 = getelementptr inbounds %struct.zip64_internal, ptr %41, i64 0, i32 4, i32 0, i32 4
  %43 = load i32, ptr %avail_out78, align 8
  %sub79 = sub i32 %43, %40
  store i32 %sub79, ptr %avail_out78, align 8
  %44 = load i32, ptr %copy_this, align 4
  %45 = load ptr, ptr %zi, align 8
  %ci80 = getelementptr inbounds %struct.zip64_internal, ptr %45, i64 0, i32 4
  %46 = load ptr, ptr %ci80, align 8
  %idx.ext83 = zext i32 %44 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %46, i64 %idx.ext83
  store ptr %add.ptr84, ptr %ci80, align 8
  %47 = load i32, ptr %copy_this, align 4
  %48 = load ptr, ptr %zi, align 8
  %next_out87 = getelementptr inbounds %struct.zip64_internal, ptr %48, i64 0, i32 4, i32 0, i32 3
  %49 = load ptr, ptr %next_out87, align 8
  %idx.ext88 = zext i32 %47 to i64
  %add.ptr89 = getelementptr inbounds i8, ptr %49, i64 %idx.ext88
  store ptr %add.ptr89, ptr %next_out87, align 8
  %50 = load i32, ptr %copy_this, align 4
  %conv90 = zext i32 %50 to i64
  %51 = load ptr, ptr %zi, align 8
  %total_in = getelementptr inbounds %struct.zip64_internal, ptr %51, i64 0, i32 4, i32 0, i32 2
  %52 = load i64, ptr %total_in, align 8
  %add93 = add i64 %52, %conv90
  store i64 %add93, ptr %total_in, align 8
  %53 = load i32, ptr %copy_this, align 4
  %conv94 = zext i32 %53 to i64
  %54 = load ptr, ptr %zi, align 8
  %total_out97 = getelementptr inbounds %struct.zip64_internal, ptr %54, i64 0, i32 4, i32 0, i32 5
  %55 = load i64, ptr %total_out97, align 8
  %add98 = add i64 %55, %conv94
  store i64 %add98, ptr %total_out97, align 8
  %56 = load i32, ptr %copy_this, align 4
  %pos_in_buffered_data100 = getelementptr inbounds %struct.zip64_internal, ptr %54, i64 0, i32 4, i32 2
  %57 = load i32, ptr %pos_in_buffered_data100, align 4
  %add101 = add i32 %57, %56
  store i32 %add101, ptr %pos_in_buffered_data100, align 4
  br label %if.end102

if.end102:                                        ; preds = %for.end, %if.then35
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond, %if.end28, %land.rhs
  %58 = load i32, ptr %err, align 4
  store i32 %58, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then2, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64FlushWriteBuffer(ptr noundef %zi) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %zi, ptr %zi.addr, align 8
  store i32 0, ptr %err, align 4
  %encrypt = getelementptr inbounds %struct.zip64_internal, ptr %zi, i64 0, i32 4, i32 14
  %0 = load i32, ptr %encrypt, align 8
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %for.cond

for.cond:                                         ; preds = %entry, %for.body
  %storemerge = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  store i32 %storemerge, ptr %i, align 4
  %1 = load ptr, ptr %zi.addr, align 8
  %pos_in_buffered_data = getelementptr inbounds %struct.zip64_internal, ptr %1, i64 0, i32 4, i32 2
  %2 = load i32, ptr %pos_in_buffered_data, align 4
  %cmp2 = icmp ult i32 %storemerge, %2
  br i1 %cmp2, label %for.body, label %if.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %zi.addr, align 8
  %keys = getelementptr inbounds %struct.zip64_internal, ptr %3, i64 0, i32 4, i32 19
  %pcrc_32_tab = getelementptr inbounds %struct.zip64_internal, ptr %3, i64 0, i32 4, i32 20
  %4 = load ptr, ptr %pcrc_32_tab, align 8
  %call = call i32 @decrypt_byte(ptr noundef nonnull %keys, ptr noundef %4)
  store i32 %call, ptr %t, align 4
  %keys6 = getelementptr inbounds %struct.zip64_internal, ptr %3, i64 0, i32 4, i32 19
  %5 = load ptr, ptr %zi.addr, align 8
  %pcrc_32_tab9 = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 4, i32 20
  %6 = load ptr, ptr %pcrc_32_tab9, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 4, i32 11, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %call11 = call i32 @update_keys(ptr noundef nonnull %keys6, ptr noundef %6, i32 noundef %conv)
  %9 = load i32, ptr %t, align 4
  %10 = load ptr, ptr %zi.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom16 = zext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds %struct.zip64_internal, ptr %10, i64 0, i32 4, i32 11, i64 %idxprom16
  %12 = load i8, ptr %arrayidx17, align 1
  %13 = trunc i32 %9 to i8
  %conv19 = xor i8 %12, %13
  %14 = load ptr, ptr %zi.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom22 = zext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds %struct.zip64_internal, ptr %14, i64 0, i32 4, i32 11, i64 %idxprom22
  store i8 %conv19, ptr %arrayidx23, align 1
  %16 = load i32, ptr %i, align 4
  %inc = add i32 %16, 1
  br label %for.cond, !llvm.loop !21

if.end:                                           ; preds = %for.cond, %entry
  %17 = load ptr, ptr %zi.addr, align 8
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %17, i64 0, i32 2
  %18 = load ptr, ptr %zwrite_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %opaque, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %filestream, align 8
  %21 = load ptr, ptr %zi.addr, align 8
  %buffered_data27 = getelementptr inbounds %struct.zip64_internal, ptr %21, i64 0, i32 4, i32 11
  %pos_in_buffered_data30 = getelementptr inbounds %struct.zip64_internal, ptr %21, i64 0, i32 4, i32 2
  %22 = load i32, ptr %pos_in_buffered_data30, align 4
  %conv31 = zext i32 %22 to i64
  %call32 = call i64 %18(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %buffered_data27, i64 noundef %conv31) #13
  %pos_in_buffered_data34 = getelementptr inbounds %struct.zip64_internal, ptr %21, i64 0, i32 4, i32 2
  %23 = load i32, ptr %pos_in_buffered_data34, align 4
  %conv35 = zext i32 %23 to i64
  %cmp36.not = icmp eq i64 %call32, %conv35
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end
  store i32 -1, ptr %err, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end
  %24 = load ptr, ptr %zi.addr, align 8
  %pos_in_buffered_data41 = getelementptr inbounds %struct.zip64_internal, ptr %24, i64 0, i32 4, i32 2
  %25 = load i32, ptr %pos_in_buffered_data41, align 4
  %conv42 = zext i32 %25 to i64
  %totalCompressedData = getelementptr inbounds %struct.zip64_internal, ptr %24, i64 0, i32 4, i32 17
  %26 = load i64, ptr %totalCompressedData, align 8
  %add = add i64 %26, %conv42
  store i64 %add, ptr %totalCompressedData, align 8
  %27 = load ptr, ptr %zi.addr, align 8
  %total_in = getelementptr inbounds %struct.zip64_internal, ptr %27, i64 0, i32 4, i32 0, i32 2
  %28 = load i64, ptr %total_in, align 8
  %totalUncompressedData = getelementptr inbounds %struct.zip64_internal, ptr %27, i64 0, i32 4, i32 18
  %29 = load i64, ptr %totalUncompressedData, align 8
  %add46 = add i64 %29, %28
  store i64 %add46, ptr %totalUncompressedData, align 8
  %30 = load ptr, ptr %zi.addr, align 8
  %total_in49 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 4, i32 0, i32 2
  store i64 0, ptr %total_in49, align 8
  %pos_in_buffered_data51 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 4, i32 2
  store i32 0, ptr %pos_in_buffered_data51, align 4
  %31 = load i32, ptr %err, align 4
  ret i32 %31
}

declare i32 @deflate(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define i32 @zipCloseFileInZipRaw(ptr noundef %file, i64 noundef %uncompressed_size, i64 noundef %crc32) #0 {
entry:
  %call = call i32 @zipCloseFileInZipRaw64(ptr noundef %file, i64 noundef %uncompressed_size, i64 noundef %crc32)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipCloseFileInZipRaw64(ptr noundef %file, i64 noundef %uncompressed_size, i64 noundef %crc32) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %uncompressed_size.addr = alloca i64, align 8
  %crc32.addr = alloca i64, align 8
  %zi = alloca ptr, align 8
  %compressed_size = alloca i64, align 8
  %invalidValue = alloca i64, align 8
  %datasize = alloca i32, align 4
  %err = alloca i32, align 4
  %uTotalOutBefore = alloca i64, align 8
  %tmp_err = alloca i32, align 4
  %p = alloca ptr, align 8
  %cur_pos_inzip = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  store i64 %uncompressed_size, ptr %uncompressed_size.addr, align 8
  store i64 %crc32, ptr %crc32.addr, align 8
  store i64 4294967295, ptr %invalidValue, align 8
  store i32 0, ptr %datasize, align 4
  store i32 0, ptr %err, align 4
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -102, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -102, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %zi, align 8
  %avail_in = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 4, i32 0, i32 1
  store i32 0, ptr %avail_in, align 8
  %method = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 4, i32 9
  %3 = load i32, ptr %method, align 8
  %cmp5 = icmp eq i32 %3, 8
  br i1 %cmp5, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.end3
  %4 = load ptr, ptr %zi, align 8
  %raw = getelementptr inbounds %struct.zip64_internal, ptr %4, i64 0, i32 4, i32 10
  %5 = load i32, ptr %raw, align 4
  %tobool.not = icmp eq i32 %5, 0
  %6 = load i32, ptr %err, align 4
  %cmp8 = icmp eq i32 %6, 0
  %or.cond3 = select i1 %tobool.not, i1 %cmp8, i1 false
  br i1 %or.cond3, label %while.body, label %if.end42

while.body:                                       ; preds = %land.lhs.true, %if.end22
  %7 = load ptr, ptr %zi, align 8
  %avail_out = getelementptr inbounds %struct.zip64_internal, ptr %7, i64 0, i32 4, i32 0, i32 4
  %8 = load i32, ptr %avail_out, align 8
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %while.body
  %9 = load ptr, ptr %zi, align 8
  %call = call i32 @zip64FlushWriteBuffer(ptr noundef %9)
  %cmp13 = icmp eq i32 %call, -1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  store i32 -1, ptr %err, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %10 = load ptr, ptr %zi, align 8
  %avail_out18 = getelementptr inbounds %struct.zip64_internal, ptr %10, i64 0, i32 4, i32 0, i32 4
  store i32 65536, ptr %avail_out18, align 8
  %buffered_data = getelementptr inbounds %struct.zip64_internal, ptr %10, i64 0, i32 4, i32 11
  %next_out = getelementptr inbounds %struct.zip64_internal, ptr %10, i64 0, i32 4, i32 0, i32 3
  store ptr %buffered_data, ptr %next_out, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end15, %while.body
  %11 = load ptr, ptr %zi, align 8
  %total_out = getelementptr inbounds %struct.zip64_internal, ptr %11, i64 0, i32 4, i32 0, i32 5
  %12 = load i64, ptr %total_out, align 8
  store i64 %12, ptr %uTotalOutBefore, align 8
  %ci25 = getelementptr inbounds %struct.zip64_internal, ptr %11, i64 0, i32 4
  %call27 = call i32 @deflate(ptr noundef nonnull %ci25, i32 noundef 4) #13
  store i32 %call27, ptr %err, align 4
  %13 = load ptr, ptr %zi, align 8
  %total_out30 = getelementptr inbounds %struct.zip64_internal, ptr %13, i64 0, i32 4, i32 0, i32 5
  %14 = load i64, ptr %total_out30, align 8
  %15 = load i64, ptr %uTotalOutBefore, align 8
  %sub = sub i64 %14, %15
  %conv = trunc i64 %sub to i32
  %pos_in_buffered_data = getelementptr inbounds %struct.zip64_internal, ptr %13, i64 0, i32 4, i32 2
  %16 = load i32, ptr %pos_in_buffered_data, align 4
  %add = add i32 %16, %conv
  store i32 %add, ptr %pos_in_buffered_data, align 4
  %.old = load i32, ptr %err, align 4
  %cmp8.old = icmp eq i32 %.old, 0
  br i1 %cmp8.old, label %while.body, label %if.end42

if.end42:                                         ; preds = %if.end3, %land.lhs.true, %if.end22
  %17 = load i32, ptr %err, align 4
  %cmp43 = icmp eq i32 %17, 1
  %spec.store.select = select i1 %cmp43, i32 0, i32 %17
  store i32 %spec.store.select, ptr %err, align 4
  %18 = load ptr, ptr %zi, align 8
  %pos_in_buffered_data48 = getelementptr inbounds %struct.zip64_internal, ptr %18, i64 0, i32 4, i32 2
  %19 = load i32, ptr %pos_in_buffered_data48, align 4
  %cmp49.not = icmp ne i32 %19, 0
  %20 = load i32, ptr %err, align 4
  %cmp52 = icmp eq i32 %20, 0
  %or.cond = select i1 %cmp49.not, i1 %cmp52, i1 false
  br i1 %or.cond, label %if.then54, label %if.end60

if.then54:                                        ; preds = %if.end42
  %21 = load ptr, ptr %zi, align 8
  %call55 = call i32 @zip64FlushWriteBuffer(ptr noundef %21)
  %cmp56 = icmp eq i32 %call55, -1
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.then54
  store i32 -1, ptr %err, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %if.then58, %if.end42
  %22 = load ptr, ptr %zi, align 8
  %method62 = getelementptr inbounds %struct.zip64_internal, ptr %22, i64 0, i32 4, i32 9
  %23 = load i32, ptr %method62, align 8
  %cmp63 = icmp eq i32 %23, 8
  br i1 %cmp63, label %land.lhs.true65, label %if.end78

land.lhs.true65:                                  ; preds = %if.end60
  %24 = load ptr, ptr %zi, align 8
  %raw67 = getelementptr inbounds %struct.zip64_internal, ptr %24, i64 0, i32 4, i32 10
  %25 = load i32, ptr %raw67, align 4
  %tobool68.not = icmp eq i32 %25, 0
  br i1 %tobool68.not, label %if.then69, label %if.end78

if.then69:                                        ; preds = %land.lhs.true65
  %26 = load ptr, ptr %zi, align 8
  %ci70 = getelementptr inbounds %struct.zip64_internal, ptr %26, i64 0, i32 4
  %call72 = call i32 @deflateEnd(ptr noundef nonnull %ci70) #13
  store i32 %call72, ptr %tmp_err, align 4
  %27 = load i32, ptr %err, align 4
  %cmp73 = icmp eq i32 %27, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then69
  %28 = load i32, ptr %tmp_err, align 4
  store i32 %28, ptr %err, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then69
  %29 = load ptr, ptr %zi, align 8
  %stream_initialised = getelementptr inbounds %struct.zip64_internal, ptr %29, i64 0, i32 4, i32 1
  store i32 0, ptr %stream_initialised, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %land.lhs.true65, %if.end60
  %30 = load ptr, ptr %zi, align 8
  %raw80 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 4, i32 10
  %31 = load i32, ptr %raw80, align 4
  %tobool81.not = icmp eq i32 %31, 0
  br i1 %tobool81.not, label %if.then82, label %if.end86

if.then82:                                        ; preds = %if.end78
  %32 = load ptr, ptr %zi, align 8
  %crc3284 = getelementptr inbounds %struct.zip64_internal, ptr %32, i64 0, i32 4, i32 13
  %33 = load i64, ptr %crc3284, align 8
  store i64 %33, ptr %crc32.addr, align 8
  %totalUncompressedData = getelementptr inbounds %struct.zip64_internal, ptr %32, i64 0, i32 4, i32 18
  %34 = load i64, ptr %totalUncompressedData, align 8
  store i64 %34, ptr %uncompressed_size.addr, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end78
  %35 = load ptr, ptr %zi, align 8
  %totalCompressedData = getelementptr inbounds %struct.zip64_internal, ptr %35, i64 0, i32 4, i32 17
  %36 = load i64, ptr %totalCompressedData, align 8
  store i64 %36, ptr %compressed_size, align 8
  %crypt_header_size = getelementptr inbounds %struct.zip64_internal, ptr %35, i64 0, i32 4, i32 21
  %37 = load i32, ptr %crypt_header_size, align 8
  %conv89 = zext i32 %37 to i64
  %add90 = add i64 %36, %conv89
  store i64 %add90, ptr %compressed_size, align 8
  %cmp91 = icmp ugt i64 %add90, 4294967294
  %38 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp93 = icmp ugt i64 %38, 4294967294
  %or.cond1 = select i1 %cmp91, i1 true, i1 %cmp93
  br i1 %or.cond1, label %if.then99, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.end86
  %39 = load ptr, ptr %zi, align 8
  %pos_local_header = getelementptr inbounds %struct.zip64_internal, ptr %39, i64 0, i32 4, i32 3
  %40 = load i64, ptr %pos_local_header, align 8
  %cmp97 = icmp ugt i64 %40, 4294967294
  br i1 %cmp97, label %if.then99, label %if.end104

if.then99:                                        ; preds = %lor.lhs.false95, %if.end86
  %41 = load ptr, ptr %zi, align 8
  %central_header = getelementptr inbounds %struct.zip64_internal, ptr %41, i64 0, i32 4, i32 4
  %42 = load ptr, ptr %central_header, align 8
  %add.ptr = getelementptr inbounds i8, ptr %42, i64 4
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr, i64 noundef 45, i32 noundef 2)
  %central_header102 = getelementptr inbounds %struct.zip64_internal, ptr %41, i64 0, i32 4, i32 4
  %43 = load ptr, ptr %central_header102, align 8
  %add.ptr103 = getelementptr inbounds i8, ptr %43, i64 6
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr103, i64 noundef 45, i32 noundef 2)
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %lor.lhs.false95
  %44 = load ptr, ptr %zi, align 8
  %central_header106 = getelementptr inbounds %struct.zip64_internal, ptr %44, i64 0, i32 4, i32 4
  %45 = load ptr, ptr %central_header106, align 8
  %add.ptr107 = getelementptr inbounds i8, ptr %45, i64 16
  %46 = load i64, ptr %crc32.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr107, i64 noundef %46, i32 noundef 4)
  %47 = load i64, ptr %compressed_size, align 8
  %cmp108 = icmp ugt i64 %47, 4294967294
  br i1 %cmp108, label %if.then110, label %if.else114

if.then110:                                       ; preds = %if.end104
  %48 = load ptr, ptr %zi, align 8
  %central_header112 = getelementptr inbounds %struct.zip64_internal, ptr %48, i64 0, i32 4, i32 4
  %49 = load ptr, ptr %central_header112, align 8
  %add.ptr113 = getelementptr inbounds i8, ptr %49, i64 20
  %50 = load i64, ptr %invalidValue, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr113, i64 noundef %50, i32 noundef 4)
  br label %if.end118

if.else114:                                       ; preds = %if.end104
  %51 = load ptr, ptr %zi, align 8
  %central_header116 = getelementptr inbounds %struct.zip64_internal, ptr %51, i64 0, i32 4, i32 4
  %52 = load ptr, ptr %central_header116, align 8
  %add.ptr117 = getelementptr inbounds i8, ptr %52, i64 20
  %53 = load i64, ptr %compressed_size, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr117, i64 noundef %53, i32 noundef 4)
  br label %if.end118

if.end118:                                        ; preds = %if.else114, %if.then110
  %54 = load ptr, ptr %zi, align 8
  %data_type = getelementptr inbounds %struct.zip64_internal, ptr %54, i64 0, i32 4, i32 0, i32 11
  %55 = load i32, ptr %data_type, align 8
  %cmp121 = icmp eq i32 %55, 1
  br i1 %cmp121, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.end118
  %56 = load ptr, ptr %zi, align 8
  %central_header125 = getelementptr inbounds %struct.zip64_internal, ptr %56, i64 0, i32 4, i32 4
  %57 = load ptr, ptr %central_header125, align 8
  %add.ptr126 = getelementptr inbounds i8, ptr %57, i64 36
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr126, i64 noundef 1, i32 noundef 2)
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end118
  %58 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp128 = icmp ugt i64 %58, 4294967294
  br i1 %cmp128, label %if.then130, label %if.else134

if.then130:                                       ; preds = %if.end127
  %59 = load ptr, ptr %zi, align 8
  %central_header132 = getelementptr inbounds %struct.zip64_internal, ptr %59, i64 0, i32 4, i32 4
  %60 = load ptr, ptr %central_header132, align 8
  %add.ptr133 = getelementptr inbounds i8, ptr %60, i64 24
  %61 = load i64, ptr %invalidValue, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr133, i64 noundef %61, i32 noundef 4)
  br label %if.end138

if.else134:                                       ; preds = %if.end127
  %62 = load ptr, ptr %zi, align 8
  %central_header136 = getelementptr inbounds %struct.zip64_internal, ptr %62, i64 0, i32 4, i32 4
  %63 = load ptr, ptr %central_header136, align 8
  %add.ptr137 = getelementptr inbounds i8, ptr %63, i64 24
  %64 = load i64, ptr %uncompressed_size.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr137, i64 noundef %64, i32 noundef 4)
  br label %if.end138

if.end138:                                        ; preds = %if.else134, %if.then130
  %65 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp139 = icmp ugt i64 %65, 4294967294
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end138
  %66 = load i32, ptr %datasize, align 4
  %add142 = add i32 %66, 8
  store i32 %add142, ptr %datasize, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.end138
  %67 = load i64, ptr %compressed_size, align 8
  %cmp144 = icmp ugt i64 %67, 4294967294
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end143
  %68 = load i32, ptr %datasize, align 4
  %add147 = add i32 %68, 8
  store i32 %add147, ptr %datasize, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end143
  %69 = load ptr, ptr %zi, align 8
  %pos_local_header150 = getelementptr inbounds %struct.zip64_internal, ptr %69, i64 0, i32 4, i32 3
  %70 = load i64, ptr %pos_local_header150, align 8
  %cmp151 = icmp ugt i64 %70, 4294967294
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.end148
  %71 = load i32, ptr %datasize, align 4
  %add154 = add i32 %71, 8
  store i32 %add154, ptr %datasize, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.end148
  %72 = load i32, ptr %datasize, align 4
  %cmp156.not = icmp eq i32 %72, 0
  br i1 %cmp156.not, label %if.end211, label %if.then158

if.then158:                                       ; preds = %if.end155
  store ptr null, ptr %p, align 8
  %73 = load i32, ptr %datasize, align 4
  %add159 = add i32 %73, 4
  %conv160 = zext i32 %add159 to i64
  %74 = load ptr, ptr %zi, align 8
  %size_centralExtraFree = getelementptr inbounds %struct.zip64_internal, ptr %74, i64 0, i32 4, i32 7
  %75 = load i64, ptr %size_centralExtraFree, align 8
  %cmp162 = icmp ult i64 %75, %conv160
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %if.then158
  store i32 -103, ptr %retval, align 4
  br label %return

if.end165:                                        ; preds = %if.then158
  %76 = load ptr, ptr %zi, align 8
  %central_header167 = getelementptr inbounds %struct.zip64_internal, ptr %76, i64 0, i32 4, i32 4
  %77 = load ptr, ptr %central_header167, align 8
  %size_centralheader = getelementptr inbounds %struct.zip64_internal, ptr %76, i64 0, i32 4, i32 6
  %78 = load i64, ptr %size_centralheader, align 8
  %add.ptr169 = getelementptr inbounds i8, ptr %77, i64 %78
  store ptr %add.ptr169, ptr %p, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %add.ptr169, i64 noundef 1, i32 noundef 2)
  %add.ptr170 = getelementptr inbounds i8, ptr %add.ptr169, i64 2
  store ptr %add.ptr170, ptr %p, align 8
  %79 = load i32, ptr %datasize, align 4
  %conv171 = zext i32 %79 to i64
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr170, i64 noundef %conv171, i32 noundef 2)
  %add.ptr172 = getelementptr inbounds i8, ptr %add.ptr170, i64 2
  store ptr %add.ptr172, ptr %p, align 8
  %80 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp173 = icmp ugt i64 %80, 4294967294
  br i1 %cmp173, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.end165
  %81 = load ptr, ptr %p, align 8
  %82 = load i64, ptr %uncompressed_size.addr, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %81, i64 noundef %82, i32 noundef 8)
  %add.ptr176 = getelementptr inbounds i8, ptr %81, i64 8
  store ptr %add.ptr176, ptr %p, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.end165
  %83 = load i64, ptr %compressed_size, align 8
  %cmp178 = icmp ugt i64 %83, 4294967294
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end177
  %84 = load ptr, ptr %p, align 8
  %85 = load i64, ptr %compressed_size, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %84, i64 noundef %85, i32 noundef 8)
  %add.ptr181 = getelementptr inbounds i8, ptr %84, i64 8
  store ptr %add.ptr181, ptr %p, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.end177
  %86 = load ptr, ptr %zi, align 8
  %pos_local_header184 = getelementptr inbounds %struct.zip64_internal, ptr %86, i64 0, i32 4, i32 3
  %87 = load i64, ptr %pos_local_header184, align 8
  %cmp185 = icmp ugt i64 %87, 4294967294
  br i1 %cmp185, label %if.then187, label %if.end191

if.then187:                                       ; preds = %if.end182
  %88 = load ptr, ptr %p, align 8
  %89 = load ptr, ptr %zi, align 8
  %pos_local_header189 = getelementptr inbounds %struct.zip64_internal, ptr %89, i64 0, i32 4, i32 3
  %90 = load i64, ptr %pos_local_header189, align 8
  call void @zip64local_putValue_inmemory(ptr noundef %88, i64 noundef %90, i32 noundef 8)
  %add.ptr190 = getelementptr inbounds i8, ptr %88, i64 8
  store ptr %add.ptr190, ptr %p, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %if.end182
  %91 = load i32, ptr %datasize, align 4
  %add192 = add i32 %91, 4
  %conv193 = zext i32 %add192 to i64
  %92 = load ptr, ptr %zi, align 8
  %size_centralExtraFree195 = getelementptr inbounds %struct.zip64_internal, ptr %92, i64 0, i32 4, i32 7
  %93 = load i64, ptr %size_centralExtraFree195, align 8
  %sub196 = sub i64 %93, %conv193
  store i64 %sub196, ptr %size_centralExtraFree195, align 8
  %94 = load i32, ptr %datasize, align 4
  %add197 = add i32 %94, 4
  %conv198 = zext i32 %add197 to i64
  %95 = load ptr, ptr %zi, align 8
  %size_centralheader200 = getelementptr inbounds %struct.zip64_internal, ptr %95, i64 0, i32 4, i32 6
  %96 = load i64, ptr %size_centralheader200, align 8
  %add201 = add i64 %96, %conv198
  store i64 %add201, ptr %size_centralheader200, align 8
  %97 = load i32, ptr %datasize, align 4
  %add202 = add i32 %97, 4
  %conv203 = zext i32 %add202 to i64
  %98 = load ptr, ptr %zi, align 8
  %size_centralExtra = getelementptr inbounds %struct.zip64_internal, ptr %98, i64 0, i32 4, i32 5
  %99 = load i64, ptr %size_centralExtra, align 8
  %add205 = add i64 %99, %conv203
  store i64 %add205, ptr %size_centralExtra, align 8
  %central_header207 = getelementptr inbounds %struct.zip64_internal, ptr %98, i64 0, i32 4, i32 4
  %100 = load ptr, ptr %central_header207, align 8
  %add.ptr208 = getelementptr inbounds i8, ptr %100, i64 30
  %101 = load ptr, ptr %zi, align 8
  %size_centralExtra210 = getelementptr inbounds %struct.zip64_internal, ptr %101, i64 0, i32 4, i32 5
  %102 = load i64, ptr %size_centralExtra210, align 8
  call void @zip64local_putValue_inmemory(ptr noundef nonnull %add.ptr208, i64 noundef %102, i32 noundef 2)
  br label %if.end211

if.end211:                                        ; preds = %if.end191, %if.end155
  %103 = load i32, ptr %err, align 4
  %cmp212 = icmp eq i32 %103, 0
  br i1 %cmp212, label %if.then214, label %if.end220

if.then214:                                       ; preds = %if.end211
  %104 = load ptr, ptr %zi, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %104, i64 0, i32 2
  %central_header216 = getelementptr inbounds %struct.zip64_internal, ptr %104, i64 0, i32 4, i32 4
  %105 = load ptr, ptr %central_header216, align 8
  %size_centralheader218 = getelementptr inbounds %struct.zip64_internal, ptr %104, i64 0, i32 4, i32 6
  %106 = load i64, ptr %size_centralheader218, align 8
  %call219 = call i32 @add_data_in_datablock(ptr noundef nonnull %central_dir, ptr noundef %105, i64 noundef %106)
  store i32 %call219, ptr %err, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then214, %if.end211
  %107 = load ptr, ptr %zi, align 8
  %central_header222 = getelementptr inbounds %struct.zip64_internal, ptr %107, i64 0, i32 4, i32 4
  %108 = load ptr, ptr %central_header222, align 8
  call void @free(ptr noundef %108) #13
  %109 = load i32, ptr %err, align 4
  %cmp223 = icmp eq i32 %109, 0
  br i1 %cmp223, label %if.then225, label %if.end303

if.then225:                                       ; preds = %if.end220
  %110 = load ptr, ptr %zi, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %110, i64 0, i32 1
  %111 = load ptr, ptr %filestream, align 8
  %call226 = call i64 @call_ztell64(ptr noundef %110, ptr noundef %111) #13
  store i64 %call226, ptr %cur_pos_inzip, align 8
  %filestream228 = getelementptr inbounds %struct.zip64_internal, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %filestream228, align 8
  %113 = load ptr, ptr %zi, align 8
  %pos_local_header230 = getelementptr inbounds %struct.zip64_internal, ptr %113, i64 0, i32 4, i32 3
  %114 = load i64, ptr %pos_local_header230, align 8
  %add231 = add i64 %114, 14
  %call232 = call i64 @call_zseek64(ptr noundef %110, ptr noundef %112, i64 noundef %add231, i32 noundef 0) #13
  %cmp233.not = icmp eq i64 %call232, 0
  br i1 %cmp233.not, label %if.end236, label %if.then235

if.then235:                                       ; preds = %if.then225
  store i32 -1, ptr %err, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.then225
  %115 = load i32, ptr %err, align 4
  %cmp237 = icmp eq i32 %115, 0
  br i1 %cmp237, label %if.then239, label %if.end243

if.then239:                                       ; preds = %if.end236
  %116 = load ptr, ptr %zi, align 8
  %filestream241 = getelementptr inbounds %struct.zip64_internal, ptr %116, i64 0, i32 1
  %117 = load ptr, ptr %filestream241, align 8
  %118 = load i64, ptr %crc32.addr, align 8
  %call242 = call i32 @zip64local_putValue(ptr noundef %116, ptr noundef %117, i64 noundef %118, i32 noundef 4)
  store i32 %call242, ptr %err, align 4
  br label %if.end243

if.end243:                                        ; preds = %if.then239, %if.end236
  %119 = load i64, ptr %uncompressed_size.addr, align 8
  %cmp244 = icmp ugt i64 %119, 4294967294
  %120 = load i64, ptr %compressed_size, align 8
  %cmp247 = icmp ugt i64 %120, 4294967294
  %or.cond2 = select i1 %cmp244, i1 true, i1 %cmp247
  br i1 %or.cond2, label %if.then249, label %if.else280

if.then249:                                       ; preds = %if.end243
  %121 = load ptr, ptr %zi, align 8
  %pos_zip64extrainfo = getelementptr inbounds %struct.zip64_internal, ptr %121, i64 0, i32 4, i32 16
  %122 = load i64, ptr %pos_zip64extrainfo, align 8
  %cmp251.not = icmp eq i64 %122, 0
  br i1 %cmp251.not, label %if.else278, label %if.then253

if.then253:                                       ; preds = %if.then249
  %123 = load ptr, ptr %zi, align 8
  %filestream255 = getelementptr inbounds %struct.zip64_internal, ptr %123, i64 0, i32 1
  %124 = load ptr, ptr %filestream255, align 8
  %pos_zip64extrainfo257 = getelementptr inbounds %struct.zip64_internal, ptr %123, i64 0, i32 4, i32 16
  %125 = load i64, ptr %pos_zip64extrainfo257, align 8
  %add258 = add i64 %125, 4
  %call259 = call i64 @call_zseek64(ptr noundef %123, ptr noundef %124, i64 noundef %add258, i32 noundef 0) #13
  %cmp260.not = icmp eq i64 %call259, 0
  br i1 %cmp260.not, label %if.end263, label %if.then262

if.then262:                                       ; preds = %if.then253
  store i32 -1, ptr %err, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %if.then253
  %126 = load i32, ptr %err, align 4
  %cmp264 = icmp eq i32 %126, 0
  br i1 %cmp264, label %if.then266, label %if.end270

if.then266:                                       ; preds = %if.end263
  %127 = load ptr, ptr %zi, align 8
  %filestream268 = getelementptr inbounds %struct.zip64_internal, ptr %127, i64 0, i32 1
  %128 = load ptr, ptr %filestream268, align 8
  %129 = load i64, ptr %uncompressed_size.addr, align 8
  %call269 = call i32 @zip64local_putValue(ptr noundef %127, ptr noundef %128, i64 noundef %129, i32 noundef 8)
  store i32 %call269, ptr %err, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.then266, %if.end263
  %130 = load i32, ptr %err, align 4
  %cmp271 = icmp eq i32 %130, 0
  br i1 %cmp271, label %if.then273, label %if.end295

if.then273:                                       ; preds = %if.end270
  %131 = load ptr, ptr %zi, align 8
  %filestream275 = getelementptr inbounds %struct.zip64_internal, ptr %131, i64 0, i32 1
  %132 = load ptr, ptr %filestream275, align 8
  %133 = load i64, ptr %compressed_size, align 8
  %call276 = call i32 @zip64local_putValue(ptr noundef %131, ptr noundef %132, i64 noundef %133, i32 noundef 8)
  store i32 %call276, ptr %err, align 4
  br label %if.end295

if.else278:                                       ; preds = %if.then249
  store i32 -103, ptr %err, align 4
  br label %if.end295

if.else280:                                       ; preds = %if.end243
  %134 = load i32, ptr %err, align 4
  %cmp281 = icmp eq i32 %134, 0
  br i1 %cmp281, label %if.then283, label %if.end287

if.then283:                                       ; preds = %if.else280
  %135 = load ptr, ptr %zi, align 8
  %filestream285 = getelementptr inbounds %struct.zip64_internal, ptr %135, i64 0, i32 1
  %136 = load ptr, ptr %filestream285, align 8
  %137 = load i64, ptr %compressed_size, align 8
  %call286 = call i32 @zip64local_putValue(ptr noundef %135, ptr noundef %136, i64 noundef %137, i32 noundef 4)
  store i32 %call286, ptr %err, align 4
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %if.else280
  %138 = load i32, ptr %err, align 4
  %cmp288 = icmp eq i32 %138, 0
  br i1 %cmp288, label %if.then290, label %if.end295

if.then290:                                       ; preds = %if.end287
  %139 = load ptr, ptr %zi, align 8
  %filestream292 = getelementptr inbounds %struct.zip64_internal, ptr %139, i64 0, i32 1
  %140 = load ptr, ptr %filestream292, align 8
  %141 = load i64, ptr %uncompressed_size.addr, align 8
  %call293 = call i32 @zip64local_putValue(ptr noundef %139, ptr noundef %140, i64 noundef %141, i32 noundef 4)
  store i32 %call293, ptr %err, align 4
  br label %if.end295

if.end295:                                        ; preds = %if.end287, %if.then290, %if.else278, %if.then273, %if.end270
  %142 = load ptr, ptr %zi, align 8
  %filestream297 = getelementptr inbounds %struct.zip64_internal, ptr %142, i64 0, i32 1
  %143 = load ptr, ptr %filestream297, align 8
  %144 = load i64, ptr %cur_pos_inzip, align 8
  %call298 = call i64 @call_zseek64(ptr noundef %142, ptr noundef %143, i64 noundef %144, i32 noundef 0) #13
  %cmp299.not = icmp eq i64 %call298, 0
  br i1 %cmp299.not, label %if.end303, label %if.then301

if.then301:                                       ; preds = %if.end295
  store i32 -1, ptr %err, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.end295, %if.then301, %if.end220
  %145 = load ptr, ptr %zi, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %145, i64 0, i32 7
  %146 = load i64, ptr %number_entry, align 8
  %inc = add i64 %146, 1
  store i64 %inc, ptr %number_entry, align 8
  %in_opened_file_inzip304 = getelementptr inbounds %struct.zip64_internal, ptr %145, i64 0, i32 3
  store i32 0, ptr %in_opened_file_inzip304, align 8
  %147 = load i32, ptr %err, align 4
  store i32 %147, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end303, %if.then164, %if.then2, %if.then
  %148 = load i32, ptr %retval, align 4
  ret i32 %148
}

declare i32 @deflateEnd(ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @add_data_in_datablock(ptr noundef %ll, ptr noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ll.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %ldi = alloca ptr, align 8
  %from_copy = alloca ptr, align 8
  %copy_this = alloca i32, align 4
  %i = alloca i32, align 4
  %to_copy = alloca ptr, align 8
  store ptr %ll, ptr %ll.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %cmp = icmp eq ptr %ll, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -104, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %ll.addr, align 8
  %last_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %0, i64 0, i32 1
  %1 = load ptr, ptr %last_block, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %call = call ptr @allocate_new_datablock()
  %2 = load ptr, ptr %ll.addr, align 8
  %last_block3 = getelementptr inbounds %struct.linkedlist_data_s, ptr %2, i64 0, i32 1
  store ptr %call, ptr %last_block3, align 8
  store ptr %call, ptr %2, align 8
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then2
  store i32 -104, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %ll.addr, align 8
  %last_block9 = getelementptr inbounds %struct.linkedlist_data_s, ptr %3, i64 0, i32 1
  %4 = load ptr, ptr %last_block9, align 8
  store ptr %4, ptr %ldi, align 8
  %5 = load ptr, ptr %buf.addr, align 8
  store ptr %5, ptr %from_copy, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end8
  %6 = load i64, ptr %len.addr, align 8
  %cmp10.not = icmp eq i64 %6, 0
  br i1 %cmp10.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %ldi, align 8
  %avail_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %7, i64 0, i32 1
  %8 = load i64, ptr %avail_in_this_block, align 8
  %cmp11 = icmp eq i64 %8, 0
  br i1 %cmp11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %while.body
  %call13 = call ptr @allocate_new_datablock()
  %9 = load ptr, ptr %ldi, align 8
  store ptr %call13, ptr %9, align 8
  %cmp15 = icmp eq ptr %call13, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then12
  store i32 -104, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then12
  %10 = load ptr, ptr %ldi, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %ldi, align 8
  %12 = load ptr, ptr %ll.addr, align 8
  %last_block19 = getelementptr inbounds %struct.linkedlist_data_s, ptr %12, i64 0, i32 1
  store ptr %11, ptr %last_block19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %while.body
  %13 = load ptr, ptr %ldi, align 8
  %avail_in_this_block21 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %13, i64 0, i32 1
  %14 = load i64, ptr %avail_in_this_block21, align 8
  %15 = load i64, ptr %len.addr, align 8
  %cmp22 = icmp ult i64 %14, %15
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  %16 = load ptr, ptr %ldi, align 8
  %avail_in_this_block24 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %16, i64 0, i32 1
  %17 = load i64, ptr %avail_in_this_block24, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end20
  %18 = load i64, ptr %len.addr, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %storemerge.in = phi i64 [ %18, %if.else ], [ %17, %if.then23 ]
  %storemerge = trunc i64 %storemerge.in to i32
  store i32 %storemerge, ptr %copy_this, align 4
  %19 = load ptr, ptr %ldi, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %19, i64 0, i32 2
  %20 = load i64, ptr %filled_in_this_block, align 8
  %arrayidx = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %19, i64 0, i32 4, i64 %20
  store ptr %arrayidx, ptr %to_copy, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end26
  %storemerge1 = phi i32 [ 0, %if.end26 ], [ %inc, %for.body ]
  store i32 %storemerge1, ptr %i, align 4
  %21 = load i32, ptr %copy_this, align 4
  %cmp27 = icmp ult i32 %storemerge1, %21
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %from_copy, align 8
  %23 = load i32, ptr %i, align 4
  %idx.ext = zext i32 %23 to i64
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  %24 = load i8, ptr %add.ptr, align 1
  %25 = load ptr, ptr %to_copy, align 8
  %idx.ext29 = zext i32 %23 to i64
  %add.ptr30 = getelementptr inbounds i8, ptr %25, i64 %idx.ext29
  store i8 %24, ptr %add.ptr30, align 1
  %26 = load i32, ptr %i, align 4
  %inc = add i32 %26, 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %copy_this, align 4
  %conv31 = zext i32 %27 to i64
  %28 = load ptr, ptr %ldi, align 8
  %filled_in_this_block32 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %28, i64 0, i32 2
  %29 = load i64, ptr %filled_in_this_block32, align 8
  %add = add i64 %29, %conv31
  store i64 %add, ptr %filled_in_this_block32, align 8
  %30 = load i32, ptr %copy_this, align 4
  %conv33 = zext i32 %30 to i64
  %31 = load ptr, ptr %ldi, align 8
  %avail_in_this_block34 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %31, i64 0, i32 1
  %32 = load i64, ptr %avail_in_this_block34, align 8
  %sub = sub i64 %32, %conv33
  store i64 %sub, ptr %avail_in_this_block34, align 8
  %33 = load i32, ptr %copy_this, align 4
  %34 = load ptr, ptr %from_copy, align 8
  %idx.ext35 = zext i32 %33 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %34, i64 %idx.ext35
  store ptr %add.ptr36, ptr %from_copy, align 8
  %conv37 = zext i32 %33 to i64
  %35 = load i64, ptr %len.addr, align 8
  %sub38 = sub i64 %35, %conv37
  store i64 %sub38, ptr %len.addr, align 8
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then6, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64local_putValue(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, i64 noundef %x, i32 noundef %nbByte) #0 {
entry:
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %x.addr = alloca i64, align 8
  %nbByte.addr = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  %n = alloca i32, align 4
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  store i32 %nbByte, ptr %nbByte.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %storemerge = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %n, align 4
  %0 = load i32, ptr %nbByte.addr, align 4
  %cmp = icmp slt i32 %storemerge, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %x.addr, align 8
  %conv = trunc i64 %1 to i8
  %2 = load i32, ptr %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %shr = lshr i64 %1, 8
  store i64 %shr, ptr %x.addr, align 8
  %3 = load i32, ptr %n, align 4
  %inc = add nsw i32 %3, 1
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %4 = load i64, ptr %x.addr, align 8
  %cmp1.not = icmp eq i64 %4, 0
  br i1 %cmp1.not, label %if.end, label %for.cond3

for.cond3:                                        ; preds = %for.end, %for.body6
  %storemerge2 = phi i32 [ %inc10, %for.body6 ], [ 0, %for.end ]
  store i32 %storemerge2, ptr %n, align 4
  %5 = load i32, ptr %nbByte.addr, align 4
  %cmp4 = icmp slt i32 %storemerge2, %5
  br i1 %cmp4, label %for.body6, label %if.end

for.body6:                                        ; preds = %for.cond3
  %6 = load i32, ptr %n, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 %idxprom7
  store i8 -1, ptr %arrayidx8, align 1
  %7 = load i32, ptr %n, align 4
  %inc10 = add nsw i32 %7, 1
  br label %for.cond3, !llvm.loop !25

if.end:                                           ; preds = %for.cond3, %for.end
  %8 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %8, i64 0, i32 2
  %9 = load ptr, ptr %zwrite_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %opaque, align 8
  %11 = load ptr, ptr %filestream.addr, align 8
  %12 = load i32, ptr %nbByte.addr, align 4
  %conv13 = sext i32 %12 to i64
  %call = call i64 %9(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %buf, i64 noundef %conv13) #13
  %conv14 = sext i32 %12 to i64
  %cmp15.not = icmp eq i64 %call, %conv14
  %. = select i1 %cmp15.not, i32 0, i32 -1
  ret i32 %.
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipClose(ptr noundef %file, ptr noundef %global_comment) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %global_comment.addr = alloca ptr, align 8
  %zi = alloca ptr, align 8
  %err = alloca i32, align 4
  %size_centraldir = alloca i64, align 8
  %centraldir_pos_inzip = alloca i64, align 8
  %ldi = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  store ptr %global_comment, ptr %global_comment.addr, align 8
  store i32 0, ptr %err, align 4
  store i64 0, ptr %size_centraldir, align 8
  %cmp = icmp eq ptr %file, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %file.addr, align 8
  store ptr %0, ptr %zi, align 8
  %in_opened_file_inzip = getelementptr inbounds %struct.zip64_internal, ptr %0, i64 0, i32 3
  %1 = load i32, ptr %in_opened_file_inzip, align 8
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %file.addr, align 8
  %call = call i32 @zipCloseFileInZip(ptr noundef %2)
  store i32 %call, ptr %err, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %global_comment.addr, align 8
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %zi, align 8
  %globalcomment = getelementptr inbounds %struct.zip64_internal, ptr %4, i64 0, i32 8
  %5 = load ptr, ptr %globalcomment, align 8
  store ptr %5, ptr %global_comment.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load ptr, ptr %zi, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %6, i64 0, i32 1
  %7 = load ptr, ptr %filestream, align 8
  %call7 = call i64 @call_ztell64(ptr noundef %6, ptr noundef %7) #13
  store i64 %call7, ptr %centraldir_pos_inzip, align 8
  %8 = load i32, ptr %err, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.then9, label %if.end26

if.then9:                                         ; preds = %if.end6
  %9 = load ptr, ptr %zi, align 8
  %central_dir = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %if.then9
  %storemerge1.in = phi ptr [ %central_dir, %if.then9 ], [ %20, %if.end24 ]
  %storemerge1 = load ptr, ptr %storemerge1.in, align 8
  store ptr %storemerge1, ptr %ldi, align 8
  %cmp10.not = icmp eq ptr %storemerge1, null
  br i1 %cmp10.not, label %if.end26, label %while.body

while.body:                                       ; preds = %while.cond
  %10 = load i32, ptr %err, align 4
  %cmp11 = icmp eq i32 %10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %while.body
  %11 = load ptr, ptr %ldi, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %11, i64 0, i32 2
  %12 = load i64, ptr %filled_in_this_block, align 8
  %cmp12.not = icmp eq i64 %12, 0
  br i1 %cmp12.not, label %if.end24, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %zi, align 8
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %13, i64 0, i32 2
  %14 = load ptr, ptr %zwrite_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %opaque, align 8
  %filestream17 = getelementptr inbounds %struct.zip64_internal, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %filestream17, align 8
  %17 = load ptr, ptr %ldi, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %17, i64 0, i32 4
  %filled_in_this_block18 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %17, i64 0, i32 2
  %18 = load i64, ptr %filled_in_this_block18, align 8
  %call19 = call i64 %14(ptr noundef %15, ptr noundef %16, ptr noundef nonnull %data, i64 noundef %18) #13
  %filled_in_this_block20 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %filled_in_this_block20, align 8
  %cmp21.not = icmp eq i64 %call19, %19
  br i1 %cmp21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.then13
  store i32 -1, ptr %err, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %if.then22, %land.lhs.true, %while.body
  %20 = load ptr, ptr %ldi, align 8
  %filled_in_this_block25 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %20, i64 0, i32 2
  %21 = load i64, ptr %filled_in_this_block25, align 8
  %22 = load i64, ptr %size_centraldir, align 8
  %add = add i64 %22, %21
  store i64 %add, ptr %size_centraldir, align 8
  br label %while.cond, !llvm.loop !26

if.end26:                                         ; preds = %while.cond, %if.end6
  %23 = load ptr, ptr %zi, align 8
  %central_dir27 = getelementptr inbounds %struct.zip64_internal, ptr %23, i64 0, i32 2
  call void @free_linkedlist(ptr noundef nonnull %central_dir27)
  %set = getelementptr inbounds %struct.zip64_internal, ptr %23, i64 0, i32 9
  call void @set_end(ptr noundef nonnull %set)
  %24 = load i64, ptr %centraldir_pos_inzip, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %23, i64 0, i32 6
  %25 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %24, %25
  %cmp28 = icmp ugt i64 %sub, 4294967294
  br i1 %cmp28, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end26
  %26 = load ptr, ptr %zi, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %26, i64 0, i32 7
  %27 = load i64, ptr %number_entry, align 8
  %cmp29 = icmp ugt i64 %27, 65534
  br i1 %cmp29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %lor.lhs.false, %if.end26
  %28 = load ptr, ptr %zi, align 8
  %filestream32 = getelementptr inbounds %struct.zip64_internal, ptr %28, i64 0, i32 1
  %29 = load ptr, ptr %filestream32, align 8
  %call33 = call i64 @call_ztell64(ptr noundef %28, ptr noundef %29) #13
  %30 = load i64, ptr %size_centraldir, align 8
  %31 = load i64, ptr %centraldir_pos_inzip, align 8
  %call34 = call i32 @Write_Zip64EndOfCentralDirectoryRecord(ptr noundef %28, i64 noundef %30, i64 noundef %31)
  %32 = load ptr, ptr %zi, align 8
  %call35 = call i32 @Write_Zip64EndOfCentralDirectoryLocator(ptr noundef %32, i64 noundef %call33)
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %lor.lhs.false
  %33 = load i32, ptr %err, align 4
  %cmp37 = icmp eq i32 %33, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end36
  %34 = load ptr, ptr %zi, align 8
  %35 = load i64, ptr %size_centraldir, align 8
  %36 = load i64, ptr %centraldir_pos_inzip, align 8
  %call39 = call i32 @Write_EndOfCentralDirectoryRecord(ptr noundef %34, i64 noundef %35, i64 noundef %36)
  store i32 %call39, ptr %err, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36
  %37 = load i32, ptr %err, align 4
  %cmp41 = icmp eq i32 %37, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %38 = load ptr, ptr %zi, align 8
  %39 = load ptr, ptr %global_comment.addr, align 8
  %call43 = call i32 @Write_GlobalComment(ptr noundef %38, ptr noundef %39)
  store i32 %call43, ptr %err, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %40 = load ptr, ptr %zi, align 8
  %zclose_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %40, i64 0, i32 5
  %41 = load ptr, ptr %zclose_file, align 8
  %opaque49 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %opaque49, align 8
  %filestream50 = getelementptr inbounds %struct.zip64_internal, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %filestream50, align 8
  %call51 = call i32 %41(ptr noundef %42, ptr noundef %43) #13
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end57, label %if.then53

if.then53:                                        ; preds = %if.end44
  %44 = load i32, ptr %err, align 4
  %cmp54 = icmp eq i32 %44, 0
  %spec.store.select = select i1 %cmp54, i32 -1, i32 %44
  store i32 %spec.store.select, ptr %err, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end44
  %45 = load ptr, ptr %zi, align 8
  %globalcomment58 = getelementptr inbounds %struct.zip64_internal, ptr %45, i64 0, i32 8
  %46 = load ptr, ptr %globalcomment58, align 8
  call void @free(ptr noundef %46) #13
  call void @free(ptr noundef %45) #13
  %47 = load i32, ptr %err, align 4
  br label %return

return:                                           ; preds = %entry, %if.end57
  %storemerge = phi i32 [ %47, %if.end57 ], [ -102, %entry ]
  ret i32 %storemerge
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_linkedlist(ptr noundef %ll) #0 {
entry:
  %0 = load ptr, ptr %ll, align 8
  call void @free_datablock(ptr noundef %0)
  %last_block = getelementptr inbounds %struct.linkedlist_data_s, ptr %ll, i64 0, i32 1
  store ptr null, ptr %last_block, align 8
  store ptr null, ptr %ll, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Write_Zip64EndOfCentralDirectoryRecord(ptr noundef %zi, i64 noundef %size_centraldir, i64 noundef %centraldir_pos_inzip) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %size_centraldir.addr = alloca i64, align 8
  %centraldir_pos_inzip.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %Zip64DataSize = alloca i64, align 8
  store ptr %zi, ptr %zi.addr, align 8
  store i64 %size_centraldir, ptr %size_centraldir.addr, align 8
  store i64 %centraldir_pos_inzip, ptr %centraldir_pos_inzip.addr, align 8
  store i32 0, ptr %err, align 4
  store i64 44, ptr %Zip64DataSize, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %zi, i64 0, i32 1
  %0 = load ptr, ptr %filestream, align 8
  %call = call i32 @zip64local_putValue(ptr noundef %zi, ptr noundef %0, i64 noundef 101075792, i32 noundef 4)
  store i32 %call, ptr %err, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zi.addr, align 8
  %filestream2 = getelementptr inbounds %struct.zip64_internal, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %filestream2, align 8
  %3 = load i64, ptr %Zip64DataSize, align 8
  %call3 = call i32 @zip64local_putValue(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8)
  store i32 %call3, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %zi.addr, align 8
  %filestream7 = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %filestream7, align 8
  %call8 = call i32 @zip64local_putValue(ptr noundef %5, ptr noundef %6, i64 noundef 45, i32 noundef 2)
  store i32 %call8, ptr %err, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %7 = load i32, ptr %err, align 4
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end9
  %8 = load ptr, ptr %zi.addr, align 8
  %filestream13 = getelementptr inbounds %struct.zip64_internal, ptr %8, i64 0, i32 1
  %9 = load ptr, ptr %filestream13, align 8
  %call14 = call i32 @zip64local_putValue(ptr noundef %8, ptr noundef %9, i64 noundef 45, i32 noundef 2)
  store i32 %call14, ptr %err, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9
  %10 = load i32, ptr %err, align 4
  %cmp16 = icmp eq i32 %10, 0
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end15
  %11 = load ptr, ptr %zi.addr, align 8
  %filestream19 = getelementptr inbounds %struct.zip64_internal, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %filestream19, align 8
  %call20 = call i32 @zip64local_putValue(ptr noundef %11, ptr noundef %12, i64 noundef 0, i32 noundef 4)
  store i32 %call20, ptr %err, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15
  %13 = load i32, ptr %err, align 4
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end21
  %14 = load ptr, ptr %zi.addr, align 8
  %filestream25 = getelementptr inbounds %struct.zip64_internal, ptr %14, i64 0, i32 1
  %15 = load ptr, ptr %filestream25, align 8
  %call26 = call i32 @zip64local_putValue(ptr noundef %14, ptr noundef %15, i64 noundef 0, i32 noundef 4)
  store i32 %call26, ptr %err, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21
  %16 = load i32, ptr %err, align 4
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end27
  %17 = load ptr, ptr %zi.addr, align 8
  %filestream31 = getelementptr inbounds %struct.zip64_internal, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %filestream31, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %17, i64 0, i32 7
  %19 = load i64, ptr %number_entry, align 8
  %call32 = call i32 @zip64local_putValue(ptr noundef %17, ptr noundef %18, i64 noundef %19, i32 noundef 8)
  store i32 %call32, ptr %err, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end27
  %20 = load i32, ptr %err, align 4
  %cmp34 = icmp eq i32 %20, 0
  br i1 %cmp34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end33
  %21 = load ptr, ptr %zi.addr, align 8
  %filestream37 = getelementptr inbounds %struct.zip64_internal, ptr %21, i64 0, i32 1
  %22 = load ptr, ptr %filestream37, align 8
  %number_entry38 = getelementptr inbounds %struct.zip64_internal, ptr %21, i64 0, i32 7
  %23 = load i64, ptr %number_entry38, align 8
  %call39 = call i32 @zip64local_putValue(ptr noundef %21, ptr noundef %22, i64 noundef %23, i32 noundef 8)
  store i32 %call39, ptr %err, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end33
  %24 = load i32, ptr %err, align 4
  %cmp41 = icmp eq i32 %24, 0
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end40
  %25 = load ptr, ptr %zi.addr, align 8
  %filestream44 = getelementptr inbounds %struct.zip64_internal, ptr %25, i64 0, i32 1
  %26 = load ptr, ptr %filestream44, align 8
  %27 = load i64, ptr %size_centraldir.addr, align 8
  %call45 = call i32 @zip64local_putValue(ptr noundef %25, ptr noundef %26, i64 noundef %27, i32 noundef 8)
  store i32 %call45, ptr %err, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end40
  %28 = load i32, ptr %err, align 4
  %cmp47 = icmp eq i32 %28, 0
  br i1 %cmp47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end46
  %29 = load i64, ptr %centraldir_pos_inzip.addr, align 8
  %30 = load ptr, ptr %zi.addr, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 6
  %31 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %29, %31
  %filestream50 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %filestream50, align 8
  %call51 = call i32 @zip64local_putValue(ptr noundef %30, ptr noundef %32, i64 noundef %sub, i32 noundef 8)
  store i32 %call51, ptr %err, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46
  %33 = load i32, ptr %err, align 4
  ret i32 %33
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Write_Zip64EndOfCentralDirectoryLocator(ptr noundef %zi, i64 noundef %zip64eocd_pos_inzip) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %pos = alloca i64, align 8
  store ptr %zi, ptr %zi.addr, align 8
  store i32 0, ptr %err, align 4
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %zi, i64 0, i32 6
  %0 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %zip64eocd_pos_inzip, %0
  store i64 %sub, ptr %pos, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %zi, i64 0, i32 1
  %1 = load ptr, ptr %filestream, align 8
  %call = call i32 @zip64local_putValue(ptr noundef %zi, ptr noundef %1, i64 noundef 117853008, i32 noundef 4)
  store i32 %call, ptr %err, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %zi.addr, align 8
  %filestream2 = getelementptr inbounds %struct.zip64_internal, ptr %2, i64 0, i32 1
  %3 = load ptr, ptr %filestream2, align 8
  %call3 = call i32 @zip64local_putValue(ptr noundef %2, ptr noundef %3, i64 noundef 0, i32 noundef 4)
  store i32 %call3, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %zi.addr, align 8
  %filestream7 = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 1
  %6 = load ptr, ptr %filestream7, align 8
  %7 = load i64, ptr %pos, align 8
  %call8 = call i32 @zip64local_putValue(ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef 8)
  store i32 %call8, ptr %err, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %8 = load i32, ptr %err, align 4
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end9
  %9 = load ptr, ptr %zi.addr, align 8
  %filestream13 = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %filestream13, align 8
  %call14 = call i32 @zip64local_putValue(ptr noundef %9, ptr noundef %10, i64 noundef 1, i32 noundef 4)
  store i32 %call14, ptr %err, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9
  %11 = load i32, ptr %err, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Write_EndOfCentralDirectoryRecord(ptr noundef %zi, i64 noundef %size_centraldir, i64 noundef %centraldir_pos_inzip) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %size_centraldir.addr = alloca i64, align 8
  %centraldir_pos_inzip.addr = alloca i64, align 8
  %err = alloca i32, align 4
  store ptr %zi, ptr %zi.addr, align 8
  store i64 %size_centraldir, ptr %size_centraldir.addr, align 8
  store i64 %centraldir_pos_inzip, ptr %centraldir_pos_inzip.addr, align 8
  store i32 0, ptr %err, align 4
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %zi, i64 0, i32 1
  %0 = load ptr, ptr %filestream, align 8
  %call = call i32 @zip64local_putValue(ptr noundef %zi, ptr noundef %0, i64 noundef 101010256, i32 noundef 4)
  store i32 %call, ptr %err, align 4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zi.addr, align 8
  %filestream2 = getelementptr inbounds %struct.zip64_internal, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %filestream2, align 8
  %call3 = call i32 @zip64local_putValue(ptr noundef %1, ptr noundef %2, i64 noundef 0, i32 noundef 2)
  store i32 %call3, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %4 = load ptr, ptr %zi.addr, align 8
  %filestream7 = getelementptr inbounds %struct.zip64_internal, ptr %4, i64 0, i32 1
  %5 = load ptr, ptr %filestream7, align 8
  %call8 = call i32 @zip64local_putValue(ptr noundef %4, ptr noundef %5, i64 noundef 0, i32 noundef 2)
  store i32 %call8, ptr %err, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %6 = load i32, ptr %err, align 4
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end9
  %7 = load ptr, ptr %zi.addr, align 8
  %number_entry = getelementptr inbounds %struct.zip64_internal, ptr %7, i64 0, i32 7
  %8 = load i64, ptr %number_entry, align 8
  %cmp12 = icmp ugt i64 %8, 65534
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  %9 = load ptr, ptr %zi.addr, align 8
  %filestream15 = getelementptr inbounds %struct.zip64_internal, ptr %9, i64 0, i32 1
  %10 = load ptr, ptr %filestream15, align 8
  %call16 = call i32 @zip64local_putValue(ptr noundef %9, ptr noundef %10, i64 noundef 65535, i32 noundef 2)
  br label %if.end21

if.else:                                          ; preds = %if.then11
  %11 = load ptr, ptr %zi.addr, align 8
  %filestream18 = getelementptr inbounds %struct.zip64_internal, ptr %11, i64 0, i32 1
  %12 = load ptr, ptr %filestream18, align 8
  %number_entry19 = getelementptr inbounds %struct.zip64_internal, ptr %11, i64 0, i32 7
  %13 = load i64, ptr %number_entry19, align 8
  %call20 = call i32 @zip64local_putValue(ptr noundef %11, ptr noundef %12, i64 noundef %13, i32 noundef 2)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then13
  %storemerge2 = phi i32 [ %call20, %if.else ], [ %call16, %if.then13 ]
  store i32 %storemerge2, ptr %err, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  %14 = load i32, ptr %err, align 4
  %cmp23 = icmp eq i32 %14, 0
  br i1 %cmp23, label %if.then24, label %if.end37

if.then24:                                        ; preds = %if.end22
  %15 = load ptr, ptr %zi.addr, align 8
  %number_entry25 = getelementptr inbounds %struct.zip64_internal, ptr %15, i64 0, i32 7
  %16 = load i64, ptr %number_entry25, align 8
  %cmp26 = icmp ugt i64 %16, 65534
  br i1 %cmp26, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.then24
  %17 = load ptr, ptr %zi.addr, align 8
  %filestream29 = getelementptr inbounds %struct.zip64_internal, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %filestream29, align 8
  %call30 = call i32 @zip64local_putValue(ptr noundef %17, ptr noundef %18, i64 noundef 65535, i32 noundef 2)
  br label %if.end36

if.else31:                                        ; preds = %if.then24
  %19 = load ptr, ptr %zi.addr, align 8
  %filestream33 = getelementptr inbounds %struct.zip64_internal, ptr %19, i64 0, i32 1
  %20 = load ptr, ptr %filestream33, align 8
  %number_entry34 = getelementptr inbounds %struct.zip64_internal, ptr %19, i64 0, i32 7
  %21 = load i64, ptr %number_entry34, align 8
  %call35 = call i32 @zip64local_putValue(ptr noundef %19, ptr noundef %20, i64 noundef %21, i32 noundef 2)
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then27
  %storemerge1 = phi i32 [ %call35, %if.else31 ], [ %call30, %if.then27 ]
  store i32 %storemerge1, ptr %err, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end22
  %22 = load i32, ptr %err, align 4
  %cmp38 = icmp eq i32 %22, 0
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end37
  %23 = load ptr, ptr %zi.addr, align 8
  %filestream41 = getelementptr inbounds %struct.zip64_internal, ptr %23, i64 0, i32 1
  %24 = load ptr, ptr %filestream41, align 8
  %25 = load i64, ptr %size_centraldir.addr, align 8
  %call42 = call i32 @zip64local_putValue(ptr noundef %23, ptr noundef %24, i64 noundef %25, i32 noundef 4)
  store i32 %call42, ptr %err, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end37
  %26 = load i32, ptr %err, align 4
  %cmp44 = icmp eq i32 %26, 0
  br i1 %cmp44, label %if.then45, label %if.end58

if.then45:                                        ; preds = %if.end43
  %27 = load i64, ptr %centraldir_pos_inzip.addr, align 8
  %28 = load ptr, ptr %zi.addr, align 8
  %add_position_when_writing_offset = getelementptr inbounds %struct.zip64_internal, ptr %28, i64 0, i32 6
  %29 = load i64, ptr %add_position_when_writing_offset, align 8
  %sub = sub i64 %27, %29
  %cmp46 = icmp ugt i64 %sub, 4294967294
  br i1 %cmp46, label %if.then47, label %if.else51

if.then47:                                        ; preds = %if.then45
  %30 = load ptr, ptr %zi.addr, align 8
  %filestream49 = getelementptr inbounds %struct.zip64_internal, ptr %30, i64 0, i32 1
  %31 = load ptr, ptr %filestream49, align 8
  %call50 = call i32 @zip64local_putValue(ptr noundef %30, ptr noundef %31, i64 noundef 4294967295, i32 noundef 4)
  br label %if.end57

if.else51:                                        ; preds = %if.then45
  %32 = load ptr, ptr %zi.addr, align 8
  %filestream53 = getelementptr inbounds %struct.zip64_internal, ptr %32, i64 0, i32 1
  %33 = load ptr, ptr %filestream53, align 8
  %34 = load i64, ptr %centraldir_pos_inzip.addr, align 8
  %add_position_when_writing_offset54 = getelementptr inbounds %struct.zip64_internal, ptr %32, i64 0, i32 6
  %35 = load i64, ptr %add_position_when_writing_offset54, align 8
  %sub55 = sub i64 %34, %35
  %call56 = call i32 @zip64local_putValue(ptr noundef %32, ptr noundef %33, i64 noundef %sub55, i32 noundef 4)
  br label %if.end57

if.end57:                                         ; preds = %if.else51, %if.then47
  %storemerge = phi i32 [ %call56, %if.else51 ], [ %call50, %if.then47 ]
  store i32 %storemerge, ptr %err, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end43
  %36 = load i32, ptr %err, align 4
  ret i32 %36
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Write_GlobalComment(ptr noundef %zi, ptr noundef %global_comment) #0 {
entry:
  %zi.addr = alloca ptr, align 8
  %global_comment.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %size_global_comment = alloca i32, align 4
  store ptr %zi, ptr %zi.addr, align 8
  store ptr %global_comment, ptr %global_comment.addr, align 8
  store i32 0, ptr %err, align 4
  store i32 0, ptr %size_global_comment, align 4
  %cmp.not = icmp eq ptr %global_comment, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %global_comment.addr, align 8
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size_global_comment, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %zi.addr, align 8
  %filestream = getelementptr inbounds %struct.zip64_internal, ptr %1, i64 0, i32 1
  %2 = load ptr, ptr %filestream, align 8
  %3 = load i32, ptr %size_global_comment, align 4
  %conv1 = zext i32 %3 to i64
  %call2 = call i32 @zip64local_putValue(ptr noundef %1, ptr noundef %2, i64 noundef %conv1, i32 noundef 2)
  store i32 %call2, ptr %err, align 4
  %cmp3 = icmp ne i32 %call2, 0
  %4 = load i32, ptr %size_global_comment, align 4
  %cmp5.not = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp5.not
  br i1 %or.cond, label %if.end19, label %if.then7

if.then7:                                         ; preds = %if.end
  %5 = load ptr, ptr %zi.addr, align 8
  %zwrite_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %5, i64 0, i32 2
  %6 = load ptr, ptr %zwrite_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %opaque, align 8
  %filestream11 = getelementptr inbounds %struct.zip64_internal, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %filestream11, align 8
  %9 = load ptr, ptr %global_comment.addr, align 8
  %10 = load i32, ptr %size_global_comment, align 4
  %conv12 = zext i32 %10 to i64
  %call13 = call i64 %6(ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %conv12) #13
  %conv14 = zext i32 %10 to i64
  %cmp15.not = icmp eq i64 %call13, %conv14
  br i1 %cmp15.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then7
  store i32 -1, ptr %err, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then7, %if.then17, %if.end
  %11 = load i32, ptr %err, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define i32 @zipRemoveExtraInfoBlock(ptr noundef %pData, ptr noundef %dataLen, i16 noundef signext %sHeader) #0 {
entry:
  %pData.addr = alloca ptr, align 8
  %dataLen.addr = alloca ptr, align 8
  %sHeader.addr = alloca i16, align 2
  %p = alloca ptr, align 8
  %size = alloca i32, align 4
  %pNewHeader = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %dataSize = alloca i16, align 2
  store ptr %pData, ptr %pData.addr, align 8
  store ptr %dataLen, ptr %dataLen.addr, align 8
  store i16 %sHeader, ptr %sHeader.addr, align 2
  store ptr %pData, ptr %p, align 8
  store i32 0, ptr %size, align 4
  %cmp = icmp eq ptr %pData, null
  %0 = load ptr, ptr %dataLen.addr, align 8
  %cmp1 = icmp eq ptr %0, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %1 = load ptr, ptr %dataLen.addr, align 8
  %2 = load i32, ptr %1, align 4
  %cmp3 = icmp slt i32 %2, 4
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %dataLen.addr, align 8
  %4 = load i32, ptr %3, align 4
  %conv = zext i32 %4 to i64
  %call = call ptr @malloc(i64 noundef %conv) #17
  store ptr %call, ptr %pNewHeader, align 8
  store ptr %call, ptr %pTmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %5 = load ptr, ptr %p, align 8
  %6 = load ptr, ptr %pData.addr, align 8
  %7 = load ptr, ptr %dataLen.addr, align 8
  %8 = load i32, ptr %7, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  %cmp4 = icmp ult ptr %5, %add.ptr
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %p, align 8
  %10 = load i16, ptr %9, align 2
  %add.ptr6 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %add.ptr6, align 2
  store i16 %11, ptr %dataSize, align 2
  %12 = load i16, ptr %sHeader.addr, align 2
  %cmp9 = icmp eq i16 %10, %12
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %while.body
  %13 = load i16, ptr %dataSize, align 2
  %conv12 = sext i16 %13 to i64
  %add = add nsw i64 %conv12, 4
  %14 = load ptr, ptr %p, align 8
  %add.ptr14 = getelementptr inbounds i8, ptr %14, i64 %add
  store ptr %add.ptr14, ptr %p, align 8
  br label %if.end26

if.else:                                          ; preds = %while.body
  %15 = load ptr, ptr %pTmp, align 8
  %16 = load ptr, ptr %p, align 8
  %17 = load i16, ptr %dataSize, align 2
  %conv15 = sext i16 %17 to i64
  %add16 = add nsw i64 %conv15, 4
  %18 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call18 = call ptr @__memcpy_chk(ptr noundef %15, ptr noundef %16, i64 noundef %add16, i64 noundef %18) #13
  %conv19 = sext i16 %17 to i64
  %add20 = add nsw i64 %conv19, 4
  %19 = load ptr, ptr %p, align 8
  %add.ptr22 = getelementptr inbounds i8, ptr %19, i64 %add20
  store ptr %add.ptr22, ptr %p, align 8
  %20 = load i16, ptr %dataSize, align 2
  %conv23 = sext i16 %20 to i32
  %add24 = add nsw i32 %conv23, 4
  %21 = load i32, ptr %size, align 4
  %add25 = add nsw i32 %21, %add24
  store i32 %add25, ptr %size, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then11
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  %22 = load i32, ptr %size, align 4
  %23 = load ptr, ptr %dataLen.addr, align 8
  %24 = load i32, ptr %23, align 4
  %cmp27 = icmp slt i32 %22, %24
  br i1 %cmp27, label %if.then29, label %if.end39

if.then29:                                        ; preds = %while.end
  %25 = load ptr, ptr %pData.addr, align 8
  %26 = load ptr, ptr %dataLen.addr, align 8
  %27 = load i32, ptr %26, align 4
  %conv30 = sext i32 %27 to i64
  %28 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call31 = call ptr @__memset_chk(ptr noundef %25, i32 noundef 0, i64 noundef %conv30, i64 noundef %28) #13
  %29 = load i32, ptr %size, align 4
  %cmp32 = icmp sgt i32 %29, 0
  br i1 %cmp32, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.then29
  %30 = load ptr, ptr %pData.addr, align 8
  %31 = load ptr, ptr %pNewHeader, align 8
  %32 = load i32, ptr %size, align 4
  %conv35 = sext i32 %32 to i64
  %33 = call i64 @llvm.objectsize.i64.p0(ptr %30, i1 false, i1 true, i1 false)
  %call36 = call ptr @__memcpy_chk(ptr noundef %30, ptr noundef %31, i64 noundef %conv35, i64 noundef %33) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then29
  %34 = load i32, ptr %size, align 4
  %35 = load ptr, ptr %dataLen.addr, align 8
  store i32 %34, ptr %35, align 4
  br label %if.end39

if.end39:                                         ; preds = %while.end, %if.end37
  %storemerge = phi i32 [ 0, %if.end37 ], [ -1, %while.end ]
  %36 = load ptr, ptr %pNewHeader, align 8
  call void @free(ptr noundef %36) #13
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %if.end39
  %storemerge1 = phi i32 [ %storemerge, %if.end39 ], [ -102, %lor.lhs.false2 ], [ -102, %entry ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind ssp uwtable
define internal void @set_sweep(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %step = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8
  %0 = load ptr, ptr %set, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %0, i64 0, i32 3
  %1 = load ptr, ptr %right, align 8
  %2 = load ptr, ptr %1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %2, %entry ], [ %11, %while.body ]
  store ptr %storemerge, ptr %step, align 8
  %3 = load ptr, ptr %set.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp.not = icmp eq ptr %storemerge, %4
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %step, align 8
  %right2 = getelementptr inbounds %struct.set_node_s, ptr %5, i64 0, i32 3
  %6 = load ptr, ptr %right2, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %next, align 8
  %8 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %8) #13
  %9 = load ptr, ptr %step, align 8
  %right4 = getelementptr inbounds %struct.set_node_s, ptr %9, i64 0, i32 3
  %10 = load ptr, ptr %right4, align 8
  call void @free(ptr noundef %10) #13
  call void @free(ptr noundef %9) #13
  %11 = load ptr, ptr %next, align 8
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @set_node(ptr noundef %set) #0 {
entry:
  %node = alloca ptr, align 8
  %call = call ptr @set_alloc(ptr noundef %set, ptr noundef null, i64 noundef 24)
  store ptr %call, ptr %node, align 8
  %size = getelementptr inbounds %struct.set_node_s, ptr %call, i64 0, i32 1
  store i16 0, ptr %size, align 8
  %fill = getelementptr inbounds %struct.set_node_s, ptr %call, i64 0, i32 2
  store i16 0, ptr %fill, align 2
  %right = getelementptr inbounds %struct.set_node_s, ptr %call, i64 0, i32 3
  store ptr null, ptr %right, align 8
  %0 = load ptr, ptr %node, align 8
  ret ptr %0
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_grow(ptr noundef %set, ptr noundef %node, i32 noundef %want, i32 noundef %fill) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %want.addr = alloca i32, align 4
  %fill.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %more = alloca i32, align 4
  store ptr %set, ptr %set.addr, align 8
  store ptr %node, ptr %node.addr, align 8
  store i32 %want, ptr %want.addr, align 4
  store i32 %fill, ptr %fill.addr, align 4
  %size = getelementptr inbounds %struct.set_node_s, ptr %node, i64 0, i32 1
  %0 = load i16, ptr %size, align 8
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, %want
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8
  %size2 = getelementptr inbounds %struct.set_node_s, ptr %1, i64 0, i32 1
  %2 = load i16, ptr %size2, align 8
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %3 = load ptr, ptr %node.addr, align 8
  %size4 = getelementptr inbounds %struct.set_node_s, ptr %3, i64 0, i32 1
  %4 = load i16, ptr %size4, align 8
  %conv5 = sext i16 %4 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ 1, %if.then ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %storemerge1 = phi i32 [ %cond, %cond.end ], [ %shl, %while.body ]
  store i32 %storemerge1, ptr %more, align 4
  %5 = load i32, ptr %want.addr, align 4
  %cmp6 = icmp slt i32 %storemerge1, %5
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %more, align 4
  %shl = shl i32 %6, 1
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %set.addr, align 8
  %8 = load ptr, ptr %node.addr, align 8
  %right = getelementptr inbounds %struct.set_node_s, ptr %8, i64 0, i32 3
  %9 = load ptr, ptr %right, align 8
  %10 = load i32, ptr %more, align 4
  %conv8 = sext i32 %10 to i64
  %mul = shl nsw i64 %conv8, 3
  %call = call ptr @set_alloc(ptr noundef %7, ptr noundef %9, i64 noundef %mul)
  %11 = load ptr, ptr %node.addr, align 8
  %right9 = getelementptr inbounds %struct.set_node_s, ptr %11, i64 0, i32 3
  store ptr %call, ptr %right9, align 8
  %12 = load i32, ptr %more, align 4
  %conv10 = trunc i32 %12 to i16
  %size11 = getelementptr inbounds %struct.set_node_s, ptr %11, i64 0, i32 1
  store i16 %conv10, ptr %size11, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %13 = load i32, ptr %fill.addr, align 4
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.end19, label %if.then13

if.then13:                                        ; preds = %if.end
  %14 = load ptr, ptr %node.addr, align 8
  %fill14 = getelementptr inbounds %struct.set_node_s, ptr %14, i64 0, i32 2
  %15 = load i16, ptr %fill14, align 2
  %conv15 = sext i16 %15 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then13
  %storemerge = phi i32 [ %conv15, %if.then13 ], [ %inc, %for.body ]
  store i32 %storemerge, ptr %i, align 4
  %16 = load i32, ptr %want.addr, align 4
  %cmp16 = icmp slt i32 %storemerge, %16
  br i1 %cmp16, label %for.body, label %if.end19

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %set.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %node.addr, align 8
  %right18 = getelementptr inbounds %struct.set_node_s, ptr %19, i64 0, i32 3
  %20 = load ptr, ptr %right18, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %20, i64 %idxprom
  store ptr %18, ptr %arrayidx, align 8
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  br label %for.cond, !llvm.loop !30

if.end19:                                         ; preds = %for.cond, %if.end
  %23 = load i32, ptr %want.addr, align 4
  %conv20 = trunc i32 %23 to i16
  %24 = load ptr, ptr %node.addr, align 8
  %fill21 = getelementptr inbounds %struct.set_node_s, ptr %24, i64 0, i32 2
  store i16 %conv20, ptr %fill21, align 2
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_uniq(ptr noundef %gen, ptr noundef %ptr) #0 {
entry:
  %0 = ptrtoint ptr %ptr to i64
  %shl = shl i64 %0, 32
  %call = call i64 @time(ptr noundef null) #13
  %shl1 = shl i64 %call, 12
  %xor = xor i64 %shl, %shl1
  %call2 = call i64 @"\01_clock"() #13
  %xor3 = xor i64 %xor, %call2
  call void @set_seed(ptr noundef %gen, i64 noundef %xor3, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @set_seed(ptr noundef %gen, i64 noundef %seed, i64 noundef %seq) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  store ptr %gen, ptr %gen.addr, align 8
  %shl = shl i64 %seq, 1
  %or = or i64 %shl, 1
  %inc = getelementptr inbounds %struct.set_rand_t, ptr %gen, i64 0, i32 1
  store i64 %or, ptr %inc, align 8
  %add = add i64 %or, %seed
  %mul = mul i64 %add, 6364136223846793005
  %0 = load ptr, ptr %gen.addr, align 8
  %inc2 = getelementptr inbounds %struct.set_rand_t, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %inc2, align 8
  %add3 = add i64 %mul, %1
  store i64 %add3, ptr %0, align 8
  ret void
}

declare i64 @time(ptr noundef) #2

declare i64 @"\01_clock"() #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @block_end(ptr noundef %block) #0 {
entry:
  %retval = alloca i32, align 4
  %block.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  %node1 = getelementptr inbounds %struct.block_t, ptr %block, i64 0, i32 2
  %0 = load ptr, ptr %node1, align 8
  store ptr %0, ptr %node, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %block.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = load ptr, ptr %node, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %3, i64 0, i32 4
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %3, i64 0, i32 2
  %4 = load i64, ptr %filled_in_this_block, align 8
  %add.ptr = getelementptr inbounds i8, ptr %data, i64 %4
  %cmp2 = icmp ult ptr %2, %add.ptr
  br i1 %cmp2, label %if.then3, label %while.cond

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

while.cond:                                       ; preds = %if.end, %if.end9
  %5 = load ptr, ptr %node, align 8
  %6 = load ptr, ptr %5, align 8
  %cmp5.not = icmp eq ptr %6, null
  br i1 %cmp5.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %node, align 8
  %filled_in_this_block6 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %7, i64 0, i32 2
  %8 = load i64, ptr %filled_in_this_block6, align 8
  %cmp7.not = icmp eq i64 %8, 0
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.body
  %9 = load ptr, ptr %node, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %node, align 8
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then3, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @block_get2(ptr noundef %block) #0 {
entry:
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %call = call i32 @block_get(ptr noundef %block)
  store i32 %call, ptr %low, align 4
  %call1 = call i32 @block_get(ptr noundef %block)
  store i32 %call1, ptr %high, align 4
  %cmp = icmp slt i32 %call, 0
  %0 = load i32, ptr %high, align 4
  %cmp2 = icmp slt i32 %0, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  %1 = load i32, ptr %low, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32, ptr %high, align 4
  %conv3 = sext i32 %2 to i64
  %shl = shl nsw i64 %conv3, 8
  %or = or i64 %shl, %conv
  %cond = select i1 %or.cond, i64 -1, i64 %or
  ret i64 %cond
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @block_skip(ptr noundef %block, i64 noundef %n) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %block, ptr %block.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %storemerge = phi i64 [ %n, %entry ], [ %dec, %if.end ]
  store i64 %storemerge, ptr %n.addr, align 8
  %0 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %left, align 8
  %cmp = icmp ugt i64 %storemerge, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %block.addr, align 8
  %left1 = getelementptr inbounds %struct.block_t, ptr %2, i64 0, i32 1
  %3 = load i64, ptr %left1, align 8
  %4 = load i64, ptr %n.addr, align 8
  %sub = sub i64 %4, %3
  store i64 %sub, ptr %n.addr, align 8
  %5 = load ptr, ptr %2, align 8
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %3
  store ptr %add.ptr, ptr %2, align 8
  %6 = load ptr, ptr %block.addr, align 8
  %left3 = getelementptr inbounds %struct.block_t, ptr %6, i64 0, i32 1
  store i64 0, ptr %left3, align 8
  %call = call i32 @block_get(ptr noundef %6)
  %cmp4 = icmp eq i32 %call, -1
  br i1 %cmp4, label %return, label %if.end

if.end:                                           ; preds = %while.body
  %7 = load i64, ptr %n.addr, align 8
  %dec = add i64 %7, -1
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %8 = load i64, ptr %n.addr, align 8
  %9 = load ptr, ptr %block.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %10, i64 %8
  store ptr %add.ptr6, ptr %9, align 8
  %left7 = getelementptr inbounds %struct.block_t, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %left7, align 8
  %sub8 = sub i64 %11, %8
  store i64 %sub8, ptr %left7, align 8
  br label %return

return:                                           ; preds = %while.body, %while.end
  %storemerge1 = phi i32 [ 0, %while.end ], [ -1, %while.body ]
  ret i32 %storemerge1
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @block_read(ptr noundef %block, ptr noundef %buf, i64 noundef %len) #0 {
entry:
  %block.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %need = alloca i64, align 8
  %take = alloca i64, align 8
  %got = alloca i32, align 4
  store ptr %block, ptr %block.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i64 %len, ptr %need, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end, %entry
  %0 = load i64, ptr %need, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %1, i64 0, i32 1
  %2 = load i64, ptr %left, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %block.addr, align 8
  %call = call i32 @block_get(ptr noundef %3)
  store i32 %call, ptr %got, align 4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %while.end, label %if.end

if.end:                                           ; preds = %if.then
  %4 = load i32, ptr %got, align 4
  %conv = trunc i32 %4 to i8
  %5 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  store i8 %conv, ptr %5, align 1
  %6 = load i64, ptr %need, align 8
  %dec = add i64 %6, -1
  store i64 %dec, ptr %need, align 8
  br label %while.cond, !llvm.loop !33

if.end3:                                          ; preds = %while.body
  %7 = load i64, ptr %need, align 8
  %8 = load ptr, ptr %block.addr, align 8
  %left4 = getelementptr inbounds %struct.block_t, ptr %8, i64 0, i32 1
  %9 = load i64, ptr %left4, align 8
  %cmp5 = icmp ugt i64 %7, %9
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %10 = load ptr, ptr %block.addr, align 8
  %left7 = getelementptr inbounds %struct.block_t, ptr %10, i64 0, i32 1
  %11 = load i64, ptr %left7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %12 = load i64, ptr %need, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ]
  store i64 %cond, ptr %take, align 8
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load ptr, ptr %block.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call8 = call ptr @__memcpy_chk(ptr noundef %13, ptr noundef %15, i64 noundef %cond, i64 noundef %16) #13
  %17 = load ptr, ptr %14, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %cond
  store ptr %add.ptr, ptr %14, align 8
  %18 = load i64, ptr %take, align 8
  %19 = load ptr, ptr %block.addr, align 8
  %left10 = getelementptr inbounds %struct.block_t, ptr %19, i64 0, i32 1
  %20 = load i64, ptr %left10, align 8
  %sub = sub i64 %20, %18
  store i64 %sub, ptr %left10, align 8
  %21 = load ptr, ptr %buf.addr, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %21, i64 %18
  store ptr %add.ptr11, ptr %buf.addr, align 8
  %22 = load i64, ptr %take, align 8
  %23 = load i64, ptr %need, align 8
  %sub12 = sub i64 %23, %22
  store i64 %sub12, ptr %need, align 8
  br label %while.cond, !llvm.loop !33

while.end:                                        ; preds = %if.then, %while.cond
  %24 = load i64, ptr %len.addr, align 8
  %25 = load i64, ptr %need, align 8
  %sub13 = sub i64 %24, %25
  ret i64 %sub13
}

declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @block_stop(ptr noundef %block) #0 {
entry:
  %left = getelementptr inbounds %struct.block_t, ptr %block, i64 0, i32 1
  store i64 0, ptr %left, align 8
  store ptr null, ptr %block, align 8
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @block_get(ptr noundef %block) #0 {
entry:
  %retval = alloca i32, align 4
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %0 = load ptr, ptr %block.addr, align 8
  %left = getelementptr inbounds %struct.block_t, ptr %0, i64 0, i32 1
  %1 = load i64, ptr %left, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %block.addr, align 8
  %node = getelementptr inbounds %struct.block_t, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %node, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %block.addr, align 8
  %node2 = getelementptr inbounds %struct.block_t, ptr %4, i64 0, i32 2
  %5 = load ptr, ptr %node2, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %5, i64 0, i32 2
  %6 = load i64, ptr %filled_in_this_block, align 8
  %7 = load ptr, ptr %4, align 8
  %data = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %5, i64 0, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub.neg, %6
  %8 = load ptr, ptr %block.addr, align 8
  %left4 = getelementptr inbounds %struct.block_t, ptr %8, i64 0, i32 1
  store i64 %sub, ptr %left4, align 8
  %cmp6.not = icmp eq i64 %sub, 0
  br i1 %cmp6.not, label %if.end8, label %while.end

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %block.addr, align 8
  %node9 = getelementptr inbounds %struct.block_t, ptr %9, i64 0, i32 2
  %10 = load ptr, ptr %node9, align 8
  %11 = load ptr, ptr %10, align 8
  %cmp10 = icmp eq ptr %11, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %12 = load ptr, ptr %block.addr, align 8
  %node13 = getelementptr inbounds %struct.block_t, ptr %12, i64 0, i32 2
  %13 = load ptr, ptr %node13, align 8
  %14 = load ptr, ptr %13, align 8
  %node15 = getelementptr inbounds %struct.block_t, ptr %12, i64 0, i32 2
  store ptr %14, ptr %node15, align 8
  %data17 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %14, i64 0, i32 4
  %15 = load ptr, ptr %block.addr, align 8
  store ptr %data17, ptr %15, align 8
  %node20 = getelementptr inbounds %struct.block_t, ptr %15, i64 0, i32 2
  %16 = load ptr, ptr %node20, align 8
  %filled_in_this_block21 = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %16, i64 0, i32 2
  %17 = load i64, ptr %filled_in_this_block21, align 8
  %left22 = getelementptr inbounds %struct.block_t, ptr %15, i64 0, i32 1
  store i64 %17, ptr %left22, align 8
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %if.end, %while.cond
  %18 = load ptr, ptr %block.addr, align 8
  %left23 = getelementptr inbounds %struct.block_t, ptr %18, i64 0, i32 1
  %19 = load i64, ptr %left23, align 8
  %dec = add i64 %19, -1
  store i64 %dec, ptr %left23, align 8
  %20 = load ptr, ptr %18, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %incdec.ptr, ptr %18, align 8
  %21 = load i8, ptr %20, align 1
  %conv = zext i8 %21 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then11, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #8

; Function Attrs: nounwind ssp uwtable
define internal i32 @set_rand(ptr noundef %gen) #0 {
entry:
  %gen.addr = alloca ptr, align 8
  %state = alloca i64, align 8
  store ptr %gen, ptr %gen.addr, align 8
  %0 = load i64, ptr %gen, align 8
  store i64 %0, ptr %state, align 8
  %mul = mul i64 %0, 6364136223846793005
  %inc = getelementptr inbounds %struct.set_rand_t, ptr %gen, i64 0, i32 1
  %1 = load i64, ptr %inc, align 8
  %add = add i64 %mul, %1
  %2 = load ptr, ptr %gen.addr, align 8
  store i64 %add, ptr %2, align 8
  %3 = load i64, ptr %state, align 8
  %4 = lshr i64 %3, 45
  %5 = lshr i64 %3, 27
  %shr3 = xor i64 %4, %5
  %conv = trunc i64 %shr3 to i32
  %shr4 = lshr i64 %3, 59
  %conv5 = trunc i64 %shr4 to i32
  %shr6 = lshr i32 %conv, %conv5
  %sub = sub nsw i32 0, %conv5
  %and = and i32 %sub, 31
  %shl = shl i32 %conv, %and
  %or = or i32 %shr6, %shl
  ret i32 %or
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #9

; Function Attrs: noreturn
declare void @longjmp(ptr noundef, i32 noundef) #10

declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @zip64local_SearchCentralDir64(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream) #0 {
entry:
  %retval = alloca i64, align 8
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %uSizeFile = alloca i64, align 8
  %uBackRead = alloca i64, align 8
  %uMaxBack = alloca i64, align 8
  %uPosFound = alloca i64, align 8
  %uL = alloca i64, align 8
  %relativeOffset = alloca i64, align 8
  %uReadSize = alloca i64, align 8
  %uReadPos = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store i64 65535, ptr %uMaxBack, align 8
  store i64 0, ptr %uPosFound, align 8
  %call = call i64 @call_zseek64(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, i64 noundef 0, i32 noundef 2) #13
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %1 = load ptr, ptr %filestream.addr, align 8
  %call1 = call i64 @call_ztell64(ptr noundef %0, ptr noundef %1) #13
  store i64 %call1, ptr %uSizeFile, align 8
  %2 = load i64, ptr %uMaxBack, align 8
  %cmp2 = icmp ugt i64 %2, %call1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i64, ptr %uSizeFile, align 8
  store i64 %3, ptr %uMaxBack, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #17
  store ptr %call5, ptr %buf, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i64 0, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  store i64 4, ptr %uBackRead, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end8
  %4 = load i64, ptr %uBackRead, align 8
  %5 = load i64, ptr %uMaxBack, align 8
  %cmp9 = icmp ult i64 %4, %5
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %uBackRead, align 8
  %add = add i64 %6, 1024
  %7 = load i64, ptr %uMaxBack, align 8
  %cmp10 = icmp ugt i64 %add, %7
  %8 = load i64, ptr %uBackRead, align 8
  %add12 = add i64 %8, 1024
  %9 = load i64, ptr %uMaxBack, align 8
  %storemerge = select i1 %cmp10, i64 %9, i64 %add12
  store i64 %storemerge, ptr %uBackRead, align 8
  %10 = load i64, ptr %uSizeFile, align 8
  %sub = sub i64 %10, %storemerge
  store i64 %sub, ptr %uReadPos, align 8
  %cmp15 = icmp ugt i64 %storemerge, 1028
  %11 = load i64, ptr %uSizeFile, align 8
  %12 = load i64, ptr %uReadPos, align 8
  %sub16 = sub i64 %11, %12
  %cond = select i1 %cmp15, i64 1028, i64 %sub16
  store i64 %cond, ptr %uReadSize, align 8
  %13 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %14 = load ptr, ptr %filestream.addr, align 8
  %15 = load i64, ptr %uReadPos, align 8
  %call17 = call i64 @call_zseek64(ptr noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef 0) #13
  %cmp18.not = icmp eq i64 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %while.end

if.end20:                                         ; preds = %while.body
  %16 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %zread_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %opaque, align 8
  %19 = load ptr, ptr %filestream.addr, align 8
  %20 = load ptr, ptr %buf, align 8
  %21 = load i64, ptr %uReadSize, align 8
  %call22 = call i64 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %21) #13
  %cmp23.not = icmp eq i64 %call22, %21
  br i1 %cmp23.not, label %if.end25, label %while.end

if.end25:                                         ; preds = %if.end20
  %22 = load i64, ptr %uReadSize, align 8
  %conv = trunc i64 %22 to i32
  %sub26 = add nsw i32 %conv, -3
  store i32 %sub26, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end55, %if.end25
  %23 = load i32, ptr %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %i, align 4
  %cmp27 = icmp sgt i32 %23, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %buf, align 8
  %25 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  %26 = load i8, ptr %add.ptr, align 1
  %cmp30 = icmp eq i8 %26, 80
  br i1 %cmp30, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %for.body
  %27 = load ptr, ptr %buf, align 8
  %28 = load i32, ptr %i, align 4
  %idx.ext32 = sext i32 %28 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %27, i64 %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr33, i64 1
  %29 = load i8, ptr %add.ptr34, align 1
  %cmp36 = icmp eq i8 %29, 75
  br i1 %cmp36, label %land.lhs.true38, label %if.end55

land.lhs.true38:                                  ; preds = %land.lhs.true
  %30 = load ptr, ptr %buf, align 8
  %31 = load i32, ptr %i, align 4
  %idx.ext39 = sext i32 %31 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %30, i64 %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr40, i64 2
  %32 = load i8, ptr %add.ptr41, align 1
  %cmp43 = icmp eq i8 %32, 6
  br i1 %cmp43, label %land.lhs.true45, label %if.end55

land.lhs.true45:                                  ; preds = %land.lhs.true38
  %33 = load ptr, ptr %buf, align 8
  %34 = load i32, ptr %i, align 4
  %idx.ext46 = sext i32 %34 to i64
  %add.ptr47 = getelementptr inbounds i8, ptr %33, i64 %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %add.ptr47, i64 3
  %35 = load i8, ptr %add.ptr48, align 1
  %cmp50 = icmp eq i8 %35, 7
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %land.lhs.true45
  %36 = load i64, ptr %uReadPos, align 8
  %37 = load i32, ptr %i, align 4
  %conv53 = zext i32 %37 to i64
  %add54 = add i64 %36, %conv53
  store i64 %add54, ptr %uPosFound, align 8
  br label %for.end

if.end55:                                         ; preds = %land.lhs.true45, %land.lhs.true38, %land.lhs.true, %for.body
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %if.then52, %for.cond
  %38 = load i64, ptr %uPosFound, align 8
  %cmp56.not = icmp eq i64 %38, 0
  br i1 %cmp56.not, label %while.cond, label %while.end, !llvm.loop !36

while.end:                                        ; preds = %for.end, %if.end20, %while.body, %while.cond
  %39 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %39) #13
  %40 = load i64, ptr %uPosFound, align 8
  %cmp60 = icmp eq i64 %40, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %while.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end63:                                         ; preds = %while.end
  %41 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %42 = load ptr, ptr %filestream.addr, align 8
  %43 = load i64, ptr %uPosFound, align 8
  %call64 = call i64 @call_zseek64(ptr noundef %41, ptr noundef %42, i64 noundef %43, i32 noundef 0) #13
  %cmp65.not = icmp eq i64 %call64, 0
  br i1 %cmp65.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end63
  store i64 0, ptr %retval, align 8
  br label %return

if.end68:                                         ; preds = %if.end63
  %44 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %45 = load ptr, ptr %filestream.addr, align 8
  %call69 = call i32 @zip64local_getLong(ptr noundef %44, ptr noundef %45, ptr noundef nonnull %uL)
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %if.end68
  store i64 0, ptr %retval, align 8
  br label %return

if.end73:                                         ; preds = %if.end68
  %46 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %47 = load ptr, ptr %filestream.addr, align 8
  %call74 = call i32 @zip64local_getLong(ptr noundef %46, ptr noundef %47, ptr noundef nonnull %uL)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end73
  store i64 0, ptr %retval, align 8
  br label %return

if.end78:                                         ; preds = %if.end73
  %48 = load i64, ptr %uL, align 8
  %cmp79.not = icmp eq i64 %48, 0
  br i1 %cmp79.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.end78
  store i64 0, ptr %retval, align 8
  br label %return

if.end82:                                         ; preds = %if.end78
  %49 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %50 = load ptr, ptr %filestream.addr, align 8
  %call83 = call i32 @zip64local_getLong64(ptr noundef %49, ptr noundef %50, ptr noundef nonnull %relativeOffset)
  %cmp84.not = icmp eq i32 %call83, 0
  br i1 %cmp84.not, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.end82
  store i64 0, ptr %retval, align 8
  br label %return

if.end87:                                         ; preds = %if.end82
  %51 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %52 = load ptr, ptr %filestream.addr, align 8
  %call88 = call i32 @zip64local_getLong(ptr noundef %51, ptr noundef %52, ptr noundef nonnull %uL)
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end87
  store i64 0, ptr %retval, align 8
  br label %return

if.end92:                                         ; preds = %if.end87
  %53 = load i64, ptr %uL, align 8
  %cmp93.not = icmp eq i64 %53, 1
  br i1 %cmp93.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end92
  store i64 0, ptr %retval, align 8
  br label %return

if.end96:                                         ; preds = %if.end92
  %54 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %55 = load ptr, ptr %filestream.addr, align 8
  %56 = load i64, ptr %relativeOffset, align 8
  %call97 = call i64 @call_zseek64(ptr noundef %54, ptr noundef %55, i64 noundef %56, i32 noundef 0) #13
  %cmp98.not = icmp eq i64 %call97, 0
  br i1 %cmp98.not, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end96
  store i64 0, ptr %retval, align 8
  br label %return

if.end101:                                        ; preds = %if.end96
  %57 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %58 = load ptr, ptr %filestream.addr, align 8
  %call102 = call i32 @zip64local_getLong(ptr noundef %57, ptr noundef %58, ptr noundef nonnull %uL)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.end101
  store i64 0, ptr %retval, align 8
  br label %return

if.end106:                                        ; preds = %if.end101
  %59 = load i64, ptr %uL, align 8
  %cmp107.not = icmp eq i64 %59, 101075792
  br i1 %cmp107.not, label %if.end110, label %if.then109

if.then109:                                       ; preds = %if.end106
  store i64 0, ptr %retval, align 8
  br label %return

if.end110:                                        ; preds = %if.end106
  %60 = load i64, ptr %relativeOffset, align 8
  store i64 %60, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end110, %if.then109, %if.then105, %if.then100, %if.then95, %if.then91, %if.then86, %if.then81, %if.then77, %if.then72, %if.then67, %if.then62, %if.then7, %if.then
  %61 = load i64, ptr %retval, align 8
  ret i64 %61
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @zip64local_SearchCentralDir(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream) #0 {
entry:
  %retval = alloca i64, align 8
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %uSizeFile = alloca i64, align 8
  %uBackRead = alloca i64, align 8
  %uMaxBack = alloca i64, align 8
  %uPosFound = alloca i64, align 8
  %uReadSize = alloca i64, align 8
  %uReadPos = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store i64 65535, ptr %uMaxBack, align 8
  store i64 0, ptr %uPosFound, align 8
  %call = call i64 @call_zseek64(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, i64 noundef 0, i32 noundef 2) #13
  %cmp.not = icmp eq i64 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %1 = load ptr, ptr %filestream.addr, align 8
  %call1 = call i64 @call_ztell64(ptr noundef %0, ptr noundef %1) #13
  store i64 %call1, ptr %uSizeFile, align 8
  %2 = load i64, ptr %uMaxBack, align 8
  %cmp2 = icmp ugt i64 %2, %call1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load i64, ptr %uSizeFile, align 8
  store i64 %3, ptr %uMaxBack, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call dereferenceable_or_null(1028) ptr @malloc(i64 noundef 1028) #17
  store ptr %call5, ptr %buf, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i64 0, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  store i64 4, ptr %uBackRead, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end8
  %4 = load i64, ptr %uBackRead, align 8
  %5 = load i64, ptr %uMaxBack, align 8
  %cmp9 = icmp ult i64 %4, %5
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %uBackRead, align 8
  %add = add i64 %6, 1024
  %7 = load i64, ptr %uMaxBack, align 8
  %cmp10 = icmp ugt i64 %add, %7
  %8 = load i64, ptr %uBackRead, align 8
  %add12 = add i64 %8, 1024
  %9 = load i64, ptr %uMaxBack, align 8
  %storemerge = select i1 %cmp10, i64 %9, i64 %add12
  store i64 %storemerge, ptr %uBackRead, align 8
  %10 = load i64, ptr %uSizeFile, align 8
  %sub = sub i64 %10, %storemerge
  store i64 %sub, ptr %uReadPos, align 8
  %cmp15 = icmp ugt i64 %storemerge, 1028
  %11 = load i64, ptr %uSizeFile, align 8
  %12 = load i64, ptr %uReadPos, align 8
  %sub16 = sub i64 %11, %12
  %cond = select i1 %cmp15, i64 1028, i64 %sub16
  store i64 %cond, ptr %uReadSize, align 8
  %13 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %14 = load ptr, ptr %filestream.addr, align 8
  %15 = load i64, ptr %uReadPos, align 8
  %call17 = call i64 @call_zseek64(ptr noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef 0) #13
  %cmp18.not = icmp eq i64 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %while.end

if.end20:                                         ; preds = %while.body
  %16 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %16, i64 0, i32 1
  %17 = load ptr, ptr %zread_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %opaque, align 8
  %19 = load ptr, ptr %filestream.addr, align 8
  %20 = load ptr, ptr %buf, align 8
  %21 = load i64, ptr %uReadSize, align 8
  %call22 = call i64 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20, i64 noundef %21) #13
  %cmp23.not = icmp eq i64 %call22, %21
  br i1 %cmp23.not, label %if.end25, label %while.end

if.end25:                                         ; preds = %if.end20
  %22 = load i64, ptr %uReadSize, align 8
  %conv = trunc i64 %22 to i32
  %sub26 = add nsw i32 %conv, -3
  store i32 %sub26, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end55, %if.end25
  %23 = load i32, ptr %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %i, align 4
  %cmp27 = icmp sgt i32 %23, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %buf, align 8
  %25 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  %26 = load i8, ptr %add.ptr, align 1
  %cmp30 = icmp eq i8 %26, 80
  br i1 %cmp30, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %for.body
  %27 = load ptr, ptr %buf, align 8
  %28 = load i32, ptr %i, align 4
  %idx.ext32 = sext i32 %28 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %27, i64 %idx.ext32
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr33, i64 1
  %29 = load i8, ptr %add.ptr34, align 1
  %cmp36 = icmp eq i8 %29, 75
  br i1 %cmp36, label %land.lhs.true38, label %if.end55

land.lhs.true38:                                  ; preds = %land.lhs.true
  %30 = load ptr, ptr %buf, align 8
  %31 = load i32, ptr %i, align 4
  %idx.ext39 = sext i32 %31 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %30, i64 %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, ptr %add.ptr40, i64 2
  %32 = load i8, ptr %add.ptr41, align 1
  %cmp43 = icmp eq i8 %32, 5
  br i1 %cmp43, label %land.lhs.true45, label %if.end55

land.lhs.true45:                                  ; preds = %land.lhs.true38
  %33 = load ptr, ptr %buf, align 8
  %34 = load i32, ptr %i, align 4
  %idx.ext46 = sext i32 %34 to i64
  %add.ptr47 = getelementptr inbounds i8, ptr %33, i64 %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, ptr %add.ptr47, i64 3
  %35 = load i8, ptr %add.ptr48, align 1
  %cmp50 = icmp eq i8 %35, 6
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %land.lhs.true45
  %36 = load i64, ptr %uReadPos, align 8
  %37 = load i32, ptr %i, align 4
  %conv53 = zext i32 %37 to i64
  %add54 = add i64 %36, %conv53
  store i64 %add54, ptr %uPosFound, align 8
  br label %for.end

if.end55:                                         ; preds = %land.lhs.true45, %land.lhs.true38, %land.lhs.true, %for.body
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %if.then52, %for.cond
  %38 = load i64, ptr %uPosFound, align 8
  %cmp56.not = icmp eq i64 %38, 0
  br i1 %cmp56.not, label %while.cond, label %while.end, !llvm.loop !38

while.end:                                        ; preds = %for.end, %if.end20, %while.body, %while.cond
  %39 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %39) #13
  %40 = load i64, ptr %uPosFound, align 8
  store i64 %40, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then7, %if.then
  %41 = load i64, ptr %retval, align 8
  ret i64 %41
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64local_getLong(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef %pX) #0 {
entry:
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  store i32 0, ptr %i, align 4
  %call = call i32 @zip64local_getByte(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef nonnull %i)
  store i32 %call, ptr %err, align 4
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, ptr %x, align 8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %2 = load ptr, ptr %filestream.addr, align 8
  %call2 = call i32 @zip64local_getByte(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i)
  store i32 %call2, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %i, align 4
  %conv3 = sext i32 %3 to i64
  %shl = shl nsw i64 %conv3, 8
  %4 = load i64, ptr %x, align 8
  %add = add i64 %4, %shl
  store i64 %add, ptr %x, align 8
  %5 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %7 = load ptr, ptr %filestream.addr, align 8
  %call7 = call i32 @zip64local_getByte(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i)
  store i32 %call7, ptr %err, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %8 = load i32, ptr %i, align 4
  %conv9 = sext i32 %8 to i64
  %shl10 = shl nsw i64 %conv9, 16
  %9 = load i64, ptr %x, align 8
  %add11 = add i64 %9, %shl10
  store i64 %add11, ptr %x, align 8
  %10 = load i32, ptr %err, align 4
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8
  %11 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %12 = load ptr, ptr %filestream.addr, align 8
  %call15 = call i32 @zip64local_getByte(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i)
  store i32 %call15, ptr %err, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end8
  %13 = load i32, ptr %i, align 4
  %conv17 = sext i32 %13 to i64
  %shl18 = shl nsw i64 %conv17, 24
  %14 = load i64, ptr %x, align 8
  %add19 = add i64 %14, %shl18
  store i64 %add19, ptr %x, align 8
  %15 = load i32, ptr %err, align 4
  %cmp20 = icmp eq i32 %15, 0
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end16
  %16 = load i64, ptr %x, align 8
  %17 = load ptr, ptr %pX.addr, align 8
  store i64 %16, ptr %17, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end16
  %18 = load ptr, ptr %pX.addr, align 8
  store i64 0, ptr %18, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  %19 = load i32, ptr %err, align 4
  ret i32 %19
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64local_getLong64(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef %pX) #0 {
entry:
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  store i32 0, ptr %i, align 4
  %call = call i32 @zip64local_getByte(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef nonnull %i)
  store i32 %call, ptr %err, align 4
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, ptr %x, align 8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %2 = load ptr, ptr %filestream.addr, align 8
  %call2 = call i32 @zip64local_getByte(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i)
  store i32 %call2, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %i, align 4
  %conv3 = sext i32 %3 to i64
  %shl = shl nsw i64 %conv3, 8
  %4 = load i64, ptr %x, align 8
  %add = add i64 %4, %shl
  store i64 %add, ptr %x, align 8
  %5 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %7 = load ptr, ptr %filestream.addr, align 8
  %call7 = call i32 @zip64local_getByte(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i)
  store i32 %call7, ptr %err, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %8 = load i32, ptr %i, align 4
  %conv9 = sext i32 %8 to i64
  %shl10 = shl nsw i64 %conv9, 16
  %9 = load i64, ptr %x, align 8
  %add11 = add i64 %9, %shl10
  store i64 %add11, ptr %x, align 8
  %10 = load i32, ptr %err, align 4
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8
  %11 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %12 = load ptr, ptr %filestream.addr, align 8
  %call15 = call i32 @zip64local_getByte(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %i)
  store i32 %call15, ptr %err, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end8
  %13 = load i32, ptr %i, align 4
  %conv17 = sext i32 %13 to i64
  %shl18 = shl nsw i64 %conv17, 24
  %14 = load i64, ptr %x, align 8
  %add19 = add i64 %14, %shl18
  store i64 %add19, ptr %x, align 8
  %15 = load i32, ptr %err, align 4
  %cmp20 = icmp eq i32 %15, 0
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  %16 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %17 = load ptr, ptr %filestream.addr, align 8
  %call23 = call i32 @zip64local_getByte(ptr noundef %16, ptr noundef %17, ptr noundef nonnull %i)
  store i32 %call23, ptr %err, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16
  %18 = load i32, ptr %i, align 4
  %conv251 = zext i32 %18 to i64
  %shl26 = shl nuw i64 %conv251, 32
  %19 = load i64, ptr %x, align 8
  %add27 = add i64 %19, %shl26
  store i64 %add27, ptr %x, align 8
  %20 = load i32, ptr %err, align 4
  %cmp28 = icmp eq i32 %20, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end24
  %21 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %22 = load ptr, ptr %filestream.addr, align 8
  %call31 = call i32 @zip64local_getByte(ptr noundef %21, ptr noundef %22, ptr noundef nonnull %i)
  store i32 %call31, ptr %err, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end24
  %23 = load i32, ptr %i, align 4
  %conv332 = zext i32 %23 to i64
  %shl34 = shl i64 %conv332, 40
  %24 = load i64, ptr %x, align 8
  %add35 = add i64 %24, %shl34
  store i64 %add35, ptr %x, align 8
  %25 = load i32, ptr %err, align 4
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end32
  %26 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %27 = load ptr, ptr %filestream.addr, align 8
  %call39 = call i32 @zip64local_getByte(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %i)
  store i32 %call39, ptr %err, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end32
  %28 = load i32, ptr %i, align 4
  %conv413 = zext i32 %28 to i64
  %shl42 = shl i64 %conv413, 48
  %29 = load i64, ptr %x, align 8
  %add43 = add i64 %29, %shl42
  store i64 %add43, ptr %x, align 8
  %30 = load i32, ptr %err, align 4
  %cmp44 = icmp eq i32 %30, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end40
  %31 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %32 = load ptr, ptr %filestream.addr, align 8
  %call47 = call i32 @zip64local_getByte(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %i)
  store i32 %call47, ptr %err, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end40
  %33 = load i32, ptr %i, align 4
  %conv494 = zext i32 %33 to i64
  %shl50 = shl i64 %conv494, 56
  %34 = load i64, ptr %x, align 8
  %add51 = add i64 %34, %shl50
  store i64 %add51, ptr %x, align 8
  %35 = load i32, ptr %err, align 4
  %cmp52 = icmp eq i32 %35, 0
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end48
  %36 = load i64, ptr %x, align 8
  %37 = load ptr, ptr %pX.addr, align 8
  store i64 %36, ptr %37, align 8
  br label %if.end55

if.else:                                          ; preds = %if.end48
  %38 = load ptr, ptr %pX.addr, align 8
  store i64 0, ptr %38, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then54
  %39 = load i32, ptr %err, align 4
  ret i32 %39
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64local_getShort(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef %pX) #0 {
entry:
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  store i32 0, ptr %i, align 4
  %call = call i32 @zip64local_getByte(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef nonnull %i)
  store i32 %call, ptr %err, align 4
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, ptr %x, align 8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %2 = load ptr, ptr %filestream.addr, align 8
  %call2 = call i32 @zip64local_getByte(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i)
  store i32 %call2, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %i, align 4
  %conv3 = sext i32 %3 to i64
  %shl = shl nsw i64 %conv3, 8
  %4 = load i64, ptr %x, align 8
  %add = add i64 %4, %shl
  store i64 %add, ptr %x, align 8
  %5 = load i32, ptr %err, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %6 = load i64, ptr %x, align 8
  %7 = load ptr, ptr %pX.addr, align 8
  store i64 %6, ptr %7, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %pX.addr, align 8
  store i64 0, ptr %8, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %9 = load i32, ptr %err, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @zip64local_getByte(ptr noundef %pzlib_filefunc_def, ptr noundef %filestream, ptr noundef %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %pzlib_filefunc_def.addr = alloca ptr, align 8
  %filestream.addr = alloca ptr, align 8
  %pi.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %pzlib_filefunc_def, ptr %pzlib_filefunc_def.addr, align 8
  store ptr %filestream, ptr %filestream.addr, align 8
  store ptr %pi, ptr %pi.addr, align 8
  %zread_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %pzlib_filefunc_def, i64 0, i32 1
  %0 = load ptr, ptr %zread_file, align 8
  %opaque = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %pzlib_filefunc_def, i64 0, i32 7
  %1 = load ptr, ptr %opaque, align 8
  %call = call i64 %0(ptr noundef %1, ptr noundef %filestream, ptr noundef nonnull %c, i64 noundef 1) #13
  %2 = and i64 %call, 4294967295
  %cmp = icmp eq i64 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8, ptr %c, align 1
  %conv3 = zext i8 %3 to i32
  %4 = load ptr, ptr %pi.addr, align 8
  store i32 %conv3, ptr %4, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pzlib_filefunc_def.addr, align 8
  %zerror_file = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %5, i64 0, i32 6
  %6 = load ptr, ptr %zerror_file, align 8
  %opaque6 = getelementptr inbounds %struct.zlib_filefunc64_def_s, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %opaque6, align 8
  %8 = load ptr, ptr %filestream.addr, align 8
  %call7 = call i32 %6(ptr noundef %7, ptr noundef %8) #13
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.else9, label %if.then8

if.then8:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else9, %if.then8, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @utf8len(ptr noundef %str, i64 noundef %len) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cond.end109, label %cond.false

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp1 = icmp sgt i8 %1, -1
  br i1 %cmp1, label %cond.end109, label %cond.false4

cond.false4:                                      ; preds = %cond.false
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i8, ptr %2, align 1
  %cmp7 = icmp ult i8 %3, -64
  br i1 %cmp7, label %cond.end109, label %cond.false10

cond.false10:                                     ; preds = %cond.false4
  %4 = load i64, ptr %len.addr, align 8
  %cmp11 = icmp ult i64 %4, 2
  br i1 %cmp11, label %cond.end109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false10
  %5 = load ptr, ptr %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %5, i64 1
  %6 = load i8, ptr %arrayidx13, align 1
  %.mask = and i8 %6, -64
  %cmp15.not = icmp eq i8 %.mask, -128
  br i1 %cmp15.not, label %cond.false18, label %cond.end109

cond.false18:                                     ; preds = %lor.lhs.false
  %7 = load ptr, ptr %str.addr, align 8
  %8 = load i8, ptr %7, align 1
  %cmp21 = icmp ult i8 %8, -62
  br i1 %cmp21, label %cond.end109, label %cond.false24

cond.false24:                                     ; preds = %cond.false18
  %9 = load ptr, ptr %str.addr, align 8
  %10 = load i8, ptr %9, align 1
  %cmp27 = icmp ult i8 %10, -32
  br i1 %cmp27, label %cond.end109, label %cond.false30

cond.false30:                                     ; preds = %cond.false24
  %11 = load i64, ptr %len.addr, align 8
  %cmp31 = icmp ult i64 %11, 3
  br i1 %cmp31, label %cond.end109, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %cond.false30
  %12 = load ptr, ptr %str.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %12, i64 2
  %13 = load i8, ptr %arrayidx34, align 1
  %.mask1 = and i8 %13, -64
  %cmp37.not = icmp eq i8 %.mask1, -128
  br i1 %cmp37.not, label %cond.false40, label %cond.end109

cond.false40:                                     ; preds = %lor.lhs.false33
  %14 = load ptr, ptr %str.addr, align 8
  %15 = load i8, ptr %14, align 1
  %cmp43 = icmp eq i8 %15, -32
  br i1 %cmp43, label %land.lhs.true, label %cond.false50

land.lhs.true:                                    ; preds = %cond.false40
  %16 = load ptr, ptr %str.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i8, ptr %arrayidx45, align 1
  %cmp47 = icmp ult i8 %17, -96
  br i1 %cmp47, label %cond.end109, label %cond.false50

cond.false50:                                     ; preds = %land.lhs.true, %cond.false40
  %18 = load ptr, ptr %str.addr, align 8
  %19 = load i8, ptr %18, align 1
  %cmp53 = icmp ult i8 %19, -16
  br i1 %cmp53, label %cond.end109, label %cond.false56

cond.false56:                                     ; preds = %cond.false50
  %20 = load i64, ptr %len.addr, align 8
  %cmp57 = icmp ult i64 %20, 4
  br i1 %cmp57, label %cond.end109, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %cond.false56
  %21 = load ptr, ptr %str.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %21, i64 3
  %22 = load i8, ptr %arrayidx60, align 1
  %.mask2 = and i8 %22, -64
  %cmp63.not = icmp eq i8 %.mask2, -128
  br i1 %cmp63.not, label %cond.false66, label %cond.end109

cond.false66:                                     ; preds = %lor.lhs.false59
  %23 = load ptr, ptr %str.addr, align 8
  %24 = load i8, ptr %23, align 1
  %cmp69 = icmp eq i8 %24, -16
  br i1 %cmp69, label %land.lhs.true71, label %cond.false77

land.lhs.true71:                                  ; preds = %cond.false66
  %25 = load ptr, ptr %str.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %25, i64 1
  %26 = load i8, ptr %arrayidx72, align 1
  %cmp74 = icmp ult i8 %26, -112
  br i1 %cmp74, label %cond.end109, label %cond.false77

cond.false77:                                     ; preds = %land.lhs.true71, %cond.false66
  %27 = load ptr, ptr %str.addr, align 8
  %28 = load i8, ptr %27, align 1
  %cmp80 = icmp ult i8 %28, -12
  br i1 %cmp80, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false77
  %29 = load ptr, ptr %str.addr, align 8
  %30 = load i8, ptr %29, align 1
  %cmp84 = icmp eq i8 %30, -12
  br i1 %cmp84, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %31 = load ptr, ptr %str.addr, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %31, i64 1
  %32 = load i8, ptr %arrayidx86, align 1
  %cmp88 = icmp ult i8 %32, -112
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %cond.false77
  %33 = phi i1 [ true, %cond.false77 ], [ false, %lor.rhs ], [ %cmp88, %land.rhs ]
  %cond = select i1 %33, i32 4, i32 -4
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false, %lor.lhs.false, %cond.false10, %cond.false24, %land.lhs.true, %lor.lhs.false59, %cond.false56, %land.lhs.true71, %lor.end, %cond.false50, %cond.false30, %lor.lhs.false33, %cond.false18, %cond.false4, %entry
  %cond110 = phi i32 [ -1, %entry ], [ 1, %cond.false ], [ -1, %cond.false4 ], [ -2, %lor.lhs.false ], [ -2, %cond.false10 ], [ -2, %cond.false18 ], [ 2, %cond.false24 ], [ -3, %lor.lhs.false33 ], [ -3, %cond.false30 ], [ -3, %land.lhs.true ], [ 3, %cond.false50 ], [ -4, %lor.lhs.false59 ], [ -4, %cond.false56 ], [ %cond, %lor.end ], [ -4, %land.lhs.true71 ]
  ret i32 %cond110
}

declare void @srand(i32 noundef) #2

; Function Attrs: nounwind ssp uwtable
define internal void @init_keys(ptr noundef %passwd, ptr noundef %pkeys, ptr noundef %pcrc_32_tab) #0 {
entry:
  %passwd.addr = alloca ptr, align 8
  %pkeys.addr = alloca ptr, align 8
  %pcrc_32_tab.addr = alloca ptr, align 8
  store ptr %passwd, ptr %passwd.addr, align 8
  store ptr %pkeys, ptr %pkeys.addr, align 8
  store ptr %pcrc_32_tab, ptr %pcrc_32_tab.addr, align 8
  store i64 305419896, ptr %pkeys, align 8
  %add.ptr1 = getelementptr inbounds i64, ptr %pkeys, i64 1
  store i64 591751049, ptr %add.ptr1, align 8
  %add.ptr2 = getelementptr inbounds i64, ptr %pkeys, i64 2
  store i64 878082192, ptr %add.ptr2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %passwd.addr, align 8
  %1 = load i8, ptr %0, align 1
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pkeys.addr, align 8
  %3 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %4 = load ptr, ptr %passwd.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv4 = sext i8 %5 to i32
  %call = call i32 @update_keys(ptr noundef %2, ptr noundef %3, i32 noundef %conv4)
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %incdec.ptr, ptr %passwd.addr, align 8
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @rand() #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @decrypt_byte(ptr noundef %pkeys, ptr noundef %pcrc_32_tab) #0 {
entry:
  %add.ptr = getelementptr inbounds i64, ptr %pkeys, i64 2
  %0 = load i64, ptr %add.ptr, align 8
  %conv = trunc i64 %0 to i32
  %and = and i32 %conv, 65533
  %or = or i32 %conv, 2
  %xor = xor i32 %and, 3
  %mul = mul i32 %or, %xor
  %shr = lshr i32 %mul, 8
  %and1 = and i32 %shr, 255
  ret i32 %and1
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @update_keys(ptr noundef %pkeys, ptr noundef %pcrc_32_tab, i32 noundef %c) #0 {
entry:
  %pkeys.addr = alloca ptr, align 8
  %pcrc_32_tab.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %pkeys, ptr %pkeys.addr, align 8
  store ptr %pcrc_32_tab, ptr %pcrc_32_tab.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load i64, ptr %pkeys, align 8
  %conv = trunc i64 %0 to i32
  %xor = xor i32 %conv, %c
  %and = and i32 %xor, 255
  %idx.ext = zext i32 %and to i64
  %add.ptr1 = getelementptr inbounds i64, ptr %pcrc_32_tab, i64 %idx.ext
  %1 = load i64, ptr %add.ptr1, align 8
  %2 = load ptr, ptr %pkeys.addr, align 8
  %3 = load i64, ptr %2, align 8
  %shr = lshr i64 %3, 8
  %xor3 = xor i64 %1, %shr
  store i64 %xor3, ptr %2, align 8
  %and6 = and i64 %xor3, 255
  %add.ptr7 = getelementptr inbounds i64, ptr %2, i64 1
  %4 = load i64, ptr %add.ptr7, align 8
  %add = add i64 %4, %and6
  store i64 %add, ptr %add.ptr7, align 8
  %5 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr8 = getelementptr inbounds i64, ptr %5, i64 1
  %6 = load i64, ptr %add.ptr8, align 8
  %mul = mul i64 %6, 134775813
  %add9 = add i64 %mul, 1
  %add.ptr10 = getelementptr inbounds i64, ptr %5, i64 1
  store i64 %add9, ptr %add.ptr10, align 8
  %7 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr11 = getelementptr inbounds i64, ptr %7, i64 1
  %8 = load i64, ptr %add.ptr11, align 8
  %shr12 = lshr i64 %8, 24
  %9 = load ptr, ptr %pcrc_32_tab.addr, align 8
  %add.ptr14 = getelementptr inbounds i64, ptr %7, i64 2
  %10 = load i64, ptr %add.ptr14, align 8
  %xor161 = xor i64 %10, %shr12
  %and17 = and i64 %xor161, 255
  %add.ptr19 = getelementptr inbounds i64, ptr %9, i64 %and17
  %11 = load i64, ptr %add.ptr19, align 8
  %12 = load ptr, ptr %pkeys.addr, align 8
  %add.ptr20 = getelementptr inbounds i64, ptr %12, i64 2
  %13 = load i64, ptr %add.ptr20, align 8
  %shr21 = lshr i64 %13, 8
  %xor22 = xor i64 %11, %shr21
  %add.ptr23 = getelementptr inbounds i64, ptr %12, i64 2
  store i64 %xor22, ptr %add.ptr23, align 8
  %14 = load i32, ptr %c.addr, align 4
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define internal ptr @allocate_new_datablock() #0 {
entry:
  %ldi = alloca ptr, align 8
  %call = call dereferenceable_or_null(4112) ptr @malloc(i64 noundef 4112) #17
  store ptr %call, ptr %ldi, align 8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %ldi, align 8
  store ptr null, ptr %0, align 8
  %filled_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %filled_in_this_block, align 8
  %avail_in_this_block = getelementptr inbounds %struct.linkedlist_datablock_internal_s, ptr %0, i64 0, i32 1
  store i64 4080, ptr %avail_in_this_block, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %ldi, align 8
  ret ptr %1
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_datablock(ptr noundef %ldi) #0 {
entry:
  %ldi.addr = alloca ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %storemerge = phi ptr [ %ldi, %entry ], [ %1, %while.body ]
  store ptr %storemerge, ptr %ldi.addr, align 8
  %cmp.not = icmp eq ptr %storemerge, null
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %ldi.addr, align 8
  %1 = load ptr, ptr %0, align 8
  call void @free(ptr noundef nonnull %0) #13
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

attributes #0 = { nounwind ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nounwind willreturn }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #7 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #8 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #9 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #10 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #11 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind returns_twice }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind allocsize(0) }

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
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
